	.file	"args_product_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE # -- Begin function _ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE
	.globl	_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE
	.p2align	5
	.type	_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE,@function
_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE: # @_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE
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
	move	$fp, $a1
	ld.w	$s1, $a1, 28
	ld.d	$s0, $a1, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_11
# %bb.1:                                # %entry
	beqz	$s0, .LBB0_11
# %bb.2:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 16
	ori	$a2, $zero, 3
	addi.d	$a3, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	ld.d	$a5, $fp, 40
	ld.d	$a4, $fp, 32
	beq	$a5, $a4, .LBB0_12
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit29
                                        #   in Loop: Header=BB0_3 Depth=1
	sub.d	$a6, $a5, $a4
	srai.d	$a5, $a6, 3
	bgeu	$a0, $a5, .LBB0_12
# %bb.5:                                # %_ZNK9benchmark5State5rangeEm.exit23
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$a6, $a1, .LBB0_12
# %bb.6:                                # %_ZNK9benchmark5State5rangeEm.exit17
                                        #   in Loop: Header=BB0_3 Depth=1
	bgeu	$a2, $a5, .LBB0_12
# %bb.7:                                # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a4, 8
	ld.d	$a7, $a4, 16
	ld.d	$a4, $a4, 24
	mul.d	$a5, $a6, $a5
	mul.d	$a5, $a5, $a7
	mul.d	$a4, $a5, $a4
	st.d	$zero, $sp, 8
	blez	$a4, .LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.body13
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	#NO_APP
	ld.d	$a5, $sp, 8
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 8
	blt	$a5, $a4, .LBB0_8
.LBB0_9:                                # %for.cond.cleanup12
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$s0, .LBB0_13
# %bb.10:                               # %for.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_3
.LBB0_11:                               # %for.cond.cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_12:                               # %cond.false.i27
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %cond.false.i31
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE, .Lfunc_end0-_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN34ArgsProductFixture_Empty_BenchmarkC2Ev,"axG",@progbits,_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev,comdat
	.hidden	_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev # -- Begin function _ZN34ArgsProductFixture_Empty_BenchmarkC2Ev
	.weak	_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev
	.p2align	5
	.type	_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev,@function
_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev: # @_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN18ArgsProductFixtureC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV34ArgsProductFixture_Empty_Benchmark+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV34ArgsProductFixture_Empty_Benchmark+16)
	st.d	$a0, $fp, 0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 40
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont4
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB1_4
# %bb.3:                                # %if.then.i.i3
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_5:                                # %lpad3
.Ltmp5:                                 # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB1_8
# %bb.6:                                # %if.then.i.i5
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18ArgsProductFixtureD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.LBB1_8:                                # %ehcleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18ArgsProductFixtureD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev, .Lfunc_end1-_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN34ArgsProductFixture_Empty_BenchmarkC2Ev,"aG",@progbits,_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
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
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev,comdat
	.hidden	_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev,@function
_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev:    # @_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev
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
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	bne	$s0, $s1, .LBB2_4
# %bb.1:                                # %invoke.cont
	beqz	$s0, .LBB2_7
.LBB2_2:                                # %if.then.i.i
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB2_3:                                # %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB2_6
.LBB2_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB2_3
# %bb.5:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_3
.LBB2_6:                                # %invoke.contthread-pre-split
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB2_2
.LBB2_7:                                # %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev, .Lfunc_end2-_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a1
	st.w	$a0, $sp, 28
	pcalau12i	$a0, %pc_hi20(.L__const.main.arg0_default)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.arg0_default)
	ld.h	$a2, $a0, 8
	ld.d	$a0, $a0, 0
	st.h	$a2, $sp, 24
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	bnez	$a1, .LBB3_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 28
	addi.d	$fp, $sp, 8
.LBB3_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 28
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB3_4
# %bb.3:                                # %if.end2
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8ShutdownEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_4:                                # %cleanup
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18ArgsProductFixtureD2Ev,"axG",@progbits,_ZN18ArgsProductFixtureD2Ev,comdat
	.hidden	_ZN18ArgsProductFixtureD2Ev     # -- Begin function _ZN18ArgsProductFixtureD2Ev
	.weak	_ZN18ArgsProductFixtureD2Ev
	.p2align	5
	.type	_ZN18ArgsProductFixtureD2Ev,@function
_ZN18ArgsProductFixtureD2Ev:            # @_ZN18ArgsProductFixtureD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	pcalau12i	$a0, %pc_hi20(_ZTV18ArgsProductFixture+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18ArgsProductFixture+16)
	ld.d	$a1, $fp, 312
	ld.d	$a2, $fp, 264
	st.d	$a0, $fp, 0
	addi.d	$s5, $fp, 280
	bne	$a1, $a2, .LBB4_7
# %bb.1:                                # %land.rhs.i.i.i
	ld.d	$s0, $fp, 296
	beq	$s0, $s5, .LBB4_27
# %bb.2:                                # %for.body.i.i.i.preheader.i.i.i
	ld.d	$s1, $fp, 248
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.inc.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beq	$s0, $s5, .LBB4_27
.LBB4_4:                                # %for.body.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s0, 40
	ld.d	$a0, $s0, 32
	ld.d	$a4, $s1, 40
	ld.d	$a1, $s1, 32
	sub.d	$a2, $a3, $a0
	srai.d	$a5, $a2, 3
	sub.d	$a4, $a4, $a1
	srai.d	$a4, $a4, 3
	bne	$a5, $a4, .LBB4_7
# %bb.5:                                # %land.rhs.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$a3, $a0, .LBB4_3
# %bb.6:                                # %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
.LBB4_7:                                # %if.then
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:                                # %invoke.cont2
	ld.d	$s0, $fp, 248
	addi.d	$s6, $fp, 232
	beq	$s0, $s6, .LBB4_17
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s4, $a0, %pc_lo12(.L.str.25)
	.p2align	4, , 16
.LBB4_10:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
.Ltmp8:                                 # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.11:                               # %invoke.cont11
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s7, $s0, 32
	ld.d	$s8, $s0, 40
	beq	$s7, $s8, .LBB4_15
	.p2align	4, , 16
.LBB4_12:                               # %for.body22
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 0
.Ltmp10:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.13:                               # %invoke.cont24
                                        #   in Loop: Header=BB4_12 Depth=2
.Ltmp12:                                # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.14:                               # %invoke.cont26
                                        #   in Loop: Header=BB4_12 Depth=2
	addi.d	$s7, $s7, 8
	bne	$s7, $s8, .LBB4_12
.LBB4_15:                               # %for.cond.cleanup21
                                        #   in Loop: Header=BB4_10 Depth=1
.Ltmp15:                                # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.16:                               # %invoke.cont29
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bne	$a0, $s6, .LBB4_10
.LBB4_17:                               # %for.cond.cleanup
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.18:                               # %invoke.cont34
	ld.d	$s0, $fp, 296
	beq	$s0, $s5, .LBB4_27
# %bb.19:                               # %for.body49.preheader
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s4, $a0, %pc_lo12(.L.str.25)
	.p2align	4, , 16
.LBB4_20:                               # %for.body49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
.Ltmp21:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.21:                               # %invoke.cont52
                                        #   in Loop: Header=BB4_20 Depth=1
	ld.d	$s6, $s0, 32
	ld.d	$s7, $s0, 40
	beq	$s6, $s7, .LBB4_25
	.p2align	4, , 16
.LBB4_22:                               # %for.body66
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 0
.Ltmp23:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.23:                               # %invoke.cont69
                                        #   in Loop: Header=BB4_22 Depth=2
.Ltmp25:                                # EH_LABEL
	ori	$a2, $zero, 2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.24:                               # %invoke.cont71
                                        #   in Loop: Header=BB4_22 Depth=2
	addi.d	$s6, $s6, 8
	bne	$s6, $s7, .LBB4_22
.LBB4_25:                               # %for.cond.cleanup65
                                        #   in Loop: Header=BB4_20 Depth=1
.Ltmp28:                                # EH_LABEL
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.26:                               # %invoke.cont76
                                        #   in Loop: Header=BB4_20 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bne	$a0, $s5, .LBB4_20
.LBB4_27:                               # %if.end
	ld.d	$a1, $fp, 288
	addi.d	$a0, $fp, 272
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.28:                               # %_ZNSt3setISt6vectorIlSaIlEESt4lessIS2_ESaIS2_EED2Ev.exit
	ld.d	$a1, $fp, 240
	addi.d	$a0, $fp, 224
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.29:                               # %_ZNSt3setISt6vectorIlSaIlEESt4lessIS2_ESaIS2_EED2Ev.exit48
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal9BenchmarkD2Ev)
	jr	$t8
.LBB4_30:                               # %terminate.lpad.i.i47
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %terminate.lpad.i.i
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %terminate.lpad.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %terminate.lpad.loopexit.split-lp.loopexit
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_34:                               # %terminate.lpad.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %terminate.lpad.loopexit
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_36:                               # %terminate.lpad.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN18ArgsProductFixtureD2Ev, .Lfunc_end4-_ZN18ArgsProductFixtureD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18ArgsProductFixtureD2Ev,"aG",@progbits,_ZN18ArgsProductFixtureD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp26-.Ltmp23                #   Call between .Ltmp23 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Lfunc_end4-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end4
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
	.section	.text._ZN34ArgsProductFixture_Empty_BenchmarkD0Ev,"axG",@progbits,_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev,comdat
	.hidden	_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev # -- Begin function _ZN34ArgsProductFixture_Empty_BenchmarkD0Ev
	.weak	_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev
	.p2align	5
	.type	_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev,@function
_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev: # @_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN18ArgsProductFixtureD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 320
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end5:
	.size	_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev, .Lfunc_end5-_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev
                                        # -- End function
	.section	.text._ZN9benchmark7Fixture3RunERNS_5StateE,"axG",@progbits,_ZN9benchmark7Fixture3RunERNS_5StateE,comdat
	.hidden	_ZN9benchmark7Fixture3RunERNS_5StateE # -- Begin function _ZN9benchmark7Fixture3RunERNS_5StateE
	.weak	_ZN9benchmark7Fixture3RunERNS_5StateE
	.p2align	5
	.type	_ZN9benchmark7Fixture3RunERNS_5StateE,@function
_ZN9benchmark7Fixture3RunERNS_5StateE:  # @_ZN9benchmark7Fixture3RunERNS_5StateE
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 40
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 56
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a2
.Lfunc_end6:
	.size	_ZN9benchmark7Fixture3RunERNS_5StateE, .Lfunc_end6-_ZN9benchmark7Fixture3RunERNS_5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,"axG",@progbits,_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,comdat
	.hidden	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE # -- Begin function _ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
	.weak	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
	.p2align	5
	.type	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,@function
_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE: # @_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ld.d	$a2, $a1, 40
	ld.d	$a1, $a1, 32
	beq	$a2, $a1, .LBB7_27
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit23
	move	$fp, $a0
	sub.d	$a2, $a2, $a1
	srai.d	$a0, $a2, 3
	ori	$a3, $zero, 1
	bgeu	$a3, $a0, .LBB7_27
# %bb.2:                                # %_ZNK9benchmark5State5rangeEm.exit17
	ori	$a3, $zero, 16
	beq	$a2, $a3, .LBB7_27
# %bb.3:                                # %_ZNK9benchmark5State5rangeEm.exit11
	ori	$a2, $zero, 3
	bgeu	$a2, $a0, .LBB7_27
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s1, $a1, 0
	ld.d	$s2, $a1, 8
	vld	$vr0, $a1, 16
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a0, $zero, 32
	ori	$s0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 48
	ld.d	$a2, $fp, 240
	st.d	$s1, $a0, 0
	st.d	$s2, $a0, 8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 16
	st.d	$a1, $sp, 40
	beqz	$a2, .LBB7_26
# %bb.5:                                # %while.body.i.i.i.preheader
	addi.d	$a3, $fp, 232
	move	$a4, $a3
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                # %if.else.i.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	ori	$t0, $zero, 24
	move	$a4, $a5
.LBB7_7:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	ldx.d	$a2, $a2, $t0
	beqz	$a2, .LBB7_15
.LBB7_8:                                # %while.body.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	ld.d	$a6, $a2, 32
	ld.d	$a5, $a2, 40
	sub.d	$a7, $a5, $a6
	slt	$a7, $s0, $a7
	addi.d	$t0, $a6, 32
	masknez	$a5, $a5, $a7
	maskeqz	$a7, $t0, $a7
	or	$a7, $a7, $a5
	move	$a5, $a4
	beq	$a7, $a6, .LBB7_6
# %bb.9:                                # %for.body.i.i.i.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t1, $zero
	.p2align	4, , 16
.LBB7_10:                               # %for.body.i.i.i.i.i.i.i.i.i.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a4, $a6, $t1
	ldx.d	$t2, $a0, $t1
	blt	$a4, $t2, .LBB7_6
# %bb.11:                               # %if.end.i.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_10 Depth=2
	ori	$t0, $zero, 16
	blt	$t2, $a4, .LBB7_14
# %bb.12:                               # %for.inc.i.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_10 Depth=2
	addi.d	$t1, $t1, 8
	add.d	$a4, $a6, $t1
	bne	$a4, $a7, .LBB7_10
# %bb.13:                               # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit.i.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$a4, $a2
	bne	$t1, $s0, .LBB7_6
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_14:                               #   in Loop: Header=BB7_8 Depth=1
	move	$a4, $a2
	b	.LBB7_7
.LBB7_15:                               # %_ZNKSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSA_RKS2_.exit.i.i
	beq	$a4, $a3, .LBB7_26
# %bb.16:                               # %lor.lhs.false.i.i
	ld.d	$a2, $a4, 32
	ld.d	$a3, $a4, 40
	sub.d	$a4, $a3, $a2
	slti	$a5, $a4, 32
	add.d	$a6, $a0, $a4
	maskeqz	$a6, $a6, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a6, $a1
	beq	$a1, $a0, .LBB7_21
# %bb.17:                               # %for.body.i.i.i.i.i.i.i.i.i.preheader
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a5
	maskeqz	$a4, $a4, $a5
	or	$a1, $a4, $a1
	.p2align	4, , 16
.LBB7_18:                               # %for.body.i.i.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a2, 0
	blt	$a4, $a5, .LBB7_26
# %bb.19:                               # %if.end.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_18 Depth=1
	blt	$a5, $a4, .LBB7_22
# %bb.20:                               # %for.inc.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB7_18
.LBB7_21:                               # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit.i.i
	bne	$a2, $a3, .LBB7_26
.LBB7_22:                               # %cond.end
	addi.d	$a0, $fp, 272
.Ltmp37:                                # EH_LABEL
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.23:                               # %invoke.cont19
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB7_25
# %bb.24:                               # %if.then.i.i.i
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_25:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB7_26:                               # %cond.false
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE)
	ori	$a2, $zero, 30
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB7_27:                               # %cond.false.i21
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB7_28:                               # %lpad18
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$fp, $a0
	beqz	$a2, .LBB7_30
# %bb.29:                               # %if.then.i.i.i56
	ld.d	$a0, $sp, 48
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_30:                               # %ehcleanup21
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE, .Lfunc_end7-_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,"aG",@progbits,_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark7Fixture8TearDownERKNS_5StateE,"axG",@progbits,_ZN9benchmark7Fixture8TearDownERKNS_5StateE,comdat
	.hidden	_ZN9benchmark7Fixture8TearDownERKNS_5StateE # -- Begin function _ZN9benchmark7Fixture8TearDownERKNS_5StateE
	.weak	_ZN9benchmark7Fixture8TearDownERKNS_5StateE
	.p2align	5
	.type	_ZN9benchmark7Fixture8TearDownERKNS_5StateE,@function
_ZN9benchmark7Fixture8TearDownERKNS_5StateE: # @_ZN9benchmark7Fixture8TearDownERKNS_5StateE
# %bb.0:                                # %entry
	ret
.Lfunc_end8:
	.size	_ZN9benchmark7Fixture8TearDownERKNS_5StateE, .Lfunc_end8-_ZN9benchmark7Fixture8TearDownERKNS_5StateE
                                        # -- End function
	.section	.text._ZN9benchmark7Fixture5SetUpERNS_5StateE,"axG",@progbits,_ZN9benchmark7Fixture5SetUpERNS_5StateE,comdat
	.hidden	_ZN9benchmark7Fixture5SetUpERNS_5StateE # -- Begin function _ZN9benchmark7Fixture5SetUpERNS_5StateE
	.weak	_ZN9benchmark7Fixture5SetUpERNS_5StateE
	.p2align	5
	.type	_ZN9benchmark7Fixture5SetUpERNS_5StateE,@function
_ZN9benchmark7Fixture5SetUpERNS_5StateE: # @_ZN9benchmark7Fixture5SetUpERNS_5StateE
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 24
	jr	$a2
.Lfunc_end9:
	.size	_ZN9benchmark7Fixture5SetUpERNS_5StateE, .Lfunc_end9-_ZN9benchmark7Fixture5SetUpERNS_5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark7Fixture8TearDownERNS_5StateE,"axG",@progbits,_ZN9benchmark7Fixture8TearDownERNS_5StateE,comdat
	.hidden	_ZN9benchmark7Fixture8TearDownERNS_5StateE # -- Begin function _ZN9benchmark7Fixture8TearDownERNS_5StateE
	.weak	_ZN9benchmark7Fixture8TearDownERNS_5StateE
	.p2align	5
	.type	_ZN9benchmark7Fixture8TearDownERNS_5StateE,@function
_ZN9benchmark7Fixture8TearDownERNS_5StateE: # @_ZN9benchmark7Fixture8TearDownERNS_5StateE
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
	jr	$a2
.Lfunc_end10:
	.size	_ZN9benchmark7Fixture8TearDownERNS_5StateE, .Lfunc_end10-_ZN9benchmark7Fixture8TearDownERNS_5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18ArgsProductFixtureC2Ev,"axG",@progbits,_ZN18ArgsProductFixtureC2Ev,comdat
	.hidden	_ZN18ArgsProductFixtureC2Ev     # -- Begin function _ZN18ArgsProductFixtureC2Ev
	.weak	_ZN18ArgsProductFixtureC2Ev
	.p2align	5
	.type	_ZN18ArgsProductFixtureC2Ev,@function
_ZN18ArgsProductFixtureC2Ev:            # @_ZN18ArgsProductFixtureC2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	.cfi_def_cfa_offset 464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
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
	addi.d	$s0, $sp, 48
	st.d	$s0, $sp, 32
	st.d	$zero, $sp, 40
	st.b	$zero, $sp, 48
.Ltmp40:                                # EH_LABEL
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.1:                                # %invoke.cont4.i
	ld.d	$a0, $sp, 32
	beq	$a0, $s0, .LBB11_3
# %bb.2:                                # %if.then.i.i3.i
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_3:                               # %_ZN9benchmark7FixtureC2Ev.exit
	pcalau12i	$a0, %pc_hi20(_ZTV18ArgsProductFixture+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18ArgsProductFixture+16)
	st.d	$a0, $fp, 0
.Ltmp43:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.4:                                # %invoke.cont
	st.d	$a0, $sp, 32
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.Lconstinit.7)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.7)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 40
	addi.d	$s0, $sp, 56
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
.Ltmp46:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.5:                                # %invoke.cont11
	st.d	$a0, $sp, 56
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 72
	pcalau12i	$a2, %pc_hi20(.Lconstinit.8)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.8)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 64
	addi.d	$s7, $sp, 80
	st.d	$zero, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 88
.Ltmp49:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.6:                                # %invoke.cont19
	st.d	$a0, $sp, 80
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.Lconstinit.9)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.9)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 88
	addi.d	$s8, $sp, 104
	st.d	$zero, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
.Ltmp52:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.7:                                # %invoke.cont27
	st.d	$a0, $sp, 104
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 120
	pcalau12i	$a2, %pc_hi20(.Lconstinit.10)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.10)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 112
	addi.d	$s1, $sp, 128
	st.d	$zero, $sp, 128
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
.Ltmp55:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.8:                                # %invoke.cont35
	st.d	$a0, $sp, 128
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 144
	pcalau12i	$a2, %pc_hi20(.Lconstinit.11)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.11)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 136
	addi.d	$s2, $sp, 152
	st.d	$zero, $sp, 152
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 160
.Ltmp58:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.9:                                # %invoke.cont43
	st.d	$a0, $sp, 152
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 168
	pcalau12i	$a2, %pc_hi20(.Lconstinit.12)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.12)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 160
	addi.d	$s3, $sp, 176
	st.d	$zero, $sp, 176
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 184
.Ltmp61:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.10:                               # %invoke.cont51
	st.d	$a0, $sp, 176
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 192
	pcalau12i	$a2, %pc_hi20(.Lconstinit.13)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.13)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 184
	addi.d	$s4, $sp, 200
	st.d	$zero, $sp, 200
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
.Ltmp64:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.11:                               # %invoke.cont59
	st.d	$a0, $sp, 200
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 216
	pcalau12i	$a2, %pc_hi20(.Lconstinit.14)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.14)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 208
	addi.d	$s5, $sp, 224
	st.d	$zero, $sp, 224
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 232
.Ltmp67:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.12:                               # %invoke.cont67
	st.d	$a0, $sp, 224
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 240
	pcalau12i	$a2, %pc_hi20(.Lconstinit.15)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.15)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 232
	addi.d	$s5, $sp, 248
	st.d	$zero, $sp, 248
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 256
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.13:                               # %invoke.cont75
	st.d	$a0, $sp, 248
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 264
	pcalau12i	$a2, %pc_hi20(.Lconstinit.16)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.16)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 256
	addi.d	$s5, $sp, 272
	st.d	$zero, $sp, 272
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 280
.Ltmp73:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.14:                               # %invoke.cont83
	st.d	$a0, $sp, 272
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 288
	pcalau12i	$a2, %pc_hi20(.Lconstinit.17)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.17)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 280
	addi.d	$s5, $sp, 296
	st.d	$zero, $sp, 296
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 304
.Ltmp76:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.15:                               # %invoke.cont91
	st.d	$a0, $sp, 296
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 312
	pcalau12i	$a2, %pc_hi20(.Lconstinit.18)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.18)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 304
	addi.d	$s5, $sp, 320
	st.d	$zero, $sp, 320
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
.Ltmp79:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.16:                               # %invoke.cont99
	st.d	$a0, $sp, 320
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 336
	pcalau12i	$a2, %pc_hi20(.Lconstinit.19)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.19)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 328
	st.d	$zero, $sp, 344
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 352
.Ltmp82:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.17:                               # %invoke.cont107
	addi.d	$s5, $fp, 224
	st.d	$a0, $sp, 344
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 360
	pcalau12i	$a2, %pc_hi20(.Lconstinit.20)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.20)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 352
	addi.d	$s6, $fp, 232
	st.w	$zero, $fp, 232
	st.d	$zero, $fp, 240
	st.d	$s6, $fp, 248
	st.d	$s6, $fp, 256
	st.d	$zero, $fp, 264
	st.d	$s5, $sp, 368
.Ltmp85:                                # EH_LABEL
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.18:                               # %call3.i.noexc.i
.Ltmp87:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.19:                               # %call3.i.noexc.i.1
.Ltmp89:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.20:                               # %call3.i.noexc.i.2
.Ltmp91:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.21:                               # %call3.i.noexc.i.3
.Ltmp93:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.22:                               # %call3.i.noexc.i.4
.Ltmp95:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.23:                               # %call3.i.noexc.i.5
.Ltmp97:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.24:                               # %call3.i.noexc.i.6
.Ltmp99:                                # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.25:                               # %call3.i.noexc.i.7
.Ltmp101:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 224
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.26:                               # %call3.i.noexc.i.8
.Ltmp103:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 248
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.27:                               # %call3.i.noexc.i.9
.Ltmp105:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 272
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.28:                               # %call3.i.noexc.i.10
.Ltmp107:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 296
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.29:                               # %call3.i.noexc.i.11
.Ltmp109:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 320
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.30:                               # %call3.i.noexc.i.12
.Ltmp111:                               # EH_LABEL
	addi.d	$a3, $sp, 368
	move	$a0, $s5
	move	$a1, $s6
	addi.d	$a2, $sp, 344
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.31:                               # %call3.i.noexc.i.13
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB11_33
# %bb.32:                               # %if.then.i.i.i
	ld.d	$a1, $sp, 360
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_33:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB11_35
# %bb.34:                               # %if.then.i.i.i.1
	ld.d	$a1, $sp, 336
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_35:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.1
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB11_37
# %bb.36:                               # %if.then.i.i.i.2
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_37:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.2
	ld.d	$a0, $sp, 272
	beqz	$a0, .LBB11_39
# %bb.38:                               # %if.then.i.i.i.3
	ld.d	$a1, $sp, 288
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_39:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.3
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB11_41
# %bb.40:                               # %if.then.i.i.i.4
	ld.d	$a1, $sp, 264
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_41:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.4
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB11_43
# %bb.42:                               # %if.then.i.i.i.5
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_43:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.5
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB11_45
# %bb.44:                               # %if.then.i.i.i.6
	ld.d	$a1, $sp, 216
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_45:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.6
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB11_47
# %bb.46:                               # %if.then.i.i.i.7
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_47:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.7
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB11_49
# %bb.48:                               # %if.then.i.i.i.8
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_49:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.8
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB11_51
# %bb.50:                               # %if.then.i.i.i.9
	ld.d	$a1, $sp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_51:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.9
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB11_53
# %bb.52:                               # %if.then.i.i.i.10
	ld.d	$a1, $sp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_53:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.10
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB11_55
# %bb.54:                               # %if.then.i.i.i.11
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_55:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.11
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB11_57
# %bb.56:                               # %if.then.i.i.i.12
	ld.d	$a1, $sp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_57:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.12
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB11_59
# %bb.58:                               # %if.then.i.i.i.13
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_59:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.13
	addi.d	$a0, $fp, 280
	st.w	$zero, $fp, 280
	st.d	$zero, $fp, 288
	st.d	$a0, $fp, 296
	st.d	$a0, $fp, 304
	st.d	$zero, $fp, 312
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.LBB11_60:                              # %lpad.i250
.Ltmp84:                                # EH_LABEL
	move	$s6, $a0
	addi.d	$s0, $sp, 344
	b	.LBB11_67
.LBB11_61:                              # %lpad.i233
.Ltmp81:                                # EH_LABEL
	b	.LBB11_66
.LBB11_62:                              # %lpad.i216
.Ltmp78:                                # EH_LABEL
	b	.LBB11_66
.LBB11_63:                              # %lpad.i199
.Ltmp75:                                # EH_LABEL
	b	.LBB11_66
.LBB11_64:                              # %lpad.i182
.Ltmp72:                                # EH_LABEL
	b	.LBB11_66
.LBB11_65:                              # %lpad.i165
.Ltmp69:                                # EH_LABEL
.LBB11_66:                              # %arraydestroy.body163.preheader
	move	$s6, $a0
	move	$s0, $s5
.LBB11_67:                              # %arraydestroy.body163.preheader
	addi.d	$s1, $sp, 32
	b	.LBB11_69
	.p2align	4, , 16
.LBB11_68:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit292
                                        #   in Loop: Header=BB11_69 Depth=1
	addi.d	$s0, $s0, -24
	beq	$s0, $s1, .LBB11_97
.LBB11_69:                              # %arraydestroy.body163
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -24
	beqz	$a0, .LBB11_68
# %bb.70:                               # %if.then.i.i.i286
                                        #   in Loop: Header=BB11_69 Depth=1
	ld.d	$a1, $s0, -8
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_68
.LBB11_71:                              # %lpad.i148
.Ltmp66:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s4
	b	.LBB11_67
.LBB11_72:                              # %lpad.i131
.Ltmp63:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s3
	b	.LBB11_67
.LBB11_73:                              # %lpad.i114
.Ltmp60:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s2
	b	.LBB11_67
.LBB11_74:                              # %lpad.i97
.Ltmp57:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s1
	b	.LBB11_67
.LBB11_75:                              # %lpad.i80
.Ltmp54:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s8
	b	.LBB11_67
.LBB11_76:                              # %lpad.i63
.Ltmp51:                                # EH_LABEL
	move	$s6, $a0
	move	$s0, $s7
	b	.LBB11_67
.LBB11_77:                              # %lpad.i46
.Ltmp48:                                # EH_LABEL
	move	$s6, $a0
	b	.LBB11_67
.LBB11_78:                              # %lpad.i
.Ltmp45:                                # EH_LABEL
	move	$s6, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_79:                              # %lpad3.i
.Ltmp42:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s6, $a0
	beq	$a2, $s0, .LBB11_81
# %bb.80:                               # %if.then.i.i5.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_81:                              # %common.resume
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_82:                              # %lpad4.i
.Ltmp113:                               # EH_LABEL
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	bnez	$a0, .LBB11_98
# %bb.83:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit284
	ld.d	$a0, $sp, 320
	bnez	$a0, .LBB11_99
.LBB11_84:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.1
	ld.d	$a0, $sp, 296
	bnez	$a0, .LBB11_100
.LBB11_85:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.2
	ld.d	$a0, $sp, 272
	bnez	$a0, .LBB11_101
.LBB11_86:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.3
	ld.d	$a0, $sp, 248
	bnez	$a0, .LBB11_102
.LBB11_87:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.4
	ld.d	$a0, $sp, 224
	bnez	$a0, .LBB11_103
.LBB11_88:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.5
	ld.d	$a0, $sp, 200
	bnez	$a0, .LBB11_104
.LBB11_89:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.6
	ld.d	$a0, $sp, 176
	bnez	$a0, .LBB11_105
.LBB11_90:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.7
	ld.d	$a0, $sp, 152
	bnez	$a0, .LBB11_106
.LBB11_91:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.8
	ld.d	$a0, $sp, 128
	bnez	$a0, .LBB11_107
.LBB11_92:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.9
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB11_108
.LBB11_93:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.10
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB11_109
.LBB11_94:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.11
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB11_110
.LBB11_95:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit284.12
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB11_97
.LBB11_96:                              # %if.then.i.i.i278.13
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_97:                              # %cleanup.done
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_98:                              # %if.then.i.i.i278
	ld.d	$a1, $sp, 360
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB11_84
.LBB11_99:                              # %if.then.i.i.i278.1
	ld.d	$a1, $sp, 336
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB11_85
.LBB11_100:                             # %if.then.i.i.i278.2
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	beqz	$a0, .LBB11_86
.LBB11_101:                             # %if.then.i.i.i278.3
	ld.d	$a1, $sp, 288
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB11_87
.LBB11_102:                             # %if.then.i.i.i278.4
	ld.d	$a1, $sp, 264
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB11_88
.LBB11_103:                             # %if.then.i.i.i278.5
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB11_89
.LBB11_104:                             # %if.then.i.i.i278.6
	ld.d	$a1, $sp, 216
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB11_90
.LBB11_105:                             # %if.then.i.i.i278.7
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB11_91
.LBB11_106:                             # %if.then.i.i.i278.8
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB11_92
.LBB11_107:                             # %if.then.i.i.i278.9
	ld.d	$a1, $sp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB11_93
.LBB11_108:                             # %if.then.i.i.i278.10
	ld.d	$a1, $sp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB11_94
.LBB11_109:                             # %if.then.i.i.i278.11
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB11_95
.LBB11_110:                             # %if.then.i.i.i278.12
	ld.d	$a1, $sp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB11_96
	b	.LBB11_97
.Lfunc_end11:
	.size	_ZN18ArgsProductFixtureC2Ev, .Lfunc_end11-_ZN18ArgsProductFixtureC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18ArgsProductFixtureC2Ev,"aG",@progbits,_ZN18ArgsProductFixtureC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin3          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin3          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin3          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin3          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin3          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin3          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin3          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin3          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin3          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin3          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin3          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin3          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp112-.Ltmp85               #   Call between .Ltmp85 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin3         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Lfunc_end11-.Ltmp112          #   Call between .Ltmp112 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18ArgsProductFixtureD0Ev,"axG",@progbits,_ZN18ArgsProductFixtureD0Ev,comdat
	.hidden	_ZN18ArgsProductFixtureD0Ev     # -- Begin function _ZN18ArgsProductFixtureD0Ev
	.weak	_ZN18ArgsProductFixtureD0Ev
	.p2align	5
	.type	_ZN18ArgsProductFixtureD0Ev,@function
_ZN18ArgsProductFixtureD0Ev:            # @_ZN18ArgsProductFixtureD0Ev
# %bb.0:                                # %entry
	amswap.w	$zero, $ra, $zero
.Lfunc_end12:
	.size	_ZN18ArgsProductFixtureD0Ev, .Lfunc_end12-_ZN18ArgsProductFixtureD0Ev
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev,comdat
	.hidden	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp114:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB13_2:                               # %terminate.lpad
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev, .Lfunc_end13-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev,"aG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin4         #     jumps to .Ltmp116
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end13-.Ltmp115          #   Call between .Ltmp115 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
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
.Lfunc_end14:
	.size	__clang_call_terminate, .Lfunc_end14-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_,comdat
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_ # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_
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
	move	$s3, $a3
	move	$s0, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_)
	jirl	$ra, $ra, 0
	beqz	$a1, .LBB15_9
# %bb.1:                                # %if.then
	move	$s1, $a1
	addi.d	$s2, $fp, 8
	ori	$s4, $zero, 1
	bnez	$a0, .LBB15_8
# %bb.2:                                # %if.then
	beq	$s2, $s1, .LBB15_8
# %bb.3:                                # %lor.rhs.i
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s0, 8
	ld.d	$a0, $s1, 32
	ld.d	$a1, $s1, 40
	sub.d	$a4, $a3, $a2
	sub.d	$a5, $a1, $a0
	slt	$a4, $a5, $a4
	add.d	$a5, $a2, $a5
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	beq	$a3, $a2, .LBB15_6
	.p2align	4, , 16
.LBB15_4:                               # %for.body.i.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	bne	$a5, $a4, .LBB15_7
# %bb.5:                                # %for.inc.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bne	$a2, $a3, .LBB15_4
.LBB15_6:                               # %for.end.i.i.i.i.i.i.i.i
	xor	$a0, $a0, $a1
	sltu	$s4, $zero, $a0
	b	.LBB15_8
.LBB15_7:                               # %_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.loopexit
	slt	$s4, $a4, $a5
.LBB15_8:                               # %_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit
	ld.d	$s3, $s3, 0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$a1, $fp, 40
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 40
.LBB15_9:                               # %cleanup
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
.Lfunc_end15:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_, .Lfunc_end15-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_,comdat
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_ # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_
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
	addi.d	$a3, $a0, 8
	beq	$a3, $a1, .LBB16_14
# %bb.1:                                # %if.else10
	ld.d	$fp, $a2, 0
	ld.d	$s0, $a2, 8
	ld.d	$a3, $a1, 32
	ld.d	$a4, $a1, 40
	sub.d	$s1, $s0, $fp
	sub.d	$a5, $a4, $a3
	slt	$a6, $a5, $s1
	add.d	$a7, $fp, $a5
	masknez	$t0, $s0, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $t0
	move	$a7, $a3
	beq	$a6, $fp, .LBB16_6
# %bb.2:                                # %for.body.i.i.i.i.i.i.i22.preheader
	move	$a7, $a3
	move	$t0, $fp
	.p2align	4, , 16
.LBB16_3:                               # %for.body.i.i.i.i.i.i.i22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $t0, 0
	ld.d	$t2, $a7, 0
	blt	$t1, $t2, .LBB16_7
# %bb.4:                                # %if.end.i.i.i.i.i.i.i26
                                        #   in Loop: Header=BB16_3 Depth=1
	blt	$t2, $t1, .LBB16_21
# %bb.5:                                # %for.inc.i.i.i.i.i.i.i28
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bne	$t0, $a6, .LBB16_3
.LBB16_6:                               # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit36
	beq	$a7, $a4, .LBB16_21
.LBB16_7:                               # %if.then15
	ld.d	$a3, $a0, 24
	beq	$a3, $a1, .LBB16_34
# %bb.8:                                # %if.else23
	move	$s2, $a0
	move	$s3, $a2
	move	$s4, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 32
	ld.d	$a1, $a0, 40
	sub.d	$a2, $a1, $a3
	slt	$a2, $s1, $a2
	add.d	$a4, $a3, $s1
	maskeqz	$a4, $a4, $a2
	masknez	$a1, $a1, $a2
	or	$a5, $a4, $a1
	beq	$a5, $a3, .LBB16_36
# %bb.9:                                # %for.body.i.i.i.i.i.i.i53.preheader
	move	$a4, $s4
	move	$a1, $s3
	move	$a2, $s2
	.p2align	4, , 16
.LBB16_10:                              # %for.body.i.i.i.i.i.i.i53
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.d	$a7, $fp, 0
	blt	$a6, $a7, .LBB16_37
# %bb.11:                               # %if.end.i.i.i.i.i.i.i57
                                        #   in Loop: Header=BB16_10 Depth=1
	blt	$a7, $a6, .LBB16_42
# %bb.12:                               # %for.inc.i.i.i.i.i.i.i59
                                        #   in Loop: Header=BB16_10 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$fp, $fp, 8
	bne	$a3, $a5, .LBB16_10
# %bb.13:                               # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit67
	bne	$fp, $s0, .LBB16_37
	b	.LBB16_42
.LBB16_14:                              # %if.then
	ld.d	$a1, $a0, 40
	beqz	$a1, .LBB16_20
# %bb.15:                               # %land.lhs.true
	ld.d	$a1, $a0, 32
	ld.d	$a5, $a1, 32
	ld.d	$a6, $a1, 40
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	sub.d	$a7, $a6, $a5
	sub.d	$t0, $a4, $a3
	slt	$a7, $t0, $a7
	add.d	$t0, $a5, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	beq	$a6, $a5, .LBB16_19
	.p2align	4, , 16
.LBB16_16:                              # %for.body.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a3, 0
	blt	$a7, $t0, .LBB16_33
# %bb.17:                               # %if.end.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB16_16 Depth=1
	blt	$t0, $a7, .LBB16_20
# %bb.18:                               # %for.inc.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB16_16 Depth=1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bne	$a5, $a6, .LBB16_16
.LBB16_19:                              # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit
	bne	$a3, $a4, .LBB16_33
.LBB16_20:                              # %if.else
	move	$a1, $a2
	b	.LBB16_43
.LBB16_21:                              # %if.else40
	slt	$a5, $s1, $a5
	add.d	$a6, $a3, $s1
	maskeqz	$a6, $a6, $a5
	masknez	$a4, $a4, $a5
	or	$a4, $a6, $a4
	move	$a5, $fp
	beq	$a4, $a3, .LBB16_26
# %bb.22:                               # %for.body.i.i.i.i.i.i.i84.preheader
	move	$a5, $fp
	.p2align	4, , 16
.LBB16_23:                              # %for.body.i.i.i.i.i.i.i84
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a5, 0
	blt	$a6, $a7, .LBB16_27
# %bb.24:                               # %if.end.i.i.i.i.i.i.i88
                                        #   in Loop: Header=BB16_23 Depth=1
	blt	$a7, $a6, .LBB16_35
# %bb.25:                               # %for.inc.i.i.i.i.i.i.i90
                                        #   in Loop: Header=BB16_23 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB16_23
.LBB16_26:                              # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit98
	beq	$a5, $s0, .LBB16_35
.LBB16_27:                              # %if.then45
	ld.d	$a3, $a0, 32
	beq	$a3, $a1, .LBB16_33
# %bb.28:                               # %if.else53
	move	$s2, $a0
	move	$s3, $a2
	move	$s4, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 32
	ld.d	$a4, $a0, 40
	sub.d	$a1, $a4, $a3
	slt	$a2, $a1, $s1
	add.d	$a1, $fp, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	move	$a5, $s4
	or	$a6, $a1, $a2
	beq	$a6, $fp, .LBB16_38
# %bb.29:                               # %for.body.i.i.i.i.i.i.i116.preheader
	move	$a1, $s3
	move	$a2, $s2
	.p2align	4, , 16
.LBB16_30:                              # %for.body.i.i.i.i.i.i.i116
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $fp, 0
	ld.d	$t0, $a3, 0
	blt	$a7, $t0, .LBB16_40
# %bb.31:                               # %if.end.i.i.i.i.i.i.i120
                                        #   in Loop: Header=BB16_30 Depth=1
	blt	$t0, $a7, .LBB16_42
# %bb.32:                               # %for.inc.i.i.i.i.i.i.i122
                                        #   in Loop: Header=BB16_30 Depth=1
	addi.d	$fp, $fp, 8
	addi.d	$a3, $a3, 8
	bne	$fp, $a6, .LBB16_30
	b	.LBB16_39
.LBB16_33:
	move	$a0, $zero
	b	.LBB16_44
.LBB16_34:
	move	$a0, $a1
	b	.LBB16_44
.LBB16_35:
	move	$a0, $a1
	move	$a1, $zero
	b	.LBB16_44
.LBB16_36:
	move	$a4, $s4
	move	$a1, $s3
	move	$a2, $s2
	beq	$fp, $s0, .LBB16_42
.LBB16_37:                              # %if.then29
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $a4, $a1
	maskeqz	$a1, $a2, $a1
	b	.LBB16_41
.LBB16_38:
	move	$a1, $s3
	move	$a2, $s2
.LBB16_39:                              # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit130
	beq	$a3, $a4, .LBB16_42
.LBB16_40:                              # %if.then59
	ld.d	$a1, $a5, 24
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a5, $a1
.LBB16_41:                              # %return
	or	$a1, $a1, $a0
	b	.LBB16_44
.LBB16_42:                              # %if.else69
	move	$a0, $a2
.LBB16_43:                              # %return
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_)
	jirl	$ra, $ra, 0
.LBB16_44:                              # %return
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_, .Lfunc_end16-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_,comdat
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_ # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_
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
	ld.d	$a5, $a0, 16
	move	$s0, $a1
	beqz	$a5, .LBB17_12
# %bb.1:                                # %while.body.lr.ph
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	sub.d	$a3, $a2, $a1
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %cond.false
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 24
	ldx.d	$a5, $fp, $a5
	beqz	$a5, .LBB17_10
.LBB17_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	move	$fp, $a5
	ld.d	$a4, $a5, 32
	ld.d	$a5, $a5, 40
	sub.d	$a6, $a5, $a4
	slt	$a7, $a6, $a3
	add.d	$a6, $a1, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	beq	$a6, $a1, .LBB17_8
# %bb.4:                                # %for.body.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a7, $a1
	.p2align	4, , 16
.LBB17_5:                               # %for.body.i.i.i.i.i.i.i
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a4, 0
	blt	$t0, $t1, .LBB17_9
# %bb.6:                                # %if.end.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB17_5 Depth=2
	blt	$t1, $t0, .LBB17_2
# %bb.7:                                # %for.inc.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB17_5 Depth=2
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 8
	bne	$a7, $a6, .LBB17_5
.LBB17_8:                               # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	beq	$a4, $a5, .LBB17_2
.LBB17_9:                               #   in Loop: Header=BB17_3 Depth=1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 16
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB17_3
.LBB17_10:                              # %while.end
	move	$a1, $fp
	beqz	$a4, .LBB17_14
# %bb.11:                               # %if.then
	ld.d	$a0, $a0, 24
	bne	$fp, $a0, .LBB17_13
	b	.LBB17_19
.LBB17_12:
	addi.d	$fp, $a0, 8
	ld.d	$a0, $a0, 24
	beq	$fp, $a0, .LBB17_19
.LBB17_13:                              # %if.else
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB17_14:                              # %if.end12
	ld.d	$a3, $a1, 32
	ld.d	$a4, $a1, 40
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s0, 8
	sub.d	$a5, $a4, $a3
	sub.d	$a6, $a2, $a0
	slt	$a5, $a6, $a5
	add.d	$a6, $a3, $a6
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	beq	$a4, $a3, .LBB17_18
	.p2align	4, , 16
.LBB17_15:                              # %for.body.i.i.i.i.i.i.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	blt	$a5, $a6, .LBB17_19
# %bb.16:                               # %if.end.i.i.i.i.i.i.i21
                                        #   in Loop: Header=BB17_15 Depth=1
	blt	$a6, $a5, .LBB17_20
# %bb.17:                               # %for.inc.i.i.i.i.i.i.i23
                                        #   in Loop: Header=BB17_15 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bne	$a3, $a4, .LBB17_15
.LBB17_18:                              # %_ZNKSt4lessISt6vectorIlSaIlEEEclERKS2_S5_.exit31
	beq	$a0, $a2, .LBB17_20
.LBB17_19:
	move	$a1, $zero
	b	.LBB17_21
.LBB17_20:                              # %if.end17
	move	$fp, $zero
.LBB17_21:                              # %cleanup
	move	$a0, $a1
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_, .Lfunc_end17-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_ # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
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
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a2
	ld.d	$a0, $a2, 8
	ld.d	$a2, $a2, 0
	move	$fp, $a1
	sub.d	$s2, $a0, $a2
	st.d	$zero, $a1, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 32
	beq	$a0, $a2, .LBB18_3
# %bb.1:                                # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i
.Ltmp117:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.2:
	move	$s1, $a0
	b	.LBB18_4
.LBB18_3:
	move	$s1, $zero
.LBB18_4:                               # %invoke.cont.i
	st.d	$s1, $fp, 32
	st.d	$s1, $fp, 40
	add.d	$a0, $s1, $s2
	st.d	$a0, $fp, 48
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 8
	sub.d	$s0, $a0, $a1
	blez	$s0, .LBB18_6
# %bb.5:                                # %if.then.i.i.i
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s0
.LBB18_6:                               # %try.cont
	st.d	$s1, $fp, 40
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB18_7:                               # %lpad
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.8:                                # %unreachable
.LBB18_9:                               # %lpad4
.Ltmp122:                               # EH_LABEL
	move	$fp, $a0
.Ltmp123:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.10:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_11:                              # %terminate.lpad
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_, .Lfunc_end18-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp117-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin5         #     jumps to .Ltmp119
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp120-.Ltmp118              #   Call between .Ltmp118 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin5         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin5         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp124-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Lfunc_end18-.Ltmp124          #   Call between .Ltmp124 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB19_6
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
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	ori	$a1, $zero, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB19_5
.LBB19_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	beqz	$a0, .LBB19_2
# %bb.4:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a1, $s0, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_2
.LBB19_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB19_6:                               # %while.end
	ret
.Lfunc_end19:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .Lfunc_end19-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_,"axG",@progbits,_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_,comdat
	.weak	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ # -- Begin function _ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_,@function
_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_: # @_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_)
	jirl	$ra, $ra, 0
	beqz	$a1, .LBB20_7
# %bb.1:                                # %if.then
	move	$s2, $a1
	addi.d	$s3, $fp, 8
	ori	$s0, $zero, 1
	ori	$s4, $zero, 1
	bnez	$a0, .LBB20_9
# %bb.2:                                # %if.then
	ori	$s4, $zero, 1
	beq	$s3, $s2, .LBB20_9
# %bb.3:                                # %lor.rhs.i
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s1, 8
	ld.d	$a0, $s2, 32
	ld.d	$a1, $s2, 40
	sub.d	$a4, $a3, $a2
	sub.d	$a5, $a1, $a0
	slt	$a4, $a5, $a4
	add.d	$a5, $a2, $a5
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	beq	$a3, $a2, .LBB20_6
	.p2align	4, , 16
.LBB20_4:                               # %for.body.i.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	bne	$a5, $a4, .LBB20_8
# %bb.5:                                # %for.inc.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bne	$a2, $a3, .LBB20_4
.LBB20_6:                               # %for.end.i.i.i.i.i.i.i.i
	xor	$a0, $a0, $a1
	sltu	$s4, $zero, $a0
	b	.LBB20_9
.LBB20_7:
	move	$s0, $zero
	b	.LBB20_10
.LBB20_8:                               # %_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.loopexit
	slt	$s4, $a4, $a5
.LBB20_9:                               # %_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$a1, $fp, 40
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 40
.LBB20_10:                              # %cleanup
	move	$a1, $s0
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
.Lfunc_end20:
	.size	_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_, .Lfunc_end20-_ZNSt8_Rb_treeISt6vectorIlSaIlEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev,comdat
	.hidden	_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev
	.weak	_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev
	.p2align	5
	.type	_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB21_2
.LBB21_1:                               # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB21_2:                               # %if.then
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB21_1
.LBB21_3:                               # %terminate.lpad
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev, .Lfunc_end21-_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev,"aG",@progbits,_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp126-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin6         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp127          #   Call between .Ltmp127 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_ # -- Begin function _ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_
	.p2align	5
	.type	_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_,@function
_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_: # @_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	beq	$a0, $a1, .LBB22_6
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
	move	$s0, $a0
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $fp, .LBB22_5
.LBB22_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB22_2
# %bb.4:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_2
.LBB22_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB22_6:                               # %for.end
	ret
.Lfunc_end22:
	.size	_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_, .Lfunc_end22-_ZSt8_DestroyIPSt6vectorIlSaIlEEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_args_product_test.cc
.LCPI23_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI23_1:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_args_product_test.cc,@function
_GLOBAL__sub_I_args_product_test.cc:    # @_GLOBAL__sub_I_args_product_test.cc
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 320
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp129:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN34ArgsProductFixture_Empty_BenchmarkC2Ev)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.1:                                # %invoke.cont.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp132:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.2:                                # %invoke.cont5.i
	st.d	$a0, $sp, 176
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 192
	pcalau12i	$a2, %pc_hi20(.Lconstinit.7)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.7)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 184
.Ltmp135:                               # EH_LABEL
	addi.d	$a1, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.3:                                # %invoke.cont7.i
.Ltmp138:                               # EH_LABEL
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.4:                                # %invoke.cont18.i
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI23_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI23_0)
	st.d	$fp, $sp, 56
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 72
	vst	$vr0, $fp, 0
	addi.d	$s4, $sp, 80
	st.d	$zero, $sp, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 88
.Ltmp141:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.5:                                # %invoke.cont26.i
	move	$s0, $a0
	st.d	$a0, $sp, 80
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 96
	ori	$a0, $zero, 15
	st.d	$a0, $s0, 0
	addi.d	$s4, $sp, 104
	st.d	$zero, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
.Ltmp144:                               # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.6:                                # %invoke.cont34.i
	move	$s1, $a0
	st.d	$a0, $sp, 104
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 120
	pcalau12i	$a0, %pc_hi20(.Lconstinit.2)
	addi.d	$s6, $a0, %pc_lo12(.Lconstinit.2)
	ld.d	$s5, $s6, 0
	vld	$vr0, $s6, 8
	st.d	$s5, $s1, 0
	vst	$vr0, $s1, 8
	addi.d	$s4, $sp, 128
	st.d	$zero, $sp, 128
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
.Ltmp147:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.7:                                # %invoke.cont43.i
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI23_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI23_1)
	vst	$vr0, $s2, 0
	st.d	$zero, $sp, 152
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 160
.Ltmp150:                               # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.8:                                # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i
	move	$s4, $a0
	st.d	$a0, $sp, 152
	addi.d	$s7, $a0, 96
	st.d	$s7, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 40
	st.d	$zero, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 8
.Ltmp153:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.9:                                # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.1.i
	vld	$vr0, $fp, 0
	st.d	$a0, $s4, 0
	addi.d	$a1, $a0, 16
	st.d	$a1, $s4, 16
	vst	$vr0, $a0, 0
	st.d	$a1, $s4, 8
	addi.d	$a0, $s4, 24
	st.d	$a0, $sp, 200
	st.d	$zero, $s4, 24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 32
.Ltmp155:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.10:                               # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.2.i
	st.d	$a0, $s4, 24
	addi.d	$a1, $a0, 8
	st.d	$a1, $s4, 40
	ori	$a2, $zero, 15
	st.d	$a2, $a0, 0
	st.d	$a1, $s4, 32
	addi.d	$a0, $s4, 48
	st.d	$a0, $sp, 200
	st.d	$zero, $s4, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 56
.Ltmp157:                               # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.11:                               # %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.3.i
	st.d	$a0, $s4, 48
	vld	$vr0, $s6, 8
	addi.d	$a1, $a0, 24
	st.d	$a1, $s4, 64
	st.d	$s5, $a0, 0
	vst	$vr0, $a0, 8
	st.d	$a1, $s4, 56
	addi.d	$a0, $s4, 72
	st.d	$a0, $sp, 200
	st.d	$zero, $s4, 72
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 80
.Ltmp159:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.12:                               # %for.inc.i.i.i.i.3.i
	vld	$vr0, $s2, 0
	st.d	$a0, $s4, 72
	addi.d	$a1, $a0, 16
	st.d	$a1, $s4, 88
	vst	$vr0, $a0, 0
	st.d	$a1, $s4, 80
	st.d	$s7, $sp, 160
.Ltmp162:                               # EH_LABEL
	addi.d	$a1, $sp, 152
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ArgsProductERKSt6vectorIS2_IlSaIlEESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.13:                               # %invoke.cont50.i
.Ltmp165:                               # EH_LABEL
	move	$s3, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.14:                               # %invoke.cont59.i
	st.d	$a0, $sp, 32
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 48
	pcalau12i	$a2, %pc_hi20(.Lconstinit.20)
	addi.d	$a2, $a2, %pc_lo12(.Lconstinit.20)
	vld	$vr0, $a2, 0
	vld	$vr1, $a2, 16
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 40
.Ltmp168:                               # EH_LABEL
	addi.d	$a1, $sp, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.15:                               # %invoke.cont61.i
	move	$s3, $a0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB23_17
# %bb.16:                               # %if.then.i.i.i118.i
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_17:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit.i
	ld.d	$s4, $sp, 152
	ld.d	$s5, $sp, 160
	bne	$s4, $s5, .LBB23_24
# %bb.18:                               # %invoke.cont.i.i
	beqz	$s4, .LBB23_20
.LBB23_19:                              # %if.then.i.i.i125.i
	ld.d	$a0, $sp, 168
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_20:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit139.3.i
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB23_22
# %bb.21:                               # %if.then.i.i.i142.i
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_22:                              # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark)
	st.d	$s3, $a0, %pc_lo12(_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark)
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
	.p2align	4, , 16
.LBB23_23:                              # %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB23_24 Depth=1
	addi.d	$s4, $s4, 24
	beq	$s4, $s5, .LBB23_26
.LBB23_24:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB23_23
# %bb.25:                               # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB23_24 Depth=1
	ld.d	$a1, $s4, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB23_23
.LBB23_26:                              # %invoke.contthread-pre-split.i.i
	ld.d	$s4, $sp, 152
	bnez	$s4, .LBB23_19
	b	.LBB23_20
.LBB23_27:                              # %lpad60.i
.Ltmp170:                               # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s3, $a0
	beqz	$a2, .LBB23_32
# %bb.28:                               # %if.then.i.i.i151.i
	ld.d	$a0, $sp, 48
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB23_32
.LBB23_29:                              # %lpad.i101.i
.Ltmp167:                               # EH_LABEL
	b	.LBB23_31
.LBB23_30:                              # %lpad49.i
.Ltmp164:                               # EH_LABEL
.LBB23_31:                              # %ehcleanup66.i
	move	$s3, $a0
.LBB23_32:                              # %ehcleanup66.i
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB23_47
.LBB23_33:                              # %lpad.i92.body.thread.i
.Ltmp152:                               # EH_LABEL
	move	$s3, $a0
	b	.LBB23_47
.LBB23_34:                              # %lpad.i76.i
.Ltmp149:                               # EH_LABEL
	b	.LBB23_37
.LBB23_35:                              # %lpad.i59.i
.Ltmp146:                               # EH_LABEL
	b	.LBB23_37
.LBB23_36:                              # %lpad.i42.i
.Ltmp143:                               # EH_LABEL
.LBB23_37:                              # %arraydestroy.body90.preheader.i
	move	$s3, $a0
	addi.d	$fp, $sp, 56
	b	.LBB23_39
	.p2align	4, , 16
.LBB23_38:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit175.i
                                        #   in Loop: Header=BB23_39 Depth=1
	addi.d	$s4, $s4, -24
	beq	$s4, $fp, .LBB23_48
.LBB23_39:                              # %arraydestroy.body90.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, -24
	beqz	$a0, .LBB23_38
# %bb.40:                               # %if.then.i.i.i169.i
                                        #   in Loop: Header=BB23_39 Depth=1
	ld.d	$a1, $s4, -8
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB23_38
.LBB23_41:                              # %ehcleanup86.thread.i
.Ltmp140:                               # EH_LABEL
	move	$s3, $a0
	b	.LBB23_48
.LBB23_42:                              # %lpad6.i
.Ltmp137:                               # EH_LABEL
	move	$s3, $a0
	b	.LBB23_48
.LBB23_43:                              # %lpad.i.i
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_44:                              # %lpad.i
.Ltmp131:                               # EH_LABEL
	move	$s3, $a0
	ori	$a1, $zero, 320
	move	$a0, $fp
	b	.LBB23_50
.LBB23_45:                              # %lpad.i92.body.i
.Ltmp161:                               # EH_LABEL
	move	$s3, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPSt6vectorIlSaIlEEvED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB23_47
# %bb.46:                               # %if.then.i.i.i.i
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_47:                              # %if.then.i.i.i160.3.i
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_48:                              # %ehcleanup97.i
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB23_51
# %bb.49:                               # %if.then.i.i.i178.i
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
.LBB23_50:                              # %eh.resume.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_51:                              # %eh.resume.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_GLOBAL__sub_I_args_product_test.cc, .Lfunc_end23-_GLOBAL__sub_I_args_product_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp129-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin7         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin7         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin7         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin7         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin7         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin7         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin7         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin7         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp160-.Ltmp153              #   Call between .Ltmp153 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin7         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin7         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin7         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin7         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Lfunc_end23-.Ltmp169          #   Call between .Ltmp169 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark,@object # @_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark
	.local	_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark
	.comm	_ZL50benchmark_uniq_2ArgsProductFixture_Empty_Benchmark,8,8
	.type	.Lconstinit.2,@object           # @constinit.2
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lconstinit.2:
	.dword	3                               # 0x3
	.dword	7                               # 0x7
	.dword	10                              # 0xa
	.size	.Lconstinit.2, 24

	.type	.L__const.main.arg0_default,@object # @__const.main.arg0_default
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L__const.main.arg0_default:
	.asciz	"benchmark"
	.size	.L__const.main.arg0_default, 10

	.hidden	_ZTV34ArgsProductFixture_Empty_Benchmark # @_ZTV34ArgsProductFixture_Empty_Benchmark
	.type	_ZTV34ArgsProductFixture_Empty_Benchmark,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV34ArgsProductFixture_Empty_Benchmark
	.p2align	3, 0x0
_ZTV34ArgsProductFixture_Empty_Benchmark:
	.dword	0
	.dword	_ZTI34ArgsProductFixture_Empty_Benchmark
	.dword	_ZN18ArgsProductFixtureD2Ev
	.dword	_ZN34ArgsProductFixture_Empty_BenchmarkD0Ev
	.dword	_ZN9benchmark7Fixture3RunERNS_5StateE
	.dword	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
	.dword	_ZN9benchmark7Fixture8TearDownERKNS_5StateE
	.dword	_ZN9benchmark7Fixture5SetUpERNS_5StateE
	.dword	_ZN9benchmark7Fixture8TearDownERNS_5StateE
	.dword	_ZN34ArgsProductFixture_Empty_Benchmark13BenchmarkCaseERN9benchmark5StateE
	.size	_ZTV34ArgsProductFixture_Empty_Benchmark, 80

	.hidden	_ZTI34ArgsProductFixture_Empty_Benchmark # @_ZTI34ArgsProductFixture_Empty_Benchmark
	.type	_ZTI34ArgsProductFixture_Empty_Benchmark,@object
	.globl	_ZTI34ArgsProductFixture_Empty_Benchmark
	.p2align	3, 0x0
_ZTI34ArgsProductFixture_Empty_Benchmark:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS34ArgsProductFixture_Empty_Benchmark
	.dword	_ZTI18ArgsProductFixture
	.size	_ZTI34ArgsProductFixture_Empty_Benchmark, 24

	.hidden	_ZTS34ArgsProductFixture_Empty_Benchmark # @_ZTS34ArgsProductFixture_Empty_Benchmark
	.type	_ZTS34ArgsProductFixture_Empty_Benchmark,@object
	.section	.rodata,"a",@progbits
	.globl	_ZTS34ArgsProductFixture_Empty_Benchmark
_ZTS34ArgsProductFixture_Empty_Benchmark:
	.asciz	"34ArgsProductFixture_Empty_Benchmark"
	.size	_ZTS34ArgsProductFixture_Empty_Benchmark, 37

	.hidden	_ZTI18ArgsProductFixture        # @_ZTI18ArgsProductFixture
	.type	_ZTI18ArgsProductFixture,@object
	.section	.data.rel.ro._ZTI18ArgsProductFixture,"awG",@progbits,_ZTI18ArgsProductFixture,comdat
	.weak	_ZTI18ArgsProductFixture
	.p2align	3, 0x0
_ZTI18ArgsProductFixture:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18ArgsProductFixture
	.dword	_ZTIN9benchmark7FixtureE
	.size	_ZTI18ArgsProductFixture, 24

	.hidden	_ZTS18ArgsProductFixture        # @_ZTS18ArgsProductFixture
	.type	_ZTS18ArgsProductFixture,@object
	.section	.rodata._ZTS18ArgsProductFixture,"aG",@progbits,_ZTS18ArgsProductFixture,comdat
	.weak	_ZTS18ArgsProductFixture
_ZTS18ArgsProductFixture:
	.asciz	"18ArgsProductFixture"
	.size	_ZTS18ArgsProductFixture, 21

	.hidden	_ZTIN9benchmark7FixtureE        # @_ZTIN9benchmark7FixtureE
	.type	_ZTIN9benchmark7FixtureE,@object
	.section	.data.rel.ro._ZTIN9benchmark7FixtureE,"awG",@progbits,_ZTIN9benchmark7FixtureE,comdat
	.weak	_ZTIN9benchmark7FixtureE
	.p2align	3, 0x0
_ZTIN9benchmark7FixtureE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN9benchmark7FixtureE
	.dword	_ZTIN9benchmark8internal9BenchmarkE
	.size	_ZTIN9benchmark7FixtureE, 24

	.hidden	_ZTSN9benchmark7FixtureE        # @_ZTSN9benchmark7FixtureE
	.type	_ZTSN9benchmark7FixtureE,@object
	.section	.rodata._ZTSN9benchmark7FixtureE,"aG",@progbits,_ZTSN9benchmark7FixtureE,comdat
	.weak	_ZTSN9benchmark7FixtureE
_ZTSN9benchmark7FixtureE:
	.asciz	"N9benchmark7FixtureE"
	.size	_ZTSN9benchmark7FixtureE, 21

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range_.size() > pos"
	.size	.L.str, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.4, 90

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"cached_ > 0"
	.size	.L.str.5, 12

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.6:
	.asciz	"ArgsProductFixture/Empty"
	.size	.L.str.6, 25

	.hidden	_ZTV18ArgsProductFixture        # @_ZTV18ArgsProductFixture
	.type	_ZTV18ArgsProductFixture,@object
	.section	.data.rel.ro._ZTV18ArgsProductFixture,"awG",@progbits,_ZTV18ArgsProductFixture,comdat
	.weak	_ZTV18ArgsProductFixture
	.p2align	3, 0x0
_ZTV18ArgsProductFixture:
	.dword	0
	.dword	_ZTI18ArgsProductFixture
	.dword	_ZN18ArgsProductFixtureD2Ev
	.dword	_ZN18ArgsProductFixtureD0Ev
	.dword	_ZN9benchmark7Fixture3RunERNS_5StateE
	.dword	_ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
	.dword	_ZN9benchmark7Fixture8TearDownERKNS_5StateE
	.dword	_ZN9benchmark7Fixture5SetUpERNS_5StateE
	.dword	_ZN9benchmark7Fixture8TearDownERNS_5StateE
	.dword	__cxa_pure_virtual
	.size	_ZTV18ArgsProductFixture, 80

	.type	.Lconstinit.7,@object           # @constinit.7
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.Lconstinit.7:
	.dword	0                               # 0x0
	.dword	100                             # 0x64
	.dword	2000                            # 0x7d0
	.dword	30000                           # 0x7530
	.size	.Lconstinit.7, 32

	.type	.Lconstinit.8,@object           # @constinit.8
	.p2align	3, 0x0
.Lconstinit.8:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	3                               # 0x3
	.dword	8                               # 0x8
	.size	.Lconstinit.8, 32

	.type	.Lconstinit.9,@object           # @constinit.9
	.p2align	3, 0x0
.Lconstinit.9:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	3                               # 0x3
	.dword	9                               # 0x9
	.size	.Lconstinit.9, 32

	.type	.Lconstinit.10,@object          # @constinit.10
	.p2align	3, 0x0
.Lconstinit.10:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	7                               # 0x7
	.dword	8                               # 0x8
	.size	.Lconstinit.10, 32

	.type	.Lconstinit.11,@object          # @constinit.11
	.p2align	3, 0x0
.Lconstinit.11:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	7                               # 0x7
	.dword	9                               # 0x9
	.size	.Lconstinit.11, 32

	.type	.Lconstinit.12,@object          # @constinit.12
	.p2align	3, 0x0
.Lconstinit.12:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	10                              # 0xa
	.dword	8                               # 0x8
	.size	.Lconstinit.12, 32

	.type	.Lconstinit.13,@object          # @constinit.13
	.p2align	3, 0x0
.Lconstinit.13:
	.dword	1                               # 0x1
	.dword	15                              # 0xf
	.dword	10                              # 0xa
	.dword	9                               # 0x9
	.size	.Lconstinit.13, 32

	.type	.Lconstinit.14,@object          # @constinit.14
	.p2align	3, 0x0
.Lconstinit.14:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	3                               # 0x3
	.dword	8                               # 0x8
	.size	.Lconstinit.14, 32

	.type	.Lconstinit.15,@object          # @constinit.15
	.p2align	3, 0x0
.Lconstinit.15:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	3                               # 0x3
	.dword	9                               # 0x9
	.size	.Lconstinit.15, 32

	.type	.Lconstinit.16,@object          # @constinit.16
	.p2align	3, 0x0
.Lconstinit.16:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	7                               # 0x7
	.dword	8                               # 0x8
	.size	.Lconstinit.16, 32

	.type	.Lconstinit.17,@object          # @constinit.17
	.p2align	3, 0x0
.Lconstinit.17:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	7                               # 0x7
	.dword	9                               # 0x9
	.size	.Lconstinit.17, 32

	.type	.Lconstinit.18,@object          # @constinit.18
	.p2align	3, 0x0
.Lconstinit.18:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	10                              # 0xa
	.dword	8                               # 0x8
	.size	.Lconstinit.18, 32

	.type	.Lconstinit.19,@object          # @constinit.19
	.p2align	3, 0x0
.Lconstinit.19:
	.dword	2                               # 0x2
	.dword	15                              # 0xf
	.dword	10                              # 0xa
	.dword	9                               # 0x9
	.size	.Lconstinit.19, 32

	.type	.Lconstinit.20,@object          # @constinit.20
	.p2align	3, 0x0
.Lconstinit.20:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	11                              # 0xb
	.size	.Lconstinit.20, 32

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"EXPECTED\n"
	.size	.L.str.23, 10

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"{"
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	", "
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"}\n"
	.size	.L.str.26, 3

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"ACTUAL\n"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"expectedValues.find(ranges) != expectedValues.end()"
	.size	.L.str.28, 52

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/args_product_test.cc"
	.size	.L.str.29, 86

	.type	.L__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE
.L__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE:
	.asciz	"virtual void ArgsProductFixture::SetUp(const ::benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._ZN18ArgsProductFixture5SetUpERKN9benchmark5StateE, 67

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_args_product_test.cc
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
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_args_product_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI34ArgsProductFixture_Empty_Benchmark
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS34ArgsProductFixture_Empty_Benchmark
	.addrsig_sym _ZTI18ArgsProductFixture
	.addrsig_sym _ZTS18ArgsProductFixture
	.addrsig_sym _ZTIN9benchmark7FixtureE
	.addrsig_sym _ZTSN9benchmark7FixtureE
	.addrsig_sym _ZTIN9benchmark8internal9BenchmarkE
	.addrsig_sym _ZSt4cout
