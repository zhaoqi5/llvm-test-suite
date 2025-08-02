	.file	"spellcheck.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 4176
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN13spell_checkerC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt3cin)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt3cin)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 232
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
.Ltmp0:                                 # EH_LABEL
	lu12i.w	$a2, 1
	addi.d	$a1, $sp, 16
	jirl	$ra, $a3, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont1
.Ltmp2:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt3cin)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt3cin)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN13spell_checker7processERSi)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
.Ltmp5:                                 # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.3:                                # %_ZN13spell_checkerD2Ev.exit
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 112
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_4:                                # %terminate.lpad.i.i.i
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %lpad
.Ltmp4:                                 # EH_LABEL
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN13spell_checkerD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13spell_checkerC2Ev,"axG",@progbits,_ZN13spell_checkerC2Ev,comdat
	.weak	_ZN13spell_checkerC2Ev          # -- Begin function _ZN13spell_checkerC2Ev
	.p2align	2
	.type	_ZN13spell_checkerC2Ev,@function
_ZN13spell_checkerC2Ev:                 # @_ZN13spell_checkerC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -688
	.cfi_def_cfa_offset 688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
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
	addi.d	$s3, $a0, 8
	st.w	$zero, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$s3, $a0, 24
	st.d	$s3, $a0, 32
	st.d	$zero, $a0, 40
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	addi.d	$s4, $sp, 304
	ldx.d	$s1, $s4, $a0
	beqz	$s1, .LBB1_43
# %bb.2:
	addi.d	$s6, $sp, 32
	ori	$s7, $zero, 3
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$s0, $a0, %pc_lo12(_ZSt19piecewise_construct)
	b	.LBB1_7
.LBB1_3:                                #   in Loop: Header=BB1_7 Depth=1
	move	$a1, $a0
.LBB1_4:                                # %if.then.i
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 592
.Ltmp21:                                # EH_LABEL
	addi.d	$a3, $sp, 592
	addi.d	$a4, $sp, 591
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB1_5:                                # %invoke.cont36
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 48
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	ldx.d	$s1, $s4, $a0
	beqz	$s1, .LBB1_43
.LBB1_7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_30 Depth 2
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB1_9
# %bb.8:                                # %if.then.i2.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $s1, 67
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_9:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
.Ltmp11:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.10:                               # %.noexc6
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp13:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp14:                                # EH_LABEL
.LBB1_11:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB1_7 Depth=1
.Ltmp15:                                # EH_LABEL
	ext.w.b	$a3, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZNSi7getlineEPclc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.12:                               # %invoke.cont4
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB1_42
# %bb.13:                               # %while.body
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$s5, $fp, 16
	ld.d	$s8, $sp, 72
	beqz	$s5, .LBB1_23
# %bb.14:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $sp, 31
	add.d	$a0, $a0, $s8
	move	$a1, $s5
	move	$a2, $s3
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB1_17 Depth=2
	ori	$a3, $zero, 24
	move	$a2, $a4
.LBB1_16:                               # %if.end.i.i.i10
                                        #   in Loop: Header=BB1_17 Depth=2
	ldx.d	$a1, $a1, $a3
	beqz	$a1, .LBB1_21
.LBB1_17:                               # %while.body.i.i.i
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a1, 32
	move	$a4, $a2
	bltu	$a5, $s6, .LBB1_15
# %bb.18:                               # %lor.rhs.i.i.i.i.i
                                        #   in Loop: Header=BB1_17 Depth=2
	ori	$a3, $zero, 16
	bgeu	$s6, $a5, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_17 Depth=2
	move	$a2, $a1
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_20:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i.i.i
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.d	$a5, $a1, 40
	move	$a2, $a1
	bltu	$a5, $a0, .LBB1_15
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_21:                               # %_ZNKSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSD_RS4_.exit.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	beq	$a2, $s3, .LBB1_23
# %bb.22:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a2, 32
	bgeu	$s6, $a1, .LBB1_38
.LBB1_23:                               # %if.then
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$s2, $s8, -1
.Ltmp18:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.24:                               # %invoke.cont26
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$s1, $a0
	blt	$s8, $s7, .LBB1_40
# %bb.25:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a1, $sp, 32
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %invoke.cont28
                                        #   in Loop: Header=BB1_7 Depth=1
	add.d	$a2, $s1, $s2
	st.d	$s1, $sp, 16
	st.d	$a2, $sp, 24
	move	$a1, $s3
	beqz	$s5, .LBB1_4
# %bb.27:                               # %while.body.i.i.i.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $s3
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_28:                               # %if.else.i.i.i.i
                                        #   in Loop: Header=BB1_30 Depth=2
	ori	$a1, $zero, 24
	move	$a0, $a3
.LBB1_29:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB1_30 Depth=2
	ldx.d	$s5, $s5, $a1
	beqz	$s5, .LBB1_34
.LBB1_30:                               # %while.body.i.i.i.i
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s5, 32
	move	$a3, $a0
	bltu	$a4, $s1, .LBB1_28
# %bb.31:                               # %lor.rhs.i.i.i.i.i.i
                                        #   in Loop: Header=BB1_30 Depth=2
	ori	$a1, $zero, 16
	bgeu	$s1, $a4, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=2
	move	$a0, $s5
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_33:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i.i.i.i
                                        #   in Loop: Header=BB1_30 Depth=2
	ld.d	$a4, $s5, 40
	move	$a0, $s5
	bltu	$a4, $a2, .LBB1_28
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_34:                               # %_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEE11lower_boundERS6_.exit.i
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a1, $s3
	beq	$a0, $s3, .LBB1_4
# %bb.35:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a0, 32
	bltu	$s1, $a1, .LBB1_3
# %bb.36:                               # %lor.rhs.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	bltu	$a1, $s1, .LBB1_5
# %bb.37:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a3, $a0, 40
	move	$a1, $a0
	bltu	$a2, $a3, .LBB1_4
	b	.LBB1_5
.LBB1_38:                               # %lor.rhs.i.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	bltu	$a1, $s6, .LBB1_6
# %bb.39:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a2, 40
	bgeu	$a0, $a1, .LBB1_6
	b	.LBB1_23
.LBB1_40:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB1_26
# %bb.41:                               # %if.then2.i.i
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.b	$a0, $sp, 32
	st.b	$a0, $s1, 0
	b	.LBB1_26
.LBB1_42:                               # %while.end
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.LBB1_43:                               # %if.then.i.i.i
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.44:                               # %.noexc
.LBB1_45:                               # %lpad
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_46:                               # %lpad34
.Ltmp23:                                # EH_LABEL
	b	.LBB1_50
.LBB1_47:                               # %lpad25
.Ltmp20:                                # EH_LABEL
	b	.LBB1_50
.LBB1_48:                               # %lpad2.loopexit.split-lp
.Ltmp26:                                # EH_LABEL
	b	.LBB1_50
.LBB1_49:                               # %lpad2.loopexit
.Ltmp17:                                # EH_LABEL
.LBB1_50:                               # %ehcleanup41
	move	$s0, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN13spell_checkerC2Ev, .Lfunc_end1-_ZN13spell_checkerC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13spell_checkerC2Ev,"aG",@progbits,_ZN13spell_checkerC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp24-.Ltmp19                #   Call between .Ltmp19 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end1-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13spell_checker7processERSi,"axG",@progbits,_ZN13spell_checker7processERSi,comdat
	.weak	_ZN13spell_checker7processERSi  # -- Begin function _ZN13spell_checker7processERSi
	.p2align	2
	.type	_ZN13spell_checker7processERSi,@function
_ZN13spell_checker7processERSi:         # @_ZN13spell_checker7processERSi
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, -24
	addi.d	$s3, $fp, 240
	ldx.d	$s2, $s3, $a1
	beqz	$s2, .LBB2_23
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph
	move	$s0, $a0
	addi.d	$s4, $sp, 14
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	addi.d	$s5, $s0, 8
	ori	$s6, $zero, 10
	addi.d	$s7, $sp, 15
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_2:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $sp, 15
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 15
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$a0, $a0, 16
	st.b	$s6, $sp, 47
	beqz	$a0, .LBB2_21
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a1, $sp, 47
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	ldx.d	$s2, $s3, $a0
	beqz	$s2, .LBB2_23
.LBB2_5:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB2_7
# %bb.6:                                # %if.then.i2.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB2_8:                                # %_ZNSi7getlineEPcl.exit
                                        #   in Loop: Header=BB2_5 Depth=1
	ext.w.b	$a3, $a0
	addi.d	$a1, $sp, 15
	ori	$a2, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSi7getlineEPclc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB2_22
# %bb.9:                                # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB2_2
# %bb.10:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $fp, 8
	add.d	$a0, $s4, $a0
	move	$a2, $s5
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ori	$a3, $zero, 24
	move	$a2, $a4
.LBB2_12:                               # %if.end.i.i.i3
                                        #   in Loop: Header=BB2_13 Depth=2
	ldx.d	$a1, $a1, $a3
	beqz	$a1, .LBB2_17
.LBB2_13:                               # %while.body.i.i.i
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a1, 32
	move	$a4, $a2
	bltu	$a5, $s7, .LBB2_11
# %bb.14:                               # %lor.rhs.i.i.i.i.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ori	$a3, $zero, 16
	bgeu	$s7, $a5, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=2
	move	$a2, $a1
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_16:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i.i.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a5, $a1, 40
	move	$a2, $a1
	bltu	$a5, $a0, .LBB2_11
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_17:                               # %_ZNKSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSD_RS4_.exit.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$a2, $s5, .LBB2_2
# %bb.18:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $a2, 32
	bltu	$s7, $a1, .LBB2_2
# %bb.19:                               # %lor.rhs.i.i.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	bltu	$a1, $s7, .LBB2_4
# %bb.20:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $a2, 40
	bltu	$a0, $a1, .LBB2_2
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_21:                               # %if.end.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_22:                               # %while.end
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
.LBB2_23:                               # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN13spell_checker7processERSi, .Lfunc_end2-_ZN13spell_checker7processERSi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13spell_checkerD2Ev,"axG",@progbits,_ZN13spell_checkerD2Ev,comdat
	.weak	_ZN13spell_checkerD2Ev          # -- Begin function _ZN13spell_checkerD2Ev
	.p2align	2
	.type	_ZN13spell_checkerD2Ev,@function
_ZN13spell_checkerD2Ev:                 # @_ZN13spell_checkerD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.1:                                # %_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_2:                                # %terminate.lpad.i.i
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN13spell_checkerD2Ev, .Lfunc_end3-_ZN13spell_checkerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13spell_checkerD2Ev,"aG",@progbits,_ZN13spell_checkerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end3
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
	.section	.text._ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev,"axG",@progbits,_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev,comdat
	.weak	_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev # -- Begin function _ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev
	.p2align	2
	.type	_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev,@function
_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev: # @_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_2:                                # %terminate.lpad.i
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev, .Lfunc_end4-_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev,"aG",@progbits,_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp31            #   Call between .Ltmp31 and .Lfunc_end4
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
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ # -- Begin function _ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
	.p2align	2
	.type	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,@function
_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_: # @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %invoke.cont
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
	move	$fp, $a3
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	vld	$vr0, $a1, 0
	move	$fp, $a0
	addi.d	$s1, $a0, 32
	vst	$vr0, $a0, 32
	st.w	$zero, $a0, 48
.Ltmp33:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.1:                                # %invoke.cont7
	move	$a4, $a0
	move	$a2, $a1
	beqz	$a1, .LBB6_7
# %bb.2:                                # %if.then
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a4, .LBB6_9
# %bb.3:                                # %if.then
	beq	$a3, $a2, .LBB6_9
# %bb.4:                                # %lor.rhs.i.i
	ld.d	$a1, $s1, 0
	ld.d	$a4, $a2, 32
	bltu	$a1, $a4, .LBB6_9
# %bb.5:                                # %lor.rhs.i.i.i.i
	bgeu	$a4, $a1, .LBB6_8
# %bb.6:
	move	$a0, $zero
	b	.LBB6_9
.LBB6_7:                                # %if.then.i7
	ori	$a1, $zero, 56
	move	$s0, $a4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB6_10
.LBB6_8:                                # %land.rhs.i.i.i.i
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a2, 40
	sltu	$a0, $a0, $a1
.LBB6_9:                                # %cleanup.thread
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
.LBB6_10:                               # %_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE10_Auto_nodeD2Ev.exit8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_11:                               # %_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE10_Auto_nodeD2Ev.exit
.Ltmp35:                                # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_, .Lfunc_end6-_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp34            #   Call between .Ltmp34 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_,"axG",@progbits,_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_,comdat
	.weak	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_ # -- Begin function _ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_
	.p2align	2
	.type	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_,@function
_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_: # @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_
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
	addi.d	$fp, $a0, 8
	move	$s0, $a2
	beq	$fp, $a1, .LBB7_5
# %bb.1:                                # %if.else10
	ld.d	$s1, $s0, 0
	ld.d	$a2, $a1, 32
	bgeu	$s1, $a2, .LBB7_17
.LBB7_2:                                # %if.then15
	ld.d	$s2, $a0, 24
	beq	$s2, $a1, .LBB7_27
# %bb.3:                                # %if.else23
	move	$s4, $a0
	move	$s3, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$a1, $s1, .LBB7_28
.LBB7_4:                                # %if.then29
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB7_56
.LBB7_5:                                # %if.then
	ld.d	$a1, $a0, 40
	beqz	$a1, .LBB7_9
# %bb.6:                                # %land.lhs.true
	ld.d	$a1, $a0, 32
	ld.d	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	bltu	$a2, $a3, .LBB7_39
# %bb.7:                                # %lor.rhs.i.i
	bltu	$a3, $a2, .LBB7_9
# %bb.8:                                # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit
	ld.d	$a2, $a1, 40
	ld.d	$a3, $s0, 8
	bltu	$a2, $a3, .LBB7_39
.LBB7_9:                                # %if.else
	ld.d	$a4, $a0, 16
	beqz	$a4, .LBB7_21
# %bb.10:                               # %while.body.lr.ph.i
	ld.d	$a1, $s0, 0
	ld.d	$a3, $s0, 8
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %cond.end.i
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$a4, $fp, 16
	beqz	$a4, .LBB7_21
.LBB7_12:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	bltu	$a1, $a2, .LBB7_11
# %bb.13:                               # %lor.rhs.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=1
	bltu	$a2, $a1, .LBB7_15
# %bb.14:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$a4, $fp, 40
	bltu	$a3, $a4, .LBB7_11
.LBB7_15:                               # %cond.end.i.thread
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$a4, $fp, 24
	bnez	$a4, .LBB7_12
# %bb.16:
	move	$a0, $fp
	bgeu	$a2, $a1, .LBB7_23
	b	.LBB7_54
.LBB7_17:                               # %lor.rhs.i.i12
	bgeu	$a2, $s1, .LBB7_24
.LBB7_18:                               # %if.then45
	ld.d	$a2, $a0, 32
	beq	$a2, $a1, .LBB7_39
# %bb.19:                               # %if.else53
	move	$s2, $a0
	move	$s3, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$s1, $a1, .LBB7_40
.LBB7_20:                               # %if.then59
	ld.d	$a1, $s3, 24
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a0
	b	.LBB7_56
.LBB7_21:                               # %if.then.i
	ld.d	$a0, $a0, 24
	beq	$fp, $a0, .LBB7_54
# %bb.22:                               # %if.else.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	ld.d	$a1, $s0, 0
	bltu	$a2, $a1, .LBB7_54
.LBB7_23:                               # %lor.rhs.i.i6.i
	bltu	$a1, $a2, .LBB7_55
	b	.LBB7_53
.LBB7_24:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit18
	ld.d	$a2, $s0, 8
	ld.d	$a3, $a1, 40
	bltu	$a2, $a3, .LBB7_2
# %bb.25:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit87
	ld.d	$a2, $a1, 40
	ld.d	$a3, $s0, 8
	bltu	$a2, $a3, .LBB7_18
# %bb.26:
	move	$a0, $a1
	b	.LBB7_55
.LBB7_27:
	move	$a0, $a1
	b	.LBB7_56
.LBB7_28:                               # %lor.rhs.i.i24
	bltu	$s1, $a1, .LBB7_30
# %bb.29:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit30
	ld.d	$a1, $a0, 40
	ld.d	$a2, $s0, 8
	bltu	$a1, $a2, .LBB7_4
.LBB7_30:                               # %if.else38
	ld.d	$a4, $s4, 16
	move	$a1, $s2
	beqz	$a4, .LBB7_37
# %bb.31:                               # %while.body.lr.ph.i38
	ld.d	$a2, $s0, 8
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %cond.end.i50
                                        #   in Loop: Header=BB7_33 Depth=1
	ld.d	$a4, $fp, 16
	beqz	$a4, .LBB7_37
.LBB7_33:                               # %while.body.i40
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a3, $a4, 32
	bltu	$s1, $a3, .LBB7_32
# %bb.34:                               # %lor.rhs.i.i.i44
                                        #   in Loop: Header=BB7_33 Depth=1
	bltu	$a3, $s1, .LBB7_36
# %bb.35:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i46
                                        #   in Loop: Header=BB7_33 Depth=1
	ld.d	$a0, $fp, 40
	bltu	$a2, $a0, .LBB7_32
.LBB7_36:                               # %cond.end.i50.thread
                                        #   in Loop: Header=BB7_33 Depth=1
	ld.d	$a4, $fp, 24
	move	$a0, $fp
	bnez	$a4, .LBB7_33
	b	.LBB7_51
.LBB7_37:                               # %if.then.i72
	beq	$fp, $a1, .LBB7_39
# %bb.38:                               # %if.else.i76
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 32
	bgeu	$a3, $s1, .LBB7_52
	b	.LBB7_54
.LBB7_39:
	move	$a0, $zero
	b	.LBB7_56
.LBB7_40:                               # %lor.rhs.i.i94
	bltu	$a1, $s1, .LBB7_42
# %bb.41:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit100
	ld.d	$a1, $s0, 8
	ld.d	$a2, $a0, 40
	bltu	$a1, $a2, .LBB7_20
.LBB7_42:                               # %if.else69
	move	$a1, $s2
	ld.d	$a4, $s2, 16
	beqz	$a4, .LBB7_49
# %bb.43:                               # %while.body.lr.ph.i108
	ld.d	$a2, $s0, 8
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_44:                               # %cond.end.i120
                                        #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a4, $fp, 16
	beqz	$a4, .LBB7_49
.LBB7_45:                               # %while.body.i110
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a3, $a4, 32
	bltu	$s1, $a3, .LBB7_44
# %bb.46:                               # %lor.rhs.i.i.i114
                                        #   in Loop: Header=BB7_45 Depth=1
	bltu	$a3, $s1, .LBB7_48
# %bb.47:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit.i116
                                        #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a0, $fp, 40
	bltu	$a2, $a0, .LBB7_44
.LBB7_48:                               # %cond.end.i120.thread
                                        #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a4, $fp, 24
	move	$a0, $fp
	bnez	$a4, .LBB7_45
	b	.LBB7_51
.LBB7_49:                               # %if.then.i142
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB7_54
# %bb.50:                               # %if.else.i146
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 32
.LBB7_51:                               # %if.end12.i126
	bltu	$a3, $s1, .LBB7_54
.LBB7_52:                               # %lor.rhs.i.i6.i131
	bltu	$s1, $a3, .LBB7_55
.LBB7_53:                               # %_ZNKSt4lessISt4pairIPKcS2_EEclERKS3_S6_.exit12.i
	ld.d	$a1, $a0, 40
	ld.d	$a2, $s0, 8
	bgeu	$a1, $a2, .LBB7_55
.LBB7_54:
	move	$a0, $zero
	move	$a1, $fp
	b	.LBB7_56
.LBB7_55:                               # %if.end17.i137
	move	$a1, $zero
.LBB7_56:                               # %return
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_, .Lfunc_end7-_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	2
	.type	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB8_4
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
	.p2align	4, , 16
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB8_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB8_4:                                # %while.end
	ret
.Lfunc_end8:
	.size	_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end8-_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usr.Dict.Words"
	.size	.L.str, 15

	.type	_ZSt19piecewise_construct,@object # @_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.weak	_ZSt19piecewise_construct
_ZSt19piecewise_construct:
	.space	1
	.size	_ZSt19piecewise_construct, 1

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
	.addrsig_sym _ZSt3cin
	.addrsig_sym _ZSt19piecewise_construct
	.addrsig_sym _ZSt4cout
