	.file	"Parser_math.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP11Parser_mathC2Ev         # -- Begin function _ZN2PP11Parser_mathC2Ev
	.p2align	5
	.type	_ZN2PP11Parser_mathC2Ev,@function
_ZN2PP11Parser_mathC2Ev:                # @_ZN2PP11Parser_mathC2Ev
# %bb.0:                                # %entry
	ret
.Lfunc_end0:
	.size	_ZN2PP11Parser_mathC2Ev, .Lfunc_end0-_ZN2PP11Parser_mathC2Ev
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.LCPI1_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
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
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	move	$s1, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s1, 24
	move	$s5, $a1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a4, $t0
	srai.d	$t0, $a1, 7
	add.d	$a1, $t0, $s5
	move	$s0, $a7
	move	$s4, $a6
	move	$s7, $a5
	move	$s2, $a3
	move	$s3, $a2
	bltz	$a1, .LBB1_3
# %bb.1:                                # %land.lhs.true.i.i.i.i
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_4
# %bb.2:                                # %if.then.i.i.i.i
	slli.d	$a2, $s5, 7
	add.d	$a2, $a4, $a2
	b	.LBB1_6
.LBB1_3:                                # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 2
	b	.LBB1_5
.LBB1_4:                                # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 2
.LBB1_5:                                # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 7
	add.d	$a2, $a3, $a2
.LBB1_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	ld.wu	$a2, $a2, 32
	bstrpick.d	$a2, $a2, 31, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_17
# %bb.7:                                # %lor.lhs.false
	add.d	$a2, $t0, $s2
	bltz	$a2, .LBB1_10
# %bb.8:                                # %land.lhs.true.i.i.i.i99
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB1_11
# %bb.9:                                # %if.then.i.i.i.i103
	slli.d	$a2, $s2, 7
	add.d	$a2, $a4, $a2
	b	.LBB1_13
.LBB1_10:                               # %cond.false.i.i.i.i90
	srai.d	$a3, $a2, 2
	b	.LBB1_12
.LBB1_11:                               # %cond.true.i.i.i.i101
	srli.d	$a3, $a2, 2
.LBB1_12:                               # %cond.end.i.i.i.i92
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 7
	add.d	$a2, $a5, $a2
.LBB1_13:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit105
	ld.wu	$a2, $a2, 32
	bstrpick.d	$a2, $a2, 31, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_17
# %bb.14:                               # %if.end
	bltz	$a1, .LBB1_106
# %bb.15:                               # %land.lhs.true.i.i.i.i364
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_107
# %bb.16:                               # %if.then.i.i.i.i368
	slli.d	$a0, $s5, 7
	add.d	$a0, $a4, $a0
	b	.LBB1_109
.LBB1_17:                               # %if.then
	add.d	$a1, $t0, $s3
	bltz	$a1, .LBB1_20
# %bb.18:                               # %land.lhs.true.i.i.i.i126
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_21
# %bb.19:                               # %if.then.i.i.i.i130
	slli.d	$a0, $s3, 7
	add.d	$a0, $a4, $a0
	b	.LBB1_23
.LBB1_20:                               # %cond.false.i.i.i.i117
	srai.d	$a2, $a1, 2
	b	.LBB1_22
.LBB1_21:                               # %cond.true.i.i.i.i128
	srli.d	$a2, $a1, 2
.LBB1_22:                               # %cond.end.i.i.i.i119
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_23:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit132
	addi.d	$fp, $sp, 96
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 21
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	bltz	$a1, .LBB1_26
# %bb.24:                               # %land.lhs.true.i.i.i.i151
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_27
# %bb.25:                               # %if.then.i.i.i.i155
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_29
.LBB1_26:                               # %cond.false.i.i.i.i142
	srai.d	$a2, $a1, 2
	b	.LBB1_28
.LBB1_27:                               # %cond.true.i.i.i.i153
	srli.d	$a2, $a1, 2
.LBB1_28:                               # %cond.end.i.i.i.i144
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_29:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit157
	move	$s0, $s7
	st.d	$fp, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 48
	move	$a0, $fp
	bltu	$a1, $a2, .LBB1_31
# %bb.30:                               # %if.then.i.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_31:                               # %if.end.i.i.i
	addi.w	$s8, $zero, -1
	beq	$a1, $s8, .LBB1_35
# %bb.32:                               # %if.end.i.i.i
	bnez	$a1, .LBB1_34
# %bb.33:                               # %if.then.i.i.i.i159
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB1_35
.LBB1_34:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_35:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a2, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.36:                               # %invoke.cont
.Ltmp2:                                 # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 12
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.37:                               # %invoke.cont12
	ld.d	$a0, $s6, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB1_210
# %bb.38:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB1_40
# %bb.39:                               # %if.then.i2.i.i
	ld.bu	$a0, $s7, 67
	b	.LBB1_42
.LBB1_40:                               # %if.end.i.i.i611
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.41:                               # %.noexc613
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp6:                                 # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
.LBB1_42:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp8:                                 # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.43:                               # %call1.i609.noexc
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.44:                               # %invoke.cont14
	ld.d	$a0, $sp, 80
	beq	$a0, $fp, .LBB1_46
# %bb.45:                               # %if.then.i.i
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_46:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB1_212
# %bb.47:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i623
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB1_49
# %bb.48:                               # %if.then.i2.i.i626
	ld.bu	$a0, $s6, 67
	b	.LBB1_50
.LBB1_49:                               # %if.end.i.i.i632
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB1_50:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit636
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB1_53
# %bb.51:                               # %land.lhs.true.i.i.i.i187
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_54
# %bb.52:                               # %if.then.i.i.i.i191
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_56
.LBB1_53:                               # %cond.false.i.i.i.i178
	srai.d	$a2, $a1, 2
	b	.LBB1_55
.LBB1_54:                               # %cond.true.i.i.i.i189
	srli.d	$a2, $a1, 2
.LBB1_55:                               # %cond.end.i.i.i.i180
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_56:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit193
	addi.d	$s6, $sp, 96
	st.d	$s6, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 48
	move	$a0, $s6
	bltu	$a1, $a2, .LBB1_58
# %bb.57:                               # %if.then.i.i.i203
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_58:                               # %if.end.i.i.i198
	beq	$a1, $s8, .LBB1_62
# %bb.59:                               # %if.end.i.i.i198
	bnez	$a1, .LBB1_61
# %bb.60:                               # %if.then.i.i.i.i200
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB1_62
.LBB1_61:                               # %if.end.i.i.i.i.i201
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_62:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit205
	ld.d	$a2, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
.Ltmp12:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.63:                               # %invoke.cont24
	move	$s4, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_66
# %bb.64:                               # %land.lhs.true.i.i.i.i228
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_67
# %bb.65:                               # %if.then.i.i.i.i232
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_69
.LBB1_66:                               # %cond.false.i.i.i.i219
	srai.d	$a2, $a1, 2
	b	.LBB1_68
.LBB1_67:                               # %cond.true.i.i.i.i230
	srli.d	$a2, $a1, 2
.LBB1_68:                               # %cond.end.i.i.i.i221
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_69:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit234
	addi.d	$s5, $sp, 64
	st.d	$s5, $sp, 48
	ld.d	$a1, $a0, 8
	ld.d	$s3, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	move	$a0, $s5
	bltu	$a1, $a2, .LBB1_72
# %bb.70:                               # %if.then.i.i.i244
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.71:                               # %call.i4.i.i245.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB1_72:                               # %if.end.i.i.i239
	beq	$a1, $s8, .LBB1_76
# %bb.73:                               # %if.end.i.i.i239
	bnez	$a1, .LBB1_75
# %bb.74:                               # %if.then.i.i.i.i241
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB1_76
.LBB1_75:                               # %if.end.i.i.i.i.i242
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_76:                               # %invoke.cont30
	ld.d	$a2, $sp, 16
	ld.d	$a1, $sp, 48
	st.d	$a2, $sp, 56
.Ltmp18:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.77:                               # %invoke.cont32
	move	$s3, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB1_80
# %bb.78:                               # %land.lhs.true.i.i.i.i270
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_81
# %bb.79:                               # %if.then.i.i.i.i274
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_83
.LBB1_80:                               # %cond.false.i.i.i.i261
	srai.d	$a2, $a1, 2
	b	.LBB1_82
.LBB1_81:                               # %cond.true.i.i.i.i272
	srli.d	$a2, $a1, 2
.LBB1_82:                               # %cond.end.i.i.i.i263
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_83:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276
	addi.d	$fp, $sp, 32
	st.d	$fp, $sp, 16
	ld.d	$a1, $a0, 8
	ld.d	$s1, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 112
	move	$a0, $fp
	bltu	$a1, $a2, .LBB1_86
# %bb.84:                               # %if.then.i.i.i286
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.85:                               # %call.i4.i.i287.noexc
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB1_86:                               # %if.end.i.i.i281
	beq	$a1, $s8, .LBB1_90
# %bb.87:                               # %if.end.i.i.i281
	bnez	$a1, .LBB1_89
# %bb.88:                               # %if.then.i.i.i.i283
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_90
.LBB1_89:                               # %if.end.i.i.i.i.i284
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_90:                               # %invoke.cont38
	ld.d	$a2, $sp, 112
	ld.d	$a1, $sp, 16
	st.d	$a2, $sp, 24
.Ltmp24:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
	move	$s3, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
# %bb.91:                               # %invoke.cont40
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_213
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i643
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_94
# %bb.93:                               # %if.then.i2.i.i646
	ld.bu	$a0, $s2, 67
	b	.LBB1_96
.LBB1_94:                               # %if.end.i.i.i652
.Ltmp26:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.95:                               # %.noexc658
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp28:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp29:                                # EH_LABEL
.LBB1_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i648
.Ltmp30:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.97:                               # %call1.i650.noexc
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.98:                               # %invoke.cont42
	ld.d	$a0, $sp, 16
	beq	$a0, $fp, .LBB1_100
# %bb.99:                               # %if.then.i.i298
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_100:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
	ld.d	$a0, $sp, 48
	beq	$a0, $s5, .LBB1_102
# %bb.101:                              # %if.then.i.i305
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_102:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
	ld.d	$a0, $sp, 80
	beq	$a0, $s6, .LBB1_104
# %bb.103:                              # %if.then.i.i312
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_104:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
	movgr2fr.d	$fa0, $zero
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEd)
	jirl	$ra, $ra, 0
.LBB1_105:                              # %cleanup.cont
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB1_106:                              # %cond.false.i.i.i.i355
	srai.d	$a2, $a1, 2
	b	.LBB1_108
.LBB1_107:                              # %cond.true.i.i.i.i366
	srli.d	$a2, $a1, 2
.LBB1_108:                              # %cond.end.i.i.i.i357
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_109:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit370
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	fmov.d	$fs0, $fa0
	bltz	$a1, .LBB1_112
# %bb.110:                              # %land.lhs.true.i.i.i.i389
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_113
# %bb.111:                              # %if.then.i.i.i.i393
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_115
.LBB1_112:                              # %cond.false.i.i.i.i380
	srai.d	$a2, $a1, 2
	b	.LBB1_114
.LBB1_113:                              # %cond.true.i.i.i.i391
	srli.d	$a2, $a1, 2
.LBB1_114:                              # %cond.end.i.i.i.i382
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_115:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit395
	addi.d	$s6, $sp, 96
	st.d	$s6, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 48
	move	$a0, $s6
	bltu	$a1, $a2, .LBB1_117
# %bb.116:                              # %if.then.i.i.i405
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_117:                              # %if.end.i.i.i400
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB1_121
# %bb.118:                              # %if.end.i.i.i400
	bnez	$a1, .LBB1_120
# %bb.119:                              # %if.then.i.i.i.i402
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB1_121
.LBB1_120:                              # %if.end.i.i.i.i.i403
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_121:                              # %_ZN2PP4Word10get_stringB5cxx11Ev.exit407
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a3, $sp, 48
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	st.d	$a3, $sp, 88
	bltz	$a1, .LBB1_124
# %bb.122:                              # %land.lhs.true.i.i.i.i426
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_125
# %bb.123:                              # %if.then.i.i.i.i430
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_127
.LBB1_124:                              # %cond.false.i.i.i.i417
	srai.d	$a2, $a1, 2
	b	.LBB1_126
.LBB1_125:                              # %cond.true.i.i.i.i428
	srli.d	$a2, $a1, 2
.LBB1_126:                              # %cond.end.i.i.i.i419
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_127:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit432
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.128:                              # %invoke.cont56
	fmov.d	$fs1, $fa0
	ld.d	$fp, $sp, 88
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB1_138
# %bb.129:                              # %invoke.cont56
	ori	$a0, $zero, 2
	bne	$fp, $a0, .LBB1_139
# %bb.130:                              # %invoke.cont71
	ld.d	$a0, $sp, 80
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	movgr2fr.d	$fs2, $zero
	ori	$a1, $a1, 2602
	bne	$a0, $a1, .LBB1_171
# %bb.131:                              # %if.then73
	fcmp.cune.d	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_133
# %bb.132:                              # %if.then73
	movgr2fr.d	$fa0, $zero
	fcmp.cle.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_171
.LBB1_133:                              # %if.end77
	movgr2fr.d	$fs3, $zero
	fcmp.cune.d	$fcc0, $fs0, $fs3
	bcnez	$fcc0, .LBB1_174
# %bb.134:                              # %if.end77
	movgr2fr.d	$fs2, $zero
	fcmp.cule.d	$fcc0, $fs2, $fs1
	bcnez	$fcc0, .LBB1_174
# %bb.135:                              # %if.then81
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_178
# %bb.136:                              # %land.lhs.true.i.i.i.i481
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_179
# %bb.137:                              # %if.then.i.i.i.i485
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_181
.LBB1_138:                              # %if.end132.thread
	ld.d	$a0, $sp, 80
	ld.b	$a0, $a0, 0
	andi	$a0, $a0, 255
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	fadd.d	$fa0, $fs0, $fs1
	movgr2fr.d	$fa1, $zero
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a1, $a0, -45
	sltui	$a1, $a1, 1
	fsub.d	$fa1, $fs0, $fs1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a0, $a0, -42
	sltui	$a0, $a0, 1
	fmul.d	$fa1, $fs0, $fs1
	movgr2cf	$fcc0, $a0
	fsel	$fs2, $fa0, $fa1, $fcc0
	b	.LBB1_140
.LBB1_139:
	movgr2fr.d	$fs2, $zero
	ori	$a0, $zero, 1
	bne	$fp, $a0, .LBB1_171
.LBB1_140:                              # %invoke.cont133
	ld.d	$a0, $sp, 80
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB1_171
# %bb.141:                              # %if.then135
	movgr2fr.d	$fs2, $zero
	fcmp.cune.d	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_145
# %bb.142:                              # %if.then137
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_146
# %bb.143:                              # %land.lhs.true.i.i.i.i564
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_147
# %bb.144:                              # %if.then.i.i.i.i568
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_149
.LBB1_145:                              # %if.end161
	fdiv.d	$fs2, $fs0, $fs1
	b	.LBB1_171
.LBB1_146:                              # %cond.false.i.i.i.i555
	srai.d	$a2, $a1, 2
	b	.LBB1_148
.LBB1_147:                              # %cond.true.i.i.i.i566
	srli.d	$a2, $a1, 2
.LBB1_148:                              # %cond.end.i.i.i.i557
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_149:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit570
.Ltmp87:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.150:                              # %invoke.cont143
	addi.d	$s1, $s4, 16
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.151:                              # %invoke.cont145
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_215
# %bb.152:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i721
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_154
# %bb.153:                              # %if.then.i2.i.i724
	ld.bu	$a0, $s2, 67
	b	.LBB1_156
.LBB1_154:                              # %if.end.i.i.i730
.Ltmp91:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.155:                              # %.noexc736
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp93:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp94:                                # EH_LABEL
.LBB1_156:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i726
.Ltmp95:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.157:                              # %call1.i728.noexc
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.158:                              # %invoke.cont147
.Ltmp99:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.159:                              # %invoke.cont150
.Ltmp101:                               # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.160:                              # %invoke.cont152
.Ltmp103:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.161:                              # %invoke.cont154
.Ltmp105:                               # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.162:                              # %invoke.cont156
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_215
# %bb.163:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_165
# %bb.164:                              # %if.then.i2.i.i750
	ld.bu	$a0, $s2, 67
	b	.LBB1_167
.LBB1_165:                              # %if.end.i.i.i756
.Ltmp107:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.166:                              # %.noexc762
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp109:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp110:                               # EH_LABEL
.LBB1_167:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i752
.Ltmp111:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.168:                              # %call1.i754.noexc
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.169:                              # %invoke.cont158
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	fcmp.ceq.d	$fcc0, $fs0, $fs2
	fsel	$fs2, $fa0, $fs2, $fcc0
.LBB1_170:                              # %invoke.cont99
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB1_171:                              # %if.end162.invoke
.Ltmp115:                               # EH_LABEL
	move	$a0, $s7
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEd)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.172:                              # %cleanup
	ld.d	$a0, $sp, 80
	beq	$a0, $s6, .LBB1_105
# %bb.173:                              # %if.then.i.i596
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_105
.LBB1_174:                              # %if.end102
	fcmp.cule.d	$fcc0, $fs3, $fs0
	ori	$fp, $zero, 2
	bcnez	$fcc0, .LBB1_177
# %bb.175:                              # %land.lhs.true104
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EEixEm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_201
# %bb.176:                              # %land.lhs.true104.if.end130_crit_edge
	ld.d	$fp, $sp, 88
.LBB1_177:                              # %if.end130
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB1_140
	b	.LBB1_171
.LBB1_178:                              # %cond.false.i.i.i.i472
	srai.d	$a2, $a1, 2
	b	.LBB1_180
.LBB1_179:                              # %cond.true.i.i.i.i483
	srli.d	$a2, $a1, 2
.LBB1_180:                              # %cond.end.i.i.i.i474
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_181:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit487
.Ltmp59:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.182:                              # %invoke.cont84
	addi.d	$s1, $s4, 16
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 45
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.183:                              # %invoke.cont86
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_215
# %bb.184:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i669
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_186
# %bb.185:                              # %if.then.i2.i.i672
	ld.bu	$a0, $s2, 67
	b	.LBB1_188
.LBB1_186:                              # %if.end.i.i.i678
.Ltmp63:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.187:                              # %.noexc684
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp65:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp66:                                # EH_LABEL
.LBB1_188:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i674
.Ltmp67:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.189:                              # %call1.i676.noexc
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.190:                              # %invoke.cont88
.Ltmp71:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.191:                              # %invoke.cont91
.Ltmp73:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.192:                              # %invoke.cont93
.Ltmp75:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.193:                              # %invoke.cont95
.Ltmp77:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.194:                              # %invoke.cont97
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_215
# %bb.195:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_197
# %bb.196:                              # %if.then.i2.i.i698
	ld.bu	$a0, $s2, 67
	b	.LBB1_199
.LBB1_197:                              # %if.end.i.i.i704
.Ltmp79:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.198:                              # %.noexc710
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp81:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp82:                                # EH_LABEL
.LBB1_199:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i700
.Ltmp83:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.200:                              # %call1.i702.noexc
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
	b	.LBB1_170
.LBB1_201:                              # %if.then109
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EEixEm)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.202:                              # %invoke.cont112
	addi.d	$s1, $s4, 16
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.203:                              # %invoke.cont114
.Ltmp47:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.204:                              # %invoke.cont116
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.205:                              # %invoke.cont119
.Ltmp51:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.206:                              # %invoke.cont121
.Ltmp53:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.207:                              # %invoke.cont123
.Ltmp55:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.208:                              # %invoke.cont125
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.209:                              # %invoke.cont127
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
	fmov.d	$fs2, $fs3
	b	.LBB1_171
.LBB1_210:                              # %if.then.i.i.i612
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.211:                              # %.noexc
.LBB1_212:                              # %if.then.i.i.i635
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB1_213:                              # %if.then.i.i.i656
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.214:                              # %.noexc657
.LBB1_215:                              # %if.then.i.i.i760.invoke
.Ltmp117:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.216:                              # %if.then.i.i.i760.cont
.LBB1_217:                              # %lpad55
.Ltmp42:                                # EH_LABEL
	b	.LBB1_223
.LBB1_218:                              # %lpad37
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s5, .LBB1_226
	b	.LBB1_228
.LBB1_219:                              # %lpad29
.Ltmp17:                                # EH_LABEL
	b	.LBB1_223
.LBB1_220:                              # %lpad31
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s5, .LBB1_226
	b	.LBB1_228
.LBB1_221:                              # %lpad23
.Ltmp14:                                # EH_LABEL
	b	.LBB1_223
.LBB1_222:                              # %lpad58
.Ltmp119:                               # EH_LABEL
.LBB1_223:                              # %ehcleanup166
	move	$s0, $a0
	ld.d	$a0, $sp, 80
	bne	$a0, $s6, .LBB1_229
	b	.LBB1_233
.LBB1_224:                              # %lpad39
.Ltmp36:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	bne	$a2, $fp, .LBB1_227
# %bb.225:                              # %ehcleanup44
	ld.d	$a0, $sp, 48
	bne	$a0, $s5, .LBB1_228
.LBB1_226:                              # %ehcleanup166
	ld.d	$a0, $sp, 80
	bne	$a0, $s6, .LBB1_229
	b	.LBB1_233
.LBB1_227:                              # %if.then.i.i326
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beq	$a0, $s5, .LBB1_226
.LBB1_228:                              # %if.then.i.i333
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beq	$a0, $s6, .LBB1_233
.LBB1_229:                              # %if.then.i.i603
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	b	.LBB1_232
.LBB1_230:                              # %lpad
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 80
	move	$s0, $a0
	beq	$a2, $fp, .LBB1_233
# %bb.231:                              # %if.then.i.i319
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB1_232:                              # %eh.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_233:                              # %eh.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end1-_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp33-.Ltmp24                #   Call between .Ltmp24 and .Ltmp33
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp40-.Ltmp33                #   Call between .Ltmp33 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp116-.Ltmp87               #   Call between .Ltmp87 and .Ltmp116
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 14 <<
	.uleb128 .Ltmp59-.Ltmp116               #   Call between .Ltmp116 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp86-.Ltmp59                #   Call between .Ltmp59 and .Ltmp86
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp86                #   Call between .Ltmp86 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp58-.Ltmp43                #   Call between .Ltmp43 and .Ltmp58
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp34-.Ltmp38                #   Call between .Ltmp38 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Lfunc_end1-.Ltmp118           #   Call between .Ltmp118 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EEixEm,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EEixEm,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.p2align	5
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm,@function
_ZNSt5dequeIN2PP4WordESaIS1_EEixEm:     # @_ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a0, 40
	sub.d	$a2, $a3, $a2
	srai.d	$a2, $a2, 7
	add.d	$a2, $a2, $a1
	bltz	$a2, .LBB2_3
# %bb.1:                                # %land.lhs.true.i.i.i
	ori	$a4, $zero, 3
	bltu	$a4, $a2, .LBB2_4
# %bb.2:                                # %if.then.i.i.i
	slli.d	$a0, $a1, 7
	add.d	$a0, $a3, $a0
	ret
.LBB2_3:                                # %cond.false.i.i.i
	srai.d	$a1, $a2, 2
	b	.LBB2_5
.LBB2_4:                                # %cond.true.i.i.i
	srli.d	$a1, $a2, 2
.LBB2_5:                                # %cond.end.i.i.i
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm, .Lfunc_end2-_ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
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
	.cfi_offset 57, -104
	move	$s3, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s3, 24
	move	$s4, $a1
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a4, $t0
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	move	$s0, $a7
	move	$s1, $a6
	move	$s8, $a5
	move	$s2, $a3
	move	$s5, $a2
	bltz	$a1, .LBB3_3
# %bb.1:                                # %land.lhs.true.i.i.i.i
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB3_4
# %bb.2:                                # %if.then.i.i.i.i
	slli.d	$a0, $s4, 7
	add.d	$a0, $a4, $a0
	b	.LBB3_6
.LBB3_3:                                # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 2
	b	.LBB3_5
.LBB3_4:                                # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 2
.LBB3_5:                                # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$a3, $sp, 96
	st.d	$a3, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 48
	move	$a0, $a3
	bltu	$a1, $a2, .LBB3_8
# %bb.7:                                # %if.then.i.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB3_8:                                # %if.end.i.i.i
	addi.w	$fp, $zero, -1
	beq	$a1, $fp, .LBB3_12
# %bb.9:                                # %if.end.i.i.i
	bnez	$a1, .LBB3_11
# %bb.10:                               # %if.then.i.i.i.i120
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB3_12
.LBB3_11:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a3, $sp, 48
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	st.d	$a3, $sp, 88
	bltz	$a1, .LBB3_15
# %bb.13:                               # %land.lhs.true.i.i.i.i139
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_16
# %bb.14:                               # %if.then.i.i.i.i143
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_18
.LBB3_15:                               # %cond.false.i.i.i.i130
	srai.d	$a2, $a1, 2
	b	.LBB3_17
.LBB3_16:                               # %cond.true.i.i.i.i141
	srli.d	$a2, $a1, 2
.LBB3_17:                               # %cond.end.i.i.i.i132
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit145
	addi.d	$a3, $sp, 64
	st.d	$a3, $sp, 48
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	move	$a0, $a3
	bltu	$a1, $a2, .LBB3_21
# %bb.19:                               # %if.then.i.i.i155
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.20:                               # %call.i4.i.i156.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB3_21:                               # %if.end.i.i.i150
	beq	$a1, $fp, .LBB3_25
# %bb.22:                               # %if.end.i.i.i150
	bnez	$a1, .LBB3_24
# %bb.23:                               # %if.then.i.i.i.i152
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB3_25
.LBB3_24:                               # %if.end.i.i.i.i.i153
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %invoke.cont
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a3, $sp, 16
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	st.d	$a3, $sp, 56
	bltz	$a1, .LBB3_28
# %bb.26:                               # %land.lhs.true.i.i.i.i177
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_29
# %bb.27:                               # %if.then.i.i.i.i181
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_31
.LBB3_28:                               # %cond.false.i.i.i.i168
	srai.d	$a2, $a1, 2
	b	.LBB3_30
.LBB3_29:                               # %cond.true.i.i.i.i179
	srli.d	$a2, $a1, 2
.LBB3_30:                               # %cond.end.i.i.i.i170
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit183
	addi.d	$s7, $sp, 32
	st.d	$s7, $sp, 16
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 112
	move	$a0, $s7
	bltu	$a1, $a2, .LBB3_34
# %bb.32:                               # %if.then.i.i.i193
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.33:                               # %call.i4.i.i194.noexc
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB3_34:                               # %if.end.i.i.i188
	beq	$a1, $fp, .LBB3_38
# %bb.35:                               # %if.end.i.i.i188
	bnez	$a1, .LBB3_37
# %bb.36:                               # %if.then.i.i.i.i190
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB3_38
.LBB3_37:                               # %if.end.i.i.i.i.i191
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %invoke.cont7
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a3, $sp, 112
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	st.d	$a3, $sp, 24
	bltz	$a1, .LBB3_41
# %bb.39:                               # %land.lhs.true.i.i.i.i215
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_42
# %bb.40:                               # %if.then.i.i.i.i219
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_44
.LBB3_41:                               # %cond.false.i.i.i.i206
	srai.d	$a2, $a1, 2
	b	.LBB3_43
.LBB3_42:                               # %cond.true.i.i.i.i217
	srli.d	$a2, $a1, 2
.LBB3_43:                               # %cond.end.i.i.i.i208
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_44:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit221
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.45:                               # %invoke.cont11
	beqz	$a0, .LBB3_59
# %bb.46:                               # %land.lhs.true
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_49
# %bb.47:                               # %land.lhs.true.i.i.i.i240
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_50
# %bb.48:                               # %if.then.i.i.i.i244
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_52
.LBB3_49:                               # %cond.false.i.i.i.i231
	srai.d	$a2, $a1, 2
	b	.LBB3_51
.LBB3_50:                               # %cond.true.i.i.i.i242
	srli.d	$a2, $a1, 2
.LBB3_51:                               # %cond.end.i.i.i.i233
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_52:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit246
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.53:                               # %invoke.cont15
	beqz	$a0, .LBB3_59
# %bb.54:                               # %if.then
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB3_59
# %bb.55:                               # %invoke.cont17
	ld.d	$a0, $sp, 48
	ld.w	$a2, $a0, 0
	lu12i.w	$a1, 190278
	ori	$a3, $a1, 1838
	beq	$a2, $a3, .LBB3_87
# %bb.56:                               # %invoke.cont19
	ld.w	$a3, $a0, 0
	lu12i.w	$a2, 190038
	ori	$a4, $a2, 1838
	beq	$a3, $a4, .LBB3_87
# %bb.57:                               # %invoke.cont22
	ld.w	$a3, $a0, 0
	ori	$a1, $a1, 3118
	beq	$a3, $a1, .LBB3_87
# %bb.58:                               # %invoke.cont25
	ld.w	$a0, $a0, 0
	ori	$a1, $a2, 3118
	beq	$a0, $a1, .LBB3_87
.LBB3_59:                               # %if.end56
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_62
# %bb.60:                               # %land.lhs.true.i.i.i.i347
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_63
# %bb.61:                               # %if.then.i.i.i.i351
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_65
.LBB3_62:                               # %cond.false.i.i.i.i338
	srai.d	$a2, $a1, 2
	b	.LBB3_64
.LBB3_63:                               # %cond.true.i.i.i.i349
	srli.d	$a2, $a1, 2
.LBB3_64:                               # %cond.end.i.i.i.i340
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_65:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit353
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.66:                               # %invoke.cont59
	beqz	$a0, .LBB3_75
# %bb.67:                               # %land.lhs.true61
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_70
# %bb.68:                               # %land.lhs.true.i.i.i.i372
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_71
# %bb.69:                               # %if.then.i.i.i.i376
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_73
.LBB3_70:                               # %cond.false.i.i.i.i363
	srai.d	$a2, $a1, 2
	b	.LBB3_72
.LBB3_71:                               # %cond.true.i.i.i.i374
	srli.d	$a2, $a1, 2
.LBB3_72:                               # %cond.end.i.i.i.i365
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_73:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit378
.Ltmp132:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.74:                               # %invoke.cont64
	beqz	$a0, .LBB3_94
.LBB3_75:                               # %lor.lhs.false66
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_78
# %bb.76:                               # %land.lhs.true.i.i.i.i397
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_79
# %bb.77:                               # %if.then.i.i.i.i401
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_81
.LBB3_78:                               # %cond.false.i.i.i.i388
	srai.d	$a2, $a1, 2
	b	.LBB3_80
.LBB3_79:                               # %cond.true.i.i.i.i399
	srli.d	$a2, $a1, 2
.LBB3_80:                               # %cond.end.i.i.i.i390
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_81:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit403
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.82:                               # %invoke.cont69
	bnez	$a0, .LBB3_97
# %bb.83:                               # %land.lhs.true71
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_86
# %bb.84:                               # %land.lhs.true.i.i.i.i422
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_90
# %bb.85:                               # %if.then.i.i.i.i426
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_92
.LBB3_86:                               # %cond.false.i.i.i.i413
	srai.d	$a2, $a1, 2
	b	.LBB3_91
.LBB3_87:                               # %if.then27
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB3_223
# %bb.88:                               # %land.lhs.true.i.i.i.i292
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_234
# %bb.89:                               # %if.then.i.i.i.i296
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_236
.LBB3_90:                               # %cond.true.i.i.i.i424
	srli.d	$a2, $a1, 2
.LBB3_91:                               # %cond.end.i.i.i.i415
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_92:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit428
.Ltmp136:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.93:                               # %invoke.cont74
	beqz	$a0, .LBB3_97
.LBB3_94:                               # %if.then76
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB3_107
# %bb.95:                               # %land.lhs.true.i.i.i.i447
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_108
# %bb.96:                               # %if.then.i.i.i.i451
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_110
.LBB3_97:                               # %if.end106
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a3, $a1, 7
	add.d	$a1, $a3, $s4
	bltz	$a1, .LBB3_100
# %bb.98:                               # %land.lhs.true.i.i.i.i505
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_101
# %bb.99:                               # %if.then.i.i.i.i509
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_103
.LBB3_100:                              # %cond.false.i.i.i.i496
	srai.d	$a4, $a1, 2
	b	.LBB3_102
.LBB3_101:                              # %cond.true.i.i.i.i507
	srli.d	$a4, $a1, 2
.LBB3_102:                              # %cond.end.i.i.i.i498
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_103:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit511
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_144
# %bb.104:                              # %land.lhs.true111
	add.d	$a4, $a3, $s2
	bltz	$a4, .LBB3_140
# %bb.105:                              # %land.lhs.true.i.i.i.i530
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_141
# %bb.106:                              # %if.then.i.i.i.i534
	slli.d	$a4, $s2, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_143
.LBB3_107:                              # %cond.false.i.i.i.i438
	srai.d	$a2, $a1, 2
	b	.LBB3_109
.LBB3_108:                              # %cond.true.i.i.i.i449
	srli.d	$a2, $a1, 2
.LBB3_109:                              # %cond.end.i.i.i.i440
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_110:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit453
.Ltmp138:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.111:                              # %invoke.cont79
	addi.d	$s1, $s1, 16
.Ltmp140:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 42
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.112:                              # %invoke.cont81
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.113:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1146
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_115
# %bb.114:                              # %if.then.i2.i.i1149
	ld.bu	$a0, $s2, 67
	b	.LBB3_117
.LBB3_115:                              # %if.end.i.i.i1154
.Ltmp142:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.116:                              # %.noexc1160
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp144:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp145:                               # EH_LABEL
.LBB3_117:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1151
.Ltmp146:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.118:                              # %call1.i.noexc1162
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.119:                              # %invoke.cont83
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.120:                              # %invoke.cont86
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.121:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1172
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_123
# %bb.122:                              # %if.then.i2.i.i1175
	ld.bu	$a0, $s2, 67
	b	.LBB3_125
.LBB3_123:                              # %if.end.i.i.i1180
.Ltmp152:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.124:                              # %.noexc1186
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp154:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp155:                               # EH_LABEL
.LBB3_125:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1177
.Ltmp156:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.126:                              # %call1.i.noexc1188
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.127:                              # %invoke.cont88
.Ltmp160:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.128:                              # %invoke.cont91
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp162:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.129:                              # %invoke.cont93
.Ltmp164:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.130:                              # %invoke.cont95
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp166:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.131:                              # %invoke.cont97
.Ltmp168:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.132:                              # %invoke.cont99
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp170:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.133:                              # %invoke.cont101
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.134:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1198
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_136
# %bb.135:                              # %if.then.i2.i.i1201
	ld.bu	$a0, $s2, 67
	b	.LBB3_138
.LBB3_136:                              # %if.end.i.i.i1206
.Ltmp172:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.137:                              # %.noexc1212
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp174:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp175:                               # EH_LABEL
.LBB3_138:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1203
.Ltmp176:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.139:                              # %call1.i.noexc1214
.Ltmp178:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
	b	.LBB3_266
.LBB3_140:                              # %cond.false.i.i.i.i521
	srai.d	$a5, $a4, 2
	b	.LBB3_142
.LBB3_141:                              # %cond.true.i.i.i.i532
	srli.d	$a5, $a4, 2
.LBB3_142:                              # %cond.end.i.i.i.i523
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	sub.d	$a4, $a4, $a5
	slli.d	$a4, $a4, 7
	add.d	$a4, $a6, $a4
.LBB3_143:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit536
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_158
.LBB3_144:                              # %lor.lhs.false116
	bltz	$a1, .LBB3_147
# %bb.145:                              # %land.lhs.true.i.i.i.i557
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_148
# %bb.146:                              # %if.then.i.i.i.i561
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_150
.LBB3_147:                              # %cond.false.i.i.i.i548
	srai.d	$a4, $a1, 2
	b	.LBB3_149
.LBB3_148:                              # %cond.true.i.i.i.i559
	srli.d	$a4, $a1, 2
.LBB3_149:                              # %cond.end.i.i.i.i550
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_150:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit563
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB3_161
# %bb.151:                              # %land.lhs.true121
	add.d	$a4, $a3, $s2
	bltz	$a4, .LBB3_154
# %bb.152:                              # %land.lhs.true.i.i.i.i584
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_155
# %bb.153:                              # %if.then.i.i.i.i588
	slli.d	$a4, $s2, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_157
.LBB3_154:                              # %cond.false.i.i.i.i575
	srai.d	$a5, $a4, 2
	b	.LBB3_156
.LBB3_155:                              # %cond.true.i.i.i.i586
	srli.d	$a5, $a4, 2
.LBB3_156:                              # %cond.end.i.i.i.i577
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	sub.d	$a4, $a4, $a5
	slli.d	$a4, $a4, 7
	add.d	$a4, $a6, $a4
.LBB3_157:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit590
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_161
.LBB3_158:                              # %if.then126
	add.d	$a1, $a3, $s5
	bltz	$a1, .LBB3_171
# %bb.159:                              # %land.lhs.true.i.i.i.i611
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_172
# %bb.160:                              # %if.then.i.i.i.i615
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_174
.LBB3_161:                              # %if.end156
	bltz	$a1, .LBB3_164
# %bb.162:                              # %land.lhs.true.i.i.i.i669
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_165
# %bb.163:                              # %if.then.i.i.i.i673
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_167
.LBB3_164:                              # %cond.false.i.i.i.i660
	srai.d	$a4, $a1, 2
	b	.LBB3_166
.LBB3_165:                              # %cond.true.i.i.i.i671
	srli.d	$a4, $a1, 2
.LBB3_166:                              # %cond.end.i.i.i.i662
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_167:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit675
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_211
# %bb.168:                              # %land.lhs.true161
	add.d	$a3, $a3, $s2
	bltz	$a3, .LBB3_204
# %bb.169:                              # %land.lhs.true.i.i.i.i696
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_205
# %bb.170:                              # %if.then.i.i.i.i700
	slli.d	$a3, $s2, 7
	add.d	$a3, $a2, $a3
	b	.LBB3_207
.LBB3_171:                              # %cond.false.i.i.i.i602
	srai.d	$a2, $a1, 2
	b	.LBB3_173
.LBB3_172:                              # %cond.true.i.i.i.i613
	srli.d	$a2, $a1, 2
.LBB3_173:                              # %cond.end.i.i.i.i604
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_174:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit617
.Ltmp180:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.175:                              # %invoke.cont129
	addi.d	$s1, $s1, 16
.Ltmp182:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 44
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.176:                              # %invoke.cont131
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.177:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1224
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_179
# %bb.178:                              # %if.then.i2.i.i1227
	ld.bu	$a0, $s2, 67
	b	.LBB3_181
.LBB3_179:                              # %if.end.i.i.i1232
.Ltmp184:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.180:                              # %.noexc1238
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp186:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp187:                               # EH_LABEL
.LBB3_181:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1229
.Ltmp188:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.182:                              # %call1.i.noexc1240
.Ltmp190:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.183:                              # %invoke.cont133
.Ltmp192:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.184:                              # %invoke.cont136
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.185:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1250
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_187
# %bb.186:                              # %if.then.i2.i.i1253
	ld.bu	$a0, $s2, 67
	b	.LBB3_189
.LBB3_187:                              # %if.end.i.i.i1258
.Ltmp194:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.188:                              # %.noexc1264
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp196:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp197:                               # EH_LABEL
.LBB3_189:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1255
.Ltmp198:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.190:                              # %call1.i.noexc1266
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.191:                              # %invoke.cont138
.Ltmp202:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.192:                              # %invoke.cont141
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp204:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.193:                              # %invoke.cont143
.Ltmp206:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.194:                              # %invoke.cont145
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp208:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.195:                              # %invoke.cont147
.Ltmp210:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.196:                              # %invoke.cont149
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp212:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.197:                              # %invoke.cont151
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.198:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1276
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_200
# %bb.199:                              # %if.then.i2.i.i1279
	ld.bu	$a0, $s2, 67
	b	.LBB3_202
.LBB3_200:                              # %if.end.i.i.i1284
.Ltmp214:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.201:                              # %.noexc1290
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp216:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp217:                               # EH_LABEL
.LBB3_202:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1281
.Ltmp218:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.203:                              # %call1.i.noexc1292
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
	b	.LBB3_266
.LBB3_204:                              # %cond.false.i.i.i.i687
	srai.d	$a4, $a3, 2
	b	.LBB3_206
.LBB3_205:                              # %cond.true.i.i.i.i698
	srli.d	$a4, $a3, 2
.LBB3_206:                              # %cond.end.i.i.i.i689
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
.LBB3_207:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit702
	ld.wu	$a3, $a3, 32
	bstrpick.d	$a3, $a3, 31, 1
	slli.w	$a3, $a3, 1
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB3_211
# %bb.208:                              # %if.then166
	bltz	$a1, .LBB3_298
# %bb.209:                              # %land.lhs.true.i.i.i.i723
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_299
# %bb.210:                              # %if.then.i.i.i.i727
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_301
.LBB3_211:                              # %if.end212
	bltz	$a1, .LBB3_214
# %bb.212:                              # %land.lhs.true.i.i.i.i827
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_215
# %bb.213:                              # %if.then.i.i.i.i831
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_217
.LBB3_214:                              # %cond.false.i.i.i.i818
	srai.d	$a2, $a1, 2
	b	.LBB3_216
.LBB3_215:                              # %cond.true.i.i.i.i829
	srli.d	$a2, $a1, 2
.LBB3_216:                              # %cond.end.i.i.i.i820
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_217:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit833
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.218:                              # %invoke.cont215
	beqz	$a0, .LBB3_231
# %bb.219:                              # %land.lhs.true217
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_222
# %bb.220:                              # %land.lhs.true.i.i.i.i852
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_224
# %bb.221:                              # %if.then.i.i.i.i856
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_226
.LBB3_222:                              # %cond.false.i.i.i.i843
	srai.d	$a2, $a1, 2
	b	.LBB3_225
.LBB3_223:                              # %cond.false.i.i.i.i283
	srai.d	$a2, $a1, 2
	b	.LBB3_235
.LBB3_224:                              # %cond.true.i.i.i.i854
	srli.d	$a2, $a1, 2
.LBB3_225:                              # %cond.end.i.i.i.i845
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_226:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit858
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.227:                              # %invoke.cont220
	beqz	$a0, .LBB3_231
# %bb.228:                              # %if.then222
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_313
# %bb.229:                              # %land.lhs.true.i.i.i.i877
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_314
# %bb.230:                              # %if.then.i.i.i.i881
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_316
.LBB3_231:                              # %if.end259
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB3_334
# %bb.232:                              # %invoke.cont260
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$s1, 190278
	ori	$a1, $s1, 1838
	beq	$a0, $a1, .LBB3_275
# %bb.233:
	move	$a1, $zero
	b	.LBB3_279
.LBB3_234:                              # %cond.true.i.i.i.i294
	srli.d	$a2, $a1, 2
.LBB3_235:                              # %cond.end.i.i.i.i285
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_236:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit298
.Ltmp242:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.237:                              # %invoke.cont30
	addi.d	$s1, $s1, 16
.Ltmp244:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 45
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.238:                              # %invoke.cont31
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.239:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_241
# %bb.240:                              # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB3_243
.LBB3_241:                              # %if.end.i.i.i1081
.Ltmp246:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.242:                              # %.noexc1084
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp248:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp249:                               # EH_LABEL
.LBB3_243:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp250:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.244:                              # %call1.i.noexc
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.245:                              # %invoke.cont33
.Ltmp254:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.246:                              # %invoke.cont36
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.247:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1094
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_249
# %bb.248:                              # %if.then.i2.i.i1097
	ld.bu	$a0, $s2, 67
	b	.LBB3_251
.LBB3_249:                              # %if.end.i.i.i1102
.Ltmp256:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.250:                              # %.noexc1108
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp258:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp259:                               # EH_LABEL
.LBB3_251:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1099
.Ltmp260:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
# %bb.252:                              # %call1.i.noexc1110
.Ltmp262:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp263:                               # EH_LABEL
# %bb.253:                              # %invoke.cont38
.Ltmp264:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.254:                              # %invoke.cont41
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp266:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.255:                              # %invoke.cont43
.Ltmp268:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.256:                              # %invoke.cont45
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp270:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.257:                              # %invoke.cont47
.Ltmp272:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.258:                              # %invoke.cont49
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp274:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.259:                              # %invoke.cont51
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_335
# %bb.260:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1120
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_262
# %bb.261:                              # %if.then.i2.i.i1123
	ld.bu	$a0, $s2, 67
	b	.LBB3_264
.LBB3_262:                              # %if.end.i.i.i1128
.Ltmp276:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.263:                              # %.noexc1134
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp278:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp279:                               # EH_LABEL
.LBB3_264:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1125
.Ltmp280:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.265:                              # %call1.i.noexc1136
.Ltmp282:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
.LBB3_266:                              # %invoke.cont53
	move	$a1, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB3_267:                              # %if.end295.invoke
.Ltmp284:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
.LBB3_268:                              # %cleanup
	ld.d	$a0, $sp, 16
	beq	$a0, $s7, .LBB3_270
# %bb.269:                              # %if.then.i.i1042
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_270:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_272
# %bb.271:                              # %if.then.i.i1046
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_272:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_274
# %bb.273:                              # %if.then.i.i1053
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_274:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.LBB3_275:                              # %if.then262
	ld.d	$s0, $sp, 88
	ld.d	$s2, $sp, 24
	sltu	$a0, $s2, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_277
# %bb.276:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_278
.LBB3_277:                              # %if.then.i.i
	sub.d	$a0, $s0, $s2
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
.LBB3_278:                              # %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slt	$a1, $zero, $a0
.LBB3_279:                              # %invoke.cont266
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$s0, 190038
	ori	$a2, $s0, 1838
	beq	$a0, $a2, .LBB3_282
# %bb.280:                              # %invoke.cont272
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s1, 3118
	beq	$a0, $a2, .LBB3_286
.LBB3_281:                              # %invoke.cont278
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3118
	bne	$a0, $a2, .LBB3_294
	b	.LBB3_290
.LBB3_282:                              # %if.then268
	ld.d	$s2, $sp, 88
	ld.d	$s3, $sp, 24
	sltu	$a0, $s3, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_284
# %bb.283:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i953
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_285
.LBB3_284:                              # %if.then.i.i958
	sub.d	$a0, $s2, $s3
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
.LBB3_285:                              # %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slt	$a1, $fp, $a0
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s1, 3118
	bne	$a0, $a2, .LBB3_281
.LBB3_286:                              # %if.then274
	ld.d	$fp, $sp, 88
	ld.d	$s1, $sp, 24
	sltu	$a0, $s1, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_288
# %bb.287:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i978
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_289
.LBB3_288:                              # %if.then.i.i983
	sub.d	$a0, $fp, $s1
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
.LBB3_289:                              # %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3118
	bne	$a0, $a2, .LBB3_294
.LBB3_290:                              # %if.then280
	ld.d	$fp, $sp, 88
	ld.d	$s1, $sp, 24
	sltu	$a0, $s1, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_292
# %bb.291:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1003
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_293
.LBB3_292:                              # %if.then.i.i1008
	sub.d	$a0, $fp, $s1
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
.LBB3_293:                              # %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 1
.LBB3_294:                              # %invoke.cont284
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, 190230
	ori	$a2, $a2, 1326
	bne	$a0, $a2, .LBB3_330
# %bb.295:                              # %if.then286
	ld.d	$a2, $sp, 88
	ld.d	$a0, $sp, 24
	bne	$a2, $a0, .LBB3_328
# %bb.296:                              # %land.rhs.i1025
	beqz	$a2, .LBB3_329
# %bb.297:                              # %if.end.i.i1026
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	b	.LBB3_330
.LBB3_298:                              # %cond.false.i.i.i.i714
	srai.d	$a2, $a1, 2
	b	.LBB3_300
.LBB3_299:                              # %cond.true.i.i.i.i725
	srli.d	$a2, $a1, 2
.LBB3_300:                              # %cond.end.i.i.i.i716
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_301:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit729
.Ltmp234:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.302:                              # %invoke.cont170
	fmov.d	$fs0, $fa0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_305
# %bb.303:                              # %land.lhs.true.i.i.i.i748
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_306
# %bb.304:                              # %if.then.i.i.i.i752
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_308
.LBB3_305:                              # %cond.false.i.i.i.i739
	srai.d	$a2, $a1, 2
	b	.LBB3_307
.LBB3_306:                              # %cond.true.i.i.i.i750
	srli.d	$a2, $a1, 2
.LBB3_307:                              # %cond.end.i.i.i.i741
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_308:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit754
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.309:                              # %invoke.cont175
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB3_311
# %bb.310:                              # %invoke.cont205
	ld.d	$a0, $sp, 48
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 190278
	ori	$a2, $a2, 1838
	xor	$a1, $a1, $a2
	fcmp.clt.d	$fcc0, $fa0, $fs0
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 4
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cle.d	$fcc0, $fs1, $fs0
	ld.d	$s0, $sp, 48
	masknez	$a1, $fp, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.clt.d	$fcc0, $fs0, $fs1
	masknez	$a1, $fp, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cle.d	$fcc0, $fs0, $fs1
	ld.d	$s0, $sp, 48
	masknez	$a1, $fp, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.ceq.d	$fcc0, $fs0, $fs1
	masknez	$a1, $fp, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cune.d	$fcc0, $fs0, $fs1
	masknez	$a1, $fp, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB3_312
.LBB3_311:
	move	$a0, $zero
.LBB3_312:                              # %invoke.cont205.thread1356
.Ltmp239:                               # EH_LABEL
	andi	$a1, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
	b	.LBB3_268
.LBB3_313:                              # %cond.false.i.i.i.i868
	srai.d	$a2, $a1, 2
	b	.LBB3_315
.LBB3_314:                              # %cond.true.i.i.i.i879
	srli.d	$a2, $a1, 2
.LBB3_315:                              # %cond.end.i.i.i.i870
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_316:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit883
.Ltmp226:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.317:                              # %invoke.cont226
	move	$s4, $a0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_320
# %bb.318:                              # %land.lhs.true.i.i.i.i902
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_321
# %bb.319:                              # %if.then.i.i.i.i906
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_323
.LBB3_320:                              # %cond.false.i.i.i.i893
	srai.d	$a2, $a1, 2
	b	.LBB3_322
.LBB3_321:                              # %cond.true.i.i.i.i904
	srli.d	$a2, $a1, 2
.LBB3_322:                              # %cond.end.i.i.i.i895
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_323:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit908
.Ltmp229:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.324:                              # %invoke.cont232
	ld.d	$a1, $sp, 56
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_326
# %bb.325:                              # %invoke.cont245
	ld.d	$a3, $sp, 48
	ld.w	$a1, $a3, 0
	lu12i.w	$a2, 190230
	ori	$a2, $a2, 1326
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	xor	$fp, $s4, $a0
	xori	$a0, $fp, 1
	and	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	move	$a0, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$a1, $a0, $a1
	b	.LBB3_327
.LBB3_326:
	move	$a1, $zero
.LBB3_327:                              # %invoke.cont245.thread1361
.Ltmp231:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
	b	.LBB3_268
.LBB3_328:
	move	$a1, $zero
	b	.LBB3_330
.LBB3_329:
	ori	$a1, $zero, 1
.LBB3_330:                              # %invoke.cont290
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3630
	bne	$a0, $a2, .LBB3_267
# %bb.331:                              # %if.then292
	ld.d	$a2, $sp, 88
	ld.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	bne	$a2, $a0, .LBB3_267
# %bb.332:                              # %land.rhs.i.i
	beqz	$a2, .LBB3_334
# %bb.333:                              # %if.end.i.i.i1040
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a1, $zero, $a0
	b	.LBB3_267
.LBB3_334:
	move	$a1, $zero
	b	.LBB3_267
.LBB3_335:                              # %if.then.i.i.i1288.invoke
.Ltmp286:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.336:                              # %if.then.i.i.i1288.cont
.LBB3_337:                              # %lpad225
.Ltmp228:                               # EH_LABEL
	b	.LBB3_344
.LBB3_338:                              # %lpad169
.Ltmp236:                               # EH_LABEL
	b	.LBB3_344
.LBB3_339:                              # %lpad231
.Ltmp233:                               # EH_LABEL
	b	.LBB3_344
.LBB3_340:                              # %lpad174
.Ltmp241:                               # EH_LABEL
	b	.LBB3_344
.LBB3_341:                              # %lpad6
.Ltmp125:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_346
	b	.LBB3_349
.LBB3_342:                              # %lpad
.Ltmp122:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_347
	b	.LBB3_350
.LBB3_343:                              # %lpad10
.Ltmp288:                               # EH_LABEL
.LBB3_344:                              # %ehcleanup298
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	bne	$a0, $s7, .LBB3_348
# %bb.345:                              # %ehcleanup302
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB3_349
.LBB3_346:                              # %ehcleanup306
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	bne	$a0, $a1, .LBB3_350
.LBB3_347:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_348:                              # %if.then.i.i1060
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_346
.LBB3_349:                              # %if.then.i.i1067
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_347
.LBB3_350:                              # %if.then.i.i1074
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end3-_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin1         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp285-.Ltmp126              #   Call between .Ltmp126 and .Ltmp285
	.uleb128 .Ltmp288-.Lfunc_begin1         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp234-.Ltmp285              #   Call between .Ltmp285 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin1         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin1         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp286-.Ltmp232              #   Call between .Ltmp232 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin1         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Lfunc_end3-.Ltmp287           #   Call between .Ltmp287 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s4, $a3
	ld.d	$a3, $a3, 16
	ld.d	$a7, $s4, 24
	move	$s2, $a1
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a3, $a7
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	move	$s0, $a6
	move	$s1, $a5
	move	$fp, $a4
	move	$s3, $a2
	bltz	$a1, .LBB4_3
# %bb.1:                                # %land.lhs.true.i.i.i.i
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB4_4
# %bb.2:                                # %if.then.i.i.i.i
	slli.d	$a0, $s2, 7
	add.d	$a0, $a3, $a0
	b	.LBB4_6
.LBB4_3:                                # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 2
	b	.LBB4_5
.LBB4_4:                                # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 2
.LBB4_5:                                # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$s6, $sp, 64
	st.d	$s6, $sp, 48
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	move	$a0, $s6
	bltu	$a1, $a2, .LBB4_8
# %bb.7:                                # %if.then.i.i.i
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB4_8:                                # %if.end.i.i.i
	addi.w	$s8, $zero, -1
	beq	$a1, $s8, .LBB4_12
# %bb.9:                                # %if.end.i.i.i
	bnez	$a1, .LBB4_11
# %bb.10:                               # %if.then.i.i.i.i16
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB4_12
.LBB4_11:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a2, $s4, 16
	ld.d	$a1, $s4, 24
	ld.d	$a3, $sp, 16
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	st.d	$a3, $sp, 56
	bltz	$a1, .LBB4_15
# %bb.13:                               # %land.lhs.true.i.i.i.i35
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB4_16
# %bb.14:                               # %if.then.i.i.i.i39
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_18
.LBB4_15:                               # %cond.false.i.i.i.i26
	srai.d	$a2, $a1, 2
	b	.LBB4_17
.LBB4_16:                               # %cond.true.i.i.i.i37
	srli.d	$a2, $a1, 2
.LBB4_17:                               # %cond.end.i.i.i.i28
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit41
	addi.d	$s7, $sp, 32
	st.d	$s7, $sp, 16
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 80
	move	$a0, $s7
	bltu	$a1, $a2, .LBB4_21
# %bb.19:                               # %if.then.i.i.i51
.Ltmp289:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.20:                               # %call.i4.i.i52.noexc
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB4_21:                               # %if.end.i.i.i46
	beq	$a1, $s8, .LBB4_25
# %bb.22:                               # %if.end.i.i.i46
	bnez	$a1, .LBB4_24
# %bb.23:                               # %if.then.i.i.i.i48
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB4_25
.LBB4_24:                               # %if.end.i.i.i.i.i49
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %invoke.cont
	ld.d	$a2, $s4, 16
	ld.d	$a1, $s4, 24
	ld.d	$a3, $sp, 80
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	st.d	$a3, $sp, 24
	bltz	$a1, .LBB4_28
# %bb.26:                               # %land.lhs.true.i.i.i.i73
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB4_29
# %bb.27:                               # %if.then.i.i.i.i77
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_31
.LBB4_28:                               # %cond.false.i.i.i.i64
	srai.d	$a2, $a1, 2
	b	.LBB4_30
.LBB4_29:                               # %cond.true.i.i.i.i75
	srli.d	$a2, $a1, 2
.LBB4_30:                               # %cond.end.i.i.i.i66
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit79
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.32:                               # %invoke.cont7
	ld.d	$a2, $s4, 16
	ld.d	$a3, $s4, 24
	ld.d	$a1, $s4, 40
	sub.d	$a3, $a2, $a3
	srai.d	$a3, $a3, 7
	beqz	$a0, .LBB4_36
# %bb.33:                               # %if.end
	add.d	$a0, $a3, $s3
	bltz	$a0, .LBB4_39
# %bb.34:                               # %land.lhs.true.i.i.i.i133
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB4_41
# %bb.35:                               # %if.then.i.i.i.i137
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_43
.LBB4_36:                               # %if.then
	add.d	$a0, $a3, $s2
	bltz	$a0, .LBB4_40
# %bb.37:                               # %land.lhs.true.i.i.i.i98
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB4_45
# %bb.38:                               # %if.then.i.i.i.i102
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_47
.LBB4_39:                               # %cond.false.i.i.i.i124
	srai.d	$a2, $a0, 2
	b	.LBB4_42
.LBB4_40:                               # %cond.false.i.i.i.i89
	srai.d	$a2, $a0, 2
	b	.LBB4_46
.LBB4_41:                               # %cond.true.i.i.i.i135
	srli.d	$a2, $a0, 2
.LBB4_42:                               # %cond.end.i.i.i.i126
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB4_43:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit139
.Ltmp320:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.44:                               # %invoke.cont26
	xori	$a1, $a0, 1
	b	.LBB4_66
.LBB4_45:                               # %cond.true.i.i.i.i100
	srli.d	$a2, $a0, 2
.LBB4_46:                               # %cond.end.i.i.i.i91
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB4_47:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit104
.Ltmp294:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.48:                               # %invoke.cont11
	addi.d	$s1, $s1, 16
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 60
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.49:                               # %invoke.cont12
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB4_72
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB4_52
# %bb.51:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB4_54
.LBB4_52:                               # %if.end.i.i.i162
.Ltmp298:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.53:                               # %.noexc164
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp300:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp301:                               # EH_LABEL
.LBB4_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp302:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.55:                               # %call1.i.noexc
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.56:                               # %invoke.cont14
.Ltmp306:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.57:                               # %invoke.cont17
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp308:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.58:                               # %invoke.cont19
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB4_72
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB4_61
# %bb.60:                               # %if.then.i2.i.i177
	ld.bu	$a0, $s2, 67
	b	.LBB4_63
.LBB4_61:                               # %if.end.i.i.i182
.Ltmp310:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.62:                               # %.noexc187
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp312:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp313:                               # EH_LABEL
.LBB4_63:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179
.Ltmp314:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.64:                               # %call1.i.noexc190
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.65:                               # %invoke.cont21
	move	$a1, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB4_66:                               # %invoke.cont26.invoke
.Ltmp322:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.67:                               # %cleanup
	ld.d	$a0, $sp, 16
	beq	$a0, $s7, .LBB4_69
# %bb.68:                               # %if.then.i.i141
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB4_71
# %bb.70:                               # %if.then.i.i148
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
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
.LBB4_72:                               # %if.then.i.i.i185.invoke
.Ltmp318:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.73:                               # %if.then.i.i.i185.cont
.LBB4_74:                               # %lpad
.Ltmp291:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB4_77
	b	.LBB4_79
.LBB4_75:                               # %lpad6
.Ltmp324:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s7, .LBB4_78
# %bb.76:                               # %ehcleanup
	ld.d	$a0, $sp, 48
	bne	$a0, $s6, .LBB4_79
.LBB4_77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_78:                               # %if.then.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB4_77
.LBB4_79:                               # %if.then.i.i155
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end4-_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp289-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin2         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp292-.Ltmp290              #   Call between .Ltmp290 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp323-.Ltmp292              #   Call between .Ltmp292 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp318-.Ltmp323              #   Call between .Ltmp323 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Lfunc_end4-.Ltmp319           #   Call between .Ltmp319 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$s2, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s2, 24
	move	$s4, $a1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a4, $t0
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	move	$s0, $a7
	move	$s1, $a6
	move	$s8, $a5
	move	$s3, $a3
	move	$s5, $a2
	bltz	$a1, .LBB5_3
# %bb.1:                                # %land.lhs.true.i.i.i.i
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB5_4
# %bb.2:                                # %if.then.i.i.i.i
	slli.d	$a0, $s4, 7
	add.d	$a0, $a4, $a0
	b	.LBB5_6
.LBB5_3:                                # %cond.false.i.i.i.i
	srai.d	$a2, $a1, 2
	b	.LBB5_5
.LBB5_4:                                # %cond.true.i.i.i.i
	srli.d	$a2, $a1, 2
.LBB5_5:                                # %cond.end.i.i.i.i
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$a3, $sp, 96
	st.d	$a3, $sp, 80
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 48
	move	$a0, $a3
	bltu	$a1, $a2, .LBB5_8
# %bb.7:                                # %if.then.i.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB5_8:                                # %if.end.i.i.i
	addi.w	$fp, $zero, -1
	beq	$a1, $fp, .LBB5_12
# %bb.9:                                # %if.end.i.i.i
	bnez	$a1, .LBB5_11
# %bb.10:                               # %if.then.i.i.i.i33
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB5_12
.LBB5_11:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a3, $sp, 48
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	st.d	$a3, $sp, 88
	bltz	$a1, .LBB5_15
# %bb.13:                               # %land.lhs.true.i.i.i.i52
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_16
# %bb.14:                               # %if.then.i.i.i.i56
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_18
.LBB5_15:                               # %cond.false.i.i.i.i43
	srai.d	$a2, $a1, 2
	b	.LBB5_17
.LBB5_16:                               # %cond.true.i.i.i.i54
	srli.d	$a2, $a1, 2
.LBB5_17:                               # %cond.end.i.i.i.i45
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit58
	addi.d	$a3, $sp, 64
	st.d	$a3, $sp, 48
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 16
	move	$a0, $a3
	bltu	$a1, $a2, .LBB5_21
# %bb.19:                               # %if.then.i.i.i68
.Ltmp325:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.20:                               # %call.i4.i.i69.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB5_21:                               # %if.end.i.i.i63
	beq	$a1, $fp, .LBB5_25
# %bb.22:                               # %if.end.i.i.i63
	bnez	$a1, .LBB5_24
# %bb.23:                               # %if.then.i.i.i.i65
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB5_25
.LBB5_24:                               # %if.end.i.i.i.i.i66
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %invoke.cont
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a3, $sp, 16
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	st.d	$a3, $sp, 56
	bltz	$a1, .LBB5_28
# %bb.26:                               # %land.lhs.true.i.i.i.i90
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_29
# %bb.27:                               # %if.then.i.i.i.i94
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_31
.LBB5_28:                               # %cond.false.i.i.i.i81
	srai.d	$a2, $a1, 2
	b	.LBB5_30
.LBB5_29:                               # %cond.true.i.i.i.i92
	srli.d	$a2, $a1, 2
.LBB5_30:                               # %cond.end.i.i.i.i83
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit96
	addi.d	$s7, $sp, 32
	st.d	$s7, $sp, 16
	ld.d	$a1, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 112
	move	$a0, $s7
	bltu	$a1, $a2, .LBB5_34
# %bb.32:                               # %if.then.i.i.i106
.Ltmp328:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.33:                               # %call.i4.i.i107.noexc
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB5_34:                               # %if.end.i.i.i101
	beq	$a1, $fp, .LBB5_38
# %bb.35:                               # %if.end.i.i.i101
	bnez	$a1, .LBB5_37
# %bb.36:                               # %if.then.i.i.i.i103
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB5_38
.LBB5_37:                               # %if.end.i.i.i.i.i104
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %invoke.cont7
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a3, $sp, 112
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	st.d	$a3, $sp, 24
	bltz	$a1, .LBB5_41
# %bb.39:                               # %land.lhs.true.i.i.i.i128
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_42
# %bb.40:                               # %if.then.i.i.i.i132
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_44
.LBB5_41:                               # %cond.false.i.i.i.i119
	srai.d	$a2, $a1, 2
	b	.LBB5_43
.LBB5_42:                               # %cond.true.i.i.i.i130
	srli.d	$a2, $a1, 2
.LBB5_43:                               # %cond.end.i.i.i.i121
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_44:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit134
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.45:                               # %invoke.cont11
	beqz	$a0, .LBB5_57
# %bb.46:                               # %lor.lhs.false
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB5_49
# %bb.47:                               # %land.lhs.true.i.i.i.i153
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_50
# %bb.48:                               # %if.then.i.i.i.i157
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_52
.LBB5_49:                               # %cond.false.i.i.i.i144
	srai.d	$a2, $a1, 2
	b	.LBB5_51
.LBB5_50:                               # %cond.true.i.i.i.i155
	srli.d	$a2, $a1, 2
.LBB5_51:                               # %cond.end.i.i.i.i146
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_52:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit159
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.53:                               # %invoke.cont15
	beqz	$a0, .LBB5_57
# %bb.54:                               # %if.end
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB5_103
# %bb.55:                               # %land.lhs.true.i.i.i.i239
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_104
# %bb.56:                               # %if.then.i.i.i.i243
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_106
.LBB5_57:                               # %if.then
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB5_60
# %bb.58:                               # %land.lhs.true.i.i.i.i178
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_61
# %bb.59:                               # %if.then.i.i.i.i182
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_63
.LBB5_60:                               # %cond.false.i.i.i.i169
	srai.d	$a2, $a1, 2
	b	.LBB5_62
.LBB5_61:                               # %cond.true.i.i.i.i180
	srli.d	$a2, $a1, 2
.LBB5_62:                               # %cond.end.i.i.i.i171
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_63:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit184
.Ltmp335:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.64:                               # %invoke.cont19
	addi.d	$s1, $s1, 16
.Ltmp337:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.65:                               # %invoke.cont20
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp339:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.66:                               # %invoke.cont22
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB5_127
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB5_69
# %bb.68:                               # %if.then.i2.i.i
	ld.bu	$a0, $s3, 67
	b	.LBB5_71
.LBB5_69:                               # %if.end.i.i.i321
.Ltmp341:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.70:                               # %.noexc323
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp343:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp344:                               # EH_LABEL
.LBB5_71:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp345:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.72:                               # %call1.i.noexc
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.73:                               # %invoke.cont24
.Ltmp349:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.74:                               # %invoke.cont27
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i333
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_77
# %bb.76:                               # %if.then.i2.i.i336
	ld.bu	$a0, $s2, 67
	b	.LBB5_79
.LBB5_77:                               # %if.end.i.i.i341
.Ltmp351:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.78:                               # %.noexc346
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp353:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp354:                               # EH_LABEL
.LBB5_79:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i338
.Ltmp355:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.80:                               # %call1.i.noexc349
.Ltmp357:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.81:                               # %invoke.cont29
.Ltmp359:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 39
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.82:                               # %invoke.cont32
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.83:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i359
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_85
# %bb.84:                               # %if.then.i2.i.i362
	ld.bu	$a0, $s2, 67
	b	.LBB5_87
.LBB5_85:                               # %if.end.i.i.i367
.Ltmp361:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.86:                               # %.noexc372
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp363:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp364:                               # EH_LABEL
.LBB5_87:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i364
.Ltmp365:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.88:                               # %call1.i.noexc375
.Ltmp367:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.89:                               # %invoke.cont34
.Ltmp369:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.90:                               # %invoke.cont37
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp371:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.91:                               # %invoke.cont39
.Ltmp373:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.92:                               # %invoke.cont41
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp375:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.93:                               # %invoke.cont43
.Ltmp377:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.94:                               # %invoke.cont45
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp379:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.95:                               # %invoke.cont47
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.96:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i385
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_98
# %bb.97:                               # %if.then.i2.i.i388
	ld.bu	$a0, $s2, 67
	b	.LBB5_100
.LBB5_98:                               # %if.end.i.i.i393
.Ltmp381:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.99:                               # %.noexc398
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp383:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp384:                               # EH_LABEL
.LBB5_100:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i390
.Ltmp385:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.101:                              # %call1.i.noexc401
.Ltmp387:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.102:                              # %invoke.cont49
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.Ltmp389:                               # EH_LABEL
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
	b	.LBB5_120
.LBB5_103:                              # %cond.false.i.i.i.i230
	srai.d	$a2, $a1, 2
	b	.LBB5_105
.LBB5_104:                              # %cond.true.i.i.i.i241
	srli.d	$a2, $a1, 2
.LBB5_105:                              # %cond.end.i.i.i.i232
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_106:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit245
.Ltmp394:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.107:                              # %invoke.cont55
	move	$s4, $a0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB5_110
# %bb.108:                              # %land.lhs.true.i.i.i.i264
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_111
# %bb.109:                              # %if.then.i.i.i.i268
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_113
.LBB5_110:                              # %cond.false.i.i.i.i255
	srai.d	$a2, $a1, 2
	b	.LBB5_112
.LBB5_111:                              # %cond.true.i.i.i.i266
	srli.d	$a2, $a1, 2
.LBB5_112:                              # %cond.end.i.i.i.i257
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_113:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit270
.Ltmp397:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.114:                              # %invoke.cont60
	move	$s0, $a0
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB5_117
# %bb.115:                              # %invoke.cont60
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB5_118
# %bb.116:                              # %invoke.cont63.thread
	ld.d	$a0, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	and	$a0, $s0, $a0
	and	$a1, $s4, $a0
	b	.LBB5_119
.LBB5_117:                              # %invoke.cont69
	ld.d	$a0, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$a1, $s4, $s0
	and	$a1, $a0, $a1
	b	.LBB5_119
.LBB5_118:
	move	$a1, $zero
.LBB5_119:                              # %invoke.cont69.thread406
.Ltmp399:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
.LBB5_120:                              # %cleanup
	ld.d	$a0, $sp, 16
	beq	$a0, $s7, .LBB5_122
# %bb.121:                              # %if.then.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_122:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_124
# %bb.123:                              # %if.then.i.i286
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_126
# %bb.125:                              # %if.then.i.i293
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB5_127:                              # %if.then.i.i.i396.invoke
.Ltmp391:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.128:                              # %if.then.i.i.i396.cont
.LBB5_129:                              # %lpad54
.Ltmp396:                               # EH_LABEL
	b	.LBB5_134
.LBB5_130:                              # %lpad59
.Ltmp401:                               # EH_LABEL
	b	.LBB5_134
.LBB5_131:                              # %lpad6
.Ltmp330:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_136
	b	.LBB5_139
.LBB5_132:                              # %lpad
.Ltmp327:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_137
	b	.LBB5_140
.LBB5_133:                              # %lpad10
.Ltmp393:                               # EH_LABEL
.LBB5_134:                              # %ehcleanup78
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	bne	$a0, $s7, .LBB5_138
# %bb.135:                              # %ehcleanup82
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB5_139
.LBB5_136:                              # %ehcleanup86
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	bne	$a0, $a1, .LBB5_140
.LBB5_137:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_138:                              # %if.then.i.i300
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_136
.LBB5_139:                              # %if.then.i.i307
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_137
.LBB5_140:                              # %if.then.i.i314
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end5-_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp325-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin3         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp328-.Ltmp326              #   Call between .Ltmp326 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin3         #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp331-.Ltmp329              #   Call between .Ltmp329 and .Ltmp331
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp390-.Ltmp331              #   Call between .Ltmp331 and .Ltmp390
	.uleb128 .Ltmp393-.Lfunc_begin3         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin3         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp401-.Lfunc_begin3         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin3         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp391-.Ltmp400              #   Call between .Ltmp400 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin3         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Lfunc_end5-.Ltmp392           #   Call between .Ltmp392 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected some number "
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" some number"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"But did not find a number, instead found"
	.size	.L.str.2, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"**"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Trying to exponentiate 0 to a negative power."
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Base = "
	.size	.L.str.8, 8

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"  Exponent = "
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Trying to exponentiate a negative number to a non-integer power."
	.size	.L.str.10, 65

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Divide by 0."
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Numerator = "
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  Denominator = "
	.size	.L.str.14, 17

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	".gt."
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	".ge."
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	".lt."
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	".le."
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Does not make sense to compare logical values"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" with greater than or less than"
	.size	.L.str.20, 32

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"    "
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" "
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Does not make sense to compare logical and"
	.size	.L.str.23, 43

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" non-logical values"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Does not make sense to compare numerical and"
	.size	.L.str.25, 45

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" non-numerical values"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	".eq."
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".ne."
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"The word following the .not. operator must be true or false."
	.size	.L.str.29, 61

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Instead the word following .not. is "
	.size	.L.str.30, 37

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"The operator is "
	.size	.L.str.31, 17

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"The two operands (on the left and right of the operator)"
	.size	.L.str.32, 57

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"must be logical values (true or false)."
	.size	.L.str.33, 40

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".and."
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".or."
	.size	.L.str.35, 5

	.globl	_ZN2PP11Parser_mathC1Ev
	.type	_ZN2PP11Parser_mathC1Ev,@function
_ZN2PP11Parser_mathC1Ev = _ZN2PP11Parser_mathC2Ev
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
