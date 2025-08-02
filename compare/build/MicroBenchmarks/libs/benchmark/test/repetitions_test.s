	.file	"repetitions_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL22BM_ExplicitRepetitionsRN9benchmark5StateE
	.type	_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE,@function
_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE: # @_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_3
# %bb.1:                                # %entry
	beqz	$s0, .LBB0_3
# %bb.2:                                # %for.body.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB0_4
.LBB0_3:                                # %for.cond.cleanup
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB0_4:                                # %cond.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE, .Lfunc_end0-_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE
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
	.p2align	5                               # -- Begin function _ZL22BM_ImplicitRepetitionsRN9benchmark5StateE
	.type	_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE,@function
_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE: # @_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_3
# %bb.1:                                # %entry
	beqz	$s0, .LBB2_3
# %bb.2:                                # %for.body.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB2_4
.LBB2_3:                                # %for.cond.cleanup
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB2_4:                                # %cond.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE, .Lfunc_end2-_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
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
	beqz	$a0, .LBB4_3
# %bb.1:                                # %if.then.i.i
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_4
.LBB4_2:                                # %if.then.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB4_3:                                # %if.else.i.i
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_2
.LBB4_4:                                # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end4-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_repetitions_test.cc
	.type	_GLOBAL__sub_I_repetitions_test.cc,@function
_GLOBAL__sub_I_repetitions_test.cc:     # @_GLOBAL__sub_I_repetitions_test.cc
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 2112
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 760
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 1992
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc.i
	ld.d	$a1, $sp, 1992
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	st.d	$a0, $sp, 760
	st.d	$a1, $sp, 776
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 760
	st.d	$a1, $sp, 768
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 760
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont3.i
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL22BM_ExplicitRepetitionsRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp5:                                 # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.3:                                # %invoke.cont4.i
.Ltmp7:                                 # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11RepetitionsEi)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.4:                                # %invoke.cont6.i
	move	$fp, $a0
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_6
# %bb.5:                                # %if.then.i.i3.i
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	addi.d	$s3, $sp, 2008
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 50
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$s1, $a2, %pc_lo12(.L.str.3)
	xvld	$xr0, $s1, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $s1, 32
	ld.h	$s2, $s1, 48
	vst	$vr0, $a0, 32
	st.h	$s2, $a0, 48
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.7:                                # %invoke.cont4.i7
.Ltmp13:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:                                # %invoke.cont6.i9
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_13
# %bb.9:                                # %if.then.i.i.i.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_11
# %bb.10:                               # %if.then.i.i.i.i5.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_14
	b	.LBB5_15
.LBB5_11:                               # %if.end.i.i.i.i.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1002
# %bb.12:                               # %if.then.i.i.i.i.i.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1003
.LBB5_13:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_15
.LBB5_14:                               # %if.then.i.i2.i.i
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_17
# %bb.16:                               # %if.then.i.i4.i.i
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZN8TestCaseD2Ev.exit.i
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_19
# %bb.18:                               # %if.then.i.i6.i
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(dummy16)
	st.w	$fp, $a0, %pc_lo12(dummy16)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 50
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	xvld	$xr0, $s1, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $s1, 32
	vst	$vr0, $a0, 32
	st.h	$s2, $a0, 48
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.20:                               # %invoke.cont4.i29
.Ltmp19:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
	addi.d	$s1, $sp, 776
# %bb.21:                               # %invoke.cont6.i34
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_26
# %bb.22:                               # %if.then.i.i.i.i37
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_24
# %bb.23:                               # %if.then.i.i.i.i5.i70
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_27
	b	.LBB5_28
.LBB5_24:                               # %if.end.i.i.i.i.i40
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1004
# %bb.25:                               # %if.then.i.i.i.i.i.i42
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1005
.LBB5_26:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i47
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_28
.LBB5_27:                               # %if.then.i.i2.i.i50
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_30
# %bb.29:                               # %if.then.i.i4.i.i54
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_30:                               # %_ZN8TestCaseD2Ev.exit.i56
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_32
# %bb.31:                               # %if.then.i.i6.i58
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(dummy18)
	st.w	$fp, $a0, %pc_lo12(dummy18)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 55
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 47
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.33:                               # %invoke.cont4.i91
.Ltmp25:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.34:                               # %invoke.cont6.i96
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_39
# %bb.35:                               # %if.then.i.i.i.i99
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_37
# %bb.36:                               # %if.then.i.i.i.i5.i132
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_40
	b	.LBB5_41
.LBB5_37:                               # %if.end.i.i.i.i.i102
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1006
# %bb.38:                               # %if.then.i.i.i.i.i.i104
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1007
.LBB5_39:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i109
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_41
.LBB5_40:                               # %if.then.i.i2.i.i112
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i114
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_43
# %bb.42:                               # %if.then.i.i4.i.i116
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_43:                               # %_ZN8TestCaseD2Ev.exit.i118
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_45
# %bb.44:                               # %if.then.i.i6.i120
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_45:                               # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(dummy20)
	st.w	$fp, $a0, %pc_lo12(dummy20)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 57
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.b	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.b	$a2, $a0, 56
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.46:                               # %invoke.cont4.i153
.Ltmp31:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.47:                               # %invoke.cont6.i158
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_52
# %bb.48:                               # %if.then.i.i.i.i161
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_50
# %bb.49:                               # %if.then.i.i.i.i5.i194
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_53
	b	.LBB5_54
.LBB5_50:                               # %if.end.i.i.i.i.i164
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1008
# %bb.51:                               # %if.then.i.i.i.i.i.i166
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1009
.LBB5_52:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i171
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_54
.LBB5_53:                               # %if.then.i.i2.i.i174
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i176
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_56
# %bb.55:                               # %if.then.i.i4.i.i178
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZN8TestCaseD2Ev.exit.i180
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_58
# %bb.57:                               # %if.then.i.i6.i182
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(dummy22)
	st.w	$fp, $a0, %pc_lo12(dummy22)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 57
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.b	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.b	$a2, $a0, 56
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.59:                               # %invoke.cont4.i215
.Ltmp37:                                # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.60:                               # %invoke.cont6.i220
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_65
# %bb.61:                               # %if.then.i.i.i.i223
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_63
# %bb.62:                               # %if.then.i.i.i.i5.i256
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_66
	b	.LBB5_67
.LBB5_63:                               # %if.end.i.i.i.i.i226
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1010
# %bb.64:                               # %if.then.i.i.i.i.i.i228
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1011
.LBB5_65:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i233
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_67
.LBB5_66:                               # %if.then.i.i2.i.i236
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_67:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i238
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_69
# %bb.68:                               # %if.then.i.i4.i.i240
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_69:                               # %_ZN8TestCaseD2Ev.exit.i242
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_71
# %bb.70:                               # %if.then.i.i6.i244
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_71:                               # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(dummy24)
	st.w	$fp, $a0, %pc_lo12(dummy24)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$s2, $a2, %pc_lo12(.L.str.12)
	xvld	$xr0, $s2, 0
	ld.d	$s6, $s2, 32
	ld.w	$s7, $s2, 40
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s6, $a0, 32
	st.w	$s7, $a0, 40
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.72:                               # %invoke.cont4.i268
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.73:                               # %call2.i5.i.noexc37.i
	ld.d	$a1, $sp, 696
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp46:                                # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.74:                               # %invoke.cont10.i
	addi.d	$s3, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.75:                               # %call2.i5.i.noexc49.i
	ld.d	$a1, $sp, 664
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp52:                                # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.76:                               # %invoke.cont17.i
	addi.d	$s3, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 632
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.77:                               # %call2.i5.i.noexc61.i
	ld.d	$a1, $sp, 632
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp58:                                # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.78:                               # %invoke.cont24.i
	addi.d	$s3, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.79:                               # %call2.i5.i.noexc73.i
	st.d	$a0, $sp, 632
	ld.d	$a1, $sp, 600
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a3, $a2, %pc_lo12(.L.str.16)
	vld	$vr0, $a3, 0
	ld.b	$a2, $a3, 24
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.b	$a2, $a0, 24
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp64:                                # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.80:                               # %invoke.cont31.i
	addi.d	$s3, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.81:                               # %call2.i5.i.noexc85.i
	ld.d	$a1, $sp, 568
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp70:                                # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.82:                               # %invoke.cont38.i
	addi.d	$s3, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 536
.Ltmp73:                                # EH_LABEL
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.83:                               # %call2.i5.i.noexc97.i
	ld.d	$a1, $sp, 536
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	addi.d	$a2, $a2, %pc_lo12(.L.str.18)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 568
	st.d	$a1, $sp, 584
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 568
	st.d	$a1, $sp, 576
	stx.b	$zero, $a0, $a1
.Ltmp76:                                # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.84:                               # %invoke.cont45.i
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s3, $sp, 1376
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 6
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	st.d	$a1, $sp, 552
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	st.d	$a2, $sp, 558
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 544
	st.b	$zero, $sp, 566
.Ltmp79:                                # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.85:                               # %invoke.cont52.i
	addi.d	$s3, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 472
.Ltmp82:                                # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.86:                               # %call2.i5.i.noexc121.i
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.20)
	addi.d	$a2, $a2, %pc_lo12(.L.str.20)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp85:                                # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.87:                               # %invoke.cont59.i
	addi.d	$s4, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 440
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.88:                               # %call2.i5.i.noexc133.i
	ld.d	$a1, $sp, 440
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp91:                                # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.89:                               # %invoke.cont66.i
	addi.d	$s5, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 408
.Ltmp94:                                # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.90:                               # %call2.i5.i.noexc145.i
	ld.d	$a1, $sp, 408
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp97:                                # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.91:                               # %invoke.cont73.i
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	addi.d	$s8, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 376
.Ltmp100:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.92:                               # %call2.i5.i.noexc157.i
	ld.d	$a1, $sp, 376
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp103:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.93:                               # %invoke.cont80.i
	addi.d	$s1, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 392
	st.d	$fp, $sp, 384
.Ltmp106:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.94:                               # %invoke.cont87.i
.Ltmp109:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 13
	addi.d	$s2, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.95:                               # %invoke.cont89.i
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB5_97
	.p2align	4, , 16
.LBB5_96:                               # %_ZN8TestCaseD2Ev.exit.i295
                                        #   in Loop: Header=BB5_97 Depth=1
	addi.d	$s1, $s1, -88
	addi.w	$s3, $zero, -1144
	beq	$s1, $s3, .LBB5_108
.LBB5_97:                               # %arraydestroy.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s2, $s1
	ld.d	$s0, $s3, 1136
	beqz	$s0, .LBB5_102
# %bb.98:                               # %if.then.i.i.i.i276
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB5_100
# %bb.99:                               # %if.then.i.i.i.i173.i
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 1096
	addi.d	$a1, $s3, 1112
	bne	$a1, $a0, .LBB5_103
	b	.LBB5_104
	.p2align	4, , 16
.LBB5_100:                              # %if.end.i.i.i.i.i279
                                        #   in Loop: Header=BB5_97 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_106
# %bb.101:                              # %if.then.i.i.i.i.i.i281
                                        #   in Loop: Header=BB5_97 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB5_107
	.p2align	4, , 16
.LBB5_102:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i286
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a0, $s3, 1096
	addi.d	$a1, $s3, 1112
	beq	$a1, $a0, .LBB5_104
.LBB5_103:                              # %if.then.i.i2.i.i289
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_104:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i291
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a0, $s3, 1056
	addi.d	$a1, $s3, 1072
	beq	$a1, $a0, .LBB5_96
# %bb.105:                              # %if.then.i.i4.i.i293
                                        #   in Loop: Header=BB5_97 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_96
.LBB5_106:                              # %if.else.i.i.i.i.i.i306
                                        #   in Loop: Header=BB5_97 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB5_102
.LBB5_107:                              # %if.then7.i.i.i.i.i305
                                        #   in Loop: Header=BB5_97 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1096
	addi.d	$a1, $s3, 1112
	bne	$a1, $a0, .LBB5_103
	b	.LBB5_104
.LBB5_108:                              # %arraydestroy.done90.i
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_110
# %bb.109:                              # %if.then.i.i174.i
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_110:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 408
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_112
# %bb.111:                              # %if.then.i.i176.i
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_112:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_114
# %bb.113:                              # %if.then.i.i183.i
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_114:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_116
# %bb.115:                              # %if.then.i.i190.i
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_116:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_118
# %bb.117:                              # %if.then.i.i197.i
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_118:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_120
# %bb.119:                              # %if.then.i.i204.i
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_120:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_122
# %bb.121:                              # %if.then.i.i211.i
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_122:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_124
# %bb.123:                              # %if.then.i.i218.i
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_126
# %bb.125:                              # %if.then.i.i225.i
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_128
# %bb.127:                              # %if.then.i.i232.i
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_128:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_130
# %bb.129:                              # %if.then.i.i239.i
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_130:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_132
# %bb.131:                              # %if.then.i.i246.i
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_132:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_134
# %bb.133:                              # %if.then.i.i253.i
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_134:                              # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(dummy38)
	st.w	$fp, $a0, %pc_lo12(dummy38)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s6, $a0, 32
	st.w	$s7, $a0, 40
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp112:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.135:                              # %invoke.cont4.i358
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp115:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.136:                              # %call2.i5.i.noexc37.i362
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp118:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.137:                              # %invoke.cont10.i375
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp121:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.138:                              # %call2.i5.i.noexc49.i379
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp124:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.139:                              # %invoke.cont17.i392
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 632
.Ltmp127:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.140:                              # %call2.i5.i.noexc61.i396
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp130:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.141:                              # %invoke.cont24.i409
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp133:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.142:                              # %call2.i5.i.noexc73.i413
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp136:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.143:                              # %invoke.cont31.i426
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp139:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.144:                              # %call2.i5.i.noexc85.i430
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp142:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.145:                              # %invoke.cont38.i443
	addi.d	$s1, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 536
.Ltmp145:                               # EH_LABEL
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.146:                              # %call2.i5.i.noexc97.i447
	ld.d	$a1, $sp, 536
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 568
	st.d	$a1, $sp, 584
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 568
	st.d	$a1, $sp, 576
	stx.b	$zero, $a0, $a1
.Ltmp148:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.147:                              # %invoke.cont45.i460
	addi.d	$s4, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 552
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 558
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 544
	st.b	$zero, $sp, 566
.Ltmp151:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.148:                              # %invoke.cont52.i474
	addi.d	$s5, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 472
.Ltmp154:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.149:                              # %call2.i5.i.noexc121.i478
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp157:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.150:                              # %invoke.cont59.i491
	addi.d	$s6, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 440
.Ltmp160:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.151:                              # %call2.i5.i.noexc133.i495
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp163:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.152:                              # %invoke.cont66.i508
	addi.d	$s7, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 408
.Ltmp166:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.153:                              # %call2.i5.i.noexc145.i512
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp169:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.154:                              # %invoke.cont73.i525
	addi.d	$s8, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 376
.Ltmp172:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.155:                              # %call2.i5.i.noexc157.i529
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp175:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.156:                              # %invoke.cont80.i542
	addi.d	$s1, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 392
	st.d	$fp, $sp, 384
.Ltmp178:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.157:                              # %invoke.cont87.i554
.Ltmp181:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 13
	addi.d	$s2, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.158:                              # %invoke.cont89.i571
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB5_160
	.p2align	4, , 16
.LBB5_159:                              # %_ZN8TestCaseD2Ev.exit.i596
                                        #   in Loop: Header=BB5_160 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB5_171
.LBB5_160:                              # %arraydestroy.body.i572
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s1
	ld.d	$s0, $s6, 1136
	beqz	$s0, .LBB5_165
# %bb.161:                              # %if.then.i.i.i.i577
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB5_163
# %bb.162:                              # %if.then.i.i.i.i173.i684
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	bne	$a1, $a0, .LBB5_166
	b	.LBB5_167
	.p2align	4, , 16
.LBB5_163:                              # %if.end.i.i.i.i.i580
                                        #   in Loop: Header=BB5_160 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_169
# %bb.164:                              # %if.then.i.i.i.i.i.i582
                                        #   in Loop: Header=BB5_160 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB5_170
	.p2align	4, , 16
.LBB5_165:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i587
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	beq	$a1, $a0, .LBB5_167
.LBB5_166:                              # %if.then.i.i2.i.i590
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_167:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i592
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a0, $s6, 1056
	addi.d	$a1, $s6, 1072
	beq	$a1, $a0, .LBB5_159
# %bb.168:                              # %if.then.i.i4.i.i594
                                        #   in Loop: Header=BB5_160 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_159
.LBB5_169:                              # %if.else.i.i.i.i.i.i683
                                        #   in Loop: Header=BB5_160 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB5_165
.LBB5_170:                              # %if.then7.i.i.i.i.i682
                                        #   in Loop: Header=BB5_160 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1096
	addi.d	$a1, $s6, 1112
	bne	$a1, $a0, .LBB5_166
	b	.LBB5_167
.LBB5_171:                              # %arraydestroy.done90.i598
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_173
# %bb.172:                              # %if.then.i.i174.i600
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_173:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i602
	ld.d	$a0, $sp, 408
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_175
# %bb.174:                              # %if.then.i.i176.i604
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_175:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i606
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_177
# %bb.176:                              # %if.then.i.i183.i608
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_177:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i610
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_179
# %bb.178:                              # %if.then.i.i190.i612
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_179:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i614
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_181
# %bb.180:                              # %if.then.i.i197.i616
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_181:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i618
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_183
# %bb.182:                              # %if.then.i.i204.i620
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_183:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i622
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_185
# %bb.184:                              # %if.then.i.i211.i624
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_185:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i626
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_187
# %bb.186:                              # %if.then.i.i218.i628
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_187:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i630
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_189
# %bb.188:                              # %if.then.i.i225.i632
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_189:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i634
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_191
# %bb.190:                              # %if.then.i.i232.i636
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_191:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i638
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_193
# %bb.192:                              # %if.then.i.i239.i640
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_193:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i642
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_195
# %bb.194:                              # %if.then.i.i246.i644
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_195:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i646
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_197
# %bb.196:                              # %if.then.i.i253.i648
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_197:                              # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(dummy52)
	st.w	$fp, $a0, %pc_lo12(dummy52)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 49
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.b	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.b	$a2, $a0, 48
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp184:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.198:                              # %invoke.cont4.i711
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp187:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.199:                              # %call2.i5.i.noexc39.i
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp190:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.200:                              # %invoke.cont10.i718
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp193:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.201:                              # %call2.i5.i.noexc51.i
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp196:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.202:                              # %invoke.cont17.i725
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 632
.Ltmp199:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.203:                              # %call2.i5.i.noexc63.i
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp202:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.204:                              # %invoke.cont24.i733
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp205:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.205:                              # %call2.i5.i.noexc75.i
	st.d	$a0, $sp, 632
	ld.d	$a1, $sp, 600
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a3, $a2, %pc_lo12(.L.str.29)
	vld	$vr0, $a3, 0
	ld.b	$a2, $a3, 24
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	st.b	$a2, $a0, 24
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp208:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.206:                              # %invoke.cont31.i745
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp211:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.207:                              # %call2.i5.i.noexc87.i
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp214:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.208:                              # %invoke.cont38.i757
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp217:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.209:                              # %invoke.cont45.i768
	addi.d	$s1, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 504
.Ltmp220:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.210:                              # %call2.i5.i.noexc111.i
	st.d	$a0, $sp, 536
	ld.d	$a1, $sp, 504
	pcalau12i	$a2, %pc_hi20(.L.str.30)
	addi.d	$a3, $a2, %pc_lo12(.L.str.30)
	vld	$vr0, $a3, 0
	ld.h	$a2, $a3, 24
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.h	$a2, $a0, 24
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp223:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.211:                              # %invoke.cont52.i779
	addi.d	$s2, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp226:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.212:                              # %call2.i5.i.noexc123.i
	st.d	$a0, $sp, 504
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a3, $a2, %pc_lo12(.L.str.31)
	vld	$vr0, $a3, 0
	ld.h	$a2, $a3, 24
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	st.h	$a2, $a0, 24
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp229:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.213:                              # %invoke.cont59.i791
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp232:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.214:                              # %call2.i5.i.noexc135.i
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp235:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.215:                              # %invoke.cont66.i803
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp238:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.216:                              # %call2.i5.i.noexc147.i
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp241:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.217:                              # %invoke.cont73.i815
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp244:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.218:                              # %call2.i5.i.noexc159.i
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp247:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.219:                              # %invoke.cont80.i827
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp250:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.220:                              # %call2.i5.i.noexc171.i
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp253:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.221:                              # %invoke.cont87.i838
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp256:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.222:                              # %invoke.cont94.i
.Ltmp259:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.223:                              # %invoke.cont96.i
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_225
	.p2align	4, , 16
.LBB5_224:                              # %_ZN8TestCaseD2Ev.exit.i873
                                        #   in Loop: Header=BB5_225 Depth=1
	addi.d	$s1, $s1, -88
	addi.w	$s2, $zero, -1232
	beq	$s1, $s2, .LBB5_236
.LBB5_225:                              # %arraydestroy.body.i849
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s4, $s1
	ld.d	$s0, $s2, 1224
	beqz	$s0, .LBB5_230
# %bb.226:                              # %if.then.i.i.i.i854
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_228
# %bb.227:                              # %if.then.i.i.i.i187.i
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 1184
	addi.d	$a1, $s2, 1200
	bne	$a1, $a0, .LBB5_231
	b	.LBB5_232
	.p2align	4, , 16
.LBB5_228:                              # %if.end.i.i.i.i.i857
                                        #   in Loop: Header=BB5_225 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_234
# %bb.229:                              # %if.then.i.i.i.i.i.i859
                                        #   in Loop: Header=BB5_225 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_235
	.p2align	4, , 16
.LBB5_230:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i864
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a0, $s2, 1184
	addi.d	$a1, $s2, 1200
	beq	$a1, $a0, .LBB5_232
.LBB5_231:                              # %if.then.i.i2.i.i867
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_232:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i869
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a0, $s2, 1144
	addi.d	$a1, $s2, 1160
	beq	$a1, $a0, .LBB5_224
# %bb.233:                              # %if.then.i.i4.i.i871
                                        #   in Loop: Header=BB5_225 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_224
.LBB5_234:                              # %if.else.i.i.i.i.i.i960
                                        #   in Loop: Header=BB5_225 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_230
.LBB5_235:                              # %if.then7.i.i.i.i.i959
                                        #   in Loop: Header=BB5_225 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1184
	addi.d	$a1, $s2, 1200
	bne	$a1, $a0, .LBB5_231
	b	.LBB5_232
.LBB5_236:                              # %arraydestroy.done97.i
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_238
# %bb.237:                              # %if.then.i.i188.i
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_238:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i877
	ld.d	$a0, $sp, 376
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_240
# %bb.239:                              # %if.then.i.i190.i879
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_240:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i881
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_242
# %bb.241:                              # %if.then.i.i197.i883
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i885
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_244
# %bb.243:                              # %if.then.i.i204.i887
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_244:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i889
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_246
# %bb.245:                              # %if.then.i.i211.i891
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_246:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i893
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_248
# %bb.247:                              # %if.then.i.i218.i895
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_248:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i897
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_250
# %bb.249:                              # %if.then.i.i225.i899
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_250:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i901
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_252
# %bb.251:                              # %if.then.i.i232.i903
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_252:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i905
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_254
# %bb.253:                              # %if.then.i.i239.i907
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_254:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i909
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_256
# %bb.255:                              # %if.then.i.i246.i911
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_256:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i913
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_258
# %bb.257:                              # %if.then.i.i253.i915
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_258:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_260
# %bb.259:                              # %if.then.i.i260.i918
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_260:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_262
# %bb.261:                              # %if.then.i.i267.i921
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_262:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_264
# %bb.263:                              # %if.then.i.i274.i924
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_264:                              # %__cxx_global_var_init.27.exit
	pcalau12i	$a0, %pc_hi20(dummy67)
	st.w	$fp, $a0, %pc_lo12(dummy67)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 51
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.w	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.w	$a2, $a0, 47
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp262:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp263:                               # EH_LABEL
# %bb.265:                              # %invoke.cont4.i1014
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp265:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.266:                              # %call2.i5.i.noexc39.i1018
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp268:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.267:                              # %invoke.cont10.i1031
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp271:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.268:                              # %call2.i5.i.noexc51.i1035
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp274:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.269:                              # %invoke.cont17.i1048
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 632
.Ltmp277:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.270:                              # %call2.i5.i.noexc63.i1052
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp280:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.271:                              # %invoke.cont24.i1065
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp283:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.272:                              # %call2.i5.i.noexc75.i1069
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp286:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.273:                              # %invoke.cont31.i1082
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp289:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.274:                              # %call2.i5.i.noexc87.i1086
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp292:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.275:                              # %invoke.cont38.i1099
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp295:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.276:                              # %invoke.cont45.i1113
	addi.d	$s1, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 504
.Ltmp298:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.277:                              # %call2.i5.i.noexc111.i1117
	st.d	$a0, $sp, 536
	ld.d	$a1, $sp, 504
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$a3, $a2, %pc_lo12(.L.str.34)
	vld	$vr0, $a3, 0
	ld.w	$a2, $a3, 24
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.w	$a2, $a0, 24
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp301:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.278:                              # %invoke.cont52.i1130
	addi.d	$s1, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp304:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.279:                              # %call2.i5.i.noexc123.i1134
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp307:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.280:                              # %invoke.cont59.i1147
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp310:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.281:                              # %call2.i5.i.noexc135.i1151
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp313:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.282:                              # %invoke.cont66.i1164
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp316:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.283:                              # %call2.i5.i.noexc147.i1168
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp319:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.284:                              # %invoke.cont73.i1181
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp322:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.285:                              # %call2.i5.i.noexc159.i1185
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp325:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.286:                              # %invoke.cont80.i1198
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp328:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.287:                              # %call2.i5.i.noexc171.i1202
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp331:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.288:                              # %invoke.cont87.i1215
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp334:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.289:                              # %invoke.cont94.i1227
.Ltmp337:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.290:                              # %invoke.cont96.i1245
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_292
	.p2align	4, , 16
.LBB5_291:                              # %_ZN8TestCaseD2Ev.exit.i1270
                                        #   in Loop: Header=BB5_292 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s2, .LBB5_303
.LBB5_292:                              # %arraydestroy.body.i1246
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s4, $s1
	ld.d	$s0, $s7, 1224
	beqz	$s0, .LBB5_297
# %bb.293:                              # %if.then.i.i.i.i1251
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_295
# %bb.294:                              # %if.then.i.i.i.i187.i1364
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	bne	$a1, $a0, .LBB5_298
	b	.LBB5_299
	.p2align	4, , 16
.LBB5_295:                              # %if.end.i.i.i.i.i1254
                                        #   in Loop: Header=BB5_292 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_301
# %bb.296:                              # %if.then.i.i.i.i.i.i1256
                                        #   in Loop: Header=BB5_292 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_302
	.p2align	4, , 16
.LBB5_297:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1261
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	beq	$a1, $a0, .LBB5_299
.LBB5_298:                              # %if.then.i.i2.i.i1264
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_299:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1266
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a0, $s7, 1144
	addi.d	$a1, $s7, 1160
	beq	$a1, $a0, .LBB5_291
# %bb.300:                              # %if.then.i.i4.i.i1268
                                        #   in Loop: Header=BB5_292 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_291
.LBB5_301:                              # %if.else.i.i.i.i.i.i1363
                                        #   in Loop: Header=BB5_292 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_297
.LBB5_302:                              # %if.then7.i.i.i.i.i1362
                                        #   in Loop: Header=BB5_292 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	bne	$a1, $a0, .LBB5_298
	b	.LBB5_299
.LBB5_303:                              # %arraydestroy.done97.i1272
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_305
# %bb.304:                              # %if.then.i.i188.i1274
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_305:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1276
	ld.d	$a0, $sp, 376
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_307
# %bb.306:                              # %if.then.i.i190.i1278
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_307:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i1280
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_309
# %bb.308:                              # %if.then.i.i197.i1282
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_309:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i1284
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_311
# %bb.310:                              # %if.then.i.i204.i1286
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_311:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i1288
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_313
# %bb.312:                              # %if.then.i.i211.i1290
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_313:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i1292
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_315
# %bb.314:                              # %if.then.i.i218.i1294
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_315:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i1296
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_317
# %bb.316:                              # %if.then.i.i225.i1298
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_317:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i1300
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_319
# %bb.318:                              # %if.then.i.i232.i1302
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_319:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i1304
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_321
# %bb.320:                              # %if.then.i.i239.i1306
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_321:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i1308
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_323
# %bb.322:                              # %if.then.i.i246.i1310
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_323:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i1312
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_325
# %bb.324:                              # %if.then.i.i253.i1314
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_325:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i1316
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_327
# %bb.326:                              # %if.then.i.i260.i1318
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_327:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i1320
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_329
# %bb.328:                              # %if.then.i.i267.i1322
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_329:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i1324
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_331
# %bb.330:                              # %if.then.i.i274.i1326
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_331:                              # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(dummy82)
	st.w	$fp, $a0, %pc_lo12(dummy82)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 51
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.w	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.w	$a2, $a0, 47
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp340:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.332:                              # %invoke.cont4.i1418
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp343:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.333:                              # %call2.i5.i.noexc39.i1422
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp346:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.334:                              # %invoke.cont10.i1435
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp349:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.335:                              # %call2.i5.i.noexc51.i1439
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp352:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp353:                               # EH_LABEL
# %bb.336:                              # %invoke.cont17.i1452
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 632
.Ltmp355:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.337:                              # %call2.i5.i.noexc63.i1456
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp358:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.338:                              # %invoke.cont24.i1469
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp361:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.339:                              # %call2.i5.i.noexc75.i1473
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp364:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.340:                              # %invoke.cont31.i1486
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp367:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.341:                              # %call2.i5.i.noexc87.i1490
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp370:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.342:                              # %invoke.cont38.i1503
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp373:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.343:                              # %invoke.cont45.i1517
	addi.d	$s1, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 504
.Ltmp376:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.344:                              # %call2.i5.i.noexc111.i1521
	st.d	$a0, $sp, 536
	ld.d	$a1, $sp, 504
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a3, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a3, 0
	ld.w	$a2, $a3, 24
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a2, $a0, 24
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp379:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.345:                              # %invoke.cont52.i1534
	addi.d	$s1, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp382:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp383:                               # EH_LABEL
# %bb.346:                              # %call2.i5.i.noexc123.i1538
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp385:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.347:                              # %invoke.cont59.i1551
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp388:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.348:                              # %call2.i5.i.noexc135.i1555
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp391:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.349:                              # %invoke.cont66.i1568
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp394:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.350:                              # %call2.i5.i.noexc147.i1572
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp397:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.351:                              # %invoke.cont73.i1585
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp400:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.352:                              # %call2.i5.i.noexc159.i1589
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp403:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.353:                              # %invoke.cont80.i1602
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp406:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.354:                              # %call2.i5.i.noexc171.i1606
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp409:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.355:                              # %invoke.cont87.i1619
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp412:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.356:                              # %invoke.cont94.i1631
.Ltmp415:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.357:                              # %invoke.cont96.i1649
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_359
	.p2align	4, , 16
.LBB5_358:                              # %_ZN8TestCaseD2Ev.exit.i1674
                                        #   in Loop: Header=BB5_359 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s2, .LBB5_370
.LBB5_359:                              # %arraydestroy.body.i1650
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s4, $s1
	ld.d	$s0, $s7, 1224
	beqz	$s0, .LBB5_364
# %bb.360:                              # %if.then.i.i.i.i1655
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_362
# %bb.361:                              # %if.then.i.i.i.i187.i1768
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	bne	$a1, $a0, .LBB5_365
	b	.LBB5_366
	.p2align	4, , 16
.LBB5_362:                              # %if.end.i.i.i.i.i1658
                                        #   in Loop: Header=BB5_359 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_368
# %bb.363:                              # %if.then.i.i.i.i.i.i1660
                                        #   in Loop: Header=BB5_359 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_369
	.p2align	4, , 16
.LBB5_364:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1665
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	beq	$a1, $a0, .LBB5_366
.LBB5_365:                              # %if.then.i.i2.i.i1668
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_366:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1670
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a0, $s7, 1144
	addi.d	$a1, $s7, 1160
	beq	$a1, $a0, .LBB5_358
# %bb.367:                              # %if.then.i.i4.i.i1672
                                        #   in Loop: Header=BB5_359 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_358
.LBB5_368:                              # %if.else.i.i.i.i.i.i1767
                                        #   in Loop: Header=BB5_359 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_364
.LBB5_369:                              # %if.then7.i.i.i.i.i1766
                                        #   in Loop: Header=BB5_359 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 1184
	addi.d	$a1, $s7, 1200
	bne	$a1, $a0, .LBB5_365
	b	.LBB5_366
.LBB5_370:                              # %arraydestroy.done97.i1676
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_372
# %bb.371:                              # %if.then.i.i188.i1678
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_372:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1680
	ld.d	$a0, $sp, 376
	addi.d	$s5, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_374
# %bb.373:                              # %if.then.i.i190.i1682
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_374:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i1684
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_376
# %bb.375:                              # %if.then.i.i197.i1686
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_376:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i1688
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_378
# %bb.377:                              # %if.then.i.i204.i1690
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_378:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i1692
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_380
# %bb.379:                              # %if.then.i.i211.i1694
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_380:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i1696
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_382
# %bb.381:                              # %if.then.i.i218.i1698
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_382:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i1700
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_384
# %bb.383:                              # %if.then.i.i225.i1702
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_384:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i1704
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_386
# %bb.385:                              # %if.then.i.i232.i1706
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_386:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i1708
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_388
# %bb.387:                              # %if.then.i.i239.i1710
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_388:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i1712
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_390
# %bb.389:                              # %if.then.i.i246.i1714
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_390:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i1716
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_392
# %bb.391:                              # %if.then.i.i253.i1718
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_392:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i1720
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_394
# %bb.393:                              # %if.then.i.i260.i1722
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_394:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i1724
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_396
# %bb.395:                              # %if.then.i.i267.i1726
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_396:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i1728
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_398
# %bb.397:                              # %if.then.i.i274.i1730
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_398:                              # %__cxx_global_var_init.35.exit
	pcalau12i	$a0, %pc_hi20(dummy97)
	st.w	$fp, $a0, %pc_lo12(dummy97)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$s1, $a2, %pc_lo12(.L.str.39)
	xvld	$xr0, $s1, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $s1, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp418:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.399:                              # %invoke.cont4.i1789
.Ltmp421:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.400:                              # %invoke.cont6.i1794
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_405
# %bb.401:                              # %if.then.i.i.i.i1797
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_403
# %bb.402:                              # %if.then.i.i.i.i5.i1831
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_406
	b	.LBB5_407
.LBB5_403:                              # %if.end.i.i.i.i.i1800
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1012
# %bb.404:                              # %if.then.i.i.i.i.i.i1802
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1013
.LBB5_405:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1807
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_407
.LBB5_406:                              # %if.then.i.i2.i.i1810
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_407:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1812
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_409
# %bb.408:                              # %if.then.i.i4.i.i1814
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_409:                              # %_ZN8TestCaseD2Ev.exit.i1816
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_411
# %bb.410:                              # %if.then.i.i6.i1818
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_411:                              # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(dummy98)
	st.w	$fp, $a0, %pc_lo12(dummy98)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 48
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	xvld	$xr0, $s1, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $s1, 32
	vst	$vr0, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp424:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
# %bb.412:                              # %invoke.cont4.i1852
.Ltmp427:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
	addi.d	$s1, $sp, 776
# %bb.413:                              # %invoke.cont6.i1857
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_418
# %bb.414:                              # %if.then.i.i.i.i1860
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_416
# %bb.415:                              # %if.then.i.i.i.i5.i1894
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_419
	b	.LBB5_420
.LBB5_416:                              # %if.end.i.i.i.i.i1863
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1014
# %bb.417:                              # %if.then.i.i.i.i.i.i1865
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1015
.LBB5_418:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1870
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_420
.LBB5_419:                              # %if.then.i.i2.i.i1873
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_420:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1875
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_422
# %bb.421:                              # %if.then.i.i4.i.i1877
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_422:                              # %_ZN8TestCaseD2Ev.exit.i1879
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_424
# %bb.423:                              # %if.then.i.i6.i1881
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_424:                              # %__cxx_global_var_init.40.exit
	pcalau12i	$a0, %pc_hi20(dummy99)
	st.w	$fp, $a0, %pc_lo12(dummy99)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 53
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.42)
	addi.d	$a2, $a2, %pc_lo12(.L.str.42)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 45
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 45
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp430:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.425:                              # %invoke.cont4.i1915
.Ltmp433:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.426:                              # %invoke.cont6.i1920
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_431
# %bb.427:                              # %if.then.i.i.i.i1923
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_429
# %bb.428:                              # %if.then.i.i.i.i5.i1957
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_432
	b	.LBB5_433
.LBB5_429:                              # %if.end.i.i.i.i.i1926
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1016
# %bb.430:                              # %if.then.i.i.i.i.i.i1928
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1017
.LBB5_431:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1933
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_433
.LBB5_432:                              # %if.then.i.i2.i.i1936
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_433:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1938
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_435
# %bb.434:                              # %if.then.i.i4.i.i1940
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_435:                              # %_ZN8TestCaseD2Ev.exit.i1942
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_437
# %bb.436:                              # %if.then.i.i6.i1944
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_437:                              # %__cxx_global_var_init.41.exit
	pcalau12i	$a0, %pc_hi20(dummy101)
	st.w	$fp, $a0, %pc_lo12(dummy101)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 55
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 47
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp436:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.438:                              # %invoke.cont4.i1978
.Ltmp439:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
# %bb.439:                              # %invoke.cont6.i1983
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_444
# %bb.440:                              # %if.then.i.i.i.i1986
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_442
# %bb.441:                              # %if.then.i.i.i.i5.i2020
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_445
	b	.LBB5_446
.LBB5_442:                              # %if.end.i.i.i.i.i1989
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1018
# %bb.443:                              # %if.then.i.i.i.i.i.i1991
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1019
.LBB5_444:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1996
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_446
.LBB5_445:                              # %if.then.i.i2.i.i1999
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_446:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2001
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_448
# %bb.447:                              # %if.then.i.i4.i.i2003
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_448:                              # %_ZN8TestCaseD2Ev.exit.i2005
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_450
# %bb.449:                              # %if.then.i.i6.i2007
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_450:                              # %__cxx_global_var_init.43.exit
	pcalau12i	$a0, %pc_hi20(dummy103)
	st.w	$fp, $a0, %pc_lo12(dummy103)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 55
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a2, $a2, %pc_lo12(.L.str.46)
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 47
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp442:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.451:                              # %invoke.cont4.i2041
.Ltmp445:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.452:                              # %invoke.cont6.i2046
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_457
# %bb.453:                              # %if.then.i.i.i.i2049
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_455
# %bb.454:                              # %if.then.i.i.i.i5.i2083
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_458
	b	.LBB5_459
.LBB5_455:                              # %if.end.i.i.i.i.i2052
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1020
# %bb.456:                              # %if.then.i.i.i.i.i.i2054
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1021
.LBB5_457:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2059
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_459
.LBB5_458:                              # %if.then.i.i2.i.i2062
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_459:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2064
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_461
# %bb.460:                              # %if.then.i.i4.i.i2066
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_461:                              # %_ZN8TestCaseD2Ev.exit.i2068
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_463
# %bb.462:                              # %if.then.i.i6.i2070
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_463:                              # %__cxx_global_var_init.45.exit
	pcalau12i	$a0, %pc_hi20(dummy105)
	st.w	$fp, $a0, %pc_lo12(dummy105)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 760
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 1992
.Ltmp448:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.464:                              # %call2.i5.i.noexc.i2098
	ld.d	$a1, $sp, 1992
	pcalau12i	$a2, %pc_hi20(.L.str.48)
	addi.d	$a2, $a2, %pc_lo12(.L.str.48)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	st.d	$a0, $sp, 760
	st.d	$a1, $sp, 776
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 760
	st.d	$a1, $sp, 768
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp451:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.465:                              # %invoke.cont3.i2108
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL22BM_ImplicitRepetitionsRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp453:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.466:                              # %invoke.cont4.i2111
	move	$fp, $a0
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_468
# %bb.467:                              # %if.then.i.i3.i2113
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_468:                              # %__cxx_global_var_init.47.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 40
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.50)
	addi.d	$s4, $a2, %pc_lo12(.L.str.50)
	xvld	$xr0, $s4, 0
	ld.d	$s1, $s4, 32
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp456:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.469:                              # %invoke.cont4.i2133
.Ltmp459:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.470:                              # %invoke.cont6.i2138
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_475
# %bb.471:                              # %if.then.i.i.i.i2141
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_473
# %bb.472:                              # %if.then.i.i.i.i5.i2175
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_476
	b	.LBB5_477
.LBB5_473:                              # %if.end.i.i.i.i.i2144
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1022
# %bb.474:                              # %if.then.i.i.i.i.i.i2146
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1023
.LBB5_475:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2151
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_477
.LBB5_476:                              # %if.then.i.i2.i.i2154
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_477:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2156
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_479
# %bb.478:                              # %if.then.i.i4.i.i2158
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_479:                              # %_ZN8TestCaseD2Ev.exit.i2160
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_481
# %bb.480:                              # %if.then.i.i6.i2162
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_481:                              # %__cxx_global_var_init.49.exit
	pcalau12i	$a0, %pc_hi20(dummy117)
	st.w	$fp, $a0, %pc_lo12(dummy117)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 40
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	xvld	$xr0, $s4, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp462:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.482:                              # %invoke.cont4.i2196
.Ltmp465:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.483:                              # %invoke.cont6.i2201
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_488
# %bb.484:                              # %if.then.i.i.i.i2204
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_486
# %bb.485:                              # %if.then.i.i.i.i5.i2238
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_489
	b	.LBB5_490
.LBB5_486:                              # %if.end.i.i.i.i.i2207
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1024
# %bb.487:                              # %if.then.i.i.i.i.i.i2209
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1025
.LBB5_488:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2214
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_490
.LBB5_489:                              # %if.then.i.i2.i.i2217
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_490:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2219
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_492
# %bb.491:                              # %if.then.i.i4.i.i2221
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_492:                              # %_ZN8TestCaseD2Ev.exit.i2223
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_494
# %bb.493:                              # %if.then.i.i6.i2225
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_494:                              # %__cxx_global_var_init.51.exit
	pcalau12i	$a0, %pc_hi20(dummy118)
	st.w	$fp, $a0, %pc_lo12(dummy118)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 40
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	xvld	$xr0, $s4, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp468:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.495:                              # %invoke.cont4.i2259
.Ltmp471:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
	addi.d	$s1, $sp, 776
# %bb.496:                              # %invoke.cont6.i2264
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_501
# %bb.497:                              # %if.then.i.i.i.i2267
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_499
# %bb.498:                              # %if.then.i.i.i.i5.i2301
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_502
	b	.LBB5_503
.LBB5_499:                              # %if.end.i.i.i.i.i2270
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1026
# %bb.500:                              # %if.then.i.i.i.i.i.i2272
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1027
.LBB5_501:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2277
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_503
.LBB5_502:                              # %if.then.i.i2.i.i2280
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_503:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2282
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_505
# %bb.504:                              # %if.then.i.i4.i.i2284
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_505:                              # %_ZN8TestCaseD2Ev.exit.i2286
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_507
# %bb.506:                              # %if.then.i.i6.i2288
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_507:                              # %__cxx_global_var_init.52.exit
	pcalau12i	$a0, %pc_hi20(dummy119)
	st.w	$fp, $a0, %pc_lo12(dummy119)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp474:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.508:                              # %invoke.cont4.i2322
.Ltmp477:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.509:                              # %invoke.cont6.i2327
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_514
# %bb.510:                              # %if.then.i.i.i.i2330
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_512
# %bb.511:                              # %if.then.i.i.i.i5.i2364
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_515
	b	.LBB5_516
.LBB5_512:                              # %if.end.i.i.i.i.i2333
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1028
# %bb.513:                              # %if.then.i.i.i.i.i.i2335
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1029
.LBB5_514:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2340
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_516
.LBB5_515:                              # %if.then.i.i2.i.i2343
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_516:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2345
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_518
# %bb.517:                              # %if.then.i.i4.i.i2347
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_518:                              # %_ZN8TestCaseD2Ev.exit.i2349
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_520
# %bb.519:                              # %if.then.i.i6.i2351
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_520:                              # %__cxx_global_var_init.53.exit
	pcalau12i	$a0, %pc_hi20(dummy120)
	st.w	$fp, $a0, %pc_lo12(dummy120)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 47
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.56)
	addi.d	$a2, $a2, %pc_lo12(.L.str.56)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 39
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 39
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp480:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.521:                              # %invoke.cont4.i2385
.Ltmp483:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.522:                              # %invoke.cont6.i2390
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_527
# %bb.523:                              # %if.then.i.i.i.i2393
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_525
# %bb.524:                              # %if.then.i.i.i.i5.i2427
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_528
	b	.LBB5_529
.LBB5_525:                              # %if.end.i.i.i.i.i2396
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1030
# %bb.526:                              # %if.then.i.i.i.i.i.i2398
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1031
.LBB5_527:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2403
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_529
.LBB5_528:                              # %if.then.i.i2.i.i2406
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_529:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2408
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_531
# %bb.530:                              # %if.then.i.i4.i.i2410
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_531:                              # %_ZN8TestCaseD2Ev.exit.i2412
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_533
# %bb.532:                              # %if.then.i.i6.i2414
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_533:                              # %__cxx_global_var_init.55.exit
	pcalau12i	$a0, %pc_hi20(dummy121)
	st.w	$fp, $a0, %pc_lo12(dummy121)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 47
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.58)
	addi.d	$a2, $a2, %pc_lo12(.L.str.58)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 39
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 39
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp486:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.534:                              # %invoke.cont4.i2448
.Ltmp489:                               # EH_LABEL
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.535:                              # %invoke.cont6.i2453
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_540
# %bb.536:                              # %if.then.i.i.i.i2456
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_538
# %bb.537:                              # %if.then.i.i.i.i5.i2490
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_541
	b	.LBB5_542
.LBB5_538:                              # %if.end.i.i.i.i.i2459
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1032
# %bb.539:                              # %if.then.i.i.i.i.i.i2461
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1033
.LBB5_540:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2466
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_542
.LBB5_541:                              # %if.then.i.i2.i.i2469
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_542:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2471
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_544
# %bb.543:                              # %if.then.i.i4.i.i2473
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_544:                              # %_ZN8TestCaseD2Ev.exit.i2475
	ld.d	$a0, $sp, 1992
	beq	$a0, $s5, .LBB5_546
# %bb.545:                              # %if.then.i.i6.i2477
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_546:                              # %__cxx_global_var_init.57.exit
	pcalau12i	$a0, %pc_hi20(dummy122)
	st.w	$fp, $a0, %pc_lo12(dummy122)
	st.d	$s5, $sp, 1992
	ori	$a0, $zero, 34
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.60)
	addi.d	$a2, $a2, %pc_lo12(.L.str.60)
	xvld	$xr0, $a2, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 32
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.h	$a2, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp492:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.547:                              # %invoke.cont4.i2542
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp495:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.548:                              # %call2.i5.i.noexc37.i2546
	ld.d	$a1, $sp, 696
	pcalau12i	$a2, %pc_hi20(.L.str.61)
	addi.d	$a2, $a2, %pc_lo12(.L.str.61)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp498:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.549:                              # %invoke.cont10.i2559
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp501:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.550:                              # %call2.i5.i.noexc49.i2563
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp504:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.551:                              # %invoke.cont17.i2576
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp507:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.552:                              # %call2.i5.i.noexc61.i2580
	ld.d	$a1, $sp, 632
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	xvld	$xr0, $a2, 0
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 30
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp510:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.553:                              # %invoke.cont24.i2593
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp513:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.554:                              # %call2.i5.i.noexc73.i2597
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp516:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.555:                              # %invoke.cont31.i2610
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp519:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.556:                              # %call2.i5.i.noexc85.i2614
	ld.d	$a1, $sp, 568
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$a2, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp522:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.557:                              # %invoke.cont38.i2627
	addi.d	$s1, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 536
.Ltmp525:                               # EH_LABEL
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.558:                              # %call2.i5.i.noexc97.i2631
	ld.d	$a1, $sp, 536
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 568
	st.d	$a1, $sp, 584
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 568
	st.d	$a1, $sp, 576
	stx.b	$zero, $a0, $a1
.Ltmp528:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.559:                              # %invoke.cont45.i2644
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 552
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 558
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 544
	st.b	$zero, $sp, 566
.Ltmp531:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.560:                              # %invoke.cont52.i2658
	addi.d	$s5, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 472
.Ltmp534:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.561:                              # %call2.i5.i.noexc121.i2662
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp537:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.562:                              # %invoke.cont59.i2675
	addi.d	$s6, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 440
.Ltmp540:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.563:                              # %call2.i5.i.noexc133.i2679
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp543:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.564:                              # %invoke.cont66.i2692
	addi.d	$s7, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 408
.Ltmp546:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.565:                              # %call2.i5.i.noexc145.i2696
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp549:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.566:                              # %invoke.cont73.i2709
	addi.d	$s8, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 376
.Ltmp552:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.567:                              # %call2.i5.i.noexc157.i2713
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp555:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.568:                              # %invoke.cont80.i2726
	addi.d	$s1, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 392
	st.d	$fp, $sp, 384
.Ltmp558:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.569:                              # %invoke.cont87.i2738
.Ltmp561:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 13
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.570:                              # %invoke.cont89.i2755
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_572
	.p2align	4, , 16
.LBB5_571:                              # %_ZN8TestCaseD2Ev.exit.i2780
                                        #   in Loop: Header=BB5_572 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB5_583
.LBB5_572:                              # %arraydestroy.body.i2756
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s4, $s1
	ld.d	$s0, $s7, 1136
	beqz	$s0, .LBB5_577
# %bb.573:                              # %if.then.i.i.i.i2761
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_575
# %bb.574:                              # %if.then.i.i.i.i173.i2869
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_578
	b	.LBB5_579
	.p2align	4, , 16
.LBB5_575:                              # %if.end.i.i.i.i.i2764
                                        #   in Loop: Header=BB5_572 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_581
# %bb.576:                              # %if.then.i.i.i.i.i.i2766
                                        #   in Loop: Header=BB5_572 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_582
	.p2align	4, , 16
.LBB5_577:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2771
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	beq	$a1, $a0, .LBB5_579
.LBB5_578:                              # %if.then.i.i2.i.i2774
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_579:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2776
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a0, $s7, 1056
	addi.d	$a1, $s7, 1072
	beq	$a1, $a0, .LBB5_571
# %bb.580:                              # %if.then.i.i4.i.i2778
                                        #   in Loop: Header=BB5_572 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_571
.LBB5_581:                              # %if.else.i.i.i.i.i.i2868
                                        #   in Loop: Header=BB5_572 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_577
.LBB5_582:                              # %if.then7.i.i.i.i.i2867
                                        #   in Loop: Header=BB5_572 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_578
	b	.LBB5_579
.LBB5_583:                              # %arraydestroy.done90.i2782
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_585
# %bb.584:                              # %if.then.i.i174.i2784
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_585:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2786
	ld.d	$a0, $sp, 408
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_587
# %bb.586:                              # %if.then.i.i176.i2788
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_587:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i2790
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_589
# %bb.588:                              # %if.then.i.i183.i2792
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_589:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i2794
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_591
# %bb.590:                              # %if.then.i.i190.i2796
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_591:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i2798
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_593
# %bb.592:                              # %if.then.i.i197.i2800
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_593:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i2802
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_595
# %bb.594:                              # %if.then.i.i204.i2804
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_595:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i2806
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_597
# %bb.596:                              # %if.then.i.i211.i2808
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_597:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i2810
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_599
# %bb.598:                              # %if.then.i.i218.i2812
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_599:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i2814
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_601
# %bb.600:                              # %if.then.i.i225.i2816
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_601:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i2818
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_603
# %bb.602:                              # %if.then.i.i232.i2820
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_603:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i2822
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_605
# %bb.604:                              # %if.then.i.i239.i2824
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_605:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i2826
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_607
# %bb.606:                              # %if.then.i.i246.i2828
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_607:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i2830
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_609
# %bb.608:                              # %if.then.i.i253.i2832
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_609:                              # %__cxx_global_var_init.59.exit
	pcalau12i	$a0, %pc_hi20(dummy135)
	st.w	$fp, $a0, %pc_lo12(dummy135)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 34
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.h	$a2, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp564:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp565:                               # EH_LABEL
# %bb.610:                              # %invoke.cont4.i2921
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp567:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.611:                              # %call2.i5.i.noexc37.i2925
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp570:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.612:                              # %invoke.cont10.i2938
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp573:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.613:                              # %call2.i5.i.noexc49.i2942
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp576:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.614:                              # %invoke.cont17.i2955
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp579:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.615:                              # %call2.i5.i.noexc61.i2959
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp582:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.616:                              # %invoke.cont24.i2972
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp585:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.617:                              # %call2.i5.i.noexc73.i2976
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp588:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.618:                              # %invoke.cont31.i2989
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp591:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.619:                              # %call2.i5.i.noexc85.i2993
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp594:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
# %bb.620:                              # %invoke.cont38.i3006
	addi.d	$s1, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 536
.Ltmp597:                               # EH_LABEL
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.621:                              # %call2.i5.i.noexc97.i3010
	ld.d	$a1, $sp, 536
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 568
	st.d	$a1, $sp, 584
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 568
	st.d	$a1, $sp, 576
	stx.b	$zero, $a0, $a1
.Ltmp600:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.622:                              # %invoke.cont45.i3023
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 552
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 558
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 544
	st.b	$zero, $sp, 566
.Ltmp603:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.623:                              # %invoke.cont52.i3037
	addi.d	$s5, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 472
.Ltmp606:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.624:                              # %call2.i5.i.noexc121.i3041
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp609:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.625:                              # %invoke.cont59.i3054
	addi.d	$s6, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 440
.Ltmp612:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.626:                              # %call2.i5.i.noexc133.i3058
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp615:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.627:                              # %invoke.cont66.i3071
	addi.d	$s7, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 408
.Ltmp618:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.628:                              # %call2.i5.i.noexc145.i3075
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp621:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.629:                              # %invoke.cont73.i3088
	addi.d	$s8, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 376
.Ltmp624:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.630:                              # %call2.i5.i.noexc157.i3092
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp627:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.631:                              # %invoke.cont80.i3105
	addi.d	$s1, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 392
	st.d	$fp, $sp, 384
.Ltmp630:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.632:                              # %invoke.cont87.i3117
.Ltmp633:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 13
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.633:                              # %invoke.cont89.i3134
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_635
	.p2align	4, , 16
.LBB5_634:                              # %_ZN8TestCaseD2Ev.exit.i3159
                                        #   in Loop: Header=BB5_635 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB5_646
.LBB5_635:                              # %arraydestroy.body.i3135
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s4, $s1
	ld.d	$s0, $s7, 1136
	beqz	$s0, .LBB5_640
# %bb.636:                              # %if.then.i.i.i.i3140
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_638
# %bb.637:                              # %if.then.i.i.i.i173.i3248
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_641
	b	.LBB5_642
	.p2align	4, , 16
.LBB5_638:                              # %if.end.i.i.i.i.i3143
                                        #   in Loop: Header=BB5_635 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_644
# %bb.639:                              # %if.then.i.i.i.i.i.i3145
                                        #   in Loop: Header=BB5_635 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_645
	.p2align	4, , 16
.LBB5_640:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i3150
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	beq	$a1, $a0, .LBB5_642
.LBB5_641:                              # %if.then.i.i2.i.i3153
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_642:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i3155
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a0, $s7, 1056
	addi.d	$a1, $s7, 1072
	beq	$a1, $a0, .LBB5_634
# %bb.643:                              # %if.then.i.i4.i.i3157
                                        #   in Loop: Header=BB5_635 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_634
.LBB5_644:                              # %if.else.i.i.i.i.i.i3247
                                        #   in Loop: Header=BB5_635 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_640
.LBB5_645:                              # %if.then7.i.i.i.i.i3246
                                        #   in Loop: Header=BB5_635 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_641
	b	.LBB5_642
.LBB5_646:                              # %arraydestroy.done90.i3161
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_648
# %bb.647:                              # %if.then.i.i174.i3163
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_648:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i3165
	ld.d	$a0, $sp, 408
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_650
# %bb.649:                              # %if.then.i.i176.i3167
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_650:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i3169
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_652
# %bb.651:                              # %if.then.i.i183.i3171
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_652:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i3173
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_654
# %bb.653:                              # %if.then.i.i190.i3175
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_654:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i3177
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_656
# %bb.655:                              # %if.then.i.i197.i3179
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_656:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i3181
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_658
# %bb.657:                              # %if.then.i.i204.i3183
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_658:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i3185
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_660
# %bb.659:                              # %if.then.i.i211.i3187
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_660:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i3189
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_662
# %bb.661:                              # %if.then.i.i218.i3191
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_662:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i3193
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_664
# %bb.663:                              # %if.then.i.i225.i3195
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_664:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i3197
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_666
# %bb.665:                              # %if.then.i.i232.i3199
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_666:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i3201
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_668
# %bb.667:                              # %if.then.i.i239.i3203
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_668:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i3205
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_670
# %bb.669:                              # %if.then.i.i246.i3207
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_670:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i3209
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_672
# %bb.671:                              # %if.then.i.i253.i3211
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_672:                              # %__cxx_global_var_init.64.exit
	pcalau12i	$a0, %pc_hi20(dummy148)
	st.w	$fp, $a0, %pc_lo12(dummy148)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 34
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.h	$a2, $a0, 32
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp636:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.673:                              # %invoke.cont4.i3300
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp639:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.674:                              # %call2.i5.i.noexc37.i3304
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp642:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp643:                               # EH_LABEL
# %bb.675:                              # %invoke.cont10.i3317
	addi.d	$s1, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp645:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.676:                              # %call2.i5.i.noexc49.i3321
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp648:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
# %bb.677:                              # %invoke.cont17.i3334
	addi.d	$s1, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp651:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.678:                              # %call2.i5.i.noexc61.i3338
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp654:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp655:                               # EH_LABEL
# %bb.679:                              # %invoke.cont24.i3351
	addi.d	$s1, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp657:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.680:                              # %call2.i5.i.noexc73.i3355
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp660:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.681:                              # %invoke.cont31.i3368
	addi.d	$s1, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp663:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.682:                              # %call2.i5.i.noexc85.i3372
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp666:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.683:                              # %invoke.cont38.i3385
	addi.d	$s1, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 536
.Ltmp669:                               # EH_LABEL
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.684:                              # %call2.i5.i.noexc97.i3389
	ld.d	$a1, $sp, 536
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a2, $a2, %pc_lo12(.L.str.66)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 568
	st.d	$a1, $sp, 584
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 568
	st.d	$a1, $sp, 576
	stx.b	$zero, $a0, $a1
.Ltmp672:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.685:                              # %invoke.cont45.i3402
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 552
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 558
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 544
	st.b	$zero, $sp, 566
.Ltmp675:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.686:                              # %invoke.cont52.i3416
	addi.d	$s5, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 472
.Ltmp678:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.687:                              # %call2.i5.i.noexc121.i3420
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp681:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp682:                               # EH_LABEL
# %bb.688:                              # %invoke.cont59.i3433
	addi.d	$s6, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 440
.Ltmp684:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.689:                              # %call2.i5.i.noexc133.i3437
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp687:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.690:                              # %invoke.cont66.i3450
	addi.d	$s7, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 408
.Ltmp690:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.691:                              # %call2.i5.i.noexc145.i3454
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp693:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.692:                              # %invoke.cont73.i3467
	addi.d	$s8, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 376
.Ltmp696:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.693:                              # %call2.i5.i.noexc157.i3471
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp699:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.694:                              # %invoke.cont80.i3484
	addi.d	$s1, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 392
	st.d	$fp, $sp, 384
.Ltmp702:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.695:                              # %invoke.cont87.i3496
.Ltmp705:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 13
	addi.d	$s4, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.696:                              # %invoke.cont89.i3513
	move	$fp, $a0
	move	$s1, $zero
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB5_698
	.p2align	4, , 16
.LBB5_697:                              # %_ZN8TestCaseD2Ev.exit.i3538
                                        #   in Loop: Header=BB5_698 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB5_709
.LBB5_698:                              # %arraydestroy.body.i3514
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s4, $s1
	ld.d	$s0, $s7, 1136
	beqz	$s0, .LBB5_703
# %bb.699:                              # %if.then.i.i.i.i3519
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s6, .LBB5_701
# %bb.700:                              # %if.then.i.i.i.i173.i3627
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_704
	b	.LBB5_705
	.p2align	4, , 16
.LBB5_701:                              # %if.end.i.i.i.i.i3522
                                        #   in Loop: Header=BB5_698 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_707
# %bb.702:                              # %if.then.i.i.i.i.i.i3524
                                        #   in Loop: Header=BB5_698 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s5, .LBB5_708
	.p2align	4, , 16
.LBB5_703:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i3529
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	beq	$a1, $a0, .LBB5_705
.LBB5_704:                              # %if.then.i.i2.i.i3532
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_705:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i3534
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a0, $s7, 1056
	addi.d	$a1, $s7, 1072
	beq	$a1, $a0, .LBB5_697
# %bb.706:                              # %if.then.i.i4.i.i3536
                                        #   in Loop: Header=BB5_698 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_697
.LBB5_707:                              # %if.else.i.i.i.i.i.i3626
                                        #   in Loop: Header=BB5_698 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s5, .LBB5_703
.LBB5_708:                              # %if.then7.i.i.i.i.i3625
                                        #   in Loop: Header=BB5_698 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 1096
	addi.d	$a1, $s7, 1112
	bne	$a1, $a0, .LBB5_704
	b	.LBB5_705
.LBB5_709:                              # %arraydestroy.done90.i3540
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_711
# %bb.710:                              # %if.then.i.i174.i3542
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_711:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i3544
	ld.d	$a0, $sp, 408
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_713
# %bb.712:                              # %if.then.i.i176.i3546
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_713:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i3548
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_715
# %bb.714:                              # %if.then.i.i183.i3550
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_715:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i3552
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_717
# %bb.716:                              # %if.then.i.i190.i3554
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_717:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i3556
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_719
# %bb.718:                              # %if.then.i.i197.i3558
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_719:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i3560
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_721
# %bb.720:                              # %if.then.i.i204.i3562
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_721:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i3564
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_723
# %bb.722:                              # %if.then.i.i211.i3566
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_723:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i3568
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_725
# %bb.724:                              # %if.then.i.i218.i3570
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_725:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i3572
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_727
# %bb.726:                              # %if.then.i.i225.i3574
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_727:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i3576
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_729
# %bb.728:                              # %if.then.i.i232.i3578
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_729:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i3580
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_731
# %bb.730:                              # %if.then.i.i239.i3582
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_731:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i3584
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_733
# %bb.732:                              # %if.then.i.i246.i3586
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_733:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i3588
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_735
# %bb.734:                              # %if.then.i.i253.i3590
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_735:                              # %__cxx_global_var_init.65.exit
	pcalau12i	$a0, %pc_hi20(dummy161)
	st.w	$fp, $a0, %pc_lo12(dummy161)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.68)
	addi.d	$a2, $a2, %pc_lo12(.L.str.68)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 31
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp708:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.736:                              # %invoke.cont4.i3681
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp711:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
# %bb.737:                              # %call2.i5.i.noexc39.i3685
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp714:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.738:                              # %invoke.cont10.i3698
	addi.d	$fp, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp717:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.739:                              # %call2.i5.i.noexc51.i3702
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp720:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.740:                              # %invoke.cont17.i3715
	addi.d	$fp, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp723:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.741:                              # %call2.i5.i.noexc63.i3719
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp726:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp727:                               # EH_LABEL
# %bb.742:                              # %invoke.cont24.i3732
	addi.d	$fp, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp729:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.743:                              # %call2.i5.i.noexc75.i3736
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp732:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp733:                               # EH_LABEL
# %bb.744:                              # %invoke.cont31.i3749
	addi.d	$fp, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp735:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.745:                              # %call2.i5.i.noexc87.i3753
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp738:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.746:                              # %invoke.cont38.i3766
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp741:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.747:                              # %invoke.cont45.i3780
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 504
.Ltmp744:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp745:                               # EH_LABEL
# %bb.748:                              # %call2.i5.i.noexc111.i3784
	ld.d	$a1, $sp, 504
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp747:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp748:                               # EH_LABEL
# %bb.749:                              # %invoke.cont52.i3797
	addi.d	$s4, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp750:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.750:                              # %call2.i5.i.noexc123.i3801
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp753:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp754:                               # EH_LABEL
# %bb.751:                              # %invoke.cont59.i3814
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp756:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp757:                               # EH_LABEL
# %bb.752:                              # %call2.i5.i.noexc135.i3818
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp759:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.753:                              # %invoke.cont66.i3831
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp762:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp763:                               # EH_LABEL
# %bb.754:                              # %call2.i5.i.noexc147.i3835
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp765:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp766:                               # EH_LABEL
# %bb.755:                              # %invoke.cont73.i3848
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp768:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp769:                               # EH_LABEL
# %bb.756:                              # %call2.i5.i.noexc159.i3852
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp771:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp772:                               # EH_LABEL
# %bb.757:                              # %invoke.cont80.i3865
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp774:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp775:                               # EH_LABEL
# %bb.758:                              # %call2.i5.i.noexc171.i3869
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp777:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.759:                              # %invoke.cont87.i3882
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp780:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.760:                              # %invoke.cont94.i3894
.Ltmp783:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s3, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.761:                              # %invoke.cont96.i3912
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB5_763
	.p2align	4, , 16
.LBB5_762:                              # %_ZN8TestCaseD2Ev.exit.i3937
                                        #   in Loop: Header=BB5_763 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s2, .LBB5_774
.LBB5_763:                              # %arraydestroy.body.i3913
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s1
	ld.d	$s0, $s6, 1224
	beqz	$s0, .LBB5_768
# %bb.764:                              # %if.then.i.i.i.i3918
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB5_766
# %bb.765:                              # %if.then.i.i.i.i187.i4031
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_769
	b	.LBB5_770
	.p2align	4, , 16
.LBB5_766:                              # %if.end.i.i.i.i.i3921
                                        #   in Loop: Header=BB5_763 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_772
# %bb.767:                              # %if.then.i.i.i.i.i.i3923
                                        #   in Loop: Header=BB5_763 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB5_773
	.p2align	4, , 16
.LBB5_768:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i3928
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	beq	$a1, $a0, .LBB5_770
.LBB5_769:                              # %if.then.i.i2.i.i3931
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_770:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i3933
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a0, $s6, 1144
	addi.d	$a1, $s6, 1160
	beq	$a1, $a0, .LBB5_762
# %bb.771:                              # %if.then.i.i4.i.i3935
                                        #   in Loop: Header=BB5_763 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_762
.LBB5_772:                              # %if.else.i.i.i.i.i.i4030
                                        #   in Loop: Header=BB5_763 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB5_768
.LBB5_773:                              # %if.then7.i.i.i.i.i4029
                                        #   in Loop: Header=BB5_763 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_769
	b	.LBB5_770
.LBB5_774:                              # %arraydestroy.done97.i3939
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_776
# %bb.775:                              # %if.then.i.i188.i3941
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_776:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i3943
	ld.d	$a0, $sp, 376
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_778
# %bb.777:                              # %if.then.i.i190.i3945
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_778:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i3947
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_780
# %bb.779:                              # %if.then.i.i197.i3949
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_780:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i3951
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_782
# %bb.781:                              # %if.then.i.i204.i3953
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_782:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i3955
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_784
# %bb.783:                              # %if.then.i.i211.i3957
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_784:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i3959
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_786
# %bb.785:                              # %if.then.i.i218.i3961
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_786:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i3963
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_788
# %bb.787:                              # %if.then.i.i225.i3965
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_788:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i3967
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_790
# %bb.789:                              # %if.then.i.i232.i3969
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_790:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i3971
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_792
# %bb.791:                              # %if.then.i.i239.i3973
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_792:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i3975
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_794
# %bb.793:                              # %if.then.i.i246.i3977
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_794:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i3979
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_796
# %bb.795:                              # %if.then.i.i253.i3981
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_796:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i3983
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_798
# %bb.797:                              # %if.then.i.i260.i3985
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_798:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i3987
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_800
# %bb.799:                              # %if.then.i.i267.i3989
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_800:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i3991
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_802
# %bb.801:                              # %if.then.i.i274.i3993
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_802:                              # %__cxx_global_var_init.67.exit
	pcalau12i	$a0, %pc_hi20(dummy175)
	st.w	$fp, $a0, %pc_lo12(dummy175)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.70)
	addi.d	$a2, $a2, %pc_lo12(.L.str.70)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp786:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.803:                              # %invoke.cont4.i4085
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp789:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.804:                              # %call2.i5.i.noexc39.i4089
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp792:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp793:                               # EH_LABEL
# %bb.805:                              # %invoke.cont10.i4102
	addi.d	$fp, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp795:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.806:                              # %call2.i5.i.noexc51.i4106
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp798:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.807:                              # %invoke.cont17.i4119
	addi.d	$fp, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp801:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.808:                              # %call2.i5.i.noexc63.i4123
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp804:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp805:                               # EH_LABEL
# %bb.809:                              # %invoke.cont24.i4136
	addi.d	$fp, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp807:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp808:                               # EH_LABEL
# %bb.810:                              # %call2.i5.i.noexc75.i4140
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp810:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp811:                               # EH_LABEL
# %bb.811:                              # %invoke.cont31.i4153
	addi.d	$fp, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp813:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.812:                              # %call2.i5.i.noexc87.i4157
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp816:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp817:                               # EH_LABEL
# %bb.813:                              # %invoke.cont38.i4170
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp819:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp820:                               # EH_LABEL
# %bb.814:                              # %invoke.cont45.i4184
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 504
.Ltmp822:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp823:                               # EH_LABEL
# %bb.815:                              # %call2.i5.i.noexc111.i4188
	ld.d	$a1, $sp, 504
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a0, 24
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp825:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp826:                               # EH_LABEL
# %bb.816:                              # %invoke.cont52.i4201
	addi.d	$s4, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp828:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp829:                               # EH_LABEL
# %bb.817:                              # %call2.i5.i.noexc123.i4205
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp831:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp832:                               # EH_LABEL
# %bb.818:                              # %invoke.cont59.i4218
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp834:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp835:                               # EH_LABEL
# %bb.819:                              # %call2.i5.i.noexc135.i4222
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp837:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp838:                               # EH_LABEL
# %bb.820:                              # %invoke.cont66.i4235
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp840:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
# %bb.821:                              # %call2.i5.i.noexc147.i4239
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp843:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp844:                               # EH_LABEL
# %bb.822:                              # %invoke.cont73.i4252
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp846:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp847:                               # EH_LABEL
# %bb.823:                              # %call2.i5.i.noexc159.i4256
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp849:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp850:                               # EH_LABEL
# %bb.824:                              # %invoke.cont80.i4269
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp852:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp853:                               # EH_LABEL
# %bb.825:                              # %call2.i5.i.noexc171.i4273
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp855:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp856:                               # EH_LABEL
# %bb.826:                              # %invoke.cont87.i4286
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp858:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp859:                               # EH_LABEL
# %bb.827:                              # %invoke.cont94.i4298
.Ltmp861:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s3, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp862:                               # EH_LABEL
# %bb.828:                              # %invoke.cont96.i4316
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB5_830
	.p2align	4, , 16
.LBB5_829:                              # %_ZN8TestCaseD2Ev.exit.i4341
                                        #   in Loop: Header=BB5_830 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s2, .LBB5_841
.LBB5_830:                              # %arraydestroy.body.i4317
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s1
	ld.d	$s0, $s6, 1224
	beqz	$s0, .LBB5_835
# %bb.831:                              # %if.then.i.i.i.i4322
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB5_833
# %bb.832:                              # %if.then.i.i.i.i187.i4435
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_836
	b	.LBB5_837
	.p2align	4, , 16
.LBB5_833:                              # %if.end.i.i.i.i.i4325
                                        #   in Loop: Header=BB5_830 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_839
# %bb.834:                              # %if.then.i.i.i.i.i.i4327
                                        #   in Loop: Header=BB5_830 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB5_840
	.p2align	4, , 16
.LBB5_835:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i4332
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	beq	$a1, $a0, .LBB5_837
.LBB5_836:                              # %if.then.i.i2.i.i4335
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_837:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i4337
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a0, $s6, 1144
	addi.d	$a1, $s6, 1160
	beq	$a1, $a0, .LBB5_829
# %bb.838:                              # %if.then.i.i4.i.i4339
                                        #   in Loop: Header=BB5_830 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_829
.LBB5_839:                              # %if.else.i.i.i.i.i.i4434
                                        #   in Loop: Header=BB5_830 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB5_835
.LBB5_840:                              # %if.then7.i.i.i.i.i4433
                                        #   in Loop: Header=BB5_830 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_836
	b	.LBB5_837
.LBB5_841:                              # %arraydestroy.done97.i4343
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_843
# %bb.842:                              # %if.then.i.i188.i4345
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_843:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4347
	ld.d	$a0, $sp, 376
	addi.d	$s0, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_845
# %bb.844:                              # %if.then.i.i190.i4349
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_845:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i4351
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_847
# %bb.846:                              # %if.then.i.i197.i4353
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_847:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i4355
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_849
# %bb.848:                              # %if.then.i.i204.i4357
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_849:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i4359
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_851
# %bb.850:                              # %if.then.i.i211.i4361
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_851:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i4363
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_853
# %bb.852:                              # %if.then.i.i218.i4365
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_853:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i4367
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_855
# %bb.854:                              # %if.then.i.i225.i4369
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_855:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i4371
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_857
# %bb.856:                              # %if.then.i.i232.i4373
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_857:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i4375
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_859
# %bb.858:                              # %if.then.i.i239.i4377
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_859:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i4379
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_861
# %bb.860:                              # %if.then.i.i246.i4381
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_861:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i4383
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_863
# %bb.862:                              # %if.then.i.i253.i4385
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_863:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i4387
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_865
# %bb.864:                              # %if.then.i.i260.i4389
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_865:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i4391
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_867
# %bb.866:                              # %if.then.i.i267.i4393
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_867:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i4395
	ld.d	$a0, $sp, 1992
	beq	$a0, $s0, .LBB5_869
# %bb.868:                              # %if.then.i.i274.i4397
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_869:                              # %__cxx_global_var_init.69.exit
	pcalau12i	$a0, %pc_hi20(dummy189)
	st.w	$fp, $a0, %pc_lo12(dummy189)
	st.d	$s0, $sp, 1992
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.72)
	addi.d	$a2, $a2, %pc_lo12(.L.str.72)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp864:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	addi.d	$s0, $sp, 760
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.870:                              # %invoke.cont4.i4489
	addi.d	$s0, $sp, 848
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 696
.Ltmp867:                               # EH_LABEL
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 696
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.871:                              # %call2.i5.i.noexc39.i4493
	ld.d	$a1, $sp, 696
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 728
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp870:                               # EH_LABEL
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.872:                              # %invoke.cont10.i4506
	addi.d	$fp, $sp, 936
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 664
.Ltmp873:                               # EH_LABEL
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.873:                              # %call2.i5.i.noexc51.i4510
	ld.d	$a1, $sp, 664
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 696
	st.d	$a1, $sp, 712
	xvst	$xr0, $a0, 0
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp876:                               # EH_LABEL
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.874:                              # %invoke.cont17.i4523
	addi.d	$fp, $sp, 1024
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 632
.Ltmp879:                               # EH_LABEL
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 632
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp880:                               # EH_LABEL
# %bb.875:                              # %call2.i5.i.noexc63.i4527
	ld.d	$a1, $sp, 632
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 664
	st.d	$a1, $sp, 680
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp882:                               # EH_LABEL
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.876:                              # %invoke.cont24.i4540
	addi.d	$fp, $sp, 1112
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 600
.Ltmp885:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 600
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp886:                               # EH_LABEL
# %bb.877:                              # %call2.i5.i.noexc75.i4544
	ld.d	$a1, $sp, 600
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp888:                               # EH_LABEL
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.878:                              # %invoke.cont31.i4557
	addi.d	$fp, $sp, 1200
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 568
.Ltmp891:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 568
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp892:                               # EH_LABEL
# %bb.879:                              # %call2.i5.i.noexc87.i4561
	ld.d	$a1, $sp, 568
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp894:                               # EH_LABEL
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.880:                              # %invoke.cont38.i4574
	addi.d	$fp, $sp, 1288
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $sp, 584
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $sp, 590
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 598
.Ltmp897:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp898:                               # EH_LABEL
# %bb.881:                              # %invoke.cont45.i4588
	addi.d	$fp, $sp, 1376
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 504
.Ltmp900:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.882:                              # %call2.i5.i.noexc111.i4592
	ld.d	$a1, $sp, 504
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 24
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp903:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp904:                               # EH_LABEL
# %bb.883:                              # %invoke.cont52.i4605
	addi.d	$s4, $sp, 1464
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 504
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp906:                               # EH_LABEL
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp907:                               # EH_LABEL
# %bb.884:                              # %call2.i5.i.noexc123.i4609
	ld.d	$a1, $sp, 472
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 504
	st.d	$a1, $sp, 520
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 504
	st.d	$a1, $sp, 512
	stx.b	$zero, $a0, $a1
.Ltmp909:                               # EH_LABEL
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp910:                               # EH_LABEL
# %bb.885:                              # %invoke.cont59.i4622
	addi.d	$s5, $sp, 1552
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 472
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 440
.Ltmp912:                               # EH_LABEL
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 440
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.886:                              # %call2.i5.i.noexc135.i4626
	ld.d	$a1, $sp, 440
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 472
	st.d	$a1, $sp, 488
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 472
	st.d	$a1, $sp, 480
	stx.b	$zero, $a0, $a1
.Ltmp915:                               # EH_LABEL
	addi.d	$a1, $sp, 472
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.887:                              # %invoke.cont66.i4639
	addi.d	$s6, $sp, 1640
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 408
.Ltmp918:                               # EH_LABEL
	addi.d	$a0, $sp, 440
	addi.d	$a1, $sp, 408
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.888:                              # %call2.i5.i.noexc147.i4643
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 440
	st.d	$a1, $sp, 456
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 440
	st.d	$a1, $sp, 448
	stx.b	$zero, $a0, $a1
.Ltmp921:                               # EH_LABEL
	addi.d	$a1, $sp, 440
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp922:                               # EH_LABEL
# %bb.889:                              # %invoke.cont73.i4656
	addi.d	$s7, $sp, 1728
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 376
.Ltmp924:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp925:                               # EH_LABEL
# %bb.890:                              # %call2.i5.i.noexc159.i4660
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp927:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp928:                               # EH_LABEL
# %bb.891:                              # %invoke.cont80.i4673
	addi.d	$s8, $sp, 1816
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 344
.Ltmp930:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.892:                              # %call2.i5.i.noexc171.i4677
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp933:                               # EH_LABEL
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.893:                              # %invoke.cont87.i4690
	addi.d	$s1, $sp, 1904
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 360
	st.d	$fp, $sp, 352
.Ltmp936:                               # EH_LABEL
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.894:                              # %invoke.cont94.i4702
.Ltmp939:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 14
	addi.d	$s3, $sp, 760
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp940:                               # EH_LABEL
# %bb.895:                              # %invoke.cont96.i4720
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB5_897
	.p2align	4, , 16
.LBB5_896:                              # %_ZN8TestCaseD2Ev.exit.i4745
                                        #   in Loop: Header=BB5_897 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s2, .LBB5_908
.LBB5_897:                              # %arraydestroy.body.i4721
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s1
	ld.d	$s0, $s6, 1224
	beqz	$s0, .LBB5_902
# %bb.898:                              # %if.then.i.i.i.i4726
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB5_900
# %bb.899:                              # %if.then.i.i.i.i187.i4839
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_903
	b	.LBB5_904
	.p2align	4, , 16
.LBB5_900:                              # %if.end.i.i.i.i.i4729
                                        #   in Loop: Header=BB5_897 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_906
# %bb.901:                              # %if.then.i.i.i.i.i.i4731
                                        #   in Loop: Header=BB5_897 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB5_907
	.p2align	4, , 16
.LBB5_902:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i4736
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	beq	$a1, $a0, .LBB5_904
.LBB5_903:                              # %if.then.i.i2.i.i4739
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_904:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i4741
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a0, $s6, 1144
	addi.d	$a1, $s6, 1160
	beq	$a1, $a0, .LBB5_896
# %bb.905:                              # %if.then.i.i4.i.i4743
                                        #   in Loop: Header=BB5_897 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_896
.LBB5_906:                              # %if.else.i.i.i.i.i.i4838
                                        #   in Loop: Header=BB5_897 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB5_902
.LBB5_907:                              # %if.then7.i.i.i.i.i4837
                                        #   in Loop: Header=BB5_897 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1184
	addi.d	$a1, $s6, 1200
	bne	$a1, $a0, .LBB5_903
	b	.LBB5_904
.LBB5_908:                              # %arraydestroy.done97.i4747
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_910
# %bb.909:                              # %if.then.i.i188.i4749
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_910:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4751
	ld.d	$a0, $sp, 376
	addi.d	$s3, $sp, 2008
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_912
# %bb.911:                              # %if.then.i.i190.i4753
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_912:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i4755
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_914
# %bb.913:                              # %if.then.i.i197.i4757
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_914:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i4759
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_916
# %bb.915:                              # %if.then.i.i204.i4761
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_916:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i4763
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_918
# %bb.917:                              # %if.then.i.i211.i4765
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_918:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i4767
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_920
# %bb.919:                              # %if.then.i.i218.i4769
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_920:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i4771
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_922
# %bb.921:                              # %if.then.i.i225.i4773
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_922:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i4775
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_924
# %bb.923:                              # %if.then.i.i232.i4777
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_924:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i4779
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_926
# %bb.925:                              # %if.then.i.i239.i4781
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_926:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i4783
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_928
# %bb.927:                              # %if.then.i.i246.i4785
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_928:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i4787
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_930
# %bb.929:                              # %if.then.i.i253.i4789
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_930:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i4791
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_932
# %bb.931:                              # %if.then.i.i260.i4793
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_932:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i4795
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_934
# %bb.933:                              # %if.then.i.i267.i4797
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_934:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i4799
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_936
# %bb.935:                              # %if.then.i.i274.i4801
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_936:                              # %__cxx_global_var_init.71.exit
	pcalau12i	$a0, %pc_hi20(dummy203)
	st.w	$fp, $a0, %pc_lo12(dummy203)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.74)
	addi.d	$s2, $a2, %pc_lo12(.L.str.74)
	xvld	$xr0, $s2, 0
	ld.d	$s1, $s2, 30
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 30
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp942:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.937:                              # %invoke.cont4.i4860
.Ltmp945:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp946:                               # EH_LABEL
# %bb.938:                              # %invoke.cont6.i4865
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_943
# %bb.939:                              # %if.then.i.i.i.i4868
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_941
# %bb.940:                              # %if.then.i.i.i.i5.i4902
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_944
	b	.LBB5_945
.LBB5_941:                              # %if.end.i.i.i.i.i4871
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1034
# %bb.942:                              # %if.then.i.i.i.i.i.i4873
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1035
.LBB5_943:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i4878
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_945
.LBB5_944:                              # %if.then.i.i2.i.i4881
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_945:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i4883
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB5_947
# %bb.946:                              # %if.then.i.i4.i.i4885
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_947:                              # %_ZN8TestCaseD2Ev.exit.i4887
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_949
# %bb.948:                              # %if.then.i.i6.i4889
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_949:                              # %__cxx_global_var_init.73.exit
	pcalau12i	$a0, %pc_hi20(dummy204)
	st.w	$fp, $a0, %pc_lo12(dummy204)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 728
	xvld	$xr0, $s2, 0
	st.d	$a0, $sp, 1992
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 30
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp948:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp949:                               # EH_LABEL
# %bb.950:                              # %invoke.cont4.i4923
.Ltmp951:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp952:                               # EH_LABEL
	addi.d	$s1, $sp, 776
# %bb.951:                              # %invoke.cont6.i4928
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_956
# %bb.952:                              # %if.then.i.i.i.i4931
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_954
# %bb.953:                              # %if.then.i.i.i.i5.i4965
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_957
	b	.LBB5_958
.LBB5_954:                              # %if.end.i.i.i.i.i4934
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1036
# %bb.955:                              # %if.then.i.i.i.i.i.i4936
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1037
.LBB5_956:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i4941
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_958
.LBB5_957:                              # %if.then.i.i2.i.i4944
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_958:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i4946
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_960
# %bb.959:                              # %if.then.i.i4.i.i4948
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_960:                              # %_ZN8TestCaseD2Ev.exit.i4950
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_962
# %bb.961:                              # %if.then.i.i6.i4952
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_962:                              # %__cxx_global_var_init.75.exit
	pcalau12i	$a0, %pc_hi20(dummy205)
	st.w	$fp, $a0, %pc_lo12(dummy205)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 43
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.77)
	addi.d	$a2, $a2, %pc_lo12(.L.str.77)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.w	$a2, $a2, 39
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.w	$a2, $a0, 39
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp954:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.963:                              # %invoke.cont4.i4986
.Ltmp957:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.964:                              # %invoke.cont6.i4991
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_969
# %bb.965:                              # %if.then.i.i.i.i4994
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_967
# %bb.966:                              # %if.then.i.i.i.i5.i5028
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_970
	b	.LBB5_971
.LBB5_967:                              # %if.end.i.i.i.i.i4997
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1038
# %bb.968:                              # %if.then.i.i.i.i.i.i4999
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1039
.LBB5_969:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i5004
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_971
.LBB5_970:                              # %if.then.i.i2.i.i5007
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_971:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i5009
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_973
# %bb.972:                              # %if.then.i.i4.i.i5011
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_973:                              # %_ZN8TestCaseD2Ev.exit.i5013
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_975
# %bb.974:                              # %if.then.i.i6.i5015
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_975:                              # %__cxx_global_var_init.76.exit
	pcalau12i	$a0, %pc_hi20(dummy206)
	st.w	$fp, $a0, %pc_lo12(dummy206)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.79)
	addi.d	$a2, $a2, %pc_lo12(.L.str.79)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp960:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.976:                              # %invoke.cont4.i5049
.Ltmp963:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.977:                              # %invoke.cont6.i5054
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_982
# %bb.978:                              # %if.then.i.i.i.i5057
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_980
# %bb.979:                              # %if.then.i.i.i.i5.i5091
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_983
	b	.LBB5_984
.LBB5_980:                              # %if.end.i.i.i.i.i5060
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1040
# %bb.981:                              # %if.then.i.i.i.i.i.i5062
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1041
.LBB5_982:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i5067
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_984
.LBB5_983:                              # %if.then.i.i2.i.i5070
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_984:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i5072
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_986
# %bb.985:                              # %if.then.i.i4.i.i5074
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_986:                              # %_ZN8TestCaseD2Ev.exit.i5076
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_988
# %bb.987:                              # %if.then.i.i6.i5078
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_988:                              # %__cxx_global_var_init.78.exit
	pcalau12i	$a0, %pc_hi20(dummy207)
	st.w	$fp, $a0, %pc_lo12(dummy207)
	st.d	$s3, $sp, 1992
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 728
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1992
	ld.d	$a1, $sp, 728
	pcalau12i	$a2, %pc_hi20(.L.str.81)
	addi.d	$a2, $a2, %pc_lo12(.L.str.81)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	st.d	$a1, $sp, 2008
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 2000
	stx.b	$zero, $a0, $a1
.Ltmp966:                               # EH_LABEL
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 1992
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.989:                              # %invoke.cont4.i5112
.Ltmp969:                               # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp970:                               # EH_LABEL
# %bb.990:                              # %invoke.cont6.i5117
	move	$fp, $a0
	ld.d	$s0, $sp, 840
	beqz	$s0, .LBB5_995
# %bb.991:                              # %if.then.i.i.i.i5120
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB5_993
# %bb.992:                              # %if.then.i.i.i.i5.i5154
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_996
	b	.LBB5_997
.LBB5_993:                              # %if.end.i.i.i.i.i5123
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_1042
# %bb.994:                              # %if.then.i.i.i.i.i.i5125
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_1043
.LBB5_995:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i5130
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	beq	$a0, $a1, .LBB5_997
.LBB5_996:                              # %if.then.i.i2.i.i5133
	ld.d	$a1, $sp, 816
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_997:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i5135
	ld.d	$a0, $sp, 760
	beq	$a0, $s1, .LBB5_999
# %bb.998:                              # %if.then.i.i4.i.i5137
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_999:                              # %_ZN8TestCaseD2Ev.exit.i5139
	ld.d	$a0, $sp, 1992
	beq	$a0, $s3, .LBB5_1001
# %bb.1000:                             # %if.then.i.i6.i5141
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1001:                             # %__cxx_global_var_init.80.exit
	pcalau12i	$a0, %pc_hi20(dummy208)
	st.w	$fp, $a0, %pc_lo12(dummy208)
	addi.d	$sp, $sp, 80
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB5_1002:                             # %if.else.i.i.i.i.i.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_13
.LBB5_1003:                             # %if.then7.i.i.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_14
	b	.LBB5_15
.LBB5_1004:                             # %if.else.i.i.i.i.i.i69
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_26
.LBB5_1005:                             # %if.then7.i.i.i.i.i68
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_27
	b	.LBB5_28
.LBB5_1006:                             # %if.else.i.i.i.i.i.i131
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_39
.LBB5_1007:                             # %if.then7.i.i.i.i.i130
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_40
	b	.LBB5_41
.LBB5_1008:                             # %if.else.i.i.i.i.i.i193
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_52
.LBB5_1009:                             # %if.then7.i.i.i.i.i192
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_53
	b	.LBB5_54
.LBB5_1010:                             # %if.else.i.i.i.i.i.i255
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_65
.LBB5_1011:                             # %if.then7.i.i.i.i.i254
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_66
	b	.LBB5_67
.LBB5_1012:                             # %if.else.i.i.i.i.i.i1830
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_405
.LBB5_1013:                             # %if.then7.i.i.i.i.i1829
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_406
	b	.LBB5_407
.LBB5_1014:                             # %if.else.i.i.i.i.i.i1893
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_418
.LBB5_1015:                             # %if.then7.i.i.i.i.i1892
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_419
	b	.LBB5_420
.LBB5_1016:                             # %if.else.i.i.i.i.i.i1956
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_431
.LBB5_1017:                             # %if.then7.i.i.i.i.i1955
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_432
	b	.LBB5_433
.LBB5_1018:                             # %if.else.i.i.i.i.i.i2019
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_444
.LBB5_1019:                             # %if.then7.i.i.i.i.i2018
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_445
	b	.LBB5_446
.LBB5_1020:                             # %if.else.i.i.i.i.i.i2082
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_457
.LBB5_1021:                             # %if.then7.i.i.i.i.i2081
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_458
	b	.LBB5_459
.LBB5_1022:                             # %if.else.i.i.i.i.i.i2174
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_475
.LBB5_1023:                             # %if.then7.i.i.i.i.i2173
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_476
	b	.LBB5_477
.LBB5_1024:                             # %if.else.i.i.i.i.i.i2237
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_488
.LBB5_1025:                             # %if.then7.i.i.i.i.i2236
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_489
	b	.LBB5_490
.LBB5_1026:                             # %if.else.i.i.i.i.i.i2300
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_501
.LBB5_1027:                             # %if.then7.i.i.i.i.i2299
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_502
	b	.LBB5_503
.LBB5_1028:                             # %if.else.i.i.i.i.i.i2363
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_514
.LBB5_1029:                             # %if.then7.i.i.i.i.i2362
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_515
	b	.LBB5_516
.LBB5_1030:                             # %if.else.i.i.i.i.i.i2426
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_527
.LBB5_1031:                             # %if.then7.i.i.i.i.i2425
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_528
	b	.LBB5_529
.LBB5_1032:                             # %if.else.i.i.i.i.i.i2489
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_540
.LBB5_1033:                             # %if.then7.i.i.i.i.i2488
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_541
	b	.LBB5_542
.LBB5_1034:                             # %if.else.i.i.i.i.i.i4901
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_943
.LBB5_1035:                             # %if.then7.i.i.i.i.i4900
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_944
	b	.LBB5_945
.LBB5_1036:                             # %if.else.i.i.i.i.i.i4964
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_956
.LBB5_1037:                             # %if.then7.i.i.i.i.i4963
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_957
	b	.LBB5_958
.LBB5_1038:                             # %if.else.i.i.i.i.i.i5027
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_969
.LBB5_1039:                             # %if.then7.i.i.i.i.i5026
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_970
	b	.LBB5_971
.LBB5_1040:                             # %if.else.i.i.i.i.i.i5090
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_982
.LBB5_1041:                             # %if.then7.i.i.i.i.i5089
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_983
	b	.LBB5_984
.LBB5_1042:                             # %if.else.i.i.i.i.i.i5153
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_995
.LBB5_1043:                             # %if.then7.i.i.i.i.i5152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 800
	addi.d	$a1, $sp, 816
	bne	$a0, $a1, .LBB5_996
	b	.LBB5_997
.LBB5_1044:                             # %lpad5.i5116
.Ltmp971:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1045:                             # %lpad3.i5103
.Ltmp968:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1046:                             # %lpad5.i5053
.Ltmp965:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1047:                             # %lpad3.i5040
.Ltmp962:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1048:                             # %lpad5.i4990
.Ltmp959:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1049:                             # %lpad3.i4977
.Ltmp956:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1050:                             # %lpad5.i4927
.Ltmp953:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1051:                             # %lpad3.i4914
.Ltmp950:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1052:                             # %lpad5.i4864
.Ltmp947:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1053:                             # %lpad3.i4851
.Ltmp944:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1054:                             # %lpad95.i4706
.Ltmp941:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1056
.LBB5_1055:                             # %lpad93.i4694
.Ltmp938:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1056:                             # %ehcleanup.i4695
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1058
# %bb.1057:                             # %if.then.i.i281.i4698
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1058:                             # %ehcleanup106.i4681
	move	$s8, $s1
	b	.LBB5_1060
.LBB5_1059:                             # %lpad86.i4680
.Ltmp935:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1060:                             # %ehcleanup106.i4681
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1063
# %bb.1061:                             # %if.then.i.i288.i4686
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1063
.LBB5_1062:                             # %lpad84.i4676
.Ltmp932:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1063:                             # %ehcleanup109.i4664
	move	$s7, $s8
	b	.LBB5_1065
.LBB5_1064:                             # %lpad79.i4663
.Ltmp929:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1065:                             # %ehcleanup109.i4664
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1068
# %bb.1066:                             # %if.then.i.i295.i4669
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1068
.LBB5_1067:                             # %lpad77.i4659
.Ltmp926:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1068:                             # %ehcleanup112.i4647
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1072
.LBB5_1069:                             # %if.then.i.i302.i4652
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1072
.LBB5_1070:                             # %lpad72.i4646
.Ltmp923:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1069
	b	.LBB5_1072
.LBB5_1071:                             # %lpad70.i4642
.Ltmp920:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1072:                             # %ehcleanup115.i4630
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1074
.LBB5_1073:                             # %if.then.i.i309.i4635
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1074:                             # %ehcleanup118.i4613
	move	$s4, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1076
.LBB5_1075:                             # %if.then.i.i316.i4618
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1076:                             # %ehcleanup121.i4596
	move	$s0, $s4
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1078
.LBB5_1077:                             # %if.then.i.i323.i4601
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1078:                             # %ehcleanup124.i4579
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1088
# %bb.1079:                             # %ehcleanup127.i4565
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1089
.LBB5_1080:                             # %ehcleanup130.i4548
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1090
.LBB5_1081:                             # %ehcleanup133.i4531
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1091
.LBB5_1082:                             # %ehcleanup136.i4514
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1092
.LBB5_1083:                             # %ehcleanup139.i4497
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1093
.LBB5_1084:                             # %ehcleanup142.i4472
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1086
.LBB5_1085:                             # %if.then.i.i372.i4477
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1086:                             # %ehcleanup143.i4479
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1087:                             # %arraydestroy.body146.i4482
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1087
	b	.LBB5_1723
.LBB5_1088:                             # %if.then.i.i330.i4584
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1080
.LBB5_1089:                             # %if.then.i.i337.i4570
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1081
.LBB5_1090:                             # %if.then.i.i344.i4553
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1082
.LBB5_1091:                             # %if.then.i.i351.i4536
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1083
.LBB5_1092:                             # %if.then.i.i358.i4519
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1084
.LBB5_1093:                             # %if.then.i.i365.i4502
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1085
	b	.LBB5_1086
.LBB5_1094:                             # %lpad65.i4629
.Ltmp917:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1073
	b	.LBB5_1074
.LBB5_1095:                             # %lpad63.i4625
.Ltmp914:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1074
.LBB5_1096:                             # %lpad58.i4612
.Ltmp911:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1075
	b	.LBB5_1076
.LBB5_1097:                             # %lpad56.i4608
.Ltmp908:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1076
.LBB5_1098:                             # %lpad51.i4595
.Ltmp905:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1077
	b	.LBB5_1078
.LBB5_1099:                             # %lpad49.i4591
.Ltmp902:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	b	.LBB5_1078
.LBB5_1100:                             # %lpad44.i4578
.Ltmp899:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1078
.LBB5_1101:                             # %lpad37.i4564
.Ltmp896:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1080
	b	.LBB5_1089
.LBB5_1102:                             # %lpad35.i4560
.Ltmp893:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1081
	b	.LBB5_1090
.LBB5_1103:                             # %lpad30.i4547
.Ltmp890:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1081
	b	.LBB5_1090
.LBB5_1104:                             # %lpad28.i4543
.Ltmp887:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1082
	b	.LBB5_1091
.LBB5_1105:                             # %lpad23.i4530
.Ltmp884:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1082
	b	.LBB5_1091
.LBB5_1106:                             # %lpad21.i4526
.Ltmp881:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1083
	b	.LBB5_1092
.LBB5_1107:                             # %lpad16.i4513
.Ltmp878:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1083
	b	.LBB5_1092
.LBB5_1108:                             # %lpad14.i4509
.Ltmp875:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1084
	b	.LBB5_1093
.LBB5_1109:                             # %lpad9.i4496
.Ltmp872:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1084
	b	.LBB5_1093
.LBB5_1110:                             # %lpad7.i4492
.Ltmp869:                               # EH_LABEL
	b	.LBB5_1112
.LBB5_1111:                             # %lpad3.i4471
.Ltmp866:                               # EH_LABEL
.LBB5_1112:                             # %ehcleanup142.i4472
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1085
	b	.LBB5_1086
.LBB5_1113:                             # %lpad95.i4302
.Ltmp863:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1115
.LBB5_1114:                             # %lpad93.i4290
.Ltmp860:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1115:                             # %ehcleanup.i4291
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1117
# %bb.1116:                             # %if.then.i.i281.i4294
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1117:                             # %ehcleanup106.i4277
	move	$s8, $s1
	b	.LBB5_1119
.LBB5_1118:                             # %lpad86.i4276
.Ltmp857:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1119:                             # %ehcleanup106.i4277
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1122
# %bb.1120:                             # %if.then.i.i288.i4282
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1122
.LBB5_1121:                             # %lpad84.i4272
.Ltmp854:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1122:                             # %ehcleanup109.i4260
	move	$s7, $s8
	b	.LBB5_1124
.LBB5_1123:                             # %lpad79.i4259
.Ltmp851:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1124:                             # %ehcleanup109.i4260
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1127
# %bb.1125:                             # %if.then.i.i295.i4265
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1127
.LBB5_1126:                             # %lpad77.i4255
.Ltmp848:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1127:                             # %ehcleanup112.i4243
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1131
.LBB5_1128:                             # %if.then.i.i302.i4248
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1131
.LBB5_1129:                             # %lpad72.i4242
.Ltmp845:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1128
	b	.LBB5_1131
.LBB5_1130:                             # %lpad70.i4238
.Ltmp842:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1131:                             # %ehcleanup115.i4226
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1133
.LBB5_1132:                             # %if.then.i.i309.i4231
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1133:                             # %ehcleanup118.i4209
	move	$s4, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1135
.LBB5_1134:                             # %if.then.i.i316.i4214
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1135:                             # %ehcleanup121.i4192
	move	$s0, $s4
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1137
.LBB5_1136:                             # %if.then.i.i323.i4197
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1137:                             # %ehcleanup124.i4175
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1147
# %bb.1138:                             # %ehcleanup127.i4161
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1148
.LBB5_1139:                             # %ehcleanup130.i4144
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1149
.LBB5_1140:                             # %ehcleanup133.i4127
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1150
.LBB5_1141:                             # %ehcleanup136.i4110
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1151
.LBB5_1142:                             # %ehcleanup139.i4093
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1152
.LBB5_1143:                             # %ehcleanup142.i4068
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1145
.LBB5_1144:                             # %if.then.i.i372.i4073
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1145:                             # %ehcleanup143.i4075
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1146:                             # %arraydestroy.body146.i4078
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1146
	b	.LBB5_1723
.LBB5_1147:                             # %if.then.i.i330.i4180
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1139
.LBB5_1148:                             # %if.then.i.i337.i4166
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1140
.LBB5_1149:                             # %if.then.i.i344.i4149
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1141
.LBB5_1150:                             # %if.then.i.i351.i4132
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1142
.LBB5_1151:                             # %if.then.i.i358.i4115
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1143
.LBB5_1152:                             # %if.then.i.i365.i4098
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1144
	b	.LBB5_1145
.LBB5_1153:                             # %lpad65.i4225
.Ltmp839:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1132
	b	.LBB5_1133
.LBB5_1154:                             # %lpad63.i4221
.Ltmp836:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1133
.LBB5_1155:                             # %lpad58.i4208
.Ltmp833:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1134
	b	.LBB5_1135
.LBB5_1156:                             # %lpad56.i4204
.Ltmp830:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1135
.LBB5_1157:                             # %lpad51.i4191
.Ltmp827:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1136
	b	.LBB5_1137
.LBB5_1158:                             # %lpad49.i4187
.Ltmp824:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	b	.LBB5_1137
.LBB5_1159:                             # %lpad44.i4174
.Ltmp821:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1137
.LBB5_1160:                             # %lpad37.i4160
.Ltmp818:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1139
	b	.LBB5_1148
.LBB5_1161:                             # %lpad35.i4156
.Ltmp815:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1140
	b	.LBB5_1149
.LBB5_1162:                             # %lpad30.i4143
.Ltmp812:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1140
	b	.LBB5_1149
.LBB5_1163:                             # %lpad28.i4139
.Ltmp809:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1141
	b	.LBB5_1150
.LBB5_1164:                             # %lpad23.i4126
.Ltmp806:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1141
	b	.LBB5_1150
.LBB5_1165:                             # %lpad21.i4122
.Ltmp803:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1142
	b	.LBB5_1151
.LBB5_1166:                             # %lpad16.i4109
.Ltmp800:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1142
	b	.LBB5_1151
.LBB5_1167:                             # %lpad14.i4105
.Ltmp797:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1143
	b	.LBB5_1152
.LBB5_1168:                             # %lpad9.i4092
.Ltmp794:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1143
	b	.LBB5_1152
.LBB5_1169:                             # %lpad7.i4088
.Ltmp791:                               # EH_LABEL
	b	.LBB5_1171
.LBB5_1170:                             # %lpad3.i4067
.Ltmp788:                               # EH_LABEL
.LBB5_1171:                             # %ehcleanup142.i4068
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1144
	b	.LBB5_1145
.LBB5_1172:                             # %lpad95.i3898
.Ltmp785:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1174
.LBB5_1173:                             # %lpad93.i3886
.Ltmp782:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1174:                             # %ehcleanup.i3887
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1176
# %bb.1175:                             # %if.then.i.i281.i3890
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1176:                             # %ehcleanup106.i3873
	move	$s8, $s1
	b	.LBB5_1178
.LBB5_1177:                             # %lpad86.i3872
.Ltmp779:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1178:                             # %ehcleanup106.i3873
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1181
# %bb.1179:                             # %if.then.i.i288.i3878
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1181
.LBB5_1180:                             # %lpad84.i3868
.Ltmp776:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1181:                             # %ehcleanup109.i3856
	move	$s7, $s8
	b	.LBB5_1183
.LBB5_1182:                             # %lpad79.i3855
.Ltmp773:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1183:                             # %ehcleanup109.i3856
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1186
# %bb.1184:                             # %if.then.i.i295.i3861
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1186
.LBB5_1185:                             # %lpad77.i3851
.Ltmp770:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1186:                             # %ehcleanup112.i3839
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1190
.LBB5_1187:                             # %if.then.i.i302.i3844
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1190
.LBB5_1188:                             # %lpad72.i3838
.Ltmp767:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1187
	b	.LBB5_1190
.LBB5_1189:                             # %lpad70.i3834
.Ltmp764:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1190:                             # %ehcleanup115.i3822
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1192
.LBB5_1191:                             # %if.then.i.i309.i3827
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1192:                             # %ehcleanup118.i3805
	move	$s4, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1194
.LBB5_1193:                             # %if.then.i.i316.i3810
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1194:                             # %ehcleanup121.i3788
	move	$s0, $s4
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1196
.LBB5_1195:                             # %if.then.i.i323.i3793
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1196:                             # %ehcleanup124.i3771
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1206
# %bb.1197:                             # %ehcleanup127.i3757
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1207
.LBB5_1198:                             # %ehcleanup130.i3740
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1208
.LBB5_1199:                             # %ehcleanup133.i3723
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1209
.LBB5_1200:                             # %ehcleanup136.i3706
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1210
.LBB5_1201:                             # %ehcleanup139.i3689
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1211
.LBB5_1202:                             # %ehcleanup142.i3664
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1204
.LBB5_1203:                             # %if.then.i.i372.i3669
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1204:                             # %ehcleanup143.i3671
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1205:                             # %arraydestroy.body146.i3674
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1205
	b	.LBB5_1723
.LBB5_1206:                             # %if.then.i.i330.i3776
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1198
.LBB5_1207:                             # %if.then.i.i337.i3762
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1199
.LBB5_1208:                             # %if.then.i.i344.i3745
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1200
.LBB5_1209:                             # %if.then.i.i351.i3728
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1201
.LBB5_1210:                             # %if.then.i.i358.i3711
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1202
.LBB5_1211:                             # %if.then.i.i365.i3694
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1203
	b	.LBB5_1204
.LBB5_1212:                             # %lpad65.i3821
.Ltmp761:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1191
	b	.LBB5_1192
.LBB5_1213:                             # %lpad63.i3817
.Ltmp758:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1192
.LBB5_1214:                             # %lpad58.i3804
.Ltmp755:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1193
	b	.LBB5_1194
.LBB5_1215:                             # %lpad56.i3800
.Ltmp752:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1194
.LBB5_1216:                             # %lpad51.i3787
.Ltmp749:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1195
	b	.LBB5_1196
.LBB5_1217:                             # %lpad49.i3783
.Ltmp746:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	b	.LBB5_1196
.LBB5_1218:                             # %lpad44.i3770
.Ltmp743:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1196
.LBB5_1219:                             # %lpad37.i3756
.Ltmp740:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1198
	b	.LBB5_1207
.LBB5_1220:                             # %lpad35.i3752
.Ltmp737:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1199
	b	.LBB5_1208
.LBB5_1221:                             # %lpad30.i3739
.Ltmp734:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1199
	b	.LBB5_1208
.LBB5_1222:                             # %lpad28.i3735
.Ltmp731:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1200
	b	.LBB5_1209
.LBB5_1223:                             # %lpad23.i3722
.Ltmp728:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1200
	b	.LBB5_1209
.LBB5_1224:                             # %lpad21.i3718
.Ltmp725:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1201
	b	.LBB5_1210
.LBB5_1225:                             # %lpad16.i3705
.Ltmp722:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1201
	b	.LBB5_1210
.LBB5_1226:                             # %lpad14.i3701
.Ltmp719:                               # EH_LABEL
	move	$s2, $zero
	move	$s0, $fp
	move	$fp, $a0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1202
	b	.LBB5_1211
.LBB5_1227:                             # %lpad9.i3688
.Ltmp716:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1202
	b	.LBB5_1211
.LBB5_1228:                             # %lpad7.i3684
.Ltmp713:                               # EH_LABEL
	b	.LBB5_1230
.LBB5_1229:                             # %lpad3.i3663
.Ltmp710:                               # EH_LABEL
.LBB5_1230:                             # %ehcleanup142.i3664
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1203
	b	.LBB5_1204
.LBB5_1231:                             # %lpad88.i3500
.Ltmp707:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1233
.LBB5_1232:                             # %lpad86.i3488
.Ltmp704:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1233:                             # %ehcleanup.i3489
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1235
# %bb.1234:                             # %if.then.i.i260.i3492
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1235:                             # %ehcleanup99.i3475
	move	$s8, $s1
	b	.LBB5_1237
.LBB5_1236:                             # %lpad79.i3474
.Ltmp701:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1237:                             # %ehcleanup99.i3475
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1240
# %bb.1238:                             # %if.then.i.i267.i3480
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1240
.LBB5_1239:                             # %lpad77.i3470
.Ltmp698:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1240:                             # %ehcleanup102.i3458
	move	$s7, $s8
	b	.LBB5_1242
.LBB5_1241:                             # %lpad72.i3457
.Ltmp695:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1242:                             # %ehcleanup102.i3458
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1245
# %bb.1243:                             # %if.then.i.i274.i3463
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1245
.LBB5_1244:                             # %lpad70.i3453
.Ltmp692:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1245:                             # %ehcleanup105.i3441
	move	$s6, $s7
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1249
.LBB5_1246:                             # %if.then.i.i281.i3446
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1249
.LBB5_1247:                             # %lpad65.i3440
.Ltmp689:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1246
	b	.LBB5_1249
.LBB5_1248:                             # %lpad63.i3436
.Ltmp686:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1249:                             # %ehcleanup108.i3424
	move	$s5, $s6
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1251
.LBB5_1250:                             # %if.then.i.i288.i3429
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1251:                             # %ehcleanup111.i3407
	move	$s0, $s5
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1253
.LBB5_1252:                             # %if.then.i.i295.i3412
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1253:                             # %ehcleanup114.i3393
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1263
# %bb.1254:                             # %ehcleanup117.i3376
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1264
.LBB5_1255:                             # %ehcleanup120.i3359
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1265
.LBB5_1256:                             # %ehcleanup123.i3342
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1266
.LBB5_1257:                             # %ehcleanup126.i3325
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1267
.LBB5_1258:                             # %ehcleanup129.i3308
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1268
.LBB5_1259:                             # %ehcleanup132.i3283
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1261
.LBB5_1260:                             # %if.then.i.i344.i3288
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1261:                             # %ehcleanup133.i3290
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1262:                             # %arraydestroy.body136.i3293
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1262
	b	.LBB5_1723
.LBB5_1263:                             # %if.then.i.i302.i3398
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1255
.LBB5_1264:                             # %if.then.i.i309.i3381
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1256
.LBB5_1265:                             # %if.then.i.i316.i3364
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1257
.LBB5_1266:                             # %if.then.i.i323.i3347
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1258
.LBB5_1267:                             # %if.then.i.i330.i3330
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1259
.LBB5_1268:                             # %if.then.i.i337.i3313
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1260
	b	.LBB5_1261
.LBB5_1269:                             # %lpad58.i3423
.Ltmp683:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1250
	b	.LBB5_1251
.LBB5_1270:                             # %lpad56.i3419
.Ltmp680:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1251
.LBB5_1271:                             # %lpad51.i3406
.Ltmp677:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1252
	b	.LBB5_1253
.LBB5_1272:                             # %lpad44.i3392
.Ltmp674:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1253
.LBB5_1273:                             # %lpad42.i3388
.Ltmp671:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1255
	b	.LBB5_1264
.LBB5_1274:                             # %lpad37.i3375
.Ltmp668:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1255
	b	.LBB5_1264
.LBB5_1275:                             # %lpad35.i3371
.Ltmp665:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1256
	b	.LBB5_1265
.LBB5_1276:                             # %lpad30.i3358
.Ltmp662:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1256
	b	.LBB5_1265
.LBB5_1277:                             # %lpad28.i3354
.Ltmp659:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1257
	b	.LBB5_1266
.LBB5_1278:                             # %lpad23.i3341
.Ltmp656:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1257
	b	.LBB5_1266
.LBB5_1279:                             # %lpad21.i3337
.Ltmp653:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1258
	b	.LBB5_1267
.LBB5_1280:                             # %lpad16.i3324
.Ltmp650:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1258
	b	.LBB5_1267
.LBB5_1281:                             # %lpad14.i3320
.Ltmp647:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1259
	b	.LBB5_1268
.LBB5_1282:                             # %lpad9.i3307
.Ltmp644:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1259
	b	.LBB5_1268
.LBB5_1283:                             # %lpad7.i3303
.Ltmp641:                               # EH_LABEL
	b	.LBB5_1285
.LBB5_1284:                             # %lpad3.i3282
.Ltmp638:                               # EH_LABEL
.LBB5_1285:                             # %ehcleanup132.i3283
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1260
	b	.LBB5_1261
.LBB5_1286:                             # %lpad88.i3121
.Ltmp635:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1288
.LBB5_1287:                             # %lpad86.i3109
.Ltmp632:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1288:                             # %ehcleanup.i3110
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1290
# %bb.1289:                             # %if.then.i.i260.i3113
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1290:                             # %ehcleanup99.i3096
	move	$s8, $s1
	b	.LBB5_1292
.LBB5_1291:                             # %lpad79.i3095
.Ltmp629:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1292:                             # %ehcleanup99.i3096
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1295
# %bb.1293:                             # %if.then.i.i267.i3101
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1295
.LBB5_1294:                             # %lpad77.i3091
.Ltmp626:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1295:                             # %ehcleanup102.i3079
	move	$s7, $s8
	b	.LBB5_1297
.LBB5_1296:                             # %lpad72.i3078
.Ltmp623:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1297:                             # %ehcleanup102.i3079
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1300
# %bb.1298:                             # %if.then.i.i274.i3084
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1300
.LBB5_1299:                             # %lpad70.i3074
.Ltmp620:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1300:                             # %ehcleanup105.i3062
	move	$s6, $s7
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1304
.LBB5_1301:                             # %if.then.i.i281.i3067
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1304
.LBB5_1302:                             # %lpad65.i3061
.Ltmp617:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1301
	b	.LBB5_1304
.LBB5_1303:                             # %lpad63.i3057
.Ltmp614:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1304:                             # %ehcleanup108.i3045
	move	$s5, $s6
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1306
.LBB5_1305:                             # %if.then.i.i288.i3050
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1306:                             # %ehcleanup111.i3028
	move	$s0, $s5
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1308
.LBB5_1307:                             # %if.then.i.i295.i3033
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1308:                             # %ehcleanup114.i3014
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1318
# %bb.1309:                             # %ehcleanup117.i2997
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1319
.LBB5_1310:                             # %ehcleanup120.i2980
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1320
.LBB5_1311:                             # %ehcleanup123.i2963
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1321
.LBB5_1312:                             # %ehcleanup126.i2946
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1322
.LBB5_1313:                             # %ehcleanup129.i2929
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1323
.LBB5_1314:                             # %ehcleanup132.i2904
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1316
.LBB5_1315:                             # %if.then.i.i344.i2909
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1316:                             # %ehcleanup133.i2911
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1317:                             # %arraydestroy.body136.i2914
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1317
	b	.LBB5_1723
.LBB5_1318:                             # %if.then.i.i302.i3019
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1310
.LBB5_1319:                             # %if.then.i.i309.i3002
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1311
.LBB5_1320:                             # %if.then.i.i316.i2985
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1312
.LBB5_1321:                             # %if.then.i.i323.i2968
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1313
.LBB5_1322:                             # %if.then.i.i330.i2951
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1314
.LBB5_1323:                             # %if.then.i.i337.i2934
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1315
	b	.LBB5_1316
.LBB5_1324:                             # %lpad58.i3044
.Ltmp611:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1305
	b	.LBB5_1306
.LBB5_1325:                             # %lpad56.i3040
.Ltmp608:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1306
.LBB5_1326:                             # %lpad51.i3027
.Ltmp605:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1307
	b	.LBB5_1308
.LBB5_1327:                             # %lpad44.i3013
.Ltmp602:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1308
.LBB5_1328:                             # %lpad42.i3009
.Ltmp599:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1310
	b	.LBB5_1319
.LBB5_1329:                             # %lpad37.i2996
.Ltmp596:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1310
	b	.LBB5_1319
.LBB5_1330:                             # %lpad35.i2992
.Ltmp593:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1311
	b	.LBB5_1320
.LBB5_1331:                             # %lpad30.i2979
.Ltmp590:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1311
	b	.LBB5_1320
.LBB5_1332:                             # %lpad28.i2975
.Ltmp587:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1312
	b	.LBB5_1321
.LBB5_1333:                             # %lpad23.i2962
.Ltmp584:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1312
	b	.LBB5_1321
.LBB5_1334:                             # %lpad21.i2958
.Ltmp581:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1313
	b	.LBB5_1322
.LBB5_1335:                             # %lpad16.i2945
.Ltmp578:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1313
	b	.LBB5_1322
.LBB5_1336:                             # %lpad14.i2941
.Ltmp575:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1314
	b	.LBB5_1323
.LBB5_1337:                             # %lpad9.i2928
.Ltmp572:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1314
	b	.LBB5_1323
.LBB5_1338:                             # %lpad7.i2924
.Ltmp569:                               # EH_LABEL
	b	.LBB5_1340
.LBB5_1339:                             # %lpad3.i2903
.Ltmp566:                               # EH_LABEL
.LBB5_1340:                             # %ehcleanup132.i2904
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1315
	b	.LBB5_1316
.LBB5_1341:                             # %lpad88.i2742
.Ltmp563:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1343
.LBB5_1342:                             # %lpad86.i2730
.Ltmp560:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1343:                             # %ehcleanup.i2731
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1345
# %bb.1344:                             # %if.then.i.i260.i2734
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1345:                             # %ehcleanup99.i2717
	move	$s8, $s1
	b	.LBB5_1347
.LBB5_1346:                             # %lpad79.i2716
.Ltmp557:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1347:                             # %ehcleanup99.i2717
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1350
# %bb.1348:                             # %if.then.i.i267.i2722
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1350
.LBB5_1349:                             # %lpad77.i2712
.Ltmp554:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1350:                             # %ehcleanup102.i2700
	move	$s7, $s8
	b	.LBB5_1352
.LBB5_1351:                             # %lpad72.i2699
.Ltmp551:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1352:                             # %ehcleanup102.i2700
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1355
# %bb.1353:                             # %if.then.i.i274.i2705
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1355
.LBB5_1354:                             # %lpad70.i2695
.Ltmp548:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1355:                             # %ehcleanup105.i2683
	move	$s6, $s7
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1359
.LBB5_1356:                             # %if.then.i.i281.i2688
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1359
.LBB5_1357:                             # %lpad65.i2682
.Ltmp545:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1356
	b	.LBB5_1359
.LBB5_1358:                             # %lpad63.i2678
.Ltmp542:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1359:                             # %ehcleanup108.i2666
	move	$s5, $s6
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1361
.LBB5_1360:                             # %if.then.i.i288.i2671
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1361:                             # %ehcleanup111.i2649
	move	$s0, $s5
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1363
.LBB5_1362:                             # %if.then.i.i295.i2654
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1363:                             # %ehcleanup114.i2635
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1373
# %bb.1364:                             # %ehcleanup117.i2618
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1374
.LBB5_1365:                             # %ehcleanup120.i2601
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1375
.LBB5_1366:                             # %ehcleanup123.i2584
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1376
.LBB5_1367:                             # %ehcleanup126.i2567
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1377
.LBB5_1368:                             # %ehcleanup129.i2550
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1378
.LBB5_1369:                             # %ehcleanup132.i2525
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1371
.LBB5_1370:                             # %if.then.i.i344.i2530
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1371:                             # %ehcleanup133.i2532
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1372:                             # %arraydestroy.body136.i2535
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1372
	b	.LBB5_1723
.LBB5_1373:                             # %if.then.i.i302.i2640
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1365
.LBB5_1374:                             # %if.then.i.i309.i2623
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1366
.LBB5_1375:                             # %if.then.i.i316.i2606
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1367
.LBB5_1376:                             # %if.then.i.i323.i2589
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1368
.LBB5_1377:                             # %if.then.i.i330.i2572
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1369
.LBB5_1378:                             # %if.then.i.i337.i2555
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1370
	b	.LBB5_1371
.LBB5_1379:                             # %lpad58.i2665
.Ltmp539:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1360
	b	.LBB5_1361
.LBB5_1380:                             # %lpad56.i2661
.Ltmp536:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1361
.LBB5_1381:                             # %lpad51.i2648
.Ltmp533:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1362
	b	.LBB5_1363
.LBB5_1382:                             # %lpad44.i2634
.Ltmp530:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1363
.LBB5_1383:                             # %lpad42.i2630
.Ltmp527:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1365
	b	.LBB5_1374
.LBB5_1384:                             # %lpad37.i2617
.Ltmp524:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1365
	b	.LBB5_1374
.LBB5_1385:                             # %lpad35.i2613
.Ltmp521:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1366
	b	.LBB5_1375
.LBB5_1386:                             # %lpad30.i2600
.Ltmp518:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1366
	b	.LBB5_1375
.LBB5_1387:                             # %lpad28.i2596
.Ltmp515:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1367
	b	.LBB5_1376
.LBB5_1388:                             # %lpad23.i2583
.Ltmp512:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1367
	b	.LBB5_1376
.LBB5_1389:                             # %lpad21.i2579
.Ltmp509:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1368
	b	.LBB5_1377
.LBB5_1390:                             # %lpad16.i2566
.Ltmp506:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1368
	b	.LBB5_1377
.LBB5_1391:                             # %lpad14.i2562
.Ltmp503:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1369
	b	.LBB5_1378
.LBB5_1392:                             # %lpad9.i2549
.Ltmp500:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1369
	b	.LBB5_1378
.LBB5_1393:                             # %lpad7.i2545
.Ltmp497:                               # EH_LABEL
	b	.LBB5_1395
.LBB5_1394:                             # %lpad3.i2524
.Ltmp494:                               # EH_LABEL
.LBB5_1395:                             # %ehcleanup132.i2525
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1370
	b	.LBB5_1371
.LBB5_1396:                             # %lpad5.i2452
.Ltmp491:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1397:                             # %lpad3.i2439
.Ltmp488:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1398:                             # %lpad5.i2389
.Ltmp485:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1399:                             # %lpad3.i2376
.Ltmp482:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1400:                             # %lpad5.i2326
.Ltmp479:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1401:                             # %lpad3.i2313
.Ltmp476:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1402:                             # %lpad5.i2263
.Ltmp473:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1403:                             # %lpad3.i2250
.Ltmp470:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1404:                             # %lpad5.i2200
.Ltmp467:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1405:                             # %lpad3.i2187
.Ltmp464:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1406:                             # %lpad5.i2137
.Ltmp461:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1407:                             # %lpad3.i2124
.Ltmp458:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1408:                             # %ehcleanup.thread.i2093
.Ltmp450:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_1730
.LBB5_1409:                             # %lpad5.i2045
.Ltmp447:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1410:                             # %lpad3.i2032
.Ltmp444:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1411:                             # %lpad5.i1982
.Ltmp441:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1412:                             # %lpad3.i1969
.Ltmp438:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1413:                             # %lpad5.i1919
.Ltmp435:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1414:                             # %lpad3.i1906
.Ltmp432:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1415:                             # %lpad5.i1856
.Ltmp429:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1416:                             # %lpad3.i1843
.Ltmp426:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1417:                             # %lpad5.i1793
.Ltmp423:                               # EH_LABEL
	b	.LBB5_1720
.LBB5_1418:                             # %lpad3.i1780
.Ltmp420:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1419:                             # %lpad95.i1635
.Ltmp417:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1464
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1421
.LBB5_1420:                             # %lpad93.i1623
.Ltmp414:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1421:                             # %ehcleanup.i1624
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1423
# %bb.1422:                             # %if.then.i.i281.i1627
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1423:                             # %ehcleanup106.i1610
	move	$s8, $s1
	b	.LBB5_1425
.LBB5_1424:                             # %lpad86.i1609
.Ltmp411:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1425:                             # %ehcleanup106.i1610
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1428
# %bb.1426:                             # %if.then.i.i288.i1615
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1428
.LBB5_1427:                             # %lpad84.i1605
.Ltmp408:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1428:                             # %ehcleanup109.i1593
	move	$s7, $s8
	b	.LBB5_1430
.LBB5_1429:                             # %lpad79.i1592
.Ltmp405:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1430:                             # %ehcleanup109.i1593
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1433
# %bb.1431:                             # %if.then.i.i295.i1598
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1433
.LBB5_1432:                             # %lpad77.i1588
.Ltmp402:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1433:                             # %ehcleanup112.i1576
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1437
.LBB5_1434:                             # %if.then.i.i302.i1581
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1437
.LBB5_1435:                             # %lpad72.i1575
.Ltmp399:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1434
	b	.LBB5_1437
.LBB5_1436:                             # %lpad70.i1571
.Ltmp396:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1437:                             # %ehcleanup115.i1559
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1439
.LBB5_1438:                             # %if.then.i.i309.i1564
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1439:                             # %ehcleanup118.i1542
	move	$s0, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1441
.LBB5_1440:                             # %if.then.i.i316.i1547
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1441:                             # %ehcleanup121.i1525
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1452
# %bb.1442:                             # %ehcleanup124.i1508
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1453
.LBB5_1443:                             # %ehcleanup127.i1494
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1454
.LBB5_1444:                             # %ehcleanup130.i1477
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1455
.LBB5_1445:                             # %ehcleanup133.i1460
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1456
.LBB5_1446:                             # %ehcleanup136.i1443
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1457
.LBB5_1447:                             # %ehcleanup139.i1426
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1458
.LBB5_1448:                             # %ehcleanup142.i1401
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1450
.LBB5_1449:                             # %if.then.i.i372.i1406
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1450:                             # %ehcleanup143.i1408
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1451:                             # %arraydestroy.body146.i1411
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1451
	b	.LBB5_1723
.LBB5_1452:                             # %if.then.i.i323.i1530
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1443
.LBB5_1453:                             # %if.then.i.i330.i1513
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1444
.LBB5_1454:                             # %if.then.i.i337.i1499
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1445
.LBB5_1455:                             # %if.then.i.i344.i1482
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1446
.LBB5_1456:                             # %if.then.i.i351.i1465
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1447
.LBB5_1457:                             # %if.then.i.i358.i1448
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1448
.LBB5_1458:                             # %if.then.i.i365.i1431
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1449
	b	.LBB5_1450
.LBB5_1459:                             # %lpad65.i1558
.Ltmp393:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1438
	b	.LBB5_1439
.LBB5_1460:                             # %lpad63.i1554
.Ltmp390:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1439
.LBB5_1461:                             # %lpad58.i1541
.Ltmp387:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1440
	b	.LBB5_1441
.LBB5_1462:                             # %lpad56.i1537
.Ltmp384:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	b	.LBB5_1441
.LBB5_1463:                             # %lpad51.i1524
.Ltmp381:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1441
.LBB5_1464:                             # %lpad49.i1520
.Ltmp378:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1443
	b	.LBB5_1453
.LBB5_1465:                             # %lpad44.i1507
.Ltmp375:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1443
	b	.LBB5_1453
.LBB5_1466:                             # %lpad37.i1493
.Ltmp372:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1444
	b	.LBB5_1454
.LBB5_1467:                             # %lpad35.i1489
.Ltmp369:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1445
	b	.LBB5_1455
.LBB5_1468:                             # %lpad30.i1476
.Ltmp366:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1445
	b	.LBB5_1455
.LBB5_1469:                             # %lpad28.i1472
.Ltmp363:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1446
	b	.LBB5_1456
.LBB5_1470:                             # %lpad23.i1459
.Ltmp360:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1446
	b	.LBB5_1456
.LBB5_1471:                             # %lpad21.i1455
.Ltmp357:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1447
	b	.LBB5_1457
.LBB5_1472:                             # %lpad16.i1442
.Ltmp354:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1447
	b	.LBB5_1457
.LBB5_1473:                             # %lpad14.i1438
.Ltmp351:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1448
	b	.LBB5_1458
.LBB5_1474:                             # %lpad9.i1425
.Ltmp348:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1448
	b	.LBB5_1458
.LBB5_1475:                             # %lpad7.i1421
.Ltmp345:                               # EH_LABEL
	b	.LBB5_1477
.LBB5_1476:                             # %lpad3.i1400
.Ltmp342:                               # EH_LABEL
.LBB5_1477:                             # %ehcleanup142.i1401
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1449
	b	.LBB5_1450
.LBB5_1478:                             # %lpad95.i1231
.Ltmp339:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1464
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1480
.LBB5_1479:                             # %lpad93.i1219
.Ltmp336:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1480:                             # %ehcleanup.i1220
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1482
# %bb.1481:                             # %if.then.i.i281.i1223
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1482:                             # %ehcleanup106.i1206
	move	$s8, $s1
	b	.LBB5_1484
.LBB5_1483:                             # %lpad86.i1205
.Ltmp333:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1484:                             # %ehcleanup106.i1206
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1487
# %bb.1485:                             # %if.then.i.i288.i1211
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1487
.LBB5_1486:                             # %lpad84.i1201
.Ltmp330:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1487:                             # %ehcleanup109.i1189
	move	$s7, $s8
	b	.LBB5_1489
.LBB5_1488:                             # %lpad79.i1188
.Ltmp327:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1489:                             # %ehcleanup109.i1189
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1492
# %bb.1490:                             # %if.then.i.i295.i1194
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1492
.LBB5_1491:                             # %lpad77.i1184
.Ltmp324:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1492:                             # %ehcleanup112.i1172
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1496
.LBB5_1493:                             # %if.then.i.i302.i1177
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1496
.LBB5_1494:                             # %lpad72.i1171
.Ltmp321:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1493
	b	.LBB5_1496
.LBB5_1495:                             # %lpad70.i1167
.Ltmp318:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1496:                             # %ehcleanup115.i1155
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1498
.LBB5_1497:                             # %if.then.i.i309.i1160
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1498:                             # %ehcleanup118.i1138
	move	$s0, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1500
.LBB5_1499:                             # %if.then.i.i316.i1143
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1500:                             # %ehcleanup121.i1121
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1511
# %bb.1501:                             # %ehcleanup124.i1104
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1512
.LBB5_1502:                             # %ehcleanup127.i1090
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1513
.LBB5_1503:                             # %ehcleanup130.i1073
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1514
.LBB5_1504:                             # %ehcleanup133.i1056
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1515
.LBB5_1505:                             # %ehcleanup136.i1039
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1516
.LBB5_1506:                             # %ehcleanup139.i1022
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1517
.LBB5_1507:                             # %ehcleanup142.i997
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1509
.LBB5_1508:                             # %if.then.i.i372.i1002
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1509:                             # %ehcleanup143.i1004
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1510:                             # %arraydestroy.body146.i1007
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1510
	b	.LBB5_1723
.LBB5_1511:                             # %if.then.i.i323.i1126
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1502
.LBB5_1512:                             # %if.then.i.i330.i1109
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1503
.LBB5_1513:                             # %if.then.i.i337.i1095
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1504
.LBB5_1514:                             # %if.then.i.i344.i1078
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1505
.LBB5_1515:                             # %if.then.i.i351.i1061
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1506
.LBB5_1516:                             # %if.then.i.i358.i1044
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1507
.LBB5_1517:                             # %if.then.i.i365.i1027
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1508
	b	.LBB5_1509
.LBB5_1518:                             # %lpad65.i1154
.Ltmp315:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1497
	b	.LBB5_1498
.LBB5_1519:                             # %lpad63.i1150
.Ltmp312:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1498
.LBB5_1520:                             # %lpad58.i1137
.Ltmp309:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1499
	b	.LBB5_1500
.LBB5_1521:                             # %lpad56.i1133
.Ltmp306:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	b	.LBB5_1500
.LBB5_1522:                             # %lpad51.i1120
.Ltmp303:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1500
.LBB5_1523:                             # %lpad49.i1116
.Ltmp300:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1502
	b	.LBB5_1512
.LBB5_1524:                             # %lpad44.i1103
.Ltmp297:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1502
	b	.LBB5_1512
.LBB5_1525:                             # %lpad37.i1089
.Ltmp294:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1503
	b	.LBB5_1513
.LBB5_1526:                             # %lpad35.i1085
.Ltmp291:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1504
	b	.LBB5_1514
.LBB5_1527:                             # %lpad30.i1072
.Ltmp288:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1504
	b	.LBB5_1514
.LBB5_1528:                             # %lpad28.i1068
.Ltmp285:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1505
	b	.LBB5_1515
.LBB5_1529:                             # %lpad23.i1055
.Ltmp282:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1505
	b	.LBB5_1515
.LBB5_1530:                             # %lpad21.i1051
.Ltmp279:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1506
	b	.LBB5_1516
.LBB5_1531:                             # %lpad16.i1038
.Ltmp276:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1506
	b	.LBB5_1516
.LBB5_1532:                             # %lpad14.i1034
.Ltmp273:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1507
	b	.LBB5_1517
.LBB5_1533:                             # %lpad9.i1021
.Ltmp270:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1507
	b	.LBB5_1517
.LBB5_1534:                             # %lpad7.i1017
.Ltmp267:                               # EH_LABEL
	b	.LBB5_1536
.LBB5_1535:                             # %lpad3.i996
.Ltmp264:                               # EH_LABEL
.LBB5_1536:                             # %ehcleanup142.i997
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1508
	b	.LBB5_1509
.LBB5_1537:                             # %lpad95.i
.Ltmp261:                               # EH_LABEL
	move	$fp, $a0
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
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB5_1539
.LBB5_1538:                             # %lpad93.i
.Ltmp258:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1539:                             # %ehcleanup.i839
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB5_1541
# %bb.1540:                             # %if.then.i.i281.i842
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1541:                             # %ehcleanup106.i
	move	$s8, $s1
	b	.LBB5_1543
.LBB5_1542:                             # %lpad86.i829
.Ltmp255:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1543:                             # %ehcleanup106.i
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1546
# %bb.1544:                             # %if.then.i.i288.i834
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1546
.LBB5_1545:                             # %lpad84.i
.Ltmp252:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1546:                             # %ehcleanup109.i
	move	$s7, $s8
	b	.LBB5_1548
.LBB5_1547:                             # %lpad79.i818
.Ltmp249:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1548:                             # %ehcleanup109.i
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1551
# %bb.1549:                             # %if.then.i.i295.i823
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1551
.LBB5_1550:                             # %lpad77.i817
.Ltmp246:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1551:                             # %ehcleanup112.i
	move	$s6, $s7
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1555
.LBB5_1552:                             # %if.then.i.i302.i811
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1555
.LBB5_1553:                             # %lpad72.i806
.Ltmp243:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB5_1552
	b	.LBB5_1555
.LBB5_1554:                             # %lpad70.i805
.Ltmp240:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1555:                             # %ehcleanup115.i
	move	$s5, $s6
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1557
.LBB5_1556:                             # %if.then.i.i309.i799
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1557:                             # %ehcleanup118.i
	move	$s2, $s5
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1559
.LBB5_1558:                             # %if.then.i.i316.i787
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1559:                             # %ehcleanup121.i
	move	$s0, $s2
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1561
.LBB5_1560:                             # %if.then.i.i323.i775
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1561:                             # %ehcleanup124.i
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1571
# %bb.1562:                             # %ehcleanup127.i
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1572
.LBB5_1563:                             # %ehcleanup130.i
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1573
.LBB5_1564:                             # %ehcleanup133.i729
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1574
.LBB5_1565:                             # %ehcleanup136.i
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1575
.LBB5_1566:                             # %ehcleanup139.i
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1576
.LBB5_1567:                             # %ehcleanup142.i
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1569
.LBB5_1568:                             # %if.then.i.i372.i
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1569:                             # %ehcleanup143.i
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s3, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1570:                             # %arraydestroy.body146.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1570
	b	.LBB5_1723
.LBB5_1571:                             # %if.then.i.i330.i764
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1563
.LBB5_1572:                             # %if.then.i.i337.i753
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1564
.LBB5_1573:                             # %if.then.i.i344.i741
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1565
.LBB5_1574:                             # %if.then.i.i351.i
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1566
.LBB5_1575:                             # %if.then.i.i358.i
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1567
.LBB5_1576:                             # %if.then.i.i365.i
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1568
	b	.LBB5_1569
.LBB5_1577:                             # %lpad65.i794
.Ltmp237:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1556
	b	.LBB5_1557
.LBB5_1578:                             # %lpad63.i793
.Ltmp234:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	b	.LBB5_1557
.LBB5_1579:                             # %lpad58.i782
.Ltmp231:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1558
	b	.LBB5_1559
.LBB5_1580:                             # %lpad56.i781
.Ltmp228:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	b	.LBB5_1559
.LBB5_1581:                             # %lpad51.i770
.Ltmp225:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1560
	b	.LBB5_1561
.LBB5_1582:                             # %lpad49.i
.Ltmp222:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	b	.LBB5_1561
.LBB5_1583:                             # %lpad44.i759
.Ltmp219:                               # EH_LABEL
	move	$s0, $fp
	move	$fp, $a0
	move	$s3, $zero
	b	.LBB5_1561
.LBB5_1584:                             # %lpad37.i748
.Ltmp216:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1563
	b	.LBB5_1572
.LBB5_1585:                             # %lpad35.i747
.Ltmp213:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1564
	b	.LBB5_1573
.LBB5_1586:                             # %lpad30.i736
.Ltmp210:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1564
	b	.LBB5_1573
.LBB5_1587:                             # %lpad28.i735
.Ltmp207:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1565
	b	.LBB5_1574
.LBB5_1588:                             # %lpad23.i728
.Ltmp204:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1565
	b	.LBB5_1574
.LBB5_1589:                             # %lpad21.i727
.Ltmp201:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1566
	b	.LBB5_1575
.LBB5_1590:                             # %lpad16.i721
.Ltmp198:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1566
	b	.LBB5_1575
.LBB5_1591:                             # %lpad14.i720
.Ltmp195:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1567
	b	.LBB5_1576
.LBB5_1592:                             # %lpad9.i714
.Ltmp192:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1567
	b	.LBB5_1576
.LBB5_1593:                             # %lpad7.i713
.Ltmp189:                               # EH_LABEL
	b	.LBB5_1595
.LBB5_1594:                             # %lpad3.i707
.Ltmp186:                               # EH_LABEL
.LBB5_1595:                             # %ehcleanup142.i
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1568
	b	.LBB5_1569
.LBB5_1596:                             # %lpad88.i558
.Ltmp183:                               # EH_LABEL
	move	$fp, $a0
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
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB5_1598
.LBB5_1597:                             # %lpad86.i546
.Ltmp180:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1598:                             # %ehcleanup.i547
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1600
# %bb.1599:                             # %if.then.i.i260.i550
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1600:                             # %ehcleanup99.i533
	move	$s8, $s1
	b	.LBB5_1602
.LBB5_1601:                             # %lpad79.i532
.Ltmp177:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1602:                             # %ehcleanup99.i533
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1605
# %bb.1603:                             # %if.then.i.i267.i538
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1605
.LBB5_1604:                             # %lpad77.i528
.Ltmp174:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1605:                             # %ehcleanup102.i516
	move	$s7, $s8
	b	.LBB5_1607
.LBB5_1606:                             # %lpad72.i515
.Ltmp171:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1607:                             # %ehcleanup102.i516
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1610
# %bb.1608:                             # %if.then.i.i274.i521
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1610
.LBB5_1609:                             # %lpad70.i511
.Ltmp168:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1610:                             # %ehcleanup105.i499
	move	$s6, $s7
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1614
.LBB5_1611:                             # %if.then.i.i281.i504
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1614
.LBB5_1612:                             # %lpad65.i498
.Ltmp165:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1611
	b	.LBB5_1614
.LBB5_1613:                             # %lpad63.i494
.Ltmp162:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
.LBB5_1614:                             # %ehcleanup108.i482
	move	$s5, $s6
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1616
.LBB5_1615:                             # %if.then.i.i288.i487
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1616:                             # %ehcleanup111.i465
	move	$s4, $s5
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB5_1618
.LBB5_1617:                             # %if.then.i.i295.i470
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1618:                             # %ehcleanup114.i451
	move	$s0, $s4
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1620
.LBB5_1619:                             # %if.then.i.i302.i456
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1620:                             # %ehcleanup117.i434
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1629
# %bb.1621:                             # %ehcleanup120.i417
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1630
.LBB5_1622:                             # %ehcleanup123.i400
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1631
.LBB5_1623:                             # %ehcleanup126.i383
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1632
.LBB5_1624:                             # %ehcleanup129.i366
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1633
.LBB5_1625:                             # %ehcleanup132.i341
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1627
.LBB5_1626:                             # %if.then.i.i344.i346
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1627:                             # %ehcleanup133.i348
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s3, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1628:                             # %arraydestroy.body136.i351
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1628
	b	.LBB5_1723
.LBB5_1629:                             # %if.then.i.i309.i439
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1622
.LBB5_1630:                             # %if.then.i.i316.i422
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1623
.LBB5_1631:                             # %if.then.i.i323.i405
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1624
.LBB5_1632:                             # %if.then.i.i330.i388
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1625
.LBB5_1633:                             # %if.then.i.i337.i371
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1626
	b	.LBB5_1627
.LBB5_1634:                             # %lpad58.i481
.Ltmp159:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1615
	b	.LBB5_1616
.LBB5_1635:                             # %lpad56.i477
.Ltmp156:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	b	.LBB5_1616
.LBB5_1636:                             # %lpad51.i464
.Ltmp153:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1617
	b	.LBB5_1618
.LBB5_1637:                             # %lpad44.i450
.Ltmp150:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1619
	b	.LBB5_1620
.LBB5_1638:                             # %lpad42.i446
.Ltmp147:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	b	.LBB5_1620
.LBB5_1639:                             # %lpad37.i433
.Ltmp144:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	b	.LBB5_1620
.LBB5_1640:                             # %lpad35.i429
.Ltmp141:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1622
	b	.LBB5_1630
.LBB5_1641:                             # %lpad30.i416
.Ltmp138:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1622
	b	.LBB5_1630
.LBB5_1642:                             # %lpad28.i412
.Ltmp135:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1623
	b	.LBB5_1631
.LBB5_1643:                             # %lpad23.i399
.Ltmp132:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1623
	b	.LBB5_1631
.LBB5_1644:                             # %lpad21.i395
.Ltmp129:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1624
	b	.LBB5_1632
.LBB5_1645:                             # %lpad16.i382
.Ltmp126:                               # EH_LABEL
	move	$s0, $s1
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1624
	b	.LBB5_1632
.LBB5_1646:                             # %lpad14.i378
.Ltmp123:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1625
	b	.LBB5_1633
.LBB5_1647:                             # %lpad9.i365
.Ltmp120:                               # EH_LABEL
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1625
	b	.LBB5_1633
.LBB5_1648:                             # %lpad7.i361
.Ltmp117:                               # EH_LABEL
	b	.LBB5_1650
.LBB5_1649:                             # %lpad3.i340
.Ltmp114:                               # EH_LABEL
.LBB5_1650:                             # %ehcleanup132.i341
	move	$fp, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1626
	b	.LBB5_1627
.LBB5_1651:                             # %lpad88.i
.Ltmp111:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 936
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB5_1653
.LBB5_1652:                             # %lpad86.i
.Ltmp108:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1653:                             # %ehcleanup.i269
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB5_1655
# %bb.1654:                             # %if.then.i.i260.i
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1655:                             # %ehcleanup99.i
	move	$s8, $s1
	b	.LBB5_1657
.LBB5_1656:                             # %lpad79.i
.Ltmp105:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1657:                             # %ehcleanup99.i
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB5_1660
# %bb.1658:                             # %if.then.i.i267.i
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1660
.LBB5_1659:                             # %lpad77.i
.Ltmp102:                               # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1660:                             # %ehcleanup102.i
	move	$s5, $s8
	b	.LBB5_1662
.LBB5_1661:                             # %lpad72.i
.Ltmp99:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1662:                             # %ehcleanup102.i
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB5_1665
# %bb.1663:                             # %if.then.i.i274.i
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1665
.LBB5_1664:                             # %lpad70.i
.Ltmp96:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1665:                             # %ehcleanup105.i
	move	$s4, $s5
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB5_1669
.LBB5_1666:                             # %if.then.i.i281.i
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1669
.LBB5_1667:                             # %lpad65.i
.Ltmp93:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB5_1666
	b	.LBB5_1669
.LBB5_1668:                             # %lpad63.i
.Ltmp90:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1669:                             # %ehcleanup108.i
	move	$s3, $s4
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB5_1675
.LBB5_1670:                             # %if.then.i.i288.i
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_1675
.LBB5_1671:                             # %lpad58.i
.Ltmp87:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB5_1670
	b	.LBB5_1675
.LBB5_1672:                             # %lpad56.i
.Ltmp84:                                # EH_LABEL
	b	.LBB5_1674
.LBB5_1673:                             # %lpad51.i
.Ltmp81:                                # EH_LABEL
.LBB5_1674:                             # %ehcleanup111.i
	move	$fp, $a0
	move	$s2, $zero
.LBB5_1675:                             # %ehcleanup111.i
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB5_1681
# %bb.1676:                             # %ehcleanup114.i
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB5_1682
.LBB5_1677:                             # %ehcleanup117.i
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB5_1683
.LBB5_1678:                             # %ehcleanup120.i
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB5_1684
.LBB5_1679:                             # %ehcleanup123.i
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB5_1685
.LBB5_1680:                             # %ehcleanup126.i
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1686
	b	.LBB5_1687
.LBB5_1681:                             # %if.then.i.i295.i
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1677
.LBB5_1682:                             # %if.then.i.i302.i
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1678
.LBB5_1683:                             # %if.then.i.i309.i
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1679
.LBB5_1684:                             # %if.then.i.i316.i
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1680
.LBB5_1685:                             # %if.then.i.i323.i
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB5_1687
.LBB5_1686:                             # %if.then.i.i330.i
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1687:                             # %ehcleanup129.i
	move	$s0, $s3
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB5_1689
.LBB5_1688:                             # %if.then.i.i337.i
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1689:                             # %ehcleanup132.i
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1691
# %bb.1690:                             # %if.then.i.i344.i
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1691:                             # %ehcleanup133.i
	addi.d	$s1, $sp, 760
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB5_1723
	.p2align	4, , 16
.LBB5_1692:                             # %arraydestroy.body136.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB5_1692
	b	.LBB5_1723
.LBB5_1693:                             # %lpad44.i
.Ltmp78:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB5_1677
	b	.LBB5_1682
.LBB5_1694:                             # %lpad42.i
.Ltmp75:                                # EH_LABEL
	b	.LBB5_1696
.LBB5_1695:                             # %lpad37.i
.Ltmp72:                                # EH_LABEL
.LBB5_1696:                             # %ehcleanup117.i
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB5_1678
	b	.LBB5_1683
.LBB5_1697:                             # %lpad35.i
.Ltmp69:                                # EH_LABEL
	b	.LBB5_1699
.LBB5_1698:                             # %lpad30.i
.Ltmp66:                                # EH_LABEL
.LBB5_1699:                             # %ehcleanup120.i
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB5_1679
	b	.LBB5_1684
.LBB5_1700:                             # %lpad28.i
.Ltmp63:                                # EH_LABEL
	b	.LBB5_1702
.LBB5_1701:                             # %lpad23.i
.Ltmp60:                                # EH_LABEL
.LBB5_1702:                             # %ehcleanup123.i
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB5_1680
	b	.LBB5_1685
.LBB5_1703:                             # %lpad21.i
.Ltmp57:                                # EH_LABEL
	b	.LBB5_1705
.LBB5_1704:                             # %lpad16.i
.Ltmp54:                                # EH_LABEL
.LBB5_1705:                             # %ehcleanup126.i
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB5_1686
	b	.LBB5_1687
.LBB5_1706:                             # %lpad14.i
.Ltmp51:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1687
.LBB5_1707:                             # %lpad9.i
.Ltmp48:                                # EH_LABEL
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB5_1688
	b	.LBB5_1689
.LBB5_1708:                             # %lpad7.i
.Ltmp45:                                # EH_LABEL
	b	.LBB5_1710
.LBB5_1709:                             # %lpad3.i267
.Ltmp42:                                # EH_LABEL
.LBB5_1710:                             # %ehcleanup132.i
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB5_1689
.LBB5_1711:                             # %lpad5.i219
.Ltmp39:                                # EH_LABEL
	b	.LBB5_1720
.LBB5_1712:                             # %lpad3.i206
.Ltmp36:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1713:                             # %lpad5.i157
.Ltmp33:                                # EH_LABEL
	b	.LBB5_1720
.LBB5_1714:                             # %lpad3.i144
.Ltmp30:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1715:                             # %lpad5.i95
.Ltmp27:                                # EH_LABEL
	b	.LBB5_1720
.LBB5_1716:                             # %lpad3.i82
.Ltmp24:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1717:                             # %lpad5.i33
.Ltmp21:                                # EH_LABEL
	b	.LBB5_1720
.LBB5_1718:                             # %lpad3.i20
.Ltmp18:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1719:                             # %lpad5.i
.Ltmp15:                                # EH_LABEL
.LBB5_1720:                             # %ehcleanup.i6
	move	$fp, $a0
	addi.d	$a0, $sp, 760
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	beq	$a0, $a1, .LBB5_1723
.LBB5_1721:                             # %if.then.i.i8.i
	ld.d	$a1, $sp, 2008
	addi.d	$a1, $a1, 1
.LBB5_1722:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_1723:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_1724:                             # %lpad3.i
.Ltmp12:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 1992
	addi.d	$a1, $sp, 2008
	bne	$a0, $a1, .LBB5_1721
	b	.LBB5_1723
.LBB5_1725:                             # %ehcleanup.thread.i
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	b	.LBB5_1730
.LBB5_1726:                             # %lpad2.i2101
.Ltmp455:                               # EH_LABEL
	ld.d	$a2, $sp, 760
	move	$fp, $a0
	addi.d	$a0, $sp, 776
	beq	$a2, $a0, .LBB5_1729
.LBB5_1727:                             # %ehcleanup.i
	ld.d	$a0, $sp, 776
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB5_1723
	b	.LBB5_1730
.LBB5_1728:                             # %lpad2.i
.Ltmp9:                                 # EH_LABEL
	ld.d	$a2, $sp, 760
	move	$fp, $a0
	addi.d	$a0, $sp, 776
	bne	$a2, $a0, .LBB5_1727
.LBB5_1729:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s1, .LBB5_1723
.LBB5_1730:                             # %cleanup.action.i
	ori	$a1, $zero, 232
	move	$a0, $s0
	b	.LBB5_1722
.Lfunc_end5:
	.size	_GLOBAL__sub_I_repetitions_test.cc, .Lfunc_end5-_GLOBAL__sub_I_repetitions_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp28-.Ltmp26                #   Call between .Ltmp26 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin0          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin0          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin0          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin0          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin0          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin0          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin0          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp112-.Ltmp110              #   Call between .Ltmp110 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin0         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin0         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin0         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin0         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin0         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin0         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin0         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin0         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin0         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin0         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin0         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin0         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin0         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin0         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp184-.Ltmp182              #   Call between .Ltmp182 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin0         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin0         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin0         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin0         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin0         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin0         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin0         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin0         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin0         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin0         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin0         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin0         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin0         #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin0         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin0         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin0         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 91 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin0         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin0         # >> Call Site 92 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin0         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin0         # >> Call Site 93 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin0         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin0         # >> Call Site 94 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin0         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin0         # >> Call Site 95 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin0         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin0         # >> Call Site 96 <<
	.uleb128 .Ltmp262-.Ltmp260              #   Call between .Ltmp260 and .Ltmp262
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin0         # >> Call Site 97 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin0         #     jumps to .Ltmp264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin0         # >> Call Site 98 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin0         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin0         # >> Call Site 99 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin0         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin0         # >> Call Site 100 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin0         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin0         # >> Call Site 101 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin0         #     jumps to .Ltmp276
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin0         # >> Call Site 102 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin0         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin0         # >> Call Site 103 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin0         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin0         # >> Call Site 104 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin0         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin0         # >> Call Site 105 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin0         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin0         # >> Call Site 106 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin0         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin0         # >> Call Site 107 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin0         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin0         # >> Call Site 108 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin0         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin0         # >> Call Site 109 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin0         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin0         # >> Call Site 110 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin0         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin0         # >> Call Site 111 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin0         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin0         # >> Call Site 112 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin0         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin0         # >> Call Site 113 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin0         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin0         # >> Call Site 114 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin0         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin0         # >> Call Site 115 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin0         #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin0         # >> Call Site 116 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin0         #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin0         # >> Call Site 117 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin0         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin0         # >> Call Site 118 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin0         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin0         # >> Call Site 119 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin0         #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin0         # >> Call Site 120 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin0         #     jumps to .Ltmp333
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin0         # >> Call Site 121 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin0         #     jumps to .Ltmp336
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp337-.Lfunc_begin0         # >> Call Site 122 <<
	.uleb128 .Ltmp338-.Ltmp337              #   Call between .Ltmp337 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin0         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin0         # >> Call Site 123 <<
	.uleb128 .Ltmp340-.Ltmp338              #   Call between .Ltmp338 and .Ltmp340
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin0         # >> Call Site 124 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin0         #     jumps to .Ltmp342
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin0         # >> Call Site 125 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.uleb128 .Ltmp345-.Lfunc_begin0         #     jumps to .Ltmp345
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin0         # >> Call Site 126 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin0         #     jumps to .Ltmp348
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin0         # >> Call Site 127 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp351-.Lfunc_begin0         #     jumps to .Ltmp351
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin0         # >> Call Site 128 <<
	.uleb128 .Ltmp353-.Ltmp352              #   Call between .Ltmp352 and .Ltmp353
	.uleb128 .Ltmp354-.Lfunc_begin0         #     jumps to .Ltmp354
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin0         # >> Call Site 129 <<
	.uleb128 .Ltmp356-.Ltmp355              #   Call between .Ltmp355 and .Ltmp356
	.uleb128 .Ltmp357-.Lfunc_begin0         #     jumps to .Ltmp357
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin0         # >> Call Site 130 <<
	.uleb128 .Ltmp359-.Ltmp358              #   Call between .Ltmp358 and .Ltmp359
	.uleb128 .Ltmp360-.Lfunc_begin0         #     jumps to .Ltmp360
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp361-.Lfunc_begin0         # >> Call Site 131 <<
	.uleb128 .Ltmp362-.Ltmp361              #   Call between .Ltmp361 and .Ltmp362
	.uleb128 .Ltmp363-.Lfunc_begin0         #     jumps to .Ltmp363
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin0         # >> Call Site 132 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin0         #     jumps to .Ltmp366
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin0         # >> Call Site 133 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin0         #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin0         # >> Call Site 134 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin0         #     jumps to .Ltmp372
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin0         # >> Call Site 135 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin0         #     jumps to .Ltmp375
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin0         # >> Call Site 136 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin0         #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin0         # >> Call Site 137 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin0         #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin0         # >> Call Site 138 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin0         #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin0         # >> Call Site 139 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin0         #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin0         # >> Call Site 140 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin0         #     jumps to .Ltmp390
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin0         # >> Call Site 141 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin0         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin0         # >> Call Site 142 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin0         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin0         # >> Call Site 143 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin0         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin0         # >> Call Site 144 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin0         #     jumps to .Ltmp402
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin0         # >> Call Site 145 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin0         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin0         # >> Call Site 146 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin0         #     jumps to .Ltmp408
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin0         # >> Call Site 147 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin0         #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin0         # >> Call Site 148 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin0         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin0         # >> Call Site 149 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin0         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin0         # >> Call Site 150 <<
	.uleb128 .Ltmp418-.Ltmp416              #   Call between .Ltmp416 and .Ltmp418
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin0         # >> Call Site 151 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin0         #     jumps to .Ltmp420
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin0         # >> Call Site 152 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin0         #     jumps to .Ltmp423
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin0         # >> Call Site 153 <<
	.uleb128 .Ltmp424-.Ltmp422              #   Call between .Ltmp422 and .Ltmp424
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin0         # >> Call Site 154 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin0         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin0         # >> Call Site 155 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin0         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin0         # >> Call Site 156 <<
	.uleb128 .Ltmp430-.Ltmp428              #   Call between .Ltmp428 and .Ltmp430
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin0         # >> Call Site 157 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp432-.Lfunc_begin0         #     jumps to .Ltmp432
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin0         # >> Call Site 158 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.uleb128 .Ltmp435-.Lfunc_begin0         #     jumps to .Ltmp435
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin0         # >> Call Site 159 <<
	.uleb128 .Ltmp436-.Ltmp434              #   Call between .Ltmp434 and .Ltmp436
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin0         # >> Call Site 160 <<
	.uleb128 .Ltmp437-.Ltmp436              #   Call between .Ltmp436 and .Ltmp437
	.uleb128 .Ltmp438-.Lfunc_begin0         #     jumps to .Ltmp438
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp439-.Lfunc_begin0         # >> Call Site 161 <<
	.uleb128 .Ltmp440-.Ltmp439              #   Call between .Ltmp439 and .Ltmp440
	.uleb128 .Ltmp441-.Lfunc_begin0         #     jumps to .Ltmp441
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin0         # >> Call Site 162 <<
	.uleb128 .Ltmp442-.Ltmp440              #   Call between .Ltmp440 and .Ltmp442
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin0         # >> Call Site 163 <<
	.uleb128 .Ltmp443-.Ltmp442              #   Call between .Ltmp442 and .Ltmp443
	.uleb128 .Ltmp444-.Lfunc_begin0         #     jumps to .Ltmp444
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp445-.Lfunc_begin0         # >> Call Site 164 <<
	.uleb128 .Ltmp446-.Ltmp445              #   Call between .Ltmp445 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin0         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin0         # >> Call Site 165 <<
	.uleb128 .Ltmp448-.Ltmp446              #   Call between .Ltmp446 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin0         # >> Call Site 166 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp450-.Lfunc_begin0         #     jumps to .Ltmp450
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin0         # >> Call Site 167 <<
	.uleb128 .Ltmp454-.Ltmp451              #   Call between .Ltmp451 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin0         #     jumps to .Ltmp455
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin0         # >> Call Site 168 <<
	.uleb128 .Ltmp456-.Ltmp454              #   Call between .Ltmp454 and .Ltmp456
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin0         # >> Call Site 169 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin0         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin0         # >> Call Site 170 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin0         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin0         # >> Call Site 171 <<
	.uleb128 .Ltmp462-.Ltmp460              #   Call between .Ltmp460 and .Ltmp462
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin0         # >> Call Site 172 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin0         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin0         # >> Call Site 173 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin0         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin0         # >> Call Site 174 <<
	.uleb128 .Ltmp468-.Ltmp466              #   Call between .Ltmp466 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin0         # >> Call Site 175 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin0         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin0         # >> Call Site 176 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin0         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin0         # >> Call Site 177 <<
	.uleb128 .Ltmp474-.Ltmp472              #   Call between .Ltmp472 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin0         # >> Call Site 178 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp476-.Lfunc_begin0         #     jumps to .Ltmp476
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin0         # >> Call Site 179 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin0         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin0         # >> Call Site 180 <<
	.uleb128 .Ltmp480-.Ltmp478              #   Call between .Ltmp478 and .Ltmp480
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin0         # >> Call Site 181 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin0         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin0         # >> Call Site 182 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin0         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin0         # >> Call Site 183 <<
	.uleb128 .Ltmp486-.Ltmp484              #   Call between .Ltmp484 and .Ltmp486
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin0         # >> Call Site 184 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin0         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin0         # >> Call Site 185 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin0         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin0         # >> Call Site 186 <<
	.uleb128 .Ltmp492-.Ltmp490              #   Call between .Ltmp490 and .Ltmp492
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin0         # >> Call Site 187 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin0         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin0         # >> Call Site 188 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin0         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin0         # >> Call Site 189 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin0         #     jumps to .Ltmp500
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin0         # >> Call Site 190 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin0         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin0         # >> Call Site 191 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin0         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin0         # >> Call Site 192 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin0         #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin0         # >> Call Site 193 <<
	.uleb128 .Ltmp511-.Ltmp510              #   Call between .Ltmp510 and .Ltmp511
	.uleb128 .Ltmp512-.Lfunc_begin0         #     jumps to .Ltmp512
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin0         # >> Call Site 194 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin0         #     jumps to .Ltmp515
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin0         # >> Call Site 195 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.uleb128 .Ltmp518-.Lfunc_begin0         #     jumps to .Ltmp518
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin0         # >> Call Site 196 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin0         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin0         # >> Call Site 197 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin0         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin0         # >> Call Site 198 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin0         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin0         # >> Call Site 199 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin0         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin0         # >> Call Site 200 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin0         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin0         # >> Call Site 201 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin0         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin0         # >> Call Site 202 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin0         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin0         # >> Call Site 203 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin0         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin0         # >> Call Site 204 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin0         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin0         # >> Call Site 205 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin0         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin0         # >> Call Site 206 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin0         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin0         # >> Call Site 207 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin0         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin0         # >> Call Site 208 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin0         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin0         # >> Call Site 209 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin0         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin0         # >> Call Site 210 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin0         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin0         # >> Call Site 211 <<
	.uleb128 .Ltmp564-.Ltmp562              #   Call between .Ltmp562 and .Ltmp564
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin0         # >> Call Site 212 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin0         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin0         # >> Call Site 213 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin0         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin0         # >> Call Site 214 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin0         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin0         # >> Call Site 215 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin0         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin0         # >> Call Site 216 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin0         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin0         # >> Call Site 217 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin0         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin0         # >> Call Site 218 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin0         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin0         # >> Call Site 219 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin0         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin0         # >> Call Site 220 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin0         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin0         # >> Call Site 221 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin0         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin0         # >> Call Site 222 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin0         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin0         # >> Call Site 223 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin0         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin0         # >> Call Site 224 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin0         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin0         # >> Call Site 225 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin0         #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin0         # >> Call Site 226 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin0         #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin0         # >> Call Site 227 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin0         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin0         # >> Call Site 228 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin0         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin0         # >> Call Site 229 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin0         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin0         # >> Call Site 230 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin0         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin0         # >> Call Site 231 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin0         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin0         # >> Call Site 232 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin0         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin0         # >> Call Site 233 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin0         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin0         # >> Call Site 234 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin0         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin0         # >> Call Site 235 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin0         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin0         # >> Call Site 236 <<
	.uleb128 .Ltmp636-.Ltmp634              #   Call between .Ltmp634 and .Ltmp636
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin0         # >> Call Site 237 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin0         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin0         # >> Call Site 238 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin0         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin0         # >> Call Site 239 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin0         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin0         # >> Call Site 240 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin0         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin0         # >> Call Site 241 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin0         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin0         # >> Call Site 242 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin0         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin0         # >> Call Site 243 <<
	.uleb128 .Ltmp655-.Ltmp654              #   Call between .Ltmp654 and .Ltmp655
	.uleb128 .Ltmp656-.Lfunc_begin0         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin0         # >> Call Site 244 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin0         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin0         # >> Call Site 245 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp662-.Lfunc_begin0         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin0         # >> Call Site 246 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin0         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin0         # >> Call Site 247 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin0         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin0         # >> Call Site 248 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin0         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin0         # >> Call Site 249 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin0         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin0         # >> Call Site 250 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin0         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin0         # >> Call Site 251 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp680-.Lfunc_begin0         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin0         # >> Call Site 252 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin0         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin0         # >> Call Site 253 <<
	.uleb128 .Ltmp685-.Ltmp684              #   Call between .Ltmp684 and .Ltmp685
	.uleb128 .Ltmp686-.Lfunc_begin0         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp687-.Lfunc_begin0         # >> Call Site 254 <<
	.uleb128 .Ltmp688-.Ltmp687              #   Call between .Ltmp687 and .Ltmp688
	.uleb128 .Ltmp689-.Lfunc_begin0         #     jumps to .Ltmp689
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp690-.Lfunc_begin0         # >> Call Site 255 <<
	.uleb128 .Ltmp691-.Ltmp690              #   Call between .Ltmp690 and .Ltmp691
	.uleb128 .Ltmp692-.Lfunc_begin0         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp693-.Lfunc_begin0         # >> Call Site 256 <<
	.uleb128 .Ltmp694-.Ltmp693              #   Call between .Ltmp693 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin0         #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin0         # >> Call Site 257 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin0         #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin0         # >> Call Site 258 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin0         #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin0         # >> Call Site 259 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin0         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin0         # >> Call Site 260 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin0         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp706-.Lfunc_begin0         # >> Call Site 261 <<
	.uleb128 .Ltmp708-.Ltmp706              #   Call between .Ltmp706 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin0         # >> Call Site 262 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp710-.Lfunc_begin0         #     jumps to .Ltmp710
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin0         # >> Call Site 263 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin0         #     jumps to .Ltmp713
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin0         # >> Call Site 264 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp716-.Lfunc_begin0         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin0         # >> Call Site 265 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin0         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin0         # >> Call Site 266 <<
	.uleb128 .Ltmp721-.Ltmp720              #   Call between .Ltmp720 and .Ltmp721
	.uleb128 .Ltmp722-.Lfunc_begin0         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin0         # >> Call Site 267 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin0         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp726-.Lfunc_begin0         # >> Call Site 268 <<
	.uleb128 .Ltmp727-.Ltmp726              #   Call between .Ltmp726 and .Ltmp727
	.uleb128 .Ltmp728-.Lfunc_begin0         #     jumps to .Ltmp728
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin0         # >> Call Site 269 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp731-.Lfunc_begin0         #     jumps to .Ltmp731
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin0         # >> Call Site 270 <<
	.uleb128 .Ltmp733-.Ltmp732              #   Call between .Ltmp732 and .Ltmp733
	.uleb128 .Ltmp734-.Lfunc_begin0         #     jumps to .Ltmp734
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp735-.Lfunc_begin0         # >> Call Site 271 <<
	.uleb128 .Ltmp736-.Ltmp735              #   Call between .Ltmp735 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin0         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin0         # >> Call Site 272 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp740-.Lfunc_begin0         #     jumps to .Ltmp740
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp741-.Lfunc_begin0         # >> Call Site 273 <<
	.uleb128 .Ltmp742-.Ltmp741              #   Call between .Ltmp741 and .Ltmp742
	.uleb128 .Ltmp743-.Lfunc_begin0         #     jumps to .Ltmp743
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin0         # >> Call Site 274 <<
	.uleb128 .Ltmp745-.Ltmp744              #   Call between .Ltmp744 and .Ltmp745
	.uleb128 .Ltmp746-.Lfunc_begin0         #     jumps to .Ltmp746
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp747-.Lfunc_begin0         # >> Call Site 275 <<
	.uleb128 .Ltmp748-.Ltmp747              #   Call between .Ltmp747 and .Ltmp748
	.uleb128 .Ltmp749-.Lfunc_begin0         #     jumps to .Ltmp749
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin0         # >> Call Site 276 <<
	.uleb128 .Ltmp751-.Ltmp750              #   Call between .Ltmp750 and .Ltmp751
	.uleb128 .Ltmp752-.Lfunc_begin0         #     jumps to .Ltmp752
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin0         # >> Call Site 277 <<
	.uleb128 .Ltmp754-.Ltmp753              #   Call between .Ltmp753 and .Ltmp754
	.uleb128 .Ltmp755-.Lfunc_begin0         #     jumps to .Ltmp755
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp756-.Lfunc_begin0         # >> Call Site 278 <<
	.uleb128 .Ltmp757-.Ltmp756              #   Call between .Ltmp756 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin0         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin0         # >> Call Site 279 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin0         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin0         # >> Call Site 280 <<
	.uleb128 .Ltmp763-.Ltmp762              #   Call between .Ltmp762 and .Ltmp763
	.uleb128 .Ltmp764-.Lfunc_begin0         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp765-.Lfunc_begin0         # >> Call Site 281 <<
	.uleb128 .Ltmp766-.Ltmp765              #   Call between .Ltmp765 and .Ltmp766
	.uleb128 .Ltmp767-.Lfunc_begin0         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin0         # >> Call Site 282 <<
	.uleb128 .Ltmp769-.Ltmp768              #   Call between .Ltmp768 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin0         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin0         # >> Call Site 283 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin0         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin0         # >> Call Site 284 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin0         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin0         # >> Call Site 285 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin0         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin0         # >> Call Site 286 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin0         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin0         # >> Call Site 287 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin0         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp784-.Lfunc_begin0         # >> Call Site 288 <<
	.uleb128 .Ltmp786-.Ltmp784              #   Call between .Ltmp784 and .Ltmp786
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin0         # >> Call Site 289 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin0         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin0         # >> Call Site 290 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin0         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin0         # >> Call Site 291 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin0         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin0         # >> Call Site 292 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin0         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin0         # >> Call Site 293 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin0         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin0         # >> Call Site 294 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin0         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin0         # >> Call Site 295 <<
	.uleb128 .Ltmp805-.Ltmp804              #   Call between .Ltmp804 and .Ltmp805
	.uleb128 .Ltmp806-.Lfunc_begin0         #     jumps to .Ltmp806
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin0         # >> Call Site 296 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp809-.Lfunc_begin0         #     jumps to .Ltmp809
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin0         # >> Call Site 297 <<
	.uleb128 .Ltmp811-.Ltmp810              #   Call between .Ltmp810 and .Ltmp811
	.uleb128 .Ltmp812-.Lfunc_begin0         #     jumps to .Ltmp812
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin0         # >> Call Site 298 <<
	.uleb128 .Ltmp814-.Ltmp813              #   Call between .Ltmp813 and .Ltmp814
	.uleb128 .Ltmp815-.Lfunc_begin0         #     jumps to .Ltmp815
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin0         # >> Call Site 299 <<
	.uleb128 .Ltmp817-.Ltmp816              #   Call between .Ltmp816 and .Ltmp817
	.uleb128 .Ltmp818-.Lfunc_begin0         #     jumps to .Ltmp818
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin0         # >> Call Site 300 <<
	.uleb128 .Ltmp820-.Ltmp819              #   Call between .Ltmp819 and .Ltmp820
	.uleb128 .Ltmp821-.Lfunc_begin0         #     jumps to .Ltmp821
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp822-.Lfunc_begin0         # >> Call Site 301 <<
	.uleb128 .Ltmp823-.Ltmp822              #   Call between .Ltmp822 and .Ltmp823
	.uleb128 .Ltmp824-.Lfunc_begin0         #     jumps to .Ltmp824
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp825-.Lfunc_begin0         # >> Call Site 302 <<
	.uleb128 .Ltmp826-.Ltmp825              #   Call between .Ltmp825 and .Ltmp826
	.uleb128 .Ltmp827-.Lfunc_begin0         #     jumps to .Ltmp827
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin0         # >> Call Site 303 <<
	.uleb128 .Ltmp829-.Ltmp828              #   Call between .Ltmp828 and .Ltmp829
	.uleb128 .Ltmp830-.Lfunc_begin0         #     jumps to .Ltmp830
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp831-.Lfunc_begin0         # >> Call Site 304 <<
	.uleb128 .Ltmp832-.Ltmp831              #   Call between .Ltmp831 and .Ltmp832
	.uleb128 .Ltmp833-.Lfunc_begin0         #     jumps to .Ltmp833
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp834-.Lfunc_begin0         # >> Call Site 305 <<
	.uleb128 .Ltmp835-.Ltmp834              #   Call between .Ltmp834 and .Ltmp835
	.uleb128 .Ltmp836-.Lfunc_begin0         #     jumps to .Ltmp836
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin0         # >> Call Site 306 <<
	.uleb128 .Ltmp838-.Ltmp837              #   Call between .Ltmp837 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin0         #     jumps to .Ltmp839
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin0         # >> Call Site 307 <<
	.uleb128 .Ltmp841-.Ltmp840              #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin0         #     jumps to .Ltmp842
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin0         # >> Call Site 308 <<
	.uleb128 .Ltmp844-.Ltmp843              #   Call between .Ltmp843 and .Ltmp844
	.uleb128 .Ltmp845-.Lfunc_begin0         #     jumps to .Ltmp845
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin0         # >> Call Site 309 <<
	.uleb128 .Ltmp847-.Ltmp846              #   Call between .Ltmp846 and .Ltmp847
	.uleb128 .Ltmp848-.Lfunc_begin0         #     jumps to .Ltmp848
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp849-.Lfunc_begin0         # >> Call Site 310 <<
	.uleb128 .Ltmp850-.Ltmp849              #   Call between .Ltmp849 and .Ltmp850
	.uleb128 .Ltmp851-.Lfunc_begin0         #     jumps to .Ltmp851
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp852-.Lfunc_begin0         # >> Call Site 311 <<
	.uleb128 .Ltmp853-.Ltmp852              #   Call between .Ltmp852 and .Ltmp853
	.uleb128 .Ltmp854-.Lfunc_begin0         #     jumps to .Ltmp854
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp855-.Lfunc_begin0         # >> Call Site 312 <<
	.uleb128 .Ltmp856-.Ltmp855              #   Call between .Ltmp855 and .Ltmp856
	.uleb128 .Ltmp857-.Lfunc_begin0         #     jumps to .Ltmp857
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp858-.Lfunc_begin0         # >> Call Site 313 <<
	.uleb128 .Ltmp859-.Ltmp858              #   Call between .Ltmp858 and .Ltmp859
	.uleb128 .Ltmp860-.Lfunc_begin0         #     jumps to .Ltmp860
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin0         # >> Call Site 314 <<
	.uleb128 .Ltmp862-.Ltmp861              #   Call between .Ltmp861 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin0         #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp862-.Lfunc_begin0         # >> Call Site 315 <<
	.uleb128 .Ltmp864-.Ltmp862              #   Call between .Ltmp862 and .Ltmp864
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin0         # >> Call Site 316 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin0         #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin0         # >> Call Site 317 <<
	.uleb128 .Ltmp868-.Ltmp867              #   Call between .Ltmp867 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin0         #     jumps to .Ltmp869
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin0         # >> Call Site 318 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin0         #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin0         # >> Call Site 319 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin0         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin0         # >> Call Site 320 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin0         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin0         # >> Call Site 321 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin0         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin0         # >> Call Site 322 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin0         #     jumps to .Ltmp884
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin0         # >> Call Site 323 <<
	.uleb128 .Ltmp886-.Ltmp885              #   Call between .Ltmp885 and .Ltmp886
	.uleb128 .Ltmp887-.Lfunc_begin0         #     jumps to .Ltmp887
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin0         # >> Call Site 324 <<
	.uleb128 .Ltmp889-.Ltmp888              #   Call between .Ltmp888 and .Ltmp889
	.uleb128 .Ltmp890-.Lfunc_begin0         #     jumps to .Ltmp890
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp891-.Lfunc_begin0         # >> Call Site 325 <<
	.uleb128 .Ltmp892-.Ltmp891              #   Call between .Ltmp891 and .Ltmp892
	.uleb128 .Ltmp893-.Lfunc_begin0         #     jumps to .Ltmp893
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp894-.Lfunc_begin0         # >> Call Site 326 <<
	.uleb128 .Ltmp895-.Ltmp894              #   Call between .Ltmp894 and .Ltmp895
	.uleb128 .Ltmp896-.Lfunc_begin0         #     jumps to .Ltmp896
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp897-.Lfunc_begin0         # >> Call Site 327 <<
	.uleb128 .Ltmp898-.Ltmp897              #   Call between .Ltmp897 and .Ltmp898
	.uleb128 .Ltmp899-.Lfunc_begin0         #     jumps to .Ltmp899
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin0         # >> Call Site 328 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp902-.Lfunc_begin0         #     jumps to .Ltmp902
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp903-.Lfunc_begin0         # >> Call Site 329 <<
	.uleb128 .Ltmp904-.Ltmp903              #   Call between .Ltmp903 and .Ltmp904
	.uleb128 .Ltmp905-.Lfunc_begin0         #     jumps to .Ltmp905
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp906-.Lfunc_begin0         # >> Call Site 330 <<
	.uleb128 .Ltmp907-.Ltmp906              #   Call between .Ltmp906 and .Ltmp907
	.uleb128 .Ltmp908-.Lfunc_begin0         #     jumps to .Ltmp908
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin0         # >> Call Site 331 <<
	.uleb128 .Ltmp910-.Ltmp909              #   Call between .Ltmp909 and .Ltmp910
	.uleb128 .Ltmp911-.Lfunc_begin0         #     jumps to .Ltmp911
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin0         # >> Call Site 332 <<
	.uleb128 .Ltmp913-.Ltmp912              #   Call between .Ltmp912 and .Ltmp913
	.uleb128 .Ltmp914-.Lfunc_begin0         #     jumps to .Ltmp914
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp915-.Lfunc_begin0         # >> Call Site 333 <<
	.uleb128 .Ltmp916-.Ltmp915              #   Call between .Ltmp915 and .Ltmp916
	.uleb128 .Ltmp917-.Lfunc_begin0         #     jumps to .Ltmp917
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin0         # >> Call Site 334 <<
	.uleb128 .Ltmp919-.Ltmp918              #   Call between .Ltmp918 and .Ltmp919
	.uleb128 .Ltmp920-.Lfunc_begin0         #     jumps to .Ltmp920
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp921-.Lfunc_begin0         # >> Call Site 335 <<
	.uleb128 .Ltmp922-.Ltmp921              #   Call between .Ltmp921 and .Ltmp922
	.uleb128 .Ltmp923-.Lfunc_begin0         #     jumps to .Ltmp923
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp924-.Lfunc_begin0         # >> Call Site 336 <<
	.uleb128 .Ltmp925-.Ltmp924              #   Call between .Ltmp924 and .Ltmp925
	.uleb128 .Ltmp926-.Lfunc_begin0         #     jumps to .Ltmp926
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin0         # >> Call Site 337 <<
	.uleb128 .Ltmp928-.Ltmp927              #   Call between .Ltmp927 and .Ltmp928
	.uleb128 .Ltmp929-.Lfunc_begin0         #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin0         # >> Call Site 338 <<
	.uleb128 .Ltmp931-.Ltmp930              #   Call between .Ltmp930 and .Ltmp931
	.uleb128 .Ltmp932-.Lfunc_begin0         #     jumps to .Ltmp932
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin0         # >> Call Site 339 <<
	.uleb128 .Ltmp934-.Ltmp933              #   Call between .Ltmp933 and .Ltmp934
	.uleb128 .Ltmp935-.Lfunc_begin0         #     jumps to .Ltmp935
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp936-.Lfunc_begin0         # >> Call Site 340 <<
	.uleb128 .Ltmp937-.Ltmp936              #   Call between .Ltmp936 and .Ltmp937
	.uleb128 .Ltmp938-.Lfunc_begin0         #     jumps to .Ltmp938
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin0         # >> Call Site 341 <<
	.uleb128 .Ltmp940-.Ltmp939              #   Call between .Ltmp939 and .Ltmp940
	.uleb128 .Ltmp941-.Lfunc_begin0         #     jumps to .Ltmp941
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp940-.Lfunc_begin0         # >> Call Site 342 <<
	.uleb128 .Ltmp942-.Ltmp940              #   Call between .Ltmp940 and .Ltmp942
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp942-.Lfunc_begin0         # >> Call Site 343 <<
	.uleb128 .Ltmp943-.Ltmp942              #   Call between .Ltmp942 and .Ltmp943
	.uleb128 .Ltmp944-.Lfunc_begin0         #     jumps to .Ltmp944
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp945-.Lfunc_begin0         # >> Call Site 344 <<
	.uleb128 .Ltmp946-.Ltmp945              #   Call between .Ltmp945 and .Ltmp946
	.uleb128 .Ltmp947-.Lfunc_begin0         #     jumps to .Ltmp947
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp946-.Lfunc_begin0         # >> Call Site 345 <<
	.uleb128 .Ltmp948-.Ltmp946              #   Call between .Ltmp946 and .Ltmp948
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp948-.Lfunc_begin0         # >> Call Site 346 <<
	.uleb128 .Ltmp949-.Ltmp948              #   Call between .Ltmp948 and .Ltmp949
	.uleb128 .Ltmp950-.Lfunc_begin0         #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin0         # >> Call Site 347 <<
	.uleb128 .Ltmp952-.Ltmp951              #   Call between .Ltmp951 and .Ltmp952
	.uleb128 .Ltmp953-.Lfunc_begin0         #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp952-.Lfunc_begin0         # >> Call Site 348 <<
	.uleb128 .Ltmp954-.Ltmp952              #   Call between .Ltmp952 and .Ltmp954
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp954-.Lfunc_begin0         # >> Call Site 349 <<
	.uleb128 .Ltmp955-.Ltmp954              #   Call between .Ltmp954 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin0         #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin0         # >> Call Site 350 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin0         #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp958-.Lfunc_begin0         # >> Call Site 351 <<
	.uleb128 .Ltmp960-.Ltmp958              #   Call between .Ltmp958 and .Ltmp960
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin0         # >> Call Site 352 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin0         #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin0         # >> Call Site 353 <<
	.uleb128 .Ltmp964-.Ltmp963              #   Call between .Ltmp963 and .Ltmp964
	.uleb128 .Ltmp965-.Lfunc_begin0         #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp964-.Lfunc_begin0         # >> Call Site 354 <<
	.uleb128 .Ltmp966-.Ltmp964              #   Call between .Ltmp964 and .Ltmp966
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp966-.Lfunc_begin0         # >> Call Site 355 <<
	.uleb128 .Ltmp967-.Ltmp966              #   Call between .Ltmp966 and .Ltmp967
	.uleb128 .Ltmp968-.Lfunc_begin0         #     jumps to .Ltmp968
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin0         # >> Call Site 356 <<
	.uleb128 .Ltmp970-.Ltmp969              #   Call between .Ltmp969 and .Ltmp970
	.uleb128 .Ltmp971-.Lfunc_begin0         #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp970-.Lfunc_begin0         # >> Call Site 357 <<
	.uleb128 .Lfunc_end5-.Ltmp970           #   Call between .Ltmp970 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_ExplicitRepetitions"
	.size	.L.str, 23

	.hidden	dummy16                         # @dummy16
	.type	dummy16,@object
	.bss
	.globl	dummy16
	.p2align	2, 0x0
dummy16:
	.word	0                               # 0x0
	.size	dummy16, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"^BM_ExplicitRepetitions/repeats:2 %console_report$"
	.size	.L.str.3, 51

	.hidden	dummy18                         # @dummy18
	.type	dummy18,@object
	.bss
	.globl	dummy18
	.p2align	2, 0x0
dummy18:
	.word	0                               # 0x0
	.size	dummy18, 4

	.hidden	dummy20                         # @dummy20
	.type	dummy20,@object
	.globl	dummy20
	.p2align	2, 0x0
dummy20:
	.word	0                               # 0x0
	.size	dummy20, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.6:
	.asciz	"^BM_ExplicitRepetitions/repeats:2_mean %console_report$"
	.size	.L.str.6, 56

	.hidden	dummy22                         # @dummy22
	.type	dummy22,@object
	.bss
	.globl	dummy22
	.p2align	2, 0x0
dummy22:
	.word	0                               # 0x0
	.size	dummy22, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.8:
	.asciz	"^BM_ExplicitRepetitions/repeats:2_median %console_report$"
	.size	.L.str.8, 58

	.hidden	dummy24                         # @dummy24
	.type	dummy24,@object
	.bss
	.globl	dummy24
	.p2align	2, 0x0
dummy24:
	.word	0                               # 0x0
	.size	dummy24, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.10:
	.asciz	"^BM_ExplicitRepetitions/repeats:2_stddev %console_report$"
	.size	.L.str.10, 58

	.hidden	dummy38                         # @dummy38
	.type	dummy38,@object
	.bss
	.globl	dummy38
	.p2align	2, 0x0
dummy38:
	.word	0                               # 0x0
	.size	dummy38, 4

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.12:
	.asciz	"\"name\": \"BM_ExplicitRepetitions/repeats:2\",$"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"\"family_index\": 0,$"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"\"run_name\": \"BM_ExplicitRepetitions/repeats:2\",$"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
	.p2align	3, 0x0
.L.str.16:
	.asciz	"\"run_type\": \"iteration\",$"
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"\"repetitions\": 2,$"
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
	.p2align	3, 0x0
.L.str.18:
	.asciz	"\"repetition_index\": 0,$"
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"\"iterations\": %int,$"
	.size	.L.str.20, 21

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"\"real_time\": %float,$"
	.size	.L.str.21, 22

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"\"cpu_time\": %float,$"
	.size	.L.str.22, 21

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"\"time_unit\": \"ns\"$"
	.size	.L.str.23, 19

	.hidden	dummy52                         # @dummy52
	.type	dummy52,@object
	.bss
	.globl	dummy52
	.p2align	2, 0x0
dummy52:
	.word	0                               # 0x0
	.size	dummy52, 4

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.26:
	.asciz	"\"repetition_index\": 1,$"
	.size	.L.str.26, 24

	.hidden	dummy67                         # @dummy67
	.type	dummy67,@object
	.bss
	.globl	dummy67
	.p2align	2, 0x0
dummy67:
	.word	0                               # 0x0
	.size	dummy67, 4

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.28:
	.asciz	"\"name\": \"BM_ExplicitRepetitions/repeats:2_mean\",$"
	.size	.L.str.28, 50

	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"\"run_type\": \"aggregate\",$"
	.size	.L.str.29, 26

	.type	.L.str.30,@object               # @.str.30
	.p2align	3, 0x0
.L.str.30:
	.asciz	"\"aggregate_name\": \"mean\",$"
	.size	.L.str.30, 27

	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"\"aggregate_unit\": \"time\",$"
	.size	.L.str.31, 27

	.hidden	dummy82                         # @dummy82
	.type	dummy82,@object
	.bss
	.globl	dummy82
	.p2align	2, 0x0
dummy82:
	.word	0                               # 0x0
	.size	dummy82, 4

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.33:
	.asciz	"\"name\": \"BM_ExplicitRepetitions/repeats:2_median\",$"
	.size	.L.str.33, 52

	.type	.L.str.34,@object               # @.str.34
	.p2align	3, 0x0
.L.str.34:
	.asciz	"\"aggregate_name\": \"median\",$"
	.size	.L.str.34, 29

	.hidden	dummy97                         # @dummy97
	.type	dummy97,@object
	.bss
	.globl	dummy97
	.p2align	2, 0x0
dummy97:
	.word	0                               # 0x0
	.size	dummy97, 4

	.type	.L.str.36,@object               # @.str.36
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.36:
	.asciz	"\"name\": \"BM_ExplicitRepetitions/repeats:2_stddev\",$"
	.size	.L.str.36, 52

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"\"aggregate_name\": \"stddev\",$"
	.size	.L.str.37, 29

	.hidden	dummy98                         # @dummy98
	.type	dummy98,@object
	.bss
	.globl	dummy98
	.p2align	2, 0x0
dummy98:
	.word	0                               # 0x0
	.size	dummy98, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.39:
	.asciz	"^\"BM_ExplicitRepetitions/repeats:2\",%csv_report$"
	.size	.L.str.39, 49

	.hidden	dummy99                         # @dummy99
	.type	dummy99,@object
	.bss
	.globl	dummy99
	.p2align	2, 0x0
dummy99:
	.word	0                               # 0x0
	.size	dummy99, 4

	.hidden	dummy101                        # @dummy101
	.type	dummy101,@object
	.globl	dummy101
	.p2align	2, 0x0
dummy101:
	.word	0                               # 0x0
	.size	dummy101, 4

	.type	.L.str.42,@object               # @.str.42
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.42:
	.asciz	"^\"BM_ExplicitRepetitions/repeats:2_mean\",%csv_report$"
	.size	.L.str.42, 54

	.hidden	dummy103                        # @dummy103
	.type	dummy103,@object
	.bss
	.globl	dummy103
	.p2align	2, 0x0
dummy103:
	.word	0                               # 0x0
	.size	dummy103, 4

	.type	.L.str.44,@object               # @.str.44
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.44:
	.asciz	"^\"BM_ExplicitRepetitions/repeats:2_median\",%csv_report$"
	.size	.L.str.44, 56

	.hidden	dummy105                        # @dummy105
	.type	dummy105,@object
	.bss
	.globl	dummy105
	.p2align	2, 0x0
dummy105:
	.word	0                               # 0x0
	.size	dummy105, 4

	.type	.L.str.46,@object               # @.str.46
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.46:
	.asciz	"^\"BM_ExplicitRepetitions/repeats:2_stddev\",%csv_report$"
	.size	.L.str.46, 56

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"BM_ImplicitRepetitions"
	.size	.L.str.48, 23

	.hidden	dummy117                        # @dummy117
	.type	dummy117,@object
	.bss
	.globl	dummy117
	.p2align	2, 0x0
dummy117:
	.word	0                               # 0x0
	.size	dummy117, 4

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.50:
	.asciz	"^BM_ImplicitRepetitions %console_report$"
	.size	.L.str.50, 41

	.hidden	dummy118                        # @dummy118
	.type	dummy118,@object
	.bss
	.globl	dummy118
	.p2align	2, 0x0
dummy118:
	.word	0                               # 0x0
	.size	dummy118, 4

	.hidden	dummy119                        # @dummy119
	.type	dummy119,@object
	.globl	dummy119
	.p2align	2, 0x0
dummy119:
	.word	0                               # 0x0
	.size	dummy119, 4

	.hidden	dummy120                        # @dummy120
	.type	dummy120,@object
	.globl	dummy120
	.p2align	2, 0x0
dummy120:
	.word	0                               # 0x0
	.size	dummy120, 4

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.54:
	.asciz	"^BM_ImplicitRepetitions_mean %console_report$"
	.size	.L.str.54, 46

	.hidden	dummy121                        # @dummy121
	.type	dummy121,@object
	.bss
	.globl	dummy121
	.p2align	2, 0x0
dummy121:
	.word	0                               # 0x0
	.size	dummy121, 4

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.56:
	.asciz	"^BM_ImplicitRepetitions_median %console_report$"
	.size	.L.str.56, 48

	.hidden	dummy122                        # @dummy122
	.type	dummy122,@object
	.bss
	.globl	dummy122
	.p2align	2, 0x0
dummy122:
	.word	0                               # 0x0
	.size	dummy122, 4

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.58:
	.asciz	"^BM_ImplicitRepetitions_stddev %console_report$"
	.size	.L.str.58, 48

	.hidden	dummy135                        # @dummy135
	.type	dummy135,@object
	.bss
	.globl	dummy135
	.p2align	2, 0x0
dummy135:
	.word	0                               # 0x0
	.size	dummy135, 4

	.type	.L.str.60,@object               # @.str.60
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.60:
	.asciz	"\"name\": \"BM_ImplicitRepetitions\",$"
	.size	.L.str.60, 35

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"\"family_index\": 1,$"
	.size	.L.str.61, 20

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"\"run_name\": \"BM_ImplicitRepetitions\",$"
	.size	.L.str.62, 39

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"\"repetitions\": 3,$"
	.size	.L.str.63, 19

	.hidden	dummy148                        # @dummy148
	.type	dummy148,@object
	.bss
	.globl	dummy148
	.p2align	2, 0x0
dummy148:
	.word	0                               # 0x0
	.size	dummy148, 4

	.hidden	dummy161                        # @dummy161
	.type	dummy161,@object
	.globl	dummy161
	.p2align	2, 0x0
dummy161:
	.word	0                               # 0x0
	.size	dummy161, 4

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.66:
	.asciz	"\"repetition_index\": 2,$"
	.size	.L.str.66, 24

	.hidden	dummy175                        # @dummy175
	.type	dummy175,@object
	.bss
	.globl	dummy175
	.p2align	2, 0x0
dummy175:
	.word	0                               # 0x0
	.size	dummy175, 4

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.68:
	.asciz	"\"name\": \"BM_ImplicitRepetitions_mean\",$"
	.size	.L.str.68, 40

	.hidden	dummy189                        # @dummy189
	.type	dummy189,@object
	.bss
	.globl	dummy189
	.p2align	2, 0x0
dummy189:
	.word	0                               # 0x0
	.size	dummy189, 4

	.type	.L.str.70,@object               # @.str.70
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.70:
	.asciz	"\"name\": \"BM_ImplicitRepetitions_median\",$"
	.size	.L.str.70, 42

	.hidden	dummy203                        # @dummy203
	.type	dummy203,@object
	.bss
	.globl	dummy203
	.p2align	2, 0x0
dummy203:
	.word	0                               # 0x0
	.size	dummy203, 4

	.type	.L.str.72,@object               # @.str.72
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.72:
	.asciz	"\"name\": \"BM_ImplicitRepetitions_stddev\",$"
	.size	.L.str.72, 42

	.hidden	dummy204                        # @dummy204
	.type	dummy204,@object
	.bss
	.globl	dummy204
	.p2align	2, 0x0
dummy204:
	.word	0                               # 0x0
	.size	dummy204, 4

	.type	.L.str.74,@object               # @.str.74
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.74:
	.asciz	"^\"BM_ImplicitRepetitions\",%csv_report$"
	.size	.L.str.74, 39

	.hidden	dummy205                        # @dummy205
	.type	dummy205,@object
	.bss
	.globl	dummy205
	.p2align	2, 0x0
dummy205:
	.word	0                               # 0x0
	.size	dummy205, 4

	.hidden	dummy206                        # @dummy206
	.type	dummy206,@object
	.globl	dummy206
	.p2align	2, 0x0
dummy206:
	.word	0                               # 0x0
	.size	dummy206, 4

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.77:
	.asciz	"^\"BM_ImplicitRepetitions_mean\",%csv_report$"
	.size	.L.str.77, 44

	.hidden	dummy207                        # @dummy207
	.type	dummy207,@object
	.bss
	.globl	dummy207
	.p2align	2, 0x0
dummy207:
	.word	0                               # 0x0
	.size	dummy207, 4

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.79:
	.asciz	"^\"BM_ImplicitRepetitions_median\",%csv_report$"
	.size	.L.str.79, 46

	.hidden	dummy208                        # @dummy208
	.type	dummy208,@object
	.bss
	.globl	dummy208
	.p2align	2, 0x0
dummy208:
	.word	0                               # 0x0
	.size	dummy208, 4

	.type	.L.str.81,@object               # @.str.81
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.81:
	.asciz	"^\"BM_ImplicitRepetitions_stddev\",%csv_report$"
	.size	.L.str.81, 46

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"cached_ > 0"
	.size	.L.str.82, 12

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.83, 90

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_repetitions_test.cc
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
	.addrsig_sym _ZL22BM_ExplicitRepetitionsRN9benchmark5StateE
	.addrsig_sym _ZL22BM_ImplicitRepetitionsRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_repetitions_test.cc
	.addrsig_sym _Unwind_Resume
