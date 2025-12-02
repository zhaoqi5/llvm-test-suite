	.file	"wordfreq.cpp"
	.text
	.globl	_ZN11word_readerclEPPKc         # -- Begin function _ZN11word_readerclEPPKc
	.p2align	5
	.type	_ZN11word_readerclEPPKc,@function
_ZN11word_readerclEPPKc:                # @_ZN11word_readerclEPPKc
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
	move	$fp, $a1
	move	$s0, $a0
	move	$s1, $zero
	addi.d	$s2, $a0, 4
	lu12i.w	$s3, 1
	.p2align	4, , 16
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s0, 4104
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB0_3
# %bb.2:                                # %lor.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
	ldptr.d	$a3, $s0, 4120
	ori	$a1, $zero, 1
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	stx.b	$zero, $s2, $a1
	stptr.d	$s2, $s0, 4104
	move	$a0, $s2
	blez	$a1, .LBB0_7
.LBB0_3:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $a0, 1
	stptr.d	$a1, $s0, 4104
	ld.b	$s4, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(isalpha)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_5
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$s1, .LBB0_1
	b	.LBB0_7
.LBB0_5:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	ldptr.d	$a1, $s0, 4112
	stx.b	$a0, $a1, $s1
	ld.wu	$a0, $s0, 0
	addi.d	$s1, $s1, 1
	bne	$s1, $a0, .LBB0_1
# %bb.6:                                # %if.then8
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $s1, 1
	st.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ldptr.d	$s4, $s0, 4112
	move	$s5, $a0
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	stptr.d	$s5, $s0, 4112
	b	.LBB0_1
.LBB0_7:                                # %while.end
	ldptr.d	$a1, $s0, 4112
	st.d	$a1, $fp, 0
	addi.w	$a0, $s1, 0
	stx.b	$zero, $a1, $s1
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
.Lfunc_end0:
	.size	_ZN11word_readerclEPPKc, .Lfunc_end0-_ZN11word_readerclEPPKc
	.cfi_endproc
                                        # -- End function
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
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 4256
	lu12i.w	$a0, 1
	ori	$a0, $a0, 64
	add.d	$s2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$fp, $a0, 0
	ori	$a0, $zero, 64
	st.w	$a0, $sp, 24
	addi.d	$a0, $sp, 28
	lu12i.w	$a1, 1
	ori	$a1, $a1, 32
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 65
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN11word_readerC2EP8_IO_FILE.exit
	lu12i.w	$a1, 1
	ori	$a1, $a1, 40
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 48
	add.d	$a1, $sp, $a1
	stptr.d	$fp, $a1, 0
	st.b	$zero, $a0, 0
	st.b	$zero, $sp, 28
	ori	$s0, $zero, 1
	ori	$s1, $zero, 16
	ori	$s3, $zero, 24
	b	.LBB1_3
.LBB1_2:                                # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $a1, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 40
	.p2align	4, , 16
.LBB1_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 24
	lu12i.w	$a1, 1
	ori	$a1, $a1, 104
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZN11word_readerclEPPKc)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:                                # %invoke.cont1
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$a0, .LBB1_13
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 72
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	beqz	$a3, .LBB1_10
# %bb.6:                                # %while.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 104
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	move	$a1, $s2
	.p2align	4, , 16
.LBB1_7:                                # %while.body.i.i.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 32
	sltu	$a5, $a4, $a2
	masknez	$a4, $a3, $a5
	masknez	$a6, $s1, $a5
	maskeqz	$a7, $s3, $a5
	or	$a6, $a7, $a6
	ldx.d	$a3, $a3, $a6
	maskeqz	$a5, $a1, $a5
	or	$a1, $a5, $a4
	bnez	$a3, .LBB1_7
# %bb.8:                                # %_ZNKSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSC_RS3_.exit.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	beq	$a1, $s2, .LBB1_10
# %bb.9:                                # %invoke.cont3
                                        #   in Loop: Header=BB1_3 Depth=1
	or	$a3, $a5, $a4
	ld.d	$a3, $a3, 32
	bgeu	$a2, $a3, .LBB1_2
.LBB1_10:                               # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a0, $a0, 1
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.11:                               # %invoke.cont11
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16
.Ltmp21:                                # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.12:                               # %invoke.cont14
                                        #   in Loop: Header=BB1_3 Depth=1
	st.w	$s0, $a0, 0
	b	.LBB1_3
.LBB1_13:                               # %while.end
	lu12i.w	$a0, 1
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	beq	$s1, $s2, .LBB1_25
# %bb.14:                               # %while.body.i.i.i13.preheader
	move	$fp, $zero
	addi.w	$s0, $zero, -1
	move	$a0, $s1
	.p2align	4, , 16
.LBB1_15:                               # %while.body.i.i.i13
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 16
	bne	$a0, $s2, .LBB1_15
# %bb.16:                               # %_ZSt10__distanceISt17_Rb_tree_iteratorISt4pairIKPKciEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 127
	bgeu	$s0, $a0, .LBB1_27
# %bb.17:                               # %for.inc.preheader.i.i.i.i.i.i
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.18:                               # %for.inc.i.i.i.i.i.i.preheader
	move	$s0, $a0
	move	$s3, $zero
	.p2align	4, , 16
.LBB1_19:                               # %for.inc.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 32
	ld.w	$a1, $s1, 40
	add.d	$a2, $s0, $s3
	stx.d	$a0, $s0, $s3
	st.w	$a1, $a2, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB1_19
# %bb.20:                               # %invoke.cont29
	add.d	$s1, $s0, $s3
	srai.d	$s2, $s3, 4
	clz.d	$a0, $s2
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp8:                                 # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.21:                               # %.noexc
.Ltmp10:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.22:                               # %for.body.preheader
	addi.d	$s3, $s0, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB1_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, 0
	ld.d	$a2, $s3, -8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB1_23
# %bb.24:                               # %if.then.i.i.i22
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit
	lu12i.w	$a0, 1
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
.Ltmp16:                                # EH_LABEL
	lu12i.w	$a0, 1
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.26:                               # %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev.exit
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 192
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_27:                               # %if.then.i.i.i.i
.Ltmp13:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.28:                               # %.noexc.i
.LBB1_29:                               # %terminate.lpad.i.i
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %lpad.loopexit.split-lp
.Ltmp2:                                 # EH_LABEL
	b	.LBB1_35
.LBB1_31:                               # %if.then.i.i.i30
.Ltmp12:                                # EH_LABEL
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_36
.LBB1_32:                               # %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EED2Ev.exit.i
.Ltmp15:                                # EH_LABEL
	b	.LBB1_35
.LBB1_33:                               # %lpad.loopexit
.Ltmp5:                                 # EH_LABEL
	b	.LBB1_35
.LBB1_34:                               # %lpad10
.Ltmp23:                                # EH_LABEL
.LBB1_35:                               # %ehcleanup59
	move	$s1, $a0
.LBB1_36:                               # %ehcleanup59
	lu12i.w	$a0, 1
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp6-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Ltmp11-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Lfunc_end1-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end1
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
	.section	.text._ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_,"axG",@progbits,_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_,comdat
	.weak	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_ # -- Begin function _ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_
	.p2align	5
	.type	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_,@function
_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_: # @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	ld.d	$a0, $a0, 16
	ld.d	$s4, $a1, 0
	addi.d	$s1, $fp, 8
	move	$s3, $s1
	beqz	$a0, .LBB2_5
# %bb.1:                                # %while.body.i.i.i.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_2:                                # %while.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s4
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s0, $a3
	or	$s0, $a3, $a4
	bnez	$a0, .LBB2_2
# %bb.3:                                # %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit
	move	$s3, $s1
	beq	$s0, $s1, .LBB2_5
# %bb.4:                                # %lor.rhs
	ld.d	$a0, $s0, 32
	move	$s3, $s0
	bgeu	$s4, $a0, .LBB2_12
.LBB2_5:                                # %if.then
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $a0, 32
	st.d	$s4, $a0, 32
	st.w	$zero, $a0, 40
.Ltmp24:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.6:                                # %invoke.cont7.i
	move	$a2, $a1
	beqz	$a1, .LBB2_11
# %bb.7:                                # %if.then.i
	ori	$a1, $zero, 1
	bnez	$a0, .LBB2_10
# %bb.8:                                # %if.then.i
	beq	$s1, $a2, .LBB2_10
# %bb.9:                                # %lor.rhs.i.i.i
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a2, 32
	sltu	$a1, $a0, $a1
.LBB2_10:                               # %cleanup.thread.i
	move	$a0, $a1
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB2_12
.LBB2_11:                               # %if.then.i7.i
	ori	$a1, $zero, 48
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $fp
.LBB2_12:                               # %if.end
	addi.d	$a0, $s0, 40
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB2_13:                               # %_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_Auto_nodeD2Ev.exit.i
.Ltmp26:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_, .Lfunc_end2-_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_,"aG",@progbits,_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev,"axG",@progbits,_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev,comdat
	.weak	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev # -- Begin function _ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev
	.p2align	5
	.type	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev,@function
_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev: # @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev
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
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_2:                                # %terminate.lpad.i
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev, .Lfunc_end3-_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev,"aG",@progbits,_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev,comdat
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E # -- Begin function _ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB5_4
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
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB5_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB5_4:                                # %while.end
	ret
.Lfunc_end5:
	.size	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, .Lfunc_end5-_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_,"axG",@progbits,_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_,comdat
	.weak	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ # -- Begin function _ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_
	.p2align	5
	.type	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_,@function
_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_: # @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_
	.cfi_startproc
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
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB6_5
# %bb.1:                                # %if.else10
	move	$a0, $a1
	ld.d	$s0, $a2, 0
	ld.d	$a1, $a1, 32
	bgeu	$s0, $a1, .LBB6_8
# %bb.2:                                # %if.then15
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB6_20
# %bb.3:                                # %if.else23
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$a1, $s0, .LBB6_21
# %bb.4:                                # %if.then29
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB6_36
.LBB6_5:                                # %if.then
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB6_12
# %bb.6:                                # %land.lhs.true
	ld.d	$a1, $a3, 32
	ld.d	$a0, $a1, 32
	ld.d	$a4, $a2, 0
	bgeu	$a0, $a4, .LBB6_12
.LBB6_7:
	move	$a0, $zero
	b	.LBB6_36
.LBB6_8:                                # %if.else40
	bgeu	$a1, $s0, .LBB6_19
# %bb.9:                                # %if.then45
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB6_26
# %bb.10:                               # %if.else53
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$s0, $a1, .LBB6_27
# %bb.11:                               # %if.then59
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB6_36
.LBB6_12:                               # %if.else
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB6_16
# %bb.13:                               # %while.body.lr.ph.i
	ld.d	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB6_14:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.d	$a4, $a5, 32
	sltu	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB6_14
# %bb.15:                               # %while.end.i
	move	$a0, $fp
	bgeu	$a1, $a4, .LBB6_18
.LBB6_16:                               # %if.then.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB6_35
# %bb.17:                               # %if.else.i
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a4, $a0, 32
	ld.d	$a1, $s0, 0
.LBB6_18:                               # %if.end12.i
	sltu	$a1, $a4, $a1
	b	.LBB6_34
.LBB6_19:
	move	$a1, $zero
	b	.LBB6_36
.LBB6_20:
	move	$a1, $a0
	b	.LBB6_36
.LBB6_21:                               # %if.else38
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB6_25
# %bb.22:                               # %while.body.i24.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB6_23:                               # %while.body.i24
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	sltu	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB6_23
# %bb.24:                               # %while.end.i32
	move	$a0, $fp
	bgeu	$s0, $a2, .LBB6_33
.LBB6_25:                               # %if.then.i44
	bne	$fp, $a1, .LBB6_32
	b	.LBB6_7
.LBB6_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB6_36
.LBB6_27:                               # %if.else69
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB6_31
# %bb.28:                               # %while.body.i67.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB6_29:                               # %while.body.i67
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	sltu	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB6_29
# %bb.30:                               # %while.end.i75
	move	$a0, $fp
	bgeu	$s0, $a2, .LBB6_33
.LBB6_31:                               # %if.then.i87
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB6_35
.LBB6_32:                               # %if.else.i91
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
.LBB6_33:                               # %if.end12.i76
	sltu	$a1, $a2, $s0
.LBB6_34:                               # %return
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	b	.LBB6_36
.LBB6_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB6_36:                               # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_, .Lfunc_end6-_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_
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
	move	$s0, $a1
	move	$fp, $a0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	ori	$a1, $zero, 17
	blt	$a0, $a1, .LBB7_19
# %bb.1:                                # %while.body.lr.ph
	move	$s1, $a2
	sub.d	$s4, $zero, $fp
	addi.w	$s5, $zero, -16
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s1, $s1, -1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s3
	srai.d	$a0, $a0, 4
	move	$s0, $s3
	ori	$a1, $zero, 16
	bge	$a1, $a0, .LBB7_19
.LBB7_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #       Child Loop BB7_8 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	beqz	$s1, .LBB7_17
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	slli.d	$a0, $a0, 3
	and	$a0, $a0, $s5
	add.d	$a2, $fp, $a0
	addi.d	$a3, $s0, -16
	move	$a0, $fp
	addi.d	$s3, $fp, 16
	move	$a1, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_)
	jirl	$ra, $ra, 0
	move	$s7, $s0
	.p2align	4, , 16
.LBB7_5:                                # %while.body.i.i3
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_8 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	ld.w	$s6, $fp, 8
	move	$s8, $s3
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB7_8 Depth=3
	bge	$s6, $s2, .LBB7_12
.LBB7_7:                                # %while.body11.i.i
                                        #   in Loop: Header=BB7_8 Depth=3
	addi.d	$s8, $s8, 16
	addi.d	$s3, $s3, 16
.LBB7_8:                                # %while.cond6.i.i
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s2, $s8, 8
	bne	$s2, $s6, .LBB7_6
# %bb.9:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
                                        #   in Loop: Header=BB7_8 Depth=3
	ld.d	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_5 Depth=2
	move	$s2, $s6
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %cond.true.i.i8.i.i
                                        #   in Loop: Header=BB7_12 Depth=3
	bge	$a0, $s6, .LBB7_15
.LBB7_12:                               # %while.end.i.i
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s7, $s7, -16
	ld.w	$a0, $s7, 8
	bne	$s6, $a0, .LBB7_11
# %bb.13:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit14.i.i
                                        #   in Loop: Header=BB7_12 Depth=3
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s7, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB7_12
# %bb.14:                               #   in Loop: Header=BB7_5 Depth=2
	move	$a0, $s6
.LBB7_15:                               # %while.end24.i.i
                                        #   in Loop: Header=BB7_5 Depth=2
	bgeu	$s8, $s7, .LBB7_2
# %bb.16:                               # %if.end.i.i
                                        #   in Loop: Header=BB7_5 Depth=2
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s8, 0
	st.d	$a1, $s8, 0
	st.d	$a2, $s7, 0
	st.w	$a0, $s8, 8
	st.w	$s2, $s7, 8
	addi.d	$s3, $s8, 16
	b	.LBB7_5
.LBB7_17:                               # %while.body.lr.ph.i.i
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s0, -8
	sub.d	$s0, $s0, $fp
	ori	$s2, $zero, 16
	.p2align	4, , 16
.LBB7_18:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	ld.d	$a3, $s1, -8
	ld.d	$a4, $s1, 0
	st.d	$a0, $s1, -8
	st.w	$a1, $s1, 0
	addi.d	$s0, $s0, -16
	srai.d	$a2, $s0, 4
	move	$a0, $fp
	move	$a1, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -16
	blt	$s2, $s0, .LBB7_18
.LBB7_19:                               # %while.end
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
.Lfunc_end7:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_, .Lfunc_end7-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 257
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	blt	$a0, $a1, .LBB8_25
# %bb.1:                                # %if.then
	bnez	$zero, .LBB8_16
# %bb.2:                                # %for.body.lr.ph.i
	move	$s4, $zero
	ori	$s5, $zero, 16
	addi.w	$s6, $zero, -16
	ori	$fp, $zero, 256
	move	$s8, $s0
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$s1, $s8, 0
	st.w	$s7, $s8, 8
	ori	$fp, $zero, 256
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	beq	$s5, $fp, .LBB8_16
.LBB8_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_14 Depth 2
	ld.w	$s7, $s8, 24
	ld.w	$a0, $s0, 8
	add.d	$s8, $s0, $s5
	bne	$s7, $a0, .LBB8_12
# %bb.5:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s1, $s8, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB8_13
.LBB8_6:                                # %if.else.i
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_7:                                # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i
                                        #   in Loop: Header=BB8_9 Depth=2
	ld.d	$s2, $fp, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB8_3
.LBB8_8:                                # %while.body.i15.i
                                        #   in Loop: Header=BB8_9 Depth=2
	st.d	$s2, $s8, 0
	st.w	$s3, $s8, 8
	move	$s8, $fp
.LBB8_9:                                # %while.cond.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s3, $s8, -8
	addi.d	$fp, $s8, -16
	beq	$s7, $s3, .LBB8_7
# %bb.10:                               # %cond.true.i.i.i.i
                                        #   in Loop: Header=BB8_9 Depth=2
	bge	$s3, $s7, .LBB8_3
# %bb.11:                               # %cond.true.i.i.while.body_crit_edge.i.i
                                        #   in Loop: Header=BB8_9 Depth=2
	ld.d	$s2, $fp, 0
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_12:                               # %cond.true.i.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s1, $s8, 0
	bge	$a0, $s7, .LBB8_6
.LBB8_13:                               # %if.then13.i
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB8_14:                               # %while.body.i.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a1, $s0, $a0
	add.d	$a2, $s0, $a0
	ld.w	$a3, $a2, 8
	st.d	$a1, $a2, 16
	addi.d	$a0, $a0, -16
	st.w	$a3, $a2, 24
	bne	$a0, $s6, .LBB8_14
# %bb.15:                               # %_ZSt23__copy_move_backward_a2ILb1EPSt4pairIPKciES4_ET1_T0_S6_S5_.exit.i
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$s1, $s0, 0
	st.w	$s7, $s0, 8
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	bne	$s5, $fp, .LBB8_4
.LBB8_16:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s6, $s0, 256
	beq	$s3, $s6, .LBB8_47
# %bb.17:                               # %for.body.i5.preheader
	addi.d	$s2, $s0, 264
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_18:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14
                                        #   in Loop: Header=BB8_19 Depth=1
	st.d	$s0, $s5, -8
	st.w	$s4, $s5, 0
	addi.d	$s6, $s6, 16
	addi.d	$s2, $s2, 16
	beq	$s6, $s3, .LBB8_47
.LBB8_19:                               # %for.body.i5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
	ld.d	$s0, $s6, 0
	ld.w	$s4, $s6, 8
	move	$s5, $s2
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_20:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i21
                                        #   in Loop: Header=BB8_22 Depth=2
	ld.d	$s1, $s5, -24
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB8_18
.LBB8_21:                               # %while.body.i.i19
                                        #   in Loop: Header=BB8_22 Depth=2
	st.d	$s1, $s5, -8
	st.w	$fp, $s5, 0
	addi.d	$s5, $s5, -16
.LBB8_22:                               # %while.cond.i.i7
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $s5, -16
	beq	$s4, $fp, .LBB8_20
# %bb.23:                               # %cond.true.i.i.i.i12
                                        #   in Loop: Header=BB8_22 Depth=2
	bge	$fp, $s4, .LBB8_18
# %bb.24:                               # %cond.true.i.i.while.body_crit_edge.i.i17
                                        #   in Loop: Header=BB8_22 Depth=2
	ld.d	$s1, $s5, -24
	b	.LBB8_21
.LBB8_25:                               # %if.else
	beq	$fp, $s0, .LBB8_47
# %bb.26:                               # %for.cond.preheader.i25
	addi.d	$a0, $s0, 16
	beq	$a0, $fp, .LBB8_47
# %bb.27:                               # %for.body.lr.ph.i28
	move	$s3, $zero
	addi.d	$s4, $s0, 8
	ori	$s5, $zero, 1
	move	$s2, $s0
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_28:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i47
                                        #   in Loop: Header=BB8_30 Depth=1
	st.d	$s1, $s7, 0
	st.w	$s8, $s7, 8
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
.LBB8_29:                               # %for.inc.i49
                                        #   in Loop: Header=BB8_30 Depth=1
	addi.d	$a0, $s6, 16
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 16
	move	$s2, $s6
	beq	$a0, $fp, .LBB8_47
.LBB8_30:                               # %for.body.i30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_35 Depth 2
                                        #     Child Loop BB8_42 Depth 2
                                        #     Child Loop BB8_45 Depth 2
	ld.w	$s8, $s2, 24
	ld.w	$a1, $s0, 8
	move	$s6, $a0
	addi.d	$s3, $s3, 1
	bne	$s8, $a1, .LBB8_38
# %bb.31:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i71
                                        #   in Loop: Header=BB8_30 Depth=1
	ld.d	$s1, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB8_39
.LBB8_32:                               # %if.else.i38
                                        #   in Loop: Header=BB8_30 Depth=1
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $s6
	b	.LBB8_35
	.p2align	4, , 16
.LBB8_33:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIPKciENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i56
                                        #   in Loop: Header=BB8_35 Depth=2
	ld.d	$s2, $fp, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB8_28
.LBB8_34:                               # %while.body.i15.i54
                                        #   in Loop: Header=BB8_35 Depth=2
	st.d	$s2, $s7, 0
	st.w	$s3, $s7, 8
	move	$s7, $fp
.LBB8_35:                               # %while.cond.i.i40
                                        #   Parent Loop BB8_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s3, $s7, -8
	addi.d	$fp, $s7, -16
	beq	$s8, $s3, .LBB8_33
# %bb.36:                               # %cond.true.i.i.i.i45
                                        #   in Loop: Header=BB8_35 Depth=2
	bge	$s3, $s8, .LBB8_28
# %bb.37:                               # %cond.true.i.i.while.body_crit_edge.i.i52
                                        #   in Loop: Header=BB8_35 Depth=2
	ld.d	$s2, $fp, 0
	b	.LBB8_34
	.p2align	4, , 16
.LBB8_38:                               # %cond.true.i.i.i35
                                        #   in Loop: Header=BB8_30 Depth=1
	ld.d	$s1, $s6, 0
	bge	$a1, $s8, .LBB8_32
.LBB8_39:                               # %if.then13.i59
                                        #   in Loop: Header=BB8_30 Depth=1
	addi.d	$a1, $s2, 32
	ori	$a0, $zero, 2
	bgeu	$s3, $a0, .LBB8_41
# %bb.40:                               #   in Loop: Header=BB8_30 Depth=1
	move	$a0, $s6
	b	.LBB8_44
	.p2align	4, , 16
.LBB8_41:                               # %vector.ph
                                        #   in Loop: Header=BB8_30 Depth=1
	move	$a3, $s5
	bstrins.d	$a3, $zero, 0, 0
	move	$a2, $s3
	bstrins.d	$a2, $zero, 0, 0
	slli.d	$a0, $a2, 4
	sub.d	$a1, $a1, $a0
	sub.d	$a0, $s6, $a0
	move	$a4, $s4
	.p2align	4, , 16
.LBB8_42:                               # %vector.body
                                        #   Parent Loop BB8_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, -8
	ld.d	$a6, $a4, -24
	ld.w	$a7, $a4, 0
	ld.w	$t0, $a4, -16
	st.d	$a5, $a4, 8
	st.d	$a6, $a4, -8
	st.w	$a7, $a4, 16
	st.w	$t0, $a4, 0
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, -32
	bnez	$a3, .LBB8_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB8_30 Depth=1
	beq	$s3, $a2, .LBB8_46
.LBB8_44:                               # %while.body.i.i62.preheader
                                        #   in Loop: Header=BB8_30 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB8_45:                               # %while.body.i.i62
                                        #   Parent Loop BB8_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, -16
	ld.w	$a3, $a0, -8
	addi.d	$a4, $a0, -16
	st.d	$a2, $a1, -8
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, -16
	move	$a0, $a4
	bne	$a4, $s0, .LBB8_45
.LBB8_46:                               # %_ZSt23__copy_move_backward_a2ILb1EPSt4pairIPKciES4_ET1_T0_S6_S5_.exit.i70
                                        #   in Loop: Header=BB8_30 Depth=1
	st.d	$s1, $s0, 0
	st.w	$s8, $s0, 8
	b	.LBB8_29
.LBB8_47:                               # %if.end
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
.Lfunc_end8:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_, .Lfunc_end8-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	srai.d	$s1, $a0, 4
	ori	$a0, $zero, 2
	move	$s2, $a2
	blt	$s1, $a0, .LBB9_3
# %bb.1:                                # %if.end.i
	addi.d	$a0, $s1, -2
	srli.d	$s3, $a0, 1
	alsl.d	$a0, $s3, $s0, 4
	addi.d	$s4, $a0, 8
	addi.w	$s5, $zero, -1
	.p2align	4, , 16
.LBB9_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, -8
	ld.d	$a4, $s4, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -16
	bne	$s3, $s5, .LBB9_2
.LBB9_3:                                # %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit
	bltu	$fp, $s2, .LBB9_7
.LBB9_4:                                # %for.cond.cleanup
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
	.p2align	4, , 16
.LBB9_5:                                # %if.then
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.d	$a4, $fp, 8
	st.d	$s4, $fp, 0
	st.w	$s5, $fp, 8
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s3
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_7 Depth=1
	addi.d	$fp, $fp, 16
	bgeu	$fp, $s2, .LBB9_4
.LBB9_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 8
	ld.w	$s5, $s0, 8
	bne	$a0, $s5, .LBB9_9
# %bb.8:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.d	$s3, $fp, 0
	ld.d	$s4, $s0, 0
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB9_5
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_9:                                # %cond.true.i.i
                                        #   in Loop: Header=BB9_7 Depth=1
	bge	$s5, $a0, .LBB9_6
# %bb.10:                               # %cond.true.i.i.if.then_crit_edge
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.d	$s3, $fp, 0
	ld.d	$s4, $s0, 0
	b	.LBB9_5
.Lfunc_end9:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_, .Lfunc_end9-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ # -- Begin function _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_
	.p2align	5
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_,@function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_: # @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_
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
	move	$s3, $a2
	addi.d	$a2, $a2, -1
	srli.d	$a5, $a2, 63
	add.d	$a2, $a2, $a5
	srai.d	$s5, $a2, 1
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a1
	move	$s1, $a0
	move	$s4, $a1
	bge	$a1, $s5, .LBB10_6
# %bb.1:                                # %while.body.preheader
	move	$s6, $s2
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               # %cond.false.i.i
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	slt	$a0, $zero, $a0
.LBB10_3:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s7, $a0
	or	$s4, $a0, $a1
	alsl.d	$a0, $s4, $s1, 4
	slli.d	$a1, $s4, 4
	ldx.d	$a1, $s1, $a1
	ld.w	$a0, $a0, 8
	alsl.d	$a2, $s6, $s1, 4
	slli.d	$a3, $s6, 4
	stx.d	$a1, $s1, $a3
	st.w	$a0, $a2, 8
	move	$s6, $s4
	bge	$s4, $s5, .LBB10_6
.LBB10_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $s6, 1
	addi.d	$s4, $a1, 2
	alsl.d	$a0, $s4, $s1, 4
	addi.d	$s7, $a1, 1
	alsl.d	$a1, $s7, $s1, 4
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a1, 8
	beq	$a2, $a3, .LBB10_2
# %bb.5:                                # %cond.true.i.i
                                        #   in Loop: Header=BB10_4 Depth=1
	slt	$a0, $a3, $a2
	b	.LBB10_3
.LBB10_6:                               # %while.end
	andi	$a0, $s3, 1
	bnez	$a0, .LBB10_9
# %bb.7:                                # %land.lhs.true
	addi.d	$a0, $s3, -2
	srai.d	$a0, $a0, 1
	bne	$s4, $a0, .LBB10_9
# %bb.8:                                # %if.then27
	slli.d	$a0, $s4, 1
	addi.d	$a0, $a0, 1
	alsl.d	$a1, $a0, $s1, 4
	slli.d	$a2, $a0, 4
	ldx.d	$a2, $s1, $a2
	ld.w	$a1, $a1, 8
	alsl.d	$a3, $s4, $s1, 4
	slli.d	$a4, $s4, 4
	stx.d	$a2, $s1, $a4
	st.w	$a1, $a3, 8
	move	$s4, $a0
.LBB10_9:                               # %if.end43
	bge	$s2, $s4, .LBB10_16
# %bb.10:                               # %land.rhs.i.preheader
	addi.w	$s6, $fp, 0
	b	.LBB10_13
	.p2align	4, , 16
.LBB10_11:                              # %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.d	$s3, $a0, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB10_16
.LBB10_12:                              # %while.body.i
                                        #   in Loop: Header=BB10_13 Depth=1
	alsl.d	$a0, $s4, $s1, 4
	slli.d	$a1, $s4, 4
	stx.d	$s3, $s1, $a1
	st.w	$s7, $a0, 8
	move	$s4, $s5
	bge	$s2, $s5, .LBB10_17
.LBB10_13:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s4, -1
	srli.d	$a1, $a0, 63
	add.d	$a0, $a0, $a1
	srai.d	$s5, $a0, 1
	alsl.d	$a0, $s5, $s1, 4
	ld.w	$s7, $a0, 8
	beq	$s7, $s6, .LBB10_11
# %bb.14:                               # %cond.true.i.i.i
                                        #   in Loop: Header=BB10_13 Depth=1
	bge	$s6, $s7, .LBB10_16
# %bb.15:                               # %cond.true.i.i.while.body_crit_edge.i
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.d	$s3, $a0, 0
	b	.LBB10_12
.LBB10_16:
	move	$s5, $s4
.LBB10_17:                              # %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_.exit
	alsl.d	$a0, $s5, $s1, 4
	slli.d	$a1, $s5, 4
	stx.d	$s0, $s1, $a1
	st.w	$fp, $a0, 8
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
.Lfunc_end10:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_, .Lfunc_end10-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_,comdat
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ # -- Begin function _ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_
	.p2align	5
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_,@function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_: # @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_
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
	move	$s1, $a2
	move	$s2, $a1
	ld.w	$s4, $a1, 8
	ld.w	$s5, $a2, 8
	move	$s0, $a3
	move	$fp, $a0
	bne	$s4, $s5, .LBB11_4
# %bb.1:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB11_5
.LBB11_2:                               # %if.else48
	ld.w	$s6, $s0, 8
	bne	$s4, $s6, .LBB11_7
# %bb.3:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit46
	ld.d	$s3, $s2, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB11_9
	b	.LBB11_13
.LBB11_4:                               # %cond.true.i.i
	bge	$s5, $s4, .LBB11_2
.LBB11_5:                               # %if.then
	ld.w	$s6, $s0, 8
	bne	$s5, $s6, .LBB11_10
# %bb.6:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit12
	ld.d	$s3, $s1, 0
	ld.d	$a1, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB11_12
	b	.LBB11_15
.LBB11_7:                               # %cond.true.i.i40
	bge	$s6, $s4, .LBB11_13
# %bb.8:                                # %cond.true.i.i40.if.then56_crit_edge
	ld.d	$s3, $s2, 0
.LBB11_9:                               # %if.then56
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.d	$s3, $fp, 0
	b	.LBB11_26
.LBB11_10:                              # %cond.true.i.i6
	bge	$s6, $s5, .LBB11_15
# %bb.11:                               # %cond.true.i.i6.if.then19_crit_edge
	ld.d	$s3, $s1, 0
.LBB11_12:                              # %if.then19
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.d	$s3, $fp, 0
	b	.LBB11_20
.LBB11_13:                              # %if.else63
	bne	$s5, $s6, .LBB11_17
# %bb.14:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit62
	ld.d	$s2, $s1, 0
	ld.d	$s3, $s0, 0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB11_19
	b	.LBB11_23
.LBB11_15:                              # %if.else
	bne	$s4, $s6, .LBB11_21
# %bb.16:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIPKciESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26
	ld.d	$s1, $s2, 0
	ld.d	$s3, $s0, 0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB11_23
	b	.LBB11_25
.LBB11_17:                              # %cond.true.i.i56
	blt	$s6, $s5, .LBB11_22
# %bb.18:                               # %cond.true.i.i56.if.else78_crit_edge
	ld.d	$s2, $s1, 0
.LBB11_19:                              # %if.else78
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.d	$s2, $fp, 0
.LBB11_20:                              # %if.end87
	st.d	$a0, $s1, 0
	st.w	$s5, $fp, 8
	st.w	$a1, $s1, 8
	b	.LBB11_27
.LBB11_21:                              # %cond.true.i.i20
	bge	$s6, $s4, .LBB11_24
.LBB11_22:                              # %cond.true.i.i20.if.then33_crit_edge
	ld.d	$s3, $s0, 0
.LBB11_23:                              # %if.then33
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.d	$s3, $fp, 0
	st.d	$a0, $s0, 0
	st.w	$s6, $fp, 8
	st.w	$a1, $s0, 8
	b	.LBB11_27
.LBB11_24:                              # %cond.true.i.i20.if.else40_crit_edge
	ld.d	$s1, $s2, 0
.LBB11_25:                              # %if.else40
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.d	$s1, $fp, 0
.LBB11_26:                              # %if.end87
	st.d	$a0, $s2, 0
	st.w	$s4, $fp, 8
	st.w	$a1, $s2, 8
.LBB11_27:                              # %if.end87
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
.Lfunc_end11:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_, .Lfunc_end11-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%7d\t%s\n"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.1, 49

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
