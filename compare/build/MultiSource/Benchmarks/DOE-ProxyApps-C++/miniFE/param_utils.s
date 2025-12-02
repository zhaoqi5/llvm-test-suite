	.file	"param_utils.cpp"
	.text
	.globl	_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	move	$s1, $a1
	ld.d	$s0, $a1, 0
	ld.d	$s3, $a2, 8
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB0_20
# %bb.1:                                # %for.body.lr.ph
	addi.d	$s4, $sp, 32
	addi.d	$s0, $sp, 64
	addi.d	$s5, $s1, 8
	addi.d	$s6, $s2, -1
	ori	$s7, $zero, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	addi.w	$a0, $zero, -2
	lu52i.d	$s8, $a0, 2047
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	beqz	$s6, .LBB0_20
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s5, 0
	st.d	$s4, $sp, 16
	beqz	$s2, .LBB0_21
# %bb.4:                                # %if.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $sp, 80
	move	$a0, $s4
	bltu	$s3, $s7, .LBB0_6
# %bb.5:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB0_6:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	beqz	$s3, .LBB0_10
# %bb.7:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB0_9
# %bb.8:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %invoke.cont
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a4, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.11:                               # %call3.i.i.i.noexc
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s0, $sp, 48
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB0_13
# %bb.12:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 64
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 48
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s7, $a0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	ori	$s7, $zero, 16
.LBB0_14:                               # %invoke.cont5
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s3, $sp, 56
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a1, $fp, 8
	ld.d	$a2, $sp, 56
	sub.d	$a1, $s8, $a1
	st.d	$s2, $a0, 0
	bltu	$a1, $a2, .LBB0_22
# %bb.15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB0_3 Depth=1
.Ltmp3:                                 # EH_LABEL
	ld.d	$a1, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.16:                               # %invoke.cont7
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 48
	beq	$a0, $s0, .LBB0_18
# %bb.17:                               # %if.then.i.i21
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB0_2
# %bb.19:                               # %if.then.i.i25
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_20:                               # %for.cond.cleanup
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
.LBB0_21:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %if.then.i.i.i.i17
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.23:                               # %.noexc18
.LBB0_24:                               # %lpad4
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB0_29
	b	.LBB0_31
.LBB0_25:                               # %lpad6.loopexit
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_27
.LBB0_26:                               # %lpad6.loopexit.split-lp
.Ltmp8:                                 # EH_LABEL
.LBB0_27:                               # %lpad6
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	bne	$a0, $s0, .LBB0_30
# %bb.28:                               # %ehcleanup
	ld.d	$a0, $sp, 16
	bne	$a0, $s4, .LBB0_31
.LBB0_29:                               # %ehcleanup9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %if.then.i.i32
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB0_29
.LBB0_31:                               # %if.then.i.i39
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end0-_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_ # -- Begin function _ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_
	.p2align	5
	.type	_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_,@function
_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_: # @_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	ld.d	$a1, $a1, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 328
	ori	$a2, $zero, 8
	addi.d	$s4, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	ld.d	$a0, $a0, -24
	add.d	$a1, $s4, $a0
	ld.bu	$a1, $a1, 32
	andi	$a1, $a1, 2
	bnez	$a1, .LBB1_26
# %bb.1:                                # %while.body.lr.ph
	addi.d	$s3, $sp, 24
	addi.d	$s0, $sp, 56
	ori	$s5, $zero, 16
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s1, $a1, %pc_lo12(.L.str)
	addi.w	$a1, $zero, -2
	lu52i.d	$s7, $a1, 2047
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 328
	ld.d	$a0, $a0, -24
	add.d	$a1, $s4, $a0
	ld.bu	$a1, $a1, 32
	andi	$a1, $a1, 2
	bnez	$a1, .LBB1_26
.LBB1_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s4, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_27
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then.i2.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_6:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:                                # %.noexc5
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp11:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp12:                                # EH_LABEL
.LBB1_8:                                # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp13:                                # EH_LABEL
	ext.w.b	$a3, $a0
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(_ZNSi7getlineEPclc)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.9:                                # %invoke.cont2
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s3, $sp, 8
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $sp, 848
	move	$a0, $s3
	bltu	$s2, $s5, .LBB1_12
# %bb.10:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 848
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.11:                               # %call2.i5.i.noexc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 848
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB1_12:                               # %if.end.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$s2, .LBB1_16
# %bb.13:                               # %if.end.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB1_15
# %bb.14:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.b	$a1, $sp, 72
	st.b	$a1, $a0, 0
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 72
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %invoke.cont8
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 848
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
.Ltmp19:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a4, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.17:                               # %call3.i.i.i.noexc
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s0, $sp, 40
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_19
# %bb.18:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 56
	ld.d	$s8, $a0, 8
	st.d	$a1, $sp, 40
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s8, $a0, 8
	addi.d	$a2, $s8, 1
	move	$s6, $a0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB1_20:                               # %invoke.cont10
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s8, $sp, 48
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a1, $fp, 8
	ld.d	$a2, $sp, 48
	sub.d	$a1, $s7, $a1
	st.d	$s2, $a0, 0
	bltu	$a1, $a2, .LBB1_29
# %bb.21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
.Ltmp22:                                # EH_LABEL
	ld.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.22:                               # %invoke.cont12
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB1_24
# %bb.23:                               # %if.then.i.i22
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB1_2
# %bb.25:                               # %if.then.i.i26
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_26:                               # %while.end
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
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
.LBB1_27:                               # %if.then.i.i.i
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.28:                               # %.noexc
.LBB1_29:                               # %if.then.i.i.i.i18
.Ltmp25:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.30:                               # %.noexc19
.LBB1_31:                               # %lpad7
.Ltmp18:                                # EH_LABEL
	b	.LBB1_42
.LBB1_32:                               # %lpad9
.Ltmp21:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB1_37
	b	.LBB1_39
.LBB1_33:                               # %lpad11.loopexit
.Ltmp24:                                # EH_LABEL
	b	.LBB1_35
.LBB1_34:                               # %lpad11.loopexit.split-lp
.Ltmp27:                                # EH_LABEL
.LBB1_35:                               # %lpad11
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	bne	$a0, $s0, .LBB1_38
# %bb.36:                               # %ehcleanup
	ld.d	$a0, $sp, 8
	bne	$a0, $s3, .LBB1_39
.LBB1_37:                               # %ehcleanup18
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %if.then.i.i33
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB1_37
.LBB1_39:                               # %if.then.i.i40
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_40:                               # %lpad.loopexit.split-lp
.Ltmp30:                                # EH_LABEL
	b	.LBB1_42
.LBB1_41:                               # %lpad.loopexit
.Ltmp15:                                # EH_LABEL
.LBB1_42:                               # %ehcleanup18
	move	$fp, $a0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_, .Lfunc_end1-_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp28-.Ltmp23                #   Call between .Ltmp23 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Lfunc_end1-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"basic_string::append"
	.size	.L.str.4, 21

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
