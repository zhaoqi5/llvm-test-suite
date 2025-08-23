	.file	"user_counters_thousands_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_Z21BM_Counters_ThousandsRN9benchmark5StateE # -- Begin function _Z21BM_Counters_ThousandsRN9benchmark5StateE
	.globl	_Z21BM_Counters_ThousandsRN9benchmark5StateE
	.p2align	5
	.type	_Z21BM_Counters_ThousandsRN9benchmark5StateE,@function
_Z21BM_Counters_ThousandsRN9benchmark5StateE: # @_Z21BM_Counters_ThousandsRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.w	$s1, $a0, 28
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_3
# %bb.1:                                # %entry
	beqz	$fp, .LBB0_3
# %bb.2:                                # %for.body.preheader
	srai.d	$a0, $fp, 63
	andn	$a0, $fp, $a0
	addi.d	$a1, $fp, -1
	bgeu	$a1, $a0, .LBB0_23
.LBB0_3:                                # %for.cond.cleanup
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 16
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 256
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.d	$a3, $a2, 13
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	st.d	$a3, $a0, 13
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$s2, $a0, 1042
	st.d	$s2, $sp, 48
	lu32i.d	$s1, 1000
	st.d	$s1, $sp, 56
	addi.d	$fp, $sp, 64
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 64
	ori	$s3, $zero, 18
	st.d	$s3, $sp, 256
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:                                # %call2.i5.i1.i.noexc37
	ld.d	$a1, $sp, 256
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
	st.d	$s2, $sp, 96
	st.d	$s1, $sp, 104
	addi.d	$s1, $sp, 112
	addi.d	$s7, $sp, 128
	st.d	$s7, $sp, 112
	st.d	$s3, $sp, 256
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:                                # %call2.i5.i1.i.noexc49
	ld.d	$a1, $sp, 256
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 112
	st.d	$a1, $sp, 120
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	st.d	$a0, $sp, 144
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1024
	st.d	$a0, $sp, 152
	addi.d	$s2, $sp, 160
	addi.d	$s8, $sp, 176
	st.d	$s8, $sp, 160
	ori	$s4, $zero, 18
	st.d	$s4, $sp, 256
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.6:                                # %call2.i5.i1.i.noexc62
	ld.d	$a1, $sp, 256
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	lu52i.d	$s6, $zero, 1043
	st.d	$s6, $sp, 192
	lu32i.d	$s3, 1000
	st.d	$s3, $sp, 200
	addi.d	$s3, $sp, 208
	addi.d	$s5, $sp, 224
	st.d	$s5, $sp, 208
	st.d	$s4, $sp, 256
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:                                # %call2.i5.i1.i.noexc75
	ld.d	$a1, $sp, 256
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 208
	st.d	$a1, $sp, 224
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 208
	addi.d	$s4, $s0, 64
	st.d	$a1, $sp, 216
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 240
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1024
	st.d	$a0, $sp, 248
	st.d	$s4, $sp, 256
	addi.d	$s0, $s0, 72
.Ltmp12:                                # EH_LABEL
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.8:                                # %call3.i.i.i.noexc
.Ltmp14:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.9:                                # %call3.i.i.i.noexc.1
.Ltmp16:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.10:                               # %call3.i.i.i.noexc.2
.Ltmp18:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.11:                               # %call3.i.i.i.noexc.3
.Ltmp20:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.12:                               # %call3.i.i.i.noexc.4
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB0_14
# %bb.13:                               # %if.then.i.i.i79
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit
	ld.d	$a0, $sp, 160
	beq	$a0, $s8, .LBB0_16
# %bb.15:                               # %if.then.i.i.i79.1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.1
	ld.d	$a0, $sp, 112
	addi.d	$fp, $sp, 32
	addi.d	$s0, $sp, 80
	beq	$a0, $s7, .LBB0_18
# %bb.17:                               # %if.then.i.i.i79.2
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.2
	ld.d	$a0, $sp, 64
	beq	$a0, $s0, .LBB0_20
# %bb.19:                               # %if.then.i.i.i79.3
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.3
	ld.d	$a0, $sp, 16
	beq	$a0, $fp, .LBB0_22
# %bb.21:                               # %if.then.i.i.i79.4
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.4
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB0_23:                               # %cond.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %lpad23
.Ltmp11:                                # EH_LABEL
	move	$s0, $a0
	move	$fp, $s3
	b	.LBB0_28
.LBB0_25:                               # %lpad18
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	move	$fp, $s2
	b	.LBB0_28
.LBB0_26:                               # %lpad13
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	move	$fp, $s1
	b	.LBB0_28
.LBB0_27:                               # %lpad8
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.LBB0_28:                               # %ehcleanup38
	addi.d	$s1, $sp, 16
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit93
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$fp, $fp, -48
	beq	$fp, $s1, .LBB0_37
.LBB0_30:                               # %arraydestroy.body40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $fp, -32
	beq	$a1, $a0, .LBB0_29
# %bb.31:                               # %if.then.i.i.i88
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_29
.LBB0_32:                               # %lpad26
.Ltmp22:                                # EH_LABEL
	ld.d	$a2, $sp, 208
	move	$s0, $a0
	bne	$a2, $s5, .LBB0_38
# %bb.33:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit86
	ld.d	$a0, $sp, 160
	bne	$a0, $s8, .LBB0_39
.LBB0_34:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit86.1
	ld.d	$a0, $sp, 112
	bne	$a0, $s7, .LBB0_40
.LBB0_35:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit86.2
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB0_41
.LBB0_36:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit86.3
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	bne	$a0, $a1, .LBB0_42
.LBB0_37:                               # %cleanup.done
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_38:                               # %if.then.i.i.i81
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160
	beq	$a0, $s8, .LBB0_34
.LBB0_39:                               # %if.then.i.i.i81.1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB0_35
.LBB0_40:                               # %if.then.i.i.i81.2
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	beq	$a0, $a1, .LBB0_36
.LBB0_41:                               # %if.then.i.i.i81.3
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB0_37
.LBB0_42:                               # %if.then.i.i.i81.4
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z21BM_Counters_ThousandsRN9benchmark5StateE, .Lfunc_end0-_Z21BM_Counters_ThousandsRN9benchmark5StateE
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp12                #   Call between .Ltmp12 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z14CheckThousandsRK7Results
.LCPI2_0:
	.dword	0xc12e848000000000              # double -1.0E+6
.LCPI2_1:
	.dword	0x4059000000000000              # double 100
.LCPI2_2:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI2_3:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI2_4:
	.dword	0xc130000000000000              # double -1048576
.LCPI2_5:
	.dword	0x405a36e2eb1c432d              # double 104.85760000000001
.LCPI2_6:
	.dword	0x3eb0000000000000              # double 9.5367431640625E-7
	.text
	.hidden	_Z14CheckThousandsRK7Results
	.globl	_Z14CheckThousandsRK7Results
	.p2align	5
	.type	_Z14CheckThousandsRK7Results,@function
_Z14CheckThousandsRK7Results:           # @_Z14CheckThousandsRK7Results
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 31
	bne	$a0, $a1, .LBB2_447
# %bb.1:                                # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_447
# %bb.2:                                # %if.end
	addi.d	$s0, $sp, 184
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.3:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$s5, $a2, %pc_lo12(.L.str)
	vld	$vr0, $s5, 0
	ld.d	$s4, $s5, 13
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp26:                                # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.4:                                # %invoke.cont3
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_1)
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_7
# %bb.5:                                # %cond.false
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 160
	ori	$a4, $zero, 174
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.6:                                # %invoke.cont9
	ld.d	$s6, $sp, 160
	b	.LBB2_8
.LBB2_7:                                # %cond.true
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_458
.LBB2_8:                                # %cond.end
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.9:                                # %if.then.i
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.10:                               # %invoke.cont14
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.11:                               # %if.then.i118
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.12:                               # %invoke.cont16
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.13:                               # %if.then.i123
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.14:                               # %invoke.cont18
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.15:                               # %if.then.i129
.Ltmp38:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.16:                               # %invoke.cont22
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.17:                               # %if.then.i132
.Ltmp40:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.18:                               # %invoke.cont24
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.19:                               # %if.then.i137
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.20:                               # %invoke.cont27
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.21:                               # %if.then.i142
.Ltmp44:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.22:                               # %invoke.cont29
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.23:                               # %if.then.i148
.Ltmp46:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.24:                               # %invoke.cont31
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.25:                               # %if.then.i154
.Ltmp48:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.26:                               # %invoke.cont33
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.27:                               # %if.then.i160
.Ltmp51:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.28:                               # %invoke.cont37
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.29:                               # %if.then.i165
.Ltmp53:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.30:                               # %invoke.cont39
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.31:                               # %if.then.i171
.Ltmp55:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.32:                               # %invoke.cont41
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.33:                               # %if.then.i176
.Ltmp57:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.34:                               # %invoke.cont43
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.35:                               # %if.then.i181
.Ltmp59:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.36:                               # %invoke.cont45
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.37:                               # %if.then.i187
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 21
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.38:                               # %invoke.cont47
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.39:                               # %if.then.i192
.Ltmp63:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
.LBB2_40:                               # %invoke.cont49
	addi.d	$s1, $sp, 144
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 96
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.41:                               # %call2.i5.i.noexc206
	ld.d	$a1, $sp, 96
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp69:                                # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.42:                               # %invoke.cont57
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.43:                               # %if.then.i213
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.44:                               # %invoke.cont59
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.45:                               # %if.then.i217
.Ltmp73:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.46:                               # %invoke.cont61
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.47:                               # %if.then.i222
.Ltmp76:                                # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.48:                               # %invoke.cont65
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.49:                               # %if.then.i227
.Ltmp78:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.50:                               # %invoke.cont67
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.51:                               # %if.then.i233
.Ltmp80:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.52:                               # %invoke.cont69
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.53:                               # %if.then.i239
.Ltmp82:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.54:                               # %invoke.cont71
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.55:                               # %if.then.i245
.Ltmp85:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.56:                               # %invoke.cont75
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.57:                               # %if.then.i250
.Ltmp87:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.58:                               # %invoke.cont77
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.59:                               # %if.then.i256
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.60:                               # %invoke.cont79
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.61:                               # %if.then.i261
.Ltmp92:                                # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.62:                               # %invoke.cont83
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.63:                               # %if.then.i266
.Ltmp94:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.64:                               # %invoke.cont85
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.65:                               # %if.then.i272
.Ltmp97:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.66:                               # %invoke.cont89
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.67:                               # %if.then.i277
.Ltmp99:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.68:                               # %invoke.cont91
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.69:                               # %if.then.i282
.Ltmp101:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
.LBB2_70:                               # %invoke.cont93
	addi.d	$s2, $sp, 112
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 64
.Ltmp104:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.71:                               # %call2.i5.i.noexc295
	ld.d	$a1, $sp, 64
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp107:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.72:                               # %invoke.cont101
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_76
# %bb.73:                               # %if.then.i302
	fadd.d	$fa0, $fa0, $fs1
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.74:                               # %invoke.cont104
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_76
# %bb.75:                               # %if.then.i307
.Ltmp111:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
.LBB2_76:                               # %invoke.cont106
	addi.d	$s3, $sp, 80
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 200
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.77:                               # %call2.i5.i.noexc321
	ld.d	$a1, $sp, 200
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp117:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.78:                               # %invoke.cont114
	ld.d	$a0, $s6, 0
	pcalau12i	$s4, %pc_hi20(.LCPI2_3)
	beqz	$a0, .LBB2_82
# %bb.79:                               # %if.then.i328
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.80:                               # %invoke.cont117
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_82
# %bb.81:                               # %if.then.i333
.Ltmp121:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
.LBB2_82:                               # %invoke.cont119
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_84
# %bb.83:                               # %if.then.i.i339
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_86
# %bb.85:                               # %if.then.i.i342
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_86:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_88
# %bb.87:                               # %if.then.i.i349
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_448
# %bb.89:                               # %cleanup.done148
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_91
# %bb.90:                               # %if.then.i.i377
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.92:                               # %call2.i5.i.noexc392
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$s6, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp127:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.93:                               # %invoke.cont162
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_96
# %bb.94:                               # %cond.false169
.Ltmp130:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 56
	ori	$a4, $zero, 175
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.95:                               # %invoke.cont173
	ld.d	$s7, $sp, 56
	b	.LBB2_97
.LBB2_96:                               # %cond.true166
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_460
.LBB2_97:                               # %cond.end178
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.98:                               # %if.then.i404
.Ltmp132:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.99:                               # %invoke.cont180
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.100:                              # %if.then.i410
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.101:                              # %invoke.cont182
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.102:                              # %if.then.i416
.Ltmp136:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.103:                              # %invoke.cont184
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.104:                              # %if.then.i422
.Ltmp139:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.105:                              # %invoke.cont188
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.106:                              # %if.then.i427
.Ltmp141:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.107:                              # %invoke.cont190
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.108:                              # %if.then.i433
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.109:                              # %invoke.cont193
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.110:                              # %if.then.i440
.Ltmp145:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.111:                              # %invoke.cont195
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.112:                              # %if.then.i446
.Ltmp147:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.113:                              # %invoke.cont197
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.114:                              # %if.then.i452
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.115:                              # %invoke.cont199
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.116:                              # %if.then.i458
.Ltmp152:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.117:                              # %invoke.cont203
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.118:                              # %if.then.i463
.Ltmp154:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.119:                              # %invoke.cont205
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.120:                              # %if.then.i469
.Ltmp156:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.121:                              # %invoke.cont207
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.122:                              # %if.then.i475
.Ltmp158:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.123:                              # %invoke.cont209
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.124:                              # %if.then.i481
.Ltmp160:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.125:                              # %invoke.cont211
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.126:                              # %if.then.i487
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.127:                              # %invoke.cont213
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.128:                              # %if.then.i493
.Ltmp164:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
.LBB2_129:                              # %invoke.cont215
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp167:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.130:                              # %call2.i5.i.noexc507
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp170:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.131:                              # %invoke.cont223
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.132:                              # %if.then.i514
.Ltmp172:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.133:                              # %invoke.cont225
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.134:                              # %if.then.i519
.Ltmp174:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.135:                              # %invoke.cont227
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.136:                              # %if.then.i525
.Ltmp177:                               # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.137:                              # %invoke.cont231
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.138:                              # %if.then.i530
.Ltmp179:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.139:                              # %invoke.cont233
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.140:                              # %if.then.i536
.Ltmp181:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.141:                              # %invoke.cont235
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.142:                              # %if.then.i542
.Ltmp183:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.143:                              # %invoke.cont237
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.144:                              # %if.then.i548
.Ltmp186:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.145:                              # %invoke.cont241
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.146:                              # %if.then.i553
.Ltmp188:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.147:                              # %invoke.cont243
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.148:                              # %if.then.i559
.Ltmp190:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.149:                              # %invoke.cont245
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.150:                              # %if.then.i565
.Ltmp193:                               # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.151:                              # %invoke.cont249
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.152:                              # %if.then.i570
.Ltmp195:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.153:                              # %invoke.cont251
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.154:                              # %if.then.i576
.Ltmp198:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.155:                              # %invoke.cont255
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.156:                              # %if.then.i581
.Ltmp200:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.157:                              # %invoke.cont257
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.158:                              # %if.then.i587
.Ltmp202:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
.LBB2_159:                              # %invoke.cont259
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp205:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.160:                              # %call2.i5.i.noexc601
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp208:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.161:                              # %invoke.cont267
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_165
# %bb.162:                              # %if.then.i608
	fadd.d	$fa0, $fa0, $fs1
.Ltmp210:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.163:                              # %invoke.cont270
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_165
# %bb.164:                              # %if.then.i613
.Ltmp212:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
.LBB2_165:                              # %invoke.cont272
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.166:                              # %call2.i5.i.noexc627
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp218:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.167:                              # %invoke.cont280
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_171
# %bb.168:                              # %if.then.i634
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.169:                              # %invoke.cont285
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_171
# %bb.170:                              # %if.then.i639
.Ltmp222:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
.LBB2_171:                              # %invoke.cont287
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_173
# %bb.172:                              # %if.then.i.i645
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_173:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_175
# %bb.174:                              # %if.then.i.i652
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_175:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_177
# %bb.176:                              # %if.then.i.i659
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_177:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_450
# %bb.178:                              # %cleanup.done321
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_180
# %bb.179:                              # %if.then.i.i694
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp225:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.181:                              # %call2.i5.i.noexc709
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$s6, $a2, %pc_lo12(.L.str.2)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp228:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.182:                              # %invoke.cont335
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_185
# %bb.183:                              # %cond.false342
.Ltmp231:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 48
	ori	$a4, $zero, 176
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.184:                              # %invoke.cont346
	ld.d	$s7, $sp, 48
	b	.LBB2_186
.LBB2_185:                              # %cond.true339
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_462
.LBB2_186:                              # %cond.end351
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.187:                              # %if.then.i721
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.188:                              # %invoke.cont353
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.189:                              # %if.then.i727
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.190:                              # %invoke.cont355
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.191:                              # %if.then.i733
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.192:                              # %invoke.cont357
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.193:                              # %if.then.i739
.Ltmp240:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.194:                              # %invoke.cont361
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.195:                              # %if.then.i744
.Ltmp242:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.196:                              # %invoke.cont363
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.197:                              # %if.then.i750
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp244:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.198:                              # %invoke.cont366
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.199:                              # %if.then.i757
.Ltmp246:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.200:                              # %invoke.cont368
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.201:                              # %if.then.i763
.Ltmp248:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp249:                               # EH_LABEL
# %bb.202:                              # %invoke.cont370
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.203:                              # %if.then.i769
.Ltmp250:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.204:                              # %invoke.cont372
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.205:                              # %if.then.i775
.Ltmp253:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.206:                              # %invoke.cont376
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.207:                              # %if.then.i780
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.208:                              # %invoke.cont378
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.209:                              # %if.then.i786
.Ltmp257:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.210:                              # %invoke.cont380
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.211:                              # %if.then.i792
.Ltmp259:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.212:                              # %invoke.cont382
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.213:                              # %if.then.i798
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.214:                              # %invoke.cont384
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.215:                              # %if.then.i804
.Ltmp263:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.216:                              # %invoke.cont386
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.217:                              # %if.then.i810
.Ltmp265:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
.LBB2_218:                              # %invoke.cont388
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp268:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.219:                              # %call2.i5.i.noexc824
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp271:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.220:                              # %invoke.cont396
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.221:                              # %if.then.i831
.Ltmp273:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.222:                              # %invoke.cont398
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.223:                              # %if.then.i836
.Ltmp275:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.224:                              # %invoke.cont400
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.225:                              # %if.then.i842
.Ltmp278:                               # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.226:                              # %invoke.cont404
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.227:                              # %if.then.i847
.Ltmp280:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.228:                              # %invoke.cont406
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.229:                              # %if.then.i853
.Ltmp282:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.230:                              # %invoke.cont408
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.231:                              # %if.then.i859
.Ltmp284:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.232:                              # %invoke.cont410
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.233:                              # %if.then.i865
.Ltmp287:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.234:                              # %invoke.cont414
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.235:                              # %if.then.i870
.Ltmp289:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.236:                              # %invoke.cont416
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.237:                              # %if.then.i876
.Ltmp291:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.238:                              # %invoke.cont418
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.239:                              # %if.then.i882
.Ltmp294:                               # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.240:                              # %invoke.cont422
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.241:                              # %if.then.i887
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.242:                              # %invoke.cont424
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.243:                              # %if.then.i893
.Ltmp299:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.244:                              # %invoke.cont428
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.245:                              # %if.then.i898
.Ltmp301:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.246:                              # %invoke.cont430
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.247:                              # %if.then.i904
.Ltmp303:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
.LBB2_248:                              # %invoke.cont432
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp306:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.249:                              # %call2.i5.i.noexc918
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp309:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.250:                              # %invoke.cont440
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_254
# %bb.251:                              # %if.then.i925
	fadd.d	$fa0, $fa0, $fs1
.Ltmp311:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.252:                              # %invoke.cont443
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_254
# %bb.253:                              # %if.then.i930
.Ltmp313:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
.LBB2_254:                              # %invoke.cont445
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp316:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.255:                              # %call2.i5.i.noexc944
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp319:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.256:                              # %invoke.cont453
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_260
# %bb.257:                              # %if.then.i951
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp321:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.258:                              # %invoke.cont458
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_260
# %bb.259:                              # %if.then.i956
.Ltmp323:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
.LBB2_260:                              # %invoke.cont460
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_262
# %bb.261:                              # %if.then.i.i962
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_262:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_264
# %bb.263:                              # %if.then.i.i969
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_264:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_266
# %bb.265:                              # %if.then.i.i976
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_266:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit981
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_452
# %bb.267:                              # %cleanup.done494
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_269
# %bb.268:                              # %if.then.i.i1011
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_269:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp326:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.270:                              # %call2.i5.i.noexc1026
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$s5, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $s5, 0
	ld.h	$s4, $s5, 16
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp329:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.271:                              # %invoke.cont508
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_5)
	fadd.d	$fa0, $fa0, $fs2
	fabs.d	$fs3, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fs3
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_274
# %bb.272:                              # %cond.false515
.Ltmp332:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 40
	ori	$a4, $zero, 177
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp333:                               # EH_LABEL
# %bb.273:                              # %invoke.cont519
	ld.d	$s6, $sp, 40
	b	.LBB2_275
.LBB2_274:                              # %cond.true512
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_464
.LBB2_275:                              # %cond.end524
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.276:                              # %if.then.i1038
.Ltmp334:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.277:                              # %invoke.cont526
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.278:                              # %if.then.i1044
.Ltmp336:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.279:                              # %invoke.cont528
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.280:                              # %if.then.i1050
.Ltmp338:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.281:                              # %invoke.cont530
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.282:                              # %if.then.i1056
.Ltmp341:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.283:                              # %invoke.cont534
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.284:                              # %if.then.i1061
.Ltmp343:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.285:                              # %invoke.cont536
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.286:                              # %if.then.i1067
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.287:                              # %invoke.cont539
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.288:                              # %if.then.i1074
.Ltmp347:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.289:                              # %invoke.cont541
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.290:                              # %if.then.i1080
.Ltmp349:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.291:                              # %invoke.cont543
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.292:                              # %if.then.i1086
.Ltmp351:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.293:                              # %invoke.cont545
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.294:                              # %if.then.i1092
.Ltmp354:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.295:                              # %invoke.cont549
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.296:                              # %if.then.i1097
.Ltmp356:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.297:                              # %invoke.cont551
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.298:                              # %if.then.i1103
.Ltmp358:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.299:                              # %invoke.cont553
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.300:                              # %if.then.i1109
.Ltmp360:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.301:                              # %invoke.cont555
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.302:                              # %if.then.i1115
.Ltmp362:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.303:                              # %invoke.cont557
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.304:                              # %if.then.i1121
.Ltmp364:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.305:                              # %invoke.cont559
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.306:                              # %if.then.i1127
.Ltmp366:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
.LBB2_307:                              # %invoke.cont561
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp369:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.308:                              # %call2.i5.i.noexc1141
	ld.d	$a1, $sp, 96
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp372:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.309:                              # %invoke.cont569
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.310:                              # %if.then.i1148
.Ltmp374:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.311:                              # %invoke.cont571
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.312:                              # %if.then.i1153
.Ltmp376:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.313:                              # %invoke.cont573
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.314:                              # %if.then.i1159
.Ltmp379:                               # EH_LABEL
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.315:                              # %invoke.cont577
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.316:                              # %if.then.i1164
.Ltmp381:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.317:                              # %invoke.cont579
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.318:                              # %if.then.i1170
.Ltmp383:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.319:                              # %invoke.cont581
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.320:                              # %if.then.i1176
.Ltmp385:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.321:                              # %invoke.cont583
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.322:                              # %if.then.i1182
.Ltmp388:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.323:                              # %invoke.cont587
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.324:                              # %if.then.i1187
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.325:                              # %invoke.cont589
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.326:                              # %if.then.i1193
.Ltmp392:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
# %bb.327:                              # %invoke.cont591
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.328:                              # %if.then.i1199
.Ltmp395:                               # EH_LABEL
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.329:                              # %invoke.cont595
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.330:                              # %if.then.i1204
.Ltmp397:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.331:                              # %invoke.cont597
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.332:                              # %if.then.i1210
.Ltmp400:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.333:                              # %invoke.cont601
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.334:                              # %if.then.i1215
.Ltmp402:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.335:                              # %invoke.cont603
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.336:                              # %if.then.i1221
.Ltmp404:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
.LBB2_337:                              # %invoke.cont605
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp407:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.338:                              # %call2.i5.i.noexc1235
	ld.d	$a1, $sp, 64
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp410:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.339:                              # %invoke.cont613
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_343
# %bb.340:                              # %if.then.i1242
	fadd.d	$fa0, $fa0, $fs2
.Ltmp412:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.341:                              # %invoke.cont616
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_343
# %bb.342:                              # %if.then.i1247
.Ltmp414:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
.LBB2_343:                              # %invoke.cont618
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp417:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.344:                              # %call2.i5.i.noexc1261
	ld.d	$a1, $sp, 200
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp420:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.345:                              # %invoke.cont626
	ld.d	$a0, $s6, 0
	pcalau12i	$s4, %pc_hi20(.LCPI2_6)
	beqz	$a0, .LBB2_349
# %bb.346:                              # %if.then.i1268
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_6)
	fadd.d	$fa0, $fa0, $fs2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp422:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.347:                              # %invoke.cont631
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_349
# %bb.348:                              # %if.then.i1273
.Ltmp424:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
.LBB2_349:                              # %invoke.cont633
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_351
# %bb.350:                              # %if.then.i.i1279
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_351:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1284
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_353
# %bb.352:                              # %if.then.i.i1286
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_353:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1291
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_355
# %bb.354:                              # %if.then.i.i1293
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_355:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298
	fcmp.clt.d	$fcc0, $fs3, $fs1
	bceqz	$fcc0, .LBB2_454
# %bb.356:                              # %cleanup.done667
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_358
# %bb.357:                              # %if.then.i.i1328
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_358:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1333
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp427:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.359:                              # %call2.i5.i.noexc1343
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$s6, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp430:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.360:                              # %invoke.cont681
	fadd.d	$fa0, $fa0, $fs2
	fabs.d	$fs3, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fs3
	bceqz	$fcc0, .LBB2_363
# %bb.361:                              # %cond.false688
.Ltmp433:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 32
	ori	$a4, $zero, 178
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.362:                              # %invoke.cont692
	ld.d	$s7, $sp, 32
	b	.LBB2_364
.LBB2_363:                              # %cond.true685
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_466
.LBB2_364:                              # %cond.end697
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.365:                              # %if.then.i1355
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.366:                              # %invoke.cont699
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.367:                              # %if.then.i1361
.Ltmp437:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.368:                              # %invoke.cont701
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.369:                              # %if.then.i1367
.Ltmp439:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
# %bb.370:                              # %invoke.cont703
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.371:                              # %if.then.i1373
.Ltmp442:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.372:                              # %invoke.cont707
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.373:                              # %if.then.i1378
.Ltmp444:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.374:                              # %invoke.cont709
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.375:                              # %if.then.i1384
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.376:                              # %invoke.cont712
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.377:                              # %if.then.i1391
.Ltmp448:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.378:                              # %invoke.cont714
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.379:                              # %if.then.i1397
.Ltmp450:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.380:                              # %invoke.cont716
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.381:                              # %if.then.i1403
.Ltmp452:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp453:                               # EH_LABEL
# %bb.382:                              # %invoke.cont718
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.383:                              # %if.then.i1409
.Ltmp455:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.384:                              # %invoke.cont722
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.385:                              # %if.then.i1414
.Ltmp457:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp458:                               # EH_LABEL
# %bb.386:                              # %invoke.cont724
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.387:                              # %if.then.i1420
.Ltmp459:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.388:                              # %invoke.cont726
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.389:                              # %if.then.i1426
.Ltmp461:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.390:                              # %invoke.cont728
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.391:                              # %if.then.i1432
.Ltmp463:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
# %bb.392:                              # %invoke.cont730
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.393:                              # %if.then.i1438
.Ltmp465:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.394:                              # %invoke.cont732
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.395:                              # %if.then.i1444
.Ltmp467:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp468:                               # EH_LABEL
.LBB2_396:                              # %invoke.cont734
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp470:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.397:                              # %call2.i5.i.noexc1458
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp473:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.398:                              # %invoke.cont742
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.399:                              # %if.then.i1465
.Ltmp475:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.400:                              # %invoke.cont744
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.401:                              # %if.then.i1470
.Ltmp477:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.402:                              # %invoke.cont746
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.403:                              # %if.then.i1476
.Ltmp480:                               # EH_LABEL
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.404:                              # %invoke.cont750
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.405:                              # %if.then.i1481
.Ltmp482:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp483:                               # EH_LABEL
# %bb.406:                              # %invoke.cont752
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.407:                              # %if.then.i1487
.Ltmp484:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp485:                               # EH_LABEL
# %bb.408:                              # %invoke.cont754
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.409:                              # %if.then.i1493
.Ltmp486:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.410:                              # %invoke.cont756
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.411:                              # %if.then.i1499
.Ltmp489:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.412:                              # %invoke.cont760
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.413:                              # %if.then.i1504
.Ltmp491:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.414:                              # %invoke.cont762
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.415:                              # %if.then.i1510
.Ltmp493:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.416:                              # %invoke.cont764
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.417:                              # %if.then.i1516
.Ltmp496:                               # EH_LABEL
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
# %bb.418:                              # %invoke.cont768
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.419:                              # %if.then.i1521
.Ltmp498:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.420:                              # %invoke.cont770
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.421:                              # %if.then.i1527
.Ltmp501:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.422:                              # %invoke.cont774
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.423:                              # %if.then.i1532
.Ltmp503:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.424:                              # %invoke.cont776
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.425:                              # %if.then.i1538
.Ltmp505:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
.LBB2_426:                              # %invoke.cont778
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp508:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp509:                               # EH_LABEL
# %bb.427:                              # %call2.i5.i.noexc1552
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp511:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.428:                              # %invoke.cont786
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_432
# %bb.429:                              # %if.then.i1559
	fadd.d	$fa0, $fa0, $fs2
.Ltmp513:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.430:                              # %invoke.cont789
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_432
# %bb.431:                              # %if.then.i1564
.Ltmp515:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
.LBB2_432:                              # %invoke.cont791
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp518:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp519:                               # EH_LABEL
# %bb.433:                              # %call2.i5.i.noexc1578
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp521:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp522:                               # EH_LABEL
# %bb.434:                              # %invoke.cont799
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_438
# %bb.435:                              # %if.then.i1585
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_6)
	fadd.d	$fa0, $fa0, $fs2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp523:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp524:                               # EH_LABEL
# %bb.436:                              # %invoke.cont804
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_438
# %bb.437:                              # %if.then.i1590
.Ltmp525:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
.LBB2_438:                              # %invoke.cont806
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_440
# %bb.439:                              # %if.then.i.i1596
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_440:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1601
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_442
# %bb.441:                              # %if.then.i.i1603
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_442:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1608
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_444
# %bb.443:                              # %if.then.i.i1610
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_444:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1615
	fcmp.clt.d	$fcc0, $fs3, $fs1
	bceqz	$fcc0, .LBB2_456
# %bb.445:                              # %cleanup.done840
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_447
# %bb.446:                              # %if.then.i.i1645
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_447:                              # %return
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
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
.LBB2_448:                              # %cleanup.action
.Ltmp543:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.449:                              # %invoke.cont140
.LBB2_450:                              # %cleanup.action311
.Ltmp540:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.451:                              # %invoke.cont312
.LBB2_452:                              # %cleanup.action484
.Ltmp537:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.453:                              # %invoke.cont485
.LBB2_454:                              # %cleanup.action657
.Ltmp534:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.455:                              # %invoke.cont658
.LBB2_456:                              # %cleanup.action830
.Ltmp531:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.457:                              # %invoke.cont831
.LBB2_458:                              # %init.check.i
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_8
# %bb.459:                              # %init.i
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s6, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_460:                              # %init.check.i399
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_97
# %bb.461:                              # %init.i401
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_97
.LBB2_462:                              # %init.check.i716
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_186
# %bb.463:                              # %init.i718
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_186
.LBB2_464:                              # %init.check.i1033
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_275
# %bb.465:                              # %init.i1035
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s6, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_275
.LBB2_466:                              # %init.check.i1350
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_364
# %bb.467:                              # %init.i1352
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_364
.LBB2_468:                              # %lpad773
.Ltmp507:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_469:                              # %lpad600
.Ltmp406:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_470:                              # %lpad427
.Ltmp305:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_471:                              # %lpad254
.Ltmp204:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_472:                              # %lpad88
.Ltmp103:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_473:                              # %lpad767
.Ltmp500:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_474:                              # %lpad594
.Ltmp399:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_475:                              # %lpad421
.Ltmp298:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_476:                              # %lpad248
.Ltmp197:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_477:                              # %lpad82
.Ltmp96:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_478:                              # %lpad721
.Ltmp469:                               # EH_LABEL
	b	.LBB2_524
.LBB2_479:                              # %lpad548
.Ltmp368:                               # EH_LABEL
	b	.LBB2_526
.LBB2_480:                              # %lpad375
.Ltmp267:                               # EH_LABEL
	b	.LBB2_528
.LBB2_481:                              # %lpad202
.Ltmp166:                               # EH_LABEL
	b	.LBB2_530
.LBB2_482:                              # %lpad36
.Ltmp65:                                # EH_LABEL
	b	.LBB2_532
.LBB2_483:                              # %lpad759
.Ltmp495:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_484:                              # %lpad586
.Ltmp394:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_485:                              # %lpad413
.Ltmp293:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_486:                              # %lpad240
.Ltmp192:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_487:                              # %lpad74
.Ltmp91:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_488:                              # %lpad706
.Ltmp454:                               # EH_LABEL
	b	.LBB2_524
.LBB2_489:                              # %lpad533
.Ltmp353:                               # EH_LABEL
	b	.LBB2_526
.LBB2_490:                              # %lpad360
.Ltmp252:                               # EH_LABEL
	b	.LBB2_528
.LBB2_491:                              # %lpad187
.Ltmp151:                               # EH_LABEL
	b	.LBB2_530
.LBB2_492:                              # %lpad21
.Ltmp50:                                # EH_LABEL
	b	.LBB2_532
.LBB2_493:                              # %lpad749
.Ltmp488:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_494:                              # %lpad576
.Ltmp387:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_495:                              # %lpad403
.Ltmp286:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_496:                              # %lpad230
.Ltmp185:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_497:                              # %lpad64
.Ltmp84:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_498:                              # %lpad796
.Ltmp520:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
	b	.LBB2_548
.LBB2_499:                              # %lpad783
.Ltmp510:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_500:                              # %lpad739
.Ltmp472:                               # EH_LABEL
	b	.LBB2_524
.LBB2_501:                              # %lpad680
.Ltmp432:                               # EH_LABEL
	b	.LBB2_538
.LBB2_502:                              # %lpad678
.Ltmp429:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_503:                              # %lpad623
.Ltmp419:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
	b	.LBB2_557
.LBB2_504:                              # %lpad610
.Ltmp409:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_505:                              # %lpad566
.Ltmp371:                               # EH_LABEL
	b	.LBB2_526
.LBB2_506:                              # %lpad507
.Ltmp331:                               # EH_LABEL
	b	.LBB2_538
.LBB2_507:                              # %lpad505
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_508:                              # %lpad450
.Ltmp318:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
	b	.LBB2_566
.LBB2_509:                              # %lpad437
.Ltmp308:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_510:                              # %lpad393
.Ltmp270:                               # EH_LABEL
	b	.LBB2_528
.LBB2_511:                              # %lpad334
.Ltmp230:                               # EH_LABEL
	b	.LBB2_538
.LBB2_512:                              # %lpad332
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_513:                              # %lpad277
.Ltmp217:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
	b	.LBB2_575
.LBB2_514:                              # %lpad264
.Ltmp207:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_515:                              # %lpad220
.Ltmp169:                               # EH_LABEL
	b	.LBB2_530
.LBB2_516:                              # %lpad161
.Ltmp129:                               # EH_LABEL
	b	.LBB2_538
.LBB2_517:                              # %lpad159
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_518:                              # %lpad111
.Ltmp116:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
	b	.LBB2_588
.LBB2_519:                              # %lpad98
.Ltmp106:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_520:                              # %lpad54
.Ltmp68:                                # EH_LABEL
	b	.LBB2_532
.LBB2_521:                              # %lpad2
.Ltmp28:                                # EH_LABEL
	b	.LBB2_538
.LBB2_522:                              # %lpad
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_523:                              # %lpad694
.Ltmp441:                               # EH_LABEL
.LBB2_524:                              # %ehcleanup833
	move	$fp, $a0
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bcnez	$fcc0, .LBB2_543
	b	.LBB2_584
.LBB2_525:                              # %lpad521
.Ltmp340:                               # EH_LABEL
.LBB2_526:                              # %ehcleanup660
	move	$fp, $a0
	b	.LBB2_554
.LBB2_527:                              # %lpad348
.Ltmp239:                               # EH_LABEL
.LBB2_528:                              # %ehcleanup487
	move	$fp, $a0
	b	.LBB2_563
.LBB2_529:                              # %lpad175
.Ltmp138:                               # EH_LABEL
.LBB2_530:                              # %ehcleanup314
	move	$fp, $a0
	b	.LBB2_572
.LBB2_531:                              # %lpad11
.Ltmp37:                                # EH_LABEL
.LBB2_532:                              # %ehcleanup141
	move	$fp, $a0
	b	.LBB2_582
.LBB2_533:                              # %cleanup.action843
.Ltmp533:                               # EH_LABEL
	b	.LBB2_538
.LBB2_534:                              # %cleanup.action670
.Ltmp536:                               # EH_LABEL
	b	.LBB2_538
.LBB2_535:                              # %cleanup.action497
.Ltmp539:                               # EH_LABEL
	b	.LBB2_538
.LBB2_536:                              # %cleanup.action324
.Ltmp542:                               # EH_LABEL
	b	.LBB2_538
.LBB2_537:                              # %cleanup.action151
.Ltmp545:                               # EH_LABEL
.LBB2_538:                              # %ehcleanup845
	move	$fp, $a0
	b	.LBB2_543
.LBB2_539:                              # %lpad798
.Ltmp527:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_546
# %bb.540:                              # %ehcleanup813
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_548
.LBB2_541:                              # %ehcleanup822
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_550
.LBB2_542:                              # %ehcleanup833
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bceqz	$fcc0, .LBB2_584
.LBB2_543:                              # %ehcleanup845
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_545
# %bb.544:                              # %if.then.i.i1652
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_545:                              # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_546:                              # %if.then.i.i1624
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
	b	.LBB2_548
.LBB2_547:                              # %lpad785
.Ltmp517:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
.LBB2_548:                              # %if.then.i.i1631
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_549:                              # %lpad741
.Ltmp479:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
.LBB2_550:                              # %if.then.i.i1638
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bcnez	$fcc0, .LBB2_543
	b	.LBB2_584
.LBB2_551:                              # %lpad625
.Ltmp426:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_555
# %bb.552:                              # %ehcleanup640
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_557
.LBB2_553:                              # %ehcleanup649
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_558
.LBB2_554:                              # %ehcleanup660
	addi.d	$a0, $sp, 40
	b	.LBB2_583
.LBB2_555:                              # %if.then.i.i1307
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
	b	.LBB2_557
.LBB2_556:                              # %lpad612
.Ltmp416:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
.LBB2_557:                              # %if.then.i.i1314
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
.LBB2_558:                              # %if.then.i.i1321
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	b	.LBB2_583
.LBB2_559:                              # %lpad568
.Ltmp378:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_560:                              # %lpad452
.Ltmp325:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_564
# %bb.561:                              # %ehcleanup467
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_566
.LBB2_562:                              # %ehcleanup476
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_567
.LBB2_563:                              # %ehcleanup487
	addi.d	$a0, $sp, 48
	b	.LBB2_583
.LBB2_564:                              # %if.then.i.i990
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
	b	.LBB2_566
.LBB2_565:                              # %lpad439
.Ltmp315:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
.LBB2_566:                              # %if.then.i.i997
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
.LBB2_567:                              # %if.then.i.i1004
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	b	.LBB2_583
.LBB2_568:                              # %lpad395
.Ltmp277:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_569:                              # %lpad279
.Ltmp224:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_573
# %bb.570:                              # %ehcleanup294
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_575
.LBB2_571:                              # %ehcleanup303
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_576
.LBB2_572:                              # %ehcleanup314
	addi.d	$a0, $sp, 56
	b	.LBB2_583
.LBB2_573:                              # %if.then.i.i673
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
	b	.LBB2_575
.LBB2_574:                              # %lpad266
.Ltmp214:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
.LBB2_575:                              # %if.then.i.i680
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
.LBB2_576:                              # %if.then.i.i687
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	b	.LBB2_583
.LBB2_577:                              # %lpad222
.Ltmp176:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_578:                              # %lpad113
.Ltmp123:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_586
# %bb.579:                              # %ehcleanup124
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_588
.LBB2_580:                              # %ehcleanup133
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_582
.LBB2_581:                              # %if.then.i.i370
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_582:                              # %ehcleanup141
	addi.d	$a0, $sp, 160
.LBB2_583:                              # %ehcleanup141
	ld.d	$a1, $sp, 24
	movgr2cf	$fcc0, $a1
	bceqz	$fcc0, .LBB2_543
.LBB2_584:                              # %cleanup.action835.invoke
.Ltmp528:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.585:                              # %cleanup.action835.cont
.LBB2_586:                              # %if.then.i.i356
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
	b	.LBB2_588
.LBB2_587:                              # %lpad100
.Ltmp113:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
.LBB2_588:                              # %if.then.i.i363
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_589:                              # %lpad56
.Ltmp75:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_590:                              # %terminate.lpad
.Ltmp530:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z14CheckThousandsRK7Results, .Lfunc_end2-_Z14CheckThousandsRK7Results
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp545-.Lfunc_begin1         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp31                #   Call between .Ltmp31 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp38                #   Call between .Ltmp38 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin1          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp64-.Ltmp51                #   Call between .Ltmp51 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin1          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp74-.Ltmp69                #   Call between .Ltmp69 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp83-.Ltmp76                #   Call between .Ltmp76 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp90-.Ltmp85                #   Call between .Ltmp85 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp95-.Ltmp92                #   Call between .Ltmp92 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp102-.Ltmp97               #   Call between .Ltmp97 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin1         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin1         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp112-.Ltmp107              #   Call between .Ltmp107 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp122-.Ltmp117              #   Call between .Ltmp117 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp124-.Ltmp122              #   Call between .Ltmp122 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin1         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp542-.Lfunc_begin1         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp137-.Ltmp132              #   Call between .Ltmp132 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin1         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp150-.Ltmp139              #   Call between .Ltmp139 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp165-.Ltmp152              #   Call between .Ltmp152 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin1         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin1         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp175-.Ltmp170              #   Call between .Ltmp170 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp184-.Ltmp177              #   Call between .Ltmp177 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp191-.Ltmp186              #   Call between .Ltmp186 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp196-.Ltmp193              #   Call between .Ltmp193 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp203-.Ltmp198              #   Call between .Ltmp198 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp213-.Ltmp208              #   Call between .Ltmp208 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp223-.Ltmp218              #   Call between .Ltmp218 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin1         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin1         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin1         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp539-.Lfunc_begin1         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp238-.Ltmp233              #   Call between .Ltmp233 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin1         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp251-.Ltmp240              #   Call between .Ltmp240 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp266-.Ltmp253              #   Call between .Ltmp253 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin1         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin1         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp276-.Ltmp271              #   Call between .Ltmp271 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp285-.Ltmp278              #   Call between .Ltmp278 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin1         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp292-.Ltmp287              #   Call between .Ltmp287 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin1         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp297-.Ltmp294              #   Call between .Ltmp294 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin1         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp304-.Ltmp299              #   Call between .Ltmp299 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin1         #     jumps to .Ltmp305
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin1         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp314-.Ltmp309              #   Call between .Ltmp309 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin1         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin1         #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp324-.Ltmp319              #   Call between .Ltmp319 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin1         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin1         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin1         #     jumps to .Ltmp331
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp536-.Lfunc_begin1         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp339-.Ltmp334              #   Call between .Ltmp334 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin1         #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp352-.Ltmp341              #   Call between .Ltmp341 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin1         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp367-.Ltmp354              #   Call between .Ltmp354 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin1         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin1         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp377-.Ltmp372              #   Call between .Ltmp372 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin1         #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp386-.Ltmp379              #   Call between .Ltmp379 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin1         #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp393-.Ltmp388              #   Call between .Ltmp388 and .Ltmp393
	.uleb128 .Ltmp394-.Lfunc_begin1         #     jumps to .Ltmp394
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp398-.Ltmp395              #   Call between .Ltmp395 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin1         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp405-.Ltmp400              #   Call between .Ltmp400 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin1         #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp409-.Lfunc_begin1         #     jumps to .Ltmp409
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp415-.Ltmp410              #   Call between .Ltmp410 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin1         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin1         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp425-.Ltmp420              #   Call between .Ltmp420 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin1         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp427-.Ltmp425              #   Call between .Ltmp425 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin1         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp432-.Lfunc_begin1         #     jumps to .Ltmp432
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.uleb128 .Ltmp533-.Lfunc_begin1         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp440-.Ltmp435              #   Call between .Ltmp435 and .Ltmp440
	.uleb128 .Ltmp441-.Lfunc_begin1         #     jumps to .Ltmp441
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp453-.Ltmp442              #   Call between .Ltmp442 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin1         #     jumps to .Ltmp454
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp468-.Ltmp455              #   Call between .Ltmp455 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin1         #     jumps to .Ltmp469
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin1         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp478-.Ltmp473              #   Call between .Ltmp473 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp487-.Ltmp480              #   Call between .Ltmp480 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp494-.Ltmp489              #   Call between .Ltmp489 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin1         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp499-.Ltmp496              #   Call between .Ltmp496 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin1         #     jumps to .Ltmp500
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp506-.Ltmp501              #   Call between .Ltmp501 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin1         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp510-.Lfunc_begin1         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp516-.Ltmp511              #   Call between .Ltmp511 and .Ltmp516
	.uleb128 .Ltmp517-.Lfunc_begin1         #     jumps to .Ltmp517
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp519-.Ltmp518              #   Call between .Ltmp518 and .Ltmp519
	.uleb128 .Ltmp520-.Lfunc_begin1         #     jumps to .Ltmp520
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp526-.Ltmp521              #   Call between .Ltmp521 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin1         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp543-.Ltmp526              #   Call between .Ltmp526 and .Ltmp543
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin1         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin1         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin1         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin1         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin1         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp528-.Ltmp532              #   Call between .Ltmp532 and .Ltmp528
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin1         #     jumps to .Ltmp530
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp529-.Lfunc_begin1         # >> Call Site 94 <<
	.uleb128 .Lfunc_end2-.Ltmp529           #   Call between .Ltmp529 and .Lfunc_end2
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
	.section	.text._ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i # -- Begin function _ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.weak	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.p2align	2
	.type	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,@function
_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i: # @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
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
	pcalau12i	$a5, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	ld.b	$a5, $a5, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s1, $a4
	move	$s0, $a3
	move	$fp, $a1
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$s4, $a1, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a5, .LBB3_18
.LBB3_1:                                # %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit
	ld.d	$s2, $s4, 0
	st.d	$s4, $a0, 0
	beqz	$s2, .LBB3_17
# %bb.2:                                # %if.then.i
	beqz	$a2, .LBB3_4
# %bb.3:                                # %if.else.i.i
	move	$a0, $a2
	move	$s3, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB3_5
	b	.LBB3_17
.LBB3_4:                                # %if.then.i.i
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
.LBB3_5:                                # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.6:                                # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.7:                                # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, 0
	beqz	$s1, .LBB3_17
# %bb.8:                                # %if.then.i13
	beqz	$s0, .LBB3_10
# %bb.9:                                # %if.else.i.i15
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB3_11
	b	.LBB3_17
.LBB3_10:                               # %if.then.i.i18
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
.LBB3_11:                               # %_ZN9benchmark8internallsIA10_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 0
	beqz	$s0, .LBB3_17
# %bb.12:                               # %if.then.i31
	beqz	$fp, .LBB3_14
# %bb.13:                               # %if.else.i.i33
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_15
.LBB3_14:                               # %if.then.i.i36
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %_ZN9benchmark8internallsIPKcEERNS0_7LogTypeES5_RKT_.exit43
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.16:                               # %if.then.i45
	pcalau12i	$a1, %pc_hi20(.L.str.80)
	addi.d	$a1, $a1, %pc_lo12(.L.str.80)
	ori	$a2, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.LBB3_17:                               # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_18:                               # %init.check.i
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s2, $a0
	move	$a0, $a1
	move	$s3, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a1, $a0
	move	$a0, $s2
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB3_1
# %bb.19:                               # %init.i
	pcalau12i	$a0, %got_pc_hi20(_ZSt4clog)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4clog)
	st.d	$a0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a2, $s3
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i, .Lfunc_end3-_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerD2Ev,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerD2Ev,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerD2Ev # -- Begin function _ZN9benchmark8internal12CheckHandlerD2Ev
	.weak	_ZN9benchmark8internal12CheckHandlerD2Ev
	.p2align	2
	.type	_ZN9benchmark8internal12CheckHandlerD2Ev,@function
_ZN9benchmark8internal12CheckHandlerD2Ev: # @_ZN9benchmark8internal12CheckHandlerD2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB4_7
# %bb.1:                                # %if.then.i
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	bnez	$s0, .LBB4_3
# %bb.2:                                # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	bnez	$a0, .LBB4_5
# %bb.4:                                # %if.end.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	b	.LBB4_6
.LBB4_5:                                # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
.LBB4_6:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZN9benchmark8internallsERNS0_7LogTypeEPFRSoS3_E.exit
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16CallAbortHandlerEv)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark8internal12CheckHandlerD2Ev, .Lfunc_end4-_ZN9benchmark8internal12CheckHandlerD2Ev
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
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.text
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
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
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
	beqz	$a0, .LBB7_3
# %bb.1:                                # %if.then.i.i
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_4
.LBB7_2:                                # %if.then.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB7_3:                                # %if.else.i.i
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB7_2
.LBB7_4:                                # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end7-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal16CallAbortHandlerEv,"axG",@progbits,_ZN9benchmark8internal16CallAbortHandlerEv,comdat
	.hidden	_ZN9benchmark8internal16CallAbortHandlerEv # -- Begin function _ZN9benchmark8internal16CallAbortHandlerEv
	.weak	_ZN9benchmark8internal16CallAbortHandlerEv
	.p2align	5
	.type	_ZN9benchmark8internal16CallAbortHandlerEv,@function
_ZN9benchmark8internal16CallAbortHandlerEv: # @_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15GetAbortHandlerEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	jirl	$ra, $a0, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9benchmark8internal16CallAbortHandlerEv, .Lfunc_end8-_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
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
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
	beqz	$a1, .LBB9_8
# %bb.1:                                # %if.then
	move	$s1, $a1
	addi.d	$s2, $fp, 8
	ori	$s4, $zero, 1
	bnez	$a0, .LBB9_7
# %bb.2:                                # %if.then
	beq	$s2, $s1, .LBB9_7
# %bb.3:                                # %lor.rhs.i
	ld.d	$s4, $s0, 8
	ld.d	$s5, $s1, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB9_5
# %bb.4:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
	ld.d	$a1, $s1, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_6
.LBB9_5:                                # %if.then.i.i.i.i
	sub.d	$a0, $s4, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB9_6:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
	addi.w	$a0, $a0, 0
	slti	$s4, $a0, 0
.LBB9_7:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit
	ld.d	$s3, $s3, 0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
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
.LBB9_8:                                # %cleanup
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
.Lfunc_end9:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_, .Lfunc_end9-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	move	$s1, $a0
	addi.d	$a0, $a0, 8
	move	$s0, $a2
	beq	$a0, $a1, .LBB10_4
# %bb.1:                                # %if.else10
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB10_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i16
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit26.thread
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB10_12
	b	.LBB10_18
.LBB10_4:                               # %if.then
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB10_28
# %bb.5:                                # %land.lhs.true
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB10_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB10_8
.LBB10_7:                               # %if.then.i.i.i
	sub.d	$a0, $fp, $s2
	lu12i.w	$a2, -524288
	slt	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
.LBB10_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB10_28
# %bb.9:
	move	$fp, $zero
	b	.LBB10_29
.LBB10_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit26
	bltu	$s5, $s6, .LBB10_12
	b	.LBB10_19
.LBB10_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit26.thread113
	bgeu	$s5, $s6, .LBB10_18
.LBB10_12:                              # %if.then15
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB10_22
# %bb.13:                               # %if.else23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s5, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_15
# %bb.14:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i37
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_16
.LBB10_15:                              # %if.then.i.i.i42
	sub.d	$a0, $s3, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB10_16:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit47
	addi.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB10_28
# %bb.17:                               # %if.then29
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB10_29
.LBB10_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i58
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_20
.LBB10_19:                              # %if.then.i.i.i63
	sub.d	$a0, $s6, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB10_20:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit68
	addi.w	$a0, $a0, 0
	addi.w	$s3, $zero, -1
	bge	$s3, $a0, .LBB10_23
# %bb.21:
	move	$a1, $zero
	b	.LBB10_29
.LBB10_22:
	move	$a1, $fp
	b	.LBB10_29
.LBB10_23:                              # %if.then45
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB10_30
# %bb.24:                               # %if.else53
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s4, $a0, 40
	sltu	$a0, $s4, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_26
# %bb.25:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i80
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_27
.LBB10_26:                              # %if.then.i.i.i85
	sub.d	$a0, $s5, $s4
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB10_27:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit90
	addi.w	$a0, $a0, 0
	bge	$s3, $a0, .LBB10_31
.LBB10_28:                              # %if.else69
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB10_29:                              # %return
	move	$a0, $fp
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
.LBB10_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB10_29
.LBB10_31:                              # %if.then59
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB10_29
.Lfunc_end10:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end10-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
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
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a1
	lu12i.w	$s4, -524288
	lu12i.w	$s3, 524287
	beqz	$a0, .LBB11_13
# %bb.1:                                # %while.body.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB11_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB11_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB11_6
.LBB11_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB11_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_3
	b	.LBB11_2
.LBB11_6:                               # %while.end
	addi.w	$a0, $zero, -1
	move	$s2, $fp
	lu12i.w	$s3, 524287
	blt	$a0, $a1, .LBB11_9
# %bb.7:                                # %if.then
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB11_14
.LBB11_8:                               # %if.else
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB11_9:                               # %if.end12
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB11_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_12
.LBB11_11:                              # %if.then.i.i.i16
	sub.d	$a0, $s1, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	ori	$a1, $s3, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB11_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit21
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB11_15
.LBB11_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB11_8
.LBB11_14:
	move	$a0, $zero
.LBB11_15:                              # %cleanup
	move	$a1, $fp
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
.Lfunc_end11:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end11-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$a1, $a2, 8
	ld.d	$s2, $a2, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB12_3
# %bb.1:                                # %if.then.i.i.i
.Ltmp546:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.2:                                # %call.i4.i.i.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB12_3:                               # %if.end.i.i.i
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB12_7
# %bb.4:                                # %if.end.i.i.i
	bnez	$a1, .LBB12_6
# %bb.5:                                # %if.then.i.i.i.i
	ld.b	$a0, $s2, 0
	st.b	$a0, $s1, 0
	b	.LBB12_7
.LBB12_6:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %try.cont
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 40
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 64
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB12_8:                               # %lpad
.Ltmp548:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp549:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.9:                                # %unreachable
.LBB12_10:                              # %lpad4
.Ltmp551:                               # EH_LABEL
	move	$fp, $a0
.Ltmp552:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.11:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_12:                              # %terminate.lpad
.Ltmp554:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end12-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp546-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin2         #     jumps to .Ltmp548
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp547-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp549-.Ltmp547              #   Call between .Ltmp547 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Lfunc_end12-.Ltmp553          #   Call between .Ltmp553 and .Lfunc_end12
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
	.section	.text._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.hidden	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	2
	.type	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
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
	ld.d	$s5, $a0, 48
	beqz	$s5, .LBB13_20
# %bb.1:                                # %while.body.lr.ph.i.i.i.i
	addi.d	$s1, $a0, 40
	ld.d	$s4, $a1, 8
	ld.d	$fp, $a1, 0
	lu12i.w	$s3, -524288
	lu12i.w	$a0, 524287
	ori	$s2, $a0, 4095
	ori	$s6, $zero, 16
	ori	$s7, $zero, 24
	move	$s0, $s1
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a0, $s8, $s4
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB13_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s5, .LBB13_6
.LBB13_4:                               # %while.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s5, 40
	sltu	$a0, $s4, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB13_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_3
	b	.LBB13_2
.LBB13_6:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSG_RS7_.exit.i.i.i
	beq	$s0, $s1, .LBB13_20
# %bb.7:                                # %lor.lhs.false.i.i.i
	ld.d	$s5, $s0, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB13_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_10
.LBB13_9:                               # %if.then.i.i.i.i.i.i
	sub.d	$a0, $s4, $s5
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB13_10:                              # %_ZNK7Results3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB13_20
# %bb.11:                               # %land.lhs.true
	ld.d	$a1, $s0, 72
	beqz	$a1, .LBB13_20
# %bb.12:                               # %cond.true
	slti	$a0, $a0, 0
	pcalau12i	$fp, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a2
	dbar	20
	beqz	$a1, .LBB13_21
.LBB13_13:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 64
	ld.d	$a2, $s0, 72
	addi.d	$a0, $sp, 40
.Ltmp555:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.14:                               # %invoke.cont
.Ltmp558:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	addi.d	$s0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIdEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.15:                               # %invoke.cont11
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB13_23
# %bb.16:                               # %cond.true16
	ld.b	$a0, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB13_26
.LBB13_17:                              # %cleanup.done34
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	addi.d	$s0, $sp, 24
	stx.d	$a1, $a0, $s0
	ld.d	$a1, $fp, 72
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	fld.d	$fs0, $sp, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 40
	addi.d	$a1, $a2, 16
	addi.d	$a2, $sp, 136
	st.d	$a1, $sp, 48
	beq	$a0, $a2, .LBB13_19
# %bb.18:                               # %if.then.i.i.i.i.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_19:                              # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 48
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB13_20:                              # %cond.false
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 24
	ori	$a4, $zero, 144
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB13_21:                              # %init.check.i
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB13_13
# %bb.22:                               # %init.i
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB13_13
.LBB13_23:                              # %cond.false19
.Ltmp561:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 8
	ori	$a4, $zero, 149
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.24:                               # %cleanup.action29
.Ltmp563:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.25:                               # %invoke.cont30
.LBB13_26:                              # %init.check.i8
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB13_17
# %bb.27:                               # %init.i10
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB13_17
.LBB13_28:                              # %lpad22
.Ltmp565:                               # EH_LABEL
	b	.LBB13_31
.LBB13_29:                              # %lpad10
.Ltmp560:                               # EH_LABEL
	b	.LBB13_31
.LBB13_30:                              # %lpad
.Ltmp557:                               # EH_LABEL
.LBB13_31:                              # %ehcleanup38
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end13-_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp555-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp555
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin3         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin3         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp561-.Ltmp559              #   Call between .Ltmp559 and .Ltmp561
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp564-.Ltmp561              #   Call between .Ltmp561 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin3         #     jumps to .Ltmp565
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Lfunc_end13-.Ltmp564          #   Call between .Ltmp564 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_ # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.p2align	2
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	move	$a0, $a1
	jr	$a2
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_, .Lfunc_end14-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.p2align	2
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a2, .LBB15_6
# %bb.1:                                # %entry
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB15_4
# %bb.2:                                # %entry
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB15_5
# %bb.3:                                # %sw.epilog
	move	$a0, $zero
	ret
.LBB15_4:                               # %sw.bb4.i
	ld.d	$a1, $a1, 0
.LBB15_5:                               # %sw.epilog.sink.split
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.LBB15_6:
	pcalau12i	$a1, %pc_hi20(_ZTIPFvRK7ResultsE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIPFvRK7ResultsE)
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .Lfunc_end15-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_user_counters_thousands_test.cc
	.type	_GLOBAL__sub_I_user_counters_thousands_test.cc,@function
_GLOBAL__sub_I_user_counters_thousands_test.cc: # @_GLOBAL__sub_I_user_counters_thousands_test.cc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 2688
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s2, $sp, 784
	st.d	$s2, $sp, 768
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp566:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp567:                               # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc.i
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$s4, $a2, %pc_lo12(.L.str.6)
	vld	$vr0, $s4, 0
	ld.d	$s3, $s4, 13
	st.d	$a0, $sp, 768
	st.d	$a1, $sp, 784
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 13
	ld.d	$a0, $sp, 768
	st.d	$a1, $sp, 776
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp569:                               # EH_LABEL
	addi.d	$a1, $sp, 768
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.2:                                # %invoke.cont3.i
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z21BM_Counters_ThousandsRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21BM_Counters_ThousandsRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp571:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.3:                                # %invoke.cont4.i
.Ltmp573:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11RepetitionsEi)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.4:                                # %invoke.cont6.i
	move	$s0, $a0
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 768
	beq	$a0, $s2, .LBB16_6
# %bb.5:                                # %if.then.i.i3.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 2584
	add.d	$s5, $sp, $a0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$s1, $zero, 179
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 179
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	stx.b	$zero, $fp, $s0
.Ltmp576:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.7:                                # %invoke.cont4.i6
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
.Ltmp579:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.8:                                # %call2.i5.i.noexc21.i
	move	$fp, $a0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 179
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	stx.b	$zero, $fp, $s1
.Ltmp582:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.9:                                # %invoke.cont10.i
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 184
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp585:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.10:                               # %call2.i5.i.noexc33.i
	move	$fp, $a0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 184
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	stx.b	$zero, $fp, $s2
.Ltmp588:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.11:                               # %invoke.cont17.i
	addi.d	$s2, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 186
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp591:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.12:                               # %call2.i5.i.noexc45.i
	move	$fp, $a0
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 186
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	stx.b	$zero, $fp, $s3
.Ltmp594:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
# %bb.13:                               # %invoke.cont24.i
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s3, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 180
	st.d	$a0, $sp, 736
.Ltmp597:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.14:                               # %call2.i5.i.noexc57.i
	move	$fp, $a0
	ld.d	$s4, $sp, 736
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	st.d	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 180
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	st.d	$s4, $a0, 0
	stx.b	$zero, $fp, $s4
.Ltmp600:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.15:                               # %invoke.cont31.i
.Ltmp603:                               # EH_LABEL
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 5
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.16:                               # %invoke.cont33.i
	move	$fp, $a0
	ld.d	$s0, $sp, 1200
	beqz	$s0, .LBB16_21
# %bb.17:                               # %if.then.i.i.i.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_19
# %bb.18:                               # %if.then.i.i.i.i61.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_22
	b	.LBB16_23
.LBB16_19:                              # %if.end.i.i.i.i.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_569
# %bb.20:                               # %if.then.i.i.i.i.i.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_570
.LBB16_21:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	beq	$a0, $a1, .LBB16_23
.LBB16_22:                              # %if.then.i.i2.i.i
	ld.d	$a1, $sp, 1176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_23:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 1120
	addi.d	$a1, $sp, 1136
	beq	$a0, $a1, .LBB16_25
# %bb.24:                               # %if.then.i.i4.i.i
	ld.d	$a1, $sp, 1136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_25:                              # %_ZN8TestCaseD2Ev.exit.i
	ld.d	$s0, $sp, 1112
	beqz	$s0, .LBB16_30
# %bb.26:                               # %if.then.i.i.i.1.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_28
# %bb.27:                               # %if.then.i.i.i.i61.1.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_31
	b	.LBB16_32
.LBB16_28:                              # %if.end.i.i.i.i.1.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_571
# %bb.29:                               # %if.then.i.i.i.i.i.1.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_572
.LBB16_30:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1.i
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	beq	$a0, $a1, .LBB16_32
.LBB16_31:                              # %if.then.i.i2.i.1.i
	ld.d	$a1, $sp, 1088
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_32:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i
	ld.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1048
	beq	$a0, $a1, .LBB16_34
# %bb.33:                               # %if.then.i.i4.i.1.i
	ld.d	$a1, $sp, 1048
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_34:                              # %_ZN8TestCaseD2Ev.exit.1.i
	ld.d	$s0, $sp, 1024
	beqz	$s0, .LBB16_39
# %bb.35:                               # %if.then.i.i.i.2.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_37
# %bb.36:                               # %if.then.i.i.i.i61.2.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_40
	b	.LBB16_41
.LBB16_37:                              # %if.end.i.i.i.i.2.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_573
# %bb.38:                               # %if.then.i.i.i.i.i.2.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_574
.LBB16_39:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2.i
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB16_41
.LBB16_40:                              # %if.then.i.i2.i.2.i
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_41:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i
	ld.d	$a0, $sp, 944
	addi.d	$a1, $sp, 960
	beq	$a0, $a1, .LBB16_43
# %bb.42:                               # %if.then.i.i4.i.2.i
	ld.d	$a1, $sp, 960
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_43:                              # %_ZN8TestCaseD2Ev.exit.2.i
	ld.d	$s0, $sp, 936
	beqz	$s0, .LBB16_48
# %bb.44:                               # %if.then.i.i.i.3.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_46
# %bb.45:                               # %if.then.i.i.i.i61.3.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_49
	b	.LBB16_50
.LBB16_46:                              # %if.end.i.i.i.i.3.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_575
# %bb.47:                               # %if.then.i.i.i.i.i.3.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_576
.LBB16_48:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.3.i
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	beq	$a0, $a1, .LBB16_50
.LBB16_49:                              # %if.then.i.i2.i.3.i
	ld.d	$a1, $sp, 912
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_50:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB16_52
# %bb.51:                               # %if.then.i.i4.i.3.i
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_52:                              # %_ZN8TestCaseD2Ev.exit.3.i
	ld.d	$s0, $sp, 848
	beqz	$s0, .LBB16_57
# %bb.53:                               # %if.then.i.i.i.4.i
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_55
# %bb.54:                               # %if.then.i.i.i.i61.4.i
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_58
	b	.LBB16_59
.LBB16_55:                              # %if.end.i.i.i.i.4.i
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_577
# %bb.56:                               # %if.then.i.i.i.i.i.4.i
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_578
.LBB16_57:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.4.i
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	beq	$a0, $a1, .LBB16_59
.LBB16_58:                              # %if.then.i.i2.i.4.i
	ld.d	$a1, $sp, 824
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i
	ld.d	$a0, $sp, 768
	addi.d	$a1, $sp, 784
	beq	$a0, $a1, .LBB16_61
# %bb.60:                               # %if.then.i.i4.i.4.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_61:                              # %_ZN8TestCaseD2Ev.exit.4.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_63
# %bb.62:                               # %if.then.i.i62.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_65
# %bb.64:                               # %if.then.i.i64.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_65:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_67
# %bb.66:                               # %if.then.i.i71.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_69
# %bb.68:                               # %if.then.i.i78.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s5, .LBB16_71
# %bb.70:                               # %if.then.i.i85.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_71:                              # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(dummy51)
	st.w	$fp, $a0, %pc_lo12(dummy51)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 43
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$fp, $a2, %pc_lo12(.L.str.13)
	xvld	$xr0, $fp, 0
	ld.d	$s1, $fp, 32
	ld.w	$s2, $fp, 39
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 32
	st.w	$s2, $a0, 39
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp606:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.72:                               # %invoke.cont4.i26
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp609:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.73:                               # %call2.i5.i.noexc47.i
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	ori	$a3, $zero, 2536
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2552
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp612:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.74:                               # %invoke.cont10.i30
	addi.d	$s3, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp615:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.75:                               # %call2.i5.i.noexc59.i
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	xvld	$xr0, $a2, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp618:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.76:                               # %invoke.cont17.i34
	addi.d	$s3, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp621:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.77:                               # %call2.i5.i.noexc71.i
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a3, $a2, %pc_lo12(.L.str.16)
	xvld	$xr0, $a3, 0
	ld.d	$a2, $a3, 32
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 39
	ori	$a4, $zero, 2488
	add.d	$a4, $sp, $a4
	st.d	$a1, $a4, 0
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	st.d	$a2, $a0, 32
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	st.d	$a3, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp624:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.78:                               # %invoke.cont24.i38
	addi.d	$s6, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp627:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.79:                               # %call2.i5.i.noexc83.i
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 736
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$s5, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $s5, 0
	ld.b	$s4, $s5, 24
	ld.d	$s3, $s5, 16
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 24
	st.d	$s3, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp630:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.80:                               # %invoke.cont31.i42
	addi.d	$s6, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp633:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.81:                               # %call2.i5.i.noexc95.i
	ld.d	$a1, $sp, 704
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	addi.d	$a2, $a2, %pc_lo12(.L.str.18)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp636:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.82:                               # %invoke.cont38.i
	addi.d	$s6, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 672
.Ltmp639:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 672
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.83:                               # %call2.i5.i.noexc107.i
	ld.d	$a1, $sp, 672
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 704
	st.d	$a1, $sp, 720
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 704
	st.d	$a1, $sp, 712
	stx.b	$zero, $a0, $a1
.Ltmp642:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp643:                               # EH_LABEL
# %bb.84:                               # %invoke.cont45.i
	addi.d	$s6, $sp, 1384
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 6
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	st.d	$a1, $sp, 688
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	st.d	$a2, $sp, 694
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 680
	st.b	$zero, $sp, 702
.Ltmp645:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.85:                               # %invoke.cont52.i
	addi.d	$s6, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 608
.Ltmp648:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
# %bb.86:                               # %call2.i5.i.noexc131.i
	ld.d	$a1, $sp, 608
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp651:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.87:                               # %invoke.cont59.i
	addi.d	$s6, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 576
.Ltmp654:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp655:                               # EH_LABEL
# %bb.88:                               # %call2.i5.i.noexc143.i
	ld.d	$a1, $sp, 576
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp657:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.89:                               # %invoke.cont66.i
	addi.d	$s6, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 544
.Ltmp660:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.90:                               # %call2.i5.i.noexc155.i
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 544
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp663:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.91:                               # %invoke.cont73.i
	addi.d	$s3, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 512
.Ltmp666:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.92:                               # %call2.i5.i.noexc167.i
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 512
	pcalau12i	$a2, %pc_hi20(.L.str.24)
	addi.d	$a2, $a2, %pc_lo12(.L.str.24)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp669:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.93:                               # %invoke.cont80.i
	addi.d	$s5, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 480
.Ltmp672:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.94:                               # %call2.i5.i.noexc179.i
	st.d	$a0, $sp, 512
	ld.d	$a1, $sp, 480
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a3, $a2, %pc_lo12(.L.str.25)
	xvld	$xr0, $a3, 0
	ld.d	$a2, $a3, 32
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ld.h	$a3, $a3, 40
	st.d	$a1, $sp, 528
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $a0, 32
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	st.h	$a3, $a0, 40
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp675:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.95:                               # %invoke.cont87.i
	addi.d	$s6, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 448
.Ltmp678:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.96:                               # %call2.i5.i.noexc191.i
	ld.d	$a1, $sp, 448
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	xvld	$xr0, $a2, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 31
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp681:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp682:                               # EH_LABEL
# %bb.97:                               # %invoke.cont94.i
	addi.d	$s7, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp684:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.98:                               # %call2.i5.i.noexc203.i
	ld.d	$a1, $sp, 416
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	xvld	$xr0, $a2, 0
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 31
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp687:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.99:                               # %invoke.cont101.i
	ori	$a0, $zero, 2088
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 384
.Ltmp690:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.100:                              # %call2.i5.i.noexc215.i
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 416
	ld.d	$a1, $sp, 384
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a3, $a2, %pc_lo12(.L.str.28)
	xvld	$xr0, $a3, 0
	ld.d	$a2, $a3, 32
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 37
	st.d	$a1, $sp, 432
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $a0, 32
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $a0, 37
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp693:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.101:                              # %invoke.cont108.i
	ori	$a0, $zero, 2176
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 352
.Ltmp696:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.102:                              # %call2.i5.i.noexc227.i
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 384
	ld.d	$a1, $sp, 352
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a3, $a2, %pc_lo12(.L.str.29)
	xvld	$xr0, $a3, 0
	ld.d	$a2, $a3, 32
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 40
	st.d	$a1, $sp, 400
	xvst	$xr0, $a0, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $a0, 32
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.w	$a3, $a0, 40
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp699:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.103:                              # %invoke.cont115.i
	ori	$a0, $zero, 2264
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 368
	st.d	$s1, $sp, 360
.Ltmp702:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.104:                              # %invoke.cont122.i
.Ltmp705:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 18
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.105:                              # %invoke.cont124.i
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_107
	.p2align	4, , 16
.LBB16_106:                             # %_ZN8TestCaseD2Ev.exit.i82
                                        #   in Loop: Header=BB16_107 Depth=1
	addi.d	$s0, $s0, -88
	addi.w	$s3, $zero, -1584
	beq	$s0, $s3, .LBB16_118
.LBB16_107:                             # %arraydestroy.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s4, $s0
	ld.d	$fp, $s3, 1576
	beqz	$fp, .LBB16_112
# %bb.108:                              # %if.then.i.i.i.i63
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_110
# %bb.109:                              # %if.then.i.i.i.i243.i
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 1536
	addi.d	$a1, $s3, 1552
	bne	$a1, $a0, .LBB16_113
	b	.LBB16_114
	.p2align	4, , 16
.LBB16_110:                             # %if.end.i.i.i.i.i66
                                        #   in Loop: Header=BB16_107 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_116
# %bb.111:                              # %if.then.i.i.i.i.i.i68
                                        #   in Loop: Header=BB16_107 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_117
	.p2align	4, , 16
.LBB16_112:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i73
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $s3, 1536
	addi.d	$a1, $s3, 1552
	beq	$a1, $a0, .LBB16_114
.LBB16_113:                             # %if.then.i.i2.i.i76
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_114:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $s3, 1496
	addi.d	$a1, $s3, 1512
	beq	$a1, $a0, .LBB16_106
# %bb.115:                              # %if.then.i.i4.i.i80
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_106
.LBB16_116:                             # %if.else.i.i.i.i.i.i94
                                        #   in Loop: Header=BB16_107 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_112
.LBB16_117:                             # %if.then7.i.i.i.i.i93
                                        #   in Loop: Header=BB16_107 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1536
	addi.d	$a1, $s3, 1552
	bne	$a1, $a0, .LBB16_113
	b	.LBB16_114
.LBB16_118:                             # %arraydestroy.done125.i
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_120
# %bb.119:                              # %if.then.i.i244.i
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_120:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85
	ld.d	$a0, $sp, 384
	ori	$a1, $zero, 2584
	add.d	$fp, $sp, $a1
	addi.d	$s2, $sp, 752
	addi.d	$s4, $sp, 720
	addi.d	$s5, $sp, 688
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_122
# %bb.121:                              # %if.then.i.i246.i
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_122:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_124
# %bb.123:                              # %if.then.i.i253.i
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_124:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_126
# %bb.125:                              # %if.then.i.i260.i
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_126:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_128
# %bb.127:                              # %if.then.i.i267.i
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_128:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_130
# %bb.129:                              # %if.then.i.i274.i
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_130:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_132
# %bb.131:                              # %if.then.i.i281.i
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_132:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_134
# %bb.133:                              # %if.then.i.i288.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_134:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_136
# %bb.135:                              # %if.then.i.i295.i
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_136:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_138
# %bb.137:                              # %if.then.i.i302.i
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_138:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i
	ld.d	$a0, $sp, 672
	beq	$a0, $s5, .LBB16_140
# %bb.139:                              # %if.then.i.i309.i
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_140:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i
	ld.d	$a0, $sp, 704
	beq	$a0, $s4, .LBB16_142
# %bb.141:                              # %if.then.i.i316.i
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_142:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i
	ld.d	$a0, $sp, 736
	beq	$a0, $s2, .LBB16_144
# %bb.143:                              # %if.then.i.i323.i
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_144:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_146
# %bb.145:                              # %if.then.i.i330.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_146:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_148
# %bb.147:                              # %if.then.i.i337.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_148:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_150
# %bb.149:                              # %if.then.i.i344.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_150:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_152
# %bb.151:                              # %if.then.i.i351.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_152:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB16_154
# %bb.153:                              # %if.then.i.i358.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_154:                             # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(dummy70)
	st.w	$s1, $a0, %pc_lo12(dummy70)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 43
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $a0, 39
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp708:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.155:                              # %invoke.cont4.i156
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp711:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
# %bb.156:                              # %call2.i5.i.noexc47.i160
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp714:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.157:                              # %invoke.cont10.i173
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp717:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.158:                              # %call2.i5.i.noexc59.i177
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp720:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.159:                              # %invoke.cont17.i190
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp723:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.160:                              # %call2.i5.i.noexc71.i194
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	ori	$a2, $zero, 2472
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2488
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp726:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp727:                               # EH_LABEL
# %bb.161:                              # %invoke.cont24.i207
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp729:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.162:                              # %call2.i5.i.noexc83.i211
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp732:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp733:                               # EH_LABEL
# %bb.163:                              # %invoke.cont31.i224
	addi.d	$fp, $sp, 1208
	st.d	$s2, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp735:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.164:                              # %call2.i5.i.noexc95.i228
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp738:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.165:                              # %invoke.cont38.i241
	addi.d	$fp, $sp, 1296
	st.d	$s4, $sp, 704
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 672
.Ltmp741:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 672
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.166:                              # %call2.i5.i.noexc107.i245
	ld.d	$a1, $sp, 672
	pcalau12i	$a2, %pc_hi20(.L.str.32)
	addi.d	$a2, $a2, %pc_lo12(.L.str.32)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	st.d	$a0, $sp, 704
	st.d	$a1, $sp, 720
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 704
	st.d	$a1, $sp, 712
	stx.b	$zero, $a0, $a1
.Ltmp744:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp745:                               # EH_LABEL
# %bb.167:                              # %invoke.cont45.i258
	addi.d	$fp, $sp, 1384
	st.d	$s5, $sp, 672
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 688
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 694
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 680
	st.b	$zero, $sp, 702
.Ltmp747:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp748:                               # EH_LABEL
# %bb.168:                              # %invoke.cont52.i272
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 608
.Ltmp750:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.169:                              # %call2.i5.i.noexc131.i276
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp753:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp754:                               # EH_LABEL
# %bb.170:                              # %invoke.cont59.i289
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 576
.Ltmp756:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp757:                               # EH_LABEL
# %bb.171:                              # %call2.i5.i.noexc143.i293
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp759:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.172:                              # %invoke.cont66.i306
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 544
.Ltmp762:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp763:                               # EH_LABEL
# %bb.173:                              # %call2.i5.i.noexc155.i310
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp765:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp766:                               # EH_LABEL
# %bb.174:                              # %invoke.cont73.i323
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 512
.Ltmp768:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp769:                               # EH_LABEL
# %bb.175:                              # %call2.i5.i.noexc167.i327
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp771:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp772:                               # EH_LABEL
# %bb.176:                              # %invoke.cont80.i340
	addi.d	$s5, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 480
.Ltmp774:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp775:                               # EH_LABEL
# %bb.177:                              # %call2.i5.i.noexc179.i344
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp777:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.178:                              # %invoke.cont87.i357
	addi.d	$s6, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 448
.Ltmp780:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.179:                              # %call2.i5.i.noexc191.i361
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp783:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.180:                              # %invoke.cont94.i374
	addi.d	$s7, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp786:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.181:                              # %call2.i5.i.noexc203.i378
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp789:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.182:                              # %invoke.cont101.i391
	ori	$a0, $zero, 2088
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 384
.Ltmp792:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp793:                               # EH_LABEL
# %bb.183:                              # %call2.i5.i.noexc215.i395
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp795:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.184:                              # %invoke.cont108.i408
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 352
.Ltmp798:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.185:                              # %call2.i5.i.noexc227.i412
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp801:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.186:                              # %invoke.cont115.i425
	ori	$a0, $zero, 2264
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 368
	st.d	$s1, $sp, 360
.Ltmp804:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp805:                               # EH_LABEL
# %bb.187:                              # %invoke.cont122.i437
.Ltmp807:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 18
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp808:                               # EH_LABEL
# %bb.188:                              # %invoke.cont124.i459
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_190
	.p2align	4, , 16
.LBB16_189:                             # %_ZN8TestCaseD2Ev.exit.i484
                                        #   in Loop: Header=BB16_190 Depth=1
	addi.d	$s0, $s0, -88
	beq	$s0, $s3, .LBB16_201
.LBB16_190:                             # %arraydestroy.body.i460
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s4, $s0
	ld.d	$fp, $s6, 1576
	beqz	$fp, .LBB16_195
# %bb.191:                              # %if.then.i.i.i.i465
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_193
# %bb.192:                              # %if.then.i.i.i.i243.i602
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	bne	$a1, $a0, .LBB16_196
	b	.LBB16_197
	.p2align	4, , 16
.LBB16_193:                             # %if.end.i.i.i.i.i468
                                        #   in Loop: Header=BB16_190 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_199
# %bb.194:                              # %if.then.i.i.i.i.i.i470
                                        #   in Loop: Header=BB16_190 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_200
	.p2align	4, , 16
.LBB16_195:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i475
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	beq	$a1, $a0, .LBB16_197
.LBB16_196:                             # %if.then.i.i2.i.i478
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_197:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $s6, 1496
	addi.d	$a1, $s6, 1512
	beq	$a1, $a0, .LBB16_189
# %bb.198:                              # %if.then.i.i4.i.i482
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_189
.LBB16_199:                             # %if.else.i.i.i.i.i.i601
                                        #   in Loop: Header=BB16_190 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_195
.LBB16_200:                             # %if.then7.i.i.i.i.i600
                                        #   in Loop: Header=BB16_190 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	bne	$a1, $a0, .LBB16_196
	b	.LBB16_197
.LBB16_201:                             # %arraydestroy.done125.i486
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_203
# %bb.202:                              # %if.then.i.i244.i488
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_203:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i490
	ld.d	$a0, $sp, 384
	ori	$a1, $zero, 2584
	add.d	$fp, $sp, $a1
	addi.d	$s2, $sp, 752
	addi.d	$s3, $sp, 720
	addi.d	$s4, $sp, 688
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_205
# %bb.204:                              # %if.then.i.i246.i492
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_205:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i494
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_207
# %bb.206:                              # %if.then.i.i253.i496
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_207:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i498
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_209
# %bb.208:                              # %if.then.i.i260.i500
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_209:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i502
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_211
# %bb.210:                              # %if.then.i.i267.i504
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_211:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i506
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_213
# %bb.212:                              # %if.then.i.i274.i508
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_213:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i510
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_215
# %bb.214:                              # %if.then.i.i281.i512
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_215:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i514
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_217
# %bb.216:                              # %if.then.i.i288.i516
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_217:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i518
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_219
# %bb.218:                              # %if.then.i.i295.i520
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_219:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i522
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_221
# %bb.220:                              # %if.then.i.i302.i524
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_221:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i526
	ld.d	$a0, $sp, 672
	beq	$a0, $s4, .LBB16_223
# %bb.222:                              # %if.then.i.i309.i528
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_223:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i530
	ld.d	$a0, $sp, 704
	beq	$a0, $s3, .LBB16_225
# %bb.224:                              # %if.then.i.i316.i532
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_225:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i534
	ld.d	$a0, $sp, 736
	beq	$a0, $s2, .LBB16_227
# %bb.226:                              # %if.then.i.i323.i536
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_227:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i538
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_229
# %bb.228:                              # %if.then.i.i330.i540
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_229:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i542
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_231
# %bb.230:                              # %if.then.i.i337.i544
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_231:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i546
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_233
# %bb.232:                              # %if.then.i.i344.i548
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_233:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i550
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_235
# %bb.234:                              # %if.then.i.i351.i552
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_235:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.i554
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB16_237
# %bb.236:                              # %if.then.i.i358.i556
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_237:                             # %__cxx_global_var_init.31.exit
	pcalau12i	$a0, %pc_hi20(dummy89)
	st.w	$s1, $a0, %pc_lo12(dummy89)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$a2, $a2, %pc_lo12(.L.str.34)
	xvld	$xr0, $a2, 0
	ori	$a3, $zero, 2568
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2584
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp810:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp811:                               # EH_LABEL
# %bb.238:                              # %invoke.cont4.i634
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp813:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.239:                              # %call2.i5.i.noexc49.i
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp816:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp817:                               # EH_LABEL
# %bb.240:                              # %invoke.cont10.i641
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp819:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp820:                               # EH_LABEL
# %bb.241:                              # %call2.i5.i.noexc61.i
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp822:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp823:                               # EH_LABEL
# %bb.242:                              # %invoke.cont17.i648
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp825:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp826:                               # EH_LABEL
# %bb.243:                              # %call2.i5.i.noexc73.i
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	ori	$a2, $zero, 2472
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2488
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp828:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp829:                               # EH_LABEL
# %bb.244:                              # %invoke.cont24.i656
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp831:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp832:                               # EH_LABEL
# %bb.245:                              # %call2.i5.i.noexc85.i
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 736
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a3, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a3, 0
	ld.b	$a2, $a3, 24
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	ori	$a4, $zero, 2456
	add.d	$a4, $sp, $a4
	st.d	$a1, $a4, 0
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.b	$a2, $a0, 24
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp834:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp835:                               # EH_LABEL
# %bb.246:                              # %invoke.cont31.i668
	addi.d	$fp, $sp, 1208
	st.d	$s2, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp837:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp838:                               # EH_LABEL
# %bb.247:                              # %call2.i5.i.noexc97.i
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp840:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
# %bb.248:                              # %invoke.cont38.i680
	addi.d	$fp, $sp, 1296
	st.d	$s3, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp843:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp844:                               # EH_LABEL
# %bb.249:                              # %invoke.cont45.i691
	addi.d	$fp, $sp, 1384
	st.d	$s4, $sp, 672
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 640
.Ltmp846:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp847:                               # EH_LABEL
# %bb.250:                              # %call2.i5.i.noexc121.i
	st.d	$a0, $sp, 672
	ld.d	$a1, $sp, 640
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 688
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp849:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp850:                               # EH_LABEL
# %bb.251:                              # %invoke.cont52.i702
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp852:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp853:                               # EH_LABEL
# %bb.252:                              # %call2.i5.i.noexc133.i
	st.d	$a0, $sp, 640
	ld.d	$a1, $sp, 608
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a3, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a3, 0
	ld.h	$a2, $a3, 24
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.h	$a2, $a0, 24
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp855:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp856:                               # EH_LABEL
# %bb.253:                              # %invoke.cont59.i714
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp858:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp859:                               # EH_LABEL
# %bb.254:                              # %call2.i5.i.noexc145.i
	ld.d	$a1, $sp, 576
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp861:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp862:                               # EH_LABEL
# %bb.255:                              # %invoke.cont66.i726
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp864:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.256:                              # %call2.i5.i.noexc157.i
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp867:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.257:                              # %invoke.cont73.i738
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp870:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.258:                              # %call2.i5.i.noexc169.i
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp873:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.259:                              # %invoke.cont80.i750
	addi.d	$s3, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp876:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.260:                              # %call2.i5.i.noexc181.i
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp879:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp880:                               # EH_LABEL
# %bb.261:                              # %invoke.cont87.i762
	addi.d	$s5, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 448
.Ltmp882:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.262:                              # %call2.i5.i.noexc193.i
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp885:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp886:                               # EH_LABEL
# %bb.263:                              # %invoke.cont94.i774
	addi.d	$s6, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp888:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.264:                              # %call2.i5.i.noexc205.i
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp891:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp892:                               # EH_LABEL
# %bb.265:                              # %invoke.cont101.i786
	ori	$a0, $zero, 2088
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 384
.Ltmp894:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.266:                              # %call2.i5.i.noexc217.i
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp897:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp898:                               # EH_LABEL
# %bb.267:                              # %invoke.cont108.i798
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 352
.Ltmp900:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.268:                              # %call2.i5.i.noexc229.i
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp903:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp904:                               # EH_LABEL
# %bb.269:                              # %invoke.cont115.i810
	ori	$a0, $zero, 2264
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 320
.Ltmp906:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp907:                               # EH_LABEL
# %bb.270:                              # %call2.i5.i.noexc241.i
	ld.d	$a1, $sp, 320
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp909:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp910:                               # EH_LABEL
# %bb.271:                              # %invoke.cont122.i821
	ori	$a0, $zero, 2352
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$s1, $sp, 328
.Ltmp912:                               # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.272:                              # %invoke.cont129.i
.Ltmp915:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.273:                              # %invoke.cont131.i
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_275
	.p2align	4, , 16
.LBB16_274:                             # %_ZN8TestCaseD2Ev.exit.i856
                                        #   in Loop: Header=BB16_275 Depth=1
	addi.d	$s0, $s0, -88
	addi.w	$s3, $zero, -1672
	beq	$s0, $s3, .LBB16_286
.LBB16_275:                             # %arraydestroy.body.i832
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s4, $s0
	ld.d	$fp, $s3, 1664
	beqz	$fp, .LBB16_280
# %bb.276:                              # %if.then.i.i.i.i837
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_278
# %bb.277:                              # %if.then.i.i.i.i257.i
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	bne	$a1, $a0, .LBB16_281
	b	.LBB16_282
	.p2align	4, , 16
.LBB16_278:                             # %if.end.i.i.i.i.i840
                                        #   in Loop: Header=BB16_275 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_284
# %bb.279:                              # %if.then.i.i.i.i.i.i842
                                        #   in Loop: Header=BB16_275 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_285
	.p2align	4, , 16
.LBB16_280:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i847
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	beq	$a1, $a0, .LBB16_282
.LBB16_281:                             # %if.then.i.i2.i.i850
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_282:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i852
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $s3, 1584
	addi.d	$a1, $s3, 1600
	beq	$a1, $a0, .LBB16_274
# %bb.283:                              # %if.then.i.i4.i.i854
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_274
.LBB16_284:                             # %if.else.i.i.i.i.i.i973
                                        #   in Loop: Header=BB16_275 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_280
.LBB16_285:                             # %if.then7.i.i.i.i.i972
                                        #   in Loop: Header=BB16_275 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	bne	$a1, $a0, .LBB16_281
	b	.LBB16_282
.LBB16_286:                             # %arraydestroy.done132.i
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_288
# %bb.287:                              # %if.then.i.i258.i
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_288:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i860
	ld.d	$a0, $sp, 352
	ori	$a1, $zero, 2584
	add.d	$fp, $sp, $a1
	addi.d	$s2, $sp, 752
	addi.d	$s4, $sp, 720
	addi.d	$s5, $sp, 688
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_290
# %bb.289:                              # %if.then.i.i260.i862
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_290:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i864
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_292
# %bb.291:                              # %if.then.i.i267.i866
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_292:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i868
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_294
# %bb.293:                              # %if.then.i.i274.i870
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_294:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i872
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_296
# %bb.295:                              # %if.then.i.i281.i874
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_296:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i876
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_298
# %bb.297:                              # %if.then.i.i288.i878
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_298:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i880
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_300
# %bb.299:                              # %if.then.i.i295.i882
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_300:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i884
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_302
# %bb.301:                              # %if.then.i.i302.i886
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_302:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i888
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_304
# %bb.303:                              # %if.then.i.i309.i890
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_304:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i892
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_306
# %bb.305:                              # %if.then.i.i316.i894
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_306:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i896
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_308
# %bb.307:                              # %if.then.i.i323.i898
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_308:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i900
	ld.d	$a0, $sp, 672
	beq	$a0, $s5, .LBB16_310
# %bb.309:                              # %if.then.i.i330.i902
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_310:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i904
	ld.d	$a0, $sp, 704
	beq	$a0, $s4, .LBB16_312
# %bb.311:                              # %if.then.i.i337.i906
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_312:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i908
	ld.d	$a0, $sp, 736
	beq	$a0, $s2, .LBB16_314
# %bb.313:                              # %if.then.i.i344.i910
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_314:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i912
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_316
# %bb.315:                              # %if.then.i.i351.i914
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_316:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.i916
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_318
# %bb.317:                              # %if.then.i.i358.i918
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_318:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_320
# %bb.319:                              # %if.then.i.i365.i921
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_320:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_322
# %bb.321:                              # %if.then.i.i372.i924
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_322:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB16_324
# %bb.323:                              # %if.then.i.i379.i927
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_324:                             # %__cxx_global_var_init.33.exit
	pcalau12i	$a0, %pc_hi20(dummy109)
	st.w	$s1, $a0, %pc_lo12(dummy109)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 50
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a2, $a2, %pc_lo12(.L.str.40)
	xvld	$xr0, $a2, 0
	ori	$a3, $zero, 2568
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2584
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.h	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.h	$a2, $a0, 48
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp918:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.325:                              # %invoke.cont4.i1037
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp921:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp922:                               # EH_LABEL
# %bb.326:                              # %call2.i5.i.noexc49.i1041
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp924:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp925:                               # EH_LABEL
# %bb.327:                              # %invoke.cont10.i1054
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp927:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp928:                               # EH_LABEL
# %bb.328:                              # %call2.i5.i.noexc61.i1058
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp930:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.329:                              # %invoke.cont17.i1071
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp933:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.330:                              # %call2.i5.i.noexc73.i1075
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	ori	$a2, $zero, 2472
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2488
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp936:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.331:                              # %invoke.cont24.i1088
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp939:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp940:                               # EH_LABEL
# %bb.332:                              # %call2.i5.i.noexc85.i1092
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp942:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.333:                              # %invoke.cont31.i1105
	addi.d	$fp, $sp, 1208
	st.d	$s2, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp945:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp946:                               # EH_LABEL
# %bb.334:                              # %call2.i5.i.noexc97.i1109
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp948:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp949:                               # EH_LABEL
# %bb.335:                              # %invoke.cont38.i1122
	addi.d	$fp, $sp, 1296
	st.d	$s4, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp951:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp952:                               # EH_LABEL
# %bb.336:                              # %invoke.cont45.i1136
	addi.d	$fp, $sp, 1384
	st.d	$s5, $sp, 672
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 640
.Ltmp954:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.337:                              # %call2.i5.i.noexc121.i1140
	st.d	$a0, $sp, 672
	ld.d	$a1, $sp, 640
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a2, $a2, %pc_lo12(.L.str.41)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 688
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp957:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.338:                              # %invoke.cont52.i1153
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp960:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.339:                              # %call2.i5.i.noexc133.i1157
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp963:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.340:                              # %invoke.cont59.i1170
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp966:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.341:                              # %call2.i5.i.noexc145.i1174
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp969:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp970:                               # EH_LABEL
# %bb.342:                              # %invoke.cont66.i1187
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp972:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp973:                               # EH_LABEL
# %bb.343:                              # %call2.i5.i.noexc157.i1191
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp975:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp976:                               # EH_LABEL
# %bb.344:                              # %invoke.cont73.i1204
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp978:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp979:                               # EH_LABEL
# %bb.345:                              # %call2.i5.i.noexc169.i1208
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp981:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp982:                               # EH_LABEL
# %bb.346:                              # %invoke.cont80.i1221
	addi.d	$fp, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp984:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp985:                               # EH_LABEL
# %bb.347:                              # %call2.i5.i.noexc181.i1225
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp987:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp988:                               # EH_LABEL
# %bb.348:                              # %invoke.cont87.i1238
	addi.d	$s5, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 448
.Ltmp990:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp991:                               # EH_LABEL
# %bb.349:                              # %call2.i5.i.noexc193.i1242
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp993:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp994:                               # EH_LABEL
# %bb.350:                              # %invoke.cont94.i1255
	addi.d	$s6, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp996:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp997:                               # EH_LABEL
# %bb.351:                              # %call2.i5.i.noexc205.i1259
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp999:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1000:                              # EH_LABEL
# %bb.352:                              # %invoke.cont101.i1272
	ori	$a0, $zero, 2088
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 384
.Ltmp1002:                              # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1003:                              # EH_LABEL
# %bb.353:                              # %call2.i5.i.noexc217.i1276
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp1005:                              # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1006:                              # EH_LABEL
# %bb.354:                              # %invoke.cont108.i1289
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 352
.Ltmp1008:                              # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1009:                              # EH_LABEL
# %bb.355:                              # %call2.i5.i.noexc229.i1293
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp1011:                              # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1012:                              # EH_LABEL
# %bb.356:                              # %invoke.cont115.i1306
	ori	$a0, $zero, 2264
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 320
.Ltmp1014:                              # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1015:                              # EH_LABEL
# %bb.357:                              # %call2.i5.i.noexc241.i1310
	ld.d	$a1, $sp, 320
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp1017:                              # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1018:                              # EH_LABEL
# %bb.358:                              # %invoke.cont122.i1323
	ori	$a0, $zero, 2352
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$s1, $sp, 328
.Ltmp1020:                              # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1021:                              # EH_LABEL
# %bb.359:                              # %invoke.cont129.i1335
.Ltmp1023:                              # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1024:                              # EH_LABEL
# %bb.360:                              # %invoke.cont131.i1358
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_362
	.p2align	4, , 16
.LBB16_361:                             # %_ZN8TestCaseD2Ev.exit.i1383
                                        #   in Loop: Header=BB16_362 Depth=1
	addi.d	$s0, $s0, -88
	beq	$s0, $s3, .LBB16_373
.LBB16_362:                             # %arraydestroy.body.i1359
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s4, $s0
	ld.d	$fp, $s6, 1664
	beqz	$fp, .LBB16_367
# %bb.363:                              # %if.then.i.i.i.i1364
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_365
# %bb.364:                              # %if.then.i.i.i.i257.i1507
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_368
	b	.LBB16_369
	.p2align	4, , 16
.LBB16_365:                             # %if.end.i.i.i.i.i1367
                                        #   in Loop: Header=BB16_362 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_371
# %bb.366:                              # %if.then.i.i.i.i.i.i1369
                                        #   in Loop: Header=BB16_362 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_372
	.p2align	4, , 16
.LBB16_367:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1374
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	beq	$a1, $a0, .LBB16_369
.LBB16_368:                             # %if.then.i.i2.i.i1377
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_369:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1379
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $s6, 1584
	addi.d	$a1, $s6, 1600
	beq	$a1, $a0, .LBB16_361
# %bb.370:                              # %if.then.i.i4.i.i1381
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_361
.LBB16_371:                             # %if.else.i.i.i.i.i.i1506
                                        #   in Loop: Header=BB16_362 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_367
.LBB16_372:                             # %if.then7.i.i.i.i.i1505
                                        #   in Loop: Header=BB16_362 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_368
	b	.LBB16_369
.LBB16_373:                             # %arraydestroy.done132.i1385
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_375
# %bb.374:                              # %if.then.i.i258.i1387
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_375:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1389
	ld.d	$a0, $sp, 352
	ori	$a1, $zero, 2584
	add.d	$fp, $sp, $a1
	addi.d	$s2, $sp, 752
	addi.d	$s4, $sp, 720
	addi.d	$s5, $sp, 688
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_377
# %bb.376:                              # %if.then.i.i260.i1391
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_377:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i1393
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_379
# %bb.378:                              # %if.then.i.i267.i1395
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_379:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i1397
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_381
# %bb.380:                              # %if.then.i.i274.i1399
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_381:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i1401
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_383
# %bb.382:                              # %if.then.i.i281.i1403
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_383:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i1405
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_385
# %bb.384:                              # %if.then.i.i288.i1407
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_385:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i1409
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_387
# %bb.386:                              # %if.then.i.i295.i1411
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_387:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i1413
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_389
# %bb.388:                              # %if.then.i.i302.i1415
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_389:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i1417
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_391
# %bb.390:                              # %if.then.i.i309.i1419
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_391:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i1421
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_393
# %bb.392:                              # %if.then.i.i316.i1423
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_393:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i1425
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_395
# %bb.394:                              # %if.then.i.i323.i1427
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_395:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i1429
	ld.d	$a0, $sp, 672
	beq	$a0, $s5, .LBB16_397
# %bb.396:                              # %if.then.i.i330.i1431
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_397:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i1433
	ld.d	$a0, $sp, 704
	beq	$a0, $s4, .LBB16_399
# %bb.398:                              # %if.then.i.i337.i1435
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_399:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i1437
	ld.d	$a0, $sp, 736
	beq	$a0, $s2, .LBB16_401
# %bb.400:                              # %if.then.i.i344.i1439
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_401:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i1441
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_403
# %bb.402:                              # %if.then.i.i351.i1443
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_403:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.i1445
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_405
# %bb.404:                              # %if.then.i.i358.i1447
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_405:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i1449
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_407
# %bb.406:                              # %if.then.i.i365.i1451
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_407:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.i1453
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_409
# %bb.408:                              # %if.then.i.i372.i1455
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_409:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i1457
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB16_411
# %bb.410:                              # %if.then.i.i379.i1459
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_411:                             # %__cxx_global_var_init.39.exit
	pcalau12i	$a0, %pc_hi20(dummy129)
	st.w	$s1, $a0, %pc_lo12(dummy129)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 50
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.43)
	addi.d	$a2, $a2, %pc_lo12(.L.str.43)
	xvld	$xr0, $a2, 0
	ori	$a3, $zero, 2568
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2584
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	xvst	$xr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.h	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.h	$a2, $a0, 48
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1026:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1027:                              # EH_LABEL
# %bb.412:                              # %invoke.cont4.i1571
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1029:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1030:                              # EH_LABEL
# %bb.413:                              # %call2.i5.i.noexc49.i1575
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1032:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1033:                              # EH_LABEL
# %bb.414:                              # %invoke.cont10.i1588
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1035:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1036:                              # EH_LABEL
# %bb.415:                              # %call2.i5.i.noexc61.i1592
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvld	$xr0, $a2, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1038:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1039:                              # EH_LABEL
# %bb.416:                              # %invoke.cont17.i1605
	addi.d	$s1, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1041:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1042:                              # EH_LABEL
# %bb.417:                              # %call2.i5.i.noexc73.i1609
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvld	$xr0, $a2, 0
	ori	$a2, $zero, 2472
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2488
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	xvst	$xr0, $a0, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1044:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1045:                              # EH_LABEL
# %bb.418:                              # %invoke.cont24.i1622
	addi.d	$s1, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp1047:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1048:                              # EH_LABEL
# %bb.419:                              # %call2.i5.i.noexc85.i1626
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1050:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1051:                              # EH_LABEL
# %bb.420:                              # %invoke.cont31.i1639
	addi.d	$s1, $sp, 1208
	st.d	$s2, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp1053:                              # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1054:                              # EH_LABEL
# %bb.421:                              # %call2.i5.i.noexc97.i1643
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp1056:                              # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1057:                              # EH_LABEL
# %bb.422:                              # %invoke.cont38.i1656
	addi.d	$fp, $sp, 1296
	st.d	$s4, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp1059:                              # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1060:                              # EH_LABEL
# %bb.423:                              # %invoke.cont45.i1670
	addi.d	$s1, $sp, 1384
	st.d	$s5, $sp, 672
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 640
.Ltmp1062:                              # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1063:                              # EH_LABEL
# %bb.424:                              # %call2.i5.i.noexc121.i1674
	st.d	$a0, $sp, 672
	ld.d	$a1, $sp, 640
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 688
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp1065:                              # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1066:                              # EH_LABEL
# %bb.425:                              # %invoke.cont52.i1687
	addi.d	$s1, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp1068:                              # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1069:                              # EH_LABEL
# %bb.426:                              # %call2.i5.i.noexc133.i1691
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp1071:                              # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1072:                              # EH_LABEL
# %bb.427:                              # %invoke.cont59.i1704
	addi.d	$s1, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp1074:                              # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1075:                              # EH_LABEL
# %bb.428:                              # %call2.i5.i.noexc145.i1708
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp1077:                              # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1078:                              # EH_LABEL
# %bb.429:                              # %invoke.cont66.i1721
	addi.d	$s1, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp1080:                              # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1081:                              # EH_LABEL
# %bb.430:                              # %call2.i5.i.noexc157.i1725
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp1083:                              # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1084:                              # EH_LABEL
# %bb.431:                              # %invoke.cont73.i1738
	addi.d	$s1, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp1086:                              # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1087:                              # EH_LABEL
# %bb.432:                              # %call2.i5.i.noexc169.i1742
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp1089:                              # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1090:                              # EH_LABEL
# %bb.433:                              # %invoke.cont80.i1755
	addi.d	$s1, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp1092:                              # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1093:                              # EH_LABEL
# %bb.434:                              # %call2.i5.i.noexc181.i1759
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp1095:                              # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1096:                              # EH_LABEL
# %bb.435:                              # %invoke.cont87.i1772
	addi.d	$s4, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 448
.Ltmp1098:                              # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1099:                              # EH_LABEL
# %bb.436:                              # %call2.i5.i.noexc193.i1776
	st.d	$a0, $sp, 480
	ld.d	$a1, $sp, 448
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$a2, $a2, %pc_lo12(.L.str.45)
	xvld	$xr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	st.d	$a1, $sp, 496
	xvst	$xr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp1101:                              # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1102:                              # EH_LABEL
# %bb.437:                              # %invoke.cont94.i1789
	addi.d	$s5, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 416
.Ltmp1104:                              # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1105:                              # EH_LABEL
# %bb.438:                              # %call2.i5.i.noexc205.i1793
	ld.d	$a1, $sp, 416
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a2, $a2, %pc_lo12(.L.str.46)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 30
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp1107:                              # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1108:                              # EH_LABEL
# %bb.439:                              # %invoke.cont101.i1806
	ori	$a0, $zero, 2088
	add.d	$s6, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 384
.Ltmp1110:                              # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1111:                              # EH_LABEL
# %bb.440:                              # %call2.i5.i.noexc217.i1810
	ld.d	$a1, $sp, 384
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$a2, $a2, %pc_lo12(.L.str.47)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 30
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp1113:                              # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1114:                              # EH_LABEL
# %bb.441:                              # %invoke.cont108.i1823
	ori	$a0, $zero, 2176
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 352
.Ltmp1116:                              # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1117:                              # EH_LABEL
# %bb.442:                              # %call2.i5.i.noexc229.i1827
	ld.d	$a1, $sp, 352
	pcalau12i	$a2, %pc_hi20(.L.str.48)
	addi.d	$a2, $a2, %pc_lo12(.L.str.48)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 30
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp1119:                              # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1120:                              # EH_LABEL
# %bb.443:                              # %invoke.cont115.i1840
	ori	$a0, $zero, 2264
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 37
	st.d	$a0, $sp, 320
.Ltmp1122:                              # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1123:                              # EH_LABEL
# %bb.444:                              # %call2.i5.i.noexc241.i1844
	ld.d	$a1, $sp, 320
	pcalau12i	$a2, %pc_hi20(.L.str.49)
	addi.d	$a2, $a2, %pc_lo12(.L.str.49)
	xvld	$xr0, $a2, 0
	ld.d	$a2, $a2, 29
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	xvst	$xr0, $a0, 0
	st.d	$a2, $a0, 29
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp1125:                              # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1126:                              # EH_LABEL
# %bb.445:                              # %invoke.cont122.i1857
	ori	$a0, $zero, 2352
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$fp, $sp, 328
.Ltmp1128:                              # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1129:                              # EH_LABEL
# %bb.446:                              # %invoke.cont129.i1869
.Ltmp1131:                              # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s2, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1132:                              # EH_LABEL
# %bb.447:                              # %invoke.cont131.i1892
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_449
	.p2align	4, , 16
.LBB16_448:                             # %_ZN8TestCaseD2Ev.exit.i1917
                                        #   in Loop: Header=BB16_449 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB16_460
.LBB16_449:                             # %arraydestroy.body.i1893
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s1
	ld.d	$s0, $s6, 1664
	beqz	$s0, .LBB16_454
# %bb.450:                              # %if.then.i.i.i.i1898
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB16_452
# %bb.451:                              # %if.then.i.i.i.i257.i2041
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_455
	b	.LBB16_456
	.p2align	4, , 16
.LBB16_452:                             # %if.end.i.i.i.i.i1901
                                        #   in Loop: Header=BB16_449 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_458
# %bb.453:                              # %if.then.i.i.i.i.i.i1903
                                        #   in Loop: Header=BB16_449 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB16_459
	.p2align	4, , 16
.LBB16_454:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1908
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	beq	$a1, $a0, .LBB16_456
.LBB16_455:                             # %if.then.i.i2.i.i1911
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_456:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1913
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s6, 1584
	addi.d	$a1, $s6, 1600
	beq	$a1, $a0, .LBB16_448
# %bb.457:                              # %if.then.i.i4.i.i1915
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_448
.LBB16_458:                             # %if.else.i.i.i.i.i.i2040
                                        #   in Loop: Header=BB16_449 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB16_454
.LBB16_459:                             # %if.then7.i.i.i.i.i2039
                                        #   in Loop: Header=BB16_449 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_455
	b	.LBB16_456
.LBB16_460:                             # %arraydestroy.done132.i1919
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_462
# %bb.461:                              # %if.then.i.i258.i1921
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_462:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1923
	ld.d	$a0, $sp, 352
	ori	$a1, $zero, 2584
	add.d	$s4, $sp, $a1
	addi.d	$s0, $sp, 752
	addi.d	$s1, $sp, 720
	addi.d	$s2, $sp, 688
	addi.d	$s5, $sp, 784
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_464
# %bb.463:                              # %if.then.i.i260.i1925
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_464:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i1927
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_466
# %bb.465:                              # %if.then.i.i267.i1929
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_466:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i1931
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_468
# %bb.467:                              # %if.then.i.i274.i1933
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_468:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279.i1935
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_470
# %bb.469:                              # %if.then.i.i281.i1937
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_470:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i1939
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_472
# %bb.471:                              # %if.then.i.i288.i1941
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_472:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i1943
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_474
# %bb.473:                              # %if.then.i.i295.i1945
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_474:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300.i1947
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_476
# %bb.475:                              # %if.then.i.i302.i1949
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_476:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i1951
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_478
# %bb.477:                              # %if.then.i.i309.i1953
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_478:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i1955
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_480
# %bb.479:                              # %if.then.i.i316.i1957
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_480:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i1959
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_482
# %bb.481:                              # %if.then.i.i323.i1961
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_482:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i1963
	ld.d	$a0, $sp, 672
	beq	$a0, $s2, .LBB16_484
# %bb.483:                              # %if.then.i.i330.i1965
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_484:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i1967
	ld.d	$a0, $sp, 704
	beq	$a0, $s1, .LBB16_486
# %bb.485:                              # %if.then.i.i337.i1969
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_486:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i1971
	ld.d	$a0, $sp, 736
	beq	$a0, $s0, .LBB16_488
# %bb.487:                              # %if.then.i.i344.i1973
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_488:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i1975
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_490
# %bb.489:                              # %if.then.i.i351.i1977
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_490:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.i1979
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_492
# %bb.491:                              # %if.then.i.i358.i1981
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_492:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.i1983
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_494
# %bb.493:                              # %if.then.i.i365.i1985
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_494:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.i1987
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_496
# %bb.495:                              # %if.then.i.i372.i1989
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_496:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377.i1991
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB16_498
# %bb.497:                              # %if.then.i.i379.i1993
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_498:                             # %__cxx_global_var_init.42.exit
	pcalau12i	$a0, %pc_hi20(dummy149)
	st.w	$fp, $a0, %pc_lo12(dummy149)
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	st.d	$s4, $a0, 0
	ori	$s1, $zero, 111
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 111
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	stx.b	$zero, $fp, $s0
.Ltmp1134:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1135:                              # EH_LABEL
# %bb.499:                              # %invoke.cont4.i2079
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
.Ltmp1137:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1138:                              # EH_LABEL
# %bb.500:                              # %call2.i5.i.noexc21.i2083
	move	$fp, $a0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 111
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	stx.b	$zero, $fp, $s1
.Ltmp1140:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1141:                              # EH_LABEL
# %bb.501:                              # %invoke.cont10.i2096
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 116
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1143:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1144:                              # EH_LABEL
# %bb.502:                              # %call2.i5.i.noexc33.i2100
	move	$fp, $a0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 116
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	stx.b	$zero, $fp, $s2
.Ltmp1146:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1147:                              # EH_LABEL
# %bb.503:                              # %invoke.cont17.i2113
	addi.d	$s2, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 118
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1149:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1150:                              # EH_LABEL
# %bb.504:                              # %call2.i5.i.noexc45.i2117
	move	$fp, $a0
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 118
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	stx.b	$zero, $fp, $s3
.Ltmp1152:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1153:                              # EH_LABEL
# %bb.505:                              # %invoke.cont24.i2130
	addi.d	$s3, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 64
	st.d	$a0, $sp, 736
.Ltmp1155:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1156:                              # EH_LABEL
# %bb.506:                              # %call2.i5.i.noexc57.i2134
	ld.d	$a1, $sp, 736
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	xvld	$xr0, $a2, 0
	ori	$a3, $zero, 2440
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2456
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	xvst	$xr0, $a0, 0
	xvld	$xr0, $a2, 32
	xvst	$xr0, $a0, 32
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1158:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1159:                              # EH_LABEL
# %bb.507:                              # %invoke.cont31.i2145
.Ltmp1161:                              # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1162:                              # EH_LABEL
# %bb.508:                              # %invoke.cont33.i2154
	move	$fp, $a0
	ld.d	$s0, $sp, 1200
	beqz	$s0, .LBB16_513
# %bb.509:                              # %if.then.i.i.i.i2158
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_511
# %bb.510:                              # %if.then.i.i.i.i61.i2362
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_514
	b	.LBB16_515
.LBB16_511:                             # %if.end.i.i.i.i.i2161
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_579
# %bb.512:                              # %if.then.i.i.i.i.i.i2163
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_580
.LBB16_513:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i2168
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	beq	$a0, $a1, .LBB16_515
.LBB16_514:                             # %if.then.i.i2.i.i2171
	ld.d	$a1, $sp, 1176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_515:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i2173
	ld.d	$a0, $sp, 1120
	addi.d	$a1, $sp, 1136
	beq	$a0, $a1, .LBB16_517
# %bb.516:                              # %if.then.i.i4.i.i2175
	ld.d	$a1, $sp, 1136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_517:                             # %_ZN8TestCaseD2Ev.exit.i2177
	ld.d	$s0, $sp, 1112
	beqz	$s0, .LBB16_522
# %bb.518:                              # %if.then.i.i.i.1.i2181
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_520
# %bb.519:                              # %if.then.i.i.i.i61.1.i2348
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_523
	b	.LBB16_524
.LBB16_520:                             # %if.end.i.i.i.i.1.i2184
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_581
# %bb.521:                              # %if.then.i.i.i.i.i.1.i2186
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_582
.LBB16_522:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1.i2191
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	beq	$a0, $a1, .LBB16_524
.LBB16_523:                             # %if.then.i.i2.i.1.i2194
	ld.d	$a1, $sp, 1088
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_524:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i2196
	ld.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1048
	beq	$a0, $a1, .LBB16_526
# %bb.525:                              # %if.then.i.i4.i.1.i2198
	ld.d	$a1, $sp, 1048
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_526:                             # %_ZN8TestCaseD2Ev.exit.1.i2200
	ld.d	$s0, $sp, 1024
	beqz	$s0, .LBB16_531
# %bb.527:                              # %if.then.i.i.i.2.i2204
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_529
# %bb.528:                              # %if.then.i.i.i.i61.2.i2334
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_532
	b	.LBB16_533
.LBB16_529:                             # %if.end.i.i.i.i.2.i2207
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_583
# %bb.530:                              # %if.then.i.i.i.i.i.2.i2209
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_584
.LBB16_531:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2.i2214
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB16_533
.LBB16_532:                             # %if.then.i.i2.i.2.i2217
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_533:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i2219
	ld.d	$a0, $sp, 944
	addi.d	$a1, $sp, 960
	beq	$a0, $a1, .LBB16_535
# %bb.534:                              # %if.then.i.i4.i.2.i2221
	ld.d	$a1, $sp, 960
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_535:                             # %_ZN8TestCaseD2Ev.exit.2.i2223
	ld.d	$s0, $sp, 936
	beqz	$s0, .LBB16_540
# %bb.536:                              # %if.then.i.i.i.3.i2227
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_538
# %bb.537:                              # %if.then.i.i.i.i61.3.i2320
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_541
	b	.LBB16_542
.LBB16_538:                             # %if.end.i.i.i.i.3.i2230
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_585
# %bb.539:                              # %if.then.i.i.i.i.i.3.i2232
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_586
.LBB16_540:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.3.i2237
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	beq	$a0, $a1, .LBB16_542
.LBB16_541:                             # %if.then.i.i2.i.3.i2240
	ld.d	$a1, $sp, 912
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_542:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i2242
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB16_544
# %bb.543:                              # %if.then.i.i4.i.3.i2244
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_544:                             # %_ZN8TestCaseD2Ev.exit.3.i2246
	ld.d	$s0, $sp, 848
	beqz	$s0, .LBB16_549
# %bb.545:                              # %if.then.i.i.i.4.i2249
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_547
# %bb.546:                              # %if.then.i.i.i.i61.4.i2306
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_550
	b	.LBB16_551
.LBB16_547:                             # %if.end.i.i.i.i.4.i2252
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_587
# %bb.548:                              # %if.then.i.i.i.i.i.4.i2254
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_588
.LBB16_549:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.4.i2259
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	beq	$a0, $a1, .LBB16_551
.LBB16_550:                             # %if.then.i.i2.i.4.i2262
	ld.d	$a1, $sp, 824
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_551:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i2264
	ld.d	$a0, $sp, 768
	beq	$a0, $s5, .LBB16_553
# %bb.552:                              # %if.then.i.i4.i.4.i2266
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_553:                             # %_ZN8TestCaseD2Ev.exit.4.i2268
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_555
# %bb.554:                              # %if.then.i.i62.i2270
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_555:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2272
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_557
# %bb.556:                              # %if.then.i.i64.i2274
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_557:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i2276
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_559
# %bb.558:                              # %if.then.i.i71.i2278
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_559:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i2280
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_561
# %bb.560:                              # %if.then.i.i78.i2282
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_561:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i2284
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB16_563
# %bb.562:                              # %if.then.i.i85.i2286
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_563:                             # %__cxx_global_var_init.50.exit
	pcalau12i	$a0, %pc_hi20(dummy165)
	st.w	$fp, $a0, %pc_lo12(dummy165)
	st.d	$s5, $sp, 768
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 768
	st.d	$a1, $sp, 784
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 768
	st.d	$a1, $sp, 776
	stx.b	$zero, $a0, $a1
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(_Z14CheckThousandsRK7Results)
	addi.d	$a0, $a0, %pc_lo12(_Z14CheckThousandsRK7Results)
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1164:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z10AddCheckerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRK7ResultsEE)
	jirl	$ra, $ra, 0
.Ltmp1165:                              # EH_LABEL
# %bb.564:                              # %invoke.cont5.i
	move	$fp, $a0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB16_566
# %bb.565:                              # %if.then.i3.i
.Ltmp1170:                              # EH_LABEL
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp1171:                              # EH_LABEL
.LBB16_566:                             # %_ZNSt14_Function_baseD2Ev.exit.i
	ld.d	$a0, $sp, 768
	beq	$a0, $s5, .LBB16_568
# %bb.567:                              # %if.then.i.i4.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_568:                             # %__cxx_global_var_init.76.exit
	pcalau12i	$a0, %pc_hi20(dummy180)
	st.d	$fp, $a0, %pc_lo12(dummy180)
	addi.d	$sp, $sp, 656
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
.LBB16_569:                             # %if.else.i.i.i.i.i.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_21
.LBB16_570:                             # %if.then7.i.i.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_22
	b	.LBB16_23
.LBB16_571:                             # %if.else.i.i.i.i.i.1.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_30
.LBB16_572:                             # %if.then7.i.i.i.i.1.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_31
	b	.LBB16_32
.LBB16_573:                             # %if.else.i.i.i.i.i.2.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_39
.LBB16_574:                             # %if.then7.i.i.i.i.2.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_40
	b	.LBB16_41
.LBB16_575:                             # %if.else.i.i.i.i.i.3.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_48
.LBB16_576:                             # %if.then7.i.i.i.i.3.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_49
	b	.LBB16_50
.LBB16_577:                             # %if.else.i.i.i.i.i.4.i
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_57
.LBB16_578:                             # %if.then7.i.i.i.i.4.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_58
	b	.LBB16_59
.LBB16_579:                             # %if.else.i.i.i.i.i.i2361
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_513
.LBB16_580:                             # %if.then7.i.i.i.i.i2360
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_514
	b	.LBB16_515
.LBB16_581:                             # %if.else.i.i.i.i.i.1.i2347
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_522
.LBB16_582:                             # %if.then7.i.i.i.i.1.i2346
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_523
	b	.LBB16_524
.LBB16_583:                             # %if.else.i.i.i.i.i.2.i2333
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_531
.LBB16_584:                             # %if.then7.i.i.i.i.2.i2332
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_532
	b	.LBB16_533
.LBB16_585:                             # %if.else.i.i.i.i.i.3.i2319
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_540
.LBB16_586:                             # %if.then7.i.i.i.i.3.i2318
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_541
	b	.LBB16_542
.LBB16_587:                             # %if.else.i.i.i.i.i.4.i2305
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_549
.LBB16_588:                             # %if.then7.i.i.i.i.4.i2304
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_550
	b	.LBB16_551
.LBB16_589:                             # %terminate.lpad.i.i
.Ltmp1172:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_590:                             # %lpad4.i
.Ltmp1166:                              # EH_LABEL
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$s4, $a0
	beqz	$a3, .LBB16_592
# %bb.591:                              # %if.then.i7.i
.Ltmp1167:                              # EH_LABEL
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp1168:                              # EH_LABEL
.LBB16_592:                             # %_ZNSt14_Function_baseD2Ev.exit10.i
	ld.d	$a0, $sp, 768
	addi.d	$a1, $sp, 784
	beq	$a0, $a1, .LBB16_1041
# %bb.593:                              # %if.then.i.i12.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	b	.LBB16_1040
.LBB16_594:                             # %terminate.lpad.i9.i
.Ltmp1169:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_595:                             # %lpad32.i2149
.Ltmp1163:                              # EH_LABEL
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_597
.LBB16_596:                             # %lpad30.i2137
.Ltmp1160:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_597:                             # %ehcleanup.i2138
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_600
# %bb.598:                              # %if.then.i.i92.i2141
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_600
.LBB16_599:                             # %lpad28.i2133
.Ltmp1157:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_600:                             # %ehcleanup43.i2121
	move	$s2, $s3
	b	.LBB16_602
.LBB16_601:                             # %lpad23.i2120
.Ltmp1154:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_602:                             # %ehcleanup43.i2121
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_605
# %bb.603:                              # %if.then.i.i99.i2126
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_605
.LBB16_604:                             # %lpad21.i2116
.Ltmp1151:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_605:                             # %ehcleanup46.i2104
	move	$s1, $s2
.LBB16_606:                             # %ehcleanup46.i2104
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_610
# %bb.607:                              # %if.then.i.i106.i2109
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_610
.LBB16_608:                             # %lpad16.i2103
.Ltmp1148:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_606
.LBB16_609:                             # %lpad14.i2099
.Ltmp1145:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_610:                             # %ehcleanup49.i2087
	move	$s0, $s1
.LBB16_611:                             # %ehcleanup49.i2087
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_617
# %bb.612:                              # %if.then.i.i113.i2092
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_617
.LBB16_613:                             # %lpad9.i2086
.Ltmp1142:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_611
.LBB16_614:                             # %lpad7.i2082
.Ltmp1139:                              # EH_LABEL
	b	.LBB16_616
.LBB16_615:                             # %lpad3.i2061
.Ltmp1136:                              # EH_LABEL
.LBB16_616:                             # %ehcleanup52.i2062
	move	$s4, $a0
	move	$fp, $zero
.LBB16_617:                             # %ehcleanup52.i2062
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_619
# %bb.618:                              # %if.then.i.i120.i2067
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_619:                             # %ehcleanup53.i2069
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_620:                             # %arraydestroy.body56.i2072
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_620
	b	.LBB16_1041
.LBB16_621:                             # %lpad130.i1873
.Ltmp1133:                              # EH_LABEL
	move	$s2, $a0
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
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_623
.LBB16_622:                             # %lpad128.i1861
.Ltmp1130:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_623:                             # %ehcleanup.i1862
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_625
# %bb.624:                              # %if.then.i.i386.i1865
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_625:                             # %ehcleanup141.i1848
	move	$s8, $s1
	b	.LBB16_627
.LBB16_626:                             # %lpad121.i1847
.Ltmp1127:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_627:                             # %ehcleanup141.i1848
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_630
# %bb.628:                              # %if.then.i.i393.i1853
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_630
.LBB16_629:                             # %lpad119.i1843
.Ltmp1124:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_630:                             # %ehcleanup144.i1831
	move	$s7, $s8
	b	.LBB16_632
.LBB16_631:                             # %lpad114.i1830
.Ltmp1121:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_632:                             # %ehcleanup144.i1831
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_635
# %bb.633:                              # %if.then.i.i400.i1836
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_635
.LBB16_634:                             # %lpad112.i1826
.Ltmp1118:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_635:                             # %ehcleanup147.i1814
	move	$s6, $s7
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_639
.LBB16_636:                             # %if.then.i.i407.i1819
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_639
.LBB16_637:                             # %lpad107.i1813
.Ltmp1115:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_636
	b	.LBB16_639
.LBB16_638:                             # %lpad105.i1809
.Ltmp1112:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_639:                             # %ehcleanup150.i1797
	move	$s5, $s6
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_641
.LBB16_640:                             # %if.then.i.i414.i1802
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_641:                             # %ehcleanup153.i1780
	move	$s4, $s5
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_643
.LBB16_642:                             # %if.then.i.i421.i1785
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_643:                             # %ehcleanup156.i1763
	move	$s0, $s4
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_645
.LBB16_644:                             # %if.then.i.i428.i1768
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_645:                             # %ehcleanup159.i1746
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_652
# %bb.646:                              # %ehcleanup162.i1729
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_653
.LBB16_647:                             # %ehcleanup165.i1712
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_654
.LBB16_648:                             # %ehcleanup168.i1695
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_655
.LBB16_649:                             # %ehcleanup171.i1678
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_656
.LBB16_650:                             # %ehcleanup174.i1661
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_657
.LBB16_651:                             # %ehcleanup177.i1647
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_658
	b	.LBB16_659
.LBB16_652:                             # %if.then.i.i435.i1751
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
.LBB16_653:                             # %if.then.i.i442.i1734
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
.LBB16_654:                             # %if.then.i.i449.i1717
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
.LBB16_655:                             # %if.then.i.i456.i1700
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
.LBB16_656:                             # %if.then.i.i463.i1683
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
.LBB16_657:                             # %if.then.i.i470.i1666
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_659
.LBB16_658:                             # %if.then.i.i477.i1652
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_659:                             # %ehcleanup180.i1630
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_661
# %bb.660:                              # %if.then.i.i484.i1635
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_661:                             # %ehcleanup183.i1613
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_663
# %bb.662:                              # %if.then.i.i491.i1618
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_663:                             # %ehcleanup186.i1596
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_665
# %bb.664:                              # %if.then.i.i498.i1601
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_665:                             # %ehcleanup189.i1579
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_667
# %bb.666:                              # %if.then.i.i505.i1584
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_667:                             # %ehcleanup192.i1554
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_669
# %bb.668:                              # %if.then.i.i512.i1559
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_669:                             # %ehcleanup193.i1561
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_671
	.p2align	4, , 16
.LBB16_670:                             # %arraydestroy.body196.i1564
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_670
.LBB16_671:                             # %cleanup.done.i1568
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_672:                             # %lpad100.i1796
.Ltmp1109:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_640
	b	.LBB16_641
.LBB16_673:                             # %lpad98.i1792
.Ltmp1106:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_641
.LBB16_674:                             # %lpad93.i1779
.Ltmp1103:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_642
	b	.LBB16_643
.LBB16_675:                             # %lpad91.i1775
.Ltmp1100:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_643
.LBB16_676:                             # %lpad86.i1762
.Ltmp1097:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_644
	b	.LBB16_645
.LBB16_677:                             # %lpad84.i1758
.Ltmp1094:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_645
.LBB16_678:                             # %lpad79.i1745
.Ltmp1091:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_645
.LBB16_679:                             # %lpad77.i1741
.Ltmp1088:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
	b	.LBB16_653
.LBB16_680:                             # %lpad72.i1728
.Ltmp1085:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
	b	.LBB16_653
.LBB16_681:                             # %lpad70.i1724
.Ltmp1082:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
	b	.LBB16_654
.LBB16_682:                             # %lpad65.i1711
.Ltmp1079:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
	b	.LBB16_654
.LBB16_683:                             # %lpad63.i1707
.Ltmp1076:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
	b	.LBB16_655
.LBB16_684:                             # %lpad58.i1694
.Ltmp1073:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
	b	.LBB16_655
.LBB16_685:                             # %lpad56.i1690
.Ltmp1070:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
	b	.LBB16_656
.LBB16_686:                             # %lpad51.i1677
.Ltmp1067:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
	b	.LBB16_656
.LBB16_687:                             # %lpad49.i1673
.Ltmp1064:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
	b	.LBB16_657
.LBB16_688:                             # %lpad44.i1660
.Ltmp1061:                              # EH_LABEL
	move	$s0, $fp
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
	b	.LBB16_657
.LBB16_689:                             # %lpad37.i1646
.Ltmp1058:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_658
	b	.LBB16_659
.LBB16_690:                             # %lpad35.i1642
.Ltmp1055:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_659
.LBB16_691:                             # %lpad30.i1629
.Ltmp1052:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_659
.LBB16_692:                             # %lpad28.i1625
.Ltmp1049:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_661
.LBB16_693:                             # %lpad23.i1612
.Ltmp1046:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_661
.LBB16_694:                             # %lpad21.i1608
.Ltmp1043:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_663
.LBB16_695:                             # %lpad16.i1595
.Ltmp1040:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_663
.LBB16_696:                             # %lpad14.i1591
.Ltmp1037:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_665
.LBB16_697:                             # %lpad9.i1578
.Ltmp1034:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_665
.LBB16_698:                             # %lpad7.i1574
.Ltmp1031:                              # EH_LABEL
	b	.LBB16_700
.LBB16_699:                             # %lpad3.i1553
.Ltmp1028:                              # EH_LABEL
.LBB16_700:                             # %ehcleanup192.i1554
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_667
.LBB16_701:                             # %lpad130.i1339
.Ltmp1025:                              # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_703
.LBB16_702:                             # %lpad128.i1327
.Ltmp1022:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_703:                             # %ehcleanup.i1328
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_705
# %bb.704:                              # %if.then.i.i386.i1331
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_705:                             # %ehcleanup141.i1314
	move	$fp, $s2
	b	.LBB16_707
.LBB16_706:                             # %lpad121.i1313
.Ltmp1019:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_707:                             # %ehcleanup141.i1314
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_710
# %bb.708:                              # %if.then.i.i393.i1319
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_710
.LBB16_709:                             # %lpad119.i1309
.Ltmp1016:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_710:                             # %ehcleanup144.i1297
	move	$s8, $fp
	b	.LBB16_712
.LBB16_711:                             # %lpad114.i1296
.Ltmp1013:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_712:                             # %ehcleanup144.i1297
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_715
# %bb.713:                              # %if.then.i.i400.i1302
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_715
.LBB16_714:                             # %lpad112.i1292
.Ltmp1010:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_715:                             # %ehcleanup147.i1280
	move	$s7, $s8
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_719
.LBB16_716:                             # %if.then.i.i407.i1285
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_719
.LBB16_717:                             # %lpad107.i1279
.Ltmp1007:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_716
	b	.LBB16_719
.LBB16_718:                             # %lpad105.i1275
.Ltmp1004:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_719:                             # %ehcleanup150.i1263
	move	$s6, $s7
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_721
.LBB16_720:                             # %if.then.i.i414.i1268
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_721:                             # %ehcleanup153.i1246
	move	$s5, $s6
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_723
.LBB16_722:                             # %if.then.i.i421.i1251
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_723:                             # %ehcleanup156.i1229
	move	$s0, $s5
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_725
.LBB16_724:                             # %if.then.i.i428.i1234
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_725:                             # %ehcleanup159.i1212
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_732
# %bb.726:                              # %ehcleanup162.i1195
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_733
.LBB16_727:                             # %ehcleanup165.i1178
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_734
.LBB16_728:                             # %ehcleanup168.i1161
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_735
.LBB16_729:                             # %ehcleanup171.i1144
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_736
.LBB16_730:                             # %ehcleanup174.i1127
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_737
.LBB16_731:                             # %ehcleanup177.i1113
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_738
	b	.LBB16_739
.LBB16_732:                             # %if.then.i.i435.i1217
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
.LBB16_733:                             # %if.then.i.i442.i1200
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
.LBB16_734:                             # %if.then.i.i449.i1183
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
.LBB16_735:                             # %if.then.i.i456.i1166
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
.LBB16_736:                             # %if.then.i.i463.i1149
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
.LBB16_737:                             # %if.then.i.i470.i1132
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_739
.LBB16_738:                             # %if.then.i.i477.i1118
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_739:                             # %ehcleanup180.i1096
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_741
# %bb.740:                              # %if.then.i.i484.i1101
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_741:                             # %ehcleanup183.i1079
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_743
# %bb.742:                              # %if.then.i.i491.i1084
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_743:                             # %ehcleanup186.i1062
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_745
# %bb.744:                              # %if.then.i.i498.i1067
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_745:                             # %ehcleanup189.i1045
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_747
# %bb.746:                              # %if.then.i.i505.i1050
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_747:                             # %ehcleanup192.i1020
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_749
# %bb.748:                              # %if.then.i.i512.i1025
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_749:                             # %ehcleanup193.i1027
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_750:                             # %arraydestroy.body196.i1030
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_750
	b	.LBB16_1041
.LBB16_751:                             # %lpad100.i1262
.Ltmp1001:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_720
	b	.LBB16_721
.LBB16_752:                             # %lpad98.i1258
.Ltmp998:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_721
.LBB16_753:                             # %lpad93.i1245
.Ltmp995:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_722
	b	.LBB16_723
.LBB16_754:                             # %lpad91.i1241
.Ltmp992:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_723
.LBB16_755:                             # %lpad86.i1228
.Ltmp989:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_724
	b	.LBB16_725
.LBB16_756:                             # %lpad84.i1224
.Ltmp986:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_725
.LBB16_757:                             # %lpad79.i1211
.Ltmp983:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_725
.LBB16_758:                             # %lpad77.i1207
.Ltmp980:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
	b	.LBB16_733
.LBB16_759:                             # %lpad72.i1194
.Ltmp977:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
	b	.LBB16_733
.LBB16_760:                             # %lpad70.i1190
.Ltmp974:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
	b	.LBB16_734
.LBB16_761:                             # %lpad65.i1177
.Ltmp971:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
	b	.LBB16_734
.LBB16_762:                             # %lpad63.i1173
.Ltmp968:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
	b	.LBB16_735
.LBB16_763:                             # %lpad58.i1160
.Ltmp965:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
	b	.LBB16_735
.LBB16_764:                             # %lpad56.i1156
.Ltmp962:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
	b	.LBB16_736
.LBB16_765:                             # %lpad51.i1143
.Ltmp959:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
	b	.LBB16_736
.LBB16_766:                             # %lpad49.i1139
.Ltmp956:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
	b	.LBB16_737
.LBB16_767:                             # %lpad44.i1126
.Ltmp953:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
	b	.LBB16_737
.LBB16_768:                             # %lpad37.i1112
.Ltmp950:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_738
	b	.LBB16_739
.LBB16_769:                             # %lpad35.i1108
.Ltmp947:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_739
.LBB16_770:                             # %lpad30.i1095
.Ltmp944:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_739
.LBB16_771:                             # %lpad28.i1091
.Ltmp941:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_741
.LBB16_772:                             # %lpad23.i1078
.Ltmp938:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_741
.LBB16_773:                             # %lpad21.i1074
.Ltmp935:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_743
.LBB16_774:                             # %lpad16.i1061
.Ltmp932:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_743
.LBB16_775:                             # %lpad14.i1057
.Ltmp929:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_745
.LBB16_776:                             # %lpad9.i1044
.Ltmp926:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_745
.LBB16_777:                             # %lpad7.i1040
.Ltmp923:                               # EH_LABEL
	b	.LBB16_779
.LBB16_778:                             # %lpad3.i1019
.Ltmp920:                               # EH_LABEL
.LBB16_779:                             # %ehcleanup192.i1020
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_747
.LBB16_780:                             # %lpad130.i
.Ltmp917:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_782
.LBB16_781:                             # %lpad128.i
.Ltmp914:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_782:                             # %ehcleanup.i822
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_784
# %bb.783:                              # %if.then.i.i386.i825
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_784:                             # %ehcleanup141.i
	move	$fp, $s2
	b	.LBB16_786
.LBB16_785:                             # %lpad121.i812
.Ltmp911:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_786:                             # %ehcleanup141.i
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_789
# %bb.787:                              # %if.then.i.i393.i817
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_789
.LBB16_788:                             # %lpad119.i
.Ltmp908:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_789:                             # %ehcleanup144.i
	move	$s8, $fp
	b	.LBB16_791
.LBB16_790:                             # %lpad114.i801
.Ltmp905:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_791:                             # %ehcleanup144.i
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_794
# %bb.792:                              # %if.then.i.i400.i806
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_794
.LBB16_793:                             # %lpad112.i800
.Ltmp902:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_794:                             # %ehcleanup147.i
	move	$s7, $s8
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_798
.LBB16_795:                             # %if.then.i.i407.i794
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_798
.LBB16_796:                             # %lpad107.i789
.Ltmp899:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_795
	b	.LBB16_798
.LBB16_797:                             # %lpad105.i788
.Ltmp896:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_798:                             # %ehcleanup150.i
	move	$s6, $s7
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_800
.LBB16_799:                             # %if.then.i.i414.i782
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_800:                             # %ehcleanup153.i
	move	$s5, $s6
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_802
.LBB16_801:                             # %if.then.i.i421.i770
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_802:                             # %ehcleanup156.i
	move	$s3, $s5
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_804
.LBB16_803:                             # %if.then.i.i428.i758
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_804:                             # %ehcleanup159.i
	move	$s0, $s3
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_806
.LBB16_805:                             # %if.then.i.i435.i746
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_806:                             # %ehcleanup162.i
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_812
# %bb.807:                              # %ehcleanup165.i
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_813
.LBB16_808:                             # %ehcleanup168.i
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_814
.LBB16_809:                             # %ehcleanup171.i
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_815
.LBB16_810:                             # %ehcleanup174.i
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_816
.LBB16_811:                             # %ehcleanup177.i
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_817
	b	.LBB16_818
.LBB16_812:                             # %if.then.i.i442.i734
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
.LBB16_813:                             # %if.then.i.i449.i722
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
.LBB16_814:                             # %if.then.i.i456.i710
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
.LBB16_815:                             # %if.then.i.i463.i698
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
.LBB16_816:                             # %if.then.i.i470.i687
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_818
.LBB16_817:                             # %if.then.i.i477.i676
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_818:                             # %ehcleanup180.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_820
# %bb.819:                              # %if.then.i.i484.i664
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_820:                             # %ehcleanup183.i652
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_822
# %bb.821:                              # %if.then.i.i491.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_822:                             # %ehcleanup186.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_824
# %bb.823:                              # %if.then.i.i498.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_824:                             # %ehcleanup189.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_826
# %bb.825:                              # %if.then.i.i505.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_826:                             # %ehcleanup192.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_828
# %bb.827:                              # %if.then.i.i512.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_828:                             # %ehcleanup193.i
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_829:                             # %arraydestroy.body196.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_829
	b	.LBB16_1041
.LBB16_830:                             # %lpad100.i777
.Ltmp893:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_799
	b	.LBB16_800
.LBB16_831:                             # %lpad98.i776
.Ltmp890:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_800
.LBB16_832:                             # %lpad93.i765
.Ltmp887:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_801
	b	.LBB16_802
.LBB16_833:                             # %lpad91.i764
.Ltmp884:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_802
.LBB16_834:                             # %lpad86.i753
.Ltmp881:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_803
	b	.LBB16_804
.LBB16_835:                             # %lpad84.i752
.Ltmp878:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_804
.LBB16_836:                             # %lpad79.i741
.Ltmp875:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_805
	b	.LBB16_806
.LBB16_837:                             # %lpad77.i740
.Ltmp872:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_806
.LBB16_838:                             # %lpad72.i729
.Ltmp869:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_806
.LBB16_839:                             # %lpad70.i728
.Ltmp866:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
	b	.LBB16_813
.LBB16_840:                             # %lpad65.i717
.Ltmp863:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
	b	.LBB16_813
.LBB16_841:                             # %lpad63.i716
.Ltmp860:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
	b	.LBB16_814
.LBB16_842:                             # %lpad58.i705
.Ltmp857:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
	b	.LBB16_814
.LBB16_843:                             # %lpad56.i704
.Ltmp854:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
	b	.LBB16_815
.LBB16_844:                             # %lpad51.i693
.Ltmp851:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
	b	.LBB16_815
.LBB16_845:                             # %lpad49.i
.Ltmp848:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
	b	.LBB16_816
.LBB16_846:                             # %lpad44.i682
.Ltmp845:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
	b	.LBB16_816
.LBB16_847:                             # %lpad37.i671
.Ltmp842:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_817
	b	.LBB16_818
.LBB16_848:                             # %lpad35.i670
.Ltmp839:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_818
.LBB16_849:                             # %lpad30.i659
.Ltmp836:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_818
.LBB16_850:                             # %lpad28.i658
.Ltmp833:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_820
.LBB16_851:                             # %lpad23.i651
.Ltmp830:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_820
.LBB16_852:                             # %lpad21.i650
.Ltmp827:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_822
.LBB16_853:                             # %lpad16.i644
.Ltmp824:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_822
.LBB16_854:                             # %lpad14.i643
.Ltmp821:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_824
.LBB16_855:                             # %lpad9.i637
.Ltmp818:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_824
.LBB16_856:                             # %lpad7.i636
.Ltmp815:                               # EH_LABEL
	b	.LBB16_858
.LBB16_857:                             # %lpad3.i630
.Ltmp812:                               # EH_LABEL
.LBB16_858:                             # %ehcleanup192.i
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_826
.LBB16_859:                             # %lpad123.i441
.Ltmp809:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_861
.LBB16_860:                             # %lpad121.i429
.Ltmp806:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_861:                             # %ehcleanup.i430
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_863
# %bb.862:                              # %if.then.i.i365.i433
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_863:                             # %ehcleanup134.i416
	move	$s8, $s2
	b	.LBB16_865
.LBB16_864:                             # %lpad114.i415
.Ltmp803:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_865:                             # %ehcleanup134.i416
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_868
# %bb.866:                              # %if.then.i.i372.i421
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_868
.LBB16_867:                             # %lpad112.i411
.Ltmp800:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_868:                             # %ehcleanup137.i399
	move	$fp, $s8
	b	.LBB16_870
.LBB16_869:                             # %lpad107.i398
.Ltmp797:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_870:                             # %ehcleanup137.i399
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_873
# %bb.871:                              # %if.then.i.i379.i404
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_873
.LBB16_872:                             # %lpad105.i394
.Ltmp794:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_873:                             # %ehcleanup140.i382
	move	$s7, $fp
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_877
.LBB16_874:                             # %if.then.i.i386.i387
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_877
.LBB16_875:                             # %lpad100.i381
.Ltmp791:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_874
	b	.LBB16_877
.LBB16_876:                             # %lpad98.i377
.Ltmp788:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_877:                             # %ehcleanup143.i365
	move	$s6, $s7
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_879
.LBB16_878:                             # %if.then.i.i393.i370
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_879:                             # %ehcleanup146.i348
	move	$s5, $s6
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_881
.LBB16_880:                             # %if.then.i.i400.i353
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_881:                             # %ehcleanup149.i331
	move	$s0, $s5
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_883
.LBB16_882:                             # %if.then.i.i407.i336
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_883:                             # %ehcleanup152.i314
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_889
# %bb.884:                              # %ehcleanup155.i297
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_890
.LBB16_885:                             # %ehcleanup158.i280
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_891
.LBB16_886:                             # %ehcleanup161.i263
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_892
.LBB16_887:                             # %ehcleanup164.i249
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_893
.LBB16_888:                             # %ehcleanup167.i232
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_889:                             # %if.then.i.i414.i319
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
.LBB16_890:                             # %if.then.i.i421.i302
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
.LBB16_891:                             # %if.then.i.i428.i285
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
.LBB16_892:                             # %if.then.i.i435.i268
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_888
.LBB16_893:                             # %if.then.i.i442.i254
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_895
.LBB16_894:                             # %if.then.i.i449.i237
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_895:                             # %ehcleanup170.i215
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_897
# %bb.896:                              # %if.then.i.i456.i220
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_897:                             # %ehcleanup173.i198
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_899
# %bb.898:                              # %if.then.i.i463.i203
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_899:                             # %ehcleanup176.i181
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_901
# %bb.900:                              # %if.then.i.i470.i186
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_901:                             # %ehcleanup179.i164
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_903
# %bb.902:                              # %if.then.i.i477.i169
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_903:                             # %ehcleanup182.i139
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_905
# %bb.904:                              # %if.then.i.i484.i144
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_905:                             # %ehcleanup183.i146
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_906:                             # %arraydestroy.body186.i149
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_906
	b	.LBB16_1041
.LBB16_907:                             # %lpad93.i364
.Ltmp785:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_878
	b	.LBB16_879
.LBB16_908:                             # %lpad91.i360
.Ltmp782:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_879
.LBB16_909:                             # %lpad86.i347
.Ltmp779:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_880
	b	.LBB16_881
.LBB16_910:                             # %lpad84.i343
.Ltmp776:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_881
.LBB16_911:                             # %lpad79.i330
.Ltmp773:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_882
	b	.LBB16_883
.LBB16_912:                             # %lpad77.i326
.Ltmp770:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_883
.LBB16_913:                             # %lpad72.i313
.Ltmp767:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_883
.LBB16_914:                             # %lpad70.i309
.Ltmp764:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
	b	.LBB16_890
.LBB16_915:                             # %lpad65.i296
.Ltmp761:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
	b	.LBB16_890
.LBB16_916:                             # %lpad63.i292
.Ltmp758:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
	b	.LBB16_891
.LBB16_917:                             # %lpad58.i279
.Ltmp755:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
	b	.LBB16_891
.LBB16_918:                             # %lpad56.i275
.Ltmp752:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
	b	.LBB16_892
.LBB16_919:                             # %lpad51.i262
.Ltmp749:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
	b	.LBB16_892
.LBB16_920:                             # %lpad44.i248
.Ltmp746:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_888
	b	.LBB16_893
.LBB16_921:                             # %lpad42.i244
.Ltmp743:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_922:                             # %lpad37.i231
.Ltmp740:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_923:                             # %lpad35.i227
.Ltmp737:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_895
.LBB16_924:                             # %lpad30.i214
.Ltmp734:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_895
.LBB16_925:                             # %lpad28.i210
.Ltmp731:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_897
.LBB16_926:                             # %lpad23.i197
.Ltmp728:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_897
.LBB16_927:                             # %lpad21.i193
.Ltmp725:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_899
.LBB16_928:                             # %lpad16.i180
.Ltmp722:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_899
.LBB16_929:                             # %lpad14.i176
.Ltmp719:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_901
.LBB16_930:                             # %lpad9.i163
.Ltmp716:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_901
.LBB16_931:                             # %lpad7.i159
.Ltmp713:                               # EH_LABEL
	b	.LBB16_933
.LBB16_932:                             # %lpad3.i138
.Ltmp710:                               # EH_LABEL
.LBB16_933:                             # %ehcleanup182.i139
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_903
.LBB16_934:                             # %lpad123.i
.Ltmp707:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_936
.LBB16_935:                             # %lpad121.i
.Ltmp704:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_936:                             # %ehcleanup.i55
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_938
# %bb.937:                              # %if.then.i.i365.i
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_938:                             # %ehcleanup134.i
	move	$fp, $s2
	b	.LBB16_940
.LBB16_939:                             # %lpad114.i
.Ltmp701:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_940:                             # %ehcleanup134.i
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_943
# %bb.941:                              # %if.then.i.i372.i
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_943
.LBB16_942:                             # %lpad112.i
.Ltmp698:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_943:                             # %ehcleanup137.i
	move	$s8, $fp
	b	.LBB16_945
.LBB16_944:                             # %lpad107.i
.Ltmp695:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_945:                             # %ehcleanup137.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_948
# %bb.946:                              # %if.then.i.i379.i
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_948
.LBB16_947:                             # %lpad105.i
.Ltmp692:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_948:                             # %ehcleanup140.i
	move	$s7, $s8
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_952
.LBB16_949:                             # %if.then.i.i386.i
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_952
.LBB16_950:                             # %lpad100.i
.Ltmp689:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_949
	b	.LBB16_952
.LBB16_951:                             # %lpad98.i
.Ltmp686:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_952:                             # %ehcleanup143.i
	move	$s6, $s7
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_954
.LBB16_953:                             # %if.then.i.i393.i
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_954:                             # %ehcleanup146.i
	move	$s5, $s6
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_956
.LBB16_955:                             # %if.then.i.i400.i
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_956:                             # %ehcleanup149.i
	move	$s3, $s5
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_958
.LBB16_957:                             # %if.then.i.i407.i
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_958:                             # %ehcleanup152.i
	move	$s0, $s3
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_960
.LBB16_959:                             # %if.then.i.i414.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_960:                             # %ehcleanup155.i
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_965
# %bb.961:                              # %ehcleanup158.i
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_966
.LBB16_962:                             # %ehcleanup161.i
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_967
.LBB16_963:                             # %ehcleanup164.i
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_968
.LBB16_964:                             # %ehcleanup167.i
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_965:                             # %if.then.i.i421.i
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_962
.LBB16_966:                             # %if.then.i.i428.i
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_963
.LBB16_967:                             # %if.then.i.i435.i
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_964
.LBB16_968:                             # %if.then.i.i442.i
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_970
.LBB16_969:                             # %if.then.i.i449.i
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_970:                             # %ehcleanup170.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_972
# %bb.971:                              # %if.then.i.i456.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_972:                             # %ehcleanup173.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_974
# %bb.973:                              # %if.then.i.i463.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_974:                             # %ehcleanup176.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_976
# %bb.975:                              # %if.then.i.i470.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_976:                             # %ehcleanup179.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_978
# %bb.977:                              # %if.then.i.i477.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_978:                             # %ehcleanup182.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_980
# %bb.979:                              # %if.then.i.i484.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_980:                             # %ehcleanup183.i
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_981:                             # %arraydestroy.body186.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_981
	b	.LBB16_1041
.LBB16_982:                             # %lpad93.i
.Ltmp683:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_953
	b	.LBB16_954
.LBB16_983:                             # %lpad91.i
.Ltmp680:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_954
.LBB16_984:                             # %lpad86.i
.Ltmp677:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_955
	b	.LBB16_956
.LBB16_985:                             # %lpad84.i
.Ltmp674:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_956
.LBB16_986:                             # %lpad79.i
.Ltmp671:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_957
	b	.LBB16_958
.LBB16_987:                             # %lpad77.i
.Ltmp668:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_958
.LBB16_988:                             # %lpad72.i
.Ltmp665:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_959
	b	.LBB16_960
.LBB16_989:                             # %lpad70.i
.Ltmp662:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_960
.LBB16_990:                             # %lpad65.i
.Ltmp659:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_960
.LBB16_991:                             # %lpad63.i
.Ltmp656:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_962
	b	.LBB16_966
.LBB16_992:                             # %lpad58.i
.Ltmp653:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_962
	b	.LBB16_966
.LBB16_993:                             # %lpad56.i
.Ltmp650:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_963
	b	.LBB16_967
.LBB16_994:                             # %lpad51.i
.Ltmp647:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_963
	b	.LBB16_967
.LBB16_995:                             # %lpad44.i
.Ltmp644:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_964
	b	.LBB16_968
.LBB16_996:                             # %lpad42.i
.Ltmp641:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_997:                             # %lpad37.i
.Ltmp638:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_998:                             # %lpad35.i
.Ltmp635:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_970
.LBB16_999:                             # %lpad30.i41
.Ltmp632:                               # EH_LABEL
	move	$s0, $s6
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_970
.LBB16_1000:                            # %lpad28.i40
.Ltmp629:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_972
.LBB16_1001:                            # %lpad23.i37
.Ltmp626:                               # EH_LABEL
	move	$s0, $s3
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_972
.LBB16_1002:                            # %lpad21.i36
.Ltmp623:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s3
	b	.LBB16_974
.LBB16_1003:                            # %lpad16.i33
.Ltmp620:                               # EH_LABEL
	move	$s0, $s3
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_974
.LBB16_1004:                            # %lpad14.i32
.Ltmp617:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $s3
	b	.LBB16_976
.LBB16_1005:                            # %lpad9.i29
.Ltmp614:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_976
.LBB16_1006:                            # %lpad7.i28
.Ltmp611:                               # EH_LABEL
	b	.LBB16_1008
.LBB16_1007:                            # %lpad3.i22
.Ltmp608:                               # EH_LABEL
.LBB16_1008:                            # %ehcleanup182.i
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_978
.LBB16_1009:                            # %lpad32.i
.Ltmp605:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_1011
.LBB16_1010:                            # %lpad30.i
.Ltmp602:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1011:                            # %ehcleanup.i7
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1014
# %bb.1012:                             # %if.then.i.i92.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1014
.LBB16_1013:                            # %lpad28.i
.Ltmp599:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1014:                            # %ehcleanup43.i
	move	$s2, $s3
	b	.LBB16_1016
.LBB16_1015:                            # %lpad23.i
.Ltmp596:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1016:                            # %ehcleanup43.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1019
# %bb.1017:                             # %if.then.i.i99.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1019
.LBB16_1018:                            # %lpad21.i
.Ltmp593:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1019:                            # %ehcleanup46.i
	move	$s1, $s2
.LBB16_1020:                            # %ehcleanup46.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1024
# %bb.1021:                             # %if.then.i.i106.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1024
.LBB16_1022:                            # %lpad16.i
.Ltmp590:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_1020
.LBB16_1023:                            # %lpad14.i
.Ltmp587:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1024:                            # %ehcleanup49.i
	move	$s0, $s1
.LBB16_1025:                            # %ehcleanup49.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1031
# %bb.1026:                             # %if.then.i.i113.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1031
.LBB16_1027:                            # %lpad9.i
.Ltmp584:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_1025
.LBB16_1028:                            # %lpad7.i
.Ltmp581:                               # EH_LABEL
	b	.LBB16_1030
.LBB16_1029:                            # %lpad3.i
.Ltmp578:                               # EH_LABEL
.LBB16_1030:                            # %ehcleanup52.i
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1031:                            # %ehcleanup52.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1033
# %bb.1032:                             # %if.then.i.i120.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_1033:                            # %ehcleanup53.i
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_1041
	.p2align	4, , 16
.LBB16_1034:                            # %arraydestroy.body56.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_1034
	b	.LBB16_1041
.LBB16_1035:                            # %ehcleanup.thread.i
.Ltmp568:                               # EH_LABEL
	move	$s4, $a0
	b	.LBB16_1039
.LBB16_1036:                            # %lpad2.i
.Ltmp575:                               # EH_LABEL
	ld.d	$a2, $sp, 768
	move	$s4, $a0
	bne	$a2, $s2, .LBB16_1038
# %bb.1037:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s1, .LBB16_1039
	b	.LBB16_1041
.LBB16_1038:                            # %ehcleanup.i
	ld.d	$a0, $sp, 784
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB16_1041
.LBB16_1039:                            # %cleanup.action.i
	ori	$a1, $zero, 232
	move	$a0, $fp
.LBB16_1040:                            # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_1041:                            # %common.resume
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_GLOBAL__sub_I_user_counters_thousands_test.cc, .Lfunc_end16-_GLOBAL__sub_I_user_counters_thousands_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp566-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp566
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp567-.Ltmp566              #   Call between .Ltmp566 and .Ltmp567
	.uleb128 .Ltmp568-.Lfunc_begin4         #     jumps to .Ltmp568
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp574-.Ltmp569              #   Call between .Ltmp569 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin4         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp576-.Ltmp574              #   Call between .Ltmp574 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin4         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin4         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp582-.Ltmp580              #   Call between .Ltmp580 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin4         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin4         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp588-.Ltmp586              #   Call between .Ltmp586 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin4         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin4         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp594-.Ltmp592              #   Call between .Ltmp592 and .Ltmp594
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin4         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin4         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp600-.Ltmp598              #   Call between .Ltmp598 and .Ltmp600
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin4         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin4         #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp604-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp606-.Ltmp604              #   Call between .Ltmp604 and .Ltmp606
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin4         #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin4         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin4         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin4         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin4         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin4         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin4         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin4         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin4         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin4         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin4         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin4         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin4         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin4         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin4         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin4         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp655-.Ltmp654              #   Call between .Ltmp654 and .Ltmp655
	.uleb128 .Ltmp656-.Lfunc_begin4         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin4         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp662-.Lfunc_begin4         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin4         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin4         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin4         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin4         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin4         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp680-.Lfunc_begin4         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin4         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp685-.Ltmp684              #   Call between .Ltmp684 and .Ltmp685
	.uleb128 .Ltmp686-.Lfunc_begin4         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp687-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp688-.Ltmp687              #   Call between .Ltmp687 and .Ltmp688
	.uleb128 .Ltmp689-.Lfunc_begin4         #     jumps to .Ltmp689
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp690-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp691-.Ltmp690              #   Call between .Ltmp690 and .Ltmp691
	.uleb128 .Ltmp692-.Lfunc_begin4         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp693-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp694-.Ltmp693              #   Call between .Ltmp693 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin4         #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin4         #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin4         #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin4         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin4         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp706-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp708-.Ltmp706              #   Call between .Ltmp706 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp710-.Lfunc_begin4         #     jumps to .Ltmp710
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin4         #     jumps to .Ltmp713
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp716-.Lfunc_begin4         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin4         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp721-.Ltmp720              #   Call between .Ltmp720 and .Ltmp721
	.uleb128 .Ltmp722-.Lfunc_begin4         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin4         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp726-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp727-.Ltmp726              #   Call between .Ltmp726 and .Ltmp727
	.uleb128 .Ltmp728-.Lfunc_begin4         #     jumps to .Ltmp728
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp731-.Lfunc_begin4         #     jumps to .Ltmp731
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp733-.Ltmp732              #   Call between .Ltmp732 and .Ltmp733
	.uleb128 .Ltmp734-.Lfunc_begin4         #     jumps to .Ltmp734
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp735-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp736-.Ltmp735              #   Call between .Ltmp735 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin4         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp740-.Lfunc_begin4         #     jumps to .Ltmp740
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp741-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp742-.Ltmp741              #   Call between .Ltmp741 and .Ltmp742
	.uleb128 .Ltmp743-.Lfunc_begin4         #     jumps to .Ltmp743
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp745-.Ltmp744              #   Call between .Ltmp744 and .Ltmp745
	.uleb128 .Ltmp746-.Lfunc_begin4         #     jumps to .Ltmp746
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp747-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp748-.Ltmp747              #   Call between .Ltmp747 and .Ltmp748
	.uleb128 .Ltmp749-.Lfunc_begin4         #     jumps to .Ltmp749
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp751-.Ltmp750              #   Call between .Ltmp750 and .Ltmp751
	.uleb128 .Ltmp752-.Lfunc_begin4         #     jumps to .Ltmp752
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp754-.Ltmp753              #   Call between .Ltmp753 and .Ltmp754
	.uleb128 .Ltmp755-.Lfunc_begin4         #     jumps to .Ltmp755
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp756-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp757-.Ltmp756              #   Call between .Ltmp756 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin4         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin4         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp763-.Ltmp762              #   Call between .Ltmp762 and .Ltmp763
	.uleb128 .Ltmp764-.Lfunc_begin4         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp765-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp766-.Ltmp765              #   Call between .Ltmp765 and .Ltmp766
	.uleb128 .Ltmp767-.Lfunc_begin4         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp769-.Ltmp768              #   Call between .Ltmp768 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin4         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin4         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin4         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin4         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin4         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin4         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin4         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin4         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin4         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin4         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin4         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin4         # >> Call Site 86 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin4         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin4         # >> Call Site 87 <<
	.uleb128 .Ltmp805-.Ltmp804              #   Call between .Ltmp804 and .Ltmp805
	.uleb128 .Ltmp806-.Lfunc_begin4         #     jumps to .Ltmp806
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin4         # >> Call Site 88 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp809-.Lfunc_begin4         #     jumps to .Ltmp809
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin4         # >> Call Site 89 <<
	.uleb128 .Ltmp810-.Ltmp808              #   Call between .Ltmp808 and .Ltmp810
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin4         # >> Call Site 90 <<
	.uleb128 .Ltmp811-.Ltmp810              #   Call between .Ltmp810 and .Ltmp811
	.uleb128 .Ltmp812-.Lfunc_begin4         #     jumps to .Ltmp812
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin4         # >> Call Site 91 <<
	.uleb128 .Ltmp814-.Ltmp813              #   Call between .Ltmp813 and .Ltmp814
	.uleb128 .Ltmp815-.Lfunc_begin4         #     jumps to .Ltmp815
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin4         # >> Call Site 92 <<
	.uleb128 .Ltmp817-.Ltmp816              #   Call between .Ltmp816 and .Ltmp817
	.uleb128 .Ltmp818-.Lfunc_begin4         #     jumps to .Ltmp818
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin4         # >> Call Site 93 <<
	.uleb128 .Ltmp820-.Ltmp819              #   Call between .Ltmp819 and .Ltmp820
	.uleb128 .Ltmp821-.Lfunc_begin4         #     jumps to .Ltmp821
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp822-.Lfunc_begin4         # >> Call Site 94 <<
	.uleb128 .Ltmp823-.Ltmp822              #   Call between .Ltmp822 and .Ltmp823
	.uleb128 .Ltmp824-.Lfunc_begin4         #     jumps to .Ltmp824
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp825-.Lfunc_begin4         # >> Call Site 95 <<
	.uleb128 .Ltmp826-.Ltmp825              #   Call between .Ltmp825 and .Ltmp826
	.uleb128 .Ltmp827-.Lfunc_begin4         #     jumps to .Ltmp827
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin4         # >> Call Site 96 <<
	.uleb128 .Ltmp829-.Ltmp828              #   Call between .Ltmp828 and .Ltmp829
	.uleb128 .Ltmp830-.Lfunc_begin4         #     jumps to .Ltmp830
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp831-.Lfunc_begin4         # >> Call Site 97 <<
	.uleb128 .Ltmp832-.Ltmp831              #   Call between .Ltmp831 and .Ltmp832
	.uleb128 .Ltmp833-.Lfunc_begin4         #     jumps to .Ltmp833
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp834-.Lfunc_begin4         # >> Call Site 98 <<
	.uleb128 .Ltmp835-.Ltmp834              #   Call between .Ltmp834 and .Ltmp835
	.uleb128 .Ltmp836-.Lfunc_begin4         #     jumps to .Ltmp836
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin4         # >> Call Site 99 <<
	.uleb128 .Ltmp838-.Ltmp837              #   Call between .Ltmp837 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin4         #     jumps to .Ltmp839
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin4         # >> Call Site 100 <<
	.uleb128 .Ltmp841-.Ltmp840              #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin4         #     jumps to .Ltmp842
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin4         # >> Call Site 101 <<
	.uleb128 .Ltmp844-.Ltmp843              #   Call between .Ltmp843 and .Ltmp844
	.uleb128 .Ltmp845-.Lfunc_begin4         #     jumps to .Ltmp845
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin4         # >> Call Site 102 <<
	.uleb128 .Ltmp847-.Ltmp846              #   Call between .Ltmp846 and .Ltmp847
	.uleb128 .Ltmp848-.Lfunc_begin4         #     jumps to .Ltmp848
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp849-.Lfunc_begin4         # >> Call Site 103 <<
	.uleb128 .Ltmp850-.Ltmp849              #   Call between .Ltmp849 and .Ltmp850
	.uleb128 .Ltmp851-.Lfunc_begin4         #     jumps to .Ltmp851
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp852-.Lfunc_begin4         # >> Call Site 104 <<
	.uleb128 .Ltmp853-.Ltmp852              #   Call between .Ltmp852 and .Ltmp853
	.uleb128 .Ltmp854-.Lfunc_begin4         #     jumps to .Ltmp854
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp855-.Lfunc_begin4         # >> Call Site 105 <<
	.uleb128 .Ltmp856-.Ltmp855              #   Call between .Ltmp855 and .Ltmp856
	.uleb128 .Ltmp857-.Lfunc_begin4         #     jumps to .Ltmp857
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp858-.Lfunc_begin4         # >> Call Site 106 <<
	.uleb128 .Ltmp859-.Ltmp858              #   Call between .Ltmp858 and .Ltmp859
	.uleb128 .Ltmp860-.Lfunc_begin4         #     jumps to .Ltmp860
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin4         # >> Call Site 107 <<
	.uleb128 .Ltmp862-.Ltmp861              #   Call between .Ltmp861 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin4         #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin4         # >> Call Site 108 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin4         #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin4         # >> Call Site 109 <<
	.uleb128 .Ltmp868-.Ltmp867              #   Call between .Ltmp867 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin4         #     jumps to .Ltmp869
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin4         # >> Call Site 110 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin4         #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin4         # >> Call Site 111 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin4         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin4         # >> Call Site 112 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin4         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin4         # >> Call Site 113 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin4         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin4         # >> Call Site 114 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin4         #     jumps to .Ltmp884
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin4         # >> Call Site 115 <<
	.uleb128 .Ltmp886-.Ltmp885              #   Call between .Ltmp885 and .Ltmp886
	.uleb128 .Ltmp887-.Lfunc_begin4         #     jumps to .Ltmp887
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin4         # >> Call Site 116 <<
	.uleb128 .Ltmp889-.Ltmp888              #   Call between .Ltmp888 and .Ltmp889
	.uleb128 .Ltmp890-.Lfunc_begin4         #     jumps to .Ltmp890
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp891-.Lfunc_begin4         # >> Call Site 117 <<
	.uleb128 .Ltmp892-.Ltmp891              #   Call between .Ltmp891 and .Ltmp892
	.uleb128 .Ltmp893-.Lfunc_begin4         #     jumps to .Ltmp893
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp894-.Lfunc_begin4         # >> Call Site 118 <<
	.uleb128 .Ltmp895-.Ltmp894              #   Call between .Ltmp894 and .Ltmp895
	.uleb128 .Ltmp896-.Lfunc_begin4         #     jumps to .Ltmp896
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp897-.Lfunc_begin4         # >> Call Site 119 <<
	.uleb128 .Ltmp898-.Ltmp897              #   Call between .Ltmp897 and .Ltmp898
	.uleb128 .Ltmp899-.Lfunc_begin4         #     jumps to .Ltmp899
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin4         # >> Call Site 120 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp902-.Lfunc_begin4         #     jumps to .Ltmp902
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp903-.Lfunc_begin4         # >> Call Site 121 <<
	.uleb128 .Ltmp904-.Ltmp903              #   Call between .Ltmp903 and .Ltmp904
	.uleb128 .Ltmp905-.Lfunc_begin4         #     jumps to .Ltmp905
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp906-.Lfunc_begin4         # >> Call Site 122 <<
	.uleb128 .Ltmp907-.Ltmp906              #   Call between .Ltmp906 and .Ltmp907
	.uleb128 .Ltmp908-.Lfunc_begin4         #     jumps to .Ltmp908
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin4         # >> Call Site 123 <<
	.uleb128 .Ltmp910-.Ltmp909              #   Call between .Ltmp909 and .Ltmp910
	.uleb128 .Ltmp911-.Lfunc_begin4         #     jumps to .Ltmp911
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin4         # >> Call Site 124 <<
	.uleb128 .Ltmp913-.Ltmp912              #   Call between .Ltmp912 and .Ltmp913
	.uleb128 .Ltmp914-.Lfunc_begin4         #     jumps to .Ltmp914
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp915-.Lfunc_begin4         # >> Call Site 125 <<
	.uleb128 .Ltmp916-.Ltmp915              #   Call between .Ltmp915 and .Ltmp916
	.uleb128 .Ltmp917-.Lfunc_begin4         #     jumps to .Ltmp917
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp916-.Lfunc_begin4         # >> Call Site 126 <<
	.uleb128 .Ltmp918-.Ltmp916              #   Call between .Ltmp916 and .Ltmp918
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin4         # >> Call Site 127 <<
	.uleb128 .Ltmp919-.Ltmp918              #   Call between .Ltmp918 and .Ltmp919
	.uleb128 .Ltmp920-.Lfunc_begin4         #     jumps to .Ltmp920
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp921-.Lfunc_begin4         # >> Call Site 128 <<
	.uleb128 .Ltmp922-.Ltmp921              #   Call between .Ltmp921 and .Ltmp922
	.uleb128 .Ltmp923-.Lfunc_begin4         #     jumps to .Ltmp923
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp924-.Lfunc_begin4         # >> Call Site 129 <<
	.uleb128 .Ltmp925-.Ltmp924              #   Call between .Ltmp924 and .Ltmp925
	.uleb128 .Ltmp926-.Lfunc_begin4         #     jumps to .Ltmp926
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin4         # >> Call Site 130 <<
	.uleb128 .Ltmp928-.Ltmp927              #   Call between .Ltmp927 and .Ltmp928
	.uleb128 .Ltmp929-.Lfunc_begin4         #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin4         # >> Call Site 131 <<
	.uleb128 .Ltmp931-.Ltmp930              #   Call between .Ltmp930 and .Ltmp931
	.uleb128 .Ltmp932-.Lfunc_begin4         #     jumps to .Ltmp932
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin4         # >> Call Site 132 <<
	.uleb128 .Ltmp934-.Ltmp933              #   Call between .Ltmp933 and .Ltmp934
	.uleb128 .Ltmp935-.Lfunc_begin4         #     jumps to .Ltmp935
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp936-.Lfunc_begin4         # >> Call Site 133 <<
	.uleb128 .Ltmp937-.Ltmp936              #   Call between .Ltmp936 and .Ltmp937
	.uleb128 .Ltmp938-.Lfunc_begin4         #     jumps to .Ltmp938
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin4         # >> Call Site 134 <<
	.uleb128 .Ltmp940-.Ltmp939              #   Call between .Ltmp939 and .Ltmp940
	.uleb128 .Ltmp941-.Lfunc_begin4         #     jumps to .Ltmp941
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp942-.Lfunc_begin4         # >> Call Site 135 <<
	.uleb128 .Ltmp943-.Ltmp942              #   Call between .Ltmp942 and .Ltmp943
	.uleb128 .Ltmp944-.Lfunc_begin4         #     jumps to .Ltmp944
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp945-.Lfunc_begin4         # >> Call Site 136 <<
	.uleb128 .Ltmp946-.Ltmp945              #   Call between .Ltmp945 and .Ltmp946
	.uleb128 .Ltmp947-.Lfunc_begin4         #     jumps to .Ltmp947
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp948-.Lfunc_begin4         # >> Call Site 137 <<
	.uleb128 .Ltmp949-.Ltmp948              #   Call between .Ltmp948 and .Ltmp949
	.uleb128 .Ltmp950-.Lfunc_begin4         #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin4         # >> Call Site 138 <<
	.uleb128 .Ltmp952-.Ltmp951              #   Call between .Ltmp951 and .Ltmp952
	.uleb128 .Ltmp953-.Lfunc_begin4         #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp954-.Lfunc_begin4         # >> Call Site 139 <<
	.uleb128 .Ltmp955-.Ltmp954              #   Call between .Ltmp954 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin4         #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin4         # >> Call Site 140 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin4         #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin4         # >> Call Site 141 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin4         #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin4         # >> Call Site 142 <<
	.uleb128 .Ltmp964-.Ltmp963              #   Call between .Ltmp963 and .Ltmp964
	.uleb128 .Ltmp965-.Lfunc_begin4         #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp966-.Lfunc_begin4         # >> Call Site 143 <<
	.uleb128 .Ltmp967-.Ltmp966              #   Call between .Ltmp966 and .Ltmp967
	.uleb128 .Ltmp968-.Lfunc_begin4         #     jumps to .Ltmp968
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin4         # >> Call Site 144 <<
	.uleb128 .Ltmp970-.Ltmp969              #   Call between .Ltmp969 and .Ltmp970
	.uleb128 .Ltmp971-.Lfunc_begin4         #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp972-.Lfunc_begin4         # >> Call Site 145 <<
	.uleb128 .Ltmp973-.Ltmp972              #   Call between .Ltmp972 and .Ltmp973
	.uleb128 .Ltmp974-.Lfunc_begin4         #     jumps to .Ltmp974
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp975-.Lfunc_begin4         # >> Call Site 146 <<
	.uleb128 .Ltmp976-.Ltmp975              #   Call between .Ltmp975 and .Ltmp976
	.uleb128 .Ltmp977-.Lfunc_begin4         #     jumps to .Ltmp977
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin4         # >> Call Site 147 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin4         #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin4         # >> Call Site 148 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin4         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin4         # >> Call Site 149 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp986-.Lfunc_begin4         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp987-.Lfunc_begin4         # >> Call Site 150 <<
	.uleb128 .Ltmp988-.Ltmp987              #   Call between .Ltmp987 and .Ltmp988
	.uleb128 .Ltmp989-.Lfunc_begin4         #     jumps to .Ltmp989
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp990-.Lfunc_begin4         # >> Call Site 151 <<
	.uleb128 .Ltmp991-.Ltmp990              #   Call between .Ltmp990 and .Ltmp991
	.uleb128 .Ltmp992-.Lfunc_begin4         #     jumps to .Ltmp992
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp993-.Lfunc_begin4         # >> Call Site 152 <<
	.uleb128 .Ltmp994-.Ltmp993              #   Call between .Ltmp993 and .Ltmp994
	.uleb128 .Ltmp995-.Lfunc_begin4         #     jumps to .Ltmp995
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp996-.Lfunc_begin4         # >> Call Site 153 <<
	.uleb128 .Ltmp997-.Ltmp996              #   Call between .Ltmp996 and .Ltmp997
	.uleb128 .Ltmp998-.Lfunc_begin4         #     jumps to .Ltmp998
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp999-.Lfunc_begin4         # >> Call Site 154 <<
	.uleb128 .Ltmp1000-.Ltmp999             #   Call between .Ltmp999 and .Ltmp1000
	.uleb128 .Ltmp1001-.Lfunc_begin4        #     jumps to .Ltmp1001
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1002-.Lfunc_begin4        # >> Call Site 155 <<
	.uleb128 .Ltmp1003-.Ltmp1002            #   Call between .Ltmp1002 and .Ltmp1003
	.uleb128 .Ltmp1004-.Lfunc_begin4        #     jumps to .Ltmp1004
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1005-.Lfunc_begin4        # >> Call Site 156 <<
	.uleb128 .Ltmp1006-.Ltmp1005            #   Call between .Ltmp1005 and .Ltmp1006
	.uleb128 .Ltmp1007-.Lfunc_begin4        #     jumps to .Ltmp1007
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1008-.Lfunc_begin4        # >> Call Site 157 <<
	.uleb128 .Ltmp1009-.Ltmp1008            #   Call between .Ltmp1008 and .Ltmp1009
	.uleb128 .Ltmp1010-.Lfunc_begin4        #     jumps to .Ltmp1010
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1011-.Lfunc_begin4        # >> Call Site 158 <<
	.uleb128 .Ltmp1012-.Ltmp1011            #   Call between .Ltmp1011 and .Ltmp1012
	.uleb128 .Ltmp1013-.Lfunc_begin4        #     jumps to .Ltmp1013
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1014-.Lfunc_begin4        # >> Call Site 159 <<
	.uleb128 .Ltmp1015-.Ltmp1014            #   Call between .Ltmp1014 and .Ltmp1015
	.uleb128 .Ltmp1016-.Lfunc_begin4        #     jumps to .Ltmp1016
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1017-.Lfunc_begin4        # >> Call Site 160 <<
	.uleb128 .Ltmp1018-.Ltmp1017            #   Call between .Ltmp1017 and .Ltmp1018
	.uleb128 .Ltmp1019-.Lfunc_begin4        #     jumps to .Ltmp1019
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1020-.Lfunc_begin4        # >> Call Site 161 <<
	.uleb128 .Ltmp1021-.Ltmp1020            #   Call between .Ltmp1020 and .Ltmp1021
	.uleb128 .Ltmp1022-.Lfunc_begin4        #     jumps to .Ltmp1022
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1023-.Lfunc_begin4        # >> Call Site 162 <<
	.uleb128 .Ltmp1024-.Ltmp1023            #   Call between .Ltmp1023 and .Ltmp1024
	.uleb128 .Ltmp1025-.Lfunc_begin4        #     jumps to .Ltmp1025
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1024-.Lfunc_begin4        # >> Call Site 163 <<
	.uleb128 .Ltmp1026-.Ltmp1024            #   Call between .Ltmp1024 and .Ltmp1026
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1026-.Lfunc_begin4        # >> Call Site 164 <<
	.uleb128 .Ltmp1027-.Ltmp1026            #   Call between .Ltmp1026 and .Ltmp1027
	.uleb128 .Ltmp1028-.Lfunc_begin4        #     jumps to .Ltmp1028
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1029-.Lfunc_begin4        # >> Call Site 165 <<
	.uleb128 .Ltmp1030-.Ltmp1029            #   Call between .Ltmp1029 and .Ltmp1030
	.uleb128 .Ltmp1031-.Lfunc_begin4        #     jumps to .Ltmp1031
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1032-.Lfunc_begin4        # >> Call Site 166 <<
	.uleb128 .Ltmp1033-.Ltmp1032            #   Call between .Ltmp1032 and .Ltmp1033
	.uleb128 .Ltmp1034-.Lfunc_begin4        #     jumps to .Ltmp1034
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1035-.Lfunc_begin4        # >> Call Site 167 <<
	.uleb128 .Ltmp1036-.Ltmp1035            #   Call between .Ltmp1035 and .Ltmp1036
	.uleb128 .Ltmp1037-.Lfunc_begin4        #     jumps to .Ltmp1037
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1038-.Lfunc_begin4        # >> Call Site 168 <<
	.uleb128 .Ltmp1039-.Ltmp1038            #   Call between .Ltmp1038 and .Ltmp1039
	.uleb128 .Ltmp1040-.Lfunc_begin4        #     jumps to .Ltmp1040
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1041-.Lfunc_begin4        # >> Call Site 169 <<
	.uleb128 .Ltmp1042-.Ltmp1041            #   Call between .Ltmp1041 and .Ltmp1042
	.uleb128 .Ltmp1043-.Lfunc_begin4        #     jumps to .Ltmp1043
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1044-.Lfunc_begin4        # >> Call Site 170 <<
	.uleb128 .Ltmp1045-.Ltmp1044            #   Call between .Ltmp1044 and .Ltmp1045
	.uleb128 .Ltmp1046-.Lfunc_begin4        #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1047-.Lfunc_begin4        # >> Call Site 171 <<
	.uleb128 .Ltmp1048-.Ltmp1047            #   Call between .Ltmp1047 and .Ltmp1048
	.uleb128 .Ltmp1049-.Lfunc_begin4        #     jumps to .Ltmp1049
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1050-.Lfunc_begin4        # >> Call Site 172 <<
	.uleb128 .Ltmp1051-.Ltmp1050            #   Call between .Ltmp1050 and .Ltmp1051
	.uleb128 .Ltmp1052-.Lfunc_begin4        #     jumps to .Ltmp1052
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin4        # >> Call Site 173 <<
	.uleb128 .Ltmp1054-.Ltmp1053            #   Call between .Ltmp1053 and .Ltmp1054
	.uleb128 .Ltmp1055-.Lfunc_begin4        #     jumps to .Ltmp1055
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1056-.Lfunc_begin4        # >> Call Site 174 <<
	.uleb128 .Ltmp1057-.Ltmp1056            #   Call between .Ltmp1056 and .Ltmp1057
	.uleb128 .Ltmp1058-.Lfunc_begin4        #     jumps to .Ltmp1058
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1059-.Lfunc_begin4        # >> Call Site 175 <<
	.uleb128 .Ltmp1060-.Ltmp1059            #   Call between .Ltmp1059 and .Ltmp1060
	.uleb128 .Ltmp1061-.Lfunc_begin4        #     jumps to .Ltmp1061
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1062-.Lfunc_begin4        # >> Call Site 176 <<
	.uleb128 .Ltmp1063-.Ltmp1062            #   Call between .Ltmp1062 and .Ltmp1063
	.uleb128 .Ltmp1064-.Lfunc_begin4        #     jumps to .Ltmp1064
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1065-.Lfunc_begin4        # >> Call Site 177 <<
	.uleb128 .Ltmp1066-.Ltmp1065            #   Call between .Ltmp1065 and .Ltmp1066
	.uleb128 .Ltmp1067-.Lfunc_begin4        #     jumps to .Ltmp1067
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1068-.Lfunc_begin4        # >> Call Site 178 <<
	.uleb128 .Ltmp1069-.Ltmp1068            #   Call between .Ltmp1068 and .Ltmp1069
	.uleb128 .Ltmp1070-.Lfunc_begin4        #     jumps to .Ltmp1070
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1071-.Lfunc_begin4        # >> Call Site 179 <<
	.uleb128 .Ltmp1072-.Ltmp1071            #   Call between .Ltmp1071 and .Ltmp1072
	.uleb128 .Ltmp1073-.Lfunc_begin4        #     jumps to .Ltmp1073
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1074-.Lfunc_begin4        # >> Call Site 180 <<
	.uleb128 .Ltmp1075-.Ltmp1074            #   Call between .Ltmp1074 and .Ltmp1075
	.uleb128 .Ltmp1076-.Lfunc_begin4        #     jumps to .Ltmp1076
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1077-.Lfunc_begin4        # >> Call Site 181 <<
	.uleb128 .Ltmp1078-.Ltmp1077            #   Call between .Ltmp1077 and .Ltmp1078
	.uleb128 .Ltmp1079-.Lfunc_begin4        #     jumps to .Ltmp1079
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1080-.Lfunc_begin4        # >> Call Site 182 <<
	.uleb128 .Ltmp1081-.Ltmp1080            #   Call between .Ltmp1080 and .Ltmp1081
	.uleb128 .Ltmp1082-.Lfunc_begin4        #     jumps to .Ltmp1082
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1083-.Lfunc_begin4        # >> Call Site 183 <<
	.uleb128 .Ltmp1084-.Ltmp1083            #   Call between .Ltmp1083 and .Ltmp1084
	.uleb128 .Ltmp1085-.Lfunc_begin4        #     jumps to .Ltmp1085
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1086-.Lfunc_begin4        # >> Call Site 184 <<
	.uleb128 .Ltmp1087-.Ltmp1086            #   Call between .Ltmp1086 and .Ltmp1087
	.uleb128 .Ltmp1088-.Lfunc_begin4        #     jumps to .Ltmp1088
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1089-.Lfunc_begin4        # >> Call Site 185 <<
	.uleb128 .Ltmp1090-.Ltmp1089            #   Call between .Ltmp1089 and .Ltmp1090
	.uleb128 .Ltmp1091-.Lfunc_begin4        #     jumps to .Ltmp1091
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1092-.Lfunc_begin4        # >> Call Site 186 <<
	.uleb128 .Ltmp1093-.Ltmp1092            #   Call between .Ltmp1092 and .Ltmp1093
	.uleb128 .Ltmp1094-.Lfunc_begin4        #     jumps to .Ltmp1094
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1095-.Lfunc_begin4        # >> Call Site 187 <<
	.uleb128 .Ltmp1096-.Ltmp1095            #   Call between .Ltmp1095 and .Ltmp1096
	.uleb128 .Ltmp1097-.Lfunc_begin4        #     jumps to .Ltmp1097
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1098-.Lfunc_begin4        # >> Call Site 188 <<
	.uleb128 .Ltmp1099-.Ltmp1098            #   Call between .Ltmp1098 and .Ltmp1099
	.uleb128 .Ltmp1100-.Lfunc_begin4        #     jumps to .Ltmp1100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1101-.Lfunc_begin4        # >> Call Site 189 <<
	.uleb128 .Ltmp1102-.Ltmp1101            #   Call between .Ltmp1101 and .Ltmp1102
	.uleb128 .Ltmp1103-.Lfunc_begin4        #     jumps to .Ltmp1103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1104-.Lfunc_begin4        # >> Call Site 190 <<
	.uleb128 .Ltmp1105-.Ltmp1104            #   Call between .Ltmp1104 and .Ltmp1105
	.uleb128 .Ltmp1106-.Lfunc_begin4        #     jumps to .Ltmp1106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1107-.Lfunc_begin4        # >> Call Site 191 <<
	.uleb128 .Ltmp1108-.Ltmp1107            #   Call between .Ltmp1107 and .Ltmp1108
	.uleb128 .Ltmp1109-.Lfunc_begin4        #     jumps to .Ltmp1109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1110-.Lfunc_begin4        # >> Call Site 192 <<
	.uleb128 .Ltmp1111-.Ltmp1110            #   Call between .Ltmp1110 and .Ltmp1111
	.uleb128 .Ltmp1112-.Lfunc_begin4        #     jumps to .Ltmp1112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1113-.Lfunc_begin4        # >> Call Site 193 <<
	.uleb128 .Ltmp1114-.Ltmp1113            #   Call between .Ltmp1113 and .Ltmp1114
	.uleb128 .Ltmp1115-.Lfunc_begin4        #     jumps to .Ltmp1115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1116-.Lfunc_begin4        # >> Call Site 194 <<
	.uleb128 .Ltmp1117-.Ltmp1116            #   Call between .Ltmp1116 and .Ltmp1117
	.uleb128 .Ltmp1118-.Lfunc_begin4        #     jumps to .Ltmp1118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1119-.Lfunc_begin4        # >> Call Site 195 <<
	.uleb128 .Ltmp1120-.Ltmp1119            #   Call between .Ltmp1119 and .Ltmp1120
	.uleb128 .Ltmp1121-.Lfunc_begin4        #     jumps to .Ltmp1121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1122-.Lfunc_begin4        # >> Call Site 196 <<
	.uleb128 .Ltmp1123-.Ltmp1122            #   Call between .Ltmp1122 and .Ltmp1123
	.uleb128 .Ltmp1124-.Lfunc_begin4        #     jumps to .Ltmp1124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1125-.Lfunc_begin4        # >> Call Site 197 <<
	.uleb128 .Ltmp1126-.Ltmp1125            #   Call between .Ltmp1125 and .Ltmp1126
	.uleb128 .Ltmp1127-.Lfunc_begin4        #     jumps to .Ltmp1127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1128-.Lfunc_begin4        # >> Call Site 198 <<
	.uleb128 .Ltmp1129-.Ltmp1128            #   Call between .Ltmp1128 and .Ltmp1129
	.uleb128 .Ltmp1130-.Lfunc_begin4        #     jumps to .Ltmp1130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1131-.Lfunc_begin4        # >> Call Site 199 <<
	.uleb128 .Ltmp1132-.Ltmp1131            #   Call between .Ltmp1131 and .Ltmp1132
	.uleb128 .Ltmp1133-.Lfunc_begin4        #     jumps to .Ltmp1133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1132-.Lfunc_begin4        # >> Call Site 200 <<
	.uleb128 .Ltmp1134-.Ltmp1132            #   Call between .Ltmp1132 and .Ltmp1134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1134-.Lfunc_begin4        # >> Call Site 201 <<
	.uleb128 .Ltmp1135-.Ltmp1134            #   Call between .Ltmp1134 and .Ltmp1135
	.uleb128 .Ltmp1136-.Lfunc_begin4        #     jumps to .Ltmp1136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1137-.Lfunc_begin4        # >> Call Site 202 <<
	.uleb128 .Ltmp1138-.Ltmp1137            #   Call between .Ltmp1137 and .Ltmp1138
	.uleb128 .Ltmp1139-.Lfunc_begin4        #     jumps to .Ltmp1139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1138-.Lfunc_begin4        # >> Call Site 203 <<
	.uleb128 .Ltmp1140-.Ltmp1138            #   Call between .Ltmp1138 and .Ltmp1140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1140-.Lfunc_begin4        # >> Call Site 204 <<
	.uleb128 .Ltmp1141-.Ltmp1140            #   Call between .Ltmp1140 and .Ltmp1141
	.uleb128 .Ltmp1142-.Lfunc_begin4        #     jumps to .Ltmp1142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1143-.Lfunc_begin4        # >> Call Site 205 <<
	.uleb128 .Ltmp1144-.Ltmp1143            #   Call between .Ltmp1143 and .Ltmp1144
	.uleb128 .Ltmp1145-.Lfunc_begin4        #     jumps to .Ltmp1145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1144-.Lfunc_begin4        # >> Call Site 206 <<
	.uleb128 .Ltmp1146-.Ltmp1144            #   Call between .Ltmp1144 and .Ltmp1146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1146-.Lfunc_begin4        # >> Call Site 207 <<
	.uleb128 .Ltmp1147-.Ltmp1146            #   Call between .Ltmp1146 and .Ltmp1147
	.uleb128 .Ltmp1148-.Lfunc_begin4        #     jumps to .Ltmp1148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1149-.Lfunc_begin4        # >> Call Site 208 <<
	.uleb128 .Ltmp1150-.Ltmp1149            #   Call between .Ltmp1149 and .Ltmp1150
	.uleb128 .Ltmp1151-.Lfunc_begin4        #     jumps to .Ltmp1151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1150-.Lfunc_begin4        # >> Call Site 209 <<
	.uleb128 .Ltmp1152-.Ltmp1150            #   Call between .Ltmp1150 and .Ltmp1152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1152-.Lfunc_begin4        # >> Call Site 210 <<
	.uleb128 .Ltmp1153-.Ltmp1152            #   Call between .Ltmp1152 and .Ltmp1153
	.uleb128 .Ltmp1154-.Lfunc_begin4        #     jumps to .Ltmp1154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1155-.Lfunc_begin4        # >> Call Site 211 <<
	.uleb128 .Ltmp1156-.Ltmp1155            #   Call between .Ltmp1155 and .Ltmp1156
	.uleb128 .Ltmp1157-.Lfunc_begin4        #     jumps to .Ltmp1157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1158-.Lfunc_begin4        # >> Call Site 212 <<
	.uleb128 .Ltmp1159-.Ltmp1158            #   Call between .Ltmp1158 and .Ltmp1159
	.uleb128 .Ltmp1160-.Lfunc_begin4        #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1161-.Lfunc_begin4        # >> Call Site 213 <<
	.uleb128 .Ltmp1162-.Ltmp1161            #   Call between .Ltmp1161 and .Ltmp1162
	.uleb128 .Ltmp1163-.Lfunc_begin4        #     jumps to .Ltmp1163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1162-.Lfunc_begin4        # >> Call Site 214 <<
	.uleb128 .Ltmp1164-.Ltmp1162            #   Call between .Ltmp1162 and .Ltmp1164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1164-.Lfunc_begin4        # >> Call Site 215 <<
	.uleb128 .Ltmp1165-.Ltmp1164            #   Call between .Ltmp1164 and .Ltmp1165
	.uleb128 .Ltmp1166-.Lfunc_begin4        #     jumps to .Ltmp1166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1170-.Lfunc_begin4        # >> Call Site 216 <<
	.uleb128 .Ltmp1171-.Ltmp1170            #   Call between .Ltmp1170 and .Ltmp1171
	.uleb128 .Ltmp1172-.Lfunc_begin4        #     jumps to .Ltmp1172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1171-.Lfunc_begin4        # >> Call Site 217 <<
	.uleb128 .Ltmp1167-.Ltmp1171            #   Call between .Ltmp1171 and .Ltmp1167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1167-.Lfunc_begin4        # >> Call Site 218 <<
	.uleb128 .Ltmp1168-.Ltmp1167            #   Call between .Ltmp1167 and .Ltmp1168
	.uleb128 .Ltmp1169-.Lfunc_begin4        #     jumps to .Ltmp1169
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1168-.Lfunc_begin4        # >> Call Site 219 <<
	.uleb128 .Lfunc_end16-.Ltmp1168         #   Call between .Ltmp1168 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"t0_1000000DefaultBase"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"t1_1000000Base1000"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
	.p2align	3, 0x0
.L.str.2:
	.asciz	"t2_1000000Base1024"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"t3_1048576Base1000"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"t4_1048576Base1024"
	.size	.L.str.4, 19

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"BM_Counters_Thousands"
	.size	.L.str.6, 22

	.hidden	dummy51                         # @dummy51
	.type	dummy51,@object
	.bss
	.globl	dummy51
	.p2align	2, 0x0
dummy51:
	.word	0                               # 0x0
	.size	dummy51, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.8:
	.asciz	"^BM_Counters_Thousands/repeats:2 %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.8, 180

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"^BM_Counters_Thousands/repeats:2_mean %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.9, 185

	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"^BM_Counters_Thousands/repeats:2_median %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.10, 187

	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"^BM_Counters_Thousands/repeats:2_stddev %console_time_only_report [ ]*2 t0_1000000DefaultBase=0 t1_1000000Base1000=0 t2_1000000Base1024=0 t3_1048576Base1000=0 t4_1048576Base1024=0$"
	.size	.L.str.11, 181

	.hidden	dummy70                         # @dummy70
	.type	dummy70,@object
	.bss
	.globl	dummy70
	.p2align	2, 0x0
dummy70:
	.word	0                               # 0x0
	.size	dummy70, 4

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.13:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2\",$"
	.size	.L.str.13, 44

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"\"family_index\": 0,$"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.15, 33

	.type	.L.str.16,@object               # @.str.16
	.p2align	3, 0x0
.L.str.16:
	.asciz	"\"run_name\": \"BM_Counters_Thousands/repeats:2\",$"
	.size	.L.str.16, 48

	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"\"run_type\": \"iteration\",$"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
	.p2align	3, 0x0
.L.str.18:
	.asciz	"\"repetitions\": 2,$"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"\"repetition_index\": 0,$"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.20, 15

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"\"iterations\": %int,$"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"\"real_time\": %float,$"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"\"cpu_time\": %float,$"
	.size	.L.str.23, 21

	.type	.L.str.24,@object               # @.str.24
	.p2align	3, 0x0
.L.str.24:
	.asciz	"\"time_unit\": \"ns\",$"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"\"t0_1000000DefaultBase\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.25, 43

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"\"t1_1000000Base1000\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.26, 40

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"\"t2_1000000Base1024\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.27, 40

	.type	.L.str.28,@object               # @.str.28
	.p2align	3, 0x0
.L.str.28:
	.asciz	"\"t3_1048576Base1000\": 1\\.048576(0)*e\\+(0)*6,$"
	.size	.L.str.28, 46

	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"\"t4_1048576Base1024\": 1\\.048576(0)*e\\+(0)*6$"
	.size	.L.str.29, 45

	.hidden	dummy89                         # @dummy89
	.type	dummy89,@object
	.bss
	.globl	dummy89
	.p2align	2, 0x0
dummy89:
	.word	0                               # 0x0
	.size	dummy89, 4

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.32:
	.asciz	"\"repetition_index\": 1,$"
	.size	.L.str.32, 24

	.hidden	dummy109                        # @dummy109
	.type	dummy109,@object
	.bss
	.globl	dummy109
	.p2align	2, 0x0
dummy109:
	.word	0                               # 0x0
	.size	dummy109, 4

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.34:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_mean\",$"
	.size	.L.str.34, 49

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"\"run_type\": \"aggregate\",$"
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"\"aggregate_name\": \"mean\",$"
	.size	.L.str.36, 27

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"\"aggregate_unit\": \"time\",$"
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
	.p2align	3, 0x0
.L.str.38:
	.asciz	"\"iterations\": 2,$"
	.size	.L.str.38, 18

	.hidden	dummy129                        # @dummy129
	.type	dummy129,@object
	.bss
	.globl	dummy129
	.p2align	2, 0x0
dummy129:
	.word	0                               # 0x0
	.size	dummy129, 4

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.40:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_median\",$"
	.size	.L.str.40, 51

	.type	.L.str.41,@object               # @.str.41
	.p2align	3, 0x0
.L.str.41:
	.asciz	"\"aggregate_name\": \"median\",$"
	.size	.L.str.41, 29

	.hidden	dummy149                        # @dummy149
	.type	dummy149,@object
	.bss
	.globl	dummy149
	.p2align	2, 0x0
dummy149:
	.word	0                               # 0x0
	.size	dummy149, 4

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.43:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_stddev\",$"
	.size	.L.str.43, 51

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"\"aggregate_name\": \"stddev\",$"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"\"t0_1000000DefaultBase\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.45, 42

	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"\"t1_1000000Base1000\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"\"t2_1000000Base1024\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.47, 39

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"\"t3_1048576Base1000\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.48, 39

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"\"t4_1048576Base1024\": 0\\.(0)*e\\+(0)*$"
	.size	.L.str.49, 38

	.hidden	dummy165                        # @dummy165
	.type	dummy165,@object
	.bss
	.globl	dummy165
	.p2align	2, 0x0
dummy165:
	.word	0                               # 0x0
	.size	dummy165, 4

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.51:
	.asciz	"^\"BM_Counters_Thousands/repeats:2\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.51, 112

	.type	.L.str.52,@object               # @.str.52
	.p2align	3, 0x0
.L.str.52:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_mean\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.52, 117

	.type	.L.str.53,@object               # @.str.53
	.p2align	3, 0x0
.L.str.53:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_median\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.53, 119

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_stddev\",%csv_report,0,0,0,0,0$"
	.size	.L.str.54, 65

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"BM_Counters_Thousands/repeats:2"
	.size	.L.str.55, 32

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t0_1000000DefaultBase\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.56, 110

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/user_counters_thousands_test.cc"
	.size	.L.str.57, 97

	.type	.L__func__._Z14CheckThousandsRK7Results,@object # @__func__._Z14CheckThousandsRK7Results
.L__func__._Z14CheckThousandsRK7Results:
	.asciz	"CheckThousands"
	.size	.L__func__._Z14CheckThousandsRK7Results, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\n"
	.size	.L.str.58, 2

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	":"
	.size	.L.str.59, 2

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	": "
	.size	.L.str.60, 3

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	":\n"
	.size	.L.str.61, 3

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"expected ("
	.size	.L.str.62, 11

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"double"
	.size	.L.str.63, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	")"
	.size	.L.str.64, 2

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"="
	.size	.L.str.65, 2

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" to be EQ to "
	.size	.L.str.66, 14

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"with tolerance of "
	.size	.L.str.67, 19

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	" ("
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"%), "
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"but delta was "
	.size	.L.str.70, 15

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"%)"
	.size	.L.str.71, 3

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t1_1000000Base1000\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.72, 107

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t2_1000000Base1024\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.73, 107

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t3_1048576Base1000\")) - ((1024 * 1024))) < ((0.0001) * (1024 * 1024))"
	.size	.L.str.74, 107

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t4_1048576Base1024\")) - ((1024 * 1024))) < ((0.0001) * (1024 * 1024))"
	.size	.L.str.75, 107

	.hidden	dummy180                        # @dummy180
	.type	dummy180,@object
	.bss
	.globl	dummy180
	.p2align	3, 0x0
dummy180:
	.dword	0                               # 0x0
	.size	dummy180, 8

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"cached_ > 0"
	.size	.L.str.77, 12

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.78, 90

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.hidden	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.space	8
	.size	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.hidden	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	": Check `"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"' failed. "
	.size	.L.str.80, 11

	.hidden	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.space	8
	.size	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.hidden	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"sv != nullptr && !sv->empty()"
	.size	.L.str.82, 30

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"/home/zhaoqi/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/output_test.h"
	.size	.L.str.83, 79

	.type	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"GetAs"
	.size	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"!ss.fail()"
	.size	.L.str.84, 11

	.hidden	_ZTIPFvRK7ResultsE              # @_ZTIPFvRK7ResultsE
	.type	_ZTIPFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIPFvRK7ResultsE,"awG",@progbits,_ZTIPFvRK7ResultsE,comdat
	.weak	_ZTIPFvRK7ResultsE
	.p2align	3, 0x0
_ZTIPFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.dword	_ZTSPFvRK7ResultsE
	.word	0                               # 0x0
	.space	4
	.dword	_ZTIFvRK7ResultsE
	.size	_ZTIPFvRK7ResultsE, 32

	.hidden	_ZTSPFvRK7ResultsE              # @_ZTSPFvRK7ResultsE
	.type	_ZTSPFvRK7ResultsE,@object
	.section	.rodata._ZTSPFvRK7ResultsE,"aG",@progbits,_ZTSPFvRK7ResultsE,comdat
	.weak	_ZTSPFvRK7ResultsE
_ZTSPFvRK7ResultsE:
	.asciz	"PFvRK7ResultsE"
	.size	_ZTSPFvRK7ResultsE, 15

	.hidden	_ZTIFvRK7ResultsE               # @_ZTIFvRK7ResultsE
	.type	_ZTIFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIFvRK7ResultsE,"awG",@progbits,_ZTIFvRK7ResultsE,comdat
	.weak	_ZTIFvRK7ResultsE
	.p2align	3, 0x0
_ZTIFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv120__function_type_infoE+16
	.dword	_ZTSFvRK7ResultsE
	.size	_ZTIFvRK7ResultsE, 16

	.hidden	_ZTSFvRK7ResultsE               # @_ZTSFvRK7ResultsE
	.type	_ZTSFvRK7ResultsE,@object
	.section	.rodata._ZTSFvRK7ResultsE,"aG",@progbits,_ZTSFvRK7ResultsE,comdat
	.weak	_ZTSFvRK7ResultsE
_ZTSFvRK7ResultsE:
	.asciz	"FvRK7ResultsE"
	.size	_ZTSFvRK7ResultsE, 14

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_user_counters_thousands_test.cc
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
	.addrsig_sym _Z21BM_Counters_ThousandsRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z14CheckThousandsRK7Results
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_user_counters_thousands_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZSt4clog
	.addrsig_sym _ZTIPFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv119__pointer_type_infoE
	.addrsig_sym _ZTSPFvRK7ResultsE
	.addrsig_sym _ZTIFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv120__function_type_infoE
	.addrsig_sym _ZTSFvRK7ResultsE
