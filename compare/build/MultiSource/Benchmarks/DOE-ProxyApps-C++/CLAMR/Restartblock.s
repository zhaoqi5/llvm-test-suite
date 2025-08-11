	.file	"Restartblock.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP12RestartblockC2Ev        # -- Begin function _ZN2PP12RestartblockC2Ev
	.p2align	2
	.type	_ZN2PP12RestartblockC2Ev,@function
_ZN2PP12RestartblockC2Ev:               # @_ZN2PP12RestartblockC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 80
	ori	$a2, $zero, 80
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$s1, $fp, 160
	ori	$a2, $zero, 80
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont3
	addi.d	$s2, $fp, 240
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:                                # %invoke.cont5
	addi.d	$s4, $fp, 320
	ori	$a2, $zero, 80
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.4:                                # %invoke.cont7
	addi.d	$s3, $fp, 400
	ori	$a2, $zero, 80
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.5:                                # %invoke.cont9
	addi.d	$a0, $fp, 504
	st.d	$a0, $fp, 488
	st.d	$zero, $fp, 496
	st.b	$zero, $fp, 504
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 480
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_6:                                # %lpad8
.Ltmp14:                                # EH_LABEL
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_7:                                # %lpad6
.Ltmp11:                                # EH_LABEL
	move	$s3, $a0
.LBB0_8:                                # %ehcleanup
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_9:                                # %lpad4
.Ltmp8:                                 # EH_LABEL
	move	$s3, $a0
.LBB0_10:                               # %ehcleanup10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.LBB0_11:                               # %lpad2
.Ltmp5:                                 # EH_LABEL
	move	$s3, $a0
.LBB0_12:                               # %ehcleanup11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN2PP12RestartblockC2Ev, .Lfunc_end0-_ZN2PP12RestartblockC2Ev
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
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Lfunc_end0-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.weak	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	2
	.type	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	xvld	$xr0, $a0, 16
	xvld	$xr1, $a0, 48
	xvst	$xr0, $sp, 48
	xvst	$xr1, $sp, 16
.Ltmp15:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB1_7
# %bb.2:                                # %if.then.i
	ld.d	$s0, $fp, 72
	ld.d	$a1, $fp, 40
	addi.d	$a2, $s0, 8
	bgeu	$a1, $a2, .LBB1_6
# %bb.3:                                # %for.body.i.i.preheader
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB1_4:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s1, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bltu	$s1, $s0, .LBB1_4
# %bb.5:                                # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i
	ld.d	$a0, $fp, 0
.LBB1_6:                                # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
	ld.d	$a1, $fp, 8
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_8:                                # %terminate.lpad
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end1-_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"aG",@progbits,_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
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
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end1
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
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EED2Ev,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EED2Ev
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev,@function
_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev:     # @_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	xvld	$xr0, $a0, 16
	xvld	$xr1, $a0, 48
	xvst	$xr0, $sp, 48
	xvst	$xr1, $sp, 16
.Ltmp18:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_7
# %bb.2:                                # %if.then.i
	ld.d	$s0, $fp, 72
	ld.d	$a1, $fp, 40
	addi.d	$a2, $s0, 8
	bgeu	$a1, $a2, .LBB2_6
# %bb.3:                                # %for.body.i.i.preheader
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB2_4:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s1, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bltu	$s1, $s0, .LBB2_4
# %bb.5:                                # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i
	ld.d	$a0, $fp, 0
.LBB2_6:                                # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
	ld.d	$a1, $fp, 8
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_8:                                # %terminate.lpad
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev, .Lfunc_end2-_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EED2Ev,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin2          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end2
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
	.globl	_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_ # -- Begin function _ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_
	.p2align	2
	.type	_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_,@function
_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_: # @_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
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
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	move	$s5, $a6
	move	$s0, $a5
	move	$s3, $a4
	move	$s2, $a3
	move	$s6, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
	addi.d	$s8, $fp, 80
	ori	$a2, $zero, 80
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$s4, $fp, 160
	ori	$a2, $zero, 80
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.2:                                # %invoke.cont3
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s7, $fp, 240
	ori	$a2, $zero, 80
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.3:                                # %invoke.cont5
	addi.d	$s0, $fp, 320
	ori	$a2, $zero, 80
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.4:                                # %invoke.cont7
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s0, $fp, 400
	ori	$a2, $zero, 80
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.5:                                # %invoke.cont9
	addi.d	$a0, $fp, 504
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $fp, 488
	st.d	$zero, $fp, 496
	addi.w	$s5, $zero, -1
	st.b	$zero, $fp, 504
	move	$a0, $s5
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 480
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 1
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.b	$a0, $s2, 0
	st.b	$zero, $s3, 0
	ld.d	$a0, $s6, 232
	ld.d	$a1, $s6, 200
	ld.d	$s0, $sp, 400
	sub.d	$a1, $a0, $a1
	ld.d	$a2, $s6, 208
	ld.d	$a3, $s6, 216
	srai.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	sub.d	$a0, $a1, $a0
	sub.d	$a1, $a2, $a3
	ld.d	$a2, $s6, 192
	ld.d	$a3, $s6, 176
	ld.d	$s1, $sp, 392
	srai.d	$a1, $a1, 7
	alsl.d	$a0, $a0, $a1, 2
	sub.d	$a1, $a2, $a3
	srai.d	$a1, $a1, 7
	add.w	$s2, $a0, $a1
	ori	$a0, $zero, 7
	addi.d	$a1, $fp, 488
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	blt	$a0, $s2, .LBB3_11
# %bb.6:                                # %if.then
.Ltmp483:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.7:                                # %invoke.cont12
	move	$s5, $s0
	addi.d	$s0, $s1, 16
.Ltmp485:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.8:                                # %invoke.cont13
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_839
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_26
# %bb.10:                               # %if.then.i2.i.i
	ld.bu	$a0, $s1, 67
	b	.LBB3_28
.LBB3_11:                               # %if.end
.Ltmp36:                                # EH_LABEL
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 256
	ori	$a2, $zero, 2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.12:                               # %invoke.cont51
	ld.d	$a0, $sp, 264
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_21
# %bb.13:                               # %if.end.i.i.i
	ld.d	$a0, $sp, 256
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB3_21
# %bb.14:                               # %for.body.lr.ph
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 384
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $s2, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s0, $zero, 2
	addi.d	$s3, $sp, 240
	ori	$s7, $zero, 4
	lu12i.w	$a0, 452182
	ori	$a0, $a0, 2164
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	addi.w	$s0, $s0, 1
	beq	$s2, $s0, .LBB3_131
.LBB3_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s4, $s0, -1
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.17:                               # %invoke.cont94
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a1, $sp, 232
	ld.d	$a0, $sp, 224
	bne	$a1, $s7, .LBB3_19
# %bb.18:                               # %invoke.cont96
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB3_161
.LBB3_19:                               # %for.inc.critedge
                                        #   in Loop: Header=BB3_16 Depth=1
	beq	$a0, $s3, .LBB3_15
# %bb.20:                               # %if.then.i.i351
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_15
.LBB3_21:                               # %if.then55
.Ltmp39:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$a0, $s6
	move	$a2, $s1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.22:                               # %invoke.cont56
	addi.d	$s0, $s1, 16
.Ltmp41:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 63
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.23:                               # %invoke.cont58
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_842
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2320
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_81
# %bb.25:                               # %if.then.i2.i.i2323
	ld.bu	$a0, $s1, 67
	b	.LBB3_83
.LBB3_26:                               # %if.end.i.i.i2150
.Ltmp487:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp488:                               # EH_LABEL
# %bb.27:                               # %.noexc2154
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp489:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp490:                               # EH_LABEL
.LBB3_28:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp491:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.29:                               # %call1.i.noexc
.Ltmp493:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.30:                               # %invoke.cont15
.Ltmp495:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 53
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.31:                               # %invoke.cont17
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB3_839
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2164
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB3_34
# %bb.33:                               # %if.then.i2.i.i2167
	ld.bu	$a0, $s3, 67
	b	.LBB3_36
.LBB3_34:                               # %if.end.i.i.i2172
.Ltmp497:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp498:                               # EH_LABEL
# %bb.35:                               # %.noexc2178
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp499:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp500:                               # EH_LABEL
.LBB3_36:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2169
.Ltmp501:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.37:                               # %call1.i.noexc2180
.Ltmp503:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.38:                               # %invoke.cont19
.Ltmp505:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 36
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
# %bb.39:                               # %invoke.cont22
.Ltmp507:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.40:                               # %invoke.cont24
.Ltmp509:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.41:                               # %invoke.cont26
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_839
# %bb.42:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2190
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_44
# %bb.43:                               # %if.then.i2.i.i2193
	ld.bu	$a0, $s2, 67
	b	.LBB3_46
.LBB3_44:                               # %if.end.i.i.i2198
.Ltmp511:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.45:                               # %.noexc2204
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp513:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp514:                               # EH_LABEL
.LBB3_46:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2195
.Ltmp515:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
# %bb.47:                               # %call1.i.noexc2206
.Ltmp517:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.48:                               # %invoke.cont28
.Ltmp519:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 43
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.49:                               # %invoke.cont31
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_839
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2216
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_52
# %bb.51:                               # %if.then.i2.i.i2219
	ld.bu	$a0, $s1, 67
	b	.LBB3_54
.LBB3_52:                               # %if.end.i.i.i2224
.Ltmp521:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp522:                               # EH_LABEL
# %bb.53:                               # %.noexc2230
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp523:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp524:                               # EH_LABEL
.LBB3_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2221
.Ltmp525:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.55:                               # %call1.i.noexc2232
.Ltmp527:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp528:                               # EH_LABEL
# %bb.56:                               # %invoke.cont33
.Ltmp529:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 43
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
# %bb.57:                               # %invoke.cont36
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_839
# %bb.58:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2242
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_60
# %bb.59:                               # %if.then.i2.i.i2245
	ld.bu	$a0, $s1, 67
	b	.LBB3_62
.LBB3_60:                               # %if.end.i.i.i2250
.Ltmp531:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.61:                               # %.noexc2256
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp533:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp534:                               # EH_LABEL
.LBB3_62:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2247
.Ltmp535:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.63:                               # %call1.i.noexc2258
.Ltmp537:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.64:                               # %invoke.cont38
.Ltmp539:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp540:                               # EH_LABEL
# %bb.65:                               # %invoke.cont41
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_839
# %bb.66:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2268
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_68
# %bb.67:                               # %if.then.i2.i.i2271
	ld.bu	$a0, $s1, 67
	b	.LBB3_70
.LBB3_68:                               # %if.end.i.i.i2276
.Ltmp541:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.69:                               # %.noexc2282
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp543:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp544:                               # EH_LABEL
.LBB3_70:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2273
.Ltmp545:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp546:                               # EH_LABEL
# %bb.71:                               # %call1.i.noexc2284
.Ltmp547:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp548:                               # EH_LABEL
# %bb.72:                               # %invoke.cont43
.Ltmp549:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 57
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.73:                               # %invoke.cont46
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_839
# %bb.74:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2294
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_76
# %bb.75:                               # %if.then.i2.i.i2297
	ld.bu	$a0, $s1, 67
	b	.LBB3_78
.LBB3_76:                               # %if.end.i.i.i2302
.Ltmp551:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp552:                               # EH_LABEL
# %bb.77:                               # %.noexc2308
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp553:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp554:                               # EH_LABEL
.LBB3_78:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2299
.Ltmp555:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.79:                               # %call1.i.noexc2310
.Ltmp557:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp558:                               # EH_LABEL
# %bb.80:                               # %invoke.cont48
	ori	$a0, $zero, 2
	st.w	$a0, $s5, 0
	b	.LBB3_130
.LBB3_81:                               # %if.end.i.i.i2328
.Ltmp43:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.82:                               # %.noexc2334
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp45:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp46:                                # EH_LABEL
.LBB3_83:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2325
.Ltmp47:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.84:                               # %call1.i.noexc2336
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.85:                               # %invoke.cont60
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.86:                               # %invoke.cont63
	ld.d	$a1, $sp, 256
	ld.d	$a2, $sp, 264
.Ltmp53:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.87:                               # %invoke.cont65
.Ltmp55:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 34
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.88:                               # %invoke.cont67
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_842
# %bb.89:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2346
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_91
# %bb.90:                               # %if.then.i2.i.i2349
	ld.bu	$a0, $s2, 67
	b	.LBB3_93
.LBB3_91:                               # %if.end.i.i.i2354
.Ltmp57:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.92:                               # %.noexc2360
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp59:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp60:                                # EH_LABEL
.LBB3_93:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2351
.Ltmp61:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.94:                               # %call1.i.noexc2362
.Ltmp63:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.95:                               # %invoke.cont69
.Ltmp65:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 51
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.96:                               # %invoke.cont72
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_842
# %bb.97:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2372
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_99
# %bb.98:                               # %if.then.i2.i.i2375
	ld.bu	$a0, $s1, 67
	b	.LBB3_101
.LBB3_99:                               # %if.end.i.i.i2380
.Ltmp67:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.100:                              # %.noexc2386
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp69:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp70:                                # EH_LABEL
.LBB3_101:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2377
.Ltmp71:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.102:                              # %call1.i.noexc2388
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.103:                              # %invoke.cont74
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.104:                              # %invoke.cont77
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_842
# %bb.105:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2398
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_107
# %bb.106:                              # %if.then.i2.i.i2401
	ld.bu	$a0, $s1, 67
	b	.LBB3_109
.LBB3_107:                              # %if.end.i.i.i2406
.Ltmp77:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.108:                              # %.noexc2412
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp79:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp80:                                # EH_LABEL
.LBB3_109:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2403
.Ltmp81:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.110:                              # %call1.i.noexc2414
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.111:                              # %invoke.cont79
.Ltmp85:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.112:                              # %invoke.cont82
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_842
# %bb.113:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2424
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_115
# %bb.114:                              # %if.then.i2.i.i2427
	ld.bu	$a0, $s1, 67
	b	.LBB3_117
.LBB3_115:                              # %if.end.i.i.i2432
.Ltmp87:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.116:                              # %.noexc2438
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp90:                                # EH_LABEL
.LBB3_117:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2429
.Ltmp91:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.118:                              # %call1.i.noexc2440
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.119:                              # %invoke.cont84
.Ltmp95:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 60
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.120:                              # %invoke.cont87
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_842
# %bb.121:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2450
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_123
# %bb.122:                              # %if.then.i2.i.i2453
	ld.bu	$a0, $s1, 67
	b	.LBB3_125
.LBB3_123:                              # %if.end.i.i.i2458
.Ltmp97:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.124:                              # %.noexc2464
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp99:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp100:                               # EH_LABEL
.LBB3_125:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2455
.Ltmp101:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.126:                              # %call1.i.noexc2466
.Ltmp103:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
.LBB3_127:                              # %invoke.cont89
	ori	$a0, $zero, 2
	st.w	$a0, $s3, 0
.LBB3_128:                              # %cleanup730
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 272
	beq	$a0, $a1, .LBB3_130
# %bb.129:                              # %if.then.i.i2125
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_130:                              # %cleanup734
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB3_131:                              # %for.body139.lr.ph
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	ori	$s0, $zero, 3
	slt	$a0, $s0, $s2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$s4, $a0, $a1
	ori	$s7, $zero, 4
	b	.LBB3_133
	.p2align	4, , 16
.LBB3_132:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
                                        #   in Loop: Header=BB3_133 Depth=1
	xor	$a0, $s4, $s0
	sltu	$a0, $zero, $a0
	and	$a0, $s8, $a0
	addi.w	$s0, $s0, 1
	beqz	$a0, .LBB3_140
.LBB3_133:                              # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s2, $s0, -1
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.134:                              # %invoke.cont141
                                        #   in Loop: Header=BB3_133 Depth=1
	ld.d	$a1, $sp, 232
	ld.d	$a0, $sp, 224
	ori	$s8, $zero, 1
	beq	$a1, $s8, .LBB3_138
# %bb.135:                              # %invoke.cont141
                                        #   in Loop: Header=BB3_133 Depth=1
	bne	$a1, $s7, .LBB3_137
# %bb.136:                              # %invoke.cont143
                                        #   in Loop: Header=BB3_133 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltu	$s8, $zero, $a1
.LBB3_137:                              # %cleanup151
                                        #   in Loop: Header=BB3_133 Depth=1
	bne	$a0, $s3, .LBB3_139
	b	.LBB3_132
	.p2align	4, , 16
.LBB3_138:                              # %invoke.cont147
                                        #   in Loop: Header=BB3_133 Depth=1
	ld.b	$a1, $a0, 0
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, -41
	sltu	$s8, $zero, $a1
	masknez	$a1, $s2, $s8
	maskeqz	$a2, $s5, $s8
	or	$s5, $a2, $a1
	beq	$a0, $s3, .LBB3_132
.LBB3_139:                              # %if.then.i.i383
                                        #   in Loop: Header=BB3_133 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_132
.LBB3_140:                              # %cleanup159
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beq	$s5, $a0, .LBB3_166
# %bb.141:                              # %if.end196
	andi	$a0, $s5, 3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_171
# %bb.142:                              # %for.cond252.preheader
	ori	$a0, $zero, 4
	blt	$s5, $a0, .LBB3_176
# %bb.143:                              # %for.body255.lr.ph
	ori	$s2, $zero, 3
	addi.d	$s7, $sp, 240
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s0, $a0, %pc_lo12(.L.str.33)
	ori	$s8, $zero, 5
	lu12i.w	$a0, 415462
	ori	$a0, $a0, 3950
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB3_147
.LBB3_144:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB3_147 Depth=1
	st.d	$a2, $a0, 0
	ld.d	$a1, $sp, 240
	st.d	$a1, $a0, 16
.LBB3_145:                              # %invoke.cont287.thread
                                        #   in Loop: Header=BB3_147 Depth=1
	st.d	$s8, $a0, 8
	ld.d	$a0, $fp, 368
	st.d	$s7, $sp, 224
	st.d	$zero, $sp, 232
	addi.d	$a0, $a0, 32
	st.d	$a0, $fp, 368
.LBB3_146:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.w	$s2, $s2, 4
	bge	$s2, $s5, .LBB3_176
.LBB3_147:                              # %for.body255
                                        # =>This Inner Loop Header: Depth=1
.Ltmp210:                               # EH_LABEL
	move	$a1, $s6
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.148:                              # %invoke.cont258
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.w	$a2, $s2, 1
.Ltmp212:                               # EH_LABEL
	move	$a1, $s6
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.149:                              # %invoke.cont261
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.w	$a2, $s2, 2
.Ltmp214:                               # EH_LABEL
	move	$a1, $s6
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.150:                              # %invoke.cont264
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.w	$a2, $s2, 3
	bge	$a2, $s5, .LBB3_152
# %bb.151:                              # %if.then267
                                        #   in Loop: Header=BB3_147 Depth=1
.Ltmp219:                               # EH_LABEL
	move	$a1, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
	b	.LBB3_155
	.p2align	4, , 16
.LBB3_152:                              # %if.else
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.d	$s4, $sp, 208
	st.d	$s4, $sp, 192
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $sp, 208
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 200
	st.b	$zero, $sp, 212
.Ltmp216:                               # EH_LABEL
	addi.d	$a4, $sp, 192
	move	$a1, $s6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.153:                              # %invoke.cont276
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 192
	beq	$a0, $s4, .LBB3_155
# %bb.154:                              # %if.then.i.i470
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_155:                              # %if.end280
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.w	$a0, $s0, 0
	st.d	$s7, $sp, 224
	ld.b	$a1, $s0, 4
	st.w	$a0, $s7, 0
	ld.d	$a2, $fp, 384
	ld.d	$a0, $fp, 368
	st.b	$a1, $s7, 4
	st.d	$s8, $sp, 232
	addi.d	$a1, $a2, -32
	st.b	$zero, $sp, 245
	beq	$a0, $a1, .LBB3_158
# %bb.156:                              # %if.then.i.i496
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 0
	ld.d	$a2, $sp, 224
	bne	$a2, $s7, .LBB3_144
# %bb.157:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.h	$a2, $s7, 4
	st.h	$a2, $a1, 4
	ld.w	$a2, $s7, 0
	st.w	$a2, $a1, 0
	b	.LBB3_145
.LBB3_158:                              # %if.else.i.i
                                        #   in Loop: Header=BB3_147 Depth=1
.Ltmp222:                               # EH_LABEL
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.159:                              # %invoke.cont287
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 224
	beq	$a0, $s7, .LBB3_146
# %bb.160:                              # %if.then.i.i501
                                        #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_146
.LBB3_161:                              # %if.then98
.Ltmp418:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.162:                              # %invoke.cont99
	addi.d	$s0, $s1, 16
.Ltmp420:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.163:                              # %invoke.cont101
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.164:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2476
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_383
# %bb.165:                              # %if.then.i2.i.i2479
	ld.bu	$a0, $s1, 67
	b	.LBB3_385
.LBB3_166:                              # %if.then163
.Ltmp353:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.167:                              # %invoke.cont165
	addi.d	$s0, $s1, 16
.Ltmp355:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 53
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.168:                              # %invoke.cont167
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.169:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2632
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_436
# %bb.170:                              # %if.then.i2.i.i2635
	ld.bu	$a0, $s1, 67
	b	.LBB3_438
.LBB3_171:                              # %if.then200
.Ltmp114:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.172:                              # %invoke.cont202
	addi.d	$s0, $s1, 16
.Ltmp116:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 53
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.173:                              # %invoke.cont204
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.174:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2788
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_481
# %bb.175:                              # %if.then.i2.i.i2791
	ld.bu	$a0, $s1, 67
	b	.LBB3_483
.LBB3_176:                              # %for.cond297.preheader
	move	$s4, $zero
	ori	$s8, $zero, 16
	lu12i.w	$a0, 190278
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 190038
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 190230
	ori	$a0, $a0, 1326
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s7, $zero, -1
	b	.LBB3_178
	.p2align	4, , 16
.LBB3_177:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213
                                        #   in Loop: Header=BB3_178 Depth=1
	andi	$a0, $s5, 1
	addi.d	$s4, $s4, 128
	move	$s0, $s2
	beqz	$a0, .LBB3_433
.LBB3_178:                              # %for.cond297
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a0, $a1
	ld.d	$a2, $fp, 48
	ld.d	$a3, $fp, 56
	srli.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	sub.d	$a0, $a1, $a0
	sub.d	$a1, $a2, $a3
	ld.d	$a2, $fp, 32
	ld.d	$a3, $fp, 16
	srli.d	$a1, $a1, 7
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a4, $s0, 1
	sub.d	$a1, $a2, $a3
	srli.d	$a1, $a1, 7
	add.w	$a0, $a0, $a1
	bge	$a4, $a0, .LBB3_429
# %bb.179:                              # %for.body302
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	bltz	$a3, .LBB3_182
# %bb.180:                              # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_183
# %bb.181:                              # %if.then.i.i.i.i518
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_185
.LBB3_182:                              # %cond.false.i.i.i.i
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_184
.LBB3_183:                              # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_184:                              # %cond.end.i.i.i.i
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_185:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
                                        #   in Loop: Header=BB3_178 Depth=1
	st.d	$s3, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $s3
	bltu	$a1, $s8, .LBB3_188
# %bb.186:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp264:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.187:                              # %call.i4.i.i.noexc
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_188:                              # %if.end.i.i.i522
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB3_192
# %bb.189:                              # %if.end.i.i.i522
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_191
# %bb.190:                              # %if.then.i.i.i.i523
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_192
.LBB3_191:                              # %if.end.i.i.i.i.i524
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_192:                              # %invoke.cont308
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_194
# %bb.193:                              # %if.end.i.i533
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s5, $a0, 1
	bne	$s2, $s3, .LBB3_195
	b	.LBB3_196
	.p2align	4, , 16
.LBB3_194:                              #   in Loop: Header=BB3_178 Depth=1
	move	$s5, $zero
	beq	$s2, $s3, .LBB3_196
.LBB3_195:                              # %if.then.i.i537
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_196:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_199
# %bb.197:                              # %land.lhs.true.i.i.i.i561
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_200
# %bb.198:                              # %if.then.i.i.i.i565
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_202
.LBB3_199:                              # %cond.false.i.i.i.i552
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_201
.LBB3_200:                              # %cond.true.i.i.i.i563
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_201:                              # %cond.end.i.i.i.i554
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_202:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit567
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_205
# %bb.203:                              # %if.then.i.i.i577
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp267:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.204:                              # %call.i4.i.i.noexc578
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_205:                              # %if.end.i.i.i572
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_209
# %bb.206:                              # %if.end.i.i.i572
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_208
# %bb.207:                              # %if.then.i.i.i.i574
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_209
.LBB3_208:                              # %if.end.i.i.i.i.i575
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_209:                              # %invoke.cont321
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_211
# %bb.210:                              # %if.end.i.i594
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s5, $a0, $s5
.LBB3_211:                              # %invoke.cont323
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s2, $a0, .LBB3_213
# %bb.212:                              # %if.then.i.i598
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_213:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_216
# %bb.214:                              # %land.lhs.true.i.i.i.i622
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_217
# %bb.215:                              # %if.then.i.i.i.i626
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_219
.LBB3_216:                              # %cond.false.i.i.i.i613
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_218
.LBB3_217:                              # %cond.true.i.i.i.i624
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_218:                              # %cond.end.i.i.i.i615
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_219:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit628
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_222
# %bb.220:                              # %if.then.i.i.i638
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp270:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.221:                              # %call.i4.i.i.noexc639
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_222:                              # %if.end.i.i.i633
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_226
# %bb.223:                              # %if.end.i.i.i633
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_225
# %bb.224:                              # %if.then.i.i.i.i635
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_226
.LBB3_225:                              # %if.end.i.i.i.i.i636
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_226:                              # %invoke.cont334
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_228
# %bb.227:                              # %if.end.i.i655
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s5, $a0, $s5
.LBB3_228:                              # %invoke.cont336
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s2, $a0, .LBB3_230
# %bb.229:                              # %if.then.i.i659
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_230:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_233
# %bb.231:                              # %land.lhs.true.i.i.i.i683
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_234
# %bb.232:                              # %if.then.i.i.i.i687
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_236
.LBB3_233:                              # %cond.false.i.i.i.i674
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_235
.LBB3_234:                              # %cond.true.i.i.i.i685
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_235:                              # %cond.end.i.i.i.i676
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_236:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit689
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_239
# %bb.237:                              # %if.then.i.i.i699
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.238:                              # %call.i4.i.i.noexc700
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_239:                              # %if.end.i.i.i694
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_243
# %bb.240:                              # %if.end.i.i.i694
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_242
# %bb.241:                              # %if.then.i.i.i.i696
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_243
.LBB3_242:                              # %if.end.i.i.i.i.i697
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_243:                              # %invoke.cont347
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_245
# %bb.244:                              # %if.end.i.i716
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s5, $a0, $s5
.LBB3_245:                              # %invoke.cont349
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s2, $a0, .LBB3_247
# %bb.246:                              # %if.then.i.i720
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_247:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_250
# %bb.248:                              # %land.lhs.true.i.i.i.i744
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_251
# %bb.249:                              # %if.then.i.i.i.i748
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_253
.LBB3_250:                              # %cond.false.i.i.i.i735
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_252
.LBB3_251:                              # %cond.true.i.i.i.i746
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_252:                              # %cond.end.i.i.i.i737
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_253:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit750
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_256
# %bb.254:                              # %if.then.i.i.i760
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.255:                              # %call.i4.i.i.noexc761
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_256:                              # %if.end.i.i.i755
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_260
# %bb.257:                              # %if.end.i.i.i755
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_259
# %bb.258:                              # %if.then.i.i.i.i757
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_260
.LBB3_259:                              # %if.end.i.i.i.i.i758
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_260:                              # %invoke.cont360
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_262
# %bb.261:                              # %if.end.i.i777
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s5, $a0, $s5
.LBB3_262:                              # %invoke.cont362
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s2, $a0, .LBB3_264
# %bb.263:                              # %if.then.i.i781
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_264:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_267
# %bb.265:                              # %land.lhs.true.i.i.i.i805
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_268
# %bb.266:                              # %if.then.i.i.i.i809
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_270
.LBB3_267:                              # %cond.false.i.i.i.i796
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_269
.LBB3_268:                              # %cond.true.i.i.i.i807
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_269:                              # %cond.end.i.i.i.i798
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_270:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit811
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_273
# %bb.271:                              # %if.then.i.i.i821
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.272:                              # %call.i4.i.i.noexc822
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_273:                              # %if.end.i.i.i816
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_277
# %bb.274:                              # %if.end.i.i.i816
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_276
# %bb.275:                              # %if.then.i.i.i.i818
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_277
.LBB3_276:                              # %if.end.i.i.i.i.i819
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_277:                              # %invoke.cont373
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s2, $sp, 224
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB3_279
# %bb.278:                              # %if.end.i.i838
                                        #   in Loop: Header=BB3_178 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$s5, $a0, $s5
.LBB3_279:                              # %invoke.cont375
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s2, $a0, .LBB3_281
# %bb.280:                              # %if.then.i.i842
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_281:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_284
# %bb.282:                              # %land.lhs.true.i.i.i.i866
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_285
# %bb.283:                              # %if.then.i.i.i.i870
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_287
.LBB3_284:                              # %cond.false.i.i.i.i857
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_286
.LBB3_285:                              # %cond.true.i.i.i.i868
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_286:                              # %cond.end.i.i.i.i859
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_287:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit872
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_290
# %bb.288:                              # %if.then.i.i.i882
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.289:                              # %call.i4.i.i.noexc883
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_290:                              # %if.end.i.i.i877
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_294
# %bb.291:                              # %if.end.i.i.i877
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_293
# %bb.292:                              # %if.then.i.i.i.i879
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_294
.LBB3_293:                              # %if.end.i.i.i.i.i880
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_294:                              # %invoke.cont386
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_296
# %bb.295:                              # %if.end.i.i899
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_296:                              # %invoke.cont388
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_298
# %bb.297:                              # %if.then.i.i903
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_298:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit908
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_301
# %bb.299:                              # %land.lhs.true.i.i.i.i927
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_302
# %bb.300:                              # %if.then.i.i.i.i931
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_304
.LBB3_301:                              # %cond.false.i.i.i.i918
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_303
.LBB3_302:                              # %cond.true.i.i.i.i929
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_303:                              # %cond.end.i.i.i.i920
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_304:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit933
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_307
# %bb.305:                              # %if.then.i.i.i943
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp285:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.306:                              # %call.i4.i.i.noexc944
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_307:                              # %if.end.i.i.i938
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_311
# %bb.308:                              # %if.end.i.i.i938
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_310
# %bb.309:                              # %if.then.i.i.i.i940
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_311
.LBB3_310:                              # %if.end.i.i.i.i.i941
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_311:                              # %invoke.cont399
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_313
# %bb.312:                              # %if.end.i.i960
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_313:                              # %invoke.cont401
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_315
# %bb.314:                              # %if.then.i.i964
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_315:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit969
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_318
# %bb.316:                              # %land.lhs.true.i.i.i.i988
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_319
# %bb.317:                              # %if.then.i.i.i.i992
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_321
.LBB3_318:                              # %cond.false.i.i.i.i979
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_320
.LBB3_319:                              # %cond.true.i.i.i.i990
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_320:                              # %cond.end.i.i.i.i981
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_321:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit994
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_324
# %bb.322:                              # %if.then.i.i.i1004
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp288:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.323:                              # %call.i4.i.i.noexc1005
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_324:                              # %if.end.i.i.i999
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_328
# %bb.325:                              # %if.end.i.i.i999
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_327
# %bb.326:                              # %if.then.i.i.i.i1001
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_328
.LBB3_327:                              # %if.end.i.i.i.i.i1002
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_328:                              # %invoke.cont412
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_330
# %bb.329:                              # %if.end.i.i1021
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_330:                              # %invoke.cont414
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_332
# %bb.331:                              # %if.then.i.i1025
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_332:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_335
# %bb.333:                              # %land.lhs.true.i.i.i.i1049
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_336
# %bb.334:                              # %if.then.i.i.i.i1053
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_338
.LBB3_335:                              # %cond.false.i.i.i.i1040
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_337
.LBB3_336:                              # %cond.true.i.i.i.i1051
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_337:                              # %cond.end.i.i.i.i1042
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_338:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1055
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_341
# %bb.339:                              # %if.then.i.i.i1065
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp291:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.340:                              # %call.i4.i.i.noexc1066
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_341:                              # %if.end.i.i.i1060
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_345
# %bb.342:                              # %if.end.i.i.i1060
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_344
# %bb.343:                              # %if.then.i.i.i.i1062
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_345
.LBB3_344:                              # %if.end.i.i.i.i.i1063
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_345:                              # %invoke.cont425
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_347
# %bb.346:                              # %if.end.i.i1082
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 190038
	ori	$a2, $a2, 3630
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_347:                              # %invoke.cont427
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_349
# %bb.348:                              # %if.then.i.i1086
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_349:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1091
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_352
# %bb.350:                              # %land.lhs.true.i.i.i.i1110
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_353
# %bb.351:                              # %if.then.i.i.i.i1114
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_355
.LBB3_352:                              # %cond.false.i.i.i.i1101
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_354
.LBB3_353:                              # %cond.true.i.i.i.i1112
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_354:                              # %cond.end.i.i.i.i1103
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_355:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1116
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_358
# %bb.356:                              # %if.then.i.i.i1126
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp294:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.357:                              # %call.i4.i.i.noexc1127
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_358:                              # %if.end.i.i.i1121
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_362
# %bb.359:                              # %if.end.i.i.i1121
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_361
# %bb.360:                              # %if.then.i.i.i.i1123
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_362
.LBB3_361:                              # %if.end.i.i.i.i.i1124
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_362:                              # %invoke.cont438
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_364
# %bb.363:                              # %if.end.i.i1143
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 190278
	ori	$a2, $a2, 1838
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_364:                              # %invoke.cont440
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_366
# %bb.365:                              # %if.then.i.i1147
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_366:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s0, $a1
	addi.d	$a3, $a3, 1
	bltz	$a3, .LBB3_369
# %bb.367:                              # %land.lhs.true.i.i.i.i1171
                                        #   in Loop: Header=BB3_178 Depth=1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_370
# %bb.368:                              # %if.then.i.i.i.i1175
                                        #   in Loop: Header=BB3_178 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB3_372
.LBB3_369:                              # %cond.false.i.i.i.i1162
                                        #   in Loop: Header=BB3_178 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB3_371
.LBB3_370:                              # %cond.true.i.i.i.i1173
                                        #   in Loop: Header=BB3_178 Depth=1
	srli.d	$a2, $a3, 2
.LBB3_371:                              # %cond.end.i.i.i.i1164
                                        #   in Loop: Header=BB3_178 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 128
.LBB3_372:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1177
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s8, .LBB3_375
# %bb.373:                              # %if.then.i.i.i1187
                                        #   in Loop: Header=BB3_178 Depth=1
.Ltmp297:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.374:                              # %call.i4.i.i.noexc1188
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_375:                              # %if.end.i.i.i1182
                                        #   in Loop: Header=BB3_178 Depth=1
	beq	$a1, $s7, .LBB3_379
# %bb.376:                              # %if.end.i.i.i1182
                                        #   in Loop: Header=BB3_178 Depth=1
	bnez	$a1, .LBB3_378
# %bb.377:                              # %if.then.i.i.i.i1184
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_379
.LBB3_378:                              # %if.end.i.i.i.i.i1185
                                        #   in Loop: Header=BB3_178 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_379:                              # %invoke.cont451
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 288
	ld.d	$a0, $sp, 224
	st.d	$a1, $sp, 232
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_381
# %bb.380:                              # %if.end.i.i1204
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 190038
	ori	$a2, $a2, 1838
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	or	$s5, $a1, $s5
.LBB3_381:                              # %invoke.cont453
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_177
# %bb.382:                              # %if.then.i.i1208
                                        #   in Loop: Header=BB3_178 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_177
.LBB3_383:                              # %if.end.i.i.i2484
.Ltmp422:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.384:                              # %.noexc2490
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp424:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp425:                               # EH_LABEL
.LBB3_385:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2481
.Ltmp426:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.386:                              # %call1.i.noexc2492
.Ltmp428:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp429:                               # EH_LABEL
# %bb.387:                              # %invoke.cont103
.Ltmp430:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 66
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.388:                              # %invoke.cont106
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.389:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2502
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_391
# %bb.390:                              # %if.then.i2.i.i2505
	ld.bu	$a0, $s1, 67
	b	.LBB3_393
.LBB3_391:                              # %if.end.i.i.i2510
.Ltmp432:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.392:                              # %.noexc2516
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp434:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp435:                               # EH_LABEL
.LBB3_393:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2507
.Ltmp436:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
# %bb.394:                              # %call1.i.noexc2518
.Ltmp438:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.395:                              # %invoke.cont108
.Ltmp440:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 51
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.396:                              # %invoke.cont111
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.397:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2528
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_399
# %bb.398:                              # %if.then.i2.i.i2531
	ld.bu	$a0, $s1, 67
	b	.LBB3_401
.LBB3_399:                              # %if.end.i.i.i2536
.Ltmp442:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.400:                              # %.noexc2542
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp444:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp445:                               # EH_LABEL
.LBB3_401:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2533
.Ltmp446:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.402:                              # %call1.i.noexc2544
.Ltmp448:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.403:                              # %invoke.cont113
.Ltmp450:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.404:                              # %invoke.cont116
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.405:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2554
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_407
# %bb.406:                              # %if.then.i2.i.i2557
	ld.bu	$a0, $s1, 67
	b	.LBB3_409
.LBB3_407:                              # %if.end.i.i.i2562
.Ltmp452:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp453:                               # EH_LABEL
# %bb.408:                              # %.noexc2568
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp454:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp455:                               # EH_LABEL
.LBB3_409:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2559
.Ltmp456:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.410:                              # %call1.i.noexc2570
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.411:                              # %invoke.cont118
.Ltmp460:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.412:                              # %invoke.cont121
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.413:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2580
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_415
# %bb.414:                              # %if.then.i2.i.i2583
	ld.bu	$a0, $s1, 67
	b	.LBB3_417
.LBB3_415:                              # %if.end.i.i.i2588
.Ltmp462:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.416:                              # %.noexc2594
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp464:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp465:                               # EH_LABEL
.LBB3_417:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2585
.Ltmp466:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.418:                              # %call1.i.noexc2596
.Ltmp468:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.419:                              # %invoke.cont123
.Ltmp470:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 60
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.420:                              # %invoke.cont126
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_844
# %bb.421:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2606
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_423
# %bb.422:                              # %if.then.i2.i.i2609
	ld.bu	$a0, $s1, 67
	b	.LBB3_425
.LBB3_423:                              # %if.end.i.i.i2614
.Ltmp472:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp473:                               # EH_LABEL
# %bb.424:                              # %.noexc2620
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp474:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp475:                               # EH_LABEL
.LBB3_425:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2611
.Ltmp476:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
# %bb.426:                              # %call1.i.noexc2622
.Ltmp478:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
# %bb.427:                              # %invoke.cont128
	ld.d	$a0, $sp, 224
	ori	$a1, $zero, 2
	st.w	$a1, $s2, 0
	beq	$a0, $s3, .LBB3_128
# %bb.428:                              # %if.then.i.i
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_128
.LBB3_429:                              # %for.end506
.Ltmp225:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.430:                              # %invoke.cont509
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_550
# %bb.431:                              # %invoke.cont.thread.i
	ld.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	beq	$a1, $a2, .LBB3_554
# %bb.432:                              # %if.then24.i
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	b	.LBB3_552
.LBB3_433:                              # %if.then459
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $a1, $s2
	bltz	$a3, .LBB3_558
# %bb.434:                              # %land.lhs.true.i.i.i.i1239
	ori	$a4, $zero, 3
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_559
# %bb.435:                              # %if.then.i.i.i.i1243
	add.d	$a0, $a2, $s4
	addi.d	$a0, $a0, -128
	b	.LBB3_561
.LBB3_436:                              # %if.end.i.i.i2640
.Ltmp357:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.437:                              # %.noexc2646
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp359:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp360:                               # EH_LABEL
.LBB3_438:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2637
.Ltmp361:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.439:                              # %call1.i.noexc2648
.Ltmp363:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.440:                              # %invoke.cont169
.Ltmp365:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.441:                              # %invoke.cont172
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.442:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2658
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_444
# %bb.443:                              # %if.then.i2.i.i2661
	ld.bu	$a0, $s1, 67
	b	.LBB3_446
.LBB3_444:                              # %if.end.i.i.i2666
.Ltmp367:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.445:                              # %.noexc2672
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp369:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp370:                               # EH_LABEL
.LBB3_446:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2663
.Ltmp371:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.447:                              # %call1.i.noexc2674
.Ltmp373:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.448:                              # %invoke.cont174
.Ltmp375:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 51
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.449:                              # %invoke.cont177
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.450:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2684
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_452
# %bb.451:                              # %if.then.i2.i.i2687
	ld.bu	$a0, $s1, 67
	b	.LBB3_454
.LBB3_452:                              # %if.end.i.i.i2692
.Ltmp377:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.453:                              # %.noexc2698
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp379:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp380:                               # EH_LABEL
.LBB3_454:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2689
.Ltmp381:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.455:                              # %call1.i.noexc2700
.Ltmp383:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.456:                              # %invoke.cont179
.Ltmp385:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.457:                              # %invoke.cont182
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.458:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2710
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_460
# %bb.459:                              # %if.then.i2.i.i2713
	ld.bu	$a0, $s1, 67
	b	.LBB3_462
.LBB3_460:                              # %if.end.i.i.i2718
.Ltmp387:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.461:                              # %.noexc2724
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp389:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp390:                               # EH_LABEL
.LBB3_462:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2715
.Ltmp391:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.463:                              # %call1.i.noexc2726
.Ltmp393:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.464:                              # %invoke.cont184
.Ltmp395:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.465:                              # %invoke.cont187
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.466:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2736
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_468
# %bb.467:                              # %if.then.i2.i.i2739
	ld.bu	$a0, $s1, 67
	b	.LBB3_470
.LBB3_468:                              # %if.end.i.i.i2744
.Ltmp397:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.469:                              # %.noexc2750
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp399:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp400:                               # EH_LABEL
.LBB3_470:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2741
.Ltmp401:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.471:                              # %call1.i.noexc2752
.Ltmp403:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.472:                              # %invoke.cont189
.Ltmp405:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 60
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.473:                              # %invoke.cont192
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_848
# %bb.474:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2762
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_476
# %bb.475:                              # %if.then.i2.i.i2765
	ld.bu	$a0, $s1, 67
	b	.LBB3_478
.LBB3_476:                              # %if.end.i.i.i2770
.Ltmp407:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.477:                              # %.noexc2776
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp409:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp410:                               # EH_LABEL
.LBB3_478:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2767
.Ltmp411:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.479:                              # %call1.i.noexc2778
.Ltmp413:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp414:                               # EH_LABEL
# %bb.480:                              # %invoke.cont194
	ori	$a0, $zero, 2
	st.w	$a0, $s2, 0
	b	.LBB3_128
.LBB3_481:                              # %if.end.i.i.i2796
.Ltmp118:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.482:                              # %.noexc2802
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp120:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp121:                               # EH_LABEL
.LBB3_483:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2793
.Ltmp122:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.484:                              # %call1.i.noexc2804
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.485:                              # %invoke.cont206
.Ltmp126:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 41
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.486:                              # %invoke.cont209
.Ltmp128:                               # EH_LABEL
	addi.w	$a1, $s5, -3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.487:                              # %invoke.cont211
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_846
# %bb.488:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2814
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_490
# %bb.489:                              # %if.then.i2.i.i2817
	ld.bu	$a0, $s2, 67
	b	.LBB3_492
.LBB3_490:                              # %if.end.i.i.i2822
.Ltmp130:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.491:                              # %.noexc2828
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp132:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp133:                               # EH_LABEL
.LBB3_492:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2819
.Ltmp134:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.493:                              # %call1.i.noexc2830
.Ltmp136:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.494:                              # %invoke.cont213
.Ltmp138:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 50
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.495:                              # %invoke.cont216
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.496:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2840
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_498
# %bb.497:                              # %if.then.i2.i.i2843
	ld.bu	$a0, $s1, 67
	b	.LBB3_500
.LBB3_498:                              # %if.end.i.i.i2848
.Ltmp140:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.499:                              # %.noexc2854
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp142:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp143:                               # EH_LABEL
.LBB3_500:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2845
.Ltmp144:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.501:                              # %call1.i.noexc2856
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.502:                              # %invoke.cont218
.Ltmp148:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 39
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.503:                              # %invoke.cont221
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.504:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2866
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_506
# %bb.505:                              # %if.then.i2.i.i2869
	ld.bu	$a0, $s1, 67
	b	.LBB3_508
.LBB3_506:                              # %if.end.i.i.i2874
.Ltmp150:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.507:                              # %.noexc2880
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp152:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp153:                               # EH_LABEL
.LBB3_508:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2871
.Ltmp154:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.509:                              # %call1.i.noexc2882
.Ltmp156:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.510:                              # %invoke.cont223
.Ltmp158:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 15
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.511:                              # %invoke.cont226
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.512:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2892
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_514
# %bb.513:                              # %if.then.i2.i.i2895
	ld.bu	$a0, $s1, 67
	b	.LBB3_516
.LBB3_514:                              # %if.end.i.i.i2900
.Ltmp160:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.515:                              # %.noexc2906
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp162:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp163:                               # EH_LABEL
.LBB3_516:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2897
.Ltmp164:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.517:                              # %call1.i.noexc2908
.Ltmp166:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.518:                              # %invoke.cont228
.Ltmp168:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.519:                              # %invoke.cont231
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.520:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2918
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_522
# %bb.521:                              # %if.then.i2.i.i2921
	ld.bu	$a0, $s1, 67
	b	.LBB3_524
.LBB3_522:                              # %if.end.i.i.i2926
.Ltmp170:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.523:                              # %.noexc2932
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp172:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp173:                               # EH_LABEL
.LBB3_524:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2923
.Ltmp174:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.525:                              # %call1.i.noexc2934
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.526:                              # %invoke.cont233
.Ltmp178:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.527:                              # %invoke.cont236
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.528:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2944
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_530
# %bb.529:                              # %if.then.i2.i.i2947
	ld.bu	$a0, $s1, 67
	b	.LBB3_532
.LBB3_530:                              # %if.end.i.i.i2952
.Ltmp180:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.531:                              # %.noexc2958
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp182:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp183:                               # EH_LABEL
.LBB3_532:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2949
.Ltmp184:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.533:                              # %call1.i.noexc2960
.Ltmp186:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.534:                              # %invoke.cont238
.Ltmp188:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 36
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.535:                              # %invoke.cont241
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.536:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2970
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_538
# %bb.537:                              # %if.then.i2.i.i2973
	ld.bu	$a0, $s1, 67
	b	.LBB3_540
.LBB3_538:                              # %if.end.i.i.i2978
.Ltmp190:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.539:                              # %.noexc2984
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp192:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp193:                               # EH_LABEL
.LBB3_540:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2975
.Ltmp194:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.541:                              # %call1.i.noexc2986
.Ltmp196:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.542:                              # %invoke.cont243
.Ltmp198:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.543:                              # %invoke.cont246
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_846
# %bb.544:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2996
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_546
# %bb.545:                              # %if.then.i2.i.i2999
	ld.bu	$a0, $s1, 67
	b	.LBB3_548
.LBB3_546:                              # %if.end.i.i.i3004
.Ltmp200:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.547:                              # %.noexc3010
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp202:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp203:                               # EH_LABEL
.LBB3_548:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i3001
.Ltmp204:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.549:                              # %call1.i.noexc3012
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
	b	.LBB3_127
.LBB3_550:                              # %invoke.cont.i
	ld.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	beq	$a1, $a2, .LBB3_554
# %bb.551:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB3_552:                              # %if.end26.i
	vld	$vr0, $sp, 232
	st.d	$a1, $fp, 488
	vst	$vr0, $fp, 496
	beqz	$a0, .LBB3_611
# %bb.553:                              # %if.then30.i
	st.d	$a0, $sp, 224
	st.d	$a3, $sp, 240
	b	.LBB3_614
.LBB3_554:                              # %if.then9.i
	addi.d	$a2, $sp, 224
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB3_841
# %bb.555:                              # %if.then10.i
	ld.d	$a2, $sp, 232
	beqz	$a2, .LBB3_613
# %bb.556:                              # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_612
# %bb.557:                              # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_613
.LBB3_558:                              # %cond.false.i.i.i.i1230
	srai.d	$a2, $a3, 2
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_560
.LBB3_559:                              # %cond.true.i.i.i.i1241
	srli.d	$a2, $a3, 2
.LBB3_560:                              # %cond.end.i.i.i.i1232
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_561:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1245
.Ltmp300:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.562:                              # %invoke.cont464
	addi.d	$s2, $s1, 16
.Ltmp302:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 31
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.563:                              # %invoke.cont466
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_850
# %bb.564:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i3022
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_566
# %bb.565:                              # %if.then.i2.i.i3025
	ld.bu	$a0, $s1, 67
	b	.LBB3_568
.LBB3_566:                              # %if.end.i.i.i3030
.Ltmp304:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.567:                              # %.noexc3036
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp306:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp307:                               # EH_LABEL
.LBB3_568:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i3027
.Ltmp308:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.569:                              # %call1.i.noexc3038
.Ltmp310:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.570:                              # %invoke.cont468
.Ltmp312:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.571:                              # %invoke.cont471
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_850
# %bb.572:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i3048
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_574
# %bb.573:                              # %if.then.i2.i.i3051
	ld.bu	$a0, $s1, 67
	b	.LBB3_576
.LBB3_574:                              # %if.end.i.i.i3056
.Ltmp314:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.575:                              # %.noexc3062
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp316:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp317:                               # EH_LABEL
.LBB3_576:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i3053
.Ltmp318:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.577:                              # %call1.i.noexc3064
.Ltmp320:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.578:                              # %invoke.cont473
.Ltmp322:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 60
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.579:                              # %invoke.cont476
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_850
# %bb.580:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i3074
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_582
# %bb.581:                              # %if.then.i2.i.i3077
	ld.bu	$a0, $s1, 67
	b	.LBB3_584
.LBB3_582:                              # %if.end.i.i.i3082
.Ltmp324:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.583:                              # %.noexc3088
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp326:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp327:                               # EH_LABEL
.LBB3_584:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i3079
.Ltmp328:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.585:                              # %call1.i.noexc3090
.Ltmp330:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.586:                              # %invoke.cont478
.Ltmp332:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 25
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp333:                               # EH_LABEL
# %bb.587:                              # %invoke.cont481
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	bltz	$a3, .LBB3_590
# %bb.588:                              # %land.lhs.true.i.i.i.i1282
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_591
# %bb.589:                              # %if.then.i.i.i.i1286
	add.d	$a0, $a2, $s4
	addi.d	$a0, $a0, -128
	b	.LBB3_593
.LBB3_590:                              # %cond.false.i.i.i.i1273
	srai.d	$a2, $a3, 2
	b	.LBB3_592
.LBB3_591:                              # %cond.true.i.i.i.i1284
	srli.d	$a2, $a3, 2
.LBB3_592:                              # %cond.end.i.i.i.i1275
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_593:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1288
	addi.d	$s3, $sp, 240
	st.d	$s3, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 288
	move	$a0, $s3
	bltu	$a1, $a2, .LBB3_596
# %bb.594:                              # %if.then.i.i.i1298
.Ltmp334:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.595:                              # %call.i4.i.i.noexc1299
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_596:                              # %if.end.i.i.i1293
	beq	$a1, $s7, .LBB3_600
# %bb.597:                              # %if.end.i.i.i1293
	bnez	$a1, .LBB3_599
# %bb.598:                              # %if.then.i.i.i.i1295
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_600
.LBB3_599:                              # %if.end.i.i.i.i.i1296
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_600:                              # %invoke.cont488
	ld.d	$a2, $sp, 288
	ld.d	$a1, $sp, 224
	st.d	$a2, $sp, 232
.Ltmp337:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.601:                              # %invoke.cont490
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_852
# %bb.602:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i3100
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_604
# %bb.603:                              # %if.then.i2.i.i3103
	ld.bu	$a0, $s1, 67
	b	.LBB3_606
.LBB3_604:                              # %if.end.i.i.i3108
.Ltmp339:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.605:                              # %.noexc3114
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp341:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp342:                               # EH_LABEL
.LBB3_606:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i3105
.Ltmp343:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.607:                              # %call1.i.noexc3116
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.608:                              # %invoke.cont492
	ld.d	$a0, $sp, 224
	beq	$a0, $s3, .LBB3_610
# %bb.609:                              # %if.then.i.i1309
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_610:                              # %cleanup503
	ori	$a0, $zero, 2
	st.w	$a0, $s5, 0
	b	.LBB3_128
.LBB3_611:                              # %if.else31.i
	st.d	$a2, $sp, 224
	move	$a0, $a2
	b	.LBB3_614
.LBB3_612:                              # %if.end.i.i.i1326
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_613:                              # %if.end18.i
	ld.d	$a0, $sp, 232
	ld.d	$a1, $fp, 488
	st.d	$a0, $fp, 496
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 224
.LBB3_614:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 232
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 224
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_616
# %bb.615:                              # %if.then.i.i1329
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_616:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335
	ld.d	$a0, $s0, 72
	ld.d	$s3, $s0, 40
	sub.d	$a1, $a0, $s3
	srli.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $s0, 48
	ld.d	$a3, $s0, 56
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $s0, 32
	ld.d	$a4, $s0, 16
	sub.d	$a2, $a2, $a3
	srai.d	$a2, $a2, 5
	alsl.d	$a0, $a0, $a2, 4
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a4
	srai.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_670
# %bb.617:                              # %for.body519.lr.ph
	ld.d	$a1, $s0, 24
	move	$s5, $zero
	move	$s4, $zero
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sub.d	$s8, $a2, $a1
	ld.d	$s0, $fp, 496
	ld.d	$s1, $fp, 488
	srai.d	$s2, $s8, 5
	bstrpick.d	$s7, $a0, 30, 0
	b	.LBB3_619
.LBB3_618:                              # %for.inc580
                                        #   in Loop: Header=BB3_619 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, -4
	addi.d	$s8, $s8, 32
	beq	$s7, $s4, .LBB3_670
.LBB3_619:                              # %for.body519
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s2, $s4
	bltz	$a0, .LBB3_622
# %bb.620:                              # %land.lhs.true.i.i.i.i1379
                                        #   in Loop: Header=BB3_619 Depth=1
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB3_623
# %bb.621:                              # %if.then.i.i.i.i1383
                                        #   in Loop: Header=BB3_619 Depth=1
	slli.d	$a0, $s4, 5
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 8
	bne	$s0, $a1, .LBB3_618
	b	.LBB3_625
.LBB3_622:                              # %cond.false.i.i.i.i1370
                                        #   in Loop: Header=BB3_619 Depth=1
	srai.d	$a0, $a0, 4
	b	.LBB3_624
.LBB3_623:                              # %cond.true.i.i.i.i1381
                                        #   in Loop: Header=BB3_619 Depth=1
	srli.d	$a0, $a0, 4
.LBB3_624:                              # %cond.end.i.i.i.i1372
                                        #   in Loop: Header=BB3_619 Depth=1
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s3, $a1
	slli.d	$a0, $a0, 9
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s8
	ld.d	$a1, $a0, 8
	bne	$s0, $a1, .LBB3_618
.LBB3_625:                              # %land.rhs.i1388
                                        #   in Loop: Header=BB3_619 Depth=1
	beqz	$s0, .LBB3_627
# %bb.626:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
                                        #   in Loop: Header=BB3_619 Depth=1
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_618
.LBB3_627:                              # %if.then524
	st.w	$zero, $fp, 480
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 16
	ld.d	$a0, $a1, 24
	ld.d	$a1, $a1, 40
	sub.d	$a0, $a2, $a0
	add.d	$a3, $a0, $s4
	bltz	$a3, .LBB3_630
# %bb.628:                              # %land.lhs.true.i.i.i.i1408
	ori	$a4, $zero, 511
	bltu	$a4, $a3, .LBB3_631
# %bb.629:                              # %if.then.i.i.i.i1412
	add.d	$a0, $a2, $s4
	b	.LBB3_633
.LBB3_630:                              # %cond.false.i.i.i.i1399
	srai.d	$a2, $a3, 9
	b	.LBB3_632
.LBB3_631:                              # %cond.true.i.i.i.i1410
	srli.d	$a2, $a3, 9
.LBB3_632:                              # %cond.end.i.i.i.i1401
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 9
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s4
.LBB3_633:                              # %_ZNSt5dequeIbSaIbEEixEm.exit
	ld.bu	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_635
# %bb.634:                              # %if.then529
	st.w	$a0, $fp, 480
.LBB3_635:                              # %if.end531
	beqz	$s4, .LBB3_644
# %bb.636:                              # %for.body535.lr.ph
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$a3, $a2, 24
	move	$a1, $zero
	move	$s1, $zero
	ld.d	$a2, $a2, 40
	sub.d	$a3, $a0, $a3
	srai.d	$a4, $a3, 2
	ori	$a5, $zero, 127
	b	.LBB3_640
.LBB3_637:                              # %cond.false.i.i.i.i1423
                                        #   in Loop: Header=BB3_640 Depth=1
	srai.d	$a6, $a6, 7
.LBB3_638:                              # %cond.end.i.i.i.i1425
                                        #   in Loop: Header=BB3_640 Depth=1
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a2, $a7
	slli.d	$a6, $a6, 9
	sub.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a3
.LBB3_639:                              # %_ZNSt5dequeIiSaIiEEixEm.exit
                                        #   in Loop: Header=BB3_640 Depth=1
	ld.w	$a6, $a6, 0
	add.w	$s1, $a6, $s1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	beq	$s4, $a1, .LBB3_645
.LBB3_640:                              # %for.body535
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a4, $a1
	bltz	$a6, .LBB3_637
# %bb.641:                              # %land.lhs.true.i.i.i.i1432
                                        #   in Loop: Header=BB3_640 Depth=1
	bltu	$a5, $a6, .LBB3_643
# %bb.642:                              # %if.then.i.i.i.i1436
                                        #   in Loop: Header=BB3_640 Depth=1
	alsl.d	$a6, $a1, $a0, 2
	b	.LBB3_639
.LBB3_643:                              # %cond.true.i.i.i.i1434
                                        #   in Loop: Header=BB3_640 Depth=1
	srli.d	$a6, $a6, 7
	b	.LBB3_638
.LBB3_644:
	move	$s1, $zero
.LBB3_645:                              # %for.cond544.preheader
	move	$s8, $zero
	move	$s3, $zero
	addi.d	$s7, $sp, 240
	sub.d	$s2, $zero, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s5, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $s1
	b	.LBB3_647
.LBB3_646:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1544
                                        #   in Loop: Header=BB3_647 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 32
.LBB3_647:                              # %for.cond544
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 16
	ld.d	$a1, $a0, 24
	ld.d	$a0, $a0, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 2
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_650
# %bb.648:                              # %land.lhs.true.i.i.i.i1456
                                        #   in Loop: Header=BB3_647 Depth=1
	ori	$a3, $zero, 127
	bltu	$a3, $a1, .LBB3_651
# %bb.649:                              # %if.then.i.i.i.i1460
                                        #   in Loop: Header=BB3_647 Depth=1
	add.d	$a0, $a2, $s2
	b	.LBB3_653
.LBB3_650:                              # %cond.false.i.i.i.i1447
                                        #   in Loop: Header=BB3_647 Depth=1
	srai.d	$a2, $a1, 7
	b	.LBB3_652
.LBB3_651:                              # %cond.true.i.i.i.i1458
                                        #   in Loop: Header=BB3_647 Depth=1
	srli.d	$a2, $a1, 7
.LBB3_652:                              # %cond.end.i.i.i.i1449
                                        #   in Loop: Header=BB3_647 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 7
	sub.d	$a1, $a1, $a2
	alsl.d	$a0, $a1, $a0, 2
.LBB3_653:                              # %_ZNSt5dequeIiSaIiEEixEm.exit1462
                                        #   in Loop: Header=BB3_647 Depth=1
	ld.w	$a1, $a0, 0
	add.d	$a0, $s1, $s3
	add.w	$a1, $a1, $s1
	bge	$a0, $a1, .LBB3_670
# %bb.654:                              # %for.body550
                                        #   in Loop: Header=BB3_647 Depth=1
	ld.w	$a1, $s5, 0
	st.d	$s7, $sp, 224
	ld.b	$a2, $s5, 4
	st.w	$a1, $s7, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a4, 16
	ld.d	$a1, $a4, 24
	st.b	$a2, $s7, 4
	ori	$a2, $zero, 5
	st.d	$a2, $sp, 232
	ld.d	$a2, $a4, 40
	sub.d	$a1, $a3, $a1
	add.d	$a0, $a0, $a1
	st.b	$zero, $sp, 245
	bltz	$a0, .LBB3_657
# %bb.655:                              # %land.lhs.true.i.i.i.i1492
                                        #   in Loop: Header=BB3_647 Depth=1
	ori	$a4, $zero, 511
	bltu	$a4, $a0, .LBB3_658
# %bb.656:                              # %if.then.i.i.i.i1496
                                        #   in Loop: Header=BB3_647 Depth=1
	add.d	$a0, $a3, $s0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_660
	b	.LBB3_661
.LBB3_657:                              # %cond.false.i.i.i.i1483
                                        #   in Loop: Header=BB3_647 Depth=1
	srai.d	$a0, $a0, 9
	b	.LBB3_659
.LBB3_658:                              # %cond.true.i.i.i.i1494
                                        #   in Loop: Header=BB3_647 Depth=1
	srli.d	$a0, $a0, 9
.LBB3_659:                              # %cond.end.i.i.i.i1485
                                        #   in Loop: Header=BB3_647 Depth=1
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	slli.d	$a0, $a0, 9
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $s1
	add.d	$a0, $a0, $s3
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_661
.LBB3_660:                              # %if.then559
                                        #   in Loop: Header=BB3_647 Depth=1
.Ltmp259:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 5
	ori	$a4, $zero, 4
	move	$a1, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
.LBB3_661:                              # %if.end563
                                        #   in Loop: Header=BB3_647 Depth=1
	ld.d	$a2, $fp, 336
	ld.d	$a1, $fp, 344
	ld.d	$a0, $fp, 360
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a1, $s3, $a1
	bltz	$a1, .LBB3_664
# %bb.662:                              # %land.lhs.true.i.i.i.i1529
                                        #   in Loop: Header=BB3_647 Depth=1
	ori	$a3, $zero, 15
	bltu	$a3, $a1, .LBB3_665
# %bb.663:                              # %if.then.i.i.i.i1533
                                        #   in Loop: Header=BB3_647 Depth=1
	add.d	$a0, $a2, $s8
	b	.LBB3_667
.LBB3_664:                              # %cond.false.i.i.i.i1520
                                        #   in Loop: Header=BB3_647 Depth=1
	srai.d	$a2, $a1, 4
	b	.LBB3_666
.LBB3_665:                              # %cond.true.i.i.i.i1531
                                        #   in Loop: Header=BB3_647 Depth=1
	srli.d	$a2, $a1, 4
.LBB3_666:                              # %cond.end.i.i.i.i1522
                                        #   in Loop: Header=BB3_647 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB3_667:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit1535
                                        #   in Loop: Header=BB3_647 Depth=1
.Ltmp261:                               # EH_LABEL
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.668:                              # %invoke.cont568
                                        #   in Loop: Header=BB3_647 Depth=1
	ld.d	$a0, $sp, 224
	beq	$a0, $s7, .LBB3_646
# %bb.669:                              # %if.then.i.i1538
                                        #   in Loop: Header=BB3_647 Depth=1
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_646
.LBB3_670:                              # %cleanup582
	ld.w	$a0, $fp, 480
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_672
# %bb.671:                              # %if.then587
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.b	$zero, $a0, 0
.LBB3_672:                              # %if.end588
	move	$s3, $zero
	move	$s4, $zero
	ori	$s8, $zero, 3
	ori	$s7, $zero, 16
	addi.w	$s0, $zero, -1
	ori	$s5, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_673:                              # %for.cond590
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $fp, 48
	ld.d	$a3, $fp, 56
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $fp, 32
	ld.d	$a4, $fp, 16
	sub.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 7
	alsl.d	$a0, $a0, $a2, 2
	sub.d	$a1, $a1, $a4
	srli.d	$a1, $a1, 7
	add.w	$a0, $a0, $a1
	bge	$s4, $a0, .LBB3_831
# %bb.674:                              # %for.body596
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	st.b	$zero, $sp, 191
	bltz	$a1, .LBB3_677
# %bb.675:                              # %land.lhs.true.i.i.i.i1588
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_678
# %bb.676:                              # %if.then.i.i.i.i1592
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_680
.LBB3_677:                              # %cond.false.i.i.i.i1579
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_679
.LBB3_678:                              # %cond.true.i.i.i.i1590
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_679:                              # %cond.end.i.i.i.i1581
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_680:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1594
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_683
# %bb.681:                              # %if.then.i.i.i1604
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.682:                              # %call.i4.i.i.noexc1605
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_683:                              # %if.end.i.i.i1599
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_686
# %bb.684:                              # %if.end.i.i.i1599
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_688
# %bb.685:                              # %if.then.i.i.i.i1601
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
.LBB3_686:                              # %invoke.cont602
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_689
.LBB3_687:                              # %if.end.i.i1614
                                        #   in Loop: Header=BB3_673 Depth=1
	ori	$a2, $zero, 6
	move	$a0, $s1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	addi.d	$a0, $sp, 240
	bne	$s1, $a0, .LBB3_690
	b	.LBB3_691
.LBB3_688:                              # %if.end.i.i.i.i.i1602
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	beq	$a0, $s5, .LBB3_687
.LBB3_689:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_691
.LBB3_690:                              # %if.then.i.i1618
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_691:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1624
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_695
# %bb.692:                              # %if.then608
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_698
# %bb.693:                              # %land.lhs.true.i.i.i.i1643
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_700
# %bb.694:                              # %if.then.i.i.i.i1647
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_702
	.p2align	4, , 16
.LBB3_695:                              # %if.else614
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_699
# %bb.696:                              # %land.lhs.true.i.i.i.i1676
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_703
# %bb.697:                              # %if.then.i.i.i.i1680
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_705
.LBB3_698:                              # %cond.false.i.i.i.i1634
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_701
.LBB3_699:                              # %cond.false.i.i.i.i1667
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_704
.LBB3_700:                              # %cond.true.i.i.i.i1645
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_701:                              # %cond.end.i.i.i.i1636
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_702:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	b	.LBB3_828
.LBB3_703:                              # %cond.true.i.i.i.i1678
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_704:                              # %cond.end.i.i.i.i1669
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_705:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1682
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_708
# %bb.706:                              # %if.then.i.i.i1692
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp239:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.707:                              # %call.i4.i.i.noexc1693
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_708:                              # %if.end.i.i.i1687
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_711
# %bb.709:                              # %if.end.i.i.i1687
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_713
# %bb.710:                              # %if.then.i.i.i.i1689
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
.LBB3_711:                              # %invoke.cont620
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_714
.LBB3_712:                              # %if.end.i.i1702
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	addi.d	$a0, $sp, 240
	bne	$s1, $a0, .LBB3_715
	b	.LBB3_716
.LBB3_713:                              # %if.end.i.i.i.i.i1690
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	beq	$a0, $s5, .LBB3_712
.LBB3_714:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_716
.LBB3_715:                              # %if.then.i.i1706
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_716:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1712
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_720
# %bb.717:                              # %if.then626
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_723
# %bb.718:                              # %land.lhs.true.i.i.i.i1731
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_725
# %bb.719:                              # %if.then.i.i.i.i1735
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_727
.LBB3_720:                              # %if.else631
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_724
# %bb.721:                              # %land.lhs.true.i.i.i.i1764
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_728
# %bb.722:                              # %if.then.i.i.i.i1768
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_730
.LBB3_723:                              # %cond.false.i.i.i.i1722
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_726
.LBB3_724:                              # %cond.false.i.i.i.i1755
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_729
.LBB3_725:                              # %cond.true.i.i.i.i1733
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_726:                              # %cond.end.i.i.i.i1724
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_727:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	b	.LBB3_828
.LBB3_728:                              # %cond.true.i.i.i.i1766
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_729:                              # %cond.end.i.i.i.i1757
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_730:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1770
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_733
# %bb.731:                              # %if.then.i.i.i1780
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp242:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.732:                              # %call.i4.i.i.noexc1781
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_733:                              # %if.end.i.i.i1775
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_736
# %bb.734:                              # %if.end.i.i.i1775
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_738
# %bb.735:                              # %if.then.i.i.i.i1777
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
.LBB3_736:                              # %invoke.cont637
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_739
.LBB3_737:                              # %if.end.i.i1790
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	b	.LBB3_740
.LBB3_738:                              # %if.end.i.i.i.i.i1778
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	beq	$a0, $s5, .LBB3_737
.LBB3_739:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
.LBB3_740:                              # %invoke.cont639
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_742
# %bb.741:                              # %if.then.i.i1794
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_742:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_746
# %bb.743:                              # %if.then643
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_749
# %bb.744:                              # %land.lhs.true.i.i.i.i1819
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_751
# %bb.745:                              # %if.then.i.i.i.i1823
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_753
.LBB3_746:                              # %if.else648
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_750
# %bb.747:                              # %land.lhs.true.i.i.i.i1852
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_754
# %bb.748:                              # %if.then.i.i.i.i1856
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_756
.LBB3_749:                              # %cond.false.i.i.i.i1810
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_752
.LBB3_750:                              # %cond.false.i.i.i.i1843
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_755
.LBB3_751:                              # %cond.true.i.i.i.i1821
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_752:                              # %cond.end.i.i.i.i1812
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_753:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	b	.LBB3_828
.LBB3_754:                              # %cond.true.i.i.i.i1854
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_755:                              # %cond.end.i.i.i.i1845
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_756:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1858
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_759
# %bb.757:                              # %if.then.i.i.i1868
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp245:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.758:                              # %call.i4.i.i.noexc1869
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_759:                              # %if.end.i.i.i1863
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_763
# %bb.760:                              # %if.end.i.i.i1863
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_762
# %bb.761:                              # %if.then.i.i.i.i1865
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_763
.LBB3_762:                              # %if.end.i.i.i.i.i1866
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_763:                              # %invoke.cont654
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_765
# %bb.764:                              # %if.end.i.i1878
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	b	.LBB3_766
.LBB3_765:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
.LBB3_766:                              # %invoke.cont656
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_768
# %bb.767:                              # %if.then.i.i1882
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_768:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1888
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_772
# %bb.769:                              # %if.then660
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_775
# %bb.770:                              # %land.lhs.true.i.i.i.i1907
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_777
# %bb.771:                              # %if.then.i.i.i.i1911
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_779
.LBB3_772:                              # %if.else665
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_776
# %bb.773:                              # %land.lhs.true.i.i.i.i1940
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_780
# %bb.774:                              # %if.then.i.i.i.i1944
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_782
.LBB3_775:                              # %cond.false.i.i.i.i1898
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_778
.LBB3_776:                              # %cond.false.i.i.i.i1931
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_781
.LBB3_777:                              # %cond.true.i.i.i.i1909
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_778:                              # %cond.end.i.i.i.i1900
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_779:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	b	.LBB3_828
.LBB3_780:                              # %cond.true.i.i.i.i1942
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_781:                              # %cond.end.i.i.i.i1933
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_782:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit1946
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_785
# %bb.783:                              # %if.then.i.i.i1956
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp248:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp249:                               # EH_LABEL
# %bb.784:                              # %call.i4.i.i.noexc1957
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_785:                              # %if.end.i.i.i1951
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_789
# %bb.786:                              # %if.end.i.i.i1951
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_788
# %bb.787:                              # %if.then.i.i.i.i1953
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_789
.LBB3_788:                              # %if.end.i.i.i.i.i1954
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_789:                              # %invoke.cont671
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_791
# %bb.790:                              # %if.end.i.i1966
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	b	.LBB3_792
.LBB3_791:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
.LBB3_792:                              # %invoke.cont673
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_794
# %bb.793:                              # %if.then.i.i1970
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_794:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1976
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_798
# %bb.795:                              # %if.then677
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_801
# %bb.796:                              # %land.lhs.true.i.i.i.i1995
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_803
# %bb.797:                              # %if.then.i.i.i.i1999
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_805
.LBB3_798:                              # %if.else682
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	bltz	$a1, .LBB3_802
# %bb.799:                              # %land.lhs.true.i.i.i.i2028
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_806
# %bb.800:                              # %if.then.i.i.i.i2032
                                        #   in Loop: Header=BB3_673 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB3_808
.LBB3_801:                              # %cond.false.i.i.i.i1986
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_804
.LBB3_802:                              # %cond.false.i.i.i.i2019
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_807
.LBB3_803:                              # %cond.true.i.i.i.i1997
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_804:                              # %cond.end.i.i.i.i1988
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_805:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	b	.LBB3_828
.LBB3_806:                              # %cond.true.i.i.i.i2030
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_807:                              # %cond.end.i.i.i.i2021
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_808:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2034
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $sp, 240
	st.d	$a2, $sp, 224
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	st.d	$a1, $sp, 288
	move	$a0, $a2
	bltu	$a1, $s7, .LBB3_811
# %bb.809:                              # %if.then.i.i.i2044
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp251:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.810:                              # %call.i4.i.i.noexc2045
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a1, $sp, 288
	st.d	$a0, $sp, 224
	st.d	$a1, $sp, 240
.LBB3_811:                              # %if.end.i.i.i2039
                                        #   in Loop: Header=BB3_673 Depth=1
	beq	$a1, $s0, .LBB3_815
# %bb.812:                              # %if.end.i.i.i2039
                                        #   in Loop: Header=BB3_673 Depth=1
	bnez	$a1, .LBB3_814
# %bb.813:                              # %if.then.i.i.i.i2041
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_815
.LBB3_814:                              # %if.end.i.i.i.i.i2042
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_815:                              # %invoke.cont688
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$s1, $sp, 224
	st.d	$a0, $sp, 232
	bne	$a0, $s5, .LBB3_817
# %bb.816:                              # %if.end.i.i2054
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s2, $a0, 1
	b	.LBB3_818
.LBB3_817:                              #   in Loop: Header=BB3_673 Depth=1
	move	$s2, $zero
.LBB3_818:                              # %invoke.cont690
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$a0, $sp, 240
	beq	$s1, $a0, .LBB3_820
# %bb.819:                              # %if.then.i.i2058
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a0, $sp, 240
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_820:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2064
                                        #   in Loop: Header=BB3_673 Depth=1
	beqz	$s2, .LBB3_829
# %bb.821:                              # %if.then694
                                        #   in Loop: Header=BB3_673 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s4, $a1
	ori	$a3, $zero, 1
	st.b	$a3, $sp, 191
	bltz	$a1, .LBB3_824
# %bb.822:                              # %land.lhs.true.i.i.i.i2083
                                        #   in Loop: Header=BB3_673 Depth=1
	bltu	$s8, $a1, .LBB3_825
# %bb.823:                              # %if.then.i.i.i.i2087
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_827
.LBB3_824:                              # %cond.false.i.i.i.i2074
                                        #   in Loop: Header=BB3_673 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB3_826
.LBB3_825:                              # %cond.true.i.i.i.i2085
                                        #   in Loop: Header=BB3_673 Depth=1
	srli.d	$a2, $a1, 2
.LBB3_826:                              # %cond.end.i.i.i.i2076
                                        #   in Loop: Header=BB3_673 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_827:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	.p2align	4, , 16
.LBB3_828:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit2089.invoke
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEPKc)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
.LBB3_829:                              # %if.end704
                                        #   in Loop: Header=BB3_673 Depth=1
.Ltmp256:                               # EH_LABEL
	addi.d	$a1, $sp, 191
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeIbSaIbEE9push_backERKb)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.830:                              # %invoke.cont706
                                        #   in Loop: Header=BB3_673 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 128
	b	.LBB3_673
.LBB3_831:                              # %for.cond.cleanup595
.Ltmp228:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	move	$a1, $s6
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.832:                              # %invoke.cont716
	ld.d	$a1, $sp, 232
	ld.d	$a0, $sp, 224
	ori	$a2, $zero, 4
	ori	$s0, $zero, 1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB3_834
# %bb.833:                              # %if.end.i.i.i2105
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltu	$s0, $zero, $a1
.LBB3_834:                              # %invoke.cont718
	addi.d	$a1, $sp, 240
	beq	$a0, $a1, .LBB3_836
# %bb.835:                              # %if.then.i.i2109
	ld.d	$a1, $sp, 240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_836:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2115
	beqz	$s0, .LBB3_128
# %bb.837:                              # %if.then722
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 0
.Ltmp231:                               # EH_LABEL
	ori	$a2, $zero, 5
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd12delete_wordsEii)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.838:                              # %invoke.cont723
.Ltmp233:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd15reset_name_typeEv)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
	b	.LBB3_128
.LBB3_839:                              # %if.then.i.i.i2306.invoke
.Ltmp559:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
# %bb.840:                              # %if.then.i.i.i2306.cont
.LBB3_841:
	move	$a0, $a1
	b	.LBB3_614
.LBB3_842:                              # %if.then.i.i.i2462.invoke
.Ltmp105:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.843:                              # %if.then.i.i.i2462.cont
.LBB3_844:                              # %if.then.i.i.i2618.invoke
.Ltmp480:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.845:                              # %if.then.i.i.i2618.cont
.LBB3_846:                              # %if.then.i.i.i3008.invoke
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.847:                              # %if.then.i.i.i3008.cont
.LBB3_848:                              # %if.then.i.i.i2774.invoke
.Ltmp415:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.849:                              # %if.then.i.i.i2774.cont
.LBB3_850:                              # %if.then.i.i.i3086.invoke
.Ltmp350:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.851:                              # %if.then.i.i.i3086.cont
.LBB3_852:                              # %if.then.i.i.i3112
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.853:                              # %.noexc3113
.LBB3_854:                              # %lpad687
.Ltmp253:                               # EH_LABEL
	b	.LBB3_900
.LBB3_855:                              # %lpad487
.Ltmp336:                               # EH_LABEL
	b	.LBB3_900
.LBB3_856:                              # %lpad670
.Ltmp250:                               # EH_LABEL
	b	.LBB3_900
.LBB3_857:                              # %lpad715
.Ltmp230:                               # EH_LABEL
	b	.LBB3_900
.LBB3_858:                              # %lpad508
.Ltmp227:                               # EH_LABEL
	b	.LBB3_900
.LBB3_859:                              # %lpad653
.Ltmp247:                               # EH_LABEL
	b	.LBB3_900
.LBB3_860:                              # %lpad636
.Ltmp244:                               # EH_LABEL
	b	.LBB3_900
.LBB3_861:                              # %lpad489
.Ltmp349:                               # EH_LABEL
	b	.LBB3_892
.LBB3_862:                              # %lpad619
.Ltmp241:                               # EH_LABEL
	b	.LBB3_900
.LBB3_863:                              # %lpad286
.Ltmp224:                               # EH_LABEL
	b	.LBB3_865
.LBB3_864:                              # %lpad560
.Ltmp263:                               # EH_LABEL
.LBB3_865:                              # %lpad286
	ld.d	$a2, $sp, 224
	move	$s0, $a0
	bne	$a2, $s7, .LBB3_893
	b	.LBB3_901
.LBB3_866:                              # %lpad601
.Ltmp238:                               # EH_LABEL
	b	.LBB3_900
.LBB3_867:                              # %lpad307
.Ltmp266:                               # EH_LABEL
	b	.LBB3_900
.LBB3_868:                              # %lpad333
.Ltmp272:                               # EH_LABEL
	b	.LBB3_900
.LBB3_869:                              # %lpad359
.Ltmp278:                               # EH_LABEL
	b	.LBB3_900
.LBB3_870:                              # %lpad385
.Ltmp284:                               # EH_LABEL
	b	.LBB3_900
.LBB3_871:                              # %lpad411
.Ltmp290:                               # EH_LABEL
	b	.LBB3_900
.LBB3_872:                              # %lpad437
.Ltmp296:                               # EH_LABEL
	b	.LBB3_900
.LBB3_873:                              # %lpad320
.Ltmp269:                               # EH_LABEL
	b	.LBB3_900
.LBB3_874:                              # %lpad346
.Ltmp275:                               # EH_LABEL
	b	.LBB3_900
.LBB3_875:                              # %lpad372
.Ltmp281:                               # EH_LABEL
	b	.LBB3_900
.LBB3_876:                              # %lpad398
.Ltmp287:                               # EH_LABEL
	b	.LBB3_900
.LBB3_877:                              # %lpad424
.Ltmp293:                               # EH_LABEL
	b	.LBB3_900
.LBB3_878:                              # %lpad450
.Ltmp299:                               # EH_LABEL
	b	.LBB3_900
.LBB3_879:                              # %lpad463
.Ltmp352:                               # EH_LABEL
	b	.LBB3_900
.LBB3_880:                              # %lpad275
.Ltmp218:                               # EH_LABEL
	ld.d	$a2, $sp, 192
	move	$s0, $a0
	beq	$a2, $s4, .LBB3_901
# %bb.881:                              # %if.then.i.i477
	ld.d	$a0, $sp, 208
	b	.LBB3_894
.LBB3_882:                              # %lpad50
.Ltmp38:                                # EH_LABEL
	b	.LBB3_904
.LBB3_883:                              # %lpad612
.Ltmp258:                               # EH_LABEL
	b	.LBB3_900
.LBB3_884:                              # %lpad164
.Ltmp417:                               # EH_LABEL
	b	.LBB3_900
.LBB3_885:                              # %lpad8
.Ltmp35:                                # EH_LABEL
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB3_908
.LBB3_886:                              # %lpad6
.Ltmp32:                                # EH_LABEL
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB3_909
.LBB3_887:                              # %lpad4
.Ltmp29:                                # EH_LABEL
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB3_910
.LBB3_888:                              # %lpad2
.Ltmp26:                                # EH_LABEL
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
	b	.LBB3_911
.LBB3_889:                              # %lpad
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_890:                              # %lpad201
.Ltmp235:                               # EH_LABEL
	b	.LBB3_900
.LBB3_891:                              # %lpad95
.Ltmp482:                               # EH_LABEL
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
.LBB3_892:                              # %lpad95
	ld.d	$a2, $sp, 224
	move	$s0, $a0
	beq	$a2, $s3, .LBB3_901
.LBB3_893:                              # %if.then.i.i344
	ld.d	$a0, $sp, 240
.LBB3_894:                              # %ehcleanup731
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_901
.LBB3_895:                              # %lpad257
.Ltmp221:                               # EH_LABEL
	b	.LBB3_900
.LBB3_896:                              # %lpad140
.Ltmp113:                               # EH_LABEL
	b	.LBB3_900
.LBB3_897:                              # %lpad93
.Ltmp110:                               # EH_LABEL
	b	.LBB3_899
.LBB3_898:                              # %lpad52
.Ltmp107:                               # EH_LABEL
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
.LBB3_899:                              # %ehcleanup731
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
.LBB3_900:                              # %ehcleanup731
	move	$s0, $a0
.LBB3_901:                              # %ehcleanup731
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 272
	beq	$a0, $a1, .LBB3_905
# %bb.902:                              # %if.then.i.i2133
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_905
.LBB3_903:                              # %lpad10
.Ltmp561:                               # EH_LABEL
.LBB3_904:                              # %ehcleanup737
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a0
.LBB3_905:                              # %ehcleanup737
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_907
# %bb.906:                              # %if.then.i.i2141
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_907:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2147
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeIbSaIbEED2Ev)
	jirl	$ra, $ra, 0
.LBB3_908:                              # %ehcleanup740
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
.LBB3_909:                              # %ehcleanup741
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
.LBB3_910:                              # %ehcleanup742
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
.LBB3_911:                              # %ehcleanup743
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_, .Lfunc_end3-_ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin3          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp25                #   Call between .Ltmp25 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin3          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp33-.Ltmp31                #   Call between .Ltmp31 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin3          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp486-.Ltmp483              #   Call between .Ltmp483 and .Ltmp486
	.uleb128 .Ltmp561-.Lfunc_begin3         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin3          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin3         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp39-.Ltmp109               #   Call between .Ltmp109 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp42-.Ltmp39                #   Call between .Ltmp39 and .Ltmp42
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp558-.Ltmp487              #   Call between .Ltmp487 and .Ltmp558
	.uleb128 .Ltmp561-.Lfunc_begin3         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp104-.Ltmp43               #   Call between .Ltmp43 and .Ltmp104
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp111-.Ltmp104              #   Call between .Ltmp104 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin3         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp210-.Ltmp112              #   Call between .Ltmp112 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp220-.Ltmp210              #   Call between .Ltmp210 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin3         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin3         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp222-.Ltmp217              #   Call between .Ltmp217 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin3         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp418-.Ltmp223              #   Call between .Ltmp223 and .Ltmp418
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp421-.Ltmp418              #   Call between .Ltmp418 and .Ltmp421
	.uleb128 .Ltmp482-.Lfunc_begin3         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp356-.Ltmp353              #   Call between .Ltmp353 and .Ltmp356
	.uleb128 .Ltmp417-.Lfunc_begin3         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp117-.Ltmp114              #   Call between .Ltmp114 and .Ltmp117
	.uleb128 .Ltmp235-.Lfunc_begin3         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin3         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp267-.Ltmp265              #   Call between .Ltmp265 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin3         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp270-.Ltmp268              #   Call between .Ltmp268 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin3         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Ltmp273-.Ltmp271              #   Call between .Ltmp271 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin3         # >> Call Site 35 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin3         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin3         # >> Call Site 36 <<
	.uleb128 .Ltmp276-.Ltmp274              #   Call between .Ltmp274 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin3         # >> Call Site 37 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin3         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin3         # >> Call Site 38 <<
	.uleb128 .Ltmp279-.Ltmp277              #   Call between .Ltmp277 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin3         # >> Call Site 39 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin3         #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin3         # >> Call Site 40 <<
	.uleb128 .Ltmp282-.Ltmp280              #   Call between .Ltmp280 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin3         # >> Call Site 41 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin3         #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin3         # >> Call Site 42 <<
	.uleb128 .Ltmp285-.Ltmp283              #   Call between .Ltmp283 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin3         # >> Call Site 43 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin3         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin3         # >> Call Site 44 <<
	.uleb128 .Ltmp288-.Ltmp286              #   Call between .Ltmp286 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin3         # >> Call Site 45 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin3         #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin3         # >> Call Site 46 <<
	.uleb128 .Ltmp291-.Ltmp289              #   Call between .Ltmp289 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin3         # >> Call Site 47 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin3         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin3         # >> Call Site 48 <<
	.uleb128 .Ltmp294-.Ltmp292              #   Call between .Ltmp292 and .Ltmp294
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin3         # >> Call Site 49 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin3         #     jumps to .Ltmp296
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin3         # >> Call Site 50 <<
	.uleb128 .Ltmp297-.Ltmp295              #   Call between .Ltmp295 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin3         # >> Call Site 51 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin3         #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin3         # >> Call Site 52 <<
	.uleb128 .Ltmp422-.Ltmp298              #   Call between .Ltmp298 and .Ltmp422
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin3         # >> Call Site 53 <<
	.uleb128 .Ltmp479-.Ltmp422              #   Call between .Ltmp422 and .Ltmp479
	.uleb128 .Ltmp482-.Lfunc_begin3         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin3         # >> Call Site 54 <<
	.uleb128 .Ltmp225-.Ltmp479              #   Call between .Ltmp479 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin3         # >> Call Site 55 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin3         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin3         # >> Call Site 56 <<
	.uleb128 .Ltmp414-.Ltmp357              #   Call between .Ltmp357 and .Ltmp414
	.uleb128 .Ltmp417-.Lfunc_begin3         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 57 <<
	.uleb128 .Ltmp207-.Ltmp118              #   Call between .Ltmp118 and .Ltmp207
	.uleb128 .Ltmp235-.Lfunc_begin3         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin3         # >> Call Site 58 <<
	.uleb128 .Ltmp333-.Ltmp300              #   Call between .Ltmp300 and .Ltmp333
	.uleb128 .Ltmp352-.Lfunc_begin3         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin3         # >> Call Site 59 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin3         #     jumps to .Ltmp336
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin3         # >> Call Site 60 <<
	.uleb128 .Ltmp337-.Ltmp335              #   Call between .Ltmp335 and .Ltmp337
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp337-.Lfunc_begin3         # >> Call Site 61 <<
	.uleb128 .Ltmp346-.Ltmp337              #   Call between .Ltmp337 and .Ltmp346
	.uleb128 .Ltmp349-.Lfunc_begin3         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin3         # >> Call Site 62 <<
	.uleb128 .Ltmp259-.Ltmp346              #   Call between .Ltmp346 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin3         # >> Call Site 63 <<
	.uleb128 .Ltmp262-.Ltmp259              #   Call between .Ltmp259 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin3         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin3         # >> Call Site 64 <<
	.uleb128 .Ltmp236-.Ltmp262              #   Call between .Ltmp262 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin3         # >> Call Site 65 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin3         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin3         # >> Call Site 66 <<
	.uleb128 .Ltmp239-.Ltmp237              #   Call between .Ltmp237 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin3         # >> Call Site 67 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin3         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin3         # >> Call Site 68 <<
	.uleb128 .Ltmp242-.Ltmp240              #   Call between .Ltmp240 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin3         # >> Call Site 69 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin3         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin3         # >> Call Site 70 <<
	.uleb128 .Ltmp245-.Ltmp243              #   Call between .Ltmp243 and .Ltmp245
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin3         # >> Call Site 71 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin3         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin3         # >> Call Site 72 <<
	.uleb128 .Ltmp248-.Ltmp246              #   Call between .Ltmp246 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin3         # >> Call Site 73 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin3         #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin3         # >> Call Site 74 <<
	.uleb128 .Ltmp251-.Ltmp249              #   Call between .Ltmp249 and .Ltmp251
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin3         # >> Call Site 75 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin3         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin3         # >> Call Site 76 <<
	.uleb128 .Ltmp254-.Ltmp252              #   Call between .Ltmp252 and .Ltmp254
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin3         # >> Call Site 77 <<
	.uleb128 .Ltmp257-.Ltmp254              #   Call between .Ltmp254 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin3         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin3         # >> Call Site 78 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin3         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin3         # >> Call Site 79 <<
	.uleb128 .Ltmp231-.Ltmp229              #   Call between .Ltmp229 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin3         # >> Call Site 80 <<
	.uleb128 .Ltmp234-.Ltmp231              #   Call between .Ltmp231 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin3         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin3         # >> Call Site 81 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin3         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin3         # >> Call Site 82 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin3         # >> Call Site 83 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin3         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin3         # >> Call Site 84 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp235-.Lfunc_begin3         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin3         # >> Call Site 85 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin3         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin3         # >> Call Site 86 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin3         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin3         # >> Call Site 87 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin3         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin3         # >> Call Site 88 <<
	.uleb128 .Lfunc_end3-.Ltmp348           #   Call between .Ltmp348 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN2PP3Cmd10get_stringB5cxx11Ei,"axG",@progbits,_ZN2PP3Cmd10get_stringB5cxx11Ei,comdat
	.weak	_ZN2PP3Cmd10get_stringB5cxx11Ei # -- Begin function _ZN2PP3Cmd10get_stringB5cxx11Ei
	.p2align	2
	.type	_ZN2PP3Cmd10get_stringB5cxx11Ei,@function
_ZN2PP3Cmd10get_stringB5cxx11Ei:        # @_ZN2PP3Cmd10get_stringB5cxx11Ei
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
	ld.d	$a4, $a1, 232
	ld.d	$a3, $a1, 200
	sub.d	$a5, $a4, $a3
	srli.d	$a5, $a5, 3
	sltu	$a4, $zero, $a4
	ld.d	$a6, $a1, 208
	ld.d	$a7, $a1, 216
	sub.d	$a5, $a5, $a4
	ld.d	$t0, $a1, 192
	ld.d	$a4, $a1, 176
	sub.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 7
	alsl.d	$a5, $a5, $a6, 2
	sub.d	$a6, $t0, $a4
	srli.d	$a6, $a6, 7
	add.w	$a5, $a5, $a6
	move	$fp, $a0
	bge	$a2, $a5, .LBB4_4
# %bb.1:                                # %if.end
	ld.d	$a0, $a1, 184
	sub.d	$a0, $a4, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $a2
	bltz	$a0, .LBB4_5
# %bb.2:                                # %land.lhs.true.i.i.i.i
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB4_6
# %bb.3:                                # %if.then.i.i.i.i4
	slli.d	$a0, $a2, 7
	add.d	$a2, $a4, $a0
	b	.LBB4_8
.LBB4_4:                                # %if.then
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	b	.LBB4_15
.LBB4_5:                                # %cond.false.i.i.i.i
	srai.d	$a1, $a0, 2
	b	.LBB4_7
.LBB4_6:                                # %cond.true.i.i.i.i
	srli.d	$a1, $a0, 2
.LBB4_7:                                # %cond.end.i.i.i.i
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$a2, $a2, $a0
.LBB4_8:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$a0, $fp, 16
	ld.d	$a1, $a2, 8
	ld.d	$s0, $a2, 0
	st.d	$a0, $fp, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 0
	bltu	$a1, $a2, .LBB4_10
# %bb.9:                                # %if.then.i.i.i
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB4_10:                               # %if.end.i.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB4_14
# %bb.11:                               # %if.end.i.i.i
	bnez	$a1, .LBB4_13
# %bb.12:                               # %if.then.i.i.i.i7
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB4_14
.LBB4_13:                               # %if.end.i.i.i.i.i8
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 8
.LBB4_15:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN2PP3Cmd10get_stringB5cxx11Ei, .Lfunc_end4-_ZN2PP3Cmd10get_stringB5cxx11Ei
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE # -- Begin function _ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE
	.p2align	2
	.type	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE,@function
_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE: # @_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s2, $a1
	ld.d	$a1, $a1, 176
	ld.d	$a0, $s2, 184
	move	$s3, $a2
	ld.d	$a2, $s2, 200
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s3
	move	$fp, $a3
	bltz	$a0, .LBB5_3
# %bb.1:                                # %land.lhs.true.i.i.i.i.i
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB5_4
# %bb.2:                                # %if.then.i.i.i.i.i59
	slli.d	$a0, $s3, 7
	add.d	$a0, $a1, $a0
	ld.w	$s0, $a0, 80
	ld.w	$s1, $a0, 84
	b	.LBB5_6
.LBB5_3:                                # %cond.false.i.i.i.i.i46
	srai.d	$a1, $a0, 2
	b	.LBB5_5
.LBB5_4:                                # %cond.true.i.i.i.i.i57
	srli.d	$a1, $a0, 2
.LBB5_5:                                # %cond.end.i.i.i.i.i48
	slli.d	$a3, $a1, 3
	ldx.d	$a2, $a2, $a3
	andi	$a3, $a0, 3
	slli.d	$a3, $a3, 7
	add.d	$a3, $a2, $a3
	ld.w	$s0, $a3, 80
	ld.w	$s1, $a3, 84
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$a0, $a2, $a0
.LBB5_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
	addi.d	$s5, $sp, 224
	ld.d	$a1, $a0, 96
	ld.d	$s4, $a0, 88
	st.d	$s5, $sp, 208
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 80
	move	$a0, $s5
	bltu	$a1, $a2, .LBB5_8
# %bb.7:                                # %if.then.i.i.i.i
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 208
	st.d	$a1, $sp, 224
.LBB5_8:                                # %if.end.i.i.i.i
	addi.w	$s6, $zero, -1
	beq	$a1, $s6, .LBB5_12
# %bb.9:                                # %if.end.i.i.i.i
	bnez	$a1, .LBB5_11
# %bb.10:                               # %if.then.i.i.i.i2.i
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB5_12
.LBB5_11:                               # %if.end.i.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit
	ld.d	$a0, $sp, 80
	ld.d	$s4, $s2, 40
	st.d	$a0, $sp, 216
.Ltmp562:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN2PP3Cmd10get_stringB5cxx11Ei)
	jirl	$ra, $ra, 0
.Ltmp563:                               # EH_LABEL
# %bb.13:                               # %invoke.cont5
	addi.d	$s3, $sp, 32
	ld.d	$a1, $sp, 216
	ld.d	$s2, $sp, 208
	st.d	$s3, $sp, 16
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 240
	move	$a0, $s3
	bltu	$a1, $a2, .LBB5_16
# %bb.14:                               # %if.then.i.i
.Ltmp565:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 240
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.15:                               # %call.i4.i.noexc
	ld.d	$a1, $sp, 240
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB5_16:                               # %if.end.i.i
	beq	$a1, $s6, .LBB5_20
# %bb.17:                               # %if.end.i.i
	bnez	$a1, .LBB5_19
# %bb.18:                               # %if.then.i.i.i
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB5_20
.LBB5_19:                               # %if.end.i.i.i.i61
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %invoke.cont8
	ld.d	$a0, $sp, 240
	st.d	$a0, $sp, 24
.Ltmp568:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	addi.d	$a4, $sp, 16
	move	$a2, $s0
	move	$a3, $s1
	move	$a5, $s4
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp569:                               # EH_LABEL
# %bb.21:                               # %invoke.cont10
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB5_23
# %bb.22:                               # %if.then.i.i64
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_25
# %bb.24:                               # %if.then.i.i67
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 48
	addi.d	$a1, $a1, -128
	beq	$a0, $a1, .LBB5_28
# %bb.26:                               # %if.then.i
.Ltmp571:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.27:                               # %.noexc
	ld.d	$a0, $fp, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $fp, 48
	b	.LBB5_29
.LBB5_28:                               # %if.else.i
.Ltmp573:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
.LBB5_29:                               # %invoke.cont12
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB5_31
# %bb.30:                               # %if.then.i.i75
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
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
.LBB5_32:                               # %lpad7
.Ltmp567:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_36
	b	.LBB5_39
.LBB5_33:                               # %lpad11
.Ltmp575:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB5_37
	b	.LBB5_41
.LBB5_34:                               # %lpad9
.Ltmp570:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s3, .LBB5_38
# %bb.35:                               # %ehcleanup
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB5_39
.LBB5_36:                               # %ehcleanup14
	ld.d	$a0, $sp, 208
	bne	$a0, $s5, .LBB5_41
.LBB5_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %if.then.i.i82
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_36
.LBB5_39:                               # %if.then.i.i89
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB5_37
	b	.LBB5_41
.LBB5_40:                               # %lpad4
.Ltmp564:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB5_37
.LBB5_41:                               # %if.then.i.i96
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE, .Lfunc_end5-_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp562-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp562
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin4         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin4         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp568-.Ltmp566              #   Call between .Ltmp566 and .Ltmp568
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin4         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp571-.Ltmp569              #   Call between .Ltmp569 and .Ltmp571
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp574-.Ltmp571              #   Call between .Ltmp571 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin4         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Lfunc_end5-.Ltmp574           #   Call between .Ltmp574 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	2
	.type	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$s2, $a1
	ld.d	$a1, $a1, 176
	ld.d	$a0, $s2, 184
	ld.d	$a5, $s2, 200
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $a2
	move	$s3, $a4
	move	$fp, $a3
	bltz	$a0, .LBB6_3
# %bb.1:                                # %land.lhs.true.i.i.i.i.i
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB6_4
# %bb.2:                                # %if.then.i.i.i.i.i57
	slli.d	$a0, $a2, 7
	add.d	$a0, $a1, $a0
	ld.w	$s0, $a0, 80
	ld.w	$s1, $a0, 84
	b	.LBB6_6
.LBB6_3:                                # %cond.false.i.i.i.i.i44
	srai.d	$a1, $a0, 2
	b	.LBB6_5
.LBB6_4:                                # %cond.true.i.i.i.i.i55
	srli.d	$a1, $a0, 2
.LBB6_5:                                # %cond.end.i.i.i.i.i46
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a5, $a2
	andi	$a3, $a0, 3
	slli.d	$a3, $a3, 7
	add.d	$a3, $a2, $a3
	ld.w	$s0, $a3, 80
	ld.w	$s1, $a3, 84
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$a0, $a2, $a0
.LBB6_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
	addi.d	$s5, $sp, 216
	ld.d	$a1, $a0, 96
	ld.d	$s4, $a0, 88
	st.d	$s5, $sp, 200
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 72
	move	$a0, $s5
	bltu	$a1, $a2, .LBB6_8
# %bb.7:                                # %if.then.i.i.i.i
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB6_8:                                # %if.end.i.i.i.i
	addi.w	$s6, $zero, -1
	beq	$a1, $s6, .LBB6_12
# %bb.9:                                # %if.end.i.i.i.i
	bnez	$a1, .LBB6_11
# %bb.10:                               # %if.then.i.i.i.i2.i
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB6_12
.LBB6_11:                               # %if.end.i.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_12:                               # %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit
	ld.d	$a0, $sp, 72
	st.d	$a0, $sp, 208
	ld.d	$s2, $s2, 40
	addi.d	$s4, $sp, 56
	ld.d	$a1, $s3, 8
	ld.d	$s3, $s3, 0
	st.d	$s4, $sp, 40
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 232
	move	$a0, $s4
	bltu	$a1, $a2, .LBB6_15
# %bb.13:                               # %if.then.i.i
.Ltmp576:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 232
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.14:                               # %call.i4.i.noexc
	ld.d	$a1, $sp, 232
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
.LBB6_15:                               # %if.end.i.i
	beq	$a1, $s6, .LBB6_19
# %bb.16:                               # %if.end.i.i
	bnez	$a1, .LBB6_18
# %bb.17:                               # %if.then.i.i.i
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB6_19
.LBB6_18:                               # %if.end.i.i.i.i59
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_19:                               # %invoke.cont5
	ld.d	$a0, $sp, 232
	st.d	$a0, $sp, 48
	addi.d	$s7, $sp, 24
	ld.d	$a1, $sp, 208
	ld.d	$s3, $sp, 200
	st.d	$s7, $sp, 8
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 232
	move	$a0, $s7
	bltu	$a1, $a2, .LBB6_22
# %bb.20:                               # %if.then.i.i70
.Ltmp579:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 232
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.21:                               # %call.i4.i.noexc71
	ld.d	$a1, $sp, 232
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB6_22:                               # %if.end.i.i65
	beq	$a1, $s6, .LBB6_26
# %bb.23:                               # %if.end.i.i65
	bnez	$a1, .LBB6_25
# %bb.24:                               # %if.then.i.i.i67
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB6_26
.LBB6_25:                               # %if.end.i.i.i.i68
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_26:                               # %invoke.cont8
	ld.d	$a0, $sp, 232
	st.d	$a0, $sp, 16
.Ltmp582:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	addi.d	$a4, $sp, 8
	move	$a2, $s0
	move	$a3, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.27:                               # %invoke.cont10
	ld.d	$a0, $sp, 8
	beq	$a0, $s7, .LBB6_29
# %bb.28:                               # %if.then.i.i75
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s4, .LBB6_31
# %bb.30:                               # %if.then.i.i78
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 48
	addi.d	$a1, $a1, -128
	beq	$a0, $a1, .LBB6_34
# %bb.32:                               # %if.then.i
.Ltmp585:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.33:                               # %.noexc
	ld.d	$a0, $fp, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $fp, 48
	b	.LBB6_35
.LBB6_34:                               # %if.else.i
.Ltmp587:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp588:                               # EH_LABEL
.LBB6_35:                               # %invoke.cont12
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beq	$a0, $s5, .LBB6_37
# %bb.36:                               # %if.then.i.i86
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
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
.LBB6_38:                               # %lpad7
.Ltmp581:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s4, .LBB6_43
	b	.LBB6_46
.LBB6_39:                               # %lpad4
.Ltmp578:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 200
	beq	$a0, $s5, .LBB6_44
	b	.LBB6_47
.LBB6_40:                               # %lpad11
.Ltmp589:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beq	$a0, $s5, .LBB6_44
	b	.LBB6_47
.LBB6_41:                               # %lpad9
.Ltmp584:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	bne	$a2, $s7, .LBB6_45
# %bb.42:                               # %ehcleanup
	ld.d	$a0, $sp, 40
	bne	$a0, $s4, .LBB6_46
.LBB6_43:                               # %ehcleanup14
	ld.d	$a0, $sp, 200
	bne	$a0, $s5, .LBB6_47
.LBB6_44:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_45:                               # %if.then.i.i93
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s4, .LBB6_43
.LBB6_46:                               # %if.then.i.i100
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beq	$a0, $s5, .LBB6_44
.LBB6_47:                               # %if.then.i.i107
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end6-_ZN2PP12Restartblock8add_wordERNS_3CmdEiRSt5dequeINS_4WordESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp576-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin5         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp579-.Ltmp577              #   Call between .Ltmp577 and .Ltmp579
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin5         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp582-.Ltmp580              #   Call between .Ltmp580 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin5         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp585-.Ltmp583              #   Call between .Ltmp583 and .Ltmp585
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp588-.Ltmp585              #   Call between .Ltmp585 and .Ltmp588
	.uleb128 .Ltmp589-.Lfunc_begin5         #     jumps to .Ltmp589
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Lfunc_end6-.Ltmp588           #   Call between .Ltmp588 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIbSaIbEE9push_backERKb,"axG",@progbits,_ZNSt5dequeIbSaIbEE9push_backERKb,comdat
	.weak	_ZNSt5dequeIbSaIbEE9push_backERKb # -- Begin function _ZNSt5dequeIbSaIbEE9push_backERKb
	.p2align	2
	.type	_ZNSt5dequeIbSaIbEE9push_backERKb,@function
_ZNSt5dequeIbSaIbEE9push_backERKb:      # @_ZNSt5dequeIbSaIbEE9push_backERKb
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
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 48
	addi.d	$a2, $a2, -1
	beq	$a0, $a2, .LBB7_2
# %bb.1:                                # %if.then
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	b	.LBB7_6
.LBB7_2:                                # %if.else
	ld.d	$s0, $fp, 72
	ld.d	$a2, $fp, 40
	sub.d	$a2, $s0, $a2
	srli.d	$a2, $a2, 3
	sltu	$a3, $zero, $s0
	ld.d	$a4, $fp, 56
	ld.d	$a5, $fp, 32
	ld.d	$a6, $fp, 16
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 9
	add.d	$a0, $a0, $a5
	add.d	$a3, $a4, $a6
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 2047
	beq	$a0, $a2, .LBB7_7
# %bb.3:                                # %if.end.i
	move	$s1, $a1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sub.d	$a0, $s0, $a0
	srai.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB7_5
# %bb.4:                                # %if.then.i.i
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 72
.LBB7_5:                                # %_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	ld.d	$a1, $fp, 48
	ld.b	$a2, $s1, 0
	addi.d	$a3, $s0, 8
	st.b	$a2, $a1, 0
	st.d	$a3, $fp, 72
	st.d	$a0, $fp, 56
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 64
.LBB7_6:                                # %if.end
	st.d	$a0, $fp, 48
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_7:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt5dequeIbSaIbEE9push_backERKb, .Lfunc_end7-_ZNSt5dequeIbSaIbEE9push_backERKb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIbSaIbEED2Ev,"axG",@progbits,_ZNSt5dequeIbSaIbEED2Ev,comdat
	.weak	_ZNSt5dequeIbSaIbEED2Ev         # -- Begin function _ZNSt5dequeIbSaIbEED2Ev
	.p2align	2
	.type	_ZNSt5dequeIbSaIbEED2Ev,@function
_ZNSt5dequeIbSaIbEED2Ev:                # @_ZNSt5dequeIbSaIbEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB8_6
# %bb.1:                                # %if.then.i
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
	ld.d	$fp, $a0, 72
	ld.d	$a1, $a0, 40
	addi.d	$a3, $fp, 8
	bgeu	$a1, $a3, .LBB8_5
# %bb.2:                                # %for.body.i.i.preheader
	move	$s0, $a0
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB8_3:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s1, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bltu	$s1, $fp, .LBB8_3
# %bb.4:                                # %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i
	move	$a0, $s0
	ld.d	$a2, $s0, 0
.LBB8_5:                                # %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i
	ld.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB8_6:                                # %_ZNSt11_Deque_baseIbSaIbEED2Ev.exit
	ret
.Lfunc_end8:
	.size	_ZNSt5dequeIbSaIbEED2Ev, .Lfunc_end8-_ZNSt5dequeIbSaIbEED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi # -- Begin function _ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi
	.p2align	2
	.type	_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi,@function
_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi: # @_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	.cfi_def_cfa_offset 576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
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
	move	$s7, $a6
	move	$s8, $a5
	move	$s1, $a3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $a4, 0
	addi.d	$a0, $sp, 479
	pcaddu18i	$ra, %call36(_ZN2PP11Parser_mathC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 40
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $fp, 48
	ld.d	$a3, $fp, 56
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $fp, 32
	ld.d	$a4, $fp, 16
	sub.d	$a2, $a2, $a3
	srai.d	$a2, $a2, 7
	alsl.d	$a0, $a0, $a2, 2
	sub.d	$a1, $a1, $a4
	srai.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB9_153
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	move	$s2, $zero
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 415575
	ori	$a0, $a0, 628
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s0, $zero, 3
	lu12i.w	$a0, 415462
	ori	$a0, $a0, 3950
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %if.else.i582
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp638:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp639:                               # EH_LABEL
.LBB9_3:                                # %for.inc
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 128
	move	$s2, $s6
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $s5, .LBB9_153
.LBB9_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 312
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp590:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp591:                               # EH_LABEL
# %bb.5:                                # %invoke.cont
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 336
	ld.d	$a1, $fp, 344
	ld.d	$a0, $fp, 360
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_8
# %bb.6:                                # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a4, $zero, 15
	bltu	$a4, $a3, .LBB9_9
# %bb.7:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a2, $s4
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB9_11
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_8:                                # %cond.false.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 4
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 4
.LBB9_10:                               # %cond.end.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB9_12
.LBB9_11:                               # %invoke.cont5
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB9_49
.LBB9_12:                               # %if.else
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a1, $fp, 24
	ld.d	$a0, $fp, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_16
# %bb.13:                               # %land.lhs.true.i.i.i.i232
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a3, .LBB9_17
# %bb.14:                               # %if.then.i.i.i.i236
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a1, $a2, $s3
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	bne	$a0, $a2, .LBB9_19
.LBB9_15:                               # %if.else.i245
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp595:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp596:                               # EH_LABEL
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_16:                               # %cond.false.i.i.i.i223
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_17:                               # %cond.true.i.i.i.i234
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_18:                               # %cond.end.i.i.i.i225
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	beq	$a0, $a2, .LBB9_15
.LBB9_19:                               # %if.then.i243
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp593:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp594:                               # EH_LABEL
# %bb.20:                               # %.noexc246
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 360
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 360
.LBB9_21:                               # %invoke.cont51
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 96
	ld.d	$a1, $fp, 104
	ld.d	$a0, $fp, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_25
# %bb.22:                               # %land.lhs.true.i.i.i.i267
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a3, .LBB9_26
# %bb.23:                               # %if.then.i.i.i.i271
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a1, $a2, $s3
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	bne	$a0, $a2, .LBB9_28
.LBB9_24:                               # %if.else.i280
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp599:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp600:                               # EH_LABEL
	b	.LBB9_30
	.p2align	4, , 16
.LBB9_25:                               # %cond.false.i.i.i.i258
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB9_27
	.p2align	4, , 16
.LBB9_26:                               # %cond.true.i.i.i.i269
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_27:                               # %cond.end.i.i.i.i260
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	beq	$a0, $a2, .LBB9_24
.LBB9_28:                               # %if.then.i278
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp597:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.29:                               # %.noexc281
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 360
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 360
.LBB9_30:                               # %invoke.cont54
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 176
	ld.d	$a1, $fp, 184
	ld.d	$a0, $fp, 200
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_34
# %bb.31:                               # %land.lhs.true.i.i.i.i302
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a3, .LBB9_35
# %bb.32:                               # %if.then.i.i.i.i306
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a1, $a2, $s3
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	bne	$a0, $a2, .LBB9_37
.LBB9_33:                               # %if.else.i315
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp603:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
	b	.LBB9_39
	.p2align	4, , 16
.LBB9_34:                               # %cond.false.i.i.i.i293
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB9_36
	.p2align	4, , 16
.LBB9_35:                               # %cond.true.i.i.i.i304
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_36:                               # %cond.end.i.i.i.i295
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a2, $a2, -128
	beq	$a0, $a2, .LBB9_33
.LBB9_37:                               # %if.then.i313
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp601:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp602:                               # EH_LABEL
# %bb.38:                               # %.noexc316
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 360
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 360
.LBB9_39:                               # %invoke.cont57
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp605:                               # EH_LABEL
	addi.d	$a1, $sp, 312
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
# %bb.40:                               # %invoke.cont58
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 416
	ld.d	$a0, $fp, 424
	ld.d	$a1, $fp, 440
	sub.d	$a0, $a2, $a0
	add.d	$a3, $s5, $a0
	bltz	$a3, .LBB9_43
# %bb.41:                               # %land.lhs.true.i.i.i.i336
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a4, $zero, 511
	bltu	$a4, $a3, .LBB9_44
# %bb.42:                               # %if.then.i.i.i.i340
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a2, $s5
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB9_46
	b	.LBB9_112
	.p2align	4, , 16
.LBB9_43:                               # %cond.false.i.i.i.i327
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 9
	b	.LBB9_45
	.p2align	4, , 16
.LBB9_44:                               # %cond.true.i.i.i.i338
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 9
.LBB9_45:                               # %cond.end.i.i.i.i329
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 9
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s5
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB9_112
.LBB9_46:                               # %if.then61
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 328
	ld.d	$a2, $sp, 336
	ld.d	$a1, $sp, 352
	sub.d	$a3, $a0, $a2
	srai.d	$a2, $a3, 7
	bltz	$a2, .LBB9_52
# %bb.47:                               # %land.lhs.true.i.i.i.i360
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB9_54
# %bb.48:                               # %cond.true.i.i.i.i362
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a0, $a2, 2
	b	.LBB9_53
.LBB9_49:                               # %if.then
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a3, $fp, 16
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 40
	sub.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 7
	add.d	$a2, $s5, $a0
	bltz	$a2, .LBB9_60
# %bb.50:                               # %land.lhs.true.i.i.i.i75
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a2, .LBB9_61
# %bb.51:                               # %if.then.i.i.i.i128
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a3, $s3
	ld.w	$s6, $a0, 80
	ld.w	$s7, $a0, 84
	b	.LBB9_63
.LBB9_52:                               # %cond.false.i.i.i.i351
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a0, $a3, 9
.LBB9_53:                               # %cond.end.i.i.i.i353
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a2, $a0
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB9_54:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit366
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp607:                               # EH_LABEL
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp608:                               # EH_LABEL
# %bb.55:                               # %invoke.cont63
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$s6, $zero, 1
	beqz	$a0, .LBB9_113
# %bb.56:                               # %if.then65
                                        #   in Loop: Header=BB9_4 Depth=1
	beqz	$s5, .LBB9_109
# %bb.57:                               # %if.then67
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 256
	ld.d	$a1, $fp, 264
	ld.d	$a0, $fp, 280
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	addi.d	$a3, $a3, -1
	bltz	$a3, .LBB9_94
# %bb.58:                               # %land.lhs.true.i.i.i.i385
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a3, .LBB9_95
# %bb.59:                               # %if.then.i.i.i.i389
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB9_97
.LBB9_60:                               # %cond.false.i.i.i.i115
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a3, $a2, 2
	b	.LBB9_62
.LBB9_61:                               # %cond.true.i.i.i.i126
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a3, $a2, 2
.LBB9_62:                               # %cond.end.i.i.i.i117
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a1, $a1, $a4
	andi	$a2, $a2, 3
	slli.d	$a2, $a2, 7
	add.d	$a2, $a1, $a2
	ld.w	$s6, $a2, 80
	ld.w	$s7, $a2, 84
	slli.d	$a2, $a3, 2
	sub.d	$a0, $a0, $a2
	add.d	$a0, $s5, $a0
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB9_63:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit130
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $a0, 96
	ld.d	$s8, $a0, 88
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 280
	st.d	$a1, $sp, 152
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB9_66
# %bb.64:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp615:                               # EH_LABEL
	addi.d	$a0, $sp, 280
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.65:                               # %call.i4.i.i.noexc
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 280
	st.d	$a1, $sp, 296
.LBB9_66:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$s1, $zero, -1
	beq	$a1, $s1, .LBB9_70
# %bb.67:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	bnez	$a1, .LBB9_69
# %bb.68:                               # %if.then.i.i.i.i132
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB9_70
.LBB9_69:                               # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_70:                               # %invoke.cont23
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a3, $fp, 16
	ld.d	$a2, $fp, 24
	ld.d	$a1, $sp, 152
	ld.d	$a0, $fp, 40
	sub.d	$a2, $a3, $a2
	srai.d	$a2, $a2, 7
	add.d	$a4, $s5, $a2
	st.d	$a1, $sp, 288
	bltz	$a4, .LBB9_73
# %bb.71:                               # %land.lhs.true.i.i.i.i152
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a4, .LBB9_74
# %bb.72:                               # %if.then.i.i.i.i156
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a3, $s3
	b	.LBB9_76
.LBB9_73:                               # %cond.false.i.i.i.i143
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a3, $a4, 2
	b	.LBB9_75
.LBB9_74:                               # %cond.true.i.i.i.i154
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a3, $a4, 2
.LBB9_75:                               # %cond.end.i.i.i.i145
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a0, $a0, $a4
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $s5, $a2
	slli.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
.LBB9_76:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit158
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$s8, $a0, 120
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 120
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $sp, 136
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 128
	ld.d	$s0, $sp, 280
	st.b	$zero, $sp, 140
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 480
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB9_79
# %bb.77:                               # %if.then.i.i171
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp618:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.78:                               # %call.i4.i.noexc
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 480
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB9_79:                               # %if.end.i.i168
                                        #   in Loop: Header=BB9_4 Depth=1
	beq	$a1, $s1, .LBB9_83
# %bb.80:                               # %if.end.i.i168
                                        #   in Loop: Header=BB9_4 Depth=1
	bnez	$a1, .LBB9_82
# %bb.81:                               # %if.then.i.i.i169
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB9_83
.LBB9_82:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_83:                               # %invoke.cont34
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 480
	st.d	$a0, $sp, 96
.Ltmp621:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 120
	addi.d	$a4, $sp, 88
	move	$a2, $s6
	move	$a3, $s7
	move	$a5, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.84:                               # %invoke.cont36
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 88
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 104
	ori	$s0, $zero, 3
	beq	$a0, $a1, .LBB9_86
# %bb.85:                               # %if.then.i.i174
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_86:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB9_88
# %bb.87:                               # %if.then.i.i178
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 376
	ld.d	$a0, $sp, 360
	addi.d	$a1, $a1, -128
	beq	$a0, $a1, .LBB9_91
# %bb.89:                               # %if.then.i
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp624:                               # EH_LABEL
	addi.d	$a1, $sp, 152
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.90:                               # %.noexc
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 360
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 360
	b	.LBB9_92
.LBB9_91:                               # %if.else.i
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp626:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp627:                               # EH_LABEL
.LBB9_92:                               # %invoke.cont40
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB9_112
# %bb.93:                               # %if.then.i.i187
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_112
.LBB9_94:                               # %cond.false.i.i.i.i376
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB9_96
.LBB9_95:                               # %cond.true.i.i.i.i387
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_96:                               # %cond.end.i.i.i.i378
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a1, $a0
.LBB9_97:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit391
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $a0, -128
	addi.d	$a2, $sp, 168
	st.d	$a2, $sp, 152
	ld.d	$a1, $a0, 8
	ld.d	$s0, $a0, 0
	st.d	$a1, $sp, 280
	move	$a0, $a2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB9_100
# %bb.98:                               # %if.then.i.i.i401
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp609:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.99:                               # %call.i4.i.i.noexc402
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 280
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
.LBB9_100:                              # %if.end.i.i.i396
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB9_104
# %bb.101:                              # %if.end.i.i.i396
                                        #   in Loop: Header=BB9_4 Depth=1
	bnez	$a1, .LBB9_103
# %bb.102:                              # %if.then.i.i.i.i398
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB9_104
.LBB9_103:                              # %if.end.i.i.i.i.i399
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_104:                              # %invoke.cont72
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 280
	ld.d	$s0, $sp, 152
	st.d	$a0, $sp, 160
	ori	$s1, $zero, 1
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB9_106
# %bb.105:                              # %if.end.i.i410
                                        #   in Loop: Header=BB9_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	xori	$a1, $s2, 1
	or	$s1, $a0, $a1
.LBB9_106:                              # %invoke.cont74
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $sp, 168
	beq	$s0, $a0, .LBB9_108
# %bb.107:                              # %if.then.i.i414
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 168
	addi.d	$a1, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_108:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
                                        #   in Loop: Header=BB9_4 Depth=1
	andi	$a0, $s1, 1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ori	$s0, $zero, 3
	beqz	$a0, .LBB9_112
.LBB9_109:                              # %if.then82
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 336
	ld.d	$a1, $fp, 344
	ld.d	$a0, $fp, 360
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 5
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_148
# %bb.110:                              # %land.lhs.true.i.i.i.i445
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a4, $zero, 15
	bltu	$a4, $a3, .LBB9_149
# %bb.111:                              # %if.then.i.i.i.i449
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a2, $s4
	b	.LBB9_151
	.p2align	4, , 16
.LBB9_112:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$s6, $s2
.LBB9_113:                              # %if.end94
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 328
	ld.d	$a2, $sp, 336
	ld.d	$a0, $sp, 352
	sub.d	$a3, $a1, $a2
	srai.d	$a2, $a3, 7
	bltz	$a2, .LBB9_116
# %bb.114:                              # %land.lhs.true.i.i.i.i473
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB9_118
# %bb.115:                              # %cond.true.i.i.i.i475
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a1, $a2, 2
	b	.LBB9_117
	.p2align	4, , 16
.LBB9_116:                              # %cond.false.i.i.i.i464
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a1, $a3, 9
.LBB9_117:                              # %cond.end.i.i.i.i466
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
.LBB9_118:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit479
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $sp, 456
	ld.d	$a0, $sp, 440
	addi.d	$a2, $a2, -128
	beq	$a0, $a2, .LBB9_121
# %bb.119:                              # %if.then.i484
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp629:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp630:                               # EH_LABEL
# %bb.120:                              # %.noexc487
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 440
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 440
	b	.LBB9_122
	.p2align	4, , 16
.LBB9_121:                              # %if.else.i486
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp631:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp632:                               # EH_LABEL
.LBB9_122:                              # %invoke.cont96
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 256
	ld.d	$a1, $fp, 264
	ld.d	$a0, $fp, 280
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_125
# %bb.123:                              # %land.lhs.true.i.i.i.i508
                                        #   in Loop: Header=BB9_4 Depth=1
	bltu	$s0, $a3, .LBB9_126
# %bb.124:                              # %if.then.i.i.i.i512
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a0, $a2, $s3
	b	.LBB9_128
	.p2align	4, , 16
.LBB9_125:                              # %cond.false.i.i.i.i499
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	b	.LBB9_127
	.p2align	4, , 16
.LBB9_126:                              # %cond.true.i.i.i.i510
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_127:                              # %cond.end.i.i.i.i501
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB9_128:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit514
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $sp, 168
	st.d	$a2, $sp, 152
	ld.d	$a1, $a0, 8
	ld.d	$s0, $a0, 0
	st.d	$a1, $sp, 280
	move	$a0, $a2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB9_131
# %bb.129:                              # %if.then.i.i.i524
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp633:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.130:                              # %call.i4.i.i.noexc525
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 280
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
.LBB9_131:                              # %if.end.i.i.i519
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB9_135
# %bb.132:                              # %if.end.i.i.i519
                                        #   in Loop: Header=BB9_4 Depth=1
	bnez	$a1, .LBB9_134
# %bb.133:                              # %if.then.i.i.i.i521
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB9_135
	.p2align	4, , 16
.LBB9_134:                              # %if.end.i.i.i.i.i522
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_135:                              # %invoke.cont102
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 280
	ld.d	$a0, $sp, 152
	st.d	$a1, $sp, 160
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB9_137
# %bb.136:                              # %if.end.i.i534
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$s0, $a1, 1
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB9_138
	b	.LBB9_139
	.p2align	4, , 16
.LBB9_137:                              #   in Loop: Header=BB9_4 Depth=1
	move	$s0, $zero
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB9_139
.LBB9_138:                              # %if.then.i.i538
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_139:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543
                                        #   in Loop: Header=BB9_4 Depth=1
	bnez	$s0, .LBB9_152
# %bb.140:                              # %if.else109
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $fp, 256
	ld.d	$a1, $fp, 264
	ld.d	$a0, $fp, 280
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a3, $s5, $a1
	bltz	$a3, .LBB9_143
# %bb.141:                              # %land.lhs.true.i.i.i.i569
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$s0, $zero, 3
	bltu	$s0, $a3, .LBB9_144
# %bb.142:                              # %if.then.i.i.i.i573
                                        #   in Loop: Header=BB9_4 Depth=1
	add.d	$a1, $a2, $s3
	ld.d	$a2, $sp, 456
	ld.d	$a0, $sp, 440
	addi.d	$a2, $a2, -128
	bne	$a0, $a2, .LBB9_146
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_143:                              # %cond.false.i.i.i.i560
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 2
	ori	$s0, $zero, 3
	b	.LBB9_145
	.p2align	4, , 16
.LBB9_144:                              # %cond.true.i.i.i.i571
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 2
.LBB9_145:                              # %cond.end.i.i.i.i562
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 456
	ld.d	$a0, $sp, 440
	addi.d	$a2, $a2, -128
	beq	$a0, $a2, .LBB9_2
.LBB9_146:                              # %if.then.i580
                                        #   in Loop: Header=BB9_4 Depth=1
.Ltmp636:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.147:                              # %.noexc583
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $sp, 440
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 440
	b	.LBB9_3
.LBB9_148:                              # %cond.false.i.i.i.i436
                                        #   in Loop: Header=BB9_4 Depth=1
	srai.d	$a2, $a3, 4
	b	.LBB9_150
.LBB9_149:                              # %cond.true.i.i.i.i447
                                        #   in Loop: Header=BB9_4 Depth=1
	srli.d	$a2, $a3, 4
.LBB9_150:                              # %cond.end.i.i.i.i438
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s5, $a1
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
.LBB9_151:                              # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit451
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a2, $a0, 8
.Ltmp612:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a3, $a1, %pc_lo12(.L.str.50)
	ori	$a4, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
	move	$s6, $s2
	b	.LBB9_113
.LBB9_152:                              # %cleanup118.critedge
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
.LBB9_153:                              # %cleanup118
.Ltmp641:                               # EH_LABEL
	addi.d	$a1, $sp, 392
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s8
	move	$a6, $s7
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi)
	jirl	$ra, $ra, 0
.Ltmp642:                               # EH_LABEL
# %bb.154:                              # %invoke.cont121
	ld.d	$a0, $sp, 408
	ld.d	$a2, $sp, 416
	ld.d	$a1, $sp, 432
	sub.d	$a3, $a0, $a2
	srai.d	$a2, $a3, 7
	bltz	$a2, .LBB9_157
# %bb.155:                              # %land.lhs.true.i.i.i.i604
	ori	$a3, $zero, 4
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	bltu	$a2, $a3, .LBB9_159
# %bb.156:                              # %cond.true.i.i.i.i606
	srli.d	$a0, $a2, 2
	b	.LBB9_158
.LBB9_157:                              # %cond.false.i.i.i.i595
	srai.d	$a0, $a3, 9
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
.LBB9_158:                              # %cond.end.i.i.i.i597
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a2, $a0
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB9_159:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit610
.Ltmp644:                               # EH_LABEL
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp645:                               # EH_LABEL
# %bb.160:                              # %invoke.cont124
	st.w	$zero, $s0, 0
	ld.w	$a1, $fp, 480
	beqz	$a0, .LBB9_163
# %bb.161:                              # %land.lhs.true
	addi.d	$a0, $a1, 1
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB9_166
# %bb.162:                              # %cleanup157.sink.split.sink.split
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	b	.LBB9_165
.LBB9_163:                              # %land.lhs.true145
	addi.w	$a0, $zero, -1
	bne	$a1, $a0, .LBB9_166
# %bb.164:
	move	$a0, $zero
.LBB9_165:                              # %cleanup157.sink.split
	st.w	$a0, $fp, 480
.LBB9_166:                              # %cleanup157
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB9_167:                              # %lpad71
.Ltmp611:                               # EH_LABEL
	b	.LBB9_184
.LBB9_168:                              # %lpad33
.Ltmp620:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB9_176
	b	.LBB9_178
.LBB9_169:                              # %lpad22
.Ltmp617:                               # EH_LABEL
	b	.LBB9_184
.LBB9_170:                              # %lpad123
.Ltmp646:                               # EH_LABEL
	b	.LBB9_182
.LBB9_171:                              # %lpad120
.Ltmp643:                               # EH_LABEL
	b	.LBB9_182
.LBB9_172:                              # %lpad86
.Ltmp614:                               # EH_LABEL
	b	.LBB9_184
.LBB9_173:                              # %lpad39
.Ltmp628:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB9_179
	b	.LBB9_185
.LBB9_174:                              # %lpad35
.Ltmp623:                               # EH_LABEL
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	addi.d	$a0, $sp, 104
	bne	$a2, $a0, .LBB9_177
# %bb.175:                              # %ehcleanup
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	bne	$a0, $a1, .LBB9_178
.LBB9_176:                              # %ehcleanup42
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB9_179
	b	.LBB9_185
.LBB9_177:                              # %if.then.i.i194
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB9_176
.LBB9_178:                              # %if.then.i.i201
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB9_185
.LBB9_179:                              # %if.then.i.i208
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_185
.LBB9_180:                              # %lpad101
.Ltmp635:                               # EH_LABEL
	b	.LBB9_184
.LBB9_181:                              # %lpad
.Ltmp592:                               # EH_LABEL
.LBB9_182:                              # %ehcleanup160
	move	$fp, $a0
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_183:                              # %lpad4
.Ltmp640:                               # EH_LABEL
.LBB9_184:                              # %ehcleanup115
	move	$fp, $a0
.LBB9_185:                              # %ehcleanup115
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi, .Lfunc_end9-_ZN2PP12Restartblock8check_rbERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_RS1_IiSaIiEEPiRNS2_18basic_stringstreamIcS5_S6_EERi
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
	.uleb128 .Ltmp638-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp638
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp590-.Ltmp639              #   Call between .Ltmp639 and .Ltmp590
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp590-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp591-.Ltmp590              #   Call between .Ltmp590 and .Ltmp591
	.uleb128 .Ltmp592-.Lfunc_begin6         #     jumps to .Ltmp592
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp608-.Ltmp595              #   Call between .Ltmp595 and .Ltmp608
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin6         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp616-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp618-.Ltmp616              #   Call between .Ltmp616 and .Ltmp618
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin6         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp621-.Ltmp619              #   Call between .Ltmp619 and .Ltmp621
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin6         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp624-.Ltmp622              #   Call between .Ltmp622 and .Ltmp624
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp627-.Ltmp624              #   Call between .Ltmp624 and .Ltmp627
	.uleb128 .Ltmp628-.Lfunc_begin6         #     jumps to .Ltmp628
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp609-.Ltmp627              #   Call between .Ltmp627 and .Ltmp609
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin6         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp629-.Ltmp610              #   Call between .Ltmp610 and .Ltmp629
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp632-.Ltmp629              #   Call between .Ltmp629 and .Ltmp632
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp636-.Ltmp634              #   Call between .Ltmp634 and .Ltmp636
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin6         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp613-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp641-.Ltmp613              #   Call between .Ltmp613 and .Ltmp641
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp642-.Ltmp641              #   Call between .Ltmp641 and .Ltmp642
	.uleb128 .Ltmp643-.Lfunc_begin6         #     jumps to .Ltmp643
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp645-.Ltmp644              #   Call between .Ltmp644 and .Ltmp645
	.uleb128 .Ltmp646-.Lfunc_begin6         #     jumps to .Ltmp646
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Lfunc_end9-.Ltmp645           #   Call between .Ltmp645 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi # -- Begin function _ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi
	.p2align	2
	.type	_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi,@function
_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi: # @_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -784
	.cfi_def_cfa_offset 784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
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
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a2
	move	$s1, $a1
	addi.d	$a0, $sp, 599
	pcaddu18i	$ra, %call36(_ZN2PP11Parser_mathC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	ld.d	$a1, $s1, 40
	ld.d	$a2, $s1, 48
	ld.d	$a3, $s1, 56
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	sltu	$a4, $zero, $a0
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $s1, 32
	ld.d	$a5, $s1, 16
	sub.d	$a4, $a1, $a4
	srai.d	$a2, $a2, 7
	alsl.d	$a4, $a4, $a2, 2
	sub.d	$a3, $a3, $a5
	srai.d	$a3, $a3, 7
	add.w	$a4, $a4, $a3
	ori	$a5, $zero, 1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	blt	$a4, $a5, .LBB10_120
# %bb.1:                                # %for.cond2.preheader.lr.ph
	move	$s3, $zero
	addi.d	$s8, $sp, 576
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s4, $zero, -1
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %cleanup71
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bge	$s3, $a0, .LBB10_119
.LBB10_3:                               # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 5
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_2
# %bb.4:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$s2, $zero
	move	$fp, $zero
	move	$s0, $zero
	addi.d	$a0, $s3, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_5:                               # %if.then.i.i371
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 576
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_2
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 0
	addi.d	$s0, $s0, 1
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 27
	srai.d	$a0, $a0, 32
	addi.d	$fp, $fp, 32
	addi.d	$s2, $s2, 4
	bge	$s0, $a0, .LBB10_2
.LBB10_8:                               # %for.body7
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB10_11
# %bb.9:                                # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB10_12
# %bb.10:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB10_14
	.p2align	4, , 16
.LBB10_11:                              # %cond.false.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a2, $a1, 2
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_12:                              # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a2, $a1, 2
.LBB10_13:                              # %cond.end.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB10_14:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $sp, 448
	st.d	$a2, $sp, 432
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a0, 0
	st.d	$a1, $sp, 664
	move	$a0, $a2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_16
# %bb.15:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 432
	st.d	$a1, $sp, 448
.LBB10_16:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a1, $s4, .LBB10_20
# %bb.17:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	bnez	$a1, .LBB10_19
# %bb.18:                               # %if.then.i.i.i.i123
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_19:                              # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_20:                              # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a2, $sp, 664
	ld.d	$a0, $s7, 0
	st.d	$a2, $sp, 440
	add.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 8
	bne	$a2, $a1, .LBB10_23
# %bb.21:                               # %land.rhs.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$s5, $sp, 432
	beqz	$a2, .LBB10_29
# %bb.22:                               # %if.end.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$s6, $a0, 1
	addi.d	$a0, $sp, 448
	bne	$s5, $a0, .LBB10_24
	b	.LBB10_25
	.p2align	4, , 16
.LBB10_23:                              # %_ZN2PP4Word10get_stringB5cxx11Ev.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$s5, $sp, 432
	move	$s6, $zero
	addi.d	$a0, $sp, 448
	beq	$s5, $a0, .LBB10_25
.LBB10_24:                              # %if.then.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 448
	addi.d	$a1, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_25:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB10_8 Depth=2
	beqz	$s6, .LBB10_7
# %bb.26:                               # %if.then
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$a0, $s1, 24
	ld.d	$a1, $s1, 40
	sub.d	$a0, $a2, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s3
	bltz	$a0, .LBB10_30
# %bb.27:                               # %land.lhs.true.i.i.i.i145
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB10_31
# %bb.28:                               # %if.then.i.i.i.i199
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	ld.w	$s6, $a0, 80
	ld.w	$a1, $a0, 84
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB10_33
.LBB10_29:                              #   in Loop: Header=BB10_8 Depth=2
	ori	$s6, $zero, 1
	addi.d	$a0, $sp, 448
	bne	$s5, $a0, .LBB10_24
	b	.LBB10_25
.LBB10_30:                              # %cond.false.i.i.i.i186
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a2, $a0, 2
	b	.LBB10_32
.LBB10_31:                              # %cond.true.i.i.i.i197
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a2, $a0, 2
.LBB10_32:                              # %cond.end.i.i.i.i188
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	andi	$a3, $a0, 3
	slli.d	$a3, $a3, 7
	add.d	$a3, $a1, $a3
	ld.w	$s6, $a3, 80
	ld.w	$a3, $a3, 84
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB10_33:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit201
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $a0, 96
	ld.d	$s7, $a0, 88
	st.d	$s8, $sp, 560
	st.d	$a1, $sp, 432
	move	$a0, $s8
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_35
# %bb.34:                               # %if.then.i.i.i211
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 432
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432
	st.d	$a0, $sp, 560
	st.d	$a1, $sp, 576
.LBB10_35:                              # %if.end.i.i.i206
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a1, $s4, .LBB10_39
# %bb.36:                               # %if.end.i.i.i206
                                        #   in Loop: Header=BB10_8 Depth=2
	bnez	$a1, .LBB10_38
# %bb.37:                               # %if.then.i.i.i.i208
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB10_39
.LBB10_38:                              # %if.end.i.i.i.i.i209
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_39:                              # %_ZN2PP4Word12get_filenameB5cxx11Ev.exit
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a3, $s1, 16
	ld.d	$a2, $s1, 24
	ld.d	$a1, $sp, 432
	ld.d	$a0, $s1, 40
	sub.d	$a2, $a3, $a2
	srai.d	$a2, $a2, 7
	add.d	$a2, $a2, $s3
	st.d	$a1, $sp, 568
	bltz	$a2, .LBB10_42
# %bb.40:                               # %land.lhs.true.i.i.i.i231
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a4, $zero, 3
	bltu	$a4, $a2, .LBB10_43
# %bb.41:                               # %if.then.i.i.i.i235
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a0, $s3, 7
	add.d	$a0, $a3, $a0
	b	.LBB10_45
.LBB10_42:                              # %cond.false.i.i.i.i222
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a3, $a2, 2
	b	.LBB10_44
.LBB10_43:                              # %cond.true.i.i.i.i233
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a3, $a2, 2
.LBB10_44:                              # %cond.end.i.i.i.i224
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a4, $a3, 3
	ldx.d	$a0, $a0, $a4
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
.LBB10_45:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit237
                                        #   in Loop: Header=BB10_8 Depth=2
	move	$s5, $s8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldx.w	$a2, $a2, $s2
	ld.d	$s7, $a0, 120
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	beqz	$a2, .LBB10_52
# %bb.46:                               # %if.else
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a1, $a0, $fp
	addi.d	$a2, $sp, 352
	st.d	$a2, $sp, 336
	ld.d	$a1, $a1, 8
	ldx.d	$s8, $a0, $fp
	st.d	$a1, $sp, 664
	move	$a0, $a2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_49
# %bb.47:                               # %if.then.i.i300
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp647:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp648:                               # EH_LABEL
# %bb.48:                               # %call.i4.i.noexc301
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 336
	st.d	$a1, $sp, 352
.LBB10_49:                              # %if.end.i.i295
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a1, $s4, .LBB10_59
# %bb.50:                               # %if.end.i.i295
                                        #   in Loop: Header=BB10_8 Depth=2
	bnez	$a1, .LBB10_58
# %bb.51:                               # %if.then.i.i.i297
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB10_59
.LBB10_52:                              # %if.then27
                                        #   in Loop: Header=BB10_8 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ld.w	$a2, $a0, 0
	ld.b	$a0, $a0, 4
	addi.d	$a3, $sp, 416
	st.d	$a3, $sp, 400
	st.w	$a2, $a3, 0
	st.b	$a0, $a3, 4
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 408
	ld.d	$s8, $sp, 560
	st.b	$zero, $sp, 421
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 368
	st.d	$a1, $sp, 664
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_55
# %bb.53:                               # %if.then.i.i252
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp659:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.54:                               # %call.i4.i.noexc
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 368
	st.d	$a1, $sp, 384
.LBB10_55:                              # %if.end.i.i249
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a1, $s4, .LBB10_80
# %bb.56:                               # %if.end.i.i249
                                        #   in Loop: Header=BB10_8 Depth=2
	bnez	$a1, .LBB10_79
# %bb.57:                               # %if.then.i.i.i250
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB10_80
.LBB10_58:                              # %if.end.i.i.i.i298
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_59:                              # %invoke.cont47
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 664
	ld.d	$a1, $sp, 568
	ld.d	$s8, $sp, 560
	st.d	$a0, $sp, 344
	addi.d	$a0, $sp, 320
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 664
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_62
# %bb.60:                               # %if.then.i.i313
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp650:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp651:                               # EH_LABEL
# %bb.61:                               # %call.i4.i.noexc314
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 304
	st.d	$a1, $sp, 320
.LBB10_62:                              # %if.end.i.i308
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a1, $s4, .LBB10_66
# %bb.63:                               # %if.end.i.i308
                                        #   in Loop: Header=BB10_8 Depth=2
	bnez	$a1, .LBB10_65
# %bb.64:                               # %if.then.i.i.i310
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB10_66
.LBB10_65:                              # %if.end.i.i.i.i311
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_66:                              # %invoke.cont50
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 312
.Ltmp653:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 336
	addi.d	$a4, $sp, 304
	move	$a2, $s6
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $s7
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.67:                               # %invoke.cont52
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 304
	move	$s8, $s5
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB10_69
# %bb.68:                               # %if.then.i.i318
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB10_71
# %bb.70:                               # %if.then.i.i325
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_71:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB10_74
# %bb.72:                               # %land.lhs.true.i.i.i.i349
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB10_75
# %bb.73:                               # %if.then.i.i.i.i353
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a0, $s3, 7
	add.d	$a1, $a2, $a0
	b	.LBB10_77
.LBB10_74:                              # %cond.false.i.i.i.i340
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a2, $a1, 2
	b	.LBB10_76
.LBB10_75:                              # %cond.true.i.i.i.i351
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a2, $a1, 2
.LBB10_76:                              # %cond.end.i.i.i.i342
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a1, $a0, $a1
.LBB10_77:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit355
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp656:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a2, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp657:                               # EH_LABEL
# %bb.78:                               # %invoke.cont58
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	bne	$a0, $s8, .LBB10_5
	b	.LBB10_6
.LBB10_79:                              # %if.end.i.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_80:                              # %invoke.cont33
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 376
.Ltmp662:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 400
	addi.d	$a4, $sp, 368
	move	$a2, $s6
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $s7
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp663:                               # EH_LABEL
# %bb.81:                               # %invoke.cont35
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 368
	move	$s8, $s5
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB10_83
# %bb.82:                               # %if.then.i.i255
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 400
	addi.d	$a1, $sp, 416
	beq	$a0, $a1, .LBB10_85
# %bb.84:                               # %if.then.i.i262
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $sp, 416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_85:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a4, $s1, 16
	ld.d	$a3, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a4, $a3
	srai.d	$a5, $a1, 7
	add.d	$a2, $a5, $s3
	bltz	$a2, .LBB10_89
# %bb.86:                               # %land.lhs.true.i.i.i838
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a1, $zero, 3
	bltu	$a1, $a2, .LBB10_90
# %bb.87:                               # %if.then.i.i.i842
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a1, $s3, 7
	add.d	$a2, $a4, $a1
	move	$a1, $a0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	add.d	$a5, $a5, $a6
	bgez	$a5, .LBB10_92
.LBB10_88:                              # %cond.false.i.i20.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a4, $a5, 2
	b	.LBB10_96
.LBB10_89:                              # %cond.false.i.i.i826
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a6, $a2, 2
	b	.LBB10_91
.LBB10_90:                              # %cond.true.i.i.i840
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a6, $a2, 2
.LBB10_91:                              # %cond.end.i.i.i828
                                        #   in Loop: Header=BB10_8 Depth=2
	alsl.d	$a1, $a6, $a0, 3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a6, $a6, 2
	sub.d	$a2, $a2, $a6
	slli.d	$a2, $a2, 7
	add.d	$a2, $a7, $a2
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	add.d	$a5, $a5, $a6
	bltz	$a5, .LBB10_88
.LBB10_92:                              # %land.lhs.true.i.i30.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a6, $zero, 3
	bltu	$a6, $a5, .LBB10_95
# %bb.93:                               # %if.then.i.i34.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a5, $a5, 7
	add.d	$a4, $a4, $a5
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	bge	$a5, $s4, .LBB10_97
.LBB10_94:                              # %cond.false.i.i49.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_100
.LBB10_95:                              # %cond.true.i.i32.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a4, $a5, 2
.LBB10_96:                              # %cond.end.i.i22.i
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a5, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a3, $a4
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	blt	$a5, $s4, .LBB10_94
.LBB10_97:                              # %land.lhs.true.i.i59.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB10_99
# %bb.98:                               # %if.then.i.i63.i
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a3, $a4, 128
	b	.LBB10_101
.LBB10_99:                              # %cond.true.i.i61.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_100:                             # %cond.end.i.i51.i
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
.LBB10_101:                             # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit65.i
                                        #   in Loop: Header=BB10_8 Depth=2
	st.d	$a2, $sp, 664
	ld.d	$a2, $a1, 0
	st.d	$a2, $sp, 672
	addi.d	$a2, $a2, 512
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
	st.d	$a3, $sp, 632
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 640
	addi.d	$a1, $a1, 512
	st.d	$a1, $sp, 648
	st.d	$a0, $sp, 656
.Ltmp665:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 632
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
.Ltmp666:                               # EH_LABEL
# %bb.102:                              # %.noexc
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a2, $s1, 24
	ld.d	$a1, $s1, 40
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $s3
	bltz	$a3, .LBB10_108
# %bb.103:                              # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB10_109
# %bb.104:                              # %if.then.i.i.i274
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a3, $s3, 7
	add.d	$a3, $a0, $a3
	bne	$a3, $a0, .LBB10_111
.LBB10_105:                             # %if.then.i
                                        #   in Loop: Header=BB10_8 Depth=2
	beq	$a0, $a2, .LBB10_116
# %bb.106:                              # %if.then.i.i806
                                        #   in Loop: Header=BB10_8 Depth=2
	addi.d	$a0, $a0, -128
.Ltmp673:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp674:                               # EH_LABEL
# %bb.107:                              # %.noexc809
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, -128
	st.d	$a0, $s1, 16
	b	.LBB10_118
.LBB10_108:                             # %cond.false.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_110
.LBB10_109:                             # %cond.true.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_110:                             # %cond.end.i.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a1, $a5
	alsl.d	$a1, $a4, $a1, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
	beq	$a3, $a0, .LBB10_105
.LBB10_111:                             # %if.else.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s1, 48
	beq	$a3, $a0, .LBB10_113
# %bb.112:                              # %if.else12.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, 512
	st.d	$a3, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
.Ltmp667:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 432
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp668:                               # EH_LABEL
	b	.LBB10_118
.LBB10_113:                             # %if.then9.i
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $s1, 64
	addi.d	$a1, $a1, -128
	beq	$a3, $a1, .LBB10_117
# %bb.114:                              # %if.then.i7.i
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp669:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.115:                              # %.noexc811
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s1, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $s1, 48
	b	.LBB10_118
.LBB10_116:                             # %if.else.i.i
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp675:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
	b	.LBB10_118
.LBB10_117:                             # %if.else.i9.i
                                        #   in Loop: Header=BB10_8 Depth=2
.Ltmp671:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp672:                               # EH_LABEL
.LBB10_118:                             # %invoke.cont39
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	bne	$a0, $s8, .LBB10_5
	b	.LBB10_6
.LBB10_119:                             # %for.cond.cleanup.loopexit
	ld.d	$a0, $s1, 72
	ld.d	$a1, $s1, 40
	ld.d	$a2, $s1, 48
	ld.d	$a3, $s1, 56
	ld.d	$a4, $s1, 32
	ld.d	$a5, $s1, 16
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	sub.d	$a2, $a2, $a3
	srai.d	$a2, $a2, 7
	sub.d	$a3, $a4, $a5
	srai.d	$a3, $a3, 7
.LBB10_120:                             # %for.cond.cleanup
	sltu	$a0, $zero, $a0
	sub.d	$a0, $a1, $a0
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a0, $a0, $a3
	addi.w	$s8, $a0, -1
	ori	$a0, $zero, 6
	ori	$s3, $zero, 5
	ori	$fp, $zero, 3
	b	.LBB10_122
	.p2align	4, , 16
.LBB10_121:                             # %for.cond.cleanup88
                                        #   in Loop: Header=BB10_122 Depth=1
	addi.w	$a0, $s7, -1
	beqz	$s7, .LBB10_263
.LBB10_122:                             # %for.cond86.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_126 Depth 2
	move	$s7, $a0
	bltz	$s8, .LBB10_121
# %bb.123:                              # %for.body89.lr.ph
                                        #   in Loop: Header=BB10_122 Depth=1
	move	$s2, $zero
	addi.d	$a0, $s7, -2
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB10_126
	.p2align	4, , 16
.LBB10_124:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763
                                        #   in Loop: Header=BB10_126 Depth=2
	add.w	$s8, $s8, $s0
.LBB10_125:                             # %for.inc183
                                        #   in Loop: Header=BB10_126 Depth=2
	move	$a0, $s2
	addi.w	$s2, $s2, 1
	bge	$a0, $s8, .LBB10_121
.LBB10_126:                             # %for.body89
                                        #   Parent Loop BB10_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s1, 16
	ld.d	$a0, $s1, 24
	ld.d	$a2, $s1, 40
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s2
	bltz	$a0, .LBB10_130
# %bb.127:                              # %land.lhs.true.i.i.i.i427
                                        #   in Loop: Header=BB10_126 Depth=2
	ori	$a3, $zero, 4
	bgeu	$a0, $a3, .LBB10_131
# %bb.128:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit433.thread
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a0, $s2, 7
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 32
	bne	$a2, $s3, .LBB10_125
# %bb.129:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit433.thread
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.w	$a0, $a0, 44
	beq	$s7, $a0, .LBB10_136
	b	.LBB10_125
	.p2align	4, , 16
.LBB10_130:                             # %cond.false.i.i.i.i418
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a3, $a0, 2
	b	.LBB10_132
	.p2align	4, , 16
.LBB10_131:                             # %cond.true.i.i.i.i429
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a3, $a0, 2
.LBB10_132:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit433
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	slli.d	$a3, $a3, 7
	add.d	$a3, $a4, $a3
	ld.w	$a4, $a3, 32
	bne	$a4, $s3, .LBB10_125
# %bb.133:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit433
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.w	$a3, $a3, 44
	bne	$s7, $a3, .LBB10_125
# %bb.134:                              # %if.then93
                                        #   in Loop: Header=BB10_126 Depth=2
	bltz	$a0, .LBB10_137
# %bb.135:                              # %land.lhs.true.i.i.i.i452
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a0, .LBB10_138
.LBB10_136:                             # %if.then.i.i.i.i508
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a0, $s2, 7
	add.d	$a0, $a1, $a0
	ld.w	$s3, $a0, 80
	ld.w	$s4, $a0, 84
	b	.LBB10_140
.LBB10_137:                             # %cond.false.i.i.i.i495
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a1, $a0, 2
	b	.LBB10_139
.LBB10_138:                             # %cond.true.i.i.i.i506
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a1, $a0, 2
.LBB10_139:                             # %cond.end.i.i.i.i497
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $a1, 3
	ldx.d	$a2, $a2, $a3
	andi	$a3, $a0, 3
	slli.d	$a3, $a3, 7
	add.d	$a3, $a2, $a3
	ld.w	$s3, $a3, 80
	ld.w	$s4, $a3, 84
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$a0, $a2, $a0
.LBB10_140:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit510
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $a0, 96
	ld.d	$s5, $a0, 88
	addi.d	$a0, $sp, 576
	st.d	$a0, $sp, 560
	st.d	$a1, $sp, 432
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_142
# %bb.141:                              # %if.then.i.i.i521
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 432
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432
	st.d	$a0, $sp, 560
	st.d	$a1, $sp, 576
.LBB10_142:                             # %if.end.i.i.i516
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.w	$s0, $zero, -1
	beq	$a1, $s0, .LBB10_146
# %bb.143:                              # %if.end.i.i.i516
                                        #   in Loop: Header=BB10_126 Depth=2
	bnez	$a1, .LBB10_145
# %bb.144:                              # %if.then.i.i.i.i518
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB10_146
.LBB10_145:                             # %if.end.i.i.i.i.i519
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_146:                             # %_ZN2PP4Word12get_filenameB5cxx11Ev.exit523
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a3, $s1, 16
	ld.d	$a2, $s1, 24
	ld.d	$a1, $sp, 432
	ld.d	$a0, $s1, 40
	sub.d	$a2, $a3, $a2
	srai.d	$a2, $a2, 7
	add.d	$a2, $a2, $s2
	st.d	$a1, $sp, 568
	bltz	$a2, .LBB10_149
# %bb.147:                              # %land.lhs.true.i.i.i.i542
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a2, .LBB10_150
# %bb.148:                              # %if.then.i.i.i.i546
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a0, $s2, 7
	add.d	$a0, $a3, $a0
	b	.LBB10_152
.LBB10_149:                             # %cond.false.i.i.i.i533
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a3, $a2, 2
	b	.LBB10_151
.LBB10_150:                             # %cond.true.i.i.i.i544
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a3, $a2, 2
.LBB10_151:                             # %cond.end.i.i.i.i535
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a4, $a3, 3
	ldx.d	$a0, $a0, $a4
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
.LBB10_152:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit548
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$s5, $a0, 120
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 144
	st.d	$zero, $sp, 152
	ld.d	$s6, $sp, 560
	st.b	$zero, $sp, 160
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 664
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_155
# %bb.153:                              # %if.then.i.i571
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp678:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.154:                              # %call.i4.i.noexc572
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
.LBB10_155:                             # %if.end.i.i566
                                        #   in Loop: Header=BB10_126 Depth=2
	beq	$a1, $s0, .LBB10_159
# %bb.156:                              # %if.end.i.i566
                                        #   in Loop: Header=BB10_126 Depth=2
	bnez	$a1, .LBB10_158
# %bb.157:                              # %if.then.i.i.i568
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB10_159
.LBB10_158:                             # %if.end.i.i.i.i569
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_159:                             # %invoke.cont117
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 120
.Ltmp681:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 144
	addi.d	$a4, $sp, 112
	move	$a2, $s3
	move	$a3, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE)
	jirl	$ra, $ra, 0
.Ltmp682:                               # EH_LABEL
# %bb.160:                              # %invoke.cont119
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB10_162
# %bb.161:                              # %if.then.i.i576
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_162:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	addi.d	$s4, $sp, 96
	ori	$s5, $zero, 7
	beq	$a0, $a1, .LBB10_164
# %bb.163:                              # %if.then.i.i583
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_164:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB10_167
# %bb.165:                              # %land.lhs.true.i.i.i.i607
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a1, .LBB10_168
# %bb.166:                              # %if.then.i.i.i.i611
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB10_170
.LBB10_167:                             # %cond.false.i.i.i.i598
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a2, $a1, 2
	b	.LBB10_169
.LBB10_168:                             # %cond.true.i.i.i.i609
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a2, $a1, 2
.LBB10_169:                             # %cond.end.i.i.i.i600
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB10_170:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit613
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $a0, 56
	ld.d	$s3, $a0, 48
	st.d	$s4, $sp, 80
	st.d	$a1, $sp, 664
	move	$a0, $s4
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB10_173
# %bb.171:                              # %if.then.i.i.i623
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp684:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 664
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.172:                              # %call.i4.i.i624.noexc
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 664
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB10_173:                             # %if.end.i.i.i618
                                        #   in Loop: Header=BB10_126 Depth=2
	beq	$a1, $s0, .LBB10_176
# %bb.174:                              # %if.end.i.i.i618
                                        #   in Loop: Header=BB10_126 Depth=2
	bnez	$a1, .LBB10_183
# %bb.175:                              # %if.then.i.i.i.i620
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
.LBB10_176:                             # %invoke.cont127
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 88
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB10_184
.LBB10_177:                             # %invoke.cont129
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_189
# %bb.178:                              # %if.end142.thread1316
                                        #   in Loop: Header=BB10_126 Depth=2
	ori	$a0, $zero, 2
	beq	$s7, $a0, .LBB10_196
.LBB10_179:                             # %if.else157
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a4, $s1, 16
	ld.d	$a3, $s1, 24
	addi.w	$s3, $s2, -1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a4, $a3
	srai.d	$a5, $a1, 7
	add.d	$a2, $a5, $s3
	bltz	$a2, .LBB10_200
# %bb.180:                              # %land.lhs.true.i.i.i1109
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a2, .LBB10_202
# %bb.181:                              # %if.then.i.i.i1113
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a1, $s3, 7
	add.d	$a2, $a4, $a1
	move	$a1, $a0
	addi.w	$a6, $s2, 1
	add.d	$a5, $a5, $a6
	bgez	$a5, .LBB10_204
.LBB10_182:                             # %cond.false.i.i20.i1060
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a5, 2
	b	.LBB10_213
.LBB10_183:                             # %if.end.i.i.i.i.i621
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	st.d	$a0, $sp, 88
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB10_177
.LBB10_184:                             # %if.end135
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $s5, .LBB10_191
.LBB10_185:                             # %if.end.i.i660
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$s7, $a1, .LBB10_192
# %bb.186:                              # %if.end.i.i660
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_192
# %bb.187:                              # %if.then139
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.w	$a2, $s2, 1
.Ltmp689:                               # EH_LABEL
	addi.d	$a0, $sp, 599
	addi.d	$a4, $sp, 432
	move	$a1, $s2
	move	$a3, $s1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp690:                               # EH_LABEL
# %bb.188:                              # %if.then139.if.end142_crit_edge
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 88
	ori	$s3, $zero, 1
	bne	$a0, $s5, .LBB10_195
	b	.LBB10_192
.LBB10_189:                             # %if.then131
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.w	$a1, $s2, -1
	addi.w	$a3, $s2, 1
.Ltmp687:                               # EH_LABEL
	addi.d	$a0, $sp, 599
	addi.d	$a5, $sp, 432
	move	$a2, $s2
	move	$a4, $s1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.190:                              # %if.then131.if.end135_crit_edge
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 88
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $s5, .LBB10_185
	.p2align	4, , 16
.LBB10_191:                             # %if.end142
                                        #   in Loop: Header=BB10_126 Depth=2
	bne	$a0, $s5, .LBB10_195
.LBB10_192:                             # %if.end.i.i669
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s7, $a1, .LBB10_195
# %bb.193:                              # %if.end.i.i669
                                        #   in Loop: Header=BB10_126 Depth=2
	bnez	$a0, .LBB10_195
# %bb.194:                              # %if.then147
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.w	$a1, $s2, -1
	addi.w	$a3, $s2, 1
.Ltmp691:                               # EH_LABEL
	addi.d	$a0, $sp, 599
	addi.d	$a5, $sp, 432
	move	$a2, $s2
	move	$a4, $s1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp692:                               # EH_LABEL
.LBB10_195:                             # %if.end151
                                        #   in Loop: Header=BB10_126 Depth=2
	beqz	$s3, .LBB10_179
.LBB10_196:                             # %if.then153
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a4, $s1, 16
	ld.d	$a3, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a4, $a3
	srai.d	$a5, $a1, 7
	add.d	$a2, $a5, $s2
	bltz	$a2, .LBB10_201
# %bb.197:                              # %land.lhs.true.i.i.i973
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a2, .LBB10_207
# %bb.198:                              # %if.then.i.i.i977
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a1, $s2, 7
	add.d	$a2, $a4, $a1
	move	$a1, $a0
	addi.w	$a6, $s2, 1
	add.d	$a5, $a5, $a6
	bgez	$a5, .LBB10_209
.LBB10_199:                             # %cond.false.i.i20.i924
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a5, 2
	b	.LBB10_217
.LBB10_200:                             # %cond.false.i.i.i1046
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a6, $a2, 2
	b	.LBB10_203
.LBB10_201:                             # %cond.false.i.i.i910
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a6, $a2, 2
	b	.LBB10_208
.LBB10_202:                             # %cond.true.i.i.i1111
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a6, $a2, 2
.LBB10_203:                             # %cond.end.i.i.i1048
                                        #   in Loop: Header=BB10_126 Depth=2
	alsl.d	$a1, $a6, $a0, 3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a6, $a6, 2
	sub.d	$a2, $a2, $a6
	slli.d	$a2, $a2, 7
	add.d	$a2, $a7, $a2
	addi.w	$a6, $s2, 1
	add.d	$a5, $a5, $a6
	bltz	$a5, .LBB10_182
.LBB10_204:                             # %land.lhs.true.i.i30.i1103
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a5, .LBB10_212
# %bb.205:                              # %if.then.i.i34.i1107
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a6, 7
	add.d	$a4, $a4, $a5
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	bge	$a5, $s0, .LBB10_214
.LBB10_206:                             # %cond.false.i.i49.i1078
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_221
.LBB10_207:                             # %cond.true.i.i.i975
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a6, $a2, 2
.LBB10_208:                             # %cond.end.i.i.i912
                                        #   in Loop: Header=BB10_126 Depth=2
	alsl.d	$a1, $a6, $a0, 3
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a6, $a6, 2
	sub.d	$a2, $a2, $a6
	slli.d	$a2, $a2, 7
	add.d	$a2, $a7, $a2
	addi.w	$a6, $s2, 1
	add.d	$a5, $a5, $a6
	bltz	$a5, .LBB10_199
.LBB10_209:                             # %land.lhs.true.i.i30.i967
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a5, .LBB10_216
# %bb.210:                              # %if.then.i.i34.i971
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a6, 7
	add.d	$a4, $a4, $a5
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	bge	$a5, $s0, .LBB10_218
.LBB10_211:                             # %cond.false.i.i49.i942
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_235
.LBB10_212:                             # %cond.true.i.i32.i1105
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a5, 2
.LBB10_213:                             # %cond.end.i.i22.i1062
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a5, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a3, $a4
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	blt	$a5, $s0, .LBB10_206
.LBB10_214:                             # %land.lhs.true.i.i59.i1097
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a3, .LBB10_220
# %bb.215:                              # %if.then.i.i63.i1101
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a3, $a4, 128
	b	.LBB10_222
.LBB10_216:                             # %cond.true.i.i32.i969
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a5, 2
.LBB10_217:                             # %cond.end.i.i22.i926
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a5, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a3, $a4
	sub.d	$a3, $a4, $a3
	srai.d	$a5, $a3, 7
	addi.d	$a3, $a5, 1
	blt	$a5, $s0, .LBB10_211
.LBB10_218:                             # %land.lhs.true.i.i59.i961
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a3, .LBB10_234
# %bb.219:                              # %if.then.i.i63.i965
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a3, $a4, 128
	b	.LBB10_236
.LBB10_220:                             # %cond.true.i.i61.i1099
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_221:                             # %cond.end.i.i51.i1080
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
.LBB10_222:                             # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit65.i1086
                                        #   in Loop: Header=BB10_126 Depth=2
	st.d	$a2, $sp, 664
	ld.d	$a2, $a1, 0
	st.d	$a2, $sp, 672
	addi.d	$a2, $a2, 512
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
	st.d	$a3, $sp, 632
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 640
	addi.d	$a1, $a1, 512
	st.d	$a1, $sp, 648
	st.d	$a0, $sp, 656
.Ltmp693:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 632
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.223:                              # %.noexc747
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a2, $s1, 24
	ld.d	$a1, $s1, 40
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $s3
	bltz	$a3, .LBB10_229
# %bb.224:                              # %land.lhs.true.i.i.i741
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a3, .LBB10_230
# %bb.225:                              # %if.then.i.i.i745
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $s3, 7
	add.d	$a3, $a0, $a3
	bne	$a3, $a0, .LBB10_232
.LBB10_226:                             # %if.then.i1013
                                        #   in Loop: Header=BB10_126 Depth=2
	beq	$a0, $a2, .LBB10_254
# %bb.227:                              # %if.then.i.i1016
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a0, $a0, -128
.Ltmp701:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp702:                               # EH_LABEL
# %bb.228:                              # %.noexc1027
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, -128
	st.d	$a0, $s1, 16
	b	.LBB10_257
.LBB10_229:                             # %cond.false.i.i.i724
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_231
.LBB10_230:                             # %cond.true.i.i.i743
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_231:                             # %cond.end.i.i.i726
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a1, $a5
	alsl.d	$a1, $a4, $a1, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
	beq	$a3, $a0, .LBB10_226
.LBB10_232:                             # %if.else.i984
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 48
	beq	$a3, $a0, .LBB10_248
# %bb.233:                              # %if.else12.i987
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, 512
	st.d	$a3, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
.Ltmp695:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 432
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp696:                               # EH_LABEL
	b	.LBB10_257
.LBB10_234:                             # %cond.true.i.i61.i963
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_235:                             # %cond.end.i.i51.i944
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	alsl.d	$a0, $a4, $a0, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
.LBB10_236:                             # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit65.i950
                                        #   in Loop: Header=BB10_126 Depth=2
	st.d	$a2, $sp, 664
	ld.d	$a2, $a1, 0
	st.d	$a2, $sp, 672
	addi.d	$a2, $a2, 512
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
	st.d	$a3, $sp, 632
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 640
	addi.d	$a1, $a1, 512
	st.d	$a1, $sp, 648
	st.d	$a0, $sp, 656
.Ltmp705:                               # EH_LABEL
	addi.d	$a0, $sp, 600
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 632
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.237:                              # %.noexc708
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 16
	ld.d	$a2, $s1, 24
	ld.d	$a1, $s1, 40
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $s2
	bltz	$a3, .LBB10_243
# %bb.238:                              # %land.lhs.true.i.i.i702
                                        #   in Loop: Header=BB10_126 Depth=2
	bltu	$fp, $a3, .LBB10_244
# %bb.239:                              # %if.then.i.i.i706
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a3, $s2, 7
	add.d	$a3, $a0, $a3
	bne	$a3, $a0, .LBB10_246
.LBB10_240:                             # %if.then.i877
                                        #   in Loop: Header=BB10_126 Depth=2
	beq	$a0, $a2, .LBB10_255
# %bb.241:                              # %if.then.i.i880
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a0, $a0, -128
.Ltmp713:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp714:                               # EH_LABEL
# %bb.242:                              # %.noexc891
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, -128
	st.d	$a0, $s1, 16
	b	.LBB10_258
.LBB10_243:                             # %cond.false.i.i.i685
                                        #   in Loop: Header=BB10_126 Depth=2
	srai.d	$a4, $a3, 2
	b	.LBB10_245
.LBB10_244:                             # %cond.true.i.i.i704
                                        #   in Loop: Header=BB10_126 Depth=2
	srli.d	$a4, $a3, 2
.LBB10_245:                             # %cond.end.i.i.i687
                                        #   in Loop: Header=BB10_126 Depth=2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a1, $a5
	alsl.d	$a1, $a4, $a1, 3
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
	beq	$a3, $a0, .LBB10_240
.LBB10_246:                             # %if.else.i848
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 48
	beq	$a3, $a0, .LBB10_251
# %bb.247:                              # %if.else12.i851
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, 512
	st.d	$a3, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a2, $sp, 680
	st.d	$a1, $sp, 688
.Ltmp707:                               # EH_LABEL
	addi.d	$a0, $sp, 632
	addi.d	$a2, $sp, 664
	addi.d	$a3, $sp, 432
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp708:                               # EH_LABEL
	b	.LBB10_258
.LBB10_248:                             # %if.then9.i993
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $s1, 64
	addi.d	$a1, $a1, -128
	beq	$a3, $a1, .LBB10_256
# %bb.249:                              # %if.then.i7.i997
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp697:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp698:                               # EH_LABEL
# %bb.250:                              # %.noexc1029
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $s1, 48
	b	.LBB10_257
.LBB10_251:                             # %if.then9.i857
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $s1, 64
	addi.d	$a1, $a1, -128
	beq	$a3, $a1, .LBB10_262
# %bb.252:                              # %if.then.i7.i861
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp709:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp710:                               # EH_LABEL
# %bb.253:                              # %.noexc893
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $s1, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $s1, 48
	b	.LBB10_258
.LBB10_254:                             # %if.else.i.i1025
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp703:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp704:                               # EH_LABEL
	b	.LBB10_257
.LBB10_255:                             # %if.else.i.i889
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp715:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp716:                               # EH_LABEL
	b	.LBB10_258
.LBB10_256:                             # %if.else.i9.i1011
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp699:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
	.p2align	4, , 16
.LBB10_257:                             # %invoke.cont160
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$s0, $zero, -2
	move	$s2, $s3
.LBB10_258:                             # %if.end163
                                        #   in Loop: Header=BB10_126 Depth=2
	ori	$s3, $zero, 5
	ld.d	$a0, $sp, 80
	beq	$a0, $s4, .LBB10_260
# %bb.259:                              # %if.then.i.i751
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_260:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756
                                        #   in Loop: Header=BB10_126 Depth=2
	addi.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	addi.d	$a1, $sp, 576
	beq	$a0, $a1, .LBB10_124
# %bb.261:                              # %if.then.i.i758
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a1, $sp, 576
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_124
.LBB10_262:                             # %if.else.i9.i875
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp711:                               # EH_LABEL
	addi.d	$a1, $sp, 432
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
	b	.LBB10_258
.LBB10_263:                             # %for.cond.cleanup83
	ld.d	$a0, $s1, 72
	ld.d	$a1, $s1, 40
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 3
	sltu	$a0, $zero, $a0
	ld.d	$a3, $s1, 48
	ld.d	$a4, $s1, 56
	sub.d	$a2, $a2, $a0
	ld.d	$a5, $s1, 32
	ld.d	$a0, $s1, 16
	sub.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 7
	alsl.d	$a2, $a2, $a3, 2
	sub.d	$a3, $a5, $a0
	srli.d	$a3, $a3, 7
	add.d	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB10_278
# %bb.264:                              # %if.then195
	ld.d	$a2, $s1, 24
	sub.d	$a3, $a0, $a2
	srai.d	$a2, $a3, 7
	bltz	$a2, .LBB10_267
# %bb.265:                              # %land.lhs.true.i.i.i.i789
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB10_269
# %bb.266:                              # %cond.true.i.i.i.i791
	srli.d	$a0, $a2, 2
	b	.LBB10_268
.LBB10_267:                             # %cond.false.i.i.i.i780
	srai.d	$a0, $a3, 9
.LBB10_268:                             # %cond.end.i.i.i.i782
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a2, $a0
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB10_269:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit795
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 67
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB10_279
# %bb.270:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB10_272
# %bb.271:                              # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB10_273
.LBB10_272:                             # %if.end.i.i.i1121
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB10_273:                             # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB10_279
# %bb.274:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1129
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB10_276
# %bb.275:                              # %if.then.i2.i.i1132
	ld.bu	$a0, $s0, 67
	b	.LBB10_277
.LBB10_276:                             # %if.end.i.i.i1137
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB10_277:                             # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit1142
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB10_278:                             # %if.end202
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.LBB10_279:                             # %if.then.i.i.i1122
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB10_280:                             # %lpad32
.Ltmp661:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB10_285
.LBB10_281:                             # %lpad46
.Ltmp649:                               # EH_LABEL
	move	$s1, $a0
	move	$s8, $s5
	b	.LBB10_296
.LBB10_282:                             # %lpad49
.Ltmp652:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB10_290
.LBB10_283:                             # %lpad34
.Ltmp664:                               # EH_LABEL
	ld.d	$a2, $sp, 368
	move	$s1, $a0
	addi.d	$a0, $sp, 384
	beq	$a2, $a0, .LBB10_285
# %bb.284:                              # %if.then.i.i277
	ld.d	$a0, $sp, 384
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_285:                             # %ehcleanup
	ld.d	$a0, $sp, 400
	addi.d	$a1, $sp, 416
	beq	$a0, $a1, .LBB10_291
# %bb.286:                              # %if.then.i.i284
	ld.d	$a1, $sp, 416
	b	.LBB10_293
.LBB10_287:                             # %lpad57
.Ltmp658:                               # EH_LABEL
	b	.LBB10_295
.LBB10_288:                             # %lpad51
.Ltmp655:                               # EH_LABEL
	ld.d	$a2, $sp, 304
	move	$s1, $a0
	addi.d	$a0, $sp, 320
	beq	$a2, $a0, .LBB10_290
# %bb.289:                              # %if.then.i.i357
	ld.d	$a0, $sp, 320
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_290:                             # %ehcleanup54
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	bne	$a0, $a1, .LBB10_292
.LBB10_291:
	move	$s8, $s5
	b	.LBB10_296
.LBB10_292:                             # %if.then.i.i364
	ld.d	$a1, $sp, 352
.LBB10_293:                             # %ehcleanup61
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s8, $s5
	b	.LBB10_296
.LBB10_294:                             # %lpad38
.Ltmp677:                               # EH_LABEL
.LBB10_295:                             # %ehcleanup61
	move	$s1, $a0
	addi.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
.LBB10_296:                             # %ehcleanup61
	ld.d	$a0, $sp, 560
	bne	$a0, $s8, .LBB10_303
	b	.LBB10_304
.LBB10_297:                             # %lpad126
.Ltmp686:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB10_308
.LBB10_298:                             # %lpad116
.Ltmp680:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB10_302
.LBB10_299:                             # %if.then.i.i641
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	addi.d	$a1, $sp, 576
	bne	$a0, $a1, .LBB10_303
	b	.LBB10_304
.LBB10_300:                             # %lpad118
.Ltmp683:                               # EH_LABEL
	ld.d	$a2, $sp, 112
	move	$s1, $a0
	addi.d	$a0, $sp, 128
	bne	$a2, $a0, .LBB10_305
# %bb.301:                              # %ehcleanup121
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	bne	$a0, $a1, .LBB10_299
.LBB10_302:                             # %ehcleanup171
	ld.d	$a0, $sp, 560
	addi.d	$a1, $sp, 576
	beq	$a0, $a1, .LBB10_304
.LBB10_303:                             # %if.then.i.i378
	ld.d	$a1, $sp, 576
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_304:                             # %ehcleanup204
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_305:                             # %if.then.i.i634
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB10_302
	b	.LBB10_299
.LBB10_306:                             # %lpad128
.Ltmp717:                               # EH_LABEL
	ld.d	$a2, $sp, 80
	move	$s1, $a0
	beq	$a2, $s4, .LBB10_308
# %bb.307:                              # %if.then.i.i648
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_308:                             # %ehcleanup167
	addi.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560
	addi.d	$a1, $sp, 576
	bne	$a0, $a1, .LBB10_303
	b	.LBB10_304
.Lfunc_end10:
	.size	_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi, .Lfunc_end10-_ZN2PP12Restartblock13process_wordsERSt5dequeINS_4WordESaIS2_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EESF_RS6_IiSaIiEERNS7_18basic_stringstreamIcSA_SB_EERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp647-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp647
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp647-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp648-.Ltmp647              #   Call between .Ltmp647 and .Ltmp648
	.uleb128 .Ltmp649-.Lfunc_begin7         #     jumps to .Ltmp649
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp659-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp660-.Ltmp659              #   Call between .Ltmp659 and .Ltmp660
	.uleb128 .Ltmp661-.Lfunc_begin7         #     jumps to .Ltmp661
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp650-.Ltmp660              #   Call between .Ltmp660 and .Ltmp650
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp650-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp651-.Ltmp650              #   Call between .Ltmp650 and .Ltmp651
	.uleb128 .Ltmp652-.Lfunc_begin7         #     jumps to .Ltmp652
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp653-.Ltmp651              #   Call between .Ltmp651 and .Ltmp653
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp653-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp654-.Ltmp653              #   Call between .Ltmp653 and .Ltmp654
	.uleb128 .Ltmp655-.Lfunc_begin7         #     jumps to .Ltmp655
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp656-.Ltmp654              #   Call between .Ltmp654 and .Ltmp656
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp657-.Ltmp656              #   Call between .Ltmp656 and .Ltmp657
	.uleb128 .Ltmp658-.Lfunc_begin7         #     jumps to .Ltmp658
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp662-.Ltmp657              #   Call between .Ltmp657 and .Ltmp662
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp663-.Ltmp662              #   Call between .Ltmp662 and .Ltmp663
	.uleb128 .Ltmp664-.Lfunc_begin7         #     jumps to .Ltmp664
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp665-.Ltmp663              #   Call between .Ltmp663 and .Ltmp665
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp665-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp672-.Ltmp665              #   Call between .Ltmp665 and .Ltmp672
	.uleb128 .Ltmp677-.Lfunc_begin7         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp678-.Ltmp672              #   Call between .Ltmp672 and .Ltmp678
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp680-.Lfunc_begin7         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp679-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp681-.Ltmp679              #   Call between .Ltmp679 and .Ltmp681
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin7         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp682-.Lfunc_begin7         # >> Call Site 18 <<
	.uleb128 .Ltmp684-.Ltmp682              #   Call between .Ltmp682 and .Ltmp684
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin7         # >> Call Site 19 <<
	.uleb128 .Ltmp685-.Ltmp684              #   Call between .Ltmp684 and .Ltmp685
	.uleb128 .Ltmp686-.Lfunc_begin7         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp685-.Lfunc_begin7         # >> Call Site 20 <<
	.uleb128 .Ltmp689-.Ltmp685              #   Call between .Ltmp685 and .Ltmp689
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin7         # >> Call Site 21 <<
	.uleb128 .Ltmp688-.Ltmp689              #   Call between .Ltmp689 and .Ltmp688
	.uleb128 .Ltmp717-.Lfunc_begin7         #     jumps to .Ltmp717
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp688-.Lfunc_begin7         # >> Call Site 22 <<
	.uleb128 .Ltmp691-.Ltmp688              #   Call between .Ltmp688 and .Ltmp691
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp691-.Lfunc_begin7         # >> Call Site 23 <<
	.uleb128 .Ltmp700-.Ltmp691              #   Call between .Ltmp691 and .Ltmp700
	.uleb128 .Ltmp717-.Lfunc_begin7         #     jumps to .Ltmp717
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp700-.Lfunc_begin7         # >> Call Site 24 <<
	.uleb128 .Ltmp711-.Ltmp700              #   Call between .Ltmp700 and .Ltmp711
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin7         # >> Call Site 25 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp717-.Lfunc_begin7         #     jumps to .Ltmp717
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp712-.Lfunc_begin7         # >> Call Site 26 <<
	.uleb128 .Lfunc_end10-.Ltmp712          #   Call between .Ltmp712 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_ # -- Begin function _ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_
	.p2align	2
	.type	_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_,@function
_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_: # @_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 16
	ld.d	$a1, $s0, 24
	ld.d	$a0, $s0, 40
	sub.d	$a2, $a4, $a1
	srai.d	$a2, $a2, 7
	add.d	$a3, $a2, $s1
	bltz	$a3, .LBB11_3
# %bb.1:                                # %land.lhs.true.i.i
	ori	$a2, $zero, 3
	bltu	$a2, $a3, .LBB11_4
# %bb.2:                                # %if.then.i.i
	ld.d	$a2, $s0, 32
	slli.d	$a3, $s1, 7
	add.d	$a3, $a4, $a3
	b	.LBB11_6
.LBB11_3:                               # %cond.false.i.i
	srai.d	$a4, $a3, 2
	b	.LBB11_5
.LBB11_4:                               # %cond.true.i.i
	srli.d	$a4, $a3, 2
.LBB11_5:                               # %cond.end.i.i
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a0, $a1
	alsl.d	$a0, $a4, $a0, 3
	addi.d	$a2, $a1, 512
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a1, $a3
.LBB11_6:                               # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit
	st.d	$a3, $sp, 48
	st.d	$a1, $sp, 56
	st.d	$a2, $sp, 64
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a2, $sp, 48
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end11:
	.size	_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_, .Lfunc_end11-_ZN2PP12Restartblock13replace_wordsEiiRSt5dequeINS_4WordESaIS2_EERS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE # -- Begin function _ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE
	.p2align	2
	.type	_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE,@function
_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE: # @_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
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
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$fp, $zero
	move	$s6, $zero
	addi.d	$s4, $sp, 192
	addi.d	$s2, $a3, 16
	ori	$s5, $zero, 16
	addi.w	$s7, $zero, -1
	ori	$s8, $zero, 4
	lu12i.w	$a0, 190278
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 190038
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 190230
	ori	$a0, $a0, 1326
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 415462
	ori	$a0, $a0, 3950
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB12_2
	.p2align	4, , 16
.LBB12_1:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$fp, $fp, 128
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 72
	ld.d	$a1, $s1, 40
	sub.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $s1, 48
	ld.d	$a3, $s1, 56
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $s1, 32
	ld.d	$a4, $s1, 16
	sub.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 7
	alsl.d	$a0, $a0, $a2, 2
	sub.d	$a1, $a1, $a4
	srli.d	$a1, $a1, 7
	add.w	$a0, $a0, $a1
	bge	$s6, $a0, .LBB12_152
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $s1, 96
	ld.d	$a1, $s1, 104
	ld.d	$a0, $s1, 120
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s6, $a1
	bltz	$a1, .LBB12_6
# %bb.4:                                # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB12_7
# %bb.5:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a2, $fp
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_6:                               # %cond.false.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB12_8
	.p2align	4, , 16
.LBB12_7:                               # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a2, $a1, 2
.LBB12_8:                               # %cond.end.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB12_9:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
                                        #   in Loop: Header=BB12_2 Depth=1
	st.d	$s4, $sp, 176
	ld.d	$a1, $a0, 8
	ld.d	$s3, $a0, 0
	st.d	$a1, $sp, 144
	move	$a0, $s4
	bltu	$a1, $s5, .LBB12_11
# %bb.10:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	st.d	$a0, $sp, 176
	st.d	$a1, $sp, 192
.LBB12_11:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_15
# %bb.12:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_14
# %bb.13:                               # %if.then.i.i.i.i25
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB12_15
	.p2align	4, , 16
.LBB12_14:                              # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 144
	ld.d	$s3, $sp, 176
	st.d	$a1, $sp, 184
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 112
	bltu	$a1, $s5, .LBB12_18
# %bb.16:                               # %if.then.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp718:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp719:                               # EH_LABEL
# %bb.17:                               # %call.i4.i.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
.LBB12_18:                              # %if.end.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_22
# %bb.19:                               # %if.end.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_21
# %bb.20:                               # %if.then.i.i.i27
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB12_22
	.p2align	4, , 16
.LBB12_21:                              # %if.end.i.i.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_22:                              # %invoke.cont
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a3, $s1, 416
	ld.d	$a0, $s1, 424
	ld.d	$a2, $sp, 112
	ld.d	$a1, $s1, 440
	sub.d	$a0, $a3, $a0
	add.d	$a4, $s6, $a0
	st.d	$a2, $sp, 152
	bltz	$a4, .LBB12_25
# %bb.23:                               # %land.lhs.true.i.i.i.i47
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a5, $zero, 511
	bltu	$a5, $a4, .LBB12_26
# %bb.24:                               # %if.then.i.i.i.i51
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a3, $s6
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB12_28
	b	.LBB12_51
	.p2align	4, , 16
.LBB12_25:                              # %cond.false.i.i.i.i38
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a3, $a4, 9
	b	.LBB12_27
	.p2align	4, , 16
.LBB12_26:                              # %cond.true.i.i.i.i49
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a3, $a4, 9
.LBB12_27:                              # %cond.end.i.i.i.i40
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a1, $a1, $a4
	slli.d	$a3, $a3, 9
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s6
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_51
.LBB12_28:                              # %if.then
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB12_32
# %bb.29:                               # %invoke.cont7
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$s8, $zero, 4
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_33
# %bb.30:                               # %if.then9
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp721:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a3, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp722:                               # EH_LABEL
# %bb.31:                               # %if.then9.if.endthread-pre-split_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
	ori	$a1, $zero, 4
.LBB12_32:                              # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$s8, $zero, 4
	bne	$a0, $a1, .LBB12_36
.LBB12_33:                              # %invoke.cont12
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_37
# %bb.34:                               # %if.then14
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 152
.Ltmp723:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a3, $a0, %pc_lo12(.L.str.35)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.35:                               # %if.then14.if.end17_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
.LBB12_36:                              # %if.end17
                                        #   in Loop: Header=BB12_2 Depth=1
	bne	$a0, $s8, .LBB12_40
.LBB12_37:                              # %invoke.cont18
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_41
# %bb.38:                               # %if.then20
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 152
.Ltmp725:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a3, $a0, %pc_lo12(.L.str.36)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp726:                               # EH_LABEL
# %bb.39:                               # %if.then20.if.end23thread-pre-split_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
.LBB12_40:                              # %if.end23
                                        #   in Loop: Header=BB12_2 Depth=1
	bne	$a0, $s8, .LBB12_44
.LBB12_41:                              # %invoke.cont24
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 190038
	ori	$a1, $a1, 3630
	bne	$a0, $a1, .LBB12_45
# %bb.42:                               # %if.then26
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 152
.Ltmp727:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a3, $a0, %pc_lo12(.L.str.37)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp728:                               # EH_LABEL
# %bb.43:                               # %if.then26.if.end29_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
.LBB12_44:                              # %if.end29
                                        #   in Loop: Header=BB12_2 Depth=1
	bne	$a0, $s8, .LBB12_48
.LBB12_45:                              # %invoke.cont30
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 190278
	ori	$a1, $a1, 1838
	bne	$a0, $a1, .LBB12_49
# %bb.46:                               # %if.then32
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 152
.Ltmp729:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a3, $a0, %pc_lo12(.L.str.38)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.47:                               # %if.then32.if.end35thread-pre-split_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 184
.LBB12_48:                              # %if.end35
                                        #   in Loop: Header=BB12_2 Depth=1
	bne	$a0, $s8, .LBB12_51
.LBB12_49:                              # %invoke.cont36
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	ld.w	$a0, $a0, 0
	lu12i.w	$a1, 190038
	ori	$a1, $a1, 1838
	bne	$a0, $a1, .LBB12_51
# %bb.50:                               # %if.then38
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 152
.Ltmp731:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 144
	ori	$a4, $zero, 6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp732:                               # EH_LABEL
	.p2align	4, , 16
.LBB12_51:                              # %if.end42
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp733:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.52:                               # %invoke.cont43
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$s3, $s0, 0
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 80
	bltu	$a1, $s5, .LBB12_55
# %bb.53:                               # %if.then.i.i138
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp736:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp737:                               # EH_LABEL
# %bb.54:                               # %call.i4.i.noexc139
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
.LBB12_55:                              # %if.end.i.i133
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_58
# %bb.56:                               # %if.end.i.i133
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_59
# %bb.57:                               # %if.then.i.i.i135
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
.LBB12_58:                              # %invoke.cont46
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 80
	st.d	$a2, $sp, 120
	bnez	$s6, .LBB12_60
	b	.LBB12_62
	.p2align	4, , 16
.LBB12_59:                              # %if.end.i.i.i.i136
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 80
	st.d	$a2, $sp, 120
	beqz	$s6, .LBB12_62
.LBB12_60:                              # %if.then48
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp739:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp740:                               # EH_LABEL
# %bb.61:                               # %if.then48.if.end52_crit_edge
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 120
.LBB12_62:                              # %if.end52
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 112
.Ltmp741:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.63:                               # %invoke.cont53
                                        #   in Loop: Header=BB12_2 Depth=1
	move	$s3, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s6, $a1
	bltz	$a1, .LBB12_66
# %bb.64:                               # %land.lhs.true.i.i.i.i164
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB12_67
# %bb.65:                               # %if.then.i.i.i.i168
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a2, $fp
	b	.LBB12_69
	.p2align	4, , 16
.LBB12_66:                              # %cond.false.i.i.i.i155
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB12_68
	.p2align	4, , 16
.LBB12_67:                              # %cond.true.i.i.i.i166
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a2, $a1, 2
.LBB12_68:                              # %cond.end.i.i.i.i157
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB12_69:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit170
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $sp, 96
	st.d	$a2, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 0
	st.d	$a1, $sp, 48
	move	$a0, $a2
	bltu	$a1, $s5, .LBB12_72
# %bb.70:                               # %if.then.i.i.i180
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp743:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp744:                               # EH_LABEL
# %bb.71:                               # %call.i4.i.i181.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB12_72:                              # %if.end.i.i.i175
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_76
# %bb.73:                               # %if.end.i.i.i175
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_75
# %bb.74:                               # %if.then.i.i.i.i177
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB12_76
	.p2align	4, , 16
.LBB12_75:                              # %if.end.i.i.i.i.i178
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_76:                              # %invoke.cont59
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
.Ltmp746:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp747:                               # EH_LABEL
# %bb.77:                               # %invoke.cont61
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp748:                               # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp749:                               # EH_LABEL
# %bb.78:                               # %invoke.cont63
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 184
.Ltmp750:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.79:                               # %invoke.cont65
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp752:                               # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp753:                               # EH_LABEL
# %bb.80:                               # %invoke.cont67
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $s1, 176
	ld.d	$a1, $s1, 184
	ld.d	$a0, $s1, 200
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s6, $a1
	bltz	$a1, .LBB12_83
# %bb.81:                               # %land.lhs.true.i.i.i.i215
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB12_84
# %bb.82:                               # %if.then.i.i.i.i219
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a2, $fp
	b	.LBB12_86
	.p2align	4, , 16
.LBB12_83:                              # %cond.false.i.i.i.i206
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB12_85
	.p2align	4, , 16
.LBB12_84:                              # %cond.true.i.i.i.i217
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a2, $a1, 2
.LBB12_85:                              # %cond.end.i.i.i.i208
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB12_86:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit221
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $sp, 64
	st.d	$a2, $sp, 48
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 0
	st.d	$a1, $sp, 208
	move	$a0, $a2
	bltu	$a1, $s5, .LBB12_89
# %bb.87:                               # %if.then.i.i.i231
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp755:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 208
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp756:                               # EH_LABEL
# %bb.88:                               # %call.i4.i.i232.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 208
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB12_89:                              # %if.end.i.i.i226
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_93
# %bb.90:                               # %if.end.i.i.i226
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_92
# %bb.91:                               # %if.then.i.i.i.i228
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB12_93
	.p2align	4, , 16
.LBB12_92:                              # %if.end.i.i.i.i.i229
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_93:                              # %invoke.cont73
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 208
	ld.d	$a1, $sp, 48
	st.d	$a2, $sp, 56
.Ltmp758:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp759:                               # EH_LABEL
# %bb.94:                               # %invoke.cont75
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 48
	addi.d	$s4, $sp, 192
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB12_96
# %bb.95:                               # %if.then.i.i240
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_96:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB12_98
# %bb.97:                               # %if.then.i.i244
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_98:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $s1, 256
	ld.d	$a1, $s1, 264
	ld.d	$a0, $s1, 280
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s6, $a1
	bltz	$a1, .LBB12_101
# %bb.99:                               # %land.lhs.true.i.i.i.i268
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB12_102
# %bb.100:                              # %if.then.i.i.i.i272
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a2, $fp
	b	.LBB12_104
	.p2align	4, , 16
.LBB12_101:                             # %cond.false.i.i.i.i259
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB12_103
	.p2align	4, , 16
.LBB12_102:                             # %cond.true.i.i.i.i270
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a2, $a1, 2
.LBB12_103:                             # %cond.end.i.i.i.i261
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB12_104:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit274
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $sp, 96
	st.d	$a2, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s3, $a0, 0
	st.d	$a1, $sp, 48
	move	$a0, $a2
	bltu	$a1, $s5, .LBB12_107
# %bb.105:                              # %if.then.i.i.i284
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp761:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp762:                               # EH_LABEL
# %bb.106:                              # %call.i4.i.i285.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB12_107:                             # %if.end.i.i.i279
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_110
# %bb.108:                              # %if.end.i.i.i279
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_112
# %bb.109:                              # %if.then.i.i.i.i281
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
.LBB12_110:                             # %invoke.cont83
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 48
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	bne	$a1, $s8, .LBB12_113
.LBB12_111:                             # %if.end.i.i294
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$s3, $a1, 1
	addi.d	$a1, $sp, 96
	bne	$a0, $a1, .LBB12_114
	b	.LBB12_115
	.p2align	4, , 16
.LBB12_112:                             # %if.end.i.i.i.i.i282
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	beq	$a1, $s8, .LBB12_111
.LBB12_113:                             #   in Loop: Header=BB12_2 Depth=1
	move	$s3, $zero
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB12_115
.LBB12_114:                             # %if.then.i.i298
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_115:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$s3, .LBB12_146
# %bb.116:                              # %if.end90
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp764:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp765:                               # EH_LABEL
# %bb.117:                              # %invoke.cont92
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $s1, 256
	ld.d	$a1, $s1, 264
	ld.d	$a0, $s1, 280
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $s6, $a1
	bltz	$a1, .LBB12_120
# %bb.118:                              # %land.lhs.true.i.i.i.i346
                                        #   in Loop: Header=BB12_2 Depth=1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB12_121
# %bb.119:                              # %if.then.i.i.i.i350
                                        #   in Loop: Header=BB12_2 Depth=1
	add.d	$a0, $a2, $fp
	b	.LBB12_123
	.p2align	4, , 16
.LBB12_120:                             # %cond.false.i.i.i.i337
                                        #   in Loop: Header=BB12_2 Depth=1
	srai.d	$a2, $a1, 2
	b	.LBB12_122
	.p2align	4, , 16
.LBB12_121:                             # %cond.true.i.i.i.i348
                                        #   in Loop: Header=BB12_2 Depth=1
	srli.d	$a2, $a1, 2
.LBB12_122:                             # %cond.end.i.i.i.i339
                                        #   in Loop: Header=BB12_2 Depth=1
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB12_123:                             # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit352
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $sp, 96
	st.d	$a2, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s3, $a0, 0
	st.d	$a1, $sp, 48
	move	$a0, $a2
	bltu	$a1, $s5, .LBB12_126
# %bb.124:                              # %if.then.i.i.i362
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp766:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp767:                               # EH_LABEL
# %bb.125:                              # %call.i4.i.i363.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB12_126:                             # %if.end.i.i.i357
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a1, $s7, .LBB12_130
# %bb.127:                              # %if.end.i.i.i357
                                        #   in Loop: Header=BB12_2 Depth=1
	bnez	$a1, .LBB12_129
# %bb.128:                              # %if.then.i.i.i.i359
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB12_130
	.p2align	4, , 16
.LBB12_129:                             # %if.end.i.i.i.i.i360
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_130:                             # %invoke.cont99
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a2, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
.Ltmp769:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp770:                               # EH_LABEL
# %bb.131:                              # %invoke.cont101
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB12_133
# %bb.132:                              # %if.then.i.i371
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_133:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB12_153
# %bb.134:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB12_136
# %bb.135:                              # %if.then.i2.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB12_138
	.p2align	4, , 16
.LBB12_136:                             # %if.end.i.i.i449
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp772:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp773:                               # EH_LABEL
# %bb.137:                              # %.noexc452
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp774:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp775:                               # EH_LABEL
.LBB12_138:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp776:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp777:                               # EH_LABEL
# %bb.139:                              # %call1.i.noexc
                                        #   in Loop: Header=BB12_2 Depth=1
.Ltmp778:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp779:                               # EH_LABEL
# %bb.140:                              # %cleanup
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB12_142
# %bb.141:                              # %if.then.i.i379
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_142:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB12_144
# %bb.143:                              # %if.then.i.i386
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_144:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB12_1
# %bb.145:                              # %if.then.i.i393
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_1
.LBB12_146:                             # %cleanup119.critedge
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB12_148
# %bb.147:                              # %if.then.i.i428
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_148:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB12_150
# %bb.149:                              # %if.then.i.i435
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_150:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB12_152
# %bb.151:                              # %if.then.i.i442
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_152:                             # %cleanup119
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB12_153:                             # %if.then.i.i.i451
.Ltmp781:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp782:                               # EH_LABEL
# %bb.154:                              # %.noexc
.LBB12_155:                             # %lpad98
.Ltmp768:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_172
.LBB12_156:                             # %lpad45
.Ltmp738:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB12_177
	b	.LBB12_180
.LBB12_157:                             # %lpad82
.Ltmp763:                               # EH_LABEL
	b	.LBB12_174
.LBB12_158:                             # %lpad
.Ltmp720:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB12_178
	b	.LBB12_181
.LBB12_159:                             # %lpad72
.Ltmp757:                               # EH_LABEL
	b	.LBB12_168
.LBB12_160:                             # %lpad58
.Ltmp745:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_172
.LBB12_161:                             # %lpad100
.Ltmp771:                               # EH_LABEL
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	addi.d	$a0, $sp, 96
	beq	$a2, $a0, .LBB12_172
# %bb.162:                              # %if.then.i.i400
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB12_171
.LBB12_163:                             # %lpad49.loopexit.split-lp
.Ltmp783:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_172
.LBB12_164:                             # %lpad74
.Ltmp760:                               # EH_LABEL
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	addi.d	$a0, $sp, 64
	beq	$a2, $a0, .LBB12_169
# %bb.165:                              # %if.then.i.i305
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_169
.LBB12_166:                             # %lpad6
.Ltmp735:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB12_177
	b	.LBB12_180
.LBB12_167:                             # %lpad60
.Ltmp754:                               # EH_LABEL
.LBB12_168:                             # %ehcleanup77
	move	$fp, $a0
.LBB12_169:                             # %ehcleanup77
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB12_172
# %bb.170:                              # %if.then.i.i312
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
.LBB12_171:                             # %ehcleanup104
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_172:                             # %ehcleanup104
	addi.d	$s4, $sp, 192
	b	.LBB12_175
.LBB12_173:                             # %lpad49.loopexit
.Ltmp780:                               # EH_LABEL
.LBB12_174:                             # %ehcleanup108
	move	$fp, $a0
.LBB12_175:                             # %ehcleanup108
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	bne	$a0, $a1, .LBB12_179
# %bb.176:                              # %ehcleanup112
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	bne	$a0, $a1, .LBB12_180
.LBB12_177:                             # %ehcleanup114
	ld.d	$a0, $sp, 176
	bne	$a0, $s4, .LBB12_181
.LBB12_178:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_179:                             # %if.then.i.i407
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB12_177
.LBB12_180:                             # %if.then.i.i414
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB12_178
.LBB12_181:                             # %if.then.i.i421
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE, .Lfunc_end12-_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp718-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp718
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp718-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp719-.Ltmp718              #   Call between .Ltmp718 and .Ltmp719
	.uleb128 .Ltmp720-.Lfunc_begin8         #     jumps to .Ltmp720
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp719-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp721-.Ltmp719              #   Call between .Ltmp719 and .Ltmp721
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp721-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp734-.Ltmp721              #   Call between .Ltmp721 and .Ltmp734
	.uleb128 .Ltmp735-.Lfunc_begin8         #     jumps to .Ltmp735
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp736-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp737-.Ltmp736              #   Call between .Ltmp736 and .Ltmp737
	.uleb128 .Ltmp738-.Lfunc_begin8         #     jumps to .Ltmp738
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp737-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp739-.Ltmp737              #   Call between .Ltmp737 and .Ltmp739
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp742-.Ltmp739              #   Call between .Ltmp739 and .Ltmp742
	.uleb128 .Ltmp780-.Lfunc_begin8         #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp744-.Ltmp743              #   Call between .Ltmp743 and .Ltmp744
	.uleb128 .Ltmp745-.Lfunc_begin8         #     jumps to .Ltmp745
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp746-.Ltmp744              #   Call between .Ltmp744 and .Ltmp746
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp746-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp753-.Ltmp746              #   Call between .Ltmp746 and .Ltmp753
	.uleb128 .Ltmp754-.Lfunc_begin8         #     jumps to .Ltmp754
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp756-.Ltmp755              #   Call between .Ltmp755 and .Ltmp756
	.uleb128 .Ltmp757-.Lfunc_begin8         #     jumps to .Ltmp757
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp756-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp758-.Ltmp756              #   Call between .Ltmp756 and .Ltmp758
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp758-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp759-.Ltmp758              #   Call between .Ltmp758 and .Ltmp759
	.uleb128 .Ltmp760-.Lfunc_begin8         #     jumps to .Ltmp760
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp761-.Ltmp759              #   Call between .Ltmp759 and .Ltmp761
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp761-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp762-.Ltmp761              #   Call between .Ltmp761 and .Ltmp762
	.uleb128 .Ltmp763-.Lfunc_begin8         #     jumps to .Ltmp763
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp764-.Ltmp762              #   Call between .Ltmp762 and .Ltmp764
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp764-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp765-.Ltmp764              #   Call between .Ltmp764 and .Ltmp765
	.uleb128 .Ltmp780-.Lfunc_begin8         #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp766-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp767-.Ltmp766              #   Call between .Ltmp766 and .Ltmp767
	.uleb128 .Ltmp768-.Lfunc_begin8         #     jumps to .Ltmp768
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp769-.Ltmp767              #   Call between .Ltmp767 and .Ltmp769
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp770-.Ltmp769              #   Call between .Ltmp769 and .Ltmp770
	.uleb128 .Ltmp771-.Lfunc_begin8         #     jumps to .Ltmp771
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp772-.Ltmp770              #   Call between .Ltmp770 and .Ltmp772
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp772-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp779-.Ltmp772              #   Call between .Ltmp772 and .Ltmp779
	.uleb128 .Ltmp780-.Lfunc_begin8         #     jumps to .Ltmp780
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp779-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp781-.Ltmp779              #   Call between .Ltmp779 and .Ltmp781
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp781-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp782-.Ltmp781              #   Call between .Ltmp781 and .Ltmp782
	.uleb128 .Ltmp783-.Lfunc_begin8         #     jumps to .Ltmp783
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp782-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Lfunc_end12-.Ltmp782          #   Call between .Ltmp782 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE # -- Begin function _ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE
	.p2align	2
	.type	_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE,@function
_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE: # @_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE
	.cfi_startproc
# %bb.0:                                # %entry
	move	$a4, $a3
	ld.d	$a6, $a3, 16
	ld.d	$a5, $a3, 24
	ld.d	$a0, $a3, 40
	sub.d	$a3, $a6, $a5
	srai.d	$a7, $a3, 7
	add.d	$a3, $a7, $a1
	bltz	$a3, .LBB13_4
# %bb.1:                                # %land.lhs.true.i.i
	ori	$t0, $zero, 3
	bltu	$t0, $a3, .LBB13_5
# %bb.2:                                # %if.then.i.i
	slli.d	$a1, $a1, 7
	add.d	$a3, $a6, $a1
	move	$a1, $a0
	add.d	$a7, $a7, $a2
	bgez	$a7, .LBB13_7
.LBB13_3:                               # %cond.false.i.i20
	srai.d	$a2, $a7, 2
	b	.LBB13_10
.LBB13_4:                               # %cond.false.i.i
	srai.d	$t0, $a3, 2
	b	.LBB13_6
.LBB13_5:                               # %cond.true.i.i
	srli.d	$t0, $a3, 2
.LBB13_6:                               # %cond.end.i.i
	alsl.d	$a1, $t0, $a0, 3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 2
	sub.d	$a3, $a3, $t0
	slli.d	$a3, $a3, 7
	add.d	$a3, $t1, $a3
	add.d	$a7, $a7, $a2
	bltz	$a7, .LBB13_3
.LBB13_7:                               # %land.lhs.true.i.i30
	ori	$t0, $zero, 3
	bltu	$t0, $a7, .LBB13_9
# %bb.8:                                # %if.then.i.i34
	slli.d	$a2, $a2, 7
	add.d	$a2, $a6, $a2
	b	.LBB13_11
.LBB13_9:                               # %cond.true.i.i32
	srli.d	$a2, $a7, 2
.LBB13_10:                              # %cond.end.i.i22
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a0, $a5
	alsl.d	$a0, $a2, $a0, 3
	slli.d	$a2, $a2, 2
	sub.d	$a2, $a7, $a2
	slli.d	$a2, $a2, 7
	add.d	$a2, $a5, $a2
.LBB13_11:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit36
	sub.d	$a5, $a2, $a5
	srai.d	$a6, $a5, 7
	addi.w	$a7, $zero, -1
	addi.d	$a5, $a6, 1
	blt	$a6, $a7, .LBB13_14
# %bb.12:                               # %land.lhs.true.i.i59
	ori	$a6, $zero, 3
	bltu	$a6, $a5, .LBB13_15
# %bb.13:                               # %if.then.i.i63
	addi.d	$a2, $a2, 128
	b	.LBB13_17
.LBB13_14:                              # %cond.false.i.i49
	srai.d	$a2, $a5, 2
	b	.LBB13_16
.LBB13_15:                              # %cond.true.i.i61
	srli.d	$a2, $a5, 2
.LBB13_16:                              # %cond.end.i.i51
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $a0, $a6
	alsl.d	$a0, $a2, $a0, 3
	slli.d	$a2, $a2, 2
	sub.d	$a2, $a5, $a2
	slli.d	$a2, $a2, 7
	add.d	$a2, $a6, $a2
.LBB13_17:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit65
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a1, 0
	st.d	$a3, $sp, 72
	st.d	$a5, $sp, 80
	addi.d	$a3, $a5, 512
	st.d	$a3, $sp, 88
	ld.d	$a3, $a0, 0
	st.d	$a1, $sp, 96
	st.d	$a2, $sp, 40
	st.d	$a3, $sp, 48
	addi.d	$a1, $a3, 512
	st.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 40
	move	$a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end13:
	.size	_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE, .Lfunc_end13-_ZN2PP12Restartblock12delete_wordsEiiRSt5dequeINS_4WordESaIS2_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	ld.d	$a1, $a2, 0
	ld.d	$a4, $s0, 16
	move	$fp, $a0
	beq	$a1, $a4, .LBB14_3
# %bb.1:                                # %if.else
	ld.d	$a0, $s0, 48
	beq	$a1, $a0, .LBB14_5
# %bb.2:                                # %if.else12
	ld.d	$a0, $a2, 24
	ld.d	$a2, $a0, 0
	addi.d	$a4, $a2, 512
	st.d	$a1, $sp, 8
	st.d	$a2, $sp, 16
	st.d	$a4, $sp, 24
	st.d	$a0, $sp, 32
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_)
	jirl	$ra, $ra, 0
	b	.LBB14_13
.LBB14_3:                               # %if.then
	ld.d	$a0, $s0, 24
	beq	$a1, $a0, .LBB14_7
# %bb.4:                                # %if.then.i
	addi.d	$a0, $a4, -128
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -128
	st.d	$a0, $s0, 16
	b	.LBB14_8
.LBB14_5:                               # %if.then9
	ld.d	$a2, $s0, 64
	addi.d	$a2, $a2, -128
	beq	$a1, $a2, .LBB14_9
# %bb.6:                                # %if.then.i7
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	addi.d	$a0, $a0, 128
	st.d	$a0, $s0, 48
	b	.LBB14_10
.LBB14_7:                               # %if.else.i
	move	$a0, $s0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
.LBB14_8:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EE10push_frontERKS1_.exit
	vld	$vr0, $s0, 24
	ld.d	$a1, $s0, 40
	st.d	$a0, $fp, 0
	vst	$vr0, $fp, 8
	st.d	$a1, $fp, 24
	b	.LBB14_13
.LBB14_9:                               # %if.else.i9
	move	$a0, $s0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
.LBB14_10:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit
	vld	$vr0, $s0, 56
	ld.d	$a2, $s0, 56
	ld.d	$a1, $s0, 72
	vst	$vr0, $fp, 8
	st.d	$a1, $fp, 24
	bne	$a0, $a2, .LBB14_12
# %bb.11:                               # %if.then.i18
	ld.d	$a0, $a1, -8
	addi.d	$a1, $a1, -8
	st.d	$a1, $fp, 24
	st.d	$a0, $fp, 8
	addi.d	$a0, $a0, 512
	st.d	$a0, $fp, 16
.LBB14_12:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit
	addi.d	$a0, $a0, -128
	st.d	$a0, $fp, 0
.LBB14_13:                              # %return
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end14:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_, .Lfunc_end14-_ZNSt5dequeIN2PP4WordESaIS1_EE6insertESt15_Deque_iteratorIS1_RKS1_PS5_ES6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm,comdat
	.weak	_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm # -- Begin function _ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm
	.p2align	2
	.type	_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm,@function
_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm: # @_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a1, 2
	ori	$a1, $zero, 5
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	addi.d	$s1, $a1, 3
	addi.w	$a1, $zero, -12
	lu52i.d	$a2, $a1, 1023
	st.d	$s1, $fp, 8
	bgeu	$s0, $a2, .LBB15_5
# %bb.1:                                # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	sub.d	$a1, $s1, $s2
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$s1, $a0, $a1
	alsl.d	$s3, $s2, $s1, 3
	move	$s2, $s1
	.p2align	4, , 16
.LBB15_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp784:                               # EH_LABEL
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp785:                               # EH_LABEL
# %bb.3:                                # %invoke.cont.i
                                        #   in Loop: Header=BB15_2 Depth=1
	st.d	$a0, $s2, 0
	addi.d	$s2, $s2, 8
	bltu	$s2, $s3, .LBB15_2
# %bb.4:                                # %try.cont
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 40
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	ld.d	$a1, $s3, -8
	st.d	$a0, $fp, 24
	addi.d	$a2, $s3, -8
	st.d	$a2, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 64
	st.d	$a0, $fp, 16
	andi	$a0, $s0, 3
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 48
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB15_5:                               # %if.then.i.i
	lu52i.d	$a0, $a1, 2047
	bltu	$s0, $a0, .LBB15_7
# %bb.6:                                # %if.then3.i.i
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.LBB15_7:                               # %if.end.i.i
	pcaddu18i	$ra, %call36(_ZSt17__throw_bad_allocv)
	jirl	$ra, $ra, 0
.LBB15_8:                               # %lpad.i
.Ltmp786:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s2, .LBB15_10
	.p2align	4, , 16
.LBB15_9:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bltu	$s1, $s2, .LBB15_9
.LBB15_10:                              # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
.Ltmp787:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp788:                               # EH_LABEL
# %bb.11:                               # %unreachable.i
.LBB15_12:                              # %lpad2.i
.Ltmp789:                               # EH_LABEL
	move	$s0, $a0
.Ltmp790:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp791:                               # EH_LABEL
# %bb.13:                               # %lpad.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
.Ltmp793:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp794:                               # EH_LABEL
# %bb.14:                               # %unreachable
.LBB15_15:                              # %lpad23
.Ltmp795:                               # EH_LABEL
	move	$fp, $a0
.Ltmp796:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp797:                               # EH_LABEL
# %bb.16:                               # %invoke.cont24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_17:                              # %terminate.lpad
.Ltmp798:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_18:                              # %terminate.lpad.i
.Ltmp792:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm, .Lfunc_end15-_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE17_M_initialize_mapEm,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp784-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp784
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp784-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp785-.Ltmp784              #   Call between .Ltmp784 and .Ltmp785
	.uleb128 .Ltmp786-.Lfunc_begin9         #     jumps to .Ltmp786
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp785-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp787-.Ltmp785              #   Call between .Ltmp785 and .Ltmp787
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp787-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp788-.Ltmp787              #   Call between .Ltmp787 and .Ltmp788
	.uleb128 .Ltmp789-.Lfunc_begin9         #     jumps to .Ltmp789
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp790-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp791-.Ltmp790              #   Call between .Ltmp790 and .Ltmp791
	.uleb128 .Ltmp792-.Lfunc_begin9         #     jumps to .Ltmp792
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp791-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp793-.Ltmp791              #   Call between .Ltmp791 and .Ltmp793
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp793-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp794-.Ltmp793              #   Call between .Ltmp793 and .Ltmp794
	.uleb128 .Ltmp795-.Lfunc_begin9         #     jumps to .Ltmp795
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp797-.Ltmp796              #   Call between .Ltmp796 and .Ltmp797
	.uleb128 .Ltmp798-.Lfunc_begin9         #     jumps to .Ltmp798
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp797-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Lfunc_end15-.Ltmp797          #   Call between .Ltmp797 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
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
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm,comdat
	.weak	_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm # -- Begin function _ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm
	.p2align	2
	.type	_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm,@function
_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm: # @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a1, 4
	ori	$a1, $zero, 5
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	addi.d	$s1, $a1, 3
	addi.w	$a1, $zero, -48
	st.d	$s1, $fp, 8
	bgeu	$s0, $a1, .LBB17_5
# %bb.1:                                # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	sub.d	$a1, $s1, $s2
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$s1, $a0, $a1
	alsl.d	$s3, $s2, $s1, 3
	move	$s2, $s1
	.p2align	4, , 16
.LBB17_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp799:                               # EH_LABEL
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp800:                               # EH_LABEL
# %bb.3:                                # %invoke.cont.i
                                        #   in Loop: Header=BB17_2 Depth=1
	st.d	$a0, $s2, 0
	addi.d	$s2, $s2, 8
	bltu	$s2, $s3, .LBB17_2
# %bb.4:                                # %try.cont
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 40
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	ld.d	$a1, $s3, -8
	st.d	$a0, $fp, 24
	addi.d	$a2, $s3, -8
	st.d	$a2, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 64
	st.d	$a0, $fp, 16
	andi	$a0, $s0, 15
	slli.d	$a0, $a0, 5
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 48
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB17_5:                               # %if.end.i.i
	pcaddu18i	$ra, %call36(_ZSt17__throw_bad_allocv)
	jirl	$ra, $ra, 0
.LBB17_6:                               # %lpad.i
.Ltmp801:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s2, .LBB17_8
	.p2align	4, , 16
.LBB17_7:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bltu	$s1, $s2, .LBB17_7
.LBB17_8:                               # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
.Ltmp802:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp803:                               # EH_LABEL
# %bb.9:                                # %unreachable.i
.LBB17_10:                              # %lpad2.i
.Ltmp804:                               # EH_LABEL
	move	$s0, $a0
.Ltmp805:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp806:                               # EH_LABEL
# %bb.11:                               # %lpad.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
.Ltmp808:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp809:                               # EH_LABEL
# %bb.12:                               # %unreachable
.LBB17_13:                              # %lpad23
.Ltmp810:                               # EH_LABEL
	move	$fp, $a0
.Ltmp811:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp812:                               # EH_LABEL
# %bb.14:                               # %invoke.cont24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_15:                              # %terminate.lpad
.Ltmp813:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_16:                              # %terminate.lpad.i
.Ltmp807:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, .Lfunc_end17-_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp799-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp799
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp799-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp800-.Ltmp799              #   Call between .Ltmp799 and .Ltmp800
	.uleb128 .Ltmp801-.Lfunc_begin10        #     jumps to .Ltmp801
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp800-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp802-.Ltmp800              #   Call between .Ltmp800 and .Ltmp802
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp802-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp803-.Ltmp802              #   Call between .Ltmp802 and .Ltmp803
	.uleb128 .Ltmp804-.Lfunc_begin10        #     jumps to .Ltmp804
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp805-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp806-.Ltmp805              #   Call between .Ltmp805 and .Ltmp806
	.uleb128 .Ltmp807-.Lfunc_begin10        #     jumps to .Ltmp807
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp806-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp808-.Ltmp806              #   Call between .Ltmp806 and .Ltmp808
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp809-.Ltmp808              #   Call between .Ltmp808 and .Ltmp809
	.uleb128 .Ltmp810-.Lfunc_begin10        #     jumps to .Ltmp810
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp811-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp812-.Ltmp811              #   Call between .Ltmp811 and .Ltmp812
	.uleb128 .Ltmp813-.Lfunc_begin10        #     jumps to .Ltmp813
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp812-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Lfunc_end17-.Ltmp812          #   Call between .Ltmp812 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm,comdat
	.weak	_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm # -- Begin function _ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm
	.p2align	2
	.type	_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm,@function
_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm: # @_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a1, 9
	addi.d	$s2, $a0, 1
	ori	$a1, $zero, 5
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$s1, $a0, 3
	st.d	$s1, $fp, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	sub.d	$a1, $s1, $s2
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$s1, $a0, $a1
	alsl.d	$s3, $s2, $s1, 3
	move	$s2, $s1
	.p2align	4, , 16
.LBB18_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp814:                               # EH_LABEL
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp815:                               # EH_LABEL
# %bb.2:                                # %invoke.cont.i
                                        #   in Loop: Header=BB18_1 Depth=1
	st.d	$a0, $s2, 0
	addi.d	$s2, $s2, 8
	bltu	$s2, $s3, .LBB18_1
# %bb.3:                                # %try.cont
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 40
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	ld.d	$a1, $s3, -8
	st.d	$a0, $fp, 24
	addi.d	$a2, $s3, -8
	st.d	$a2, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 64
	st.d	$a0, $fp, 16
	andi	$a0, $s0, 511
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 48
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB18_4:                               # %lpad.i
.Ltmp816:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s2, .LBB18_6
	.p2align	4, , 16
.LBB18_5:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bltu	$s1, $s2, .LBB18_5
.LBB18_6:                               # %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i
.Ltmp817:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp818:                               # EH_LABEL
# %bb.7:                                # %unreachable.i
.LBB18_8:                               # %lpad2.i
.Ltmp819:                               # EH_LABEL
	move	$s0, $a0
.Ltmp820:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp821:                               # EH_LABEL
# %bb.9:                                # %lpad.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
.Ltmp823:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp824:                               # EH_LABEL
# %bb.10:                               # %unreachable
.LBB18_11:                              # %lpad23
.Ltmp825:                               # EH_LABEL
	move	$fp, $a0
.Ltmp826:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp827:                               # EH_LABEL
# %bb.12:                               # %invoke.cont24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_13:                              # %terminate.lpad
.Ltmp828:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_14:                              # %terminate.lpad.i
.Ltmp822:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm, .Lfunc_end18-_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIbSaIbEE17_M_initialize_mapEm,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp814-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp814
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp814-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp815-.Ltmp814              #   Call between .Ltmp814 and .Ltmp815
	.uleb128 .Ltmp816-.Lfunc_begin11        #     jumps to .Ltmp816
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp815-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp817-.Ltmp815              #   Call between .Ltmp815 and .Ltmp817
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp817-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp818-.Ltmp817              #   Call between .Ltmp817 and .Ltmp818
	.uleb128 .Ltmp819-.Lfunc_begin11        #     jumps to .Ltmp819
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp820-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp821-.Ltmp820              #   Call between .Ltmp820 and .Ltmp821
	.uleb128 .Ltmp822-.Lfunc_begin11        #     jumps to .Ltmp822
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp821-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp823-.Ltmp821              #   Call between .Ltmp821 and .Ltmp823
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp823-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp824-.Ltmp823              #   Call between .Ltmp823 and .Ltmp824
	.uleb128 .Ltmp825-.Lfunc_begin11        #     jumps to .Ltmp825
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp826-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp827-.Ltmp826              #   Call between .Ltmp826 and .Ltmp827
	.uleb128 .Ltmp828-.Lfunc_begin11        #     jumps to .Ltmp828
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp827-.Lfunc_begin11        # >> Call Site 9 <<
	.uleb128 .Lfunc_end18-.Ltmp827          #   Call between .Ltmp827 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_
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
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a2, 24
	addi.d	$s2, $a1, 8
	bgeu	$s2, $a0, .LBB19_3
	.p2align	4, , 16
.LBB19_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 128
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 256
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 384
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	addi.d	$s2, $s2, 8
	bltu	$s2, $a0, .LBB19_1
# %bb.2:                                # %for.cond.cleanup.loopexit
	ld.d	$a1, $s0, 24
.LBB19_3:                               # %for.cond.cleanup
	ld.d	$s1, $s0, 0
	beq	$a1, $a0, .LBB19_8
# %bb.4:                                # %if.then
	ld.d	$s0, $s0, 16
	beq	$s1, $s0, .LBB19_6
	.p2align	4, , 16
.LBB19_5:                               # %for.body.i4
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 128
	bne	$s1, $s0, .LBB19_5
.LBB19_6:                               # %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit8
	ld.d	$s0, $fp, 8
	ld.d	$fp, $fp, 0
	beq	$s0, $fp, .LBB19_10
	.p2align	4, , 16
.LBB19_7:                               # %for.body.i10
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 128
	bne	$s0, $fp, .LBB19_7
	b	.LBB19_10
.LBB19_8:                               # %if.else
	ld.d	$fp, $fp, 0
	beq	$s1, $fp, .LBB19_10
	.p2align	4, , 16
.LBB19_9:                               # %for.body.i16
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 128
	bne	$s1, $fp, .LBB19_9
.LBB19_10:                              # %if.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_, .Lfunc_end19-_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_,"axG",@progbits,_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_,comdat
	.weak	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ # -- Begin function _ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_
	.p2align	2
	.type	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_,@function
_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_: # @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_
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
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a2, 24
	addi.d	$s1, $a1, 8
	bltu	$s1, $a0, .LBB20_5
# %bb.1:                                # %for.cond.cleanup
	ld.d	$a2, $s0, 0
	beq	$a1, $a0, .LBB20_46
.LBB20_2:                               # %if.then
	ld.d	$s0, $s0, 16
	beq	$a2, $s0, .LBB20_40
# %bb.3:                                # %for.body.i4.preheader
	addi.d	$s1, $a2, 16
	b	.LBB20_38
	.p2align	4, , 16
.LBB20_4:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.15
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $fp, 24
	addi.d	$s1, $s1, 8
	bgeu	$s1, $a0, .LBB20_45
.LBB20_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s1, 0
	ld.d	$a0, $s2, 0
	addi.d	$a1, $s2, 16
	beq	$a0, $a1, .LBB20_7
# %bb.6:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_7:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 32
	addi.d	$a1, $s2, 48
	beq	$a0, $a1, .LBB20_9
# %bb.8:                                # %if.then.i.i.i.i.1
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_9:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.1
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 64
	addi.d	$a1, $s2, 80
	beq	$a0, $a1, .LBB20_11
# %bb.10:                               # %if.then.i.i.i.i.2
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_11:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.2
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 96
	addi.d	$a1, $s2, 112
	beq	$a0, $a1, .LBB20_13
# %bb.12:                               # %if.then.i.i.i.i.3
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_13:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.3
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 128
	addi.d	$a1, $s2, 144
	beq	$a0, $a1, .LBB20_15
# %bb.14:                               # %if.then.i.i.i.i.4
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_15:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.4
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 160
	addi.d	$a1, $s2, 176
	beq	$a0, $a1, .LBB20_17
# %bb.16:                               # %if.then.i.i.i.i.5
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_17:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.5
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 192
	addi.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB20_19
# %bb.18:                               # %if.then.i.i.i.i.6
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_19:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.6
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 224
	addi.d	$a1, $s2, 240
	beq	$a0, $a1, .LBB20_21
# %bb.20:                               # %if.then.i.i.i.i.7
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_21:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.7
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 256
	addi.d	$a1, $s2, 272
	beq	$a0, $a1, .LBB20_23
# %bb.22:                               # %if.then.i.i.i.i.8
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_23:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.8
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 288
	addi.d	$a1, $s2, 304
	beq	$a0, $a1, .LBB20_25
# %bb.24:                               # %if.then.i.i.i.i.9
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_25:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.9
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 320
	addi.d	$a1, $s2, 336
	beq	$a0, $a1, .LBB20_27
# %bb.26:                               # %if.then.i.i.i.i.10
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_27:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.10
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 352
	addi.d	$a1, $s2, 368
	beq	$a0, $a1, .LBB20_29
# %bb.28:                               # %if.then.i.i.i.i.11
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_29:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.11
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 384
	addi.d	$a1, $s2, 400
	beq	$a0, $a1, .LBB20_31
# %bb.30:                               # %if.then.i.i.i.i.12
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_31:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.12
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 416
	addi.d	$a1, $s2, 432
	beq	$a0, $a1, .LBB20_33
# %bb.32:                               # %if.then.i.i.i.i.13
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_33:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.13
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 448
	addi.d	$a1, $s2, 464
	beq	$a0, $a1, .LBB20_35
# %bb.34:                               # %if.then.i.i.i.i.14
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_35:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.14
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a0, $s2, 480
	addi.d	$a1, $s2, 496
	beq	$a0, $a1, .LBB20_4
# %bb.36:                               # %if.then.i.i.i.i.15
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_37:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i9
                                        #   in Loop: Header=BB20_38 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB20_40
.LBB20_38:                              # %for.body.i4
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB20_37
# %bb.39:                               # %if.then.i.i.i.i7
                                        #   in Loop: Header=BB20_38 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB20_37
.LBB20_40:                              # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit15
	ld.d	$a0, $fp, 8
	ld.d	$fp, $fp, 0
	beq	$a0, $fp, .LBB20_51
# %bb.41:                               # %for.body.i17.preheader
	addi.d	$s0, $a0, 16
	b	.LBB20_43
	.p2align	4, , 16
.LBB20_42:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i22
                                        #   in Loop: Header=BB20_43 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB20_51
.LBB20_43:                              # %for.body.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB20_42
# %bb.44:                               # %if.then.i.i.i.i20
                                        #   in Loop: Header=BB20_43 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB20_42
.LBB20_45:                              # %for.cond.cleanup.loopexit
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s0, 0
	bne	$a1, $a0, .LBB20_2
.LBB20_46:                              # %if.else
	ld.d	$fp, $fp, 0
	beq	$a2, $fp, .LBB20_51
# %bb.47:                               # %for.body.i30.preheader
	addi.d	$s0, $a2, 16
	b	.LBB20_49
	.p2align	4, , 16
.LBB20_48:                              # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i35
                                        #   in Loop: Header=BB20_49 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB20_51
.LBB20_49:                              # %for.body.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB20_48
# %bb.50:                               # %if.then.i.i.i.i33
                                        #   in Loop: Header=BB20_49 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB20_48
.LBB20_51:                              # %if.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_, .Lfunc_end20-_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_,comdat
	.weak	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ # -- Begin function _ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_
	.p2align	2
	.type	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_,@function
_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_: # @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_
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
	move	$fp, $a0
	ld.d	$s1, $a0, 72
	ld.d	$a0, $a0, 40
	sub.d	$a0, $s1, $a0
	srli.d	$a0, $a0, 3
	sltu	$a2, $zero, $s1
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	sub.d	$a0, $a0, $a2
	ld.d	$a2, $fp, 32
	ld.d	$a5, $fp, 16
	sub.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 5
	alsl.d	$a0, $a0, $a3, 4
	sub.d	$a2, $a2, $a5
	srai.d	$a2, $a2, 5
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 63
	beq	$a0, $a2, .LBB21_7
# %bb.1:                                # %if.end
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sub.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB21_3
# %bb.2:                                # %if.then.i
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 72
.LBB21_3:                               # %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ld.d	$s2, $fp, 48
	addi.d	$a0, $s2, 16
	st.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	addi.d	$s1, $s0, 16
	beq	$a1, $s1, .LBB21_5
# %bb.4:                                # %if.else.i
	st.d	$a1, $s2, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s2, 16
	b	.LBB21_6
.LBB21_5:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$a1, $s0, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $s0, 8
	st.d	$a0, $s2, 8
	st.b	$zero, $s0, 16
	ld.d	$a0, $fp, 72
	st.d	$s1, $s0, 0
	ld.d	$a1, $a0, 8
	st.d	$zero, $s0, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
	st.d	$a1, $fp, 48
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB21_7:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_, .Lfunc_end21-_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb,comdat
	.weak	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb # -- Begin function _ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb
	.p2align	2
	.type	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb,@function
_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb: # @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb
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
	ld.d	$a0, $a0, 72
	ld.d	$s1, $fp, 40
	sub.d	$s6, $a0, $s1
	srai.d	$a3, $s6, 3
	ld.d	$s4, $fp, 8
	addi.d	$s3, $a3, 1
	add.d	$s7, $s3, $a1
	slli.d	$a3, $s7, 1
	move	$s0, $a2
	bgeu	$a3, $s4, .LBB22_4
# %bb.1:                                # %if.then
	ld.d	$a2, $fp, 0
	sub.d	$a3, $s4, $s7
	slli.d	$a3, $a3, 2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a2, $a2, $a3
	maskeqz	$a1, $a1, $s0
	alsl.d	$s0, $a1, $a2, 3
	addi.d	$a0, $a0, 8
	bgeu	$s0, $s1, .LBB22_7
# %bb.2:                                # %if.then14
	sub.d	$a2, $a0, $s1
	ori	$a0, $zero, 9
	blt	$a2, $a0, .LBB22_12
# %bb.3:                                # %if.then.i.i
	move	$a0, $s0
	b	.LBB22_8
.LBB22_4:                               # %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit
	sltu	$a0, $a1, $s4
	masknez	$a2, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a2
	add.d	$a0, $s4, $a0
	addi.d	$s5, $a0, 2
	slli.d	$a0, $s5, 3
	move	$s8, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sub.d	$a0, $s5, $s7
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 2, 0
	add.d	$a0, $s2, $a0
	maskeqz	$a1, $s8, $s0
	addi.d	$a2, $s6, 8
	ori	$a3, $zero, 9
	alsl.d	$s0, $a1, $a0, 3
	blt	$a2, $a3, .LBB22_10
# %bb.5:                                # %if.then.i.i38
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB22_6:                               # %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit40
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s4, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 8
	b	.LBB22_9
.LBB22_7:                               # %if.else
	alsl.d	$a1, $s3, $s0, 3
	sub.d	$a2, $a0, $s1
	srai.d	$a3, $a2, 3
	ori	$a4, $zero, 2
	sub.d	$a0, $a1, $a2
	blt	$a3, $a4, .LBB22_14
.LBB22_8:                               # %if.then.i
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB22_9:                               # %if.end73
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 24
	addi.d	$a0, $a0, 512
	st.d	$a0, $fp, 32
	alsl.d	$a0, $s3, $s0, 3
	ld.d	$a1, $a0, -8
	st.d	$s0, $fp, 40
	addi.d	$a0, $a0, -8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
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
.LBB22_10:                              # %if.else.i.i33
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB22_6
# %bb.11:                               # %if.then2.i.i36
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB22_6
.LBB22_12:                              # %if.else.i.i
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB22_9
# %bb.13:                               # %if.then2.i.i
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB22_9
.LBB22_14:                              # %if.else.i
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB22_9
# %bb.15:                               # %if.then2.i
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB22_9
.Lfunc_end22:
	.size	_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb, .Lfunc_end22-_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb,comdat
	.weak	_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb # -- Begin function _ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb
	.p2align	2
	.type	_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb,@function
_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb: # @_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb
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
	ld.d	$a0, $a0, 72
	ld.d	$s1, $fp, 40
	sub.d	$s6, $a0, $s1
	srai.d	$a3, $s6, 3
	ld.d	$s4, $fp, 8
	addi.d	$s3, $a3, 1
	add.d	$s7, $s3, $a1
	slli.d	$a3, $s7, 1
	move	$s0, $a2
	bgeu	$a3, $s4, .LBB23_4
# %bb.1:                                # %if.then
	ld.d	$a2, $fp, 0
	sub.d	$a3, $s4, $s7
	slli.d	$a3, $a3, 2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a2, $a2, $a3
	maskeqz	$a1, $a1, $s0
	alsl.d	$s0, $a1, $a2, 3
	addi.d	$a0, $a0, 8
	bgeu	$s0, $s1, .LBB23_7
# %bb.2:                                # %if.then14
	sub.d	$a2, $a0, $s1
	ori	$a0, $zero, 9
	blt	$a2, $a0, .LBB23_12
# %bb.3:                                # %if.then.i.i
	move	$a0, $s0
	b	.LBB23_8
.LBB23_4:                               # %_ZNSt11_Deque_baseIbSaIbEE15_M_allocate_mapEm.exit
	sltu	$a0, $a1, $s4
	masknez	$a2, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a2
	add.d	$a0, $s4, $a0
	addi.d	$s5, $a0, 2
	slli.d	$a0, $s5, 3
	move	$s8, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sub.d	$a0, $s5, $s7
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 2, 0
	add.d	$a0, $s2, $a0
	maskeqz	$a1, $s8, $s0
	addi.d	$a2, $s6, 8
	ori	$a3, $zero, 9
	alsl.d	$s0, $a1, $a0, 3
	blt	$a2, $a3, .LBB23_10
# %bb.5:                                # %if.then.i.i38
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB23_6:                               # %_ZSt4copyIPPbS1_ET0_T_S3_S2_.exit40
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s4, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 8
	b	.LBB23_9
.LBB23_7:                               # %if.else
	alsl.d	$a1, $s3, $s0, 3
	sub.d	$a2, $a0, $s1
	srai.d	$a3, $a2, 3
	ori	$a4, $zero, 2
	sub.d	$a0, $a1, $a2
	blt	$a3, $a4, .LBB23_14
.LBB23_8:                               # %if.then.i
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB23_9:                               # %if.end73
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 24
	addi.d	$a0, $a0, 512
	st.d	$a0, $fp, 32
	alsl.d	$a0, $s3, $s0, 3
	ld.d	$a1, $a0, -8
	st.d	$s0, $fp, 40
	addi.d	$a0, $a0, -8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
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
.LBB23_10:                              # %if.else.i.i33
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB23_6
# %bb.11:                               # %if.then2.i.i36
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB23_6
.LBB23_12:                              # %if.else.i.i
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB23_9
# %bb.13:                               # %if.then2.i.i
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB23_9
.LBB23_14:                              # %if.else.i
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB23_9
# %bb.15:                               # %if.then2.i
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB23_9
.Lfunc_end23:
	.size	_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb, .Lfunc_end23-_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	ld.d	$s1, $a0, 72
	ld.d	$a0, $a0, 40
	sub.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 3
	sltu	$a2, $zero, $s1
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	sub.d	$a0, $a0, $a2
	ld.d	$a2, $fp, 32
	ld.d	$a5, $fp, 16
	sub.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 7
	alsl.d	$a0, $a0, $a3, 2
	sub.d	$a2, $a2, $a5
	srai.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 15
	beq	$a0, $a2, .LBB24_5
# %bb.1:                                # %if.end
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sub.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB24_3
# %bb.2:                                # %if.then.i
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 72
.LBB24_3:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ld.d	$a0, $fp, 48
.Ltmp829:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp830:                               # EH_LABEL
# %bb.4:                                # %invoke.cont
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
	st.d	$a1, $fp, 48
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB24_5:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB24_6:                               # %lpad
.Ltmp831:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp832:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp833:                               # EH_LABEL
# %bb.7:                                # %unreachable
.LBB24_8:                               # %lpad22
.Ltmp834:                               # EH_LABEL
	move	$fp, $a0
.Ltmp835:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp836:                               # EH_LABEL
# %bb.9:                                # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_10:                              # %terminate.lpad
.Ltmp837:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_, .Lfunc_end24-_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp829-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp829
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp829-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp830-.Ltmp829              #   Call between .Ltmp829 and .Ltmp830
	.uleb128 .Ltmp831-.Lfunc_begin12        #     jumps to .Ltmp831
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp830-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp832-.Ltmp830              #   Call between .Ltmp830 and .Ltmp832
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp832-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp833-.Ltmp832              #   Call between .Ltmp832 and .Ltmp833
	.uleb128 .Ltmp834-.Lfunc_begin12        #     jumps to .Ltmp834
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp835-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp836-.Ltmp835              #   Call between .Ltmp835 and .Ltmp836
	.uleb128 .Ltmp837-.Lfunc_begin12        #     jumps to .Ltmp837
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp836-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Lfunc_end24-.Ltmp836          #   Call between .Ltmp836 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb: # @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb
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
	ld.d	$a0, $a0, 72
	ld.d	$s1, $fp, 40
	sub.d	$s6, $a0, $s1
	srai.d	$a3, $s6, 3
	ld.d	$s4, $fp, 8
	addi.d	$s3, $a3, 1
	add.d	$s7, $s3, $a1
	slli.d	$a3, $s7, 1
	move	$s0, $a2
	bgeu	$a3, $s4, .LBB25_4
# %bb.1:                                # %if.then
	ld.d	$a2, $fp, 0
	sub.d	$a3, $s4, $s7
	slli.d	$a3, $a3, 2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a2, $a2, $a3
	maskeqz	$a1, $a1, $s0
	alsl.d	$s0, $a1, $a2, 3
	addi.d	$a0, $a0, 8
	bgeu	$s0, $s1, .LBB25_7
# %bb.2:                                # %if.then14
	sub.d	$a2, $a0, $s1
	ori	$a0, $zero, 9
	blt	$a2, $a0, .LBB25_12
# %bb.3:                                # %if.then.i.i
	move	$a0, $s0
	b	.LBB25_8
.LBB25_4:                               # %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit
	sltu	$a0, $a1, $s4
	masknez	$a2, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a2
	add.d	$a0, $s4, $a0
	addi.d	$s5, $a0, 2
	slli.d	$a0, $s5, 3
	move	$s8, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sub.d	$a0, $s5, $s7
	slli.d	$a0, $a0, 2
	bstrins.d	$a0, $zero, 2, 0
	add.d	$a0, $s2, $a0
	maskeqz	$a1, $s8, $s0
	addi.d	$a2, $s6, 8
	ori	$a3, $zero, 9
	alsl.d	$s0, $a1, $a0, 3
	blt	$a2, $a3, .LBB25_10
# %bb.5:                                # %if.then.i.i38
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB25_6:                               # %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit40
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s4, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 8
	b	.LBB25_9
.LBB25_7:                               # %if.else
	alsl.d	$a1, $s3, $s0, 3
	sub.d	$a2, $a0, $s1
	srai.d	$a3, $a2, 3
	ori	$a4, $zero, 2
	sub.d	$a0, $a1, $a2
	blt	$a3, $a4, .LBB25_14
.LBB25_8:                               # %if.then.i
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB25_9:                               # %if.end73
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 24
	addi.d	$a0, $a0, 512
	st.d	$a0, $fp, 32
	alsl.d	$a0, $s3, $s0, 3
	ld.d	$a1, $a0, -8
	st.d	$s0, $fp, 40
	addi.d	$a0, $a0, -8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
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
.LBB25_10:                              # %if.else.i.i33
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB25_6
# %bb.11:                               # %if.then2.i.i36
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB25_6
.LBB25_12:                              # %if.else.i.i
	ori	$a0, $zero, 8
	bne	$a2, $a0, .LBB25_9
# %bb.13:                               # %if.then2.i.i
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 0
	b	.LBB25_9
.LBB25_14:                              # %if.else.i
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB25_9
# %bb.15:                               # %if.then2.i
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB25_9
.Lfunc_end25:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb, .Lfunc_end25-_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
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
	ld.d	$a5, $a2, 0
	ld.d	$a7, $a3, 0
	move	$fp, $a0
	beq	$a5, $a7, .LBB26_9
# %bb.1:                                # %if.else
	move	$s0, $a1
	ld.d	$s2, $a1, 16
	ld.d	$a0, $a1, 48
	bne	$a5, $s2, .LBB26_3
# %bb.2:                                # %land.rhs
	beq	$a7, $a0, .LBB26_17
.LBB26_3:                               # %if.else6
	ld.d	$t1, $a3, 24
	ld.d	$t0, $a2, 24
	sub.d	$a1, $t1, $t0
	srai.d	$a1, $a1, 3
	ld.d	$t2, $a3, 8
	sltu	$a4, $zero, $t1
	sub.d	$a1, $a1, $a4
	ld.d	$t3, $a2, 16
	sub.d	$a4, $a7, $t2
	srai.d	$a4, $a4, 7
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a6, $t3, $a5
	ld.d	$a1, $s0, 40
	srai.d	$a6, $a6, 7
	add.d	$s3, $a4, $a6
	ld.d	$a4, $s0, 32
	sub.d	$a6, $t0, $a1
	ld.d	$t4, $a2, 8
	srai.d	$a2, $a6, 3
	sltu	$a6, $zero, $t0
	sub.d	$a6, $a2, $a6
	sub.d	$a2, $a5, $t4
	srai.d	$t5, $a2, 7
	sub.d	$t6, $a4, $s2
	ld.d	$a2, $s0, 72
	srai.d	$t6, $t6, 7
	add.d	$t5, $t5, $t6
	alsl.d	$s1, $a6, $t5, 2
	sub.d	$t5, $a2, $a1
	ld.d	$a6, $s0, 56
	srai.d	$t5, $t5, 3
	sltu	$t7, $zero, $a2
	sub.d	$t7, $t5, $t7
	sub.d	$t5, $a0, $a6
	srai.d	$t5, $t5, 7
	add.d	$t6, $t5, $t6
	alsl.d	$t6, $t7, $t6, 2
	sub.d	$t6, $t6, $s3
	srli.d	$t6, $t6, 1
	bgeu	$t6, $s1, .LBB26_10
# %bb.4:                                # %if.else19
	beq	$a7, $a0, .LBB26_6
# %bb.5:                                # %if.then22
	ld.d	$a1, $a3, 16
	ld.d	$a3, $s0, 64
	st.d	$a7, $sp, 104
	st.d	$t2, $sp, 112
	st.d	$a1, $sp, 120
	st.d	$t1, $sp, 128
	st.d	$a0, $sp, 72
	st.d	$a6, $sp, 80
	st.d	$a3, $sp, 88
	st.d	$a2, $sp, 96
	st.d	$a5, $sp, 40
	st.d	$t4, $sp, 48
	st.d	$t3, $sp, 56
	st.d	$t0, $sp, 64
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	ld.d	$a6, $s0, 56
	ld.d	$a2, $s0, 72
	sub.d	$a1, $a0, $a6
	srai.d	$t5, $a1, 7
.LBB26_6:                               # %if.end27
	ld.d	$a1, $s0, 64
	sub.d	$a3, $t5, $s3
	bltz	$a3, .LBB26_15
# %bb.7:                                # %land.lhs.true.i.i.i
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB26_22
# %bb.8:                                # %if.then.i.i.i
	sub.d	$a3, $zero, $s3
	slli.d	$a3, $a3, 7
	add.d	$s3, $a0, $a3
	move	$s2, $a6
	move	$s8, $a1
	move	$s7, $a2
	b	.LBB26_24
.LBB26_9:                               # %if.then
	vld	$vr0, $a2, 8
	ld.d	$a0, $a2, 24
	st.d	$a5, $fp, 0
	vst	$vr0, $fp, 8
	st.d	$a0, $fp, 24
	b	.LBB26_40
.LBB26_10:                              # %if.then11
	beq	$a5, $s2, .LBB26_12
# %bb.11:                               # %if.then14
	ld.d	$a0, $s0, 24
	ld.d	$a2, $a3, 16
	st.d	$s2, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a4, $sp, 120
	st.d	$a1, $sp, 128
	st.d	$a5, $sp, 72
	st.d	$t4, $sp, 80
	st.d	$t3, $sp, 88
	st.d	$t0, $sp, 96
	st.d	$a7, $sp, 40
	st.d	$t2, $sp, 48
	st.d	$a2, $sp, 56
	st.d	$t1, $sp, 64
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 16
	ld.d	$a4, $s0, 32
	ld.d	$a1, $s0, 40
.LBB26_12:                              # %if.end
	ld.d	$a0, $s0, 24
	sub.d	$a2, $s2, $a0
	srai.d	$a2, $a2, 7
	add.d	$a2, $a2, $s3
	bltz	$a2, .LBB26_16
# %bb.13:                               # %land.lhs.true.i.i
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB26_28
# %bb.14:                               # %if.then.i.i
	slli.d	$a2, $s3, 7
	add.d	$s4, $s2, $a2
	move	$s5, $a0
	move	$s6, $a4
	move	$s3, $a1
	b	.LBB26_30
.LBB26_15:                              # %cond.false.i.i.i
	srai.d	$a4, $a3, 2
	b	.LBB26_23
.LBB26_16:                              # %cond.false.i.i
	srai.d	$a3, $a2, 2
	b	.LBB26_29
.LBB26_17:                              # %if.then5
	ld.d	$s1, $s0, 24
	ld.d	$s3, $s0, 32
	ld.d	$s4, $s0, 40
	ld.d	$a1, $s0, 72
	st.d	$s2, $sp, 104
	st.d	$s1, $sp, 112
	vld	$vr0, $s0, 56
	st.d	$s3, $sp, 120
	st.d	$s4, $sp, 128
	st.d	$a0, $sp, 72
	vst	$vr0, $sp, 80
	st.d	$a1, $sp, 96
.Ltmp838:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
.Ltmp839:                               # EH_LABEL
# %bb.18:                               # %.noexc.i
	ld.d	$s5, $s0, 72
	bgeu	$s4, $s5, .LBB26_21
# %bb.19:                               # %for.body.i.i.i.preheader
	move	$a1, $s4
	.p2align	4, , 16
.LBB26_20:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s6, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	bltu	$s6, $s5, .LBB26_20
.LBB26_21:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EE5clearEv.exit
	st.d	$s2, $s0, 48
	st.d	$s1, $s0, 56
	st.d	$s3, $s0, 64
	st.d	$s4, $s0, 72
	st.d	$s2, $fp, 0
	st.d	$s1, $fp, 8
	st.d	$s3, $fp, 16
	st.d	$s4, $fp, 24
	b	.LBB26_40
.LBB26_22:                              # %cond.true.i.i.i
	srli.d	$a4, $a3, 2
.LBB26_23:                              # %cond.end.i.i.i
	slli.d	$a5, $a4, 3
	ldx.d	$s2, $a2, $a5
	alsl.d	$s7, $a4, $a2, 3
	addi.d	$s8, $s2, 512
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$s3, $s2, $a3
.LBB26_24:                              # %_ZStmiRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit
	st.d	$s3, $sp, 104
	st.d	$s2, $sp, 112
	st.d	$s8, $sp, 120
	st.d	$s7, $sp, 128
	st.d	$a0, $sp, 72
	st.d	$a6, $sp, 80
	st.d	$a1, $sp, 88
	st.d	$a2, $sp, 96
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s0, 72
	bgeu	$s7, $s4, .LBB26_27
# %bb.25:                               # %for.body.i.i266.preheader
	move	$a1, $s7
	.p2align	4, , 16
.LBB26_26:                              # %for.body.i.i266
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s5, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	bltu	$s5, $s4, .LBB26_26
.LBB26_27:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E.exit
	st.d	$s3, $s0, 48
	ld.d	$s4, $s0, 16
	ld.d	$s5, $s0, 24
	ld.d	$s6, $s0, 32
	ld.d	$s3, $s0, 40
	st.d	$s2, $s0, 56
	st.d	$s8, $s0, 64
	st.d	$s7, $s0, 72
	b	.LBB26_33
.LBB26_28:                              # %cond.true.i.i
	srli.d	$a3, $a2, 2
.LBB26_29:                              # %cond.end.i.i
	slli.d	$a5, $a3, 3
	ldx.d	$s5, $a1, $a5
	alsl.d	$s3, $a3, $a1, 3
	addi.d	$s6, $s5, 512
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 7
	add.d	$s4, $s5, $a2
.LBB26_30:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit
	st.d	$s2, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a4, $sp, 120
	st.d	$a1, $sp, 128
	st.d	$s4, $sp, 72
	st.d	$s5, $sp, 80
	st.d	$s6, $sp, 88
	st.d	$s3, $sp, 96
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 40
	bgeu	$s2, $s3, .LBB26_32
	.p2align	4, , 16
.LBB26_31:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	bltu	$s2, $s3, .LBB26_31
.LBB26_32:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_erase_at_beginESt15_Deque_iteratorIS1_RS1_PS1_E.exit
	st.d	$s4, $s0, 16
	st.d	$s5, $s0, 24
	st.d	$s6, $s0, 32
	st.d	$s3, $s0, 40
.LBB26_33:                              # %if.end30
	st.d	$s5, $fp, 8
	st.d	$s6, $fp, 16
	sub.d	$a0, $s4, $s5
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s1
	st.d	$s3, $fp, 24
	bltz	$a0, .LBB26_36
# %bb.34:                               # %land.lhs.true.i.i298
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB26_37
# %bb.35:                               # %if.then.i.i302
	slli.d	$a0, $s1, 7
	add.d	$a0, $s4, $a0
	b	.LBB26_39
.LBB26_36:                              # %cond.false.i.i288
	srai.d	$a1, $a0, 2
	b	.LBB26_38
.LBB26_37:                              # %cond.true.i.i300
	srli.d	$a1, $a0, 2
.LBB26_38:                              # %cond.end.i.i290
	alsl.d	$a2, $a1, $s3, 3
	slli.d	$a3, $a1, 3
	st.d	$a2, $fp, 24
	ldx.d	$a2, $s3, $a3
	st.d	$a2, $fp, 8
	addi.d	$a3, $a2, 512
	st.d	$a3, $fp, 16
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$a0, $a2, $a0
.LBB26_39:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit304
	st.d	$a0, $fp, 0
.LBB26_40:                              # %return
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB26_41:                              # %terminate.lpad.i
.Ltmp840:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_, .Lfunc_end26-_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp838-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp838
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp839-.Ltmp838              #   Call between .Ltmp838 and .Ltmp839
	.uleb128 .Ltmp840-.Lfunc_begin13        #     jumps to .Ltmp840
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp839-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp839          #   Call between .Ltmp839 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,"axG",@progbits,_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,comdat
	.weak	_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ # -- Begin function _ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.p2align	5
	.type	_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,@function
_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_: # @_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.cfi_startproc
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
	move	$s5, $a2
	ld.d	$a4, $a1, 24
	ld.d	$a2, $a2, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beq	$a4, $a2, .LBB27_40
# %bb.1:                                # %if.then
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $s5, 8
	ld.d	$a0, $s5, 0
	ld.d	$s8, $a3, 0
	ld.d	$s6, $a3, 8
	ld.d	$a2, $a3, 16
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 24
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a1, $a0, $a1
	srai.d	$fp, $a1, 7
	ori	$a1, $zero, 1
	bge	$fp, $a1, .LBB27_20
.LBB27_2:                               # %_ZSt23__copy_move_backward_a1ILb1EPN2PP4WordES1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	st.d	$s6, $a1, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	ld.d	$a0, $s5, 24
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 24
	addi.d	$a3, $a0, -8
	bne	$a3, $a1, .LBB27_6
.LBB27_3:                               # %for.cond.cleanup
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a2, 16
	sub.d	$a1, $a0, $a1
	srai.d	$fp, $a1, 7
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB27_41
# %bb.4:                                # %while.body.i31.preheader
	ori	$s5, $zero, 4
	b	.LBB27_31
	.p2align	4, , 16
.LBB27_5:                               # %_ZSt23__copy_move_backward_a1ILb1EPN2PP4WordES1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit163
                                        #   in Loop: Header=BB27_6 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	st.d	$s6, $a1, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 24
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 24
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a3, $a3, -8
	beq	$a3, $a0, .LBB27_3
.LBB27_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_9 Depth 2
                                        #       Child Loop BB27_13 Depth 3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	addi.d	$a0, $a0, 512
	ori	$s1, $zero, 4
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_7:                               # %cond.false.i.i.i141
                                        #   in Loop: Header=BB27_9 Depth=2
	srai.d	$a1, $a0, 2
.LBB27_8:                               # %cond.end.i.i.i143
                                        #   in Loop: Header=BB27_9 Depth=2
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s6, $a3, $a2
	alsl.d	$a2, $a1, $a3, 3
	addi.d	$a3, $s6, 512
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$s8, $s6, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s1, $s1, $fp
	move	$a0, $s7
	blez	$s1, .LBB27_5
.LBB27_9:                               # %while.body.i110
                                        #   Parent Loop BB27_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_13 Depth 3
	sub.d	$s4, $s8, $s6
	beq	$s8, $s6, .LBB27_11
# %bb.10:                               # %if.end.i114
                                        #   in Loop: Header=BB27_9 Depth=2
	srai.d	$a1, $s4, 7
	slt	$a2, $a1, $s1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s1, $a2
	or	$fp, $a1, $a2
	move	$a1, $s8
	b	.LBB27_12
	.p2align	4, , 16
.LBB27_11:                              # %if.end.thread.i160
                                        #   in Loop: Header=BB27_9 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	addi.d	$a1, $a1, 512
	sltui	$a2, $s1, 4
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s1, $a2
	or	$fp, $a2, $a3
.LBB27_12:                              # %while.body.i.preheader.i120
                                        #   in Loop: Header=BB27_9 Depth=2
	sub.d	$s0, $zero, $fp
	slli.d	$s5, $s0, 7
	slli.d	$a2, $fp, 7
	sub.d	$s7, $a0, $a2
	addi.d	$s2, $a1, -128
	addi.d	$s3, $a0, -128
	.p2align	4, , 16
.LBB27_13:                              # %while.body.i.i126
                                        #   Parent Loop BB27_6 Depth=1
                                        #     Parent Loop BB27_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 56
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -128
	addi.d	$s5, $s5, 128
	addi.d	$s3, $s3, -128
	bnez	$s5, .LBB27_13
# %bb.14:                               # %_ZSt23__copy_move_backward_a2ILb1EPN2PP4WordES2_ET1_T0_S4_S3_.exit.loopexit.i132
                                        #   in Loop: Header=BB27_9 Depth=2
	srai.d	$a0, $s4, 7
	sub.d	$a0, $a0, $fp
	bltz	$a0, .LBB27_7
# %bb.15:                               # %land.lhs.true.i.i.i154
                                        #   in Loop: Header=BB27_9 Depth=2
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_17
# %bb.16:                               # %if.then.i.i.i158
                                        #   in Loop: Header=BB27_9 Depth=2
	slli.d	$a0, $s0, 7
	add.d	$s8, $s8, $a0
	sub.d	$s1, $s1, $fp
	move	$a0, $s7
	bgtz	$s1, .LBB27_9
	b	.LBB27_5
	.p2align	4, , 16
.LBB27_17:                              # %cond.true.i.i.i156
                                        #   in Loop: Header=BB27_9 Depth=2
	srli.d	$a1, $a0, 2
	b	.LBB27_8
	.p2align	4, , 16
.LBB27_18:                              # %cond.false.i.i.i
                                        #   in Loop: Header=BB27_20 Depth=1
	srai.d	$a1, $a0, 2
.LBB27_19:                              # %cond.end.i.i.i
                                        #   in Loop: Header=BB27_20 Depth=1
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s6, $a3, $a2
	alsl.d	$a2, $a1, $a3, 3
	addi.d	$a3, $s6, 512
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$s8, $s6, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$fp, $fp, $s1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$fp, .LBB27_2
.LBB27_20:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_24 Depth 2
	sub.d	$s2, $s8, $s6
	beq	$s8, $s6, .LBB27_22
# %bb.21:                               # %if.end.i
                                        #   in Loop: Header=BB27_20 Depth=1
	srai.d	$a1, $s2, 7
	slt	$a2, $a1, $fp
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $fp, $a2
	or	$s1, $a1, $a2
	move	$a1, $s8
	b	.LBB27_23
	.p2align	4, , 16
.LBB27_22:                              # %if.end.thread.i
                                        #   in Loop: Header=BB27_20 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	addi.d	$a1, $a1, 512
	sltui	$a2, $fp, 4
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $fp, $a2
	or	$s1, $a2, $a3
.LBB27_23:                              # %while.body.i.preheader.i
                                        #   in Loop: Header=BB27_20 Depth=1
	sub.d	$s0, $zero, $s1
	slli.d	$s7, $s0, 7
	slli.d	$a2, $s1, 7
	sub.d	$a2, $a0, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s3, $a1, -128
	addi.d	$s4, $a0, -128
	.p2align	4, , 16
.LBB27_24:                              # %while.body.i.i
                                        #   Parent Loop BB27_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -128
	addi.d	$s7, $s7, 128
	addi.d	$s4, $s4, -128
	bnez	$s7, .LBB27_24
# %bb.25:                               # %_ZSt23__copy_move_backward_a2ILb1EPN2PP4WordES2_ET1_T0_S4_S3_.exit.loopexit.i
                                        #   in Loop: Header=BB27_20 Depth=1
	srai.d	$a0, $s2, 7
	sub.d	$a0, $a0, $s1
	bltz	$a0, .LBB27_18
# %bb.26:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB27_20 Depth=1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_28
# %bb.27:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB27_20 Depth=1
	slli.d	$a0, $s0, 7
	add.d	$s8, $s8, $a0
	sub.d	$fp, $fp, $s1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bgtz	$fp, .LBB27_20
	b	.LBB27_2
	.p2align	4, , 16
.LBB27_28:                              # %cond.true.i.i.i
                                        #   in Loop: Header=BB27_20 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB27_19
	.p2align	4, , 16
.LBB27_29:                              # %cond.false.i.i.i62
                                        #   in Loop: Header=BB27_31 Depth=1
	srai.d	$a1, $a0, 2
.LBB27_30:                              # %cond.end.i.i.i64
                                        #   in Loop: Header=BB27_31 Depth=1
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s6, $a3, $a2
	alsl.d	$a2, $a1, $a3, 3
	addi.d	$a3, $s6, 512
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$s8, $s6, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$fp, $fp, $s4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blez	$fp, .LBB27_41
.LBB27_31:                              # %while.body.i31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_35 Depth 2
	sub.d	$s2, $s8, $s6
	beq	$s8, $s6, .LBB27_33
# %bb.32:                               # %if.end.i35
                                        #   in Loop: Header=BB27_31 Depth=1
	srai.d	$a1, $s2, 7
	slt	$a2, $a1, $fp
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $fp, $a2
	or	$s4, $a1, $a2
	move	$a1, $s8
	b	.LBB27_34
	.p2align	4, , 16
.LBB27_33:                              # %if.end.thread.i81
                                        #   in Loop: Header=BB27_31 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	addi.d	$a1, $a1, 512
	sltui	$a2, $fp, 4
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $fp, $a2
	or	$s4, $a2, $a3
.LBB27_34:                              # %while.body.i.preheader.i41
                                        #   in Loop: Header=BB27_31 Depth=1
	sub.d	$s3, $zero, $s4
	slli.d	$s7, $s3, 7
	slli.d	$a2, $s4, 7
	sub.d	$a2, $a0, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s0, $a1, -128
	addi.d	$s1, $a0, -128
	.p2align	4, , 16
.LBB27_35:                              # %while.body.i.i47
                                        #   Parent Loop BB27_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -128
	addi.d	$s7, $s7, 128
	addi.d	$s1, $s1, -128
	bnez	$s7, .LBB27_35
# %bb.36:                               # %_ZSt23__copy_move_backward_a2ILb1EPN2PP4WordES2_ET1_T0_S4_S3_.exit.loopexit.i53
                                        #   in Loop: Header=BB27_31 Depth=1
	srai.d	$a0, $s2, 7
	sub.d	$a0, $a0, $s4
	bltz	$a0, .LBB27_29
# %bb.37:                               # %land.lhs.true.i.i.i75
                                        #   in Loop: Header=BB27_31 Depth=1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_39
# %bb.38:                               # %if.then.i.i.i79
                                        #   in Loop: Header=BB27_31 Depth=1
	slli.d	$a0, $s3, 7
	add.d	$s8, $s8, $a0
	sub.d	$fp, $fp, $s4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bgtz	$fp, .LBB27_31
	b	.LBB27_41
	.p2align	4, , 16
.LBB27_39:                              # %cond.true.i.i.i77
                                        #   in Loop: Header=BB27_31 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB27_30
.LBB27_40:                              # %if.end
	ld.d	$a1, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$s8, $a3, 0
	ld.d	$s6, $a3, 8
	ld.d	$a2, $a3, 16
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 24
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a1, $a0, $a1
	srai.d	$fp, $a1, 7
	ori	$a1, $zero, 1
	bge	$fp, $a1, .LBB27_44
.LBB27_41:                              # %return
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	st.d	$s6, $a0, 8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $a0, 16
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a0, 24
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
	.p2align	4, , 16
.LBB27_42:                              # %cond.false.i.i.i220
                                        #   in Loop: Header=BB27_44 Depth=1
	srai.d	$a1, $a0, 2
.LBB27_43:                              # %cond.end.i.i.i222
                                        #   in Loop: Header=BB27_44 Depth=1
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s6, $a3, $a2
	alsl.d	$a2, $a1, $a3, 3
	addi.d	$a3, $s6, 512
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	add.d	$s8, $s6, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$fp, $fp, $s4
	move	$a0, $s7
	blez	$fp, .LBB27_41
.LBB27_44:                              # %while.body.i189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_48 Depth 2
	sub.d	$s2, $s8, $s6
	beq	$s8, $s6, .LBB27_46
# %bb.45:                               # %if.end.i193
                                        #   in Loop: Header=BB27_44 Depth=1
	srai.d	$a1, $s2, 7
	slt	$a2, $a1, $fp
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $fp, $a2
	or	$s4, $a1, $a2
	move	$a1, $s8
	b	.LBB27_47
	.p2align	4, , 16
.LBB27_46:                              # %if.end.thread.i239
                                        #   in Loop: Header=BB27_44 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	addi.d	$a1, $a1, 512
	sltui	$a2, $fp, 4
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $fp, $a2
	or	$s4, $a2, $a3
.LBB27_47:                              # %while.body.i.preheader.i199
                                        #   in Loop: Header=BB27_44 Depth=1
	sub.d	$s3, $zero, $s4
	slli.d	$s5, $s3, 7
	slli.d	$a2, $s4, 7
	sub.d	$s7, $a0, $a2
	addi.d	$s0, $a1, -128
	addi.d	$s1, $a0, -128
	.p2align	4, , 16
.LBB27_48:                              # %while.body.i.i205
                                        #   Parent Loop BB27_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -128
	addi.d	$s5, $s5, 128
	addi.d	$s1, $s1, -128
	bnez	$s5, .LBB27_48
# %bb.49:                               # %_ZSt23__copy_move_backward_a2ILb1EPN2PP4WordES2_ET1_T0_S4_S3_.exit.loopexit.i211
                                        #   in Loop: Header=BB27_44 Depth=1
	srai.d	$a0, $s2, 7
	sub.d	$a0, $a0, $s4
	bltz	$a0, .LBB27_42
# %bb.50:                               # %land.lhs.true.i.i.i233
                                        #   in Loop: Header=BB27_44 Depth=1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_52
# %bb.51:                               # %if.then.i.i.i237
                                        #   in Loop: Header=BB27_44 Depth=1
	slli.d	$a0, $s3, 7
	add.d	$s8, $s8, $a0
	sub.d	$fp, $fp, $s4
	move	$a0, $s7
	bgtz	$fp, .LBB27_44
	b	.LBB27_41
	.p2align	4, , 16
.LBB27_52:                              # %cond.true.i.i.i235
                                        #   in Loop: Header=BB27_44 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB27_43
.Lfunc_end27:
	.size	_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_, .Lfunc_end27-_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,"axG",@progbits,_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,comdat
	.weak	_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ # -- Begin function _ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.p2align	5
	.type	_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_,@function
_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_: # @_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.cfi_startproc
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
	move	$s6, $a1
	ld.d	$a1, $a1, 24
	ld.d	$a4, $a2, 24
	ld.d	$fp, $s6, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beq	$a1, $a4, .LBB28_35
# %bb.1:                                # %if.then
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 16
	ld.d	$s8, $a3, 0
	ld.d	$a1, $a3, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a5, $a3, 16
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s7, $a3, 24
	sub.d	$a0, $a0, $fp
	srai.d	$s2, $a0, 7
	ori	$a0, $zero, 1
	bge	$s2, $a0, .LBB28_18
.LBB28_2:                               # %_ZSt14__copy_move_a1ILb1EPN2PP4WordES1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$a5, $a1, 16
	st.d	$s7, $a1, 24
	ld.d	$a0, $s6, 24
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 24
	addi.d	$a3, $a0, 8
	bne	$a3, $a1, .LBB28_6
.LBB28_3:                               # %for.cond.cleanup
	ld.d	$fp, $a2, 8
	ld.d	$a0, $a2, 0
	sub.d	$a0, $a0, $fp
	srai.d	$s2, $a0, 7
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB28_36
# %bb.4:                                # %while.body.i30.preheader
	ori	$s6, $zero, 3
	b	.LBB28_28
	.p2align	4, , 16
.LBB28_5:                               # %_ZSt14__copy_move_a1ILb1EPN2PP4WordES1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit148
                                        #   in Loop: Header=BB28_6 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	st.d	$a5, $a1, 16
	st.d	$s7, $a1, 24
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 24
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 8
	beq	$a3, $a0, .LBB28_3
.LBB28_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_9 Depth 2
                                        #       Child Loop BB28_11 Depth 3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $a3, 0
	ori	$s1, $zero, 4
	b	.LBB28_9
	.p2align	4, , 16
.LBB28_7:                               # %cond.false.i.i129
                                        #   in Loop: Header=BB28_9 Depth=2
	srai.d	$a1, $a0, 2
.LBB28_8:                               # %cond.end.i.i131
                                        #   in Loop: Header=BB28_9 Depth=2
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s7, $a2
	alsl.d	$s7, $a1, $s7, 3
	addi.d	$a5, $a4, 512
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$s8, $a4, $a0
	sub.d	$s1, $s1, $fp
	add.d	$s0, $s0, $s5
	blez	$s1, .LBB28_5
.LBB28_9:                               # %while.body.i102
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_11 Depth 3
	sub.d	$a0, $a5, $s8
	srai.d	$a0, $a0, 7
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$fp, $a0, $a1
	slli.d	$s5, $fp, 7
	move	$s6, $a5
	beq	$a5, $s8, .LBB28_12
# %bb.10:                               # %for.body.i.i113.preheader
                                        #   in Loop: Header=BB28_9 Depth=2
	move	$s4, $s5
	move	$s2, $s8
	move	$s3, $s0
	.p2align	4, , 16
.LBB28_11:                              # %for.body.i.i113
                                        #   Parent Loop BB28_6 Depth=1
                                        #     Parent Loop BB28_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 56
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 128
	addi.d	$s4, $s4, -128
	addi.d	$s3, $s3, 128
	bnez	$s4, .LBB28_11
.LBB28_12:                              # %_ZSt14__copy_move_a2ILb1EPN2PP4WordES2_S2_ET2_T0_T1_S3_.exit.i122
                                        #   in Loop: Header=BB28_9 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $s8, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $fp
	bltz	$a0, .LBB28_7
# %bb.13:                               # %land.lhs.true.i.i142
                                        #   in Loop: Header=BB28_9 Depth=2
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB28_15
# %bb.14:                               # %if.then.i.i146
                                        #   in Loop: Header=BB28_9 Depth=2
	slli.d	$a0, $fp, 7
	add.d	$s8, $s8, $a0
	move	$a5, $s6
	sub.d	$s1, $s1, $fp
	add.d	$s0, $s0, $s5
	bgtz	$s1, .LBB28_9
	b	.LBB28_5
	.p2align	4, , 16
.LBB28_15:                              # %cond.true.i.i144
                                        #   in Loop: Header=BB28_9 Depth=2
	srli.d	$a1, $a0, 2
	b	.LBB28_8
	.p2align	4, , 16
.LBB28_16:                              # %cond.false.i.i
                                        #   in Loop: Header=BB28_18 Depth=1
	srai.d	$a1, $a0, 2
.LBB28_17:                              # %cond.end.i.i
                                        #   in Loop: Header=BB28_18 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s7, $a2
	alsl.d	$s7, $a1, $s7, 3
	addi.d	$a5, $a4, 512
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$s8, $a4, $a0
	sub.d	$s2, $s2, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	blez	$s2, .LBB28_2
.LBB28_18:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_20 Depth 2
	sub.d	$a0, $a5, $s8
	srai.d	$a0, $a0, 7
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $a5
	beq	$a5, $s8, .LBB28_21
# %bb.19:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB28_18 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $s8
	move	$s4, $fp
	.p2align	4, , 16
.LBB28_20:                              # %for.body.i.i
                                        #   Parent Loop BB28_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 128
	addi.d	$s1, $s1, -128
	addi.d	$s4, $s4, 128
	bnez	$s1, .LBB28_20
.LBB28_21:                              # %_ZSt14__copy_move_a2ILb1EPN2PP4WordES2_S2_ET2_T0_T1_S3_.exit.i
                                        #   in Loop: Header=BB28_18 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $s8, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s0
	bltz	$a0, .LBB28_16
# %bb.22:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB28_18 Depth=1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB28_24
# %bb.23:                               # %if.then.i.i
                                        #   in Loop: Header=BB28_18 Depth=1
	slli.d	$a0, $s0, 7
	add.d	$s8, $s8, $a0
	move	$a5, $s5
	sub.d	$s2, $s2, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	bgtz	$s2, .LBB28_18
	b	.LBB28_2
	.p2align	4, , 16
.LBB28_24:                              # %cond.true.i.i
                                        #   in Loop: Header=BB28_18 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB28_17
	.p2align	4, , 16
.LBB28_25:                              # %cond.false.i.i57
                                        #   in Loop: Header=BB28_28 Depth=1
	srai.d	$a1, $a0, 2
.LBB28_26:                              # %cond.end.i.i59
                                        #   in Loop: Header=BB28_28 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s7, $a2
	alsl.d	$s7, $a1, $s7, 3
	addi.d	$a5, $a4, 512
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$s8, $a4, $a0
.LBB28_27:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EpLEl.exit.i66
                                        #   in Loop: Header=BB28_28 Depth=1
	sub.d	$s2, $s2, $s4
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	blez	$s2, .LBB28_36
.LBB28_28:                              # %while.body.i30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_30 Depth 2
	sub.d	$a0, $a5, $s8
	srai.d	$a0, $a0, 7
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $a5
	beq	$a5, $s8, .LBB28_31
# %bb.29:                               # %for.body.i.i41.preheader
                                        #   in Loop: Header=BB28_28 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $s8
	move	$s1, $fp
	.p2align	4, , 16
.LBB28_30:                              # %for.body.i.i41
                                        #   Parent Loop BB28_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 128
	addi.d	$s3, $s3, -128
	addi.d	$s1, $s1, 128
	bnez	$s3, .LBB28_30
.LBB28_31:                              # %_ZSt14__copy_move_a2ILb1EPN2PP4WordES2_S2_ET2_T0_T1_S3_.exit.i50
                                        #   in Loop: Header=BB28_28 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $s8, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s4
	bltz	$a0, .LBB28_25
# %bb.32:                               # %land.lhs.true.i.i70
                                        #   in Loop: Header=BB28_28 Depth=1
	bltu	$s6, $a0, .LBB28_34
# %bb.33:                               # %if.then.i.i74
                                        #   in Loop: Header=BB28_28 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$s8, $s8, $a0
	move	$a5, $s5
	b	.LBB28_27
	.p2align	4, , 16
.LBB28_34:                              # %cond.true.i.i72
                                        #   in Loop: Header=BB28_28 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB28_26
.LBB28_35:                              # %if.end
	ld.d	$a0, $a2, 0
	ld.d	$s8, $a3, 0
	ld.d	$a1, $a3, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a5, $a3, 16
	ld.d	$s7, $a3, 24
	sub.d	$a0, $a0, $fp
	srai.d	$s2, $a0, 7
	ori	$a0, $zero, 1
	bge	$s2, $a0, .LBB28_39
.LBB28_36:                              # %return
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s8, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	st.d	$a5, $a0, 16
	st.d	$s7, $a0, 24
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
	.p2align	4, , 16
.LBB28_37:                              # %cond.false.i.i201
                                        #   in Loop: Header=BB28_39 Depth=1
	srai.d	$a1, $a0, 2
.LBB28_38:                              # %cond.end.i.i203
                                        #   in Loop: Header=BB28_39 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$a4, $s7, $a2
	alsl.d	$s7, $a1, $s7, 3
	addi.d	$a5, $a4, 512
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 7
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$s8, $a4, $a0
	sub.d	$s2, $s2, $s4
	add.d	$fp, $fp, $s3
	blez	$s2, .LBB28_36
.LBB28_39:                              # %while.body.i174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_41 Depth 2
	sub.d	$a0, $a5, $s8
	srai.d	$a0, $a0, 7
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s4, $a0, $a1
	slli.d	$s3, $s4, 7
	move	$s6, $a5
	beq	$a5, $s8, .LBB28_42
# %bb.40:                               # %for.body.i.i185.preheader
                                        #   in Loop: Header=BB28_39 Depth=1
	move	$s5, $s3
	move	$s0, $s8
	move	$s1, $fp
	.p2align	4, , 16
.LBB28_41:                              # %for.body.i.i185
                                        #   Parent Loop BB28_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 128
	addi.d	$s5, $s5, -128
	addi.d	$s1, $s1, 128
	bnez	$s5, .LBB28_41
.LBB28_42:                              # %_ZSt14__copy_move_a2ILb1EPN2PP4WordES2_S2_ET2_T0_T1_S3_.exit.i194
                                        #   in Loop: Header=BB28_39 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $s8, $a0
	srai.d	$a0, $a0, 7
	add.d	$a0, $a0, $s4
	bltz	$a0, .LBB28_37
# %bb.43:                               # %land.lhs.true.i.i214
                                        #   in Loop: Header=BB28_39 Depth=1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB28_45
# %bb.44:                               # %if.then.i.i218
                                        #   in Loop: Header=BB28_39 Depth=1
	slli.d	$a0, $s4, 7
	add.d	$s8, $s8, $a0
	move	$a5, $s6
	sub.d	$s2, $s2, $s4
	add.d	$fp, $fp, $s3
	bgtz	$s2, .LBB28_39
	b	.LBB28_36
	.p2align	4, , 16
.LBB28_45:                              # %cond.true.i.i216
                                        #   in Loop: Header=BB28_39 Depth=1
	srli.d	$a1, $a0, 2
	b	.LBB28_38
.Lfunc_end28:
	.size	_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_, .Lfunc_end28-_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	ld.d	$a0, $a0, 72
	ld.d	$s1, $fp, 40
	sub.d	$a2, $a0, $s1
	srai.d	$a2, $a2, 3
	sltu	$a0, $zero, $a0
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	sub.d	$a0, $a2, $a0
	ld.d	$a2, $fp, 32
	ld.d	$a5, $fp, 16
	sub.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 7
	alsl.d	$a0, $a0, $a3, 2
	sub.d	$a2, $a2, $a5
	srai.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 15
	beq	$a0, $a2, .LBB29_5
# %bb.1:                                # %if.end
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	bne	$s1, $a0, .LBB29_3
# %bb.2:                                # %if.then.i
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 40
.LBB29_3:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, -8
	st.d	$a0, $s1, -8
	st.d	$a1, $fp, 40
	st.d	$a0, $fp, 24
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	addi.d	$a0, $a0, 384
	st.d	$a0, $fp, 16
.Ltmp841:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp842:                               # EH_LABEL
# %bb.4:                                # %try.cont
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB29_5:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB29_6:                               # %lpad
.Ltmp843:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 32
	ld.d	$a0, $fp, 40
	addi.d	$a1, $a1, 128
	st.d	$a1, $fp, 16
	bne	$a1, $a2, .LBB29_8
# %bb.7:                                # %if.then.i5
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 24
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 32
	st.d	$a1, $fp, 16
.LBB29_8:                               # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
	ld.d	$a0, $a0, -8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp844:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp845:                               # EH_LABEL
# %bb.9:                                # %unreachable
.LBB29_10:                              # %lpad26
.Ltmp846:                               # EH_LABEL
	move	$fp, $a0
.Ltmp847:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp848:                               # EH_LABEL
# %bb.11:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB29_12:                              # %terminate.lpad
.Ltmp849:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_, .Lfunc_end29-_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp841-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp841
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp841-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp842-.Ltmp841              #   Call between .Ltmp841 and .Ltmp842
	.uleb128 .Ltmp843-.Lfunc_begin14        #     jumps to .Ltmp843
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp842-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp844-.Ltmp842              #   Call between .Ltmp842 and .Ltmp844
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp845-.Ltmp844              #   Call between .Ltmp844 and .Ltmp845
	.uleb128 .Ltmp846-.Lfunc_begin14        #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp848-.Ltmp847              #   Call between .Ltmp847 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin14        #     jumps to .Ltmp849
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp848-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Lfunc_end29-.Ltmp848          #   Call between .Ltmp848 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 136
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a3, $s1, 40
	sub.d	$a1, $a0, $a3
	ld.d	$a2, $fp, 0
	ld.d	$a4, $fp, 8
	srai.d	$a1, $a1, 3
	sltu	$a0, $zero, $a0
	sub.d	$a0, $a1, $a0
	sub.d	$a2, $a2, $a4
	ld.d	$a4, $s1, 32
	ld.d	$a1, $s1, 16
	srai.d	$a2, $a2, 7
	alsl.d	$a0, $a0, $a2, 2
	ld.d	$a2, $s1, 72
	sub.d	$a4, $a4, $a1
	srai.d	$a4, $a4, 7
	add.d	$s2, $a0, $a4
	sub.d	$a5, $a2, $a3
	ld.d	$a0, $s1, 48
	ld.d	$a3, $s1, 56
	srai.d	$a5, $a5, 3
	sltu	$a6, $zero, $a2
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $a0, $a3
	srai.d	$a6, $a6, 7
	alsl.d	$a5, $a5, $a6, 2
	add.d	$a4, $a5, $a4
	srli.d	$a4, $a4, 1
	bgeu	$s2, $a4, .LBB30_4
# %bb.1:                                # %if.then
	ld.d	$a0, $s1, 24
	beq	$a1, $a0, .LBB30_9
# %bb.2:                                # %if.then.i.i
	addi.d	$a0, $a1, -128
.Ltmp857:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp858:                               # EH_LABEL
# %bb.3:                                # %.noexc
	ld.d	$a0, $s1, 16
	addi.d	$t3, $a0, -128
	st.d	$t3, $s1, 16
	b	.LBB30_11
.LBB30_4:                               # %if.else
	move	$a1, $a0
	beq	$a0, $a3, .LBB30_17
# %bb.5:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EE4backEv.exit
	ld.d	$a2, $s1, 64
	addi.d	$a2, $a2, -128
	addi.d	$a1, $a1, -128
	beq	$a0, $a2, .LBB30_18
.LBB30_6:                               # %if.then.i.i93
.Ltmp850:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp851:                               # EH_LABEL
# %bb.7:                                # %.noexc96
	ld.d	$a0, $s1, 48
	addi.d	$a3, $a0, 128
	st.d	$a3, $s1, 48
	ld.d	$a0, $s1, 56
	ld.d	$a1, $s1, 72
	beq	$a3, $a0, .LBB30_20
.LBB30_8:
	ld.d	$a2, $s1, 64
	b	.LBB30_21
.LBB30_9:                               # %if.else.i.i
.Ltmp859:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp860:                               # EH_LABEL
# %bb.10:                               # %if.else.i.i.invoke.cont_crit_edge
	ld.d	$t3, $s1, 16
.LBB30_11:                              # %invoke.cont
	ld.d	$a5, $s1, 24
	ld.d	$a6, $s1, 32
	ld.d	$a4, $s1, 40
	addi.d	$a0, $t3, 128
	move	$a3, $a5
	move	$a2, $a6
	move	$a1, $a4
	bne	$a0, $a6, .LBB30_13
# %bb.12:                               # %if.then.i
	ld.d	$a0, $a4, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a0, 512
	move	$a3, $a0
.LBB30_13:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
	addi.d	$a7, $a0, 128
	move	$t2, $a3
	move	$t1, $a2
	move	$t0, $a1
	beq	$a7, $a2, .LBB30_26
# %bb.14:                               # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit35
	sub.d	$t4, $t3, $a5
	srai.d	$t4, $t4, 7
	add.d	$t4, $t4, $s2
	bltz	$t4, .LBB30_27
.LBB30_15:                              # %land.lhs.true.i.i
	ori	$t5, $zero, 3
	bltu	$t5, $t4, .LBB30_29
# %bb.16:                               # %if.then.i.i45
	slli.d	$t4, $s2, 7
	add.d	$t3, $t3, $t4
	b	.LBB30_31
.LBB30_17:                              # %if.then.i.i86
	ld.d	$a1, $a2, -8
	addi.d	$a1, $a1, 512
	ld.d	$a2, $s1, 64
	addi.d	$a2, $a2, -128
	addi.d	$a1, $a1, -128
	bne	$a0, $a2, .LBB30_6
.LBB30_18:                              # %if.else.i.i95
.Ltmp852:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp853:                               # EH_LABEL
# %bb.19:                               # %if.else.i.i95.invoke.cont16_crit_edge
	ld.d	$a3, $s1, 48
	ld.d	$a0, $s1, 56
	ld.d	$a1, $s1, 72
	bne	$a3, $a0, .LBB30_8
.LBB30_20:                              # %if.then.i107
	ld.d	$a0, $a1, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a0, 512
	move	$a3, $a2
.LBB30_21:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit
	addi.d	$a3, $a3, -128
	move	$a4, $a1
	move	$a5, $a2
	move	$a6, $a0
	move	$a7, $a3
	bne	$a3, $a0, .LBB30_23
# %bb.22:                               # %if.then.i121
	ld.d	$a6, $a1, -8
	addi.d	$a5, $a6, 512
	addi.d	$a4, $a1, -8
	move	$a7, $a5
.LBB30_23:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit126
	ld.d	$t4, $s1, 16
	ld.d	$t1, $s1, 24
	ld.d	$t0, $s1, 40
	sub.d	$t2, $t4, $t1
	srai.d	$t2, $t2, 7
	add.d	$t3, $t2, $s2
	addi.d	$a7, $a7, -128
	bltz	$t3, .LBB30_28
# %bb.24:                               # %land.lhs.true.i.i149
	ori	$t2, $zero, 3
	bltu	$t2, $t3, .LBB30_34
# %bb.25:                               # %if.then.i.i153
	ld.d	$t2, $s1, 32
	slli.d	$t3, $s2, 7
	add.d	$t3, $t4, $t3
	b	.LBB30_36
.LBB30_26:                              # %if.then.i30
	ld.d	$a7, $a1, 8
	addi.d	$t0, $a1, 8
	addi.d	$t1, $a7, 512
	move	$t2, $a7
	sub.d	$t4, $t3, $a5
	srai.d	$t4, $t4, 7
	add.d	$t4, $t4, $s2
	bgez	$t4, .LBB30_15
.LBB30_27:                              # %cond.false.i.i
	srai.d	$t3, $t4, 2
	b	.LBB30_30
.LBB30_28:                              # %cond.false.i.i139
	srai.d	$t4, $t3, 2
	b	.LBB30_35
.LBB30_29:                              # %cond.true.i.i
	srli.d	$t3, $t4, 2
.LBB30_30:                              # %cond.end.i.i
	slli.d	$a5, $t3, 3
	ldx.d	$a5, $a4, $a5
	alsl.d	$a4, $t3, $a4, 3
	addi.d	$a6, $a5, 512
	slli.d	$t3, $t3, 2
	sub.d	$t3, $t4, $t3
	slli.d	$t3, $t3, 7
	add.d	$t3, $a5, $t3
.LBB30_31:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit
	st.d	$t3, $fp, 0
	st.d	$a5, $fp, 8
	st.d	$a6, $fp, 16
	addi.d	$t3, $t3, 128
	st.d	$a4, $fp, 24
	bne	$t3, $a6, .LBB30_33
# %bb.32:                               # %if.then.i56
	ld.d	$t3, $a4, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $t3, 512
	move	$a5, $t3
.LBB30_33:                              # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit61
	st.d	$a7, $sp, 360
	st.d	$t2, $sp, 368
	st.d	$t1, $sp, 376
	st.d	$t0, $sp, 384
	st.d	$t3, $sp, 328
	st.d	$a5, $sp, 336
	st.d	$a6, $sp, 344
	st.d	$a4, $sp, 352
	st.d	$a0, $sp, 296
	st.d	$a3, $sp, 304
	st.d	$a2, $sp, 312
	st.d	$a1, $sp, 320
.Ltmp861:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 328
	addi.d	$a3, $sp, 296
	pcaddu18i	$ra, %call36(_ZSt15__copy_move_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_)
	jirl	$ra, $ra, 0
.Ltmp862:                               # EH_LABEL
	b	.LBB30_37
.LBB30_34:                              # %cond.true.i.i151
	srli.d	$t4, $t3, 2
.LBB30_35:                              # %cond.end.i.i141
	slli.d	$t1, $t4, 3
	ldx.d	$t1, $t0, $t1
	alsl.d	$t0, $t4, $t0, 3
	addi.d	$t2, $t1, 512
	slli.d	$t4, $t4, 2
	sub.d	$t3, $t3, $t4
	slli.d	$t3, $t3, 7
	add.d	$t3, $t1, $t3
.LBB30_36:                              # %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit155
	st.d	$t3, $fp, 0
	st.d	$t1, $fp, 8
	st.d	$t2, $fp, 16
	st.d	$t0, $fp, 24
	st.d	$t3, $sp, 360
	st.d	$t1, $sp, 368
	st.d	$t2, $sp, 376
	st.d	$t0, $sp, 384
	st.d	$a7, $sp, 328
	st.d	$a6, $sp, 336
	st.d	$a5, $sp, 344
	st.d	$a4, $sp, 352
	st.d	$a3, $sp, 296
	st.d	$a0, $sp, 304
	st.d	$a2, $sp, 312
	st.d	$a1, $sp, 320
.Ltmp854:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 328
	addi.d	$a3, $sp, 296
	pcaddu18i	$ra, %call36(_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_)
	jirl	$ra, $ra, 0
.Ltmp855:                               # EH_LABEL
.LBB30_37:                              # %if.end
	ld.d	$a1, $fp, 0
.Ltmp864:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 136
	pcaddu18i	$ra, %call36(_ZN2PP4WordaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.38:                               # %invoke.cont30
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	xvld	$xr0, $fp, 0
	xvst	$xr0, $s0, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB30_39:                              # %lpad27
.Ltmp856:                               # EH_LABEL
	b	.LBB30_42
.LBB30_40:                              # %lpad13
.Ltmp863:                               # EH_LABEL
	b	.LBB30_42
.LBB30_41:                              # %lpad
.Ltmp866:                               # EH_LABEL
.LBB30_42:                              # %ehcleanup
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN2PP4WordD1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_, .Lfunc_end30-_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE14_M_emplace_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp857-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp857
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp853-.Ltmp857              #   Call between .Ltmp857 and .Ltmp853
	.uleb128 .Ltmp866-.Lfunc_begin15        #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp862-.Ltmp861              #   Call between .Ltmp861 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin15        #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp855-.Ltmp854              #   Call between .Ltmp854 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin15        #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin15        #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp865-.Lfunc_begin15        # >> Call Site 6 <<
	.uleb128 .Lfunc_end30-.Ltmp865          #   Call between .Ltmp865 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	ld.d	$a0, $a0, 72
	ld.d	$s1, $fp, 40
	sub.d	$a2, $a0, $s1
	srai.d	$a2, $a2, 3
	sltu	$a0, $zero, $a0
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	sub.d	$a0, $a2, $a0
	ld.d	$a2, $fp, 32
	ld.d	$a5, $fp, 16
	sub.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 7
	alsl.d	$a0, $a0, $a3, 2
	sub.d	$a2, $a2, $a5
	srai.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 15
	beq	$a0, $a2, .LBB31_5
# %bb.1:                                # %if.end
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	bne	$s1, $a0, .LBB31_3
# %bb.2:                                # %if.then.i
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 40
.LBB31_3:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, -8
	st.d	$a0, $s1, -8
	st.d	$a1, $fp, 40
	st.d	$a0, $fp, 24
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	addi.d	$a0, $a0, 384
	st.d	$a0, $fp, 16
.Ltmp867:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.4:                                # %try.cont
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB31_5:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB31_6:                               # %lpad
.Ltmp869:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 32
	ld.d	$a0, $fp, 40
	addi.d	$a1, $a1, 128
	st.d	$a1, $fp, 16
	bne	$a1, $a2, .LBB31_8
# %bb.7:                                # %if.then.i5
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 24
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 32
	st.d	$a1, $fp, 16
.LBB31_8:                               # %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
	ld.d	$a0, $a0, -8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp870:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.9:                                # %unreachable
.LBB31_10:                              # %lpad26
.Ltmp872:                               # EH_LABEL
	move	$fp, $a0
.Ltmp873:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.11:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_12:                              # %terminate.lpad
.Ltmp875:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_, .Lfunc_end31-_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp867-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp867
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp868-.Ltmp867              #   Call between .Ltmp867 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin16        #     jumps to .Ltmp869
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp868-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp870-.Ltmp868              #   Call between .Ltmp868 and .Ltmp870
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin16        #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin16        #     jumps to .Ltmp875
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp874-.Lfunc_begin16        # >> Call Site 6 <<
	.uleb128 .Lfunc_end31-.Ltmp874          #   Call between .Ltmp874 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_ # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_
	.p2align	2
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_,@function
_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_: # @_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	ld.d	$s1, $a0, 72
	ld.d	$a0, $a0, 40
	sub.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 3
	sltu	$a2, $zero, $s1
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	sub.d	$a0, $a0, $a2
	ld.d	$a2, $fp, 32
	ld.d	$a5, $fp, 16
	sub.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 7
	alsl.d	$a0, $a0, $a3, 2
	sub.d	$a2, $a2, $a5
	srai.d	$a2, $a2, 7
	add.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 15
	beq	$a0, $a2, .LBB32_5
# %bb.1:                                # %if.end
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	sub.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB32_3
# %bb.2:                                # %if.then.i
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 72
.LBB32_3:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ld.d	$a0, $fp, 48
.Ltmp876:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4WordC1ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.4:                                # %invoke.cont
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a0, $a1, 512
	st.d	$a0, $fp, 64
	st.d	$a1, $fp, 48
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB32_5:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB32_6:                               # %lpad
.Ltmp878:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp879:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp880:                               # EH_LABEL
# %bb.7:                                # %unreachable
.LBB32_8:                               # %lpad22
.Ltmp881:                               # EH_LABEL
	move	$fp, $a0
.Ltmp882:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.9:                                # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_10:                              # %terminate.lpad
.Ltmp884:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_, .Lfunc_end32-_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_,"aG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp876-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp876
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin17        #     jumps to .Ltmp878
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp877-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp879-.Ltmp877              #   Call between .Ltmp877 and .Ltmp879
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin17        #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin17        #     jumps to .Ltmp884
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp883-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Lfunc_end32-.Ltmp883          #   Call between .Ltmp883 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"A restart block line must have at least 8 words on it (the "
	.size	.L.str, 60

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"opening and closing parentheses each count as a word)"
	.size	.L.str.1, 54

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"This restart block command only has "
	.size	.L.str.2, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" words on it."
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Expected something like (this has 8 words):"
	.size	.L.str.4, 44

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"    restart_block after5 (time .gt. 5) then"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Or perhaps a single line restart block like (this has 13 words):"
	.size	.L.str.6, 65

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"    restart_block after5 (time .gt. 5) sizemat(2) = 0.005"
	.size	.L.str.7, 58

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Expected an open parentheses following the restart block name.."
	.size	.L.str.9, 64

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Instead found "
	.size	.L.str.10, 15

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" following the restart block name."
	.size	.L.str.11, 35

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"The restart block command should be something like:"
	.size	.L.str.12, 52

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"    restart_block t_is_gt_5 (time .gt. 5) then"
	.size	.L.str.13, 47

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Or perhaps a single line restart block like:"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"    restart_block t_is_gt_5 (time .gt. 5) sizemat(2) = 0.005"
	.size	.L.str.15, 61

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"then"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Found a then keyword embedded in the restart_block command."
	.size	.L.str.17, 60

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"If a then keyword is present it must be the last word on the line."
	.size	.L.str.18, 67

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"The restart_block command should be something like:"
	.size	.L.str.19, 52

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Expected a close parentheses following the condition."
	.size	.L.str.21, 54

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Did not find a close parentheses."
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Wrong number of words in the restart_block condition."
	.size	.L.str.23, 54

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"The number of words in this condition is "
	.size	.L.str.24, 42

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"The number of words + 1 should be a multiple of 4."
	.size	.L.str.25, 51

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"The condition should be something like:"
	.size	.L.str.26, 40

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"    time .gt. 5"
	.size	.L.str.27, 16

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"This has 3 words and 3+1 is a multiple of 4."
	.size	.L.str.28, 45

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Or the following is valid"
	.size	.L.str.29, 26

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"    time .gt. 5 .and. ncycle .ge. 10"
	.size	.L.str.30, 37

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"This has 7 words and 7+1 is a multiple of 4."
	.size	.L.str.31, 45

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"none"
	.size	.L.str.32, 5

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"false"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".hglt."
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".hgle."
	.size	.L.str.35, 7

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	".hgeq."
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	".hgne."
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	".hggt."
	.size	.L.str.38, 7

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	".hgge."
	.size	.L.str.39, 7

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	".lt."
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	".le."
	.size	.L.str.41, 5

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	".eq."
	.size	.L.str.42, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	".ne."
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	".gt."
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	".ge."
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Invalid restart_block relation."
	.size	.L.str.46, 32

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Expected  .lt., .le., .eq., .ne., .gt., .ge."
	.size	.L.str.47, 45

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Also could be .hglt., .hgle., .hgeq., .hgne., .hggt., .hgge."
	.size	.L.str.48, 61

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Instead found relation:  "
	.size	.L.str.49, 26

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"true"
	.size	.L.str.50, 5

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	".andthen."
	.size	.L.str.51, 10

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"relational"
	.size	.L.str.53, 11

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"logical"
	.size	.L.str.54, 8

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"restart_block condition did not evaluate to a single boolean value."
	.size	.L.str.55, 68

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Fix the restart_block condition"
	.size	.L.str.56, 32

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	" "
	.size	.L.str.57, 2

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"cannot create std::deque larger than max_size()"
	.size	.L.str.59, 48

	.globl	_ZN2PP12RestartblockC1Ev
	.type	_ZN2PP12RestartblockC1Ev,@function
_ZN2PP12RestartblockC1Ev = _ZN2PP12RestartblockC2Ev
	.globl	_ZN2PP12RestartblockC1ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_
	.type	_ZN2PP12RestartblockC1ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_,@function
_ZN2PP12RestartblockC1ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_ = _ZN2PP12RestartblockC2ERiRNS_3CmdERbS4_RSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EERS5_IbSaIbEERS5_IiSaIiEESH_RNS6_18basic_stringstreamIcS9_SA_EES1_
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
