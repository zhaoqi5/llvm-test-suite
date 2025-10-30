	.file	"ExportGold.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN10ExportGoldC2EP4Mesh        # -- Begin function _ZN10ExportGoldC2EP4Mesh
	.p2align	5
	.type	_ZN10ExportGoldC2EP4Mesh,@function
_ZN10ExportGoldC2EP4Mesh:               # @_ZN10ExportGoldC2EP4Mesh
# %bb.0:                                # %entry
	addi.d	$a3, $a0, 8
	ori	$a2, $zero, 168
	st.d	$a1, $a0, 0
	move	$a0, $a3
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end0:
	.size	_ZN10ExportGoldC2EP4Mesh, .Lfunc_end0-_ZN10ExportGoldC2EP4Mesh
                                        # -- End function
	.globl	_ZN10ExportGoldD2Ev             # -- Begin function _ZN10ExportGoldD2Ev
	.p2align	5
	.type	_ZN10ExportGoldD2Ev,@function
_ZN10ExportGoldD2Ev:                    # @_ZN10ExportGoldD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 152
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then.i.i.i
	ld.d	$a1, $fp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then.i.i.i2
	ld.d	$a1, $fp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit7
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then.i.i.i9
	ld.d	$a1, $fp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit14
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.then.i.i.i16
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit21
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_10
# %bb.9:                                # %if.then.i.i.i23
	ld.d	$a1, $fp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit28
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB1_12
# %bb.11:                               # %if.then.i.i.i30
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit35
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB1_14
# %bb.13:                               # %if.then.i.i.i37
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_14:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit42
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN10ExportGoldD2Ev, .Lfunc_end1-_ZN10ExportGoldD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_ # -- Begin function _ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.p2align	5
	.type	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_,@function
_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_: # @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a5
	move	$s2, $a4
	move	$s3, $a3
	fmov.d	$fs0, $fa0
	move	$s4, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10ExportGold9sortZonesEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 24
	st.d	$s4, $sp, 8
	lu12i.w	$s5, 7
	ori	$a0, $s5, 634
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp0:                                 # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont4
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_3
# %bb.2:                                # %if.then.i.i12
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	st.d	$s4, $sp, 8
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1402
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp3:                                 # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:                                # %invoke.cont12
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_6
# %bb.5:                                # %if.then.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
	st.d	$s4, $sp, 8
	ori	$a0, $s5, 122
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp6:                                 # EH_LABEL
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.7:                                # %invoke.cont22
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_9
# %bb.8:                                # %if.then.i.i45
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.LBB2_10:                               # %lpad21
.Ltmp8:                                 # EH_LABEL
	b	.LBB2_13
.LBB2_11:                               # %lpad11
.Ltmp5:                                 # EH_LABEL
	b	.LBB2_13
.LBB2_12:                               # %lpad3
.Ltmp2:                                 # EH_LABEL
.LBB2_13:                               # %lpad21
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s4, .LBB2_15
# %bb.14:                               # %if.then.i.i66
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_, .Lfunc_end2-_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -592
	.cfi_def_cfa_offset 592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB3_109
# %bb.1:                                # %if.end
	move	$fp, $a1
	ld.d	$s0, $a1, 0
	ld.d	$s1, $a1, 8
	addi.d	$s2, $sp, 536
	st.d	$s2, $sp, 520
	st.d	$zero, $sp, 528
	st.b	$zero, $sp, 536
	addi.d	$a1, $s1, 5
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.2:                                # %invoke.cont.i.i
	ld.d	$a0, $sp, 528
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s1, .LBB3_112
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.4:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 528
	addi.w	$a1, $zero, -6
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB3_112
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp13:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 520
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.6:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a1, $sp, 520
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 16
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.7:                                # %invoke.cont
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB3_114
# %bb.8:                                # %if.end14
.Ltmp26:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.9:                                # %invoke.cont15
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_12
# %bb.11:                               # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB3_14
.LBB3_12:                               # %if.end.i.i.i
.Ltmp28:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.13:                               # %.noexc112
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp30:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp31:                                # EH_LABEL
.LBB3_14:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp32:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.15:                               # %call1.i.noexc
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.16:                               # %invoke.cont17
.Ltmp36:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 20
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.17:                               # %invoke.cont19
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i122
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_20
# %bb.19:                               # %if.then.i2.i.i125
	ld.bu	$a0, $s0, 67
	b	.LBB3_22
.LBB3_20:                               # %if.end.i.i.i130
.Ltmp38:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.21:                               # %.noexc135
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp40:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp41:                                # EH_LABEL
.LBB3_22:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i127
.Ltmp42:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.23:                               # %call1.i.noexc138
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.24:                               # %invoke.cont21
.Ltmp46:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.25:                               # %invoke.cont23
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.26:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_28
# %bb.27:                               # %if.then.i2.i.i151
	ld.bu	$a0, $s0, 67
	b	.LBB3_30
.LBB3_28:                               # %if.end.i.i.i156
.Ltmp48:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.29:                               # %.noexc161
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp50:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp51:                                # EH_LABEL
.LBB3_30:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i153
.Ltmp52:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.31:                               # %call1.i.noexc164
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.32:                               # %invoke.cont25
.Ltmp56:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 6
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.33:                               # %invoke.cont27
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.34:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_36
# %bb.35:                               # %if.then.i2.i.i177
	ld.bu	$a0, $s0, 67
	b	.LBB3_38
.LBB3_36:                               # %if.end.i.i.i182
.Ltmp58:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.37:                               # %.noexc187
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp61:                                # EH_LABEL
.LBB3_38:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179
.Ltmp62:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.39:                               # %call1.i.noexc190
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.40:                               # %invoke.cont29
.Ltmp66:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 18
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.41:                               # %invoke.cont31
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.42:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i200
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_44
# %bb.43:                               # %if.then.i2.i.i203
	ld.bu	$a0, $s0, 67
	b	.LBB3_46
.LBB3_44:                               # %if.end.i.i.i208
.Ltmp68:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.45:                               # %.noexc213
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp70:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp71:                                # EH_LABEL
.LBB3_46:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i205
.Ltmp72:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.47:                               # %call1.i.noexc216
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.48:                               # %invoke.cont33
.Ltmp76:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.49:                               # %invoke.cont35
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i226
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_52
# %bb.51:                               # %if.then.i2.i.i229
	ld.bu	$a0, $s0, 67
	b	.LBB3_54
.LBB3_52:                               # %if.end.i.i.i234
.Ltmp78:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.53:                               # %.noexc239
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp80:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp81:                                # EH_LABEL
.LBB3_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i231
.Ltmp82:                                # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.55:                               # %call1.i.noexc242
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.56:                               # %invoke.cont37
.Ltmp86:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.57:                               # %invoke.cont39
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.58:                               # %invoke.cont41
.Ltmp90:                                # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.59:                               # %invoke.cont43
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.60:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i252
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_62
# %bb.61:                               # %if.then.i2.i.i255
	ld.bu	$a0, $s1, 67
	b	.LBB3_64
.LBB3_62:                               # %if.end.i.i.i260
.Ltmp92:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.63:                               # %.noexc265
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp94:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp95:                                # EH_LABEL
.LBB3_64:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i257
.Ltmp96:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.65:                               # %call1.i.noexc268
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.66:                               # %invoke.cont45
.Ltmp100:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.67:                               # %invoke.cont47
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.68:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i278
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_70
# %bb.69:                               # %if.then.i2.i.i281
	ld.bu	$a0, $s0, 67
	b	.LBB3_72
.LBB3_70:                               # %if.end.i.i.i286
.Ltmp102:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.71:                               # %.noexc291
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp104:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp105:                               # EH_LABEL
.LBB3_72:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i283
.Ltmp106:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.73:                               # %call1.i.noexc294
.Ltmp108:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.74:                               # %invoke.cont49
.Ltmp110:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.75:                               # %invoke.cont51
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp112:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.76:                               # %invoke.cont53
.Ltmp114:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.77:                               # %invoke.cont55
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.78:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i304
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_80
# %bb.79:                               # %if.then.i2.i.i307
	ld.bu	$a0, $s1, 67
	b	.LBB3_82
.LBB3_80:                               # %if.end.i.i.i312
.Ltmp116:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.81:                               # %.noexc317
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp118:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp119:                               # EH_LABEL
.LBB3_82:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i309
.Ltmp120:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.83:                               # %call1.i.noexc320
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.84:                               # %invoke.cont57
.Ltmp124:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.85:                               # %invoke.cont59
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.86:                               # %invoke.cont61
.Ltmp128:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.87:                               # %invoke.cont63
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.88:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i330
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_90
# %bb.89:                               # %if.then.i2.i.i333
	ld.bu	$a0, $s1, 67
	b	.LBB3_92
.LBB3_90:                               # %if.end.i.i.i338
.Ltmp130:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.91:                               # %.noexc343
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp132:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp133:                               # EH_LABEL
.LBB3_92:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i335
.Ltmp134:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.93:                               # %call1.i.noexc346
.Ltmp136:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.94:                               # %invoke.cont65
.Ltmp138:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.95:                               # %invoke.cont67
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp140:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.96:                               # %invoke.cont69
.Ltmp142:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.97:                               # %invoke.cont71
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.98:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_100
# %bb.99:                               # %if.then.i2.i.i359
	ld.bu	$a0, $s0, 67
	b	.LBB3_102
.LBB3_100:                              # %if.end.i.i.i364
.Ltmp144:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.101:                              # %.noexc369
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp146:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp147:                               # EH_LABEL
.LBB3_102:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361
.Ltmp148:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.103:                              # %call1.i.noexc372
.Ltmp150:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.104:                              # %invoke.cont73
	addi.d	$a0, $sp, 16
.Ltmp152:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.105:                              # %call.i.noexc
	bnez	$a0, .LBB3_107
# %bb.106:                              # %if.then.i
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp154:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
.LBB3_107:                              # %invoke.cont75
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s2, .LBB3_109
# %bb.108:                              # %if.then.i.i
	ld.d	$a1, $sp, 536
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_109:                              # %return
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB3_110:                              # %if.then.i.i.i367.invoke
.Ltmp156:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.111:                              # %if.then.i.i.i367.cont
.LBB3_112:                              # %if.then.i.i10.invoke.i.i
.Ltmp159:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.113:                              # %if.then.i.i10.cont.i.i
.LBB3_114:                              # %if.then5
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.115:                              # %invoke.cont6
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.116:                              # %invoke.cont8
.Ltmp22:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.117:                              # %invoke.cont10
.Ltmp24:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.118:                              # %invoke.cont12
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_119:                              # %lpad
.Ltmp17:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB3_123
.LBB3_120:                              # %lpad.i.i
.Ltmp161:                               # EH_LABEL
	ld.d	$a2, $sp, 520
	move	$fp, $a0
	beq	$a2, $s2, .LBB3_126
# %bb.121:                              # %if.then.i.i15.i.i
	ld.d	$a0, $sp, 536
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB3_125
.LBB3_122:                              # %lpad2
.Ltmp158:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB3_123:                              # %ehcleanup
	ld.d	$a0, $sp, 520
	beq	$a0, $s2, .LBB3_126
# %bb.124:                              # %if.then.i.i100
	ld.d	$a1, $sp, 536
	addi.d	$a1, $a1, 1
.LBB3_125:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_126:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end3-_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp14
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp155-.Ltmp26               #   Call between .Ltmp26 and .Ltmp155
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp18                #   Call between .Ltmp18 and .Ltmp25
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold9sortZonesEv     # -- Begin function _ZN10ExportGold9sortZonesEv
	.p2align	5
	.type	_ZN10ExportGold9sortZonesEv,@function
_ZN10ExportGold9sortZonesEv:            # @_ZN10ExportGold9sortZonesEv
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
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a0, 88
	ld.d	$a1, $fp, 80
	ld.w	$s0, $a2, 68
	ld.d	$s1, $a2, 232
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.d	$s2, $fp, 80
	bgeu	$a2, $s0, .LBB4_2
# %bb.1:                                # %if.then.i
	sub.d	$a1, $s0, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_2:                                # %if.else.i
	bgeu	$s0, $a2, .LBB4_5
# %bb.3:                                # %if.then5.i
	alsl.d	$a1, $s0, $a1, 2
	beq	$a0, $a1, .LBB4_5
# %bb.4:                                # %invoke.cont.i.i
	st.d	$a1, $fp, 88
.LBB4_5:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	blez	$s0, .LBB4_35
# %bb.6:                                # %for.body.lr.ph
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	slli.d	$s8, $s0, 2
	ori	$a2, $zero, 4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_10
.LBB4_7:                                # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 8
	st.d	$a0, $fp, 16
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 24
.LBB4_8:                                # %if.end9
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s2, $fp, 80
	ori	$a2, $zero, 4
.LBB4_9:                                # %if.end9
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $s2, 0
	stx.w	$s7, $a0, $s5
	add.d	$s7, $s0, $s7
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 1
	beq	$s8, $s5, .LBB4_35
.LBB4_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s0, $s1, $s5
	beq	$s0, $a2, .LBB4_14
# %bb.11:                               # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB4_16
# %bb.12:                               # %if.then
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	beq	$a0, $a1, .LBB4_18
# %bb.13:                               # %if.then.i6
                                        #   in Loop: Header=BB4_10 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 16
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_14:                               # %if.then7
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB4_23
# %bb.15:                               # %if.then.i11
                                        #   in Loop: Header=BB4_10 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 40
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_16:                               # %if.else8
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	beq	$a0, $a1, .LBB4_29
# %bb.17:                               # %if.then.i40
                                        #   in Loop: Header=BB4_10 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 64
	b	.LBB4_9
.LBB4_18:                               # %if.else.i7
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 8
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.19:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s6, $a0, $s1
	blez	$s1, .LBB4_21
# %bb.20:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_7
# %bb.22:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_23:                               # %if.else.i13
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 32
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.24:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i20
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s6, $a0, $s1
	blez	$s1, .LBB4_26
# %bb.25:                               # %if.then.i.i.i.i.i34
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_26:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i28
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_28
# %bb.27:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i30
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i31
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 32
	st.d	$a0, $fp, 40
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 48
	b	.LBB4_8
.LBB4_29:                               # %if.else.i42
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 56
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.30:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i49
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s6, $a0, $s1
	blez	$s1, .LBB4_32
# %bb.31:                               # %if.then.i.i.i.i.i63
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i57
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_34
# %bb.33:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i59
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_34:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i60
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 56
	st.d	$a0, $fp, 64
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 72
	b	.LBB4_8
.LBB4_35:                               # %for.cond.cleanup
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
.LBB4_36:                               # %if.then.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN10ExportGold9sortZonesEv, .Lfunc_end4-_ZN10ExportGold9sortZonesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid # -- Begin function _ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
	.p2align	5
	.type	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid,@function
_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid: # @_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -944
	.cfi_def_cfa_offset 944
	st.d	$ra, $sp, 936                   # 8-byte Folded Spill
	st.d	$fp, $sp, 928                   # 8-byte Folded Spill
	st.d	$s0, $sp, 920                   # 8-byte Folded Spill
	st.d	$s1, $sp, 912                   # 8-byte Folded Spill
	st.d	$s2, $sp, 904                   # 8-byte Folded Spill
	st.d	$s3, $sp, 896                   # 8-byte Folded Spill
	st.d	$s4, $sp, 888                   # 8-byte Folded Spill
	st.d	$s5, $sp, 880                   # 8-byte Folded Spill
	st.d	$s6, $sp, 872                   # 8-byte Folded Spill
	st.d	$s7, $sp, 864                   # 8-byte Folded Spill
	st.d	$s8, $sp, 856                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 848                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	fmov.d	$fs0, $fa0
	move	$fp, $a2
	move	$s2, $a1
	move	$s6, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$s3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $s3, 0
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	bnez	$a0, .LBB5_73
# %bb.1:                                # %if.then
	ld.d	$s0, $s2, 0
	ld.d	$s2, $s2, 8
	addi.d	$s3, $sp, 320
	st.d	$s3, $sp, 304
	st.d	$zero, $sp, 312
	st.b	$zero, $sp, 320
	addi.d	$a1, $s2, 4
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.2:                                # %invoke.cont.i.i
	ld.d	$a0, $sp, 312
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s2, .LBB5_497
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp164:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.4:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 312
	addi.w	$a1, $zero, -5
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB5_497
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp166:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 304
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.6:                                # %invoke.cont
	ld.d	$a1, $sp, 304
	addi.d	$a0, $sp, 344
.Ltmp168:                               # EH_LABEL
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp169:                               # EH_LABEL
# %bb.7:                                # %call2.i.noexc
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	add.d	$a0, $a2, $a0
	beqz	$a1, .LBB5_9
# %bb.8:
	move	$a1, $zero
	b	.LBB5_10
.LBB5_9:                                # %if.then.i
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB5_10:                               # %if.end.i
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.11:                               # %invoke.cont3
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB5_503
# %bb.12:                               # %if.end
	ld.d	$a0, $sp, 304
	beq	$a0, $s3, .LBB5_14
# %bb.13:                               # %if.then.i.i124
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %if.end15
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB5_73
# %bb.15:                               # %invoke.cont19
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$s0, $sp, 336
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	addi.w	$a2, $zero, -261
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 256
	st.w	$a1, $a0, 24
.Ltmp181:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 8
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.16:                               # %invoke.cont27
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$s1, $a0, 16
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.17:                               # %invoke.cont29
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_495
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_20
# %bb.19:                               # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB5_22
.LBB5_20:                               # %if.end.i.i.i
.Ltmp185:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.21:                               # %.noexc1000
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp187:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp188:                               # EH_LABEL
.LBB5_22:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp189:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.23:                               # %call1.i.noexc
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.24:                               # %invoke.cont40
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$fp, $sp, 336
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 8
	st.d	$a1, $a0, 8
.Ltmp193:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.25:                               # %invoke.cont51
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 15
	st.d	$a1, $a0, 16
.Ltmp195:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.26:                               # %invoke.cont53
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_495
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1010
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_29
# %bb.28:                               # %if.then.i2.i.i1013
	ld.bu	$a0, $s0, 67
	b	.LBB5_31
.LBB5_29:                               # %if.end.i.i.i1018
.Ltmp197:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.30:                               # %.noexc1023
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp199:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp200:                               # EH_LABEL
.LBB5_31:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1015
.Ltmp201:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.32:                               # %call1.i.noexc1026
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.33:                               # %invoke.cont55
.Ltmp205:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 14
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.34:                               # %invoke.cont57
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_495
# %bb.35:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1036
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_37
# %bb.36:                               # %if.then.i2.i.i1039
	ld.bu	$a0, $fp, 67
	b	.LBB5_39
.LBB5_37:                               # %if.end.i.i.i1044
.Ltmp207:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.38:                               # %.noexc1049
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp209:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp210:                               # EH_LABEL
.LBB5_39:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1041
.Ltmp211:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.40:                               # %call1.i.noexc1052
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.41:                               # %invoke.cont59
.Ltmp215:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 16
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.42:                               # %invoke.cont61
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_495
# %bb.43:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1062
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_45
# %bb.44:                               # %if.then.i2.i.i1065
	ld.bu	$a0, $fp, 67
	b	.LBB5_47
.LBB5_45:                               # %if.end.i.i.i1070
.Ltmp217:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.46:                               # %.noexc1075
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp219:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp220:                               # EH_LABEL
.LBB5_47:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1067
.Ltmp221:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.48:                               # %call1.i.noexc1078
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.49:                               # %invoke.cont63
.Ltmp225:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 4
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.50:                               # %invoke.cont65
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_495
# %bb.51:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1088
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_53
# %bb.52:                               # %if.then.i2.i.i1091
	ld.bu	$a0, $fp, 67
	b	.LBB5_55
.LBB5_53:                               # %if.end.i.i.i1096
.Ltmp227:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.54:                               # %.noexc1101
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp229:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp230:                               # EH_LABEL
.LBB5_55:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1093
.Ltmp231:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.56:                               # %call1.i.noexc1104
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.57:                               # %invoke.cont76
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 10
	st.d	$a1, $a0, 16
.Ltmp235:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.58:                               # %invoke.cont78
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_495
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1114
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_61
# %bb.60:                               # %if.then.i2.i.i1117
	ld.bu	$a0, $s0, 67
	b	.LBB5_63
.LBB5_61:                               # %if.end.i.i.i1122
.Ltmp237:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.62:                               # %.noexc1127
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp239:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp240:                               # EH_LABEL
.LBB5_63:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1119
.Ltmp241:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.64:                               # %call1.i.noexc1130
.Ltmp243:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.65:                               # %invoke.cont80
.Ltmp245:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 8
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.66:                               # %invoke.cont82
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_495
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1140
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_69
# %bb.68:                               # %if.then.i2.i.i1143
	ld.bu	$a0, $fp, 67
	b	.LBB5_71
.LBB5_69:                               # %if.end.i.i.i1148
.Ltmp247:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.70:                               # %.noexc1153
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp249:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp250:                               # EH_LABEL
.LBB5_71:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1145
.Ltmp251:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.72:                               # %call1.i.noexc1156
.Ltmp253:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
.LBB5_73:                               # %if.end86
	ld.d	$a0, $s6, 0
	ld.w	$fp, $a0, 60
	ld.d	$s0, $a0, 240
	st.w	$fp, $sp, 304
.Ltmp255:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.74:                               # %invoke.cont91
	ld.w	$a0, $s3, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$s7, $a1, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a1, $s7, 0
	maskeqz	$s1, $a1, $a0
	bltz	$s1, .LBB5_475
# %bb.75:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s1, .LBB5_80
# %bb.76:                               # %if.then.i.i.i.i3.i
	slli.d	$s3, $s1, 2
.Ltmp258:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.77:                               # %call5.i.i.i2.i.i.noexc
	move	$s5, $a0
	alsl.d	$a0, $s1, $a0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.w	$zero, $s5, 0
	ori	$a0, $zero, 1
	addi.d	$s2, $s5, 4
	beq	$s1, $a0, .LBB5_79
# %bb.78:                               # %if.end.i.i.i.i.i.i
	add.d	$s1, $s5, $s3
	addi.d	$a2, $s3, -4
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s2, $s1
.LBB5_79:                               # %invoke.cont94
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	b	.LBB5_81
.LBB5_80:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s5, $zero
	move	$s2, $zero
.LBB5_81:                               # %invoke.cont94
.Ltmp260:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
# %bb.82:                               # %invoke.cont99
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s7, 0
	sltui	$a0, $a0, 1
	addi.w	$a1, $a1, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s1, $a0, $a2
	bltz	$s1, .LBB5_477
# %bb.83:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i203
	beqz	$s1, .LBB5_88
# %bb.84:                               # %if.then.i.i.i.i3.i205
	slli.d	$s3, $s1, 2
.Ltmp263:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.85:                               # %call5.i.i.i2.i.i.noexc218
	move	$a4, $a0
	alsl.d	$a0, $s1, $a0, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $a4, 0
	beq	$s1, $a0, .LBB5_87
# %bb.86:                               # %if.end.i.i.i.i.i.i211
	addi.d	$a0, $a4, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	move	$s1, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a4, $s1
.LBB5_87:                               # %invoke.cont108
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	bne	$s5, $s2, .LBB5_89
	b	.LBB5_92
.LBB5_88:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$a4, $zero
	beq	$s5, $s2, .LBB5_92
.LBB5_89:                               # %if.end.i224
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	st.w	$a0, $a4, 4
	beq	$a1, $s2, .LBB5_92
# %bb.90:                               # %while.body.i.preheader
	addi.d	$a2, $a4, 8
	.p2align	4, , 16
.LBB5_91:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a0, $a3, $a0
	st.w	$a0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a1, $s2, .LBB5_91
.LBB5_92:                               # %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
.Ltmp265:                               # EH_LABEL
	addi.d	$a1, $sp, 300
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $a4
	pcaddu18i	$ra, %call36(_ZN8Parallel7scatterEPKiRi)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.93:                               # %invoke.cont127
	ld.w	$a0, $s3, 0
	ld.w	$a1, $sp, 304
	sltui	$a0, $a0, 1
	maskeqz	$s1, $a1, $a0
	bltz	$s1, .LBB5_479
# %bb.94:                               # %_ZNSt6vectorI7double2SaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
	beqz	$s1, .LBB5_97
# %bb.95:                               # %for.inc.preheader.i.i.i.i.i
	slli.d	$s2, $s1, 4
.Ltmp268:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.96:                               # %call5.i.i.i2.i.i.noexc232
	move	$s4, $a0
	alsl.d	$a0, $s1, $a0, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_98
.LBB5_97:
	move	$s4, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB5_98:                               # %invoke.cont136
.Ltmp270:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervI7double2EEvPKT_iPS2_PKi)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.99:                               # %invoke.cont142
	ld.w	$a0, $s3, 0
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_104
.LBB5_100:                              # %if.end237
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 232
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$fp, $s6, 16
	ld.d	$s5, $s6, 8
	ld.d	$s1, $s6, 40
	ld.d	$s4, $s6, 32
	ld.d	$s0, $s6, 64
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	ld.d	$s2, $s6, 56
	bnez	$a0, .LBB5_122
# %bb.101:                              # %if.then249
	ld.d	$a0, $s6, 112
	ld.d	$a2, $s6, 104
	ld.w	$a1, $s7, 0
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_108
# %bb.102:                              # %if.then.i311
	addi.d	$a0, $s6, 104
	sub.d	$a1, $a1, $a3
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.103:                              # %if.then.i311.invoke.cont252_crit_edge
	ld.w	$a1, $s7, 0
	b	.LBB5_111
.LBB5_104:                              # %if.then144
.Ltmp272:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 11
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.105:                              # %invoke.cont145
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_499
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1166
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_408
# %bb.107:                              # %if.then.i2.i.i1169
	ld.bu	$a0, $fp, 67
	b	.LBB5_410
.LBB5_108:                              # %if.else.i
	bgeu	$a1, $a3, .LBB5_111
# %bb.109:                              # %if.then5.i
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB5_111
# %bb.110:                              # %invoke.cont.i.i310
	st.d	$a2, $s6, 112
.LBB5_111:                              # %invoke.cont252
	ld.d	$a0, $s6, 136
	ld.d	$a2, $s6, 128
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_114
# %bb.112:                              # %if.then.i326
	addi.d	$a0, $s6, 128
	sub.d	$a1, $a1, $a3
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.113:                              # %if.then.i326.invoke.cont254_crit_edge
	ld.w	$a1, $s7, 0
	b	.LBB5_117
.LBB5_114:                              # %if.else.i320
	bgeu	$a1, $a3, .LBB5_117
# %bb.115:                              # %if.then5.i322
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB5_117
# %bb.116:                              # %invoke.cont.i.i325
	st.d	$a2, $s6, 136
.LBB5_117:                              # %invoke.cont254
	ld.d	$a0, $s6, 160
	ld.d	$a2, $s6, 152
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_119
# %bb.118:                              # %if.then.i343
	addi.d	$a0, $s6, 152
	sub.d	$a1, $a1, $a3
.Ltmp329:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
	b	.LBB5_122
.LBB5_119:                              # %if.else.i337
	bgeu	$a1, $a3, .LBB5_122
# %bb.120:                              # %if.then5.i339
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB5_122
# %bb.121:                              # %invoke.cont.i.i342
	st.d	$a1, $s6, 160
.LBB5_122:                              # %if.end257
	ld.d	$a1, $s6, 104
	sub.d	$a0, $fp, $s5
	srai.d	$s8, $a0, 2
.Ltmp331:                               # EH_LABEL
	addi.w	$fp, $s8, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.123:                              # %invoke.cont260
	ld.d	$a1, $s6, 128
	sub.d	$a0, $s1, $s4
	srai.d	$a0, $a0, 2
.Ltmp333:                               # EH_LABEL
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.124:                              # %invoke.cont263
	ld.d	$a1, $s6, 152
	sub.d	$s1, $s0, $s2
	srai.d	$s2, $s1, 2
.Ltmp335:                               # EH_LABEL
	addi.w	$a0, $s2, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.125:                              # %invoke.cont266
	ld.d	$s0, $s6, 104
	ld.d	$a0, $s6, 112
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	beq	$s0, $a0, .LBB5_128
# %bb.126:                              # %for.body.i.preheader
	sub.d	$a1, $a0, $s0
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB5_129
# %bb.127:
	move	$s6, $zero
	move	$a1, $s0
	b	.LBB5_132
.LBB5_128:
	move	$s6, $zero
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB5_133
.LBB5_129:                              # %vector.ph
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $s0, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $s0, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_130:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_130
# %bb.131:                              # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s6, $vr0, 0
	beq	$a2, $a3, .LBB5_133
	.p2align	4, , 16
.LBB5_132:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.d	$s6, $a2, $s6
	bne	$a1, $a0, .LBB5_132
.LBB5_133:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 128
	ld.d	$a0, $a1, 136
	st.w	$s6, $a1, 176
	beq	$a5, $a0, .LBB5_136
# %bb.134:                              # %for.body.i360.preheader
	sub.d	$a1, $a0, $a5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB5_137
# %bb.135:
	move	$a4, $zero
	move	$a1, $a5
	b	.LBB5_140
.LBB5_136:
	move	$a4, $zero
	b	.LBB5_141
.LBB5_137:                              # %vector.ph2102
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a5, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_138:                              # %vector.body2105
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_138
# %bb.139:                              # %middle.block2114
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a2, $a3, .LBB5_141
	.p2align	4, , 16
.LBB5_140:                              # %for.body.i360
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.d	$a4, $a2, $a4
	bne	$a1, $a0, .LBB5_140
.LBB5_141:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit367
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 152
	ld.d	$a0, $a1, 160
	st.w	$a4, $a1, 180
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	beq	$a5, $a0, .LBB5_144
# %bb.142:                              # %for.body.i373.preheader
	sub.d	$a1, $a0, $a5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB5_145
# %bb.143:
	move	$a4, $zero
	move	$a1, $a5
	b	.LBB5_148
.LBB5_144:
	move	$a4, $zero
	b	.LBB5_149
.LBB5_145:                              # %vector.ph2121
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a5, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_146:                              # %vector.body2124
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_146
# %bb.147:                              # %middle.block2133
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a2, $a3, .LBB5_149
	.p2align	4, , 16
.LBB5_148:                              # %for.body.i373
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.d	$a4, $a2, $a4
	bne	$a1, $a0, .LBB5_148
.LBB5_149:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit380
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s7, 0
	sltui	$a0, $a0, 1
	maskeqz	$s1, $a1, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.w	$a4, $a0, 184
	bltz	$s1, .LBB5_481
# %bb.150:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i382
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$s1, .LBB5_154
# %bb.151:                              # %if.then.i.i.i.i3.i384
	slli.d	$s2, $s1, 2
.Ltmp338:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.152:                              # %call5.i.i.i2.i.i.noexc397
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a3, $a0, 4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bne	$s1, $a1, .LBB5_188
# %bb.153:
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bgez	$fp, .LBB5_155
	b	.LBB5_189
.LBB5_154:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	bltz	$fp, .LBB5_189
.LBB5_155:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i401
	alsl.w	$s2, $s8, $s8, 1
	beqz	$fp, .LBB5_164
# %bb.156:                              # %if.then.i.i.i.i3.i403
	move	$s1, $s4
	slli.d	$s4, $s2, 2
.Ltmp340:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.157:                              # %call5.i.i.i2.i.i.noexc416
	alsl.d	$a1, $s2, $a0, 2
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s4, $s1
	addi.w	$s1, $s6, 0
	bltz	$s1, .LBB5_165
.LBB5_158:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i420
	st.d	$s4, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	beqz	$s1, .LBB5_167
# %bb.159:                              # %if.then.i.i.i.i3.i422
	slli.d	$s4, $s1, 2
.Ltmp342:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.160:                              # %call5.i.i.i2.i.i.noexc435
	move	$s7, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s7, 0
	beq	$s1, $a0, .LBB5_162
# %bb.161:                              # %if.end.i.i.i.i.i.i428
	addi.d	$a0, $s7, 4
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_162:                              # %if.then.i.i.i.i3.i441
	alsl.d	$a0, $s1, $s7, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	alsl.w	$s1, $s6, $s6, 1
	slli.d	$s4, $s1, 2
.Ltmp344:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.163:                              # %call5.i.i.i2.i.i.noexc454
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_168
.LBB5_164:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	addi.w	$s1, $s6, 0
	bgez	$s1, .LBB5_158
.LBB5_165:                              # %if.then.i.i433
.Ltmp586:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.166:                              # %.noexc434
.LBB5_167:
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
.LBB5_168:                              # %invoke.cont344
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 8
.Ltmp347:                               # EH_LABEL
	move	$a1, $fp
	move	$a2, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.169:                              # %invoke.cont353
	ld.w	$a1, $s3, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB5_178
# %bb.170:                              # %for.cond356.preheader
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	blez	$a6, .LBB5_178
# %bb.171:                              # %for.body359.lr.ph
	ld.d	$a1, $s6, 104
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a6, $a3, .LBB5_176
# %bb.172:                              # %for.body359.lr.ph
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB5_176
# %bb.173:                              # %vector.ph2141
	bstrpick.d	$a2, $a6, 30, 3
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a1, 16
	vrepli.w	$vr0, 3
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_174:                              # %vector.body2144
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vmul.w	$vr1, $vr1, $vr0
	vmul.w	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_174
# %bb.175:                              # %middle.block2149
	beq	$a2, $a6, .LBB5_178
.LBB5_176:                              # %for.body359.preheader
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	sub.d	$a4, $a6, $a2
	.p2align	4, , 16
.LBB5_177:                              # %for.body359
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a2, 1
	st.w	$a2, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB5_177
.LBB5_178:                              # %if.end369
	beqz	$fp, .LBB5_181
# %bb.179:                              # %for.body373.lr.ph
	ld.d	$a7, $s6, 8
	ld.d	$a1, $s6, 80
	ld.w	$a2, $sp, 300
	bstrpick.d	$a3, $s8, 30, 0
	addi.d	$a4, $a0, 8
	.p2align	4, , 16
.LBB5_180:                              # %for.body373
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $s5, $a6
	alsl.d	$a5, $a5, $s5, 2
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -8
	ld.w	$a6, $a5, 4
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -4
	ld.w	$a5, $a5, 8
	add.d	$a5, $a2, $a5
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 12
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, 4
	bnez	$a3, .LBB5_180
.LBB5_181:                              # %for.cond.cleanup372
.Ltmp349:                               # EH_LABEL
	move	$a1, $s2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.182:                              # %invoke.cont400
	ld.w	$a0, $s3, 0
	st.d	$s7, $sp, 280                   # 8-byte Folded Spill
	bnez	$a0, .LBB5_227
# %bb.183:                              # %invoke.cont400
	ld.w	$a0, $s6, 176
	blez	$a0, .LBB5_227
# %bb.184:                              # %if.then404
.Ltmp351:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 5
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.185:                              # %invoke.cont405
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_483
# %bb.186:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1296
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_191
# %bb.187:                              # %if.then.i2.i.i1299
	ld.bu	$a0, $fp, 67
	b	.LBB5_193
.LBB5_188:                              # %if.end.i.i.i.i.i.i390
	add.d	$s1, $a0, $s2
	addi.d	$a2, $s2, -4
	move	$a0, $a3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	bgez	$fp, .LBB5_155
.LBB5_189:                              # %if.then.i.i414
.Ltmp589:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
# %bb.190:                              # %.noexc415
.LBB5_191:                              # %if.end.i.i.i1304
.Ltmp353:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.192:                              # %.noexc1309
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp355:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp356:                               # EH_LABEL
.LBB5_193:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1301
.Ltmp357:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.194:                              # %call1.i.noexc1312
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.195:                              # %invoke.cont416
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $s6, 176
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp361:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.196:                              # %invoke.cont419
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_483
# %bb.197:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1322
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_199
# %bb.198:                              # %if.then.i2.i.i1325
	ld.bu	$a0, $s0, 67
	b	.LBB5_201
.LBB5_199:                              # %if.end.i.i.i1330
.Ltmp363:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.200:                              # %.noexc1335
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp365:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp366:                               # EH_LABEL
.LBB5_201:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1327
.Ltmp367:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.202:                              # %call1.i.noexc1338
.Ltmp369:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.203:                              # %for.cond424.preheader
	ld.w	$a0, $s6, 176
	blez	$a0, .LBB5_227
# %bb.204:                              # %invoke.cont437.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 336
	ori	$s3, $zero, 10
	move	$s4, $s7
	.p2align	4, , 16
.LBB5_205:                              # %invoke.cont437
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	add.d	$a0, $s2, $a0
	st.d	$s3, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp371:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.206:                              # %invoke.cont442
                                        #   in Loop: Header=BB5_205 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_455
# %bb.207:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1348
                                        #   in Loop: Header=BB5_205 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_209
# %bb.208:                              # %if.then.i2.i.i1351
                                        #   in Loop: Header=BB5_205 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_211
	.p2align	4, , 16
.LBB5_209:                              # %if.end.i.i.i1356
                                        #   in Loop: Header=BB5_205 Depth=1
.Ltmp373:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.210:                              # %.noexc1361
                                        #   in Loop: Header=BB5_205 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp375:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp376:                               # EH_LABEL
.LBB5_211:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1353
                                        #   in Loop: Header=BB5_205 Depth=1
.Ltmp377:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.212:                              # %call1.i.noexc1364
                                        #   in Loop: Header=BB5_205 Depth=1
.Ltmp379:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.213:                              # %for.inc446
                                        #   in Loop: Header=BB5_205 Depth=1
	ld.w	$a0, $s6, 176
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 4
	blt	$s1, $a0, .LBB5_205
# %bb.214:                              # %for.cond451.preheader
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	blez	$a0, .LBB5_227
# %bb.215:                              # %for.cond457.preheader.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s1, $a0, 8
	addi.d	$s2, $sp, 336
	ori	$s4, $zero, 10
	.p2align	4, , 16
.LBB5_216:                              # %for.cond457.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	st.d	$s4, $a0, 16
	ld.w	$a0, $s1, -8
	addi.w	$a1, $a0, 1
.Ltmp382:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.217:                              # %for.inc478
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	st.d	$s4, $a0, 16
	ld.w	$a0, $s1, -4
	addi.w	$a1, $a0, 1
.Ltmp384:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp385:                               # EH_LABEL
# %bb.218:                              # %for.inc478.1
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s1, 0
	add.d	$a0, $s2, $a0
	st.d	$s4, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp386:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
# %bb.219:                              # %for.inc478.2
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_463
# %bb.220:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1374
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_222
# %bb.221:                              # %if.then.i2.i.i1377
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB5_224
	.p2align	4, , 16
.LBB5_222:                              # %if.end.i.i.i1382
                                        #   in Loop: Header=BB5_216 Depth=1
.Ltmp389:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.223:                              # %.noexc1387
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp391:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp392:                               # EH_LABEL
.LBB5_224:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1379
                                        #   in Loop: Header=BB5_216 Depth=1
.Ltmp393:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.225:                              # %call1.i.noexc1390
                                        #   in Loop: Header=BB5_216 Depth=1
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.226:                              # %for.inc485
                                        #   in Loop: Header=BB5_216 Depth=1
	ld.w	$a0, $s6, 176
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 12
	blt	$s0, $a0, .LBB5_216
.LBB5_227:                              # %if.end489
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	bltz	$s4, .LBB5_485
# %bb.228:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i505
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	slli.w	$fp, $a0, 2
	beqz	$s4, .LBB5_237
# %bb.229:                              # %if.then.i.i.i.i3.i507
	slli.d	$s0, $fp, 2
.Ltmp398:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp399:                               # EH_LABEL
# %bb.230:                              # %call5.i.i.i2.i.i.noexc520
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s6, 180
	bltz	$s1, .LBB5_238
.LBB5_231:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i524
	beqz	$s1, .LBB5_240
# %bb.232:                              # %if.then.i.i.i.i3.i526
	slli.d	$s0, $s1, 2
.Ltmp400:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.233:                              # %call5.i.i.i2.i.i.noexc539
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s2, 0
	beq	$s1, $a0, .LBB5_235
# %bb.234:                              # %if.end.i.i.i.i.i.i532
	addi.d	$a0, $s2, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_235:                              # %if.then.i.i.i.i3.i545
	move	$s8, $s2
	alsl.d	$a0, $s1, $s2, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$s1, $s0, 0
	slli.d	$s0, $s1, 2
.Ltmp402:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.236:                              # %call5.i.i.i2.i.i.noexc558
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $s8
	b	.LBB5_241
.LBB5_237:
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.w	$s1, $s6, 180
	bgez	$s1, .LBB5_231
.LBB5_238:                              # %if.then.i.i537
.Ltmp571:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.239:                              # %.noexc538
.LBB5_240:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$a2, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
.LBB5_241:                              # %invoke.cont509
	ld.d	$a0, $s6, 32
	ld.d	$a3, $s6, 128
.Ltmp405:                               # EH_LABEL
	move	$a1, $s4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.242:                              # %invoke.cont518
	ld.w	$a1, $s3, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a1, .LBB5_251
# %bb.243:                              # %for.cond522.preheader
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	blez	$a6, .LBB5_251
# %bb.244:                              # %for.body525.lr.ph
	ld.d	$a1, $s6, 128
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a6, $a3, .LBB5_249
# %bb.245:                              # %for.body525.lr.ph
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB5_249
# %bb.246:                              # %vector.ph2156
	bstrpick.d	$a2, $a6, 30, 3
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_247:                              # %vector.body2159
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vslli.w	$vr0, $vr0, 2
	vslli.w	$vr1, $vr1, 2
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_247
# %bb.248:                              # %middle.block2164
	beq	$a2, $a6, .LBB5_251
.LBB5_249:                              # %for.body525.preheader
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	sub.d	$a4, $a6, $a2
	.p2align	4, , 16
.LBB5_250:                              # %for.body525
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	slli.d	$a2, $a2, 2
	st.w	$a2, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB5_250
.LBB5_251:                              # %if.end535
	beqz	$s4, .LBB5_254
# %bb.252:                              # %for.body539.lr.ph
	ld.d	$a7, $s6, 32
	ld.d	$a1, $s6, 80
	ld.w	$a2, $sp, 300
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 0
	addi.d	$a4, $a0, 8
	.p2align	4, , 16
.LBB5_253:                              # %for.body539
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $s5, $a6
	alsl.d	$a5, $a5, $s5, 2
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -8
	ld.w	$a6, $a5, 4
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -4
	ld.w	$a6, $a5, 8
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, 0
	ld.w	$a5, $a5, 12
	add.d	$a5, $a2, $a5
	st.w	$a5, $a4, 4
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB5_253
.LBB5_254:                              # %for.cond.cleanup538
.Ltmp407:                               # EH_LABEL
	move	$a1, $fp
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.255:                              # %invoke.cont571
	ld.w	$a0, $s3, 0
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_298
# %bb.256:                              # %invoke.cont571
	ld.w	$a0, $s6, 180
	blez	$a0, .LBB5_298
# %bb.257:                              # %if.then576
.Ltmp409:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 5
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.258:                              # %invoke.cont577
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_487
# %bb.259:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1400
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_261
# %bb.260:                              # %if.then.i2.i.i1403
	ld.bu	$a0, $fp, 67
	b	.LBB5_263
.LBB5_261:                              # %if.end.i.i.i1408
.Ltmp411:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.262:                              # %.noexc1413
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp413:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp414:                               # EH_LABEL
.LBB5_263:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1405
.Ltmp415:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.264:                              # %call1.i.noexc1416
.Ltmp417:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.265:                              # %invoke.cont588
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $s6, 180
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp419:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.266:                              # %invoke.cont591
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_487
# %bb.267:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1426
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_269
# %bb.268:                              # %if.then.i2.i.i1429
	ld.bu	$a0, $s0, 67
	b	.LBB5_271
.LBB5_269:                              # %if.end.i.i.i1434
.Ltmp421:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.270:                              # %.noexc1439
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp423:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp424:                               # EH_LABEL
.LBB5_271:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431
.Ltmp425:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp426:                               # EH_LABEL
# %bb.272:                              # %call1.i.noexc1442
.Ltmp427:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.273:                              # %for.cond596.preheader
	ld.w	$a0, $s6, 180
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB5_298
# %bb.274:                              # %invoke.cont609.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 336
	ori	$s3, $zero, 10
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_275:                              # %invoke.cont609
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	add.d	$a0, $s2, $a0
	st.d	$s3, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp429:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.276:                              # %invoke.cont614
                                        #   in Loop: Header=BB5_275 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_457
# %bb.277:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1452
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_279
# %bb.278:                              # %if.then.i2.i.i1455
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_281
	.p2align	4, , 16
.LBB5_279:                              # %if.end.i.i.i1460
                                        #   in Loop: Header=BB5_275 Depth=1
.Ltmp431:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.280:                              # %.noexc1465
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp433:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp434:                               # EH_LABEL
.LBB5_281:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1457
                                        #   in Loop: Header=BB5_275 Depth=1
.Ltmp435:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.282:                              # %call1.i.noexc1468
                                        #   in Loop: Header=BB5_275 Depth=1
.Ltmp437:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.283:                              # %for.inc618
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.w	$a0, $s6, 180
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 4
	blt	$s1, $a0, .LBB5_275
# %bb.284:                              # %for.cond623.preheader
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	blez	$a0, .LBB5_298
# %bb.285:                              # %for.cond629.preheader.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s2, $a0, 8
	addi.d	$s1, $sp, 336
	ori	$s4, $zero, 10
	.p2align	4, , 16
.LBB5_286:                              # %for.cond629.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
	ld.w	$a0, $s2, -8
	addi.w	$a1, $a0, 1
.Ltmp440:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.287:                              # %for.inc650
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
	ld.w	$a0, $s2, -4
	addi.w	$a1, $a0, 1
.Ltmp442:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.288:                              # %for.inc650.1
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s2, 0
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp444:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.289:                              # %for.inc650.2
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
	ld.w	$a0, $s2, 4
	addi.w	$a1, $a0, 1
.Ltmp446:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.290:                              # %for.inc650.3
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_465
# %bb.291:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1478
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_293
# %bb.292:                              # %if.then.i2.i.i1481
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB5_295
	.p2align	4, , 16
.LBB5_293:                              # %if.end.i.i.i1486
                                        #   in Loop: Header=BB5_286 Depth=1
.Ltmp449:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.294:                              # %.noexc1491
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp451:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp452:                               # EH_LABEL
.LBB5_295:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1483
                                        #   in Loop: Header=BB5_286 Depth=1
.Ltmp453:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.296:                              # %call1.i.noexc1494
                                        #   in Loop: Header=BB5_286 Depth=1
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.297:                              # %for.inc657
                                        #   in Loop: Header=BB5_286 Depth=1
	ld.w	$a0, $s6, 180
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 16
	blt	$s0, $a0, .LBB5_286
.LBB5_298:                              # %if.end661
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	slli.d	$s0, $a0, 30
	srai.d	$s1, $s0, 32
	srli.d	$a0, $s1, 61
	bnez	$a0, .LBB5_489
# %bb.299:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i609
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	beqz	$s0, .LBB5_303
# %bb.300:                              # %if.then.i.i.i.i3.i611
	srai.d	$fp, $s0, 30
.Ltmp458:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.301:                              # %call5.i.i.i2.i.i.noexc624
	move	$s2, $a0
	alsl.d	$a0, $s1, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.w	$zero, $s2, 0
	beq	$s0, $a0, .LBB5_304
# %bb.302:                              # %if.end.i.i.i.i.i.i617
	addi.d	$a0, $s2, 4
	addi.d	$a2, $fp, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_304
.LBB5_303:
	move	$s2, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB5_304:                              # %invoke.cont665
	ld.w	$fp, $s6, 184
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	bltz	$fp, .LBB5_491
# %bb.305:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i628
	beqz	$fp, .LBB5_313
# %bb.306:                              # %if.then.i.i.i.i3.i630
	slli.d	$s0, $fp, 2
.Ltmp460:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.307:                              # %call5.i.i.i2.i.i.noexc643
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	beq	$fp, $a0, .LBB5_309
# %bb.308:                              # %if.end.i.i.i.i.i.i636
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_309:                              # %if.then.i.i.i.i3.i649
.Ltmp462:                               # EH_LABEL
	move	$s8, $s1
	alsl.d	$a0, $fp, $s1, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.310:                              # %call5.i.i.i2.i.i.noexc662
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	beq	$fp, $a1, .LBB5_312
# %bb.311:                              # %if.end.i.i.i.i.i.i655
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_312:                              # %invoke.cont679
	move	$a2, $s8
	b	.LBB5_314
.LBB5_313:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$a2, $zero
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB5_314:                              # %invoke.cont679
	ld.d	$a0, $s6, 56
	ld.d	$a3, $s6, 152
.Ltmp465:                               # EH_LABEL
	move	$s0, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $fp
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.315:                              # %for.cond689.preheader
	blez	$fp, .LBB5_331
# %bb.316:                              # %for.body692.lr.ph
	move	$s5, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$s0, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$s1, $a0, 511
	b	.LBB5_318
	.p2align	4, , 16
.LBB5_317:                              # %for.cond.cleanup710
                                        #   in Loop: Header=BB5_318 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB5_330
.LBB5_318:                              # %for.body692
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_322 Depth 2
	ld.d	$a0, $s6, 56
	slli.d	$a2, $s5, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a1, $s6, 80
	slli.d	$a3, $a0, 2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a3
	ldx.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	stx.w	$a4, $a3, $a2
	blez	$a4, .LBB5_317
# %bb.319:                              # %for.body711.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$s3, $zero
	alsl.d	$s4, $a0, $a5, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$fp, $a1, $a0, 2
	move	$s8, $s0
	b	.LBB5_322
	.p2align	4, , 16
.LBB5_320:                              # %if.then.i.i675
                                        #   in Loop: Header=BB5_322 Depth=2
	st.w	$s6, $s2, 0
	move	$s0, $s8
.LBB5_321:                              # %invoke.cont718
                                        #   in Loop: Header=BB5_322 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 1
	addi.d	$fp, $fp, 4
	bge	$s3, $a0, .LBB5_317
.LBB5_322:                              # %for.body711
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $fp, 0
	ld.w	$a1, $sp, 300
	add.d	$s6, $a1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bne	$s2, $a0, .LBB5_320
# %bb.323:                              # %if.else.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	sub.d	$s2, $a0, $s8
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB5_453
# %bb.324:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s7, $a0, $a1
	slli.d	$a0, $s7, 2
.Ltmp467:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp468:                               # EH_LABEL
# %bb.325:                              # %call5.i.i.i.i.i.noexc
                                        #   in Loop: Header=BB5_322 Depth=2
	move	$s0, $a0
	stx.w	$s6, $a0, $s2
	blez	$s2, .LBB5_327
# %bb.326:                              # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_327:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	beqz	$s8, .LBB5_329
# %bb.328:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_329:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_322 Depth=2
	add.d	$s2, $s0, $s2
	alsl.d	$a0, $s7, $s0, 2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $s0
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_321
.LBB5_330:                              # %for.cond.cleanup691.loopexit
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	b	.LBB5_332
.LBB5_331:
	move	$s0, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
.LBB5_332:                              # %for.cond.cleanup691
	ld.d	$a3, $s6, 152
.Ltmp470:                               # EH_LABEL
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.333:                              # %invoke.cont734
	sub.d	$a0, $s2, $s0
	srai.d	$a0, $a0, 2
	addi.w	$s8, $a0, 0
.Ltmp473:                               # EH_LABEL
	move	$a0, $s8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.334:                              # %invoke.cont739
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	beq	$s3, $a5, .LBB5_346
# %bb.335:                              # %for.body.i696.preheader
	sub.d	$a0, $a5, $s3
	addi.d	$a0, $a0, -4
	ori	$a1, $zero, 28
	bgeu	$a0, $a1, .LBB5_337
# %bb.336:
	move	$a3, $zero
	move	$a0, $s3
	b	.LBB5_340
.LBB5_337:                              # %vector.ph2170
	srli.d	$a0, $a0, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $s3, $a0
	vrepli.b	$vr0, 0
	addi.d	$a3, $s3, 16
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_338:                              # %vector.body2173
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_338
# %bb.339:                              # %middle.block2182
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a1, $a2, .LBB5_341
	.p2align	4, , 16
.LBB5_340:                              # %for.body.i696
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	add.d	$a3, $a1, $a3
	bne	$a0, $a5, .LBB5_340
.LBB5_341:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit703
	addi.w	$fp, $a3, 0
	bltz	$fp, .LBB5_501
# %bb.342:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i705
	beqz	$fp, .LBB5_346
# %bb.343:                              # %if.then.i.i.i.i3.i707
	slli.d	$s2, $fp, 2
.Ltmp476:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
# %bb.344:                              # %call5.i.i.i2.i.i.noexc720
	move	$s5, $a0
	alsl.d	$s3, $fp, $a0, 2
	ori	$a0, $zero, 1
	st.w	$zero, $s5, 0
	beq	$fp, $a0, .LBB5_347
# %bb.345:                              # %if.end.i.i.i.i.i.i713
	addi.d	$a0, $s5, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_347
.LBB5_346:
	move	$s5, $zero
	move	$s3, $zero
.LBB5_347:                              # %invoke.cont758
.Ltmp481:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s5
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp482:                               # EH_LABEL
# %bb.348:                              # %invoke.cont765
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB5_403
# %bb.349:                              # %invoke.cont765
	ld.w	$a1, $s6, 184
	blez	$a1, .LBB5_403
# %bb.350:                              # %if.then770
.Ltmp483:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 6
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.351:                              # %invoke.cont771
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_493
# %bb.352:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1504
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_354
# %bb.353:                              # %if.then.i2.i.i1507
	ld.bu	$a0, $s2, 67
	b	.LBB5_356
.LBB5_354:                              # %if.end.i.i.i1512
.Ltmp485:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.355:                              # %.noexc1517
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp487:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp488:                               # EH_LABEL
.LBB5_356:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1509
.Ltmp489:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.357:                              # %call1.i.noexc1520
.Ltmp491:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.358:                              # %invoke.cont782
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $s6, 184
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp493:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.359:                              # %invoke.cont785
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_493
# %bb.360:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1530
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_362
# %bb.361:                              # %if.then.i2.i.i1533
	ld.bu	$a0, $s2, 67
	b	.LBB5_364
.LBB5_362:                              # %if.end.i.i.i1538
.Ltmp495:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.363:                              # %.noexc1543
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp497:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp498:                               # EH_LABEL
.LBB5_364:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1535
.Ltmp499:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.365:                              # %call1.i.noexc1546
.Ltmp501:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.366:                              # %for.cond790.preheader
	ld.w	$a0, $s6, 184
	blez	$a0, .LBB5_402
# %bb.367:                              # %invoke.cont803.preheader
	move	$fp, $zero
	addi.d	$s1, $sp, 336
	ori	$s4, $zero, 10
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_368:                              # %invoke.cont803
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s6, 0
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp503:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.369:                              # %invoke.cont808
                                        #   in Loop: Header=BB5_368 Depth=1
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_459
# %bb.370:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1556
                                        #   in Loop: Header=BB5_368 Depth=1
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_372
# %bb.371:                              # %if.then.i2.i.i1559
                                        #   in Loop: Header=BB5_368 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB5_374
	.p2align	4, , 16
.LBB5_372:                              # %if.end.i.i.i1564
                                        #   in Loop: Header=BB5_368 Depth=1
.Ltmp505:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
# %bb.373:                              # %.noexc1569
                                        #   in Loop: Header=BB5_368 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp507:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp508:                               # EH_LABEL
.LBB5_374:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1561
                                        #   in Loop: Header=BB5_368 Depth=1
.Ltmp509:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.375:                              # %call1.i.noexc1572
                                        #   in Loop: Header=BB5_368 Depth=1
.Ltmp511:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.376:                              # %for.inc812
                                        #   in Loop: Header=BB5_368 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 184
	addi.d	$fp, $fp, 1
	addi.d	$s6, $s6, 4
	blt	$fp, $a0, .LBB5_368
# %bb.377:                              # %for.cond817.preheader
	blez	$a0, .LBB5_402
# %bb.378:                              # %invoke.cont830.preheader
	move	$fp, $zero
	addi.d	$s1, $sp, 336
	ori	$s4, $zero, 10
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_379:                              # %invoke.cont830
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s6, 0
	add.d	$a0, $s1, $a0
	st.d	$s4, $a0, 16
.Ltmp514:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.380:                              # %invoke.cont834
                                        #   in Loop: Header=BB5_379 Depth=1
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_467
# %bb.381:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1582
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_383
# %bb.382:                              # %if.then.i2.i.i1585
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB5_385
	.p2align	4, , 16
.LBB5_383:                              # %if.end.i.i.i1590
                                        #   in Loop: Header=BB5_379 Depth=1
.Ltmp516:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.384:                              # %.noexc1595
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp518:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp519:                               # EH_LABEL
.LBB5_385:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1587
                                        #   in Loop: Header=BB5_379 Depth=1
.Ltmp520:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.386:                              # %call1.i.noexc1598
                                        #   in Loop: Header=BB5_379 Depth=1
.Ltmp522:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.387:                              # %for.inc838
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 184
	addi.d	$fp, $fp, 1
	addi.d	$s6, $s6, 4
	blt	$fp, $a0, .LBB5_379
# %bb.388:                              # %for.cond843.preheader
	blez	$a0, .LBB5_402
# %bb.389:                              # %for.cond849.preheader.preheader
	move	$s1, $zero
	move	$s4, $zero
	addi.d	$s6, $sp, 336
	ori	$s7, $zero, 10
	.p2align	4, , 16
.LBB5_390:                              # %for.cond849.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_392 Depth 2
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	alsl.d	$s8, $s1, $a1, 2
	blez	$a0, .LBB5_394
# %bb.391:                              # %invoke.cont863.preheader
                                        #   in Loop: Header=BB5_390 Depth=1
	move	$fp, $zero
	alsl.d	$s2, $s4, $s5, 2
	.p2align	4, , 16
.LBB5_392:                              # %invoke.cont863
                                        #   Parent Loop BB5_390 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s2, 0
	add.d	$a0, $s6, $a0
	st.d	$s7, $a0, 16
	addi.w	$a1, $a1, 1
.Ltmp525:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.393:                              # %for.inc871
                                        #   in Loop: Header=BB5_392 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 4
	blt	$fp, $a0, .LBB5_392
.LBB5_394:                              # %for.cond.cleanup853
                                        #   in Loop: Header=BB5_390 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_471
# %bb.395:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1608
                                        #   in Loop: Header=BB5_390 Depth=1
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_397
# %bb.396:                              # %if.then.i2.i.i1611
                                        #   in Loop: Header=BB5_390 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB5_399
	.p2align	4, , 16
.LBB5_397:                              # %if.end.i.i.i1616
                                        #   in Loop: Header=BB5_390 Depth=1
.Ltmp528:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.398:                              # %.noexc1621
                                        #   in Loop: Header=BB5_390 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp530:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp531:                               # EH_LABEL
.LBB5_399:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1613
                                        #   in Loop: Header=BB5_390 Depth=1
.Ltmp532:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp533:                               # EH_LABEL
# %bb.400:                              # %call1.i.noexc1624
                                        #   in Loop: Header=BB5_390 Depth=1
.Ltmp534:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.401:                              # %invoke.cont876
                                        #   in Loop: Header=BB5_390 Depth=1
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 184
	addi.d	$s1, $s1, 1
	add.w	$s4, $a0, $s4
	blt	$s1, $a1, .LBB5_390
.LBB5_402:                              # %if.end886thread-pre-split
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
.LBB5_403:                              # %if.end886
	bnez	$a0, .LBB5_407
# %bb.404:                              # %if.then888
	addi.d	$a0, $sp, 344
.Ltmp537:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.405:                              # %call.i.noexc
	bnez	$a0, .LBB5_407
# %bb.406:                              # %if.then.i777
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp539:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp540:                               # EH_LABEL
.LBB5_407:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit886
	sub.d	$a1, $s3, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 848                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 920                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 928                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 936                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 944
	ret
.LBB5_408:                              # %if.end.i.i.i1174
.Ltmp274:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.409:                              # %.noexc1179
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp276:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp277:                               # EH_LABEL
.LBB5_410:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1171
.Ltmp278:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.411:                              # %call1.i.noexc1182
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.412:                              # %invoke.cont156
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $sp, 304
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.413:                              # %invoke.cont158
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_499
# %bb.414:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1192
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_416
# %bb.415:                              # %if.then.i2.i.i1195
	ld.bu	$a0, $s0, 67
	b	.LBB5_418
.LBB5_416:                              # %if.end.i.i.i1200
.Ltmp284:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.417:                              # %.noexc1205
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp286:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp287:                               # EH_LABEL
.LBB5_418:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1197
.Ltmp288:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.419:                              # %call1.i.noexc1208
.Ltmp290:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.420:                              # %invoke.cont160
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $sp, 304
	addi.d	$s1, $sp, 336
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 5
	st.d	$a2, $a0, 8
	blez	$a1, .LBB5_100
# %bb.421:                              # %invoke.cont180.preheader
	move	$s2, $zero
	ori	$s3, $zero, 12
	.p2align	4, , 16
.LBB5_422:                              # %invoke.cont180
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s4, 0
	add.d	$a0, $s1, $a0
	st.d	$s3, $a0, 16
.Ltmp292:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.423:                              # %invoke.cont184
                                        #   in Loop: Header=BB5_422 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_461
# %bb.424:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1218
                                        #   in Loop: Header=BB5_422 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_426
# %bb.425:                              # %if.then.i2.i.i1221
                                        #   in Loop: Header=BB5_422 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_428
	.p2align	4, , 16
.LBB5_426:                              # %if.end.i.i.i1226
                                        #   in Loop: Header=BB5_422 Depth=1
.Ltmp294:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.427:                              # %.noexc1231
                                        #   in Loop: Header=BB5_422 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp296:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp297:                               # EH_LABEL
.LBB5_428:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1223
                                        #   in Loop: Header=BB5_422 Depth=1
.Ltmp298:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.429:                              # %call1.i.noexc1234
                                        #   in Loop: Header=BB5_422 Depth=1
.Ltmp300:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.430:                              # %for.inc
                                        #   in Loop: Header=BB5_422 Depth=1
	ld.w	$a0, $sp, 304
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 16
	blt	$s2, $a0, .LBB5_422
# %bb.431:                              # %for.cond190.preheader
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blez	$a0, .LBB5_100
# %bb.432:                              # %invoke.cont202.preheader
	move	$s1, $zero
	addi.d	$s2, $a1, 8
	addi.d	$s3, $sp, 336
	ori	$s4, $zero, 12
	.p2align	4, , 16
.LBB5_433:                              # %invoke.cont202
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s2, 0
	add.d	$a0, $s3, $a0
	st.d	$s4, $a0, 16
.Ltmp303:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.434:                              # %invoke.cont206
                                        #   in Loop: Header=BB5_433 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_469
# %bb.435:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1244
                                        #   in Loop: Header=BB5_433 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_437
# %bb.436:                              # %if.then.i2.i.i1247
                                        #   in Loop: Header=BB5_433 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_439
	.p2align	4, , 16
.LBB5_437:                              # %if.end.i.i.i1252
                                        #   in Loop: Header=BB5_433 Depth=1
.Ltmp305:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.438:                              # %.noexc1257
                                        #   in Loop: Header=BB5_433 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp307:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp308:                               # EH_LABEL
.LBB5_439:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1249
                                        #   in Loop: Header=BB5_433 Depth=1
.Ltmp309:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.440:                              # %call1.i.noexc1260
                                        #   in Loop: Header=BB5_433 Depth=1
.Ltmp311:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.441:                              # %for.inc210
                                        #   in Loop: Header=BB5_433 Depth=1
	ld.w	$a0, $sp, 304
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 16
	blt	$s1, $a0, .LBB5_433
# %bb.442:                              # %for.cond215.preheader
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	blez	$a0, .LBB5_100
# %bb.443:                              # %invoke.cont227.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 336
	ori	$s3, $zero, 12
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB5_444:                              # %invoke.cont227
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	st.d	$s3, $a0, 16
.Ltmp314:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.445:                              # %invoke.cont229
                                        #   in Loop: Header=BB5_444 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_473
# %bb.446:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1270
                                        #   in Loop: Header=BB5_444 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_448
# %bb.447:                              # %if.then.i2.i.i1273
                                        #   in Loop: Header=BB5_444 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_450
	.p2align	4, , 16
.LBB5_448:                              # %if.end.i.i.i1278
                                        #   in Loop: Header=BB5_444 Depth=1
.Ltmp316:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.449:                              # %.noexc1283
                                        #   in Loop: Header=BB5_444 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp318:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp319:                               # EH_LABEL
.LBB5_450:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1275
                                        #   in Loop: Header=BB5_444 Depth=1
.Ltmp320:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.451:                              # %call1.i.noexc1286
                                        #   in Loop: Header=BB5_444 Depth=1
.Ltmp322:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.452:                              # %for.inc233
                                        #   in Loop: Header=BB5_444 Depth=1
	ld.w	$a0, $sp, 304
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB5_444
	b	.LBB5_100
.LBB5_453:                              # %if.then.i.i.i.i
.Ltmp553:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
# %bb.454:                              # %.noexc682
.LBB5_455:                              # %if.then.i.i.i1359
.Ltmp580:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp581:                               # EH_LABEL
# %bb.456:                              # %.noexc1360
.LBB5_457:                              # %if.then.i.i.i1463
.Ltmp565:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.458:                              # %.noexc1464
.LBB5_459:                              # %if.then.i.i.i1567
.Ltmp547:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp548:                               # EH_LABEL
# %bb.460:                              # %.noexc1568
.LBB5_461:                              # %if.then.i.i.i1229
.Ltmp601:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp602:                               # EH_LABEL
# %bb.462:                              # %.noexc1230
.LBB5_463:                              # %if.then.i.i.i1385
.Ltmp577:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.464:                              # %.noexc1386
.LBB5_465:                              # %if.then.i.i.i1489
.Ltmp562:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp563:                               # EH_LABEL
# %bb.466:                              # %.noexc1490
.LBB5_467:                              # %if.then.i.i.i1593
.Ltmp544:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp545:                               # EH_LABEL
# %bb.468:                              # %.noexc1594
.LBB5_469:                              # %if.then.i.i.i1255
.Ltmp598:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp599:                               # EH_LABEL
# %bb.470:                              # %.noexc1256
.LBB5_471:                              # %if.then.i.i.i1619
.Ltmp541:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.472:                              # %.noexc1620
.LBB5_473:                              # %if.then.i.i.i1281
.Ltmp595:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp596:                               # EH_LABEL
# %bb.474:                              # %.noexc1282
.LBB5_475:                              # %if.then.i.i199
.Ltmp613:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.476:                              # %.noexc
.LBB5_477:                              # %if.then.i.i216
.Ltmp610:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp611:                               # EH_LABEL
# %bb.478:                              # %.noexc217
.LBB5_479:                              # %if.then.i.i230
.Ltmp607:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp608:                               # EH_LABEL
# %bb.480:                              # %.noexc231
.LBB5_481:                              # %if.then.i.i395
.Ltmp592:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp593:                               # EH_LABEL
# %bb.482:                              # %.noexc396
.LBB5_483:                              # %if.then.i.i.i1333.invoke
.Ltmp583:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp584:                               # EH_LABEL
# %bb.484:                              # %if.then.i.i.i1333.cont
.LBB5_485:                              # %if.then.i.i518
.Ltmp574:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp575:                               # EH_LABEL
# %bb.486:                              # %.noexc519
.LBB5_487:                              # %if.then.i.i.i1437.invoke
.Ltmp568:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp569:                               # EH_LABEL
# %bb.488:                              # %if.then.i.i.i1437.cont
.LBB5_489:                              # %if.then.i.i622
.Ltmp559:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
# %bb.490:                              # %.noexc623
.LBB5_491:                              # %if.then.i.i641
.Ltmp556:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp557:                               # EH_LABEL
# %bb.492:                              # %.noexc642
.LBB5_493:                              # %if.then.i.i.i1541.invoke
.Ltmp550:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp551:                               # EH_LABEL
# %bb.494:                              # %if.then.i.i.i1541.cont
.LBB5_495:                              # %if.then.i.i.i1151.invoke
.Ltmp616:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp617:                               # EH_LABEL
# %bb.496:                              # %if.then.i.i.i1151.cont
.LBB5_497:                              # %if.then.i.i10.invoke.i.i
.Ltmp619:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp620:                               # EH_LABEL
# %bb.498:                              # %if.then.i.i10.cont.i.i
.LBB5_499:                              # %if.then.i.i.i1203.invoke
.Ltmp604:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp605:                               # EH_LABEL
# %bb.500:                              # %if.then.i.i.i1203.cont
.LBB5_501:                              # %if.then.i.i718
.Ltmp478:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
# %bb.502:                              # %.noexc719
.LBB5_503:                              # %if.then6
.Ltmp172:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.504:                              # %invoke.cont7
	ld.d	$a1, $sp, 304
	ld.d	$a2, $sp, 312
.Ltmp174:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.505:                              # %invoke.cont9
.Ltmp176:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.506:                              # %invoke.cont11
.Ltmp178:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.507:                              # %invoke.cont13
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_508:                              # %ehcleanup896.thread
.Ltmp464:                               # EH_LABEL
	move	$s1, $a0
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s8
	b	.LBB5_608
.LBB5_509:                              # %ehcleanup904.thread
.Ltmp404:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s8
	b	.LBB5_605
.LBB5_510:                              # %ehcleanup910.thread
.Ltmp346:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB5_600
.LBB5_511:                              # %lpad738
.Ltmp475:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_516
.LBB5_512:                              # %lpad126
.Ltmp267:                               # EH_LABEL
	b	.LBB5_526
.LBB5_513:                              # %lpad98
.Ltmp262:                               # EH_LABEL
	b	.LBB5_528
.LBB5_514:                              # %lpad90
.Ltmp257:                               # EH_LABEL
	b	.LBB5_541
.LBB5_515:                              # %lpad757
.Ltmp480:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
.LBB5_516:                              # %if.then.i.i.i895
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	b	.LBB5_607
.LBB5_517:                              # %lpad2
.Ltmp180:                               # EH_LABEL
	b	.LBB5_531
.LBB5_518:                              # %ehcleanup898.thread
.Ltmp558:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_583
.LBB5_519:                              # %lpad664
.Ltmp561:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_585
	b	.LBB5_604
.LBB5_520:                              # %lpad500
.Ltmp573:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB5_606
.LBB5_521:                              # %lpad493
.Ltmp576:                               # EH_LABEL
	b	.LBB5_572
.LBB5_522:                              # %lpad335
.Ltmp588:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB5_601
.LBB5_523:                              # %lpad328
.Ltmp591:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	bnez	$s3, .LBB5_593
	b	.LBB5_594
.LBB5_524:                              # %lpad322
.Ltmp594:                               # EH_LABEL
	b	.LBB5_536
.LBB5_525:                              # %lpad135
.Ltmp609:                               # EH_LABEL
.LBB5_526:                              # %if.then.i.i.i979
	move	$s1, $a0
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB5_595
.LBB5_527:                              # %lpad107
.Ltmp612:                               # EH_LABEL
.LBB5_528:                              # %if.then.i.i.i986
	move	$s1, $a0
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	b	.LBB5_596
.LBB5_529:                              # %lpad93
.Ltmp615:                               # EH_LABEL
	b	.LBB5_541
.LBB5_530:                              # %lpad.i.i
.Ltmp621:                               # EH_LABEL
.LBB5_531:                              # %lpad.i.i
	ld.d	$a2, $sp, 304
	move	$s1, $a0
	beq	$a2, $s3, .LBB5_598
# %bb.532:                              # %ehcleanup.sink.split
	ld.d	$a0, $sp, 320
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB5_597
.LBB5_533:                              # %lpad687
.Ltmp472:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_578
.LBB5_534:                              # %lpad220.loopexit.split-lp
.Ltmp597:                               # EH_LABEL
	b	.LBB5_565
.LBB5_535:                              # %lpad251
.Ltmp337:                               # EH_LABEL
.LBB5_536:                              # %if.then.i.i.i972
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB5_566
.LBB5_537:                              # %lpad875.loopexit.split-lp
.Ltmp543:                               # EH_LABEL
	b	.LBB5_568
.LBB5_538:                              # %lpad141
.Ltmp606:                               # EH_LABEL
	b	.LBB5_554
.LBB5_539:                              # %lpad195.loopexit.split-lp
.Ltmp600:                               # EH_LABEL
	b	.LBB5_565
.LBB5_540:                              # %lpad18
.Ltmp618:                               # EH_LABEL
.LBB5_541:                              # %lpad90
	move	$s1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_542:                              # %lpad823.loopexit.split-lp
.Ltmp546:                               # EH_LABEL
	b	.LBB5_568
.LBB5_543:                              # %lpad654.loopexit.split-lp
.Ltmp564:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_604
.LBB5_544:                              # %lpad482.loopexit.split-lp
.Ltmp579:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_560
.LBB5_545:                              # %lpad764
.Ltmp552:                               # EH_LABEL
	b	.LBB5_568
.LBB5_546:                              # %lpad517
.Ltmp570:                               # EH_LABEL
	b	.LBB5_570
.LBB5_547:                              # %lpad352
.Ltmp585:                               # EH_LABEL
	b	.LBB5_572
.LBB5_548:                              # %lpad173.loopexit.split-lp
.Ltmp603:                               # EH_LABEL
	b	.LBB5_565
.LBB5_549:                              # %lpad796.loopexit.split-lp
.Ltmp549:                               # EH_LABEL
	b	.LBB5_568
.LBB5_550:                              # %lpad602.loopexit.split-lp
.Ltmp567:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_585
	b	.LBB5_604
.LBB5_551:                              # %lpad430.loopexit.split-lp
.Ltmp582:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_589
.LBB5_552:                              # %lpad875.loopexit
.Ltmp536:                               # EH_LABEL
	b	.LBB5_568
.LBB5_553:                              # %lpad220.loopexit
.Ltmp324:                               # EH_LABEL
.LBB5_554:                              # %if.then.i.i.i972
	move	$s1, $a0
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_594
.LBB5_555:                              # %lpad654.loopexit
.Ltmp457:                               # EH_LABEL
	b	.LBB5_563
.LBB5_556:                              # %lpad482.loopexit
.Ltmp397:                               # EH_LABEL
	b	.LBB5_559
.LBB5_557:                              # %lpad195.loopexit
.Ltmp313:                               # EH_LABEL
	b	.LBB5_565
.LBB5_558:                              # %ehcleanup909.thread
.Ltmp388:                               # EH_LABEL
.LBB5_559:                              # %if.then.i.i.i944
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
.LBB5_560:                              # %if.then.i.i.i944
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB5_599
.LBB5_561:                              # %lpad823.loopexit
.Ltmp524:                               # EH_LABEL
	b	.LBB5_568
.LBB5_562:                              # %ehcleanup903.thread
.Ltmp448:                               # EH_LABEL
.LBB5_563:                              # %if.then.i.i.i923
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_604
.LBB5_564:                              # %lpad173.loopexit
.Ltmp302:                               # EH_LABEL
.LBB5_565:                              # %if.then.i.i.i972
	move	$s1, $a0
.LBB5_566:                              # %if.then.i.i.i972
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_594
.LBB5_567:                              # %lpad796.loopexit
.Ltmp513:                               # EH_LABEL
.LBB5_568:                              # %ehcleanup891
	move	$s1, $a0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	bnez	$s5, .LBB5_574
	b	.LBB5_575
.LBB5_569:                              # %lpad602.loopexit
.Ltmp439:                               # EH_LABEL
.LBB5_570:                              # %ehcleanup903
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_585
	b	.LBB5_604
.LBB5_571:                              # %lpad430.loopexit
.Ltmp381:                               # EH_LABEL
.LBB5_572:                              # %ehcleanup909
	move	$s1, $a0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB5_588
.LBB5_573:                              # %ehcleanup891.thread
.Ltmp527:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
.LBB5_574:                              # %if.then.i.i.i888
	sub.d	$a1, $s3, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_575:                              # %ehcleanup895
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB5_578
.LBB5_576:                              # %lpad717.loopexit
.Ltmp469:                               # EH_LABEL
	move	$s1, $a0
	move	$s0, $s8
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_578
.LBB5_577:                              # %lpad717.loopexit.split-lp
.Ltmp555:                               # EH_LABEL
	move	$s1, $a0
	move	$s0, $s8
.LBB5_578:                              # %ehcleanup895
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_607
# %bb.579:                              # %ehcleanup896
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_608
.LBB5_580:                              # %ehcleanup898
	beqz	$s0, .LBB5_582
.LBB5_581:                              # %if.then.i.i.i909
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_582:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit914
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
.LBB5_583:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit914
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_603
# %bb.584:                              # %ehcleanup903
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_604
.LBB5_585:                              # %ehcleanup904
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_605
.LBB5_586:                              # %ehcleanup906
	beqz	$a0, .LBB5_588
.LBB5_587:                              # %if.then.i.i.i937
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_588:                              # %ehcleanup909
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
.LBB5_589:                              # %ehcleanup909
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_599
# %bb.590:                              # %ehcleanup910
	bnez	$s7, .LBB5_600
.LBB5_591:                              # %ehcleanup912
	bnez	$a0, .LBB5_602
.LBB5_592:                              # %ehcleanup914
	beqz	$s3, .LBB5_594
.LBB5_593:                              # %if.then.i.i.i965
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_594:                              # %if.then.i.i.i972
	sub.d	$a1, $s2, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_595:                              # %if.then.i.i.i979
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_596:                              # %if.then.i.i.i986
	sub.d	$a1, $fp, $s5
	move	$a0, $s5
.LBB5_597:                              # %ehcleanup932
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_598:                              # %ehcleanup932
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_599:                              # %if.then.i.i.i944
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$s7, .LBB5_591
.LBB5_600:                              # %if.then.i.i.i951
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_601:                              # %ehcleanup912
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_592
.LBB5_602:                              # %if.then.i.i.i958
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB5_593
	b	.LBB5_594
.LBB5_603:                              # %if.then.i.i.i916
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_585
.LBB5_604:                              # %if.then.i.i.i923
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_586
.LBB5_605:                              # %if.then.i.i.i930
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_606:                              # %ehcleanup906
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_587
	b	.LBB5_588
.LBB5_607:                              # %if.then.i.i.i895
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_580
.LBB5_608:                              # %if.then.i.i.i902
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB5_581
	b	.LBB5_582
.Lfunc_end5:
	.size	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid, .Lfunc_end5-_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp162-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp167-.Ltmp162              #   Call between .Ltmp162 and .Ltmp167
	.uleb128 .Ltmp621-.Lfunc_begin2         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp171-.Ltmp168              #   Call between .Ltmp168 and .Ltmp171
	.uleb128 .Ltmp180-.Lfunc_begin2         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp171              #   Call between .Ltmp171 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp254-.Ltmp181              #   Call between .Ltmp181 and .Ltmp254
	.uleb128 .Ltmp618-.Lfunc_begin2         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin2         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp615-.Lfunc_begin2         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin2         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp612-.Lfunc_begin2         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin2         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp609-.Lfunc_begin2         #     jumps to .Ltmp609
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp337-.Lfunc_begin2         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp336-.Ltmp327              #   Call between .Ltmp327 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin2         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp594-.Lfunc_begin2         #     jumps to .Ltmp594
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp591-.Lfunc_begin2         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp588-.Lfunc_begin2         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin2         #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp586-.Ltmp345              #   Call between .Ltmp345 and .Ltmp586
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin2         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp352-.Ltmp347              #   Call between .Ltmp347 and .Ltmp352
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp589-.Ltmp352              #   Call between .Ltmp352 and .Ltmp589
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp589-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin2         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp370-.Ltmp353              #   Call between .Ltmp353 and .Ltmp370
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp380-.Ltmp371              #   Call between .Ltmp371 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin2         #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp387-.Ltmp382              #   Call between .Ltmp382 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin2         #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp396-.Ltmp389              #   Call between .Ltmp389 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin2         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp576-.Lfunc_begin2         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp573-.Lfunc_begin2         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin2         #     jumps to .Ltmp404
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp571-.Ltmp403              #   Call between .Ltmp403 and .Ltmp571
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin2         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin2         # >> Call Site 41 <<
	.uleb128 .Ltmp428-.Ltmp405              #   Call between .Ltmp405 and .Ltmp428
	.uleb128 .Ltmp570-.Lfunc_begin2         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp438-.Ltmp429              #   Call between .Ltmp429 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin2         #     jumps to .Ltmp439
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin2         # >> Call Site 43 <<
	.uleb128 .Ltmp447-.Ltmp440              #   Call between .Ltmp440 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin2         #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin2         # >> Call Site 44 <<
	.uleb128 .Ltmp456-.Ltmp449              #   Call between .Ltmp449 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin2         #     jumps to .Ltmp457
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin2         # >> Call Site 45 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp561-.Lfunc_begin2         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin2         # >> Call Site 46 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin2         # >> Call Site 47 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp558-.Lfunc_begin2         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin2         # >> Call Site 48 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin2         # >> Call Site 49 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin2         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin2         # >> Call Site 50 <<
	.uleb128 .Ltmp465-.Ltmp463              #   Call between .Ltmp463 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin2         # >> Call Site 51 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp472-.Lfunc_begin2         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin2         # >> Call Site 52 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin2         #     jumps to .Ltmp469
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin2         # >> Call Site 53 <<
	.uleb128 .Ltmp470-.Ltmp468              #   Call between .Ltmp468 and .Ltmp470
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin2         # >> Call Site 54 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin2         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin2         # >> Call Site 55 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp475-.Lfunc_begin2         #     jumps to .Ltmp475
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin2         # >> Call Site 56 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp480-.Lfunc_begin2         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin2         # >> Call Site 57 <<
	.uleb128 .Ltmp481-.Ltmp477              #   Call between .Ltmp477 and .Ltmp481
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin2         # >> Call Site 58 <<
	.uleb128 .Ltmp502-.Ltmp481              #   Call between .Ltmp481 and .Ltmp502
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin2         # >> Call Site 59 <<
	.uleb128 .Ltmp512-.Ltmp503              #   Call between .Ltmp503 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin2         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin2         # >> Call Site 60 <<
	.uleb128 .Ltmp523-.Ltmp514              #   Call between .Ltmp514 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin2         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin2         # >> Call Site 61 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin2         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin2         # >> Call Site 62 <<
	.uleb128 .Ltmp535-.Ltmp528              #   Call between .Ltmp528 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin2         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin2         # >> Call Site 63 <<
	.uleb128 .Ltmp540-.Ltmp537              #   Call between .Ltmp537 and .Ltmp540
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin2         # >> Call Site 64 <<
	.uleb128 .Ltmp274-.Ltmp540              #   Call between .Ltmp540 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin2         # >> Call Site 65 <<
	.uleb128 .Ltmp291-.Ltmp274              #   Call between .Ltmp274 and .Ltmp291
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin2         # >> Call Site 66 <<
	.uleb128 .Ltmp301-.Ltmp292              #   Call between .Ltmp292 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin2         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin2         # >> Call Site 67 <<
	.uleb128 .Ltmp312-.Ltmp303              #   Call between .Ltmp303 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin2         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin2         # >> Call Site 68 <<
	.uleb128 .Ltmp323-.Ltmp314              #   Call between .Ltmp314 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin2         # >> Call Site 69 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin2         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin2         # >> Call Site 70 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin2         #     jumps to .Ltmp582
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin2         # >> Call Site 71 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin2         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin2         # >> Call Site 72 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin2         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp601-.Lfunc_begin2         # >> Call Site 73 <<
	.uleb128 .Ltmp602-.Ltmp601              #   Call between .Ltmp601 and .Ltmp602
	.uleb128 .Ltmp603-.Lfunc_begin2         #     jumps to .Ltmp603
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin2         # >> Call Site 74 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin2         #     jumps to .Ltmp579
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin2         # >> Call Site 75 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin2         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin2         # >> Call Site 76 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin2         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin2         # >> Call Site 77 <<
	.uleb128 .Ltmp599-.Ltmp598              #   Call between .Ltmp598 and .Ltmp599
	.uleb128 .Ltmp600-.Lfunc_begin2         #     jumps to .Ltmp600
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin2         # >> Call Site 78 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin2         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin2         # >> Call Site 79 <<
	.uleb128 .Ltmp596-.Ltmp595              #   Call between .Ltmp595 and .Ltmp596
	.uleb128 .Ltmp597-.Lfunc_begin2         #     jumps to .Ltmp597
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp613-.Lfunc_begin2         # >> Call Site 80 <<
	.uleb128 .Ltmp614-.Ltmp613              #   Call between .Ltmp613 and .Ltmp614
	.uleb128 .Ltmp615-.Lfunc_begin2         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin2         # >> Call Site 81 <<
	.uleb128 .Ltmp611-.Ltmp610              #   Call between .Ltmp610 and .Ltmp611
	.uleb128 .Ltmp612-.Lfunc_begin2         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp607-.Lfunc_begin2         # >> Call Site 82 <<
	.uleb128 .Ltmp608-.Ltmp607              #   Call between .Ltmp607 and .Ltmp608
	.uleb128 .Ltmp609-.Lfunc_begin2         #     jumps to .Ltmp609
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin2         # >> Call Site 83 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp594-.Lfunc_begin2         #     jumps to .Ltmp594
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin2         # >> Call Site 84 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin2         # >> Call Site 85 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin2         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin2         # >> Call Site 86 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin2         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin2         # >> Call Site 87 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin2         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin2         # >> Call Site 88 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin2         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin2         # >> Call Site 89 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp616-.Lfunc_begin2         # >> Call Site 90 <<
	.uleb128 .Ltmp617-.Ltmp616              #   Call between .Ltmp616 and .Ltmp617
	.uleb128 .Ltmp618-.Lfunc_begin2         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin2         # >> Call Site 91 <<
	.uleb128 .Ltmp620-.Ltmp619              #   Call between .Ltmp619 and .Ltmp620
	.uleb128 .Ltmp621-.Lfunc_begin2         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp604-.Lfunc_begin2         # >> Call Site 92 <<
	.uleb128 .Ltmp605-.Ltmp604              #   Call between .Ltmp604 and .Ltmp605
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin2         # >> Call Site 93 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp480-.Lfunc_begin2         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin2         # >> Call Site 94 <<
	.uleb128 .Ltmp179-.Ltmp172              #   Call between .Ltmp172 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin2         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin2         # >> Call Site 95 <<
	.uleb128 .Lfunc_end5-.Ltmp179           #   Call between .Ltmp179 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd # -- Begin function _ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
	.p2align	5
	.type	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd,@function
_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd: # @_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -752
	.cfi_def_cfa_offset 752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 704                   # 8-byte Folded Spill
	st.d	$s4, $sp, 696                   # 8-byte Folded Spill
	st.d	$s5, $sp, 688                   # 8-byte Folded Spill
	st.d	$s6, $sp, 680                   # 8-byte Folded Spill
	st.d	$s7, $sp, 672                   # 8-byte Folded Spill
	st.d	$s8, $sp, 664                   # 8-byte Folded Spill
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
	move	$s1, $a3
	move	$s0, $a2
	move	$s3, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_46
# %bb.1:                                # %if.then
	ld.d	$s2, $s3, 0
	ld.d	$s3, $s3, 8
	addi.d	$s4, $sp, 104
	st.d	$s4, $sp, 88
	st.d	$zero, $sp, 96
	st.b	$zero, $sp, 104
	addi.d	$a1, $s3, 1
.Ltmp622:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp623:                               # EH_LABEL
# %bb.2:                                # %invoke.cont.i.i
	ld.d	$a0, $sp, 96
	addi.w	$a1, $zero, -2
	lu52i.d	$s5, $a1, 2047
	sub.d	$a0, $s5, $a0
	bltu	$a0, $s3, .LBB6_196
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp624:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.4:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 96
	beq	$a0, $s5, .LBB6_196
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp626:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp627:                               # EH_LABEL
# %bb.6:                                # %invoke.cont
	ld.d	$a0, $sp, 96
	ld.d	$a2, $s0, 8
	sub.d	$a0, $s5, $a0
	bltu	$a0, $a2, .LBB6_206
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
.Ltmp628:                               # EH_LABEL
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp629:                               # EH_LABEL
# %bb.8:                                # %call.i.i.i.noexc
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ld.d	$a1, $a0, 0
	addi.d	$s3, $a0, 16
	beq	$a1, $s3, .LBB6_10
# %bb.9:                                # %if.else.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 136
	ld.d	$s5, $a0, 8
	st.d	$a1, $sp, 120
	b	.LBB6_11
.LBB6_10:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s5, $a0, 8
	addi.d	$a2, $s5, 1
	move	$s6, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB6_11:                               # %invoke.cont3
	st.d	$s3, $a0, 0
	ld.d	$a2, $sp, 88
	st.d	$s5, $sp, 128
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a2, $s4, .LBB6_13
# %bb.12:                               # %if.then.i.i
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 120
	addi.d	$a0, $sp, 160
.Ltmp630:                               # EH_LABEL
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp631:                               # EH_LABEL
# %bb.14:                               # %call2.i.noexc
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 152
	add.d	$a0, $a2, $a0
	beqz	$a1, .LBB6_16
# %bb.15:
	move	$a1, $zero
	b	.LBB6_17
.LBB6_16:                               # %if.then.i
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB6_17:                               # %if.end.i
.Ltmp632:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp633:                               # EH_LABEL
# %bb.18:                               # %invoke.cont5
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB6_208
# %bb.19:                               # %if.end
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB6_21
# %bb.20:                               # %if.then.i.i83
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_21:                               # %if.end19
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_46
# %bb.22:                               # %invoke.cont29
	ld.d	$a0, $sp, 152
	ld.d	$a1, $a0, -24
	addi.d	$a3, $sp, 152
	add.d	$a1, $a3, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a4, $zero, -261
	lu32i.d	$a4, 0
	and	$a2, $a2, $a4
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	add.d	$a0, $a3, $a0
	ori	$a3, $zero, 5
	st.d	$a3, $a0, 8
.Ltmp643:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:                               # EH_LABEL
# %bb.23:                               # %invoke.cont31
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB6_204
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB6_26
# %bb.25:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB6_28
.LBB6_26:                               # %if.end.i.i.i
.Ltmp645:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.27:                               # %.noexc396
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp647:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp648:                               # EH_LABEL
.LBB6_28:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp649:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp650:                               # EH_LABEL
# %bb.29:                               # %call1.i.noexc
.Ltmp651:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.30:                               # %invoke.cont33
.Ltmp653:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 4
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.31:                               # %invoke.cont35
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB6_204
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i407
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB6_34
# %bb.33:                               # %if.then.i2.i.i410
	ld.bu	$a0, $s0, 67
	b	.LBB6_36
.LBB6_34:                               # %if.end.i.i.i415
.Ltmp655:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.35:                               # %.noexc420
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp657:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp658:                               # EH_LABEL
.LBB6_36:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i412
.Ltmp659:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.37:                               # %call1.i.noexc423
.Ltmp661:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp662:                               # EH_LABEL
# %bb.38:                               # %invoke.cont46
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 10
	st.d	$a1, $a0, 16
.Ltmp663:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.39:                               # %invoke.cont48
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB6_204
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i433
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB6_42
# %bb.41:                               # %if.then.i2.i.i436
	ld.bu	$a0, $s2, 67
	b	.LBB6_44
.LBB6_42:                               # %if.end.i.i.i441
.Ltmp665:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp666:                               # EH_LABEL
# %bb.43:                               # %.noexc446
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp667:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp668:                               # EH_LABEL
.LBB6_44:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438
.Ltmp669:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.45:                               # %call1.i.noexc449
.Ltmp671:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp672:                               # EH_LABEL
.LBB6_46:                               # %if.end52
	ld.d	$a0, $fp, 16
	ld.d	$s4, $fp, 8
	sub.d	$s8, $a0, $s4
	slli.d	$s0, $s8, 30
	srai.d	$s3, $s0, 32
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB6_184
# %bb.47:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	ld.d	$s5, $fp, 40
	ld.d	$s6, $fp, 32
	ld.d	$a0, $fp, 64
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 56
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB6_51
# %bb.48:                               # %if.then.i.i.i.i3.i
	srai.d	$s2, $s0, 29
.Ltmp673:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp674:                               # EH_LABEL
# %bb.49:                               # %call5.i.i.i2.i.i.noexc
	move	$s7, $a0
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s7, 0
	beq	$s0, $a0, .LBB6_52
# %bb.50:                               # %if.end.i.i.i.i.i.i
	addi.d	$a0, $s7, 8
	addi.d	$a2, $s2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_52
.LBB6_51:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s7, $zero
.LBB6_52:                               # %invoke.cont61
	ld.w	$s0, $fp, 176
	bltz	$s0, .LBB6_186
# %bb.53:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i137
	beqz	$s0, .LBB6_58
# %bb.54:                               # %if.then.i.i.i.i3.i139
	slli.d	$s3, $s0, 3
.Ltmp675:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.55:                               # %call5.i.i.i2.i.i.noexc152
	alsl.d	$a1, $s0, $a0, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beq	$s0, $a1, .LBB6_57
# %bb.56:                               # %if.end.i.i.i.i.i.i145
	addi.d	$a0, $a0, 8
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %invoke.cont67
	srai.d	$a2, $s8, 2
	addi.w	$a1, $a2, 0
	bgtz	$a1, .LBB6_59
	b	.LBB6_66
.LBB6_58:
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	srai.d	$a2, $s8, 2
	addi.w	$a1, $a2, 0
	blez	$a1, .LBB6_66
.LBB6_59:                               # %for.body.preheader
	bstrpick.d	$a0, $a2, 30, 0
	ori	$a3, $zero, 2
	bgeu	$a0, $a3, .LBB6_61
# %bb.60:
	move	$a2, $zero
	b	.LBB6_64
.LBB6_61:                               # %vector.ph
	bstrpick.d	$a2, $a2, 30, 1
	slli.d	$a2, $a2, 1
	addi.d	$a3, $s4, 4
	addi.d	$a4, $s7, 8
	move	$a5, $a2
	.p2align	4, , 16
.LBB6_62:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -4
	ld.w	$a7, $a3, 0
	slli.d	$a6, $a6, 3
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $s1, $a6
	fldx.d	$fa1, $s1, $a7
	fst.d	$fa0, $a4, -8
	fst.d	$fa1, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB6_62
# %bb.63:                               # %middle.block
	beq	$a0, $a2, .LBB6_66
.LBB6_64:                               # %for.body.preheader747
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a4, $a2, $s7, 3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB6_65:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $s1, $a2
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_65
.LBB6_66:                               # %for.cond.cleanup
	ld.d	$a3, $fp, 104
.Ltmp677:                               # EH_LABEL
	move	$a0, $s7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp678:                               # EH_LABEL
# %bb.67:                               # %invoke.cont80
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_88
# %bb.68:                               # %invoke.cont80
	ld.w	$a0, $fp, 176
	blez	$a0, .LBB6_88
# %bb.69:                               # %if.then84
.Ltmp679:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 152
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp680:                               # EH_LABEL
# %bb.70:                               # %invoke.cont85
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB6_198
# %bb.71:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i459
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB6_73
# %bb.72:                               # %if.then.i2.i.i462
	ld.bu	$a0, $s3, 67
	b	.LBB6_75
.LBB6_73:                               # %if.end.i.i.i467
.Ltmp681:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp682:                               # EH_LABEL
# %bb.74:                               # %.noexc472
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp683:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp684:                               # EH_LABEL
.LBB6_75:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i464
.Ltmp685:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp686:                               # EH_LABEL
# %bb.76:                               # %call1.i.noexc475
.Ltmp687:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.77:                               # %for.cond90.preheader
	ld.w	$a0, $fp, 176
	blez	$a0, .LBB6_88
# %bb.78:                               # %invoke.cont103.preheader
	move	$s2, $zero
	addi.d	$s8, $sp, 152
	ori	$s7, $zero, 12
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_79:                               # %invoke.cont103
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s0, 0
	add.d	$a0, $s8, $a0
	st.d	$s7, $a0, 16
.Ltmp689:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp690:                               # EH_LABEL
# %bb.80:                               # %invoke.cont107
                                        #   in Loop: Header=BB6_79 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB6_178
# %bb.81:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i485
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB6_83
# %bb.82:                               # %if.then.i2.i.i488
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB6_85
	.p2align	4, , 16
.LBB6_83:                               # %if.end.i.i.i493
                                        #   in Loop: Header=BB6_79 Depth=1
.Ltmp691:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp692:                               # EH_LABEL
# %bb.84:                               # %.noexc498
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp693:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp694:                               # EH_LABEL
.LBB6_85:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i490
                                        #   in Loop: Header=BB6_79 Depth=1
.Ltmp695:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp696:                               # EH_LABEL
# %bb.86:                               # %call1.i.noexc501
                                        #   in Loop: Header=BB6_79 Depth=1
.Ltmp697:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp698:                               # EH_LABEL
# %bb.87:                               # %for.inc111
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.w	$a0, $fp, 176
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a0, .LBB6_79
.LBB6_88:                               # %if.end115
	sub.d	$s6, $s5, $s6
	slli.d	$s0, $s6, 30
	srai.d	$s2, $s0, 32
	srli.d	$a0, $s2, 60
	bnez	$a0, .LBB6_188
# %bb.89:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i178
	beqz	$s0, .LBB6_93
# %bb.90:                               # %if.then.i.i.i.i3.i180
	srai.d	$s4, $s0, 29
.Ltmp700:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp701:                               # EH_LABEL
# %bb.91:                               # %call5.i.i.i2.i.i.noexc193
	move	$s3, $a0
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s3, 0
	beq	$s0, $a0, .LBB6_94
# %bb.92:                               # %if.end.i.i.i.i.i.i186
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s4, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_94
.LBB6_93:
	move	$s3, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB6_94:                               # %invoke.cont119
	ld.w	$s0, $fp, 180
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	bltz	$s0, .LBB6_190
# %bb.95:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i197
	beqz	$s0, .LBB6_100
# %bb.96:                               # %if.then.i.i.i.i3.i199
	slli.d	$s5, $s0, 3
.Ltmp702:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.97:                               # %call5.i.i.i2.i.i.noexc212
	move	$s4, $a0
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s0, $a0, .LBB6_99
# %bb.98:                               # %if.end.i.i.i.i.i.i205
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_99:                               # %invoke.cont125
	srai.d	$a3, $s6, 2
	addi.w	$a1, $a3, 0
	bgtz	$a1, .LBB6_101
	b	.LBB6_108
.LBB6_100:
	move	$s4, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	srai.d	$a3, $s6, 2
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB6_108
.LBB6_101:                              # %for.body131.lr.ph
	ld.d	$a2, $fp, 32
	bstrpick.d	$a0, $a3, 30, 0
	ori	$a4, $zero, 2
	bgeu	$a0, $a4, .LBB6_103
# %bb.102:
	move	$a3, $zero
	b	.LBB6_106
.LBB6_103:                              # %vector.ph726
	bstrpick.d	$a3, $a3, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a2, 4
	addi.d	$a5, $s3, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_104:                              # %vector.body729
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	ld.w	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $s1, $a7
	fldx.d	$fa1, $s1, $t0
	fst.d	$fa0, $a5, -8
	fst.d	$fa1, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_104
# %bb.105:                              # %middle.block732
	beq	$a0, $a3, .LBB6_108
.LBB6_106:                              # %for.body131.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s3, 3
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB6_107:                              # %for.body131
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $s1, $a3
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_107
.LBB6_108:                              # %for.cond.cleanup130
	ld.d	$a3, $fp, 128
.Ltmp704:                               # EH_LABEL
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp705:                               # EH_LABEL
# %bb.109:                              # %invoke.cont146
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_130
# %bb.110:                              # %invoke.cont146
	ld.w	$a0, $fp, 180
	blez	$a0, .LBB6_130
# %bb.111:                              # %if.then151
.Ltmp706:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp707:                               # EH_LABEL
# %bb.112:                              # %invoke.cont152
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB6_200
# %bb.113:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i511
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB6_115
# %bb.114:                              # %if.then.i2.i.i514
	ld.bu	$a0, $s5, 67
	b	.LBB6_117
.LBB6_115:                              # %if.end.i.i.i519
.Ltmp708:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.116:                              # %.noexc524
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp710:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp711:                               # EH_LABEL
.LBB6_117:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i516
.Ltmp712:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp713:                               # EH_LABEL
# %bb.118:                              # %call1.i.noexc527
.Ltmp714:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.119:                              # %for.cond157.preheader
	ld.w	$a0, $fp, 180
	blez	$a0, .LBB6_130
# %bb.120:                              # %invoke.cont170.preheader
	move	$s2, $zero
	addi.d	$s8, $sp, 152
	ori	$s7, $zero, 12
	move	$s0, $s4
	.p2align	4, , 16
.LBB6_121:                              # %invoke.cont170
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s0, 0
	add.d	$a0, $s8, $a0
	st.d	$s7, $a0, 16
.Ltmp716:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp717:                               # EH_LABEL
# %bb.122:                              # %invoke.cont174
                                        #   in Loop: Header=BB6_121 Depth=1
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB6_180
# %bb.123:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i537
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB6_125
# %bb.124:                              # %if.then.i2.i.i540
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB6_127
	.p2align	4, , 16
.LBB6_125:                              # %if.end.i.i.i545
                                        #   in Loop: Header=BB6_121 Depth=1
.Ltmp718:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp719:                               # EH_LABEL
# %bb.126:                              # %.noexc550
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp720:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp721:                               # EH_LABEL
.LBB6_127:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i542
                                        #   in Loop: Header=BB6_121 Depth=1
.Ltmp722:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp723:                               # EH_LABEL
# %bb.128:                              # %call1.i.noexc553
                                        #   in Loop: Header=BB6_121 Depth=1
.Ltmp724:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp725:                               # EH_LABEL
# %bb.129:                              # %for.inc178
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.w	$a0, $fp, 180
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a0, .LBB6_121
.LBB6_130:                              # %if.end182
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$s2, $a0, $a1
	slli.d	$s0, $s2, 30
	srai.d	$s3, $s0, 32
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB6_192
# %bb.131:                              # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i239
	beqz	$s0, .LBB6_135
# %bb.132:                              # %if.then.i.i.i.i3.i241
	srai.d	$s6, $s0, 29
.Ltmp727:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp728:                               # EH_LABEL
# %bb.133:                              # %call5.i.i.i2.i.i.noexc254
	move	$s5, $a0
	alsl.d	$s8, $s3, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s5, 0
	beq	$s0, $a0, .LBB6_136
# %bb.134:                              # %if.end.i.i.i.i.i.i247
	addi.d	$a0, $s5, 8
	addi.d	$a2, $s6, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_136
.LBB6_135:
	move	$s5, $zero
	move	$s8, $zero
.LBB6_136:                              # %invoke.cont186
	ld.w	$s0, $fp, 184
	bltz	$s0, .LBB6_194
# %bb.137:                              # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i258
	beqz	$s0, .LBB6_142
# %bb.138:                              # %if.then.i.i.i.i3.i260
	slli.d	$s7, $s0, 3
.Ltmp729:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.139:                              # %call5.i.i.i2.i.i.noexc273
	move	$s3, $a0
	alsl.d	$s6, $s0, $a0, 3
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s0, $a0, .LBB6_141
# %bb.140:                              # %if.end.i.i.i.i.i.i266
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s7, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_141:                              # %invoke.cont192
	srai.d	$a3, $s2, 2
	addi.w	$a1, $a3, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	bgtz	$a1, .LBB6_143
	b	.LBB6_150
.LBB6_142:
	move	$s3, $zero
	move	$s6, $zero
	srai.d	$a3, $s2, 2
	addi.w	$a1, $a3, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	blez	$a1, .LBB6_150
.LBB6_143:                              # %for.body198.lr.ph
	ld.d	$a2, $fp, 56
	bstrpick.d	$a0, $a3, 30, 0
	ori	$a4, $zero, 2
	bgeu	$a0, $a4, .LBB6_145
# %bb.144:
	move	$a3, $zero
	b	.LBB6_148
.LBB6_145:                              # %vector.ph737
	bstrpick.d	$a3, $a3, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a2, 4
	addi.d	$a5, $s5, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_146:                              # %vector.body740
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	ld.w	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $s1, $a7
	fldx.d	$fa1, $s1, $t0
	fst.d	$fa0, $a5, -8
	fst.d	$fa1, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_146
# %bb.147:                              # %middle.block743
	beq	$a0, $a3, .LBB6_150
.LBB6_148:                              # %for.body198.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s5, 3
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB6_149:                              # %for.body198
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $s1, $a3
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_149
.LBB6_150:                              # %for.cond.cleanup197
	ld.d	$a3, $fp, 152
.Ltmp731:                               # EH_LABEL
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp732:                               # EH_LABEL
# %bb.151:                              # %invoke.cont213
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_173
# %bb.152:                              # %invoke.cont213
	ld.w	$a1, $fp, 184
	blez	$a1, .LBB6_173
# %bb.153:                              # %if.then218
.Ltmp733:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 6
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.154:                              # %invoke.cont219
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB6_202
# %bb.155:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i563
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB6_157
# %bb.156:                              # %if.then.i2.i.i566
	ld.bu	$a0, $s1, 67
	b	.LBB6_159
.LBB6_157:                              # %if.end.i.i.i571
.Ltmp735:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.158:                              # %.noexc576
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp737:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp738:                               # EH_LABEL
.LBB6_159:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i568
.Ltmp739:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp740:                               # EH_LABEL
# %bb.160:                              # %call1.i.noexc579
.Ltmp741:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.161:                              # %for.cond224.preheader
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 184
	blez	$a0, .LBB6_172
# %bb.162:                              # %invoke.cont237.preheader
	move	$s2, $zero
	addi.d	$s0, $sp, 152
	ori	$s8, $zero, 12
	move	$s6, $s3
	.p2align	4, , 16
.LBB6_163:                              # %invoke.cont237
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s6, 0
	add.d	$a0, $s0, $a0
	st.d	$s8, $a0, 16
.Ltmp743:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp744:                               # EH_LABEL
# %bb.164:                              # %invoke.cont241
                                        #   in Loop: Header=BB6_163 Depth=1
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB6_182
# %bb.165:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i589
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB6_167
# %bb.166:                              # %if.then.i2.i.i592
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB6_169
	.p2align	4, , 16
.LBB6_167:                              # %if.end.i.i.i597
                                        #   in Loop: Header=BB6_163 Depth=1
.Ltmp745:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp746:                               # EH_LABEL
# %bb.168:                              # %.noexc602
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp747:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp748:                               # EH_LABEL
.LBB6_169:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i594
                                        #   in Loop: Header=BB6_163 Depth=1
.Ltmp749:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp750:                               # EH_LABEL
# %bb.170:                              # %call1.i.noexc605
                                        #   in Loop: Header=BB6_163 Depth=1
.Ltmp751:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp752:                               # EH_LABEL
# %bb.171:                              # %for.inc245
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.w	$a0, $fp, 184
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 8
	blt	$s2, $a0, .LBB6_163
.LBB6_172:                              # %if.end249thread-pre-split
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
.LBB6_173:                              # %if.end249
	bnez	$a0, .LBB6_177
# %bb.174:                              # %if.then251
	addi.d	$a0, $sp, 160
.Ltmp754:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp755:                               # EH_LABEL
# %bb.175:                              # %call.i.noexc
	bnez	$a0, .LBB6_177
# %bb.176:                              # %if.then.i302
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp756:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp757:                               # EH_LABEL
.LBB6_177:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit345
	sub.d	$a1, $s6, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s8, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.LBB6_178:                              # %if.then.i.i.i496
.Ltmp783:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.179:                              # %.noexc497
.LBB6_180:                              # %if.then.i.i.i548
.Ltmp771:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp772:                               # EH_LABEL
# %bb.181:                              # %.noexc549
.LBB6_182:                              # %if.then.i.i.i600
.Ltmp759:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.183:                              # %.noexc601
.LBB6_184:                              # %if.then.i.i133
.Ltmp792:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp793:                               # EH_LABEL
# %bb.185:                              # %.noexc134
.LBB6_186:                              # %if.then.i.i150
.Ltmp789:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.187:                              # %.noexc151
.LBB6_188:                              # %if.then.i.i191
.Ltmp780:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.189:                              # %.noexc192
.LBB6_190:                              # %if.then.i.i210
.Ltmp777:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.191:                              # %.noexc211
.LBB6_192:                              # %if.then.i.i252
.Ltmp768:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp769:                               # EH_LABEL
# %bb.193:                              # %.noexc253
.LBB6_194:                              # %if.then.i.i271
.Ltmp765:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp766:                               # EH_LABEL
# %bb.195:                              # %.noexc272
.LBB6_196:                              # %if.then.i.i10.invoke.i.i
.Ltmp801:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.197:                              # %if.then.i.i10.cont.i.i
.LBB6_198:                              # %if.then.i.i.i470
.Ltmp786:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.199:                              # %.noexc471
.LBB6_200:                              # %if.then.i.i.i522
.Ltmp774:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp775:                               # EH_LABEL
# %bb.201:                              # %.noexc523
.LBB6_202:                              # %if.then.i.i.i574
.Ltmp762:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp763:                               # EH_LABEL
# %bb.203:                              # %.noexc575
.LBB6_204:                              # %if.then.i.i.i444.invoke
.Ltmp795:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.205:                              # %if.then.i.i.i444.cont
.LBB6_206:                              # %if.then.i.i.i.i
.Ltmp798:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.207:                              # %.noexc
.LBB6_208:                              # %if.then8
.Ltmp634:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp635:                               # EH_LABEL
# %bb.209:                              # %invoke.cont9
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp636:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.210:                              # %invoke.cont11
.Ltmp638:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp639:                               # EH_LABEL
# %bb.211:                              # %invoke.cont13
.Ltmp640:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp641:                               # EH_LABEL
# %bb.212:                              # %invoke.cont15
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_213:                              # %ehcleanup254
.Ltmp758:                               # EH_LABEL
	b	.LBB6_230
.LBB6_214:                              # %lpad2
.Ltmp800:                               # EH_LABEL
	b	.LBB6_224
.LBB6_215:                              # %lpad4
.Ltmp642:                               # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB6_252
# %bb.216:                              # %if.then.i.i76
	ld.d	$a0, $sp, 136
	b	.LBB6_226
.LBB6_217:                              # %lpad191
.Ltmp767:                               # EH_LABEL
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB6_238
.LBB6_218:                              # %lpad185
.Ltmp770:                               # EH_LABEL
	b	.LBB6_241
.LBB6_219:                              # %lpad124
.Ltmp779:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB6_243
.LBB6_220:                              # %lpad118
.Ltmp782:                               # EH_LABEL
	b	.LBB6_246
.LBB6_221:                              # %lpad66
.Ltmp791:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB6_249
.LBB6_222:                              # %lpad60
.Ltmp794:                               # EH_LABEL
	b	.LBB6_228
.LBB6_223:                              # %lpad.i.i
.Ltmp803:                               # EH_LABEL
.LBB6_224:                              # %lpad2
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beq	$a2, $s4, .LBB6_252
# %bb.225:                              # %ehcleanup.sink.split
	ld.d	$a0, $sp, 104
.LBB6_226:                              # %ehcleanup269
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB6_251
.LBB6_227:                              # %lpad22
.Ltmp797:                               # EH_LABEL
.LBB6_228:                              # %lpad60
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_229:                              # %ehcleanup254.thread657
.Ltmp764:                               # EH_LABEL
.LBB6_230:                              # %if.then.i.i.i347
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	b	.LBB6_237
.LBB6_231:                              # %lpad145
.Ltmp776:                               # EH_LABEL
	b	.LBB6_241
.LBB6_232:                              # %lpad79
.Ltmp788:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB6_248
.LBB6_233:                              # %ehcleanup254.thread.loopexit.split-lp
.Ltmp761:                               # EH_LABEL
	b	.LBB6_237
.LBB6_234:                              # %lpad163.loopexit.split-lp
.Ltmp773:                               # EH_LABEL
	b	.LBB6_241
.LBB6_235:                              # %lpad96.loopexit.split-lp
.Ltmp785:                               # EH_LABEL
	b	.LBB6_246
.LBB6_236:                              # %ehcleanup254.thread.loopexit
.Ltmp753:                               # EH_LABEL
.LBB6_237:                              # %if.then.i.i.i347
	move	$fp, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_238:                              # %ehcleanup255
	beqz	$s5, .LBB6_242
# %bb.239:                              # %if.then.i.i.i354
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_242
.LBB6_240:                              # %lpad163.loopexit
.Ltmp726:                               # EH_LABEL
.LBB6_241:                              # %if.then.i.i.i361
	move	$fp, $a0
.LBB6_242:                              # %if.then.i.i.i361
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_243:                              # %ehcleanup259
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_247
# %bb.244:                              # %if.then.i.i.i368
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_247
.LBB6_245:                              # %lpad96.loopexit
.Ltmp699:                               # EH_LABEL
.LBB6_246:                              # %if.then.i.i.i375
	move	$fp, $a0
.LBB6_247:                              # %if.then.i.i.i375
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
.LBB6_248:                              # %if.then.i.i.i375
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_249:                              # %ehcleanup263
	beqz	$s7, .LBB6_252
# %bb.250:                              # %if.then.i.i.i382
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
.LBB6_251:                              # %ehcleanup269
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_252:                              # %ehcleanup269
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd, .Lfunc_end6-_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp622-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp622
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp627-.Ltmp622              #   Call between .Ltmp622 and .Ltmp627
	.uleb128 .Ltmp803-.Lfunc_begin3         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp800-.Lfunc_begin3         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp630-.Ltmp629              #   Call between .Ltmp629 and .Ltmp630
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp633-.Ltmp630              #   Call between .Ltmp630 and .Ltmp633
	.uleb128 .Ltmp642-.Lfunc_begin3         #     jumps to .Ltmp642
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp643-.Ltmp633              #   Call between .Ltmp633 and .Ltmp643
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp672-.Ltmp643              #   Call between .Ltmp643 and .Ltmp672
	.uleb128 .Ltmp797-.Lfunc_begin3         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp673-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp674-.Ltmp673              #   Call between .Ltmp673 and .Ltmp674
	.uleb128 .Ltmp794-.Lfunc_begin3         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp674-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp675-.Ltmp674              #   Call between .Ltmp674 and .Ltmp675
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp791-.Lfunc_begin3         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp676-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp677-.Ltmp676              #   Call between .Ltmp676 and .Ltmp677
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp677-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp688-.Ltmp677              #   Call between .Ltmp677 and .Ltmp688
	.uleb128 .Ltmp788-.Lfunc_begin3         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp698-.Ltmp689              #   Call between .Ltmp689 and .Ltmp698
	.uleb128 .Ltmp699-.Lfunc_begin3         #     jumps to .Ltmp699
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp700-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp701-.Ltmp700              #   Call between .Ltmp700 and .Ltmp701
	.uleb128 .Ltmp782-.Lfunc_begin3         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp702-.Ltmp701              #   Call between .Ltmp701 and .Ltmp702
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp779-.Lfunc_begin3         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp703-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp704-.Ltmp703              #   Call between .Ltmp703 and .Ltmp704
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp704-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp715-.Ltmp704              #   Call between .Ltmp704 and .Ltmp715
	.uleb128 .Ltmp776-.Lfunc_begin3         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp716-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp725-.Ltmp716              #   Call between .Ltmp716 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin3         #     jumps to .Ltmp726
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp728-.Ltmp727              #   Call between .Ltmp727 and .Ltmp728
	.uleb128 .Ltmp770-.Lfunc_begin3         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp728-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp729-.Ltmp728              #   Call between .Ltmp728 and .Ltmp729
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp767-.Lfunc_begin3         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp730-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp731-.Ltmp730              #   Call between .Ltmp730 and .Ltmp731
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp731-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp742-.Ltmp731              #   Call between .Ltmp731 and .Ltmp742
	.uleb128 .Ltmp764-.Lfunc_begin3         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp752-.Ltmp743              #   Call between .Ltmp743 and .Ltmp752
	.uleb128 .Ltmp753-.Lfunc_begin3         #     jumps to .Ltmp753
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp754-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp757-.Ltmp754              #   Call between .Ltmp754 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin3         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp757-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp783-.Ltmp757              #   Call between .Ltmp757 and .Ltmp783
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin3         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin3         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin3         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin3         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin3         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin3         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin3         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin3         # >> Call Site 35 <<
	.uleb128 .Ltmp769-.Ltmp768              #   Call between .Ltmp768 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin3         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp765-.Lfunc_begin3         # >> Call Site 36 <<
	.uleb128 .Ltmp766-.Ltmp765              #   Call between .Ltmp765 and .Ltmp766
	.uleb128 .Ltmp767-.Lfunc_begin3         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin3         # >> Call Site 37 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin3         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin3         # >> Call Site 38 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin3         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin3         # >> Call Site 39 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin3         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin3         # >> Call Site 40 <<
	.uleb128 .Ltmp763-.Ltmp762              #   Call between .Ltmp762 and .Ltmp763
	.uleb128 .Ltmp764-.Lfunc_begin3         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin3         # >> Call Site 41 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin3         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin3         # >> Call Site 42 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin3         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin3         # >> Call Site 43 <<
	.uleb128 .Ltmp641-.Ltmp634              #   Call between .Ltmp634 and .Ltmp641
	.uleb128 .Ltmp642-.Lfunc_begin3         #     jumps to .Ltmp642
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin3         # >> Call Site 44 <<
	.uleb128 .Lfunc_end6-.Ltmp641           #   Call between .Ltmp641 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	beqz	$a1, .LBB7_13
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 2
	bgeu	$a0, $s0, .LBB7_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB7_14
# %bb.3:                                # %if.then.i.i.i23
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.w	$zero, $s3, $s2
	beq	$s0, $a0, .LBB7_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %invoke.cont
	blez	$s2, .LBB7_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB7_9
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %_ZNSt6vectorIiSaIiEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB7_13
.LBB7_10:                               # %if.then.i.i.i
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	beq	$s0, $a2, .LBB7_12
# %bb.11:                               # %for.body.i.preheader.i.i.i
	slli.d	$a2, $s0, 2
	alsl.d	$s0, $s0, $a1, 2
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB7_12:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB7_13:                               # %if.end45
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB7_14:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end7-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	".case"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Cannot open file "
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" for writing"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"#"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"# Created by PENNANT"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"FORMAT"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"type: ensight gold"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"GEOMETRY"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"model: "
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	".geo"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"VARIABLE"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"scalar per element: zr "
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	".zr"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"scalar per element: ze "
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	".ze"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"scalar per element: zp "
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	".zp"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cycle = "
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"t = "
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"node id assign"
	.size	.L.str.22, 15

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"element id given"
	.size	.L.str.23, 17

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"part"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"universe"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"coordinates"
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"tria3"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"quad4"
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"nsided"
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"."
	.size	.L.str.30, 2

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"basic_string::append"
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.33, 49

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"vector::_M_default_append"
	.size	.L.str.34, 26

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.35, 26

	.globl	_ZN10ExportGoldC1EP4Mesh
	.type	_ZN10ExportGoldC1EP4Mesh,@function
_ZN10ExportGoldC1EP4Mesh = _ZN10ExportGoldC2EP4Mesh
	.globl	_ZN10ExportGoldD1Ev
	.type	_ZN10ExportGoldD1Ev,@function
_ZN10ExportGoldD1Ev = _ZN10ExportGoldD2Ev
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
	.addrsig_sym _ZSt4cerr
