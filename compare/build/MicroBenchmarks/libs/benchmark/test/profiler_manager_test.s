	.file	"profiler_manager_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_Z8BM_emptyRN9benchmark5StateE  # -- Begin function _Z8BM_emptyRN9benchmark5StateE
	.globl	_Z8BM_emptyRN9benchmark5StateE
	.p2align	5
	.type	_Z8BM_emptyRN9benchmark5StateE,@function
_Z8BM_emptyRN9benchmark5StateE:         # @_Z8BM_emptyRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %entry
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
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_8
# %bb.1:                                # %entry
	beqz	$s0, .LBB0_8
# %bb.2:
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $fp, 24
	bne	$a2, $a0, .LBB0_6
# %bb.4:                                # %if.end.i9
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a3, $fp, 0
	ld.d	$a4, $fp, 8
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a4
	st.d	$a2, $sp, 8
	#APP
	#NO_APP
	blez	$s0, .LBB0_7
.LBB0_5:                                # %for.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_3
	b	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	move	$a2, $zero
	st.d	$a2, $sp, 8
	#APP
	#NO_APP
	bgtz	$s0, .LBB0_5
.LBB0_7:                                # %cond.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %for.cond.cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_Z8BM_emptyRN9benchmark5StateE, .Lfunc_end0-_Z8BM_emptyRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TestCaseD2Ev,"axG",@progbits,_ZN8TestCaseD2Ev,comdat
	.hidden	_ZN8TestCaseD2Ev                # -- Begin function _ZN8TestCaseD2Ev
	.weak	_ZN8TestCaseD2Ev
	.p2align	2
	.type	_ZN8TestCaseD2Ev,@function
_ZN8TestCaseD2Ev:                       # @_ZN8TestCaseD2Ev
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
	move	$fp, $a0
	ld.d	$s0, $a0, 80
	beqz	$s0, .LBB1_5
# %bb.1:                                # %if.then.i.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_3
# %bb.2:                                # %if.then.i.i.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.LBB1_3:                                # %if.end.i.i.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_10
# %bb.4:                                # %if.then.i.i.i.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_11
.LBB1_5:                                # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB1_7
.LBB1_6:                                # %if.then.i.i2
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB1_9
# %bb.8:                                # %if.then.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_10:                               # %if.else.i.i.i.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_5
.LBB1_11:                               # %if.then7.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.Lfunc_end1:
	.size	_ZN8TestCaseD2Ev, .Lfunc_end1-_ZN8TestCaseD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV19TestProfilerManager+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV19TestProfilerManager+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
.Ltmp2:                                 # EH_LABEL
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont2
.Ltmp4:                                 # EH_LABEL
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark23RegisterProfilerManagerEPNS_15ProfilerManagerE)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.3:                                # %invoke.cont3
	ld.w	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_6
# %bb.4:                                # %cond.end
	ld.w	$a1, $fp, 12
	bne	$a1, $a0, .LBB2_7
# %bb.5:                                # %_ZNSt10unique_ptrI19TestProfilerManagerSt14default_deleteIS0_EED2Ev.exit5
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_6:                                # %cond.false
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %cond.false8
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 49
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt10unique_ptrI19TestProfilerManagerSt14default_deleteIS0_EED2Ev.exit
.Ltmp6:                                 # EH_LABEL
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp5             #   Call between .Ltmp5 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.hidden	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	2
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a0, $a0, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_3
# %bb.1:                                # %if.then.i.i
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_4
.LBB3_2:                                # %if.then.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB3_3:                                # %if.else.i.i
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_2
.LBB3_4:                                # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end3-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark15ProfilerManagerD2Ev,"axG",@progbits,_ZN9benchmark15ProfilerManagerD2Ev,comdat
	.hidden	_ZN9benchmark15ProfilerManagerD2Ev # -- Begin function _ZN9benchmark15ProfilerManagerD2Ev
	.weak	_ZN9benchmark15ProfilerManagerD2Ev
	.p2align	2
	.type	_ZN9benchmark15ProfilerManagerD2Ev,@function
_ZN9benchmark15ProfilerManagerD2Ev:     # @_ZN9benchmark15ProfilerManagerD2Ev
# %bb.0:                                # %entry
	ret
.Lfunc_end4:
	.size	_ZN9benchmark15ProfilerManagerD2Ev, .Lfunc_end4-_ZN9benchmark15ProfilerManagerD2Ev
                                        # -- End function
	.section	.text._ZN19TestProfilerManagerD0Ev,"axG",@progbits,_ZN19TestProfilerManagerD0Ev,comdat
	.hidden	_ZN19TestProfilerManagerD0Ev    # -- Begin function _ZN19TestProfilerManagerD0Ev
	.weak	_ZN19TestProfilerManagerD0Ev
	.p2align	2
	.type	_ZN19TestProfilerManagerD0Ev,@function
_ZN19TestProfilerManagerD0Ev:           # @_ZN19TestProfilerManagerD0Ev
# %bb.0:                                # %entry
	ori	$a1, $zero, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end5:
	.size	_ZN19TestProfilerManagerD0Ev, .Lfunc_end5-_ZN19TestProfilerManagerD0Ev
                                        # -- End function
	.section	.text._ZN19TestProfilerManager15AfterSetupStartEv,"axG",@progbits,_ZN19TestProfilerManager15AfterSetupStartEv,comdat
	.hidden	_ZN19TestProfilerManager15AfterSetupStartEv # -- Begin function _ZN19TestProfilerManager15AfterSetupStartEv
	.weak	_ZN19TestProfilerManager15AfterSetupStartEv
	.p2align	2
	.type	_ZN19TestProfilerManager15AfterSetupStartEv,@function
_ZN19TestProfilerManager15AfterSetupStartEv: # @_ZN19TestProfilerManager15AfterSetupStartEv
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 8
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 8
	ret
.Lfunc_end6:
	.size	_ZN19TestProfilerManager15AfterSetupStartEv, .Lfunc_end6-_ZN19TestProfilerManager15AfterSetupStartEv
                                        # -- End function
	.section	.text._ZN19TestProfilerManager18BeforeTeardownStopEv,"axG",@progbits,_ZN19TestProfilerManager18BeforeTeardownStopEv,comdat
	.hidden	_ZN19TestProfilerManager18BeforeTeardownStopEv # -- Begin function _ZN19TestProfilerManager18BeforeTeardownStopEv
	.weak	_ZN19TestProfilerManager18BeforeTeardownStopEv
	.p2align	2
	.type	_ZN19TestProfilerManager18BeforeTeardownStopEv,@function
_ZN19TestProfilerManager18BeforeTeardownStopEv: # @_ZN19TestProfilerManager18BeforeTeardownStopEv
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ret
.Lfunc_end7:
	.size	_ZN19TestProfilerManager18BeforeTeardownStopEv, .Lfunc_end7-_ZN19TestProfilerManager18BeforeTeardownStopEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_profiler_manager_test.cc
.LCPI8_0:
	.dword	8                               # 0x8
	.dword	8751743591042207042             # 0x7974706d655f4d42
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_profiler_manager_test.cc,@function
_GLOBAL__sub_I_profiler_manager_test.cc: # @_GLOBAL__sub_I_profiler_manager_test.cc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1664
	.cfi_def_cfa_offset 1664
	st.d	$ra, $sp, 1656                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1576                  # 8-byte Folded Spill
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
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	move	$fp, $a0
	addi.d	$s2, $sp, 416
	st.d	$s2, $sp, 400
	vst	$vr0, $sp, 408
	st.b	$zero, $sp, 424
	ori	$s1, $zero, 1
.Ltmp7:                                 # EH_LABEL
	addi.d	$a1, $sp, 400
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont3.i
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z8BM_emptyRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z8BM_emptyRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp9:                                 # EH_LABEL
	move	$s1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.2:                                # %invoke.cont4.i
	move	$s0, $a0
	ld.d	$a0, $sp, 400
	beq	$a0, $s2, .LBB8_4
# %bb.3:                                # %if.then.i.i3.i
	ld.d	$a1, $sp, 416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	addi.d	$s1, $sp, 1560
	st.d	$s1, $sp, 1544
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 368
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 368
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	ld.h	$a3, $a2, 24
	ld.d	$a4, $a2, 16
	st.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1560
	st.h	$a3, $a0, 24
	st.d	$a4, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1552
	stx.b	$zero, $a0, $a1
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 1544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.5:                                # %invoke.cont4.i6
.Ltmp15:                                # EH_LABEL
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.6:                                # %invoke.cont6.i
	move	$fp, $a0
	ld.d	$s0, $sp, 480
	beqz	$s0, .LBB8_11
# %bb.7:                                # %if.then.i.i.i.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB8_9
# %bb.8:                                # %if.then.i.i.i.i5.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB8_12
	b	.LBB8_13
.LBB8_9:                                # %if.end.i.i.i.i.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB8_94
# %bb.10:                               # %if.then.i.i.i.i.i.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB8_95
.LBB8_11:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB8_13
.LBB8_12:                               # %if.then.i.i2.i.i
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 400
	beq	$a0, $s2, .LBB8_15
# %bb.14:                               # %if.then.i.i4.i.i
	ld.d	$a1, $sp, 416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_15:                               # %_ZN8TestCaseD2Ev.exit.i
	ld.d	$a0, $sp, 1544
	beq	$a0, $s1, .LBB8_17
# %bb.16:                               # %if.then.i.i6.i
	ld.d	$a1, $sp, 1560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_17:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(dummy25)
	st.w	$fp, $a0, %pc_lo12(dummy25)
	st.d	$s1, $sp, 1544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 368
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 368
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	ld.w	$a3, $a2, 16
	st.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1560
	st.w	$a3, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1552
	stx.b	$zero, $a0, $a1
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 1544
	addi.d	$fp, $sp, 400
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.18:                               # %invoke.cont4.i18
	addi.d	$fp, $sp, 488
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 368
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 336
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.19:                               # %call2.i5.i.noexc37.i
	ld.d	$a1, $sp, 336
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 368
	st.d	$a1, $sp, 384
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 368
	st.d	$a1, $sp, 376
	stx.b	$zero, $a0, $a1
.Ltmp24:                                # EH_LABEL
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.20:                               # %invoke.cont10.i
	addi.d	$s1, $sp, 576
	addi.d	$a0, $sp, 352
	st.d	$a0, $sp, 336
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 304
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.21:                               # %call2.i5.i.noexc49.i
	ld.d	$a1, $sp, 304
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	xvld	$xr0, $a2, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 336
	st.d	$a1, $sp, 352
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 336
	st.d	$a1, $sp, 344
	stx.b	$zero, $a0, $a1
.Ltmp30:                                # EH_LABEL
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.22:                               # %invoke.cont17.i
	addi.d	$s1, $sp, 664
	addi.d	$a0, $sp, 320
	st.d	$a0, $sp, 304
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 272
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 272
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.23:                               # %call2.i5.i.noexc61.i
	ld.d	$a1, $sp, 272
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 320
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 304
	st.d	$a1, $sp, 312
	stx.b	$zero, $a0, $a1
.Ltmp36:                                # EH_LABEL
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.24:                               # %invoke.cont24.i
	addi.d	$s1, $sp, 752
	addi.d	$a0, $sp, 288
	st.d	$a0, $sp, 272
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 240
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 240
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.25:                               # %call2.i5.i.noexc73.i
	st.d	$a0, $sp, 272
	ld.d	$a1, $sp, 240
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 288
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 272
	st.d	$a1, $sp, 280
	stx.b	$zero, $a0, $a1
.Ltmp42:                                # EH_LABEL
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.26:                               # %invoke.cont31.i
	addi.d	$s1, $sp, 840
	addi.d	$a0, $sp, 256
	st.d	$a0, $sp, 240
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 208
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 208
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.27:                               # %call2.i5.i.noexc85.i
	ld.d	$a1, $sp, 208
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 240
	st.d	$a1, $sp, 256
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 240
	st.d	$a1, $sp, 248
	stx.b	$zero, $a0, $a1
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.28:                               # %invoke.cont38.i
	addi.d	$s1, $sp, 928
	addi.d	$a0, $sp, 224
	st.d	$a0, $sp, 208
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 176
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 176
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.29:                               # %call2.i5.i.noexc97.i
	ld.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 208
	st.d	$a1, $sp, 224
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 208
	st.d	$a1, $sp, 216
	stx.b	$zero, $a0, $a1
.Ltmp54:                                # EH_LABEL
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.30:                               # %invoke.cont45.i
	addi.d	$s4, $sp, 1016
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	addi.d	$a2, $sp, 192
	st.d	$a2, $sp, 176
	st.d	$a1, $sp, 192
	st.d	$a0, $sp, 198
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 206
.Ltmp57:                                # EH_LABEL
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.31:                               # %invoke.cont52.i
	addi.d	$s5, $sp, 1104
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 144
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 112
.Ltmp60:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.32:                               # %call2.i5.i.noexc121.i
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp63:                                # EH_LABEL
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.33:                               # %invoke.cont59.i
	addi.d	$s6, $sp, 1192
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 112
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 80
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.34:                               # %call2.i5.i.noexc133.i
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 112
	st.d	$a1, $sp, 120
	stx.b	$zero, $a0, $a1
.Ltmp69:                                # EH_LABEL
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.35:                               # %invoke.cont66.i
	addi.d	$s7, $sp, 1280
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 80
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 48
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.36:                               # %call2.i5.i.noexc145.i
	ld.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp75:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.37:                               # %invoke.cont73.i
	addi.d	$s8, $sp, 1368
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 16
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.38:                               # %call2.i5.i.noexc157.i
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp81:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.39:                               # %invoke.cont80.i
	addi.d	$s1, $sp, 1456
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 32
	st.d	$s0, $sp, 24
.Ltmp84:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.40:                               # %invoke.cont87.i
.Ltmp87:                                # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 13
	addi.d	$s3, $sp, 400
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.41:                               # %invoke.cont89.i
	move	$s0, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB8_43
	.p2align	4, , 16
.LBB8_42:                               # %_ZN8TestCaseD2Ev.exit.i45
                                        #   in Loop: Header=BB8_43 Depth=1
	addi.d	$s1, $s1, -88
	addi.w	$a0, $zero, -1144
	beq	$s1, $a0, .LBB8_54
.LBB8_43:                               # %arraydestroy.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s1
	ld.d	$fp, $s6, 1136
	beqz	$fp, .LBB8_48
# %bb.44:                               # %if.then.i.i.i.i26
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB8_46
# %bb.45:                               # %if.then.i.i.i.i173.i
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	bne	$a1, $a0, .LBB8_49
	b	.LBB8_50
	.p2align	4, , 16
.LBB8_46:                               # %if.end.i.i.i.i.i29
                                        #   in Loop: Header=BB8_43 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB8_52
# %bb.47:                               # %if.then.i.i.i.i.i.i31
                                        #   in Loop: Header=BB8_43 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB8_53
	.p2align	4, , 16
.LBB8_48:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i36
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	beq	$a1, $a0, .LBB8_50
.LBB8_49:                               # %if.then.i.i2.i.i39
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a0, $s6, 1056
	addi.d	$a1, $s6, 1072
	beq	$a1, $a0, .LBB8_42
# %bb.51:                               # %if.then.i.i4.i.i43
                                        #   in Loop: Header=BB8_43 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_42
.LBB8_52:                               # %if.else.i.i.i.i.i.i56
                                        #   in Loop: Header=BB8_43 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB8_48
.LBB8_53:                               # %if.then7.i.i.i.i.i55
                                        #   in Loop: Header=BB8_43 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	bne	$a1, $a0, .LBB8_49
	b	.LBB8_50
.LBB8_54:                               # %arraydestroy.done90.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB8_56
# %bb.55:                               # %if.then.i.i174.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 48
	addi.d	$s1, $sp, 1560
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB8_58
# %bb.57:                               # %if.then.i.i176.i
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i
	ld.d	$a0, $sp, 80
	addi.d	$s2, $sp, 416
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB8_60
# %bb.59:                               # %if.then.i.i183.i
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_60:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB8_62
# %bb.61:                               # %if.then.i.i190.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB8_64
# %bb.63:                               # %if.then.i.i197.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_64:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB8_66
# %bb.65:                               # %if.then.i.i204.i
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_66:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i
	ld.d	$a0, $sp, 208
	addi.d	$a1, $sp, 224
	beq	$a0, $a1, .LBB8_68
# %bb.67:                               # %if.then.i.i211.i
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_68:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i
	ld.d	$a0, $sp, 240
	addi.d	$a1, $sp, 256
	beq	$a0, $a1, .LBB8_70
# %bb.69:                               # %if.then.i.i218.i
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB8_72
# %bb.71:                               # %if.then.i.i225.i
	ld.d	$a1, $sp, 288
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_72:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB8_74
# %bb.73:                               # %if.then.i.i232.i
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB8_76
# %bb.75:                               # %if.then.i.i239.i
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_76:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB8_78
# %bb.77:                               # %if.then.i.i246.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_78:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i
	ld.d	$a0, $sp, 1544
	beq	$a0, $s1, .LBB8_80
# %bb.79:                               # %if.then.i.i253.i
	ld.d	$a1, $sp, 1560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_80:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(dummy38)
	st.w	$s0, $a0, %pc_lo12(dummy38)
	st.d	$s1, $sp, 1544
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 368
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 368
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	ld.d	$a3, $a2, 16
	st.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1560
	st.d	$a3, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 1544
	st.d	$a1, $sp, 1552
	stx.b	$zero, $a0, $a1
.Ltmp90:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 1544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.81:                               # %invoke.cont4.i77
.Ltmp93:                                # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.82:                               # %invoke.cont6.i82
	move	$fp, $a0
	ld.d	$s0, $sp, 480
	beqz	$s0, .LBB8_87
# %bb.83:                               # %if.then.i.i.i.i85
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB8_85
# %bb.84:                               # %if.then.i.i.i.i5.i119
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB8_88
	b	.LBB8_89
.LBB8_85:                               # %if.end.i.i.i.i.i88
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB8_96
# %bb.86:                               # %if.then.i.i.i.i.i.i90
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB8_97
.LBB8_87:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i95
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB8_89
.LBB8_88:                               # %if.then.i.i2.i.i98
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_89:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i100
	ld.d	$a0, $sp, 400
	beq	$a0, $s2, .LBB8_91
# %bb.90:                               # %if.then.i.i4.i.i102
	ld.d	$a1, $sp, 416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_91:                               # %_ZN8TestCaseD2Ev.exit.i104
	ld.d	$a0, $sp, 1544
	beq	$a0, $s1, .LBB8_93
# %bb.92:                               # %if.then.i.i6.i106
	ld.d	$a1, $sp, 1560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_93:                               # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(dummy39)
	st.w	$fp, $a0, %pc_lo12(dummy39)
	ld.d	$s8, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1656                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1664
	ret
.LBB8_94:                               # %if.else.i.i.i.i.i.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_11
.LBB8_95:                               # %if.then7.i.i.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB8_12
	b	.LBB8_13
.LBB8_96:                               # %if.else.i.i.i.i.i.i118
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_87
.LBB8_97:                               # %if.then7.i.i.i.i.i117
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB8_88
	b	.LBB8_89
.LBB8_98:                               # %lpad5.i81
.Ltmp95:                                # EH_LABEL
	b	.LBB8_156
.LBB8_99:                               # %lpad3.i68
.Ltmp92:                                # EH_LABEL
	b	.LBB8_158
.LBB8_100:                              # %lpad88.i
.Ltmp89:                                # EH_LABEL
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 928
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 840
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 752
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 664
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 576
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	b	.LBB8_102
.LBB8_101:                              # %lpad86.i
.Ltmp86:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_102:                              # %ehcleanup.i19
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB8_104
# %bb.103:                              # %if.then.i.i260.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_104:                              # %ehcleanup99.i
	move	$s8, $s1
	b	.LBB8_106
.LBB8_105:                              # %lpad79.i
.Ltmp83:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_106:                              # %ehcleanup99.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB8_109
# %bb.107:                              # %if.then.i.i267.i
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_109
.LBB8_108:                              # %lpad77.i
.Ltmp80:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_109:                              # %ehcleanup102.i
	move	$s7, $s8
	b	.LBB8_111
.LBB8_110:                              # %lpad72.i
.Ltmp77:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_111:                              # %ehcleanup102.i
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB8_114
# %bb.112:                              # %if.then.i.i274.i
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_114
.LBB8_113:                              # %lpad70.i
.Ltmp74:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_114:                              # %ehcleanup105.i
	move	$s6, $s7
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB8_118
.LBB8_115:                              # %if.then.i.i281.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_118
.LBB8_116:                              # %lpad65.i
.Ltmp71:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	bne	$a0, $a1, .LBB8_115
	b	.LBB8_118
.LBB8_117:                              # %lpad63.i
.Ltmp68:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
.LBB8_118:                              # %ehcleanup108.i
	move	$s5, $s6
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB8_120
.LBB8_119:                              # %if.then.i.i288.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_120:                              # %ehcleanup111.i
	move	$s4, $s5
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB8_122
.LBB8_121:                              # %if.then.i.i295.i
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_122:                              # %ehcleanup114.i
	move	$fp, $s4
	ld.d	$a0, $sp, 208
	addi.d	$a1, $sp, 224
	beq	$a0, $a1, .LBB8_124
.LBB8_123:                              # %if.then.i.i302.i
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_124:                              # %ehcleanup117.i
	ld.d	$a0, $sp, 240
	addi.d	$a1, $sp, 256
	bne	$a0, $a1, .LBB8_133
# %bb.125:                              # %ehcleanup120.i
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	bne	$a0, $a1, .LBB8_134
.LBB8_126:                              # %ehcleanup123.i
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	bne	$a0, $a1, .LBB8_135
.LBB8_127:                              # %ehcleanup126.i
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	bne	$a0, $a1, .LBB8_136
.LBB8_128:                              # %ehcleanup129.i
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	bne	$a0, $a1, .LBB8_137
.LBB8_129:                              # %ehcleanup132.i
	ld.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1560
	beq	$a0, $a1, .LBB8_131
.LBB8_130:                              # %if.then.i.i344.i
	ld.d	$a1, $sp, 1560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_131:                              # %ehcleanup133.i
	addi.d	$s1, $sp, 400
	xor	$a0, $s1, $fp
	sltui	$a0, $a0, 1
	or	$a0, $s0, $a0
	bnez	$a0, .LBB8_166
	.p2align	4, , 16
.LBB8_132:                              # %arraydestroy.body136.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $fp, -88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$fp, $s1, .LBB8_132
	b	.LBB8_166
.LBB8_133:                              # %if.then.i.i309.i
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB8_126
.LBB8_134:                              # %if.then.i.i316.i
	ld.d	$a1, $sp, 288
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB8_127
.LBB8_135:                              # %if.then.i.i323.i
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB8_128
.LBB8_136:                              # %if.then.i.i330.i
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB8_129
.LBB8_137:                              # %if.then.i.i337.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1560
	bne	$a0, $a1, .LBB8_130
	b	.LBB8_131
.LBB8_138:                              # %lpad58.i
.Ltmp65:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	bne	$a0, $a1, .LBB8_119
	b	.LBB8_120
.LBB8_139:                              # %lpad56.i
.Ltmp62:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	b	.LBB8_120
.LBB8_140:                              # %lpad51.i
.Ltmp59:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	bne	$a0, $a1, .LBB8_121
	b	.LBB8_122
.LBB8_141:                              # %lpad44.i
.Ltmp56:                                # EH_LABEL
	move	$fp, $s1
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 208
	addi.d	$a1, $sp, 224
	bne	$a0, $a1, .LBB8_123
	b	.LBB8_124
.LBB8_142:                              # %lpad42.i
.Ltmp53:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	move	$fp, $s1
	b	.LBB8_124
.LBB8_143:                              # %lpad37.i
.Ltmp50:                                # EH_LABEL
	move	$fp, $s1
	move	$s3, $a0
	move	$s0, $zero
	b	.LBB8_124
.LBB8_144:                              # %lpad35.i
.Ltmp47:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	move	$fp, $s1
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB8_126
	b	.LBB8_134
.LBB8_145:                              # %lpad30.i
.Ltmp44:                                # EH_LABEL
	move	$fp, $s1
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB8_126
	b	.LBB8_134
.LBB8_146:                              # %lpad28.i
.Ltmp41:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	move	$fp, $s1
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB8_127
	b	.LBB8_135
.LBB8_147:                              # %lpad23.i
.Ltmp38:                                # EH_LABEL
	move	$fp, $s1
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB8_127
	b	.LBB8_135
.LBB8_148:                              # %lpad21.i
.Ltmp35:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	move	$fp, $s1
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB8_128
	b	.LBB8_136
.LBB8_149:                              # %lpad16.i
.Ltmp32:                                # EH_LABEL
	move	$fp, $s1
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB8_128
	b	.LBB8_136
.LBB8_150:                              # %lpad14.i
.Ltmp29:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	move	$fp, $s1
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB8_129
	b	.LBB8_137
.LBB8_151:                              # %lpad9.i
.Ltmp26:                                # EH_LABEL
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB8_129
	b	.LBB8_137
.LBB8_152:                              # %lpad7.i
.Ltmp23:                                # EH_LABEL
	b	.LBB8_154
.LBB8_153:                              # %lpad3.i17
.Ltmp20:                                # EH_LABEL
.LBB8_154:                              # %ehcleanup132.i
	move	$s3, $a0
	move	$s0, $zero
	ld.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1560
	bne	$a0, $a1, .LBB8_130
	b	.LBB8_131
.LBB8_155:                              # %lpad5.i
.Ltmp17:                                # EH_LABEL
.LBB8_156:                              # %ehcleanup.i5
	move	$s3, $a0
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB8_159
.LBB8_157:                              # %lpad3.i
.Ltmp14:                                # EH_LABEL
.LBB8_158:                              # %ehcleanup.i5
	move	$s3, $a0
.LBB8_159:                              # %ehcleanup.i5
	ld.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1560
	beq	$a0, $a1, .LBB8_166
# %bb.160:                              # %if.then.i.i8.i
	ld.d	$a1, $sp, 1560
	addi.d	$a1, $a1, 1
	b	.LBB8_165
.LBB8_161:                              # %lpad2.i
.Ltmp11:                                # EH_LABEL
	ld.d	$a2, $sp, 400
	move	$s3, $a0
	bne	$a2, $s2, .LBB8_163
# %bb.162:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s1, .LBB8_164
	b	.LBB8_166
.LBB8_163:                              # %ehcleanup.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB8_166
.LBB8_164:                              # %cleanup.action.i
	ori	$a1, $zero, 232
	move	$a0, $fp
.LBB8_165:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_166:                              # %common.resume
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_GLOBAL__sub_I_profiler_manager_test.cc, .Lfunc_end8-_GLOBAL__sub_I_profiler_manager_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin1          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin1          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin1          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin1          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin1          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin1          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin1          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin1          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin1          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin1          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin1          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin1          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin1          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin1          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Lfunc_end8-.Ltmp94            #   Call between .Ltmp94 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.hidden	dummy25                         # @dummy25
	.type	dummy25,@object
	.bss
	.globl	dummy25
	.p2align	2, 0x0
dummy25:
	.word	0                               # 0x0
	.size	dummy25, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"^BM_empty %console_report$"
	.size	.L.str.3, 27

	.hidden	dummy38                         # @dummy38
	.type	dummy38,@object
	.bss
	.globl	dummy38
	.p2align	2, 0x0
dummy38:
	.word	0                               # 0x0
	.size	dummy38, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"\"name\": \"BM_empty\",$"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"\"family_index\": 0,$"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.7, 33

	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"\"run_name\": \"BM_empty\",$"
	.size	.L.str.8, 25

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"\"run_type\": \"iteration\",$"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"\"repetitions\": 1,$"
	.size	.L.str.10, 19

	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"\"repetition_index\": 0,$"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
	.p2align	3, 0x0
.L.str.12:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"\"iterations\": %int,$"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"\"real_time\": %float,$"
	.size	.L.str.14, 22

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"\"cpu_time\": %float,$"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
	.p2align	3, 0x0
.L.str.16:
	.asciz	"\"time_unit\": \"ns\"$"
	.size	.L.str.16, 19

	.hidden	dummy39                         # @dummy39
	.type	dummy39,@object
	.bss
	.globl	dummy39
	.p2align	2, 0x0
dummy39:
	.word	0                               # 0x0
	.size	dummy39, 4

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.19:
	.asciz	"^\"BM_empty\",%csv_report$"
	.size	.L.str.19, 25

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"pm->start_called == 1"
	.size	.L.str.20, 22

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/profiler_manager_test.cc"
	.size	.L.str.21, 90

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main(int, char **)"
	.size	.L__PRETTY_FUNCTION__.main, 23

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"pm->stop_called == 1"
	.size	.L.str.22, 21

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"cached_ > 0"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.24, 90

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.hidden	_ZTV19TestProfilerManager       # @_ZTV19TestProfilerManager
	.type	_ZTV19TestProfilerManager,@object
	.section	.data.rel.ro._ZTV19TestProfilerManager,"awG",@progbits,_ZTV19TestProfilerManager,comdat
	.weak	_ZTV19TestProfilerManager
	.p2align	3, 0x0
_ZTV19TestProfilerManager:
	.dword	0
	.dword	_ZTI19TestProfilerManager
	.dword	_ZN9benchmark15ProfilerManagerD2Ev
	.dword	_ZN19TestProfilerManagerD0Ev
	.dword	_ZN19TestProfilerManager15AfterSetupStartEv
	.dword	_ZN19TestProfilerManager18BeforeTeardownStopEv
	.size	_ZTV19TestProfilerManager, 48

	.hidden	_ZTI19TestProfilerManager       # @_ZTI19TestProfilerManager
	.type	_ZTI19TestProfilerManager,@object
	.section	.data.rel.ro._ZTI19TestProfilerManager,"awG",@progbits,_ZTI19TestProfilerManager,comdat
	.weak	_ZTI19TestProfilerManager
	.p2align	3, 0x0
_ZTI19TestProfilerManager:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19TestProfilerManager
	.dword	_ZTIN9benchmark15ProfilerManagerE
	.size	_ZTI19TestProfilerManager, 24

	.hidden	_ZTS19TestProfilerManager       # @_ZTS19TestProfilerManager
	.type	_ZTS19TestProfilerManager,@object
	.section	.rodata._ZTS19TestProfilerManager,"aG",@progbits,_ZTS19TestProfilerManager,comdat
	.weak	_ZTS19TestProfilerManager
_ZTS19TestProfilerManager:
	.asciz	"19TestProfilerManager"
	.size	_ZTS19TestProfilerManager, 22

	.hidden	_ZTIN9benchmark15ProfilerManagerE # @_ZTIN9benchmark15ProfilerManagerE
	.type	_ZTIN9benchmark15ProfilerManagerE,@object
	.section	.data.rel.ro._ZTIN9benchmark15ProfilerManagerE,"awG",@progbits,_ZTIN9benchmark15ProfilerManagerE,comdat
	.weak	_ZTIN9benchmark15ProfilerManagerE
	.p2align	3, 0x0
_ZTIN9benchmark15ProfilerManagerE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN9benchmark15ProfilerManagerE
	.size	_ZTIN9benchmark15ProfilerManagerE, 16

	.hidden	_ZTSN9benchmark15ProfilerManagerE # @_ZTSN9benchmark15ProfilerManagerE
	.type	_ZTSN9benchmark15ProfilerManagerE,@object
	.section	.rodata._ZTSN9benchmark15ProfilerManagerE,"aG",@progbits,_ZTSN9benchmark15ProfilerManagerE,comdat
	.weak	_ZTSN9benchmark15ProfilerManagerE
_ZTSN9benchmark15ProfilerManagerE:
	.asciz	"N9benchmark15ProfilerManagerE"
	.size	_ZTSN9benchmark15ProfilerManagerE, 30

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_profiler_manager_test.cc
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
	.addrsig_sym _Z8BM_emptyRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_profiler_manager_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI19TestProfilerManager
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19TestProfilerManager
	.addrsig_sym _ZTIN9benchmark15ProfilerManagerE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN9benchmark15ProfilerManagerE
