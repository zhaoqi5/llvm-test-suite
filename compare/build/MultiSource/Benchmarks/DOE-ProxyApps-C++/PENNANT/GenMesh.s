	.file	"GenMesh.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7GenMeshC2EPK9InputFile
.LCPI0_0:
	.dword	8                               # 0x8
	.dword	7309475736097875309             # 0x657079746873656d
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x4071abe4b73fefb5              # double 282.74333882308139
.LCPI0_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_3:
	.dword	0x4066800000000000              # double 180
.LCPI0_4:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	_ZN7GenMeshC2EPK9InputFile
	.p2align	2
	.type	_ZN7GenMeshC2EPK9InputFile,@function
_ZN7GenMeshC2EPK9InputFile:             # @_ZN7GenMeshC2EPK9InputFile
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	st.d	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.b	$zero, $fp, 16
	addi.d	$s1, $sp, 88
	st.d	$s1, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	addi.d	$s2, $sp, 56
	st.d	$s2, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont9
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_5
# %bb.2:                                # %invoke.cont.thread.i
	ld.d	$a1, $sp, 104
	addi.d	$a2, $sp, 120
	beq	$a1, $a2, .LBB0_8
# %bb.3:                                # %if.then24.i
	ld.d	$a3, $s3, 0
	vld	$vr0, $sp, 112
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB0_7
.LBB0_4:                                # %if.then30.i
	st.d	$a0, $sp, 104
	st.d	$a3, $sp, 120
	b	.LBB0_14
.LBB0_5:                                # %invoke.cont.i
	ld.d	$a1, $sp, 104
	addi.d	$a2, $sp, 120
	beq	$a1, $a2, .LBB0_8
# %bb.6:
	move	$a0, $zero
                                        # implicit-def: $r7
	vld	$vr0, $sp, 112
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	bnez	$a0, .LBB0_4
.LBB0_7:                                # %if.else31.i
	st.d	$a2, $sp, 104
	move	$a0, $a2
	b	.LBB0_14
.LBB0_8:                                # %if.then9.i
	addi.d	$a2, $sp, 104
	beq	$a2, $fp, .LBB0_56
# %bb.9:                                # %if.then10.i
	ld.d	$a2, $sp, 112
	beqz	$a2, .LBB0_13
# %bb.10:                               # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_12
# %bb.11:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_13
.LBB0_12:                               # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %if.end18.i
	ld.d	$a0, $sp, 112
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 104
.LBB0_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 112
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 104
	addi.d	$s4, $sp, 120
	beq	$a0, $s4, .LBB0_16
# %bb.15:                               # %if.then.i.i29
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s2, .LBB0_18
# %bb.17:                               # %if.then.i.i33
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
	ld.d	$a0, $sp, 72
	beq	$a0, $s1, .LBB0_20
# %bb.19:                               # %if.then.i.i41
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB0_64
# %bb.21:                               # %if.end26
	ori	$a0, $zero, 4
	beq	$s1, $a0, .LBB0_25
# %bb.22:                               # %if.end26
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB0_60
# %bb.23:                               # %invoke.cont28
	ld.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.24:                               # %invoke.cont35
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s2
	b	.LBB0_26
.LBB0_25:                               # %invoke.cont31
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB0_26:                               # %invoke.cont35
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_60
.LBB0_27:                               # %if.end48
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$s4, $sp, 104
	st.d	$a1, $sp, 120
	st.h	$a0, $sp, 128
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 130
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 104
	addi.d	$a3, $sp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.28:                               # %invoke.cont55
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB0_30
# %bb.29:                               # %if.then.i.i.i
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 104
	beq	$a0, $s4, .LBB0_32
# %bb.31:                               # %if.then.i.i113
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
	ld.d	$s0, $sp, 72
	ld.d	$a0, $sp, 80
	beq	$s0, $a0, .LBB0_67
# %bb.33:                               # %if.end72
	sub.d	$s4, $a0, $s0
	srai.d	$s6, $s4, 3
	ori	$a0, $zero, 5
	bgeu	$s6, $a0, .LBB0_70
# %bb.34:                               # %if.end83
	fld.d	$fa0, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	ori	$a0, $zero, 2
	st.w	$s1, $fp, 32
	bltu	$s6, $a0, .LBB0_36
# %bb.35:                               # %cond.true
	fld.d	$fa0, $s0, 8
	b	.LBB0_37
.LBB0_36:                               # %cond.false
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
.LBB0_37:                               # %cond.end
	ld.d	$s2, $fp, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s5, $fa0
	ori	$s7, $zero, 3
	st.w	$s5, $fp, 36
	bne	$s2, $s7, .LBB0_39
# %bb.38:                               # %invoke.cont92
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	ori	$s8, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
.LBB0_39:                               # %if.then94
	bltu	$s6, $s7, .LBB0_42
# %bb.40:                               # %cond.true97
	fld.d	$fa2, $s0, 16
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	bne	$s4, $a0, .LBB0_43
.LBB0_41:                               # %cond.true113
	fld.d	$fa0, $s0, 24
	b	.LBB0_44
.LBB0_42:
	vldi	$vr2, -912
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_41
.LBB0_43:
	vldi	$vr0, -912
.LBB0_44:                               # %cond.end116
	ori	$a0, $zero, 1
	fst.d	$fa0, $fp, 48
	blt	$s1, $a0, .LBB0_57
# %bb.45:                               # %cond.end116
	blt	$s5, $a0, .LBB0_57
# %bb.46:                               # %lor.lhs.false122
	movgr2fr.d	$fa1, $zero
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_57
# %bb.47:                               # %lor.lhs.false122
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_57
# %bb.48:                               # %if.end136
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB0_51
# %bb.49:                               # %if.end.i.i202
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_4)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.50:                               # %if.end.i.i202
	beqz	$a0, .LBB0_73
.LBB0_51:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit215
	ld.d	$a0, $sp, 88
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
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
.LBB0_52:                               # %if.else
	bltu	$s6, $s8, .LBB0_54
# %bb.53:                               # %cond.true104
	fld.d	$fa0, $s0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_55
.LBB0_54:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
.LBB0_55:                               # %cond.end107
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fdiv.d	$fa2, $fa0, $fa1
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_41
	b	.LBB0_43
.LBB0_56:
	move	$a0, $a1
	b	.LBB0_14
.LBB0_57:                               # %if.then128
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.58:                               # %if.then130
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 42
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.59:                               # %invoke.cont131
.Ltmp12:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
	b	.LBB0_76
.LBB0_60:                               # %if.then37
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.61:                               # %if.then39
.Ltmp23:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.62:                               # %invoke.cont40
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp25:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.63:                               # %invoke.cont43
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
	b	.LBB0_76
.LBB0_64:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.65:                               # %if.then20
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.66:                               # %invoke.cont22
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
	b	.LBB0_76
.LBB0_67:                               # %if.then63
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.68:                               # %if.then65
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.69:                               # %invoke.cont67
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	b	.LBB0_76
.LBB0_70:                               # %if.then75
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.71:                               # %if.then77
.Ltmp14:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 40
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.72:                               # %invoke.cont78
.Ltmp16:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
	b	.LBB0_76
.LBB0_73:                               # %if.then143
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.74:                               # %if.then145
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.75:                               # %invoke.cont146
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB0_76:                               # %if.end
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_77:                               # %lpad21
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_90
.LBB0_78:                               # %lpad54
.Ltmp5:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$s0, $a0
	beqz	$a2, .LBB0_80
# %bb.79:                               # %if.then.i.i.i128
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_80:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit133
	ld.d	$a0, $sp, 104
	beq	$a0, $s4, .LBB0_90
# %bb.81:                               # %if.then.i.i135
	ld.d	$a1, $sp, 120
	b	.LBB0_86
.LBB0_82:                               # %lpad8
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$s0, $a0
	beq	$a2, $s2, .LBB0_84
# %bb.83:                               # %if.then.i.i52
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %ehcleanup
	ld.d	$a0, $sp, 72
	beq	$a0, $s1, .LBB0_90
# %bb.85:                               # %if.then.i.i60
	ld.d	$a1, $sp, 88
.LBB0_86:                               # %ehcleanup154
	addi.d	$a1, $a1, 1
	b	.LBB0_89
.LBB0_87:                               # %lpad66
.Ltmp22:                                # EH_LABEL
	ld.d	$a2, $sp, 72
	move	$s0, $a0
	beqz	$a2, .LBB0_90
# %bb.88:                               # %if.then.i.i.i144
	ld.d	$a0, $sp, 88
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
.LBB0_89:                               # %ehcleanup154
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_90:                               # %ehcleanup154
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_92
# %bb.91:                               # %if.then.i.i217
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_92:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN7GenMeshC2EPK9InputFile, .Lfunc_end0-_ZN7GenMeshC2EPK9InputFile
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp4                 #   Call between .Ltmp4 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp23                #   Call between .Ltmp23 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp18                 #   Call between .Ltmp18 and .Ltmp9
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN7GenMeshD2Ev                 # -- Begin function _ZN7GenMeshD2Ev
	.p2align	2
	.type	_ZN7GenMeshD2Ev,@function
_ZN7GenMeshD2Ev:                        # @_ZN7GenMeshD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 16
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ret
.Lfunc_end1:
	.size	_ZN7GenMeshD2Ev, .Lfunc_end1-_ZN7GenMeshD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	2
	.type	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	ld.d	$t0, $sp, 160
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 152
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 144
	move	$s8, $a7
	move	$s2, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(_ZN7GenMesh9calcNumPEEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 32
	ld.w	$a2, $s6, 56
	mul.w	$a3, $a1, $a0
	div.w	$a3, $a3, $a2
	st.w	$a3, $s6, 80
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 36
	ld.w	$a4, $s6, 60
	sub.d	$a0, $a0, $a3
	st.w	$a0, $s6, 72
	mul.w	$a0, $a2, $a1
	div.w	$a0, $a0, $a4
	st.w	$a0, $s6, 84
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a1, $a2
	ld.d	$s7, $s6, 8
	div.w	$a1, $a1, $a4
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 4
	st.w	$a0, $s6, 76
	beq	$s7, $a1, .LBB2_5
# %bb.1:                                # %entry
	ori	$a0, $zero, 3
	bne	$s7, $a0, .LBB2_8
# %bb.2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s8, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit38
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_8
# %bb.4:                                # %if.then24
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_5:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_8
# %bb.6:                                # %if.then20
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	move	$a7, $s8
	pcaddu18i	$ra, %call36(_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_7:                                # %if.then
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %if.end26
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end2:
	.size	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end2-_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7GenMesh9calcNumPEEv
.LCPI3_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI3_1:
	.dword	0xbd719799812dea11              # double -9.9999999999999998E-13
	.text
	.globl	_ZN7GenMesh9calcNumPEEv
	.p2align	2
	.type	_ZN7GenMesh9calcNumPEEv,@function
_ZN7GenMesh9calcNumPEEv:                # @_ZN7GenMesh9calcNumPEEv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	movgr2fr.w	$fa0, $a1
	ld.w	$a1, $a0, 36
	pcalau12i	$a2, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$fp, $a2, %got_pc_lo12(_ZN8Parallel5numpeE)
	ffint.d.w	$fs0, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs1, $fa0
	ld.w	$a1, $fp, 0
	fcmp.clt.d	$fcc0, $fs1, $fs0
	fsel	$fs2, $fs1, $fs0, $fcc0
	fsel	$fs3, $fs0, $fs1, $fcc0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fdiv.d	$fa1, $fa0, $fs2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_9
.LBB3_1:                                # %entry.split
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_0)
	fadd.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a2
	ld.w	$a1, $fp, 0
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	div.w	$a3, $a1, $a2
	mul.d	$a4, $a3, $a2
	sub.w	$a4, $a1, $a4
	addi.w	$a2, $a2, -1
	bnez	$a4, .LBB3_2
# %bb.3:                                # %while.end
	pcalau12i	$a4, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI3_1)
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	addi.w	$a2, $a2, 1
	.p2align	4, , 16
.LBB3_4:                                # %while.cond8
                                        # =>This Inner Loop Header: Depth=1
	div.w	$a5, $a1, $a4
	mul.d	$a6, $a5, $a4
	sub.w	$a6, $a1, $a6
	addi.w	$a4, $a4, 1
	bnez	$a6, .LBB3_4
# %bb.5:                                # %while.end12
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs3, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs2, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a3, $a4, -1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs3, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fs2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cle.d	$fcc0, $fa0, $fa1
	addi.w	$a3, $a3, 0
	movcf2gr	$a4, $fcc0
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 56
	div.w	$a1, $a1, $a2
	fcmp.cule.d	$fcc0, $fs0, $fs1
	st.w	$a1, $a0, 60
	bcnez	$fcc0, .LBB3_7
# %bb.6:                                # %if.then33
	st.w	$a1, $a0, 56
	st.w	$a2, $a0, 60
	b	.LBB3_8
.LBB3_7:
	move	$a1, $a2
.LBB3_8:                                # %if.end36
	pcalau12i	$a2, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a2, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a2, $a2, 0
	div.w	$a3, $a2, $a1
	mul.d	$a1, $a3, $a1
	sub.d	$a1, $a2, $a1
	st.w	$a1, $a0, 64
	st.w	$a3, $a0, 68
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_9:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN7GenMesh9calcNumPEEv, .Lfunc_end3-_ZN7GenMesh9calcNumPEEv
                                        # -- End function
	.globl	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	2
	.type	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
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
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 160                  # 8-byte Folded Spill
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
	.cfi_offset 60, -128
	ld.w	$s5, $a0, 72
	ld.w	$t0, $a0, 76
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 68
	addi.d	$t1, $s5, 1
	addi.d	$t2, $t0, 1
	sltui	$a0, $a0, 1
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	mul.d	$t0, $t1, $t0
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	mulw.d.w	$t1, $t2, $t1
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	masknez	$t1, $t1, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $t1
	addi.w	$s1, $a0, 0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB4_381
# %bb.1:                                # %if.end.i
	move	$s3, $a4
	move	$s6, $a1
	ld.d	$fp, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s8, $fp, $s0
	srai.d	$a0, $s8, 4
	bgeu	$a0, $s1, .LBB4_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beq	$fp, $s0, .LBB4_5
# %bb.3:                                # %for.inc.i.i.i.i.i.preheader
	move	$a0, $s0
	move	$a1, $s7
	.p2align	4, , 16
.LBB4_4:                                # %for.inc.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $fp, .LBB4_4
.LBB4_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s0
	beqz	$s0, .LBB4_7
# %bb.6:                                # %if.then.i.i
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s7, $s6, 0
	add.d	$a0, $s7, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s7, 4
	st.d	$fp, $s6, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bgez	$a0, .LBB4_9
	b	.LBB4_33
.LBB4_8:
	move	$s7, $s0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltz	$a0, .LBB4_33
.LBB4_9:                                # %for.body.lr.ph
	ld.w	$a1, $s1, 32
	move	$a0, $zero
	fld.d	$fa0, $s1, 40
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $s1, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s1, 48
	fdiv.d	$fs1, $fa0, $fa1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs2, $fa2, $fa0
	addi.w	$a1, $zero, -16
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 127
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_10:                               # %if.then
                                        #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a0, $s6, 8
	beq	$a0, $fp, .LBB4_26
# %bb.11:                               # %if.then.i1193
                                        #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a1, $a0, 16
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a1, $s6, 8
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=1
	move	$s8, $s7
.LBB4_13:                               # %for.inc35
                                        #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	move	$s7, $s8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_33
.LBB4_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_22 Depth 3
                                        #     Child Loop BB4_29 Depth 2
	ld.w	$a1, $s1, 84
	add.w	$a1, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	beqz	$a1, .LBB4_10
# %bb.15:                               # %if.end
                                        #   in Loop: Header=BB4_14 Depth=1
	bltz	$s5, .LBB4_12
# %bb.16:                               # %for.body23.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $zero
	ld.d	$s0, $s6, 8
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs2, $fa0
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %if.then.i1217
                                        #   in Loop: Header=BB4_18 Depth=2
	fst.d	$fs4, $s0, 0
	fst.d	$fs0, $s0, 8
	addi.d	$s0, $s0, 16
	st.d	$s0, $s6, 8
	move	$s8, $s7
	addi.w	$a0, $s2, 1
	beq	$s2, $s5, .LBB4_13
.LBB4_18:                               # %for.body23
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_22 Depth 3
	ld.w	$a1, $s1, 80
	ld.w	$a2, $s1, 32
	move	$s2, $a0
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs3, $fa0
	bne	$s0, $fp, .LBB4_17
# %bb.19:                               # %if.else.i1222
                                        #   in Loop: Header=BB4_18 Depth=2
	sub.d	$s0, $fp, $s7
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.20:                               # %invoke.cont.i.i1229
                                        #   in Loop: Header=BB4_18 Depth=2
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.d	$a0, $a0, $s0
	fstx.d	$fs4, $s8, $s0
	fst.d	$fs0, $a0, 8
	move	$s4, $s8
	beq	$s7, $fp, .LBB4_23
# %bb.21:                               # %for.inc.i.i.i.i.i.i1239.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s7
	move	$s4, $s8
	.p2align	4, , 16
.LBB4_22:                               # %for.inc.i.i.i.i.i.i1239
                                        #   Parent Loop BB4_14 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $fp, .LBB4_22
.LBB4_23:                               # %invoke.cont18.i.i1247
                                        #   in Loop: Header=BB4_18 Depth=2
	beqz	$s7, .LBB4_25
# %bb.24:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i1250
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i1251
                                        #   in Loop: Header=BB4_18 Depth=2
	addi.d	$s0, $s4, 16
	st.d	$s8, $s6, 0
	st.d	$s0, $s6, 8
	alsl.d	$fp, $s1, $s8, 4
	st.d	$fp, $s6, 16
	move	$s7, $s8
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $s2, 1
	bne	$s2, $s5, .LBB4_18
	b	.LBB4_13
.LBB4_26:                               # %if.else.i1197
                                        #   in Loop: Header=BB4_14 Depth=1
	sub.d	$s0, $fp, $s7
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.27:                               # %invoke.cont.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s0
	move	$s2, $a0
	beq	$s7, $fp, .LBB4_30
# %bb.28:                               # %for.inc.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s7
	move	$s2, $s8
	.p2align	4, , 16
.LBB4_29:                               # %for.inc.i.i.i.i.i.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	vst	$vr0, $s2, 0
	addi.d	$a0, $a0, 16
	addi.d	$s2, $s2, 16
	bne	$a0, $fp, .LBB4_29
.LBB4_30:                               # %invoke.cont18.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	beqz	$s7, .LBB4_32
# %bb.31:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $s2, 16
	st.d	$s8, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s8, 4
	st.d	$fp, $s6, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB4_13
.LBB4_33:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s5
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB4_381
# %bb.34:                               # %if.end.i97
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	slli.d	$s6, $fp, 2
	bgeu	$a0, $fp, .LBB4_40
# %bb.35:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s8, $s1, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_37
# %bb.36:                               # %if.then.i.i.i.i
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB4_39
# %bb.38:                               # %if.then.i.i107
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_39:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB4_40:                               # %if.end.i111
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	bgeu	$a0, $fp, .LBB4_46
# %bb.41:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i119
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s8, $s1, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_43
# %bb.42:                               # %if.then.i.i.i.i127
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i128
	beqz	$s0, .LBB4_45
# %bb.44:                               # %if.then.i.i130
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i131
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB4_46:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit135
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	addi.w	$fp, $s6, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB4_52
# %bb.47:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i145
	ld.d	$s1, $s3, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_49
# %bb.48:                               # %if.then.i.i.i.i153
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_49:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i154
	beqz	$s0, .LBB4_51
# %bb.50:                               # %if.then.i.i156
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157
	st.d	$s2, $s3, 0
	add.d	$a0, $s2, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s3, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB4_52:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit161
	ld.w	$a1, $s1, 76
	ori	$a0, $zero, 1
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_116
# %bb.53:                               # %for.cond49.preheader.lr.ph
	ld.w	$a0, $s1, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_116
# %bb.54:                               # %for.cond49.preheader.preheader
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_55:                               # %for.cond.cleanup52.loopexit
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.w	$a1, $s1, 76
.LBB4_56:                               # %for.cond.cleanup52
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB4_116
.LBB4_57:                               # %for.cond49.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_60 Depth 2
	blt	$a0, $s2, .LBB4_56
# %bb.58:                               # %for.body53.lr.ph
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a1, $s3, 8
	move	$s8, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB4_60
	.p2align	4, , 16
.LBB4_59:                               # %if.then.i.i327
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB4_55
.LBB4_60:                               # %for.body53
                                        #   Parent Loop BB4_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB4_62
# %bb.61:                               # %if.then.i.i169
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_62:                               # %if.else.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $a5, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.63:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s2, .LBB4_65
# %bb.64:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_67
# %bb.66:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	st.d	$s7, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s1, $s7, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB4_68:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.w	$a0, $s1, 68
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a2, $s8, $a1
	sltui	$a3, $a0, 1
	ld.w	$a4, $s1, 84
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 16
	maskeqz	$a3, $s5, $a3
	sub.w	$a4, $zero, $a4
	sub.d	$s1, $a2, $a3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bne	$a2, $a4, .LBB4_72
# %bb.69:                               # %if.then68
                                        #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_78
# %bb.70:                               # %if.then.i.i174
                                        #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_84
.LBB4_71:                               # %if.then.i.i203
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$zero, $a1, 0
	b	.LBB4_76
	.p2align	4, , 16
.LBB4_72:                               # %if.else
                                        #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_102
# %bb.73:                               # %if.then.i.i232
                                        #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_108
.LBB4_74:                               # %if.then.i259
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s5, $s1, 1
	beq	$a1, $a0, .LBB4_114
.LBB4_75:                               # %if.then.i.i269
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$s5, $a1, 0
.LBB4_76:                               # %if.end74
                                        #   in Loop: Header=BB4_60 Depth=2
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	beq	$a1, $a0, .LBB4_90
.LBB4_77:                               # %if.then.i.i298
                                        #   in Loop: Header=BB4_60 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
	b	.LBB4_96
.LBB4_78:                               # %if.else.i.i176
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.79:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i183
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 3
	stx.w	$a0, $s7, $s0
	blt	$s0, $s2, .LBB4_81
# %bb.80:                               # %if.then.i.i.i.i.i.i197
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_81:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i191
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_83
# %bb.82:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i193
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i194
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_71
.LBB4_84:                               # %if.else.i.i205
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.85:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i212
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s2, .LBB4_87
.LBB4_86:                               # %if.then.i.i.i.i.i.i226
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_87:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i220
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_89
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i288
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_89:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i289
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_77
.LBB4_90:                               # %if.else.i.i300
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.91:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i307
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s2, .LBB4_93
# %bb.92:                               # %if.then.i.i.i.i.i.i321
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_93:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i315
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beqz	$s6, .LBB4_95
# %bb.94:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i317
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_95:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i318
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
.LBB4_96:                               # %if.else.i.i329
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.97:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i336
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	blt	$s0, $s2, .LBB4_99
# %bb.98:                               # %if.then.i.i.i.i.i.i350
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_99:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i344
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$s6, .LBB4_101
# %bb.100:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i346
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_101:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i347
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB4_60
	b	.LBB4_55
.LBB4_102:                              # %if.else.i.i234
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.103:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i241
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s7, $s0
	blt	$s0, $s2, .LBB4_105
# %bb.104:                              # %if.then.i.i.i.i.i.i255
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i249
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_107
# %bb.106:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i251
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i252
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_74
.LBB4_108:                              # %if.else.i
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.109:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	blt	$s0, $s2, .LBB4_111
# %bb.110:                              # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_111:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_113
# %bb.112:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_113:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_75
.LBB4_114:                              # %if.else.i.i271
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.115:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i278
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s0
	bge	$s0, $s2, .LBB4_86
	b	.LBB4_87
.LBB4_116:                              # %for.cond.cleanup46
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_373
# %bb.117:                              # %if.end88
	move	$a0, $s1
	ld.w	$s1, $s1, 68
	ld.w	$fp, $a0, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a3, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_381
# %bb.118:                              # %if.end.i354
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB4_124
# %bb.119:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i362
	ld.d	$s6, $a1, 8
	sub.d	$s0, $s6, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s6, $s4, .LBB4_121
# %bb.120:                              # %if.then.i.i.i.i370
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i371
	beqz	$s4, .LBB4_123
# %bb.122:                              # %if.then.i.i373
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB4_123:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i374
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB4_124:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit378
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_381
# %bb.125:                              # %if.end.i380
	ld.d	$s6, $sp, 304
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB4_131
# %bb.126:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i388
	ld.d	$s1, $s6, 8
	sub.d	$s0, $s1, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s1, $s3, .LBB4_128
# %bb.127:                              # %if.then.i.i.i.i396
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_128:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i397
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$s3, .LBB4_130
# %bb.129:                              # %if.then.i.i399
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, 64
.LBB4_130:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i400
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s1, 68
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
.LBB4_131:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit404
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	beqz	$fp, .LBB4_158
# %bb.132:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit404
	beqz	$s1, .LBB4_158
# %bb.133:                              # %if.then115
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s1, $a2, 56
	beq	$a0, $a1, .LBB4_135
# %bb.134:                              # %if.then.i.i408
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_141
.LBB4_135:                              # %if.else.i.i410
	ld.d	$s0, $a5, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.136:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i417
	srai.d	$a0, $s3, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blt	$s3, $s5, .LBB4_138
# %bb.137:                              # %if.then.i.i.i.i.i.i431
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_138:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i425
	add.d	$s5, $s4, $s3
	beqz	$s0, .LBB4_140
# %bb.139:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i427
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_140:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i428
	addi.d	$a0, $s5, 4
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	st.d	$s4, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a5, 16
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
.LBB4_141:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit433
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	nor	$a2, $s1, $zero
	add.d	$s1, $fp, $a2
	beq	$a0, $a1, .LBB4_143
# %bb.142:                              # %if.then.i437
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_149
.LBB4_143:                              # %if.else.i440
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.144:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i447
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_146
# %bb.145:                              # %if.then.i.i.i.i.i461
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i455
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_148
# %bb.147:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i457
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i458
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB4_149:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit463
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_151
# %bb.150:                              # %if.then.i.i467
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_157
.LBB4_151:                              # %if.else.i.i469
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.152:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i476
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s1, .LBB4_154
# %bb.153:                              # %if.then.i.i.i.i.i.i490
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_154:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i484
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_156
# %bb.155:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i486
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_156:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i487
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB4_157:                              # %if.end121thread-pre-split
	ld.w	$s1, $a2, 68
.LBB4_158:                              # %if.end121
	beqz	$s1, .LBB4_191
# %bb.159:                              # %if.then124
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a5, 8
	ld.d	$s3, $a5, 0
	ld.w	$s2, $a1, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 56
	move	$a1, $s5
	sub.d	$s5, $a0, $s3
	srai.d	$a3, $s5, 2
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	bltz	$a1, .LBB4_174
# %bb.160:                              # %for.body134.preheader
	ld.w	$a1, $a2, 64
	beqz	$a1, .LBB4_171
# %bb.161:
	move	$s4, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB4_173
.LBB4_162:                              # %if.end141.preheader
	move	$s5, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB4_164
	.p2align	4, , 16
.LBB4_163:                              # %if.then.i567
                                        #   in Loop: Header=BB4_164 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $s5, .LBB4_174
.LBB4_164:                              # %if.end141
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	addi.w	$s5, $s5, 1
	bne	$a0, $a1, .LBB4_163
# %bb.165:                              # %if.else.i570
                                        #   in Loop: Header=BB4_164 Depth=1
	sub.d	$s0, $a0, $s4
	beq	$s0, $s7, .LBB4_380
# %bb.166:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i577
                                        #   in Loop: Header=BB4_164 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s8, .LBB4_168
# %bb.167:                              # %if.then.i.i.i.i.i591
                                        #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_168:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i585
                                        #   in Loop: Header=BB4_164 Depth=1
	beqz	$s4, .LBB4_170
# %bb.169:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i587
                                        #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_170:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i588
                                        #   in Loop: Header=BB4_164 Depth=1
	add.d	$a0, $s3, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s1, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $s5, .LBB4_164
	b	.LBB4_174
.LBB4_171:                              # %if.end141.peel
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_206
# %bb.172:                              # %if.then.i567.peel
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
.LBB4_173:
	move	$s3, $s4
.LBB4_174:                              # %for.cond.cleanup133
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	sub.d	$s1, $s2, $a3
	beq	$a0, $a1, .LBB4_176
# %bb.175:                              # %if.then.i502
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_182
.LBB4_176:                              # %if.else.i505
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_380
# %bb.177:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i512
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_179
# %bb.178:                              # %if.then.i.i.i.i.i526
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_179:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i520
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_181
# %bb.180:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i522
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_181:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i523
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a2, 16
.LBB4_182:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit528
	ld.d	$a1, $a1, 8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	beq	$a0, $a2, .LBB4_184
# %bb.183:                              # %if.then.i.i538
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_190
.LBB4_184:                              # %if.else.i.i540
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.185:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i547
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_187
# %bb.186:                              # %if.then.i.i.i.i.i.i561
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_187:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i555
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_189
# %bb.188:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i557
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_189:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i558
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
.LBB4_190:                              # %if.end151
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB4_191:                              # %if.end151
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	beqz	$a0, .LBB4_250
# %bb.192:                              # %if.then154
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a5, 8
	ld.d	$s3, $a5, 0
	ld.w	$a2, $a4, 68
	ld.w	$s7, $a1, 0
	sub.d	$s0, $a0, $s3
	srai.d	$s5, $s0, 2
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	beqz	$a2, .LBB4_194
# %bb.193:
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	move	$a3, $a5
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_225
	b	.LBB4_234
.LBB4_194:                              # %if.then162
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_197
# %bb.195:                              # %if.then.i.i603
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	move	$a3, $a5
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB4_203
.LBB4_196:                              # %if.end171
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_225
	b	.LBB4_234
.LBB4_197:                              # %if.else.i.i605
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.198:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i612
	ori	$fp, $zero, 1
	sltu	$a0, $fp, $s5
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $s5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $fp, .LBB4_200
# %bb.199:                              # %if.then.i.i.i.i.i.i626
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_200:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i620
	add.d	$fp, $s4, $s0
	beqz	$s3, .LBB4_202
# %bb.201:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i622
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_202:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i623
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a3, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_196
.LBB4_203:                              # %if.then166
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_212
# %bb.204:                              # %if.then.i.i632
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_218
.LBB4_205:                              # %if.then.i.i661
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB4_224
.LBB4_206:                              # %if.else.i570.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB4_380
# %bb.207:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i577.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB4_209
# %bb.208:                              # %if.then.i.i.i.i.i591.peel
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_209:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i585.peel
	add.d	$s0, $s4, $s5
	beqz	$s3, .LBB4_211
# %bb.210:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i587.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_211:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i588.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
	b	.LBB4_173
.LBB4_212:                              # %if.else.i.i634
	ld.d	$s0, $s2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.213:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i641
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blt	$s3, $fp, .LBB4_215
# %bb.214:                              # %if.then.i.i.i.i.i.i655
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_215:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i649
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_217
# %bb.216:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i651
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_217:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i652
	addi.d	$a0, $fp, 4
	st.d	$s4, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $s2, 16
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB4_205
.LBB4_218:                              # %if.else.i.i663
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.219:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i670
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $fp, .LBB4_221
# %bb.220:                              # %if.then.i.i.i.i.i.i684
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_221:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i678
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_223
# %bb.222:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i680
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_223:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i681
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB4_224:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit686
	addi.d	$s5, $s5, 1
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blt	$a0, $s2, .LBB4_234
.LBB4_225:                              # %for.body183.preheader
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s5, $a0, $a1
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$s7, $a2, 2047
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$s8, $a2, 511
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB4_227
	.p2align	4, , 16
.LBB4_226:                              # %if.then.i755
                                        #   in Loop: Header=BB4_227 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	beqz	$s1, .LBB4_234
.LBB4_227:                              # %for.body183
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_226
# %bb.228:                              # %if.else.i758
                                        #   in Loop: Header=BB4_227 Depth=1
	ld.d	$s3, $a3, 0
	sub.d	$s0, $a1, $s3
	beq	$s0, $s7, .LBB4_380
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i765
                                        #   in Loop: Header=BB4_227 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s2, .LBB4_231
# %bb.230:                              # %if.then.i.i.i.i.i779
                                        #   in Loop: Header=BB4_227 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_231:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i773
                                        #   in Loop: Header=BB4_227 Depth=1
	beqz	$s3, .LBB4_233
# %bb.232:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i775
                                        #   in Loop: Header=BB4_227 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_233:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i776
                                        #   in Loop: Header=BB4_227 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a3, 16
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	bnez	$s1, .LBB4_227
.LBB4_234:                              # %for.cond.cleanup182
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$fp, $a4, -1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_236
# %bb.235:                              # %if.then.i690
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB4_242
.LBB4_236:                              # %if.else.i693
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_380
# %bb.237:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i700
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $s2, .LBB4_239
# %bb.238:                              # %if.then.i.i.i.i.i714
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_239:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i708
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_241
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i710
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_241:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i711
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
.LBB4_242:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit716
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a2
	beq	$a0, $a3, .LBB4_244
# %bb.243:                              # %if.then.i.i726
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_250
.LBB4_244:                              # %if.else.i.i728
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.245:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i735
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_247
# %bb.246:                              # %if.then.i.i.i.i.i.i749
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_247:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i743
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_249
# %bb.248:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i745
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_249:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i746
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
.LBB4_250:                              # %if.end193
	ld.d	$s4, $sp, 296
	ld.d	$a5, $sp, 288
	ld.w	$a0, $a4, 56
	ld.w	$a2, $a4, 64
	ld.w	$a1, $a4, 68
	addi.w	$a0, $a0, -1
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	beq	$a2, $a0, .LBB4_314
# %bb.251:                              # %if.then198
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s1, $s6, 0
	ld.w	$s5, $a3, 0
	sub.d	$s2, $a0, $s1
	or	$a1, $a2, $a1
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	bnez	$a1, .LBB4_254
# %bb.252:                              # %if.then208
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_265
# %bb.253:                              # %if.then.i.i791
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
.LBB4_254:
	move	$s0, $s1
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	blt	$a2, $s7, .LBB4_271
.LBB4_255:                              # %for.body224.preheader
	ld.w	$a1, $a1, 68
	slt	$a1, $zero, $a1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	alsl.w	$a2, $a4, $a3, 1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a4, $a1
	or	$s8, $a2, $a1
	ld.d	$a1, $s6, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$fp, $a2, 2047
	lu52i.d	$s5, $a3, 511
	b	.LBB4_258
	.p2align	4, , 16
.LBB4_256:                              # %if.then.i885
                                        #   in Loop: Header=BB4_258 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
.LBB4_257:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit911
                                        #   in Loop: Header=BB4_258 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	beqz	$a2, .LBB4_272
.LBB4_258:                              # %for.body224
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_256
# %bb.259:                              # %if.else.i888
                                        #   in Loop: Header=BB4_258 Depth=1
	sub.d	$s2, $a1, $s0
	beq	$s2, $fp, .LBB4_380
# %bb.260:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i895
                                        #   in Loop: Header=BB4_258 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s7, .LBB4_262
# %bb.261:                              # %if.then.i.i.i.i.i909
                                        #   in Loop: Header=BB4_258 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_262:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i903
                                        #   in Loop: Header=BB4_258 Depth=1
	beqz	$s0, .LBB4_264
# %bb.263:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i905
                                        #   in Loop: Header=BB4_258 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_264:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i906
                                        #   in Loop: Header=BB4_258 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s3, $s1, 2
	st.d	$a1, $s6, 16
	move	$s0, $s1
	b	.LBB4_257
.LBB4_265:                              # %if.else.i.i793
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_380
# %bb.266:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i800
	ori	$s3, $zero, 1
	sltu	$a0, $s3, $a2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s2
	blt	$s2, $s3, .LBB4_268
# %bb.267:                              # %if.then.i.i.i.i.i.i814
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_268:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i808
	add.d	$s3, $s0, $s2
	beqz	$s1, .LBB4_270
# %bb.269:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i810
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_270:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i811
	addi.d	$a0, $s3, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s0, 2
	st.d	$a1, $s6, 16
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bge	$a2, $s7, .LBB4_255
.LBB4_271:
	move	$s1, $s0
.LBB4_272:                              # %for.cond.cleanup223
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s3, $a2, 1
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_274
# %bb.273:                              # %if.then.i820
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_280
.LBB4_274:                              # %if.else.i823
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.275:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i830
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_277
# %bb.276:                              # %if.then.i.i.i.i.i844
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_277:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i838
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_279
# %bb.278:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i840
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_279:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i841
	addi.d	$a0, $s3, 4
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
.LBB4_280:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit846
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	beq	$a0, $a2, .LBB4_282
# %bb.281:                              # %if.then.i.i856
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_288
.LBB4_282:                              # %if.else.i.i858
	ld.d	$s0, $s4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.283:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i865
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_285
# %bb.284:                              # %if.then.i.i.i.i.i.i879
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_285:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i873
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_287
# %bb.286:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i875
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_287:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i876
	addi.d	$a0, $s3, 4
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB4_288:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit881
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ld.w	$a1, $a4, 68
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_314
# %bb.289:                              # %for.cond241.preheader
	ld.w	$a0, $a4, 56
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_316
# %bb.290:                              # %for.body245.preheader
	ori	$fp, $zero, 2
	addi.w	$a0, $zero, -4
	lu52i.d	$s5, $a0, 2047
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$s8, $a0, 511
	b	.LBB4_292
	.p2align	4, , 16
.LBB4_291:                              # %if.then.i.i974
                                        #   in Loop: Header=BB4_292 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	ld.w	$a0, $a4, 56
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB4_313
.LBB4_292:                              # %for.body245
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_295
# %bb.293:                              # %if.then.i.i915
                                        #   in Loop: Header=BB4_292 Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_301
.LBB4_294:                              # %if.then.i944
                                        #   in Loop: Header=BB4_292 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_291
	b	.LBB4_307
	.p2align	4, , 16
.LBB4_295:                              # %if.else.i.i917
                                        #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $s6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.296:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i924
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s7, .LBB4_298
# %bb.297:                              # %if.then.i.i.i.i.i.i938
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_298:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i932
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_300
# %bb.299:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i934
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_300:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i935
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $s6, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_294
.LBB4_301:                              # %if.else.i947
                                        #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $a5, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.302:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i954
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s0
	blt	$s0, $s7, .LBB4_304
# %bb.303:                              # %if.then.i.i.i.i.i968
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_304:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i962
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_306
# %bb.305:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i964
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_306:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i965
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_291
.LBB4_307:                              # %if.else.i.i976
                                        #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $s4, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.308:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i983
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blt	$s0, $s7, .LBB4_310
# %bb.309:                              # %if.then.i.i.i.i.i.i997
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_310:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i991
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_312
# %bb.311:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i993
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_312:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i994
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 56
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB4_292
.LBB4_313:                              # %if.end252thread-pre-split.loopexit
	ld.w	$a1, $a4, 68
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
.LBB4_314:                              # %if.end252
	ld.w	$a0, $a4, 60
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB4_317
.LBB4_315:                              # %if.end294
	ld.w	$s2, $a4, 56
	ld.w	$a0, $a4, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB4_349
	b	.LBB4_373
.LBB4_316:
	move	$a1, $zero
	ld.w	$a0, $a4, 60
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB4_315
.LBB4_317:                              # %if.then257
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a4, 56
	sub.d	$s2, $a0, $s0
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	bltz	$s5, .LBB4_332
# %bb.318:                              # %for.body277.preheader
	ld.w	$a2, $a4, 64
	sltui	$a1, $a1, 1
	maskeqz	$a1, $s5, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$fp, $a3, $a1
	beqz	$a2, .LBB4_329
# %bb.319:
	move	$s1, $s0
	beqz	$s5, .LBB4_331
.LBB4_320:                              # %if.end284.preheader
	move	$s3, $s5
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$fp, $a1, 2047
	ori	$s5, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	b	.LBB4_322
	.p2align	4, , 16
.LBB4_321:                              # %if.then.i1074
                                        #   in Loop: Header=BB4_322 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s1
	addi.w	$s3, $s3, -1
	addi.d	$s8, $s8, 1
	beqz	$s3, .LBB4_332
.LBB4_322:                              # %if.end284
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB4_321
# %bb.323:                              # %if.else.i1077
                                        #   in Loop: Header=BB4_322 Depth=1
	sub.d	$s2, $a0, $s1
	beq	$s2, $fp, .LBB4_380
# %bb.324:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1084
                                        #   in Loop: Header=BB4_322 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s5, .LBB4_326
# %bb.325:                              # %if.then.i.i.i.i.i1098
                                        #   in Loop: Header=BB4_322 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_326:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1092
                                        #   in Loop: Header=BB4_322 Depth=1
	beqz	$s1, .LBB4_328
# %bb.327:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1094
                                        #   in Loop: Header=BB4_322 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_328:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1095
                                        #   in Loop: Header=BB4_322 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s0, 2
	st.d	$a1, $s6, 16
	move	$s1, $s0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s3, $s3, -1
	addi.d	$s8, $s8, 1
	bnez	$s3, .LBB4_322
	b	.LBB4_332
.LBB4_329:                              # %if.end284.peel
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_374
# %bb.330:                              # %if.then.i1074.peel
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
	bnez	$s5, .LBB4_320
.LBB4_331:
	move	$s0, $s1
.LBB4_332:                              # %for.cond.cleanup276
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$s3, $a4, $a3
	beq	$a0, $a1, .LBB4_334
# %bb.333:                              # %if.then.i1009
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_340
.LBB4_334:                              # %if.else.i1012
	ld.d	$s0, $a2, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_380
# %bb.335:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1019
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_337
# %bb.336:                              # %if.then.i.i.i.i.i1033
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_337:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1027
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_339
# %bb.338:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1029
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_339:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1030
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
.LBB4_340:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1035
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB4_342
# %bb.341:                              # %if.then.i.i1045
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_348
.LBB4_342:                              # %if.else.i.i1047
	ld.d	$s0, $s4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.343:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1054
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_345
# %bb.344:                              # %if.then.i.i.i.i.i.i1068
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_345:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1062
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_347
# %bb.346:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1064
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_347:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1065
	addi.d	$a0, $s3, 4
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
.LBB4_348:                              # %if.end294
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.w	$s2, $a4, 56
	ld.w	$a0, $a4, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB4_373
.LBB4_349:                              # %land.lhs.true299
	ld.w	$a1, $a4, 60
	ld.w	$a0, $a4, 68
	addi.w	$a1, $a1, -1
	beq	$a0, $a1, .LBB4_373
# %bb.350:                              # %if.then304
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s3, $a1, 0
	sltui	$a1, $a0, 1
	nor	$a2, $s5, $zero
	ld.d	$a0, $s6, 8
	ld.d	$a3, $s6, 16
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$s5, $a1, $a2
	beq	$a0, $a3, .LBB4_352
# %bb.351:                              # %if.then.i1104
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB4_358
.LBB4_352:                              # %if.else.i1107
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.353:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1114
	srai.d	$a0, $s0, 2
	ori	$s7, $zero, 1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s7, .LBB4_355
# %bb.354:                              # %if.then.i.i.i.i.i1128
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_355:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1122
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB4_357
# %bb.356:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1124
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_357:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1125
	addi.d	$a0, $s5, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $s6, 16
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB4_358:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1130
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB4_361
# %bb.359:                              # %if.then.i1134
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	beq	$a0, $a1, .LBB4_367
.LBB4_360:                              # %if.then.i.i1164
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_373
.LBB4_361:                              # %if.else.i1137
	ld.d	$fp, $a5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.362:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1144
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB4_364
# %bb.363:                              # %if.then.i.i.i.i.i1158
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_364:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1152
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_366
# %bb.365:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1154
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_366:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1155
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_360
.LBB4_367:                              # %if.else.i.i1166
	ld.d	$fp, $s4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.368:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1173
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB4_370
# %bb.369:                              # %if.then.i.i.i.i.i.i1187
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_370:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1181
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_372
# %bb.371:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1183
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_372:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1184
	addi.d	$a0, $s3, 4
	st.d	$s1, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s4, 16
.LBB4_373:                              # %cleanup
	fld.d	$fs4, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
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
.LBB4_374:                              # %if.else.i1077.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_380
# %bb.375:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1084.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s4, .LBB4_377
# %bb.376:                              # %if.then.i.i.i.i.i1098.peel
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_377:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1092.peel
	add.d	$s4, $s1, $s2
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beqz	$s0, .LBB4_379
# %bb.378:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1094.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_379:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1095.peel
	addi.d	$a0, $s4, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s3, $s1, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	bnez	$s5, .LBB4_320
	b	.LBB4_331
.LBB4_380:                              # %if.then.i.i.i1212
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_381:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end4-_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	2
	.type	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
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
	move	$s4, $a0
	ld.w	$a0, $a0, 72
	ld.w	$t0, $s4, 76
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	mul.w	$s1, $t0, $a0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB5_318
# %bb.1:                                # %if.end.i
	move	$s3, $a4
	move	$s6, $a1
	ld.d	$fp, $a1, 16
	ld.d	$s7, $a1, 0
	sub.d	$s8, $fp, $s7
	srai.d	$a0, $s8, 4
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $s1, .LBB5_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$fp, $s7, .LBB5_5
# %bb.3:                                # %for.inc.i.i.i.i.i.preheader
	move	$a0, $s7
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_4:                                # %for.inc.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $fp, .LBB5_4
.LBB5_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s7
	beqz	$s7, .LBB5_7
# %bb.6:                                # %if.then.i.i
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s0, $s6, 0
	add.d	$a0, $s0, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s0, 4
	st.d	$fp, $s6, 16
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bgez	$a0, .LBB5_9
	b	.LBB5_22
.LBB5_8:
	move	$s0, $s7
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_22
.LBB5_9:                                # %for.body.lr.ph
	bltz	$s8, .LBB5_22
# %bb.10:                               # %for.body.preheader
	ld.w	$a0, $s4, 32
	move	$a1, $zero
	fld.d	$fa0, $s4, 40
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s4, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s4, 48
	fdiv.d	$fs0, $fa0, $fa1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa2, $fa0
	ld.d	$a0, $s6, 8
	addi.w	$a2, $zero, -16
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s1, $a2, 127
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_11:                               # %for.cond12.for.cond.cleanup14_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a1, $a3, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beq	$a3, $a2, .LBB5_22
.LBB5_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a3, $s4, 84
	move	$a2, $zero
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a3, $a1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs2, $fs1, $fa0
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               # %if.then.i911
                                        #   in Loop: Header=BB5_14 Depth=2
	fst.d	$fs3, $a0, 0
	fst.d	$fs2, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s6, 8
	addi.w	$a2, $s2, 1
	beq	$s2, $s8, .LBB5_11
.LBB5_14:                               # %for.body15
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a1, $s4, 80
	move	$s2, $a2
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs0, $fa0
	bne	$a0, $fp, .LBB5_13
# %bb.15:                               # %if.else.i915
                                        #   in Loop: Header=BB5_14 Depth=2
	sub.d	$s8, $fp, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_317
# %bb.16:                               # %invoke.cont.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	srai.d	$a0, $s8, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $a0, $s8
	fstx.d	$fs3, $s7, $s8
	fst.d	$fs2, $a0, 8
	move	$s5, $s7
	beq	$s0, $fp, .LBB5_19
# %bb.17:                               # %for.inc.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $s0
	move	$s5, $s7
	.p2align	4, , 16
.LBB5_18:                               # %for.inc.i.i.i.i.i.i
                                        #   Parent Loop BB5_12 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $fp, .LBB5_18
.LBB5_19:                               # %invoke.cont18.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	beqz	$s0, .LBB5_21
# %bb.20:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_14 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s7, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s4, $s7, 4
	st.d	$fp, $s6, 16
	move	$s0, $s7
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $s2, 1
	bne	$s2, $s8, .LBB5_14
	b	.LBB5_11
.LBB5_22:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_318
# %bb.23:                               # %if.end.i80
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 16
	ld.d	$s0, $s2, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_29
# %bb.24:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$s1, $s2, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_26
# %bb.25:                               # %if.then.i.i.i.i
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_26:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB5_28
# %bb.27:                               # %if.then.i.i90
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s8, $s2, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s2, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_29:                               # %if.end.i94
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_35
# %bb.30:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i102
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_32
# %bb.31:                               # %if.then.i.i.i.i110
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i111
	beqz	$s0, .LBB5_34
# %bb.33:                               # %if.then.i.i113
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i114
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $a1, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_35:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit118
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	slli.w	$fp, $fp, 2
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_41
# %bb.36:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i128
	ld.d	$s1, $s3, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_38
# %bb.37:                               # %if.then.i.i.i.i136
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i137
	beqz	$s0, .LBB5_40
# %bb.39:                               # %if.then.i.i139
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i140
	st.d	$s8, $s3, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s3, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_41:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit144
	ld.w	$a1, $s4, 76
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_93
# %bb.42:                               # %for.cond33.preheader.lr.ph
	ld.w	$a0, $s4, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB5_93
# %bb.43:                               # %for.cond33.preheader.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$s1, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	move	$a2, $zero
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_44:                               # %for.cond.cleanup36.loopexit
                                        #   in Loop: Header=BB5_46 Depth=1
	ld.w	$a1, $s4, 76
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB5_45:                               # %for.cond.cleanup36
                                        #   in Loop: Header=BB5_46 Depth=1
	addi.w	$a4, $a2, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	move	$a2, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bge	$a4, $a1, .LBB5_93
.LBB5_46:                               # %for.cond33.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_50 Depth 2
	blt	$a0, $s1, .LBB5_45
# %bb.47:                               # %for.body37.lr.ph
                                        #   in Loop: Header=BB5_46 Depth=1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $s3, 8
	move	$a0, $s8
	move	$s8, $zero
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_48:                               # %if.then.i.i249
                                        #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_49:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit274
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_44
.LBB5_50:                               # %for.body37
                                        #   Parent Loop BB5_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s2, 8
	ld.d	$a3, $s2, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB5_53
# %bb.51:                               # %if.then.i.i149
                                        #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	beq	$a0, $a1, .LBB5_59
.LBB5_52:                               # %if.then.i.i154
                                        #   in Loop: Header=BB5_50 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB5_65
	.p2align	4, , 16
.LBB5_53:                               # %if.else.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s2, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.54:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_56
# %bb.55:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$s0, .LBB5_58
# %bb.57:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB5_52
.LBB5_59:                               # %if.else.i.i156
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s4, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.60:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i163
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s7, $s6
	blt	$s6, $s1, .LBB5_62
# %bb.61:                               # %if.then.i.i.i.i.i.i177
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i171
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_64
# %bb.63:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i173
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i174
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a0, $a0, 4
	st.d	$s7, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s4, 16
.LBB5_65:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit179
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	beq	$a1, $a0, .LBB5_69
# %bb.66:                               # %if.then.i181
                                        #   in Loop: Header=BB5_50 Depth=2
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s2, 1
	beq	$a1, $a0, .LBB5_75
.LBB5_67:                               # %if.then.i.i191
                                        #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s5, $s2, 2
	beq	$a1, $a0, .LBB5_81
.LBB5_68:                               # %if.then.i.i220
                                        #   in Loop: Header=BB5_50 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
	b	.LBB5_87
	.p2align	4, , 16
.LBB5_69:                               # %if.else.i
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a1, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.70:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s2, $a0, $s6
	blt	$s6, $s1, .LBB5_72
# %bb.71:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_74
# %bb.73:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_67
.LBB5_75:                               # %if.else.i.i193
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.76:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i200
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_78
# %bb.77:                               # %if.then.i.i.i.i.i.i214
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i208
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_80
# %bb.79:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i210
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i211
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s5, $s2, 2
	bne	$a1, $a0, .LBB5_68
.LBB5_81:                               # %if.else.i.i222
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.82:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i229
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s6
	blt	$s6, $s1, .LBB5_84
# %bb.83:                               # %if.then.i.i.i.i.i.i243
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_84:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i237
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_86
# %bb.85:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i239
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i240
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
.LBB5_87:                               # %if.else.i.i251
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.88:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i258
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_90
# %bb.89:                               # %if.then.i.i.i.i.i.i272
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_90:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i266
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beqz	$s0, .LBB5_92
# %bb.91:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i268
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_92:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i269
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s3, 16
	b	.LBB5_49
.LBB5_93:                               # %for.cond.cleanup30
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_316
# %bb.94:                               # %if.end
	ld.w	$s1, $s4, 68
	ld.w	$fp, $s4, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a3, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB5_318
# %bb.95:                               # %if.end.i276
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB5_101
# %bb.96:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i284
	ld.d	$s6, $a1, 8
	sub.d	$s0, $s6, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s6, $s4, .LBB5_98
# %bb.97:                               # %if.then.i.i.i.i292
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_98:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i293
	beqz	$s4, .LBB5_100
# %bb.99:                               # %if.then.i.i295
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB5_100:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i296
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
.LBB5_101:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit300
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB5_318
# %bb.102:                              # %if.end.i302
	ld.d	$s6, $sp, 272
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB5_108
# %bb.103:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i310
	ld.d	$s1, $s6, 8
	sub.d	$s0, $s1, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s1, $s3, .LBB5_105
# %bb.104:                              # %if.then.i.i.i.i318
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i319
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s3, .LBB5_107
# %bb.106:                              # %if.then.i.i321
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s7, 64
.LBB5_107:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i322
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s7, 68
	move	$s4, $s7
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bnez	$fp, .LBB5_109
	b	.LBB5_134
.LBB5_108:
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beqz	$fp, .LBB5_134
.LBB5_109:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit326
	beqz	$s1, .LBB5_134
# %bb.110:                              # %if.then81
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.w	$s1, $s4, 56
	beq	$a0, $a1, .LBB5_112
# %bb.111:                              # %if.then.i.i330
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_118
.LBB5_112:                              # %if.else.i.i332
	ld.d	$s3, $a3, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.113:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i339
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s4
	blt	$s4, $s5, .LBB5_115
# %bb.114:                              # %if.then.i.i.i.i.i.i353
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_115:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i347
	add.d	$s5, $s0, $s4
	beqz	$s3, .LBB5_117
# %bb.116:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i349
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_117:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i350
	addi.d	$a0, $s5, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s0, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a3, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB5_118:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit355
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	nor	$a2, $s1, $zero
	add.d	$s1, $fp, $a2
	beq	$a0, $a1, .LBB5_121
# %bb.119:                              # %if.then.i359
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	beq	$a0, $a1, .LBB5_127
.LBB5_120:                              # %if.then.i.i389
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	b	.LBB5_133
.LBB5_121:                              # %if.else.i362
	ld.d	$s3, $a4, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.122:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i369
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_124
# %bb.123:                              # %if.then.i.i.i.i.i383
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i377
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_126
# %bb.125:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i379
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i380
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	bne	$a0, $a1, .LBB5_120
.LBB5_127:                              # %if.else.i.i391
	ld.d	$s3, $s2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.128:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i398
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s1, .LBB5_130
# %bb.129:                              # %if.then.i.i.i.i.i.i412
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_130:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i406
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_132
# %bb.131:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i408
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_132:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i409
	addi.d	$a0, $s1, 4
	st.d	$s0, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s2, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB5_133:                              # %if.end87thread-pre-split
	ld.w	$s1, $s4, 68
.LBB5_134:                              # %if.end87
	beqz	$s1, .LBB5_173
# %bb.135:                              # %if.then90
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$s1, $s4, 56
	sub.d	$s5, $a0, $s3
	srai.d	$a1, $s5, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bltz	$s8, .LBB5_156
# %bb.136:                              # %for.body100.preheader
	ld.w	$a1, $s4, 64
	beqz	$a1, .LBB5_138
# %bb.137:
	move	$s4, $s3
	bnez	$s8, .LBB5_140
	b	.LBB5_155
.LBB5_138:                              # %if.end107.peel
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_149
# %bb.139:                              # %if.then.i489.peel
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	beqz	$s8, .LBB5_155
.LBB5_140:                              # %if.end107.preheader
	move	$s2, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB5_142
	.p2align	4, , 16
.LBB5_141:                              # %if.then.i489
                                        #   in Loop: Header=BB5_142 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $s2, .LBB5_156
.LBB5_142:                              # %if.end107
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	addi.w	$s2, $s2, 1
	bne	$a0, $a1, .LBB5_141
# %bb.143:                              # %if.else.i492
                                        #   in Loop: Header=BB5_142 Depth=1
	sub.d	$s5, $a0, $s4
	beq	$s5, $s7, .LBB5_317
# %bb.144:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i499
                                        #   in Loop: Header=BB5_142 Depth=1
	srai.d	$a0, $s5, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s2, $a0, $s5
	blt	$s5, $s8, .LBB5_146
# %bb.145:                              # %if.then.i.i.i.i.i513
                                        #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i507
                                        #   in Loop: Header=BB5_142 Depth=1
	beqz	$s4, .LBB5_148
# %bb.147:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i509
                                        #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i510
                                        #   in Loop: Header=BB5_142 Depth=1
	add.d	$a0, $s3, $s5
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $s2, .LBB5_142
	b	.LBB5_156
.LBB5_149:                              # %if.else.i492.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_317
# %bb.150:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i499.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB5_152
# %bb.151:                              # %if.then.i.i.i.i.i513.peel
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_152:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i507.peel
	add.d	$s0, $s4, $s5
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_154
# %bb.153:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i509.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_154:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i510.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_140
.LBB5_155:
	move	$s3, $s4
.LBB5_156:                              # %for.cond.cleanup99
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a3, $s1
	beq	$a0, $a1, .LBB5_158
# %bb.157:                              # %if.then.i424
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_164
.LBB5_158:                              # %if.else.i427
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB5_317
# %bb.159:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i434
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_161
# %bb.160:                              # %if.then.i.i.i.i.i448
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_161:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i442
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_163
# %bb.162:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i444
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_163:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i445
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB5_164:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit450
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_166
# %bb.165:                              # %if.then.i.i460
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_172
.LBB5_166:                              # %if.else.i.i462
	ld.d	$s3, $a3, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.167:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i469
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_169
# %bb.168:                              # %if.then.i.i.i.i.i.i483
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_169:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i477
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_171
# %bb.170:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i479
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_171:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i480
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_172:                              # %if.end117
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB5_173:                              # %if.end117
	ld.w	$a0, $s4, 64
	beqz	$a0, .LBB5_212
# %bb.174:                              # %if.then120
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$s5, $a0, $s3
	srai.d	$a1, $s5, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	bltz	$s8, .LBB5_196
# %bb.175:                              # %for.body131.preheader
	ld.w	$a1, $s4, 68
	beqz	$a1, .LBB5_177
# %bb.176:
	move	$s4, $s3
	bnez	$s8, .LBB5_179
	b	.LBB5_195
.LBB5_177:                              # %if.end138.peel
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_189
# %bb.178:                              # %if.then.i590.peel
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	beqz	$s8, .LBB5_195
.LBB5_179:
	addi.w	$a1, $zero, -4
	lu52i.d	$s1, $a1, 2047
	ori	$s2, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_182
	.p2align	4, , 16
.LBB5_180:                              # %if.then.i590
                                        #   in Loop: Header=BB5_182 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
.LBB5_181:                              # %for.inc140
                                        #   in Loop: Header=BB5_182 Depth=1
	addi.w	$s8, $s8, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a1
	beqz	$s8, .LBB5_196
.LBB5_182:                              # %if.end138
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_180
# %bb.183:                              # %if.else.i593
                                        #   in Loop: Header=BB5_182 Depth=1
	sub.d	$s5, $a0, $s4
	beq	$s5, $s1, .LBB5_317
# %bb.184:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i600
                                        #   in Loop: Header=BB5_182 Depth=1
	srai.d	$a0, $s5, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s5
	blt	$s5, $s2, .LBB5_186
# %bb.185:                              # %if.then.i.i.i.i.i614
                                        #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_186:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i608
                                        #   in Loop: Header=BB5_182 Depth=1
	beqz	$s4, .LBB5_188
# %bb.187:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i610
                                        #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_188:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i611
                                        #   in Loop: Header=BB5_182 Depth=1
	add.d	$a0, $s3, $s5
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	b	.LBB5_181
.LBB5_189:                              # %if.else.i593.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_317
# %bb.190:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i600.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB5_192
# %bb.191:                              # %if.then.i.i.i.i.i614.peel
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_192:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i608.peel
	add.d	$s0, $s4, $s5
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_194
# %bb.193:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i610.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_194:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i611.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_179
.LBB5_195:
	move	$s3, $s4
.LBB5_196:                              # %for.cond.cleanup130
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s1, $a3, -1
	beq	$a0, $a1, .LBB5_198
# %bb.197:                              # %if.then.i525
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_204
.LBB5_198:                              # %if.else.i528
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.199:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i535
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_201
# %bb.200:                              # %if.then.i.i.i.i.i549
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_201:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i543
	add.d	$s1, $s0, $s4
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_203
# %bb.202:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i545
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_203:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i546
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB5_204:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit551
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_206
# %bb.205:                              # %if.then.i.i561
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_212
.LBB5_206:                              # %if.else.i.i563
	ld.d	$s3, $a3, 0
	sub.d	$s2, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.207:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i570
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s2
	blt	$s2, $s4, .LBB5_209
# %bb.208:                              # %if.then.i.i.i.i.i.i584
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_209:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i578
	add.d	$s1, $s0, $s2
	beqz	$s3, .LBB5_211
# %bb.210:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i580
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_211:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i581
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_212:                              # %if.end148
	ld.d	$s7, $sp, 264
	ld.w	$a0, $s4, 56
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 256
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_245
# %bb.213:                              # %if.then153
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a2, $a1, 0
	sub.d	$s2, $a0, $s0
	srai.d	$a1, $s2, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	bltz	$a1, .LBB5_235
# %bb.214:                              # %for.body164.preheader
	ld.w	$a1, $s4, 68
	beqz	$a1, .LBB5_216
# %bb.215:
	move	$s3, $s0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bnez	$s4, .LBB5_218
	b	.LBB5_234
.LBB5_216:                              # %if.end171.peel
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB5_228
# %bb.217:                              # %if.then.i691.peel
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s3, $s0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_234
.LBB5_218:                              # %if.end171.preheader
	slli.d	$a1, $s8, 1
	addi.d	$s7, $a1, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$fp, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s1, $a1, 511
	b	.LBB5_221
	.p2align	4, , 16
.LBB5_219:                              # %if.then.i691
                                        #   in Loop: Header=BB5_221 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s3
.LBB5_220:                              # %for.inc173
                                        #   in Loop: Header=BB5_221 Depth=1
	addi.w	$s4, $s4, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s7, $s7, $a1
	beqz	$s4, .LBB5_235
.LBB5_221:                              # %if.end171
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB5_219
# %bb.222:                              # %if.else.i694
                                        #   in Loop: Header=BB5_221 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $s8, .LBB5_317
# %bb.223:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i701
                                        #   in Loop: Header=BB5_221 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s7, $a0, $s2
	blt	$s2, $fp, .LBB5_225
# %bb.224:                              # %if.then.i.i.i.i.i715
                                        #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_225:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i709
                                        #   in Loop: Header=BB5_221 Depth=1
	beqz	$s3, .LBB5_227
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i711
                                        #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_227:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i712
                                        #   in Loop: Header=BB5_221 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s5, $s0, 2
	st.d	$a1, $s6, 16
	move	$s3, $s0
	b	.LBB5_220
.LBB5_228:                              # %if.else.i694.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i701.peel
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	stx.w	$s8, $a0, $s2
	blt	$s2, $s1, .LBB5_231
# %bb.230:                              # %if.then.i.i.i.i.i715.peel
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_231:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i709.peel
	add.d	$s1, $s3, $s2
	beqz	$s0, .LBB5_233
# %bb.232:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i711.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_233:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i712.peel
	addi.d	$a0, $s1, 4
	st.d	$s3, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s3, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bnez	$s4, .LBB5_218
.LBB5_234:
	move	$s0, $s3
.LBB5_235:                              # %for.cond.cleanup163
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s1, $a3, 1
	beq	$a0, $a1, .LBB5_237
# %bb.236:                              # %if.then.i626
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB5_243
.LBB5_237:                              # %if.else.i629
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB5_317
# %bb.238:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i636
	srai.d	$a0, $s3, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s4, .LBB5_240
# %bb.239:                              # %if.then.i.i.i.i.i650
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_240:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i644
	add.d	$s1, $s2, $s3
	beqz	$s0, .LBB5_242
# %bb.241:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i646
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_242:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i647
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_243:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit652
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a3
	beq	$a0, $a2, .LBB5_250
# %bb.244:                              # %if.then.i.i662
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
.LBB5_245:                              # %if.end181
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_285
.LBB5_246:                              # %if.then186
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a4, $a1, 0
	ld.w	$a5, $s4, 56
	sub.d	$s2, $a0, $s0
	srai.d	$a1, $s2, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	bltz	$s8, .LBB5_249
# %bb.247:                              # %for.body200.preheader
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	mul.d	$fp, $a2, $a3
	beqz	$a1, .LBB5_256
# %bb.248:
	move	$s3, $s0
	move	$s5, $s7
	bnez	$s8, .LBB5_258
	b	.LBB5_274
.LBB5_249:
	move	$s5, $s7
	b	.LBB5_275
.LBB5_250:                              # %if.else.i.i664
	ld.d	$s0, $s7, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB5_317
# %bb.251:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i671
	srai.d	$a0, $s3, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s4, .LBB5_253
# %bb.252:                              # %if.then.i.i.i.i.i.i685
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_253:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i679
	add.d	$s1, $s2, $s3
	beqz	$s0, .LBB5_255
# %bb.254:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i681
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_255:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i682
	addi.d	$a0, $s1, 4
	st.d	$s2, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s7, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB5_246
	b	.LBB5_285
.LBB5_256:                              # %if.end207.peel
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB5_268
# %bb.257:                              # %if.then.i792.peel
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s3, $s0
	move	$s5, $s7
	beqz	$s8, .LBB5_274
.LBB5_258:                              # %if.end207.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$fp, $a1, 2047
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	b	.LBB5_261
	.p2align	4, , 16
.LBB5_259:                              # %if.then.i792
                                        #   in Loop: Header=BB5_261 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s3
.LBB5_260:                              # %for.inc209
                                        #   in Loop: Header=BB5_261 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	addi.d	$s8, $s8, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_275
.LBB5_261:                              # %if.end207
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB5_259
# %bb.262:                              # %if.else.i795
                                        #   in Loop: Header=BB5_261 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $fp, .LBB5_317
# %bb.263:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i802
                                        #   in Loop: Header=BB5_261 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s1, .LBB5_265
# %bb.264:                              # %if.then.i.i.i.i.i816
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_265:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i810
                                        #   in Loop: Header=BB5_261 Depth=1
	beqz	$s3, .LBB5_267
# %bb.266:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i812
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_267:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i813
                                        #   in Loop: Header=BB5_261 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s0, 2
	st.d	$a1, $s6, 16
	move	$s3, $s0
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	b	.LBB5_260
.LBB5_268:                              # %if.else.i795.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.269:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i802.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s4, .LBB5_271
# %bb.270:                              # %if.then.i.i.i.i.i816.peel
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_271:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i810.peel
	add.d	$s4, $s3, $s2
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s0, .LBB5_273
# %bb.272:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i812.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_273:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i813.peel
	addi.d	$a0, $s4, 4
	st.d	$s3, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s1, $s3, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$s5, $s7
	bnez	$s8, .LBB5_258
.LBB5_274:
	move	$s0, $s3
.LBB5_275:                              # %for.cond.cleanup199
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	ld.d	$a1, $s8, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s3, $a3, $a2
	beq	$a0, $a1, .LBB5_277
# %bb.276:                              # %if.then.i727
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s8, 8
	move	$s7, $s5
	b	.LBB5_283
.LBB5_277:                              # %if.else.i730
	ld.d	$s0, $s8, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_317
# %bb.278:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i737
	move	$s7, $s5
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB5_280
# %bb.279:                              # %if.then.i.i.i.i.i751
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_280:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i745
	add.d	$s3, $s2, $s1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beqz	$s0, .LBB5_282
# %bb.281:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i747
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_282:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i748
	addi.d	$a0, $s3, 4
	st.d	$s2, $s8, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $s8, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s8, 16
.LBB5_283:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit753
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	beq	$a0, $a2, .LBB5_289
# %bb.284:                              # %if.then.i.i763
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
.LBB5_285:                              # %if.end217
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB5_316
.LBB5_286:                              # %land.lhs.true222
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_316
# %bb.287:                              # %if.then227
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$a2, $s6, 16
	ld.w	$s3, $a1, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s5, $a1, -1
	beq	$a0, $a2, .LBB5_295
# %bb.288:                              # %if.then.i822
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB5_301
.LBB5_289:                              # %if.else.i.i765
	ld.d	$s0, $s7, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_317
# %bb.290:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i772
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB5_292
# %bb.291:                              # %if.then.i.i.i.i.i.i786
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_292:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i780
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB5_294
# %bb.293:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i782
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_294:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i783
	addi.d	$a0, $s3, 4
	st.d	$s2, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s7, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB5_286
	b	.LBB5_316
.LBB5_295:                              # %if.else.i825
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.296:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i832
	move	$s8, $s7
	srai.d	$a0, $s0, 2
	ori	$s7, $zero, 1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s7, .LBB5_298
# %bb.297:                              # %if.then.i.i.i.i.i846
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_298:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i840
	add.d	$s5, $s1, $s0
	move	$s7, $s8
	beqz	$fp, .LBB5_300
# %bb.299:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i842
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_300:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i843
	addi.d	$a0, $s5, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $s6, 16
.LBB5_301:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit848
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB5_304
# %bb.302:                              # %if.then.i852
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s5, 8
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_310
.LBB5_303:                              # %if.then.i.i882
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	b	.LBB5_316
.LBB5_304:                              # %if.else.i855
	ld.d	$fp, $s5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.305:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i862
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB5_307
# %bb.306:                              # %if.then.i.i.i.i.i876
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_307:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i870
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_309
# %bb.308:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i872
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_309:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i873
	addi.d	$a0, $s3, 4
	st.d	$s1, $s5, 0
	st.d	$a0, $s5, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s5, 16
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_303
.LBB5_310:                              # %if.else.i.i884
	ld.d	$fp, $s7, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.311:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i891
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB5_313
# %bb.312:                              # %if.then.i.i.i.i.i.i905
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_313:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i899
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_315
# %bb.314:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i901
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_315:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i902
	addi.d	$a0, $s3, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s7, 16
.LBB5_316:                              # %cleanup
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB5_317:                              # %if.then.i.i.i930
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB5_318:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end5-_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	2
	.type	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 200                  # 8-byte Folded Spill
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
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s7, $a0
	ld.w	$a0, $a0, 72
	ld.w	$s4, $s7, 76
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	addi.w	$s6, $s4, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $s6
	slli.w	$s1, $a0, 1
	addi.w	$s5, $zero, -1
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bge	$s5, $s1, .LBB6_516
# %bb.1:                                # %if.end.i
	move	$s8, $a1
	ld.d	$s2, $a1, 16
	ld.d	$fp, $a1, 0
	ld.d	$a0, $sp, 368
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 360
	ld.d	$a0, $sp, 352
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s0, $s2, $fp
	srai.d	$a0, $s0, 4
	bgeu	$a0, $s1, .LBB6_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$s2, $s8, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beq	$s2, $fp, .LBB6_5
# %bb.3:                                # %for.inc.i.i.i.i.i.preheader
	move	$a0, $fp
	move	$a1, $a2
	.p2align	4, , 16
.LBB6_4:                                # %for.inc.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $s2, .LBB6_4
.LBB6_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$s2, $s2, $fp
	beqz	$fp, .LBB6_7
# %bb.6:                                # %if.then.i.i
	move	$a0, $fp
	move	$a1, $s0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$a2, $s8, 0
	add.d	$a0, $a2, $s2
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s1, $a2, 4
	st.d	$s2, $s8, 16
	b	.LBB6_9
.LBB6_8:
	move	$a2, $fp
.LBB6_9:                                # %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
	addi.w	$a0, $zero, -2
	bge	$a0, $s4, .LBB6_517
# %bb.10:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	beqz	$s6, .LBB6_72
# %bb.11:                               # %if.then.i.i.i.i3.i
	move	$s0, $a2
	ld.w	$a0, $s7, 32
	fld.d	$fa0, $s7, 40
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s7, 36
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	fld.d	$fa0, $s7, 48
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	slli.d	$fp, $s6, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.w	$zero, $a0, 0
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_13
# %bb.12:                               # %if.end.i.i.i.i.i.i
	addi.d	$a0, $s6, 4
	addi.d	$a2, $fp, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %for.body.lr.ph
	move	$a4, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr0, -1000
	fdiv.d	$fs2, $fs0, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	ld.d	$a3, $s8, 8
	vldi	$vr3, -800
	movgr2fr.d	$fs4, $zero
	move	$a2, $s0
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %for.cond.cleanup28
                                        #   in Loop: Header=BB6_15 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB6_71
.LBB6_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_70 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	sub.d	$a0, $a3, $a2
	srli.d	$a0, $a0, 4
	slli.d	$a1, $a4, 2
	stx.w	$a0, $s6, $a1
	bltz	$s3, .LBB6_14
# %bb.16:                               # %for.body29.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=1
	ld.w	$a1, $s7, 84
	move	$a0, $zero
	add.d	$a1, $a1, $a4
	movgr2fr.w	$fa0, $a1
	addi.w	$a5, $a1, 0
	fld.d	$fa1, $s7, 48
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs5, $fa0, $fs4
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$fs6, $fa0, $fs5
	fsub.d	$fs7, $fs5, $fa0
	move	$s4, $a2
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	move	$s6, $a5
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_17:                               # %invoke.cont51
                                        #   in Loop: Header=BB6_21 Depth=2
	beq	$a3, $s2, .LBB6_29
# %bb.18:                               # %if.then.i1488
                                        #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs5, $a3, 8
.LBB6_19:                               # %if.end126
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $a3, 16
	st.d	$a3, $s8, 8
	move	$a2, $s4
.LBB6_20:                               # %if.end126
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.w	$a0, $s0, 1
	move	$s4, $a2
	beq	$s0, $s3, .LBB6_14
.LBB6_21:                               # %for.body29
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_70 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	ld.w	$a1, $s7, 80
	move	$s0, $a0
	add.d	$a1, $a1, $a0
	addi.w	$a0, $a1, 0
	movgr2fr.w	$fa0, $a1
	fld.d	$fa1, $s7, 40
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs1, $fa0, $fs4
	beqz	$a0, .LBB6_17
# %bb.22:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a1, $s7, 32
	beq	$a0, $a1, .LBB6_17
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$a5, .LBB6_17
# %bb.24:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s7, 36
	beq	$a5, $a0, .LBB6_17
# %bb.25:                               # %if.else
                                        #   in Loop: Header=BB6_21 Depth=2
	bnez	$a4, .LBB6_38
# %bb.26:                               # %if.else
                                        #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s7, 72
	bne	$s0, $a0, .LBB6_38
# %bb.27:                               # %invoke.cont66
                                        #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs1, $fs1, $fs2
	beq	$a3, $s2, .LBB6_45
# %bb.28:                               # %if.then.i1513
                                        #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs6, $a3, 8
	b	.LBB6_19
	.p2align	4, , 16
.LBB6_29:                               # %if.else.i1492
                                        #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_504
# %bb.30:                               # %invoke.cont.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.31:                               # %call5.i.i.i.i1503.noexc
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs5, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.32:                               # %for.inc.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_33:                               # %for.inc.i.i.i.i.i.i
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_33
.LBB6_34:                               # %invoke.cont18.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_36
# %bb.35:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $fp
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_36:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s3, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s1, $a2, 4
.LBB6_37:                               # %if.end126
                                        #   in Loop: Header=BB6_21 Depth=2
	st.d	$s2, $s8, 16
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	vldi	$vr3, -800
	move	$a5, $s6
	b	.LBB6_20
.LBB6_38:                               # %if.else73
                                        #   in Loop: Header=BB6_21 Depth=2
	bnez	$s0, .LBB6_42
# %bb.39:                               # %if.else73
                                        #   in Loop: Header=BB6_21 Depth=2
	ld.wu	$a0, $s7, 76
	bne	$a4, $a0, .LBB6_42
# %bb.40:                               # %invoke.cont87
                                        #   in Loop: Header=BB6_21 Depth=2
	fadd.d	$fs1, $fs2, $fs1
	beq	$a3, $s2, .LBB6_66
# %bb.41:                               # %if.then.i1557
                                        #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs7, $a3, 8
	b	.LBB6_19
.LBB6_42:                               # %invoke.cont103
                                        #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs3, $fs1, $fs2
	beq	$a3, $s2, .LBB6_50
# %bb.43:                               # %if.then.i1601
                                        #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs3, $a3, 0
	fst.d	$fs6, $a3, 8
	addi.d	$a0, $a3, 16
	st.d	$a0, $s8, 8
	move	$s1, $s4
	fadd.d	$fs1, $fs2, $fs1
	beq	$a0, $s2, .LBB6_58
.LBB6_44:                               # %if.then.i1645
                                        #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a0, 0
	fst.d	$fs7, $a0, 8
	addi.d	$a3, $a0, 16
	st.d	$a3, $s8, 8
	move	$a2, $s1
	b	.LBB6_20
.LBB6_45:                               # %if.else.i1518
                                        #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_506
# %bb.46:                               # %invoke.cont.i.i1525
                                        #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.47:                               # %call5.i.i.i.i1530.noexc
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs6, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.48:                               # %for.inc.i.i.i.i.i.i1535.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_49:                               # %for.inc.i.i.i.i.i.i1535
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_49
	b	.LBB6_34
.LBB6_50:                               # %if.else.i1606
                                        #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_508
# %bb.51:                               # %invoke.cont.i.i1613
                                        #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.52:                               # %call5.i.i.i.i1618.noexc
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs3, $s1, $fp
	fst.d	$fs6, $a0, 8
	move	$s5, $s1
	beq	$s4, $s2, .LBB6_55
# %bb.53:                               # %for.inc.i.i.i.i.i.i1623.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s5, $s1
	.p2align	4, , 16
.LBB6_54:                               # %for.inc.i.i.i.i.i.i1623
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $s2, .LBB6_54
.LBB6_55:                               # %invoke.cont18.i.i1631
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_57
# %bb.56:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i1634
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i1635
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s1, $s8, 0
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s3, $s1, 4
	st.d	$s2, $s8, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	vldi	$vr3, -800
	move	$a5, $s6
	fadd.d	$fs1, $fs2, $fs1
	bne	$a0, $s2, .LBB6_44
.LBB6_58:                               # %if.else.i1650
                                        #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s1
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_510
# %bb.59:                               # %invoke.cont.i.i1657
                                        #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.60:                               # %call5.i.i.i.i1662.noexc
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs7, $a0, 8
	move	$s4, $a2
	beq	$s1, $s2, .LBB6_63
# %bb.61:                               # %for.inc.i.i.i.i.i.i1667.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$s4, $a2
	.p2align	4, , 16
.LBB6_62:                               # %for.inc.i.i.i.i.i.i1667
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $s2, .LBB6_62
.LBB6_63:                               # %invoke.cont18.i.i1675
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s1, .LBB6_65
# %bb.64:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i1678
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_65:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i1679
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s4, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s3, $a2, 4
	b	.LBB6_37
.LBB6_66:                               # %if.else.i1562
                                        #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_512
# %bb.67:                               # %invoke.cont.i.i1569
                                        #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.68:                               # %call5.i.i.i.i1574.noexc
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.69:                               # %for.inc.i.i.i.i.i.i1579.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_70:                               # %for.inc.i.i.i.i.i.i1579
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_70
	b	.LBB6_34
.LBB6_71:
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	mul.w	$s3, $s4, $s3
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	bgez	$s3, .LBB6_73
	b	.LBB6_514
.LBB6_72:                               # %invoke.cont.for.cond.cleanup_crit_edge
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	mul.w	$s3, $s4, $s3
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_514
.LBB6_73:                               # %if.end.i208
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_80
# %bb.74:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.75:                               # %call5.i.i.i.noexc
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_77
# %bb.76:                               # %if.then.i.i.i.i
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_77:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$fp, .LBB6_79
# %bb.78:                               # %if.then.i.i218
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_79:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_80:                               # %if.end.i251
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_87
# %bb.81:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i259
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.82:                               # %call5.i.i.i.noexc275
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_84
# %bb.83:                               # %if.then.i.i.i.i266
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_84:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i267
	beqz	$fp, .LBB6_86
# %bb.85:                               # %if.then.i.i269
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_86:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i270
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_87:                               # %invoke.cont142
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	slli.d	$a1, $s3, 2
	alsl.w	$s3, $s3, $a1, 1
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_94
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i287
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.89:                               # %call5.i.i.i.noexc303
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_91
# %bb.90:                               # %if.then.i.i.i.i294
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_91:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i295
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_93
# %bb.92:                               # %if.then.i.i297
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_93:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i298
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
.LBB6_94:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit305
	ld.w	$a0, $s7, 76
	ori	$a5, $zero, 1
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB6_155
# %bb.95:                               # %for.body151.lr.ph
	move	$a6, $zero
	b	.LBB6_98
	.p2align	4, , 16
.LBB6_96:                               # %for.cond147.loopexit.loopexit
                                        #   in Loop: Header=BB6_98 Depth=1
	ld.w	$a0, $s7, 76
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
.LBB6_97:                               # %for.cond147.loopexit
                                        #   in Loop: Header=BB6_98 Depth=1
	bge	$a6, $a0, .LBB6_155
.LBB6_98:                               # %for.body151
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_104 Depth 2
                                        #       Child Loop BB6_142 Depth 3
                                        #       Child Loop BB6_144 Depth 3
	move	$a1, $a6
	ld.w	$a2, $s7, 84
	slli.d	$a3, $a6, 2
	ldx.w	$s3, $s6, $a3
	addi.d	$a6, $a6, 1
	slli.d	$a3, $a6, 2
	ld.w	$a4, $s7, 64
	ldx.w	$s4, $s6, $a3
	add.w	$s5, $a2, $a1
	blt	$a4, $a5, .LBB6_100
# %bb.99:                               # %if.then161
                                        #   in Loop: Header=BB6_98 Depth=1
	slt	$a2, $zero, $s5
	add.w	$s3, $s3, $a2
	addi.w	$a2, $a0, -1
	slt	$a1, $a1, $a2
	add.w	$s4, $s4, $a1
.LBB6_100:                              # %if.end172
                                        #   in Loop: Header=BB6_98 Depth=1
	ld.w	$a1, $s7, 72
	blt	$a1, $a5, .LBB6_97
# %bb.101:                              # %for.body178.lr.ph
                                        #   in Loop: Header=BB6_98 Depth=1
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	b	.LBB6_104
	.p2align	4, , 16
.LBB6_102:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i1708
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$fp, $a1, 8
	alsl.d	$a0, $s7, $s0, 2
	move	$s0, $a1
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
.LBB6_103:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a1, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $s7, 72
	addi.w	$s6, $s6, 1
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB6_96
.LBB6_104:                              # %for.body178
                                        #   Parent Loop BB6_98 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_142 Depth 3
                                        #       Child Loop BB6_144 Depth 3
	ld.w	$fp, $s7, 80
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.105:                              # %invoke.cont184
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s8, $a0
	add.w	$a2, $fp, $s6
	addi.d	$s2, $a0, 24
	addi.d	$a0, $a0, 4
	alsl.d	$a1, $s6, $s3, 1
	st.w	$a1, $s8, 4
	addi.d	$a3, $a1, -1
	st.w	$a3, $s8, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 8
	alsl.d	$a3, $s6, $s4, 1
	addi.d	$a1, $s8, 20
	st.w	$a3, $s8, 20
	addi.d	$a4, $a3, 1
	st.w	$a4, $s8, 16
	addi.d	$a3, $a3, 2
	st.w	$a3, $s8, 12
	beqz	$s5, .LBB6_109
# %bb.106:                              # %if.else250
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a3, $s7, 36
	addi.w	$a3, $a3, -1
	bne	$s5, $a3, .LBB6_113
# %bb.107:                              # %if.then.i.i366
                                        #   in Loop: Header=BB6_104 Depth=2
	add.d	$a3, $s6, $s4
	st.w	$a3, $s8, 20
	addi.d	$a4, $a3, 1
	st.w	$a4, $s8, 12
	st.w	$a3, $s8, 16
	move	$s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB6_117
# %bb.108:                              # %if.then.i.i.i.i394
                                        #   in Loop: Header=BB6_104 Depth=2
	vld	$vr0, $a0, 0
	addi.d	$s2, $s8, 16
	vst	$vr0, $s8, 0
	b	.LBB6_117
	.p2align	4, , 16
.LBB6_109:                              # %if.then206
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a4, $s7, 32
	add.d	$a3, $s6, $s3
	st.w	$a3, $s8, 0
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, -1
	st.w	$a3, $s8, 8
	bne	$a2, $a4, .LBB6_111
# %bb.110:                              # %if.then.i.i.i.i336
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a2, $s8, 16
	st.d	$a2, $s8, 12
	move	$s2, $a1
.LBB6_111:                              # %if.then.i.i344
                                        #   in Loop: Header=BB6_104 Depth=2
	addi.d	$a1, $s8, 8
	sub.d	$a2, $s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	blt	$a2, $a4, .LBB6_152
# %bb.112:                              # %if.then.i.i.i.i353
                                        #   in Loop: Header=BB6_104 Depth=2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -4
	b	.LBB6_117
	.p2align	4, , 16
.LBB6_113:                              # %if.else301
                                        #   in Loop: Header=BB6_104 Depth=2
	beqz	$a2, .LBB6_116
# %bb.114:                              # %if.else323
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a0, $s7, 32
	addi.w	$a0, $a0, -1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB6_117
# %bb.115:                              # %if.then.i.i.i.i432
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a0, $s8, 16
	st.d	$a0, $s8, 12
	move	$s2, $a1
	b	.LBB6_117
.LBB6_116:                              # %if.then.i.i.i.i413
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a2, $s8, 16
	vst	$vr0, $s8, 0
	move	$s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_117:                              # %if.end350
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s7, 8
	ld.d	$a3, $s7, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB6_119
# %bb.118:                              # %if.then.i.i443
                                        #   in Loop: Header=BB6_104 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	b	.LBB6_126
	.p2align	4, , 16
.LBB6_119:                              # %if.else.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s0, $s7, 0
	sub.d	$fp, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_498
# %bb.120:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	srai.d	$a0, $fp, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.121:                              # %call5.i.i.i.i.i.noexc
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s1, $a0
	stx.w	$s4, $a0, $fp
	blt	$fp, $s5, .LBB6_123
# %bb.122:                              # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_123:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	beqz	$s0, .LBB6_125
# %bb.124:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_125:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $s7, 16
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_126:                              # %invoke.cont355
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	sub.d	$s4, $s2, $s8
	srai.d	$s7, $s4, 2
	beq	$a0, $a1, .LBB6_128
# %bb.127:                              # %if.then.i.i462
                                        #   in Loop: Header=BB6_104 Depth=2
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	bne	$s8, $s2, .LBB6_135
	b	.LBB6_103
	.p2align	4, , 16
.LBB6_128:                              # %if.else.i.i464
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s0, $s1, 0
	sub.d	$fp, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_500
# %bb.129:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i471
                                        #   in Loop: Header=BB6_104 Depth=2
	srai.d	$a0, $fp, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.130:                              # %call5.i.i.i.i.i.noexc487
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s1, $a0
	stx.w	$s7, $a0, $fp
	blt	$fp, $s5, .LBB6_132
# %bb.131:                              # %if.then.i.i.i.i.i.i484
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_132:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i478
                                        #   in Loop: Header=BB6_104 Depth=2
	beqz	$s0, .LBB6_134
# %bb.133:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i480
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_134:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i481
                                        #   in Loop: Header=BB6_104 Depth=2
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	move	$s1, $a1
	st.d	$a0, $a1, 16
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beq	$s8, $s2, .LBB6_103
.LBB6_135:                              # %if.then.i1686
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s2, $s0, 8
	ld.d	$s3, $s0, 16
	sub.d	$a0, $s3, $s2
	bgeu	$a0, $s4, .LBB6_149
# %bb.136:                              # %if.else83.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s1, $s0, 0
	sub.d	$s5, $s2, $s1
	srai.d	$a1, $s5, 2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s7, .LBB6_502
# %bb.137:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i1705
                                        #   in Loop: Header=BB6_104 Depth=2
	sltu	$a2, $s7, $a1
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.138:                              # %call5.i.i.i.noexc1710
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s0, $a0
	move	$fp, $a0
	beq	$s1, $s2, .LBB6_145
# %bb.139:                              # %for.body.i.i.i.i81.i.preheader
                                        #   in Loop: Header=BB6_104 Depth=2
	addi.d	$a1, $s5, -4
	move	$a0, $s1
	move	$fp, $s0
	ori	$a2, $zero, 60
	bltu	$a1, $a2, .LBB6_144
# %bb.140:                              # %for.body.i.i.i.i81.i.preheader
                                        #   in Loop: Header=BB6_104 Depth=2
	sub.d	$a2, $s0, $s1
	move	$a0, $s1
	move	$fp, $s0
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB6_144
# %bb.141:                              # %vector.ph
                                        #   in Loop: Header=BB6_104 Depth=2
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 4
	slli.d	$a2, $a0, 4
	slli.d	$a3, $a0, 6
	add.d	$a0, $s1, $a3
	add.d	$fp, $s0, $a3
	addi.d	$a3, $s0, 32
	addi.d	$a4, $s1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB6_142:                              # %vector.body
                                        #   Parent Loop BB6_98 Depth=1
                                        #     Parent Loop BB6_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_142
# %bb.143:                              # %middle.block
                                        #   in Loop: Header=BB6_104 Depth=2
	beq	$a1, $a2, .LBB6_145
	.p2align	4, , 16
.LBB6_144:                              # %for.body.i.i.i.i81.i
                                        #   Parent Loop BB6_98 Depth=1
                                        #     Parent Loop BB6_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	addi.d	$a0, $a0, 4
	addi.d	$fp, $fp, 4
	bne	$a0, $s2, .LBB6_144
.LBB6_145:                              # %invoke.cont.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB6_147
# %bb.146:                              # %if.then.i.i91.i
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $s4
.LBB6_147:                              # %invoke.cont104.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_102
# %bb.148:                              # %if.then.i103.i
                                        #   in Loop: Header=BB6_104 Depth=2
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_102
	.p2align	4, , 16
.LBB6_149:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB6_151
# %bb.150:                              # %if.then.i.i46.i
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
.LBB6_151:                              # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit56.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $s2, $s4
	st.d	$a0, $s0, 8
	b	.LBB6_103
.LBB6_152:                              # %if.else.i.i.i.i349
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_154
# %bb.153:                              # %if.then2.i.i.i.i352
                                        #   in Loop: Header=BB6_104 Depth=2
	st.w	$a3, $a0, 0
.LBB6_154:                              # %invoke.cont243
                                        #   in Loop: Header=BB6_104 Depth=2
	addi.d	$s2, $s2, -4
	b	.LBB6_117
.LBB6_155:                              # %for.cond.cleanup150
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	beq	$a0, $a5, .LBB6_435
# %bb.156:                              # %if.end405
	ld.w	$s4, $s7, 68
	ld.w	$s3, $s7, 64
	sltu	$a0, $zero, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $zero, $s3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$s5, $a0, $a1, 1
	bltz	$s5, .LBB6_514
# %bb.157:                              # %if.end.i510
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s1, $a0, $s0
	srai.d	$a0, $s1, 2
	bgeu	$a0, $s5, .LBB6_164
# %bb.158:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i518
	ld.d	$s6, $a1, 8
	slli.d	$a0, $s5, 2
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.159:                              # %call5.i.i.i.noexc534
	move	$fp, $a0
	sub.d	$s2, $s6, $s0
	beq	$s6, $s0, .LBB6_161
# %bb.160:                              # %if.then.i.i.i.i525
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_161:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i526
	beqz	$s0, .LBB6_163
# %bb.162:                              # %if.then.i.i528
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s7, 68
	ld.w	$s3, $s7, 64
.LBB6_163:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i529
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	add.d	$a0, $fp, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_164:                              # %invoke.cont417
	ld.w	$a0, $s7, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $s7, 56
	xor	$a0, $s4, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	addi.w	$a1, $a1, -1
	xor	$a1, $s3, $a1
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$a2, $a0, $a1, 1
	addi.w	$a3, $zero, -3
	bge	$a3, $a2, .LBB6_514
# %bb.165:                              # %if.end.i538
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	ld.d	$fp, $a3, 0
	alsl.d	$a0, $a0, $a1, 1
	addi.w	$s5, $a0, 2
	sub.d	$s0, $a2, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s5, .LBB6_172
# %bb.166:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i546
	ld.d	$s4, $a3, 8
	slli.d	$a0, $s5, 2
.Ltmp87:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.167:                              # %call5.i.i.i.noexc562
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_169
# %bb.168:                              # %if.then.i.i.i.i553
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_169:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i554
	beqz	$fp, .LBB6_171
# %bb.170:                              # %if.then.i.i556
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s7, 64
.LBB6_171:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i557
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $a3, 16
	ld.w	$s4, $s7, 68
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_172:                              # %invoke.cont433
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	beqz	$s3, .LBB6_209
# %bb.173:                              # %invoke.cont433
	beqz	$s4, .LBB6_209
# %bb.174:                              # %if.then439
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s2, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a0, $a2, 16
	ld.w	$s3, $s7, 56
	beq	$a1, $a0, .LBB6_177
# %bb.175:                              # %if.then.i.i568
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a2, 8
	beq	$a1, $a0, .LBB6_184
.LBB6_176:                              # %if.then.i.i599
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a2, 8
	b	.LBB6_191
.LBB6_177:                              # %if.else.i.i570
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a1, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_550
# %bb.178:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i577
	srai.d	$a0, $s0, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.179:                              # %call5.i.i.i.i.i.noexc593
	move	$s1, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s5, .LBB6_181
# %bb.180:                              # %if.then.i.i.i.i.i.i590
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_181:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i584
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_183
# %bb.182:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i586
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_183:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i587
	addi.d	$a1, $s5, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	st.d	$a1, $a2, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB6_176
.LBB6_184:                              # %if.else.i.i601
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_552
# %bb.185:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i608
	srai.d	$a0, $s0, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp91:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.186:                              # %call5.i.i.i.i.i.noexc624
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s5, .LBB6_188
# %bb.187:                              # %if.then.i.i.i.i.i.i621
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_188:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i615
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_190
# %bb.189:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i617
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_190:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i618
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_191:                              # %invoke.cont449
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	nor	$a2, $s3, $zero
	add.d	$s3, $s2, $a2
	beq	$a0, $a1, .LBB6_194
# %bb.192:                              # %if.then.i628
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_201
.LBB6_193:                              # %if.then.i.i643
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB6_208
.LBB6_194:                              # %if.else.i
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_554
# %bb.195:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.196:                              # %call5.i.i.i.i632.noexc
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_198
# %bb.197:                              # %if.then.i.i.i.i.i
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_198:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_200
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_200:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_193
.LBB6_201:                              # %if.else.i.i645
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_556
# %bb.202:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i652
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.203:                              # %call5.i.i.i.i.i.noexc668
	move	$s1, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s1, $s0
	blt	$s0, $s3, .LBB6_205
# %bb.204:                              # %if.then.i.i.i.i.i.i665
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_205:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i659
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_207
# %bb.206:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i661
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_207:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i662
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_208:                              # %if.end458thread-pre-split
	ld.w	$s4, $s7, 68
.LBB6_209:                              # %if.end458
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_264
# %bb.210:                              # %if.then461
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a2, $a1, 0
	ld.w	$a4, $s7, 56
	sub.d	$fp, $a0, $s4
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_245
# %bb.211:                              # %for.body471.preheader
	ld.w	$a1, $s7, 64
	ori	$s6, $zero, 2
	beqz	$a1, .LBB6_242
# %bb.212:
	move	$s5, $s4
	beqz	$s3, .LBB6_244
.LBB6_213:                              # %if.end478.preheader
	move	$s7, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s2, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$s1, $a1, 511
	b	.LBB6_216
	.p2align	4, , 16
.LBB6_214:                              # %if.then.i.i774
                                        #   in Loop: Header=BB6_216 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ori	$a1, $zero, 2
	move	$s4, $fp
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_215:                              # %for.inc501
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$s6, $s6, $a1
	move	$s5, $s4
	beq	$s3, $s7, .LBB6_245
.LBB6_216:                              # %if.end478
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	addi.w	$s7, $s7, 1
	bne	$s7, $a2, .LBB6_219
# %bb.217:                              # %if.then483
                                        #   in Loop: Header=BB6_216 Depth=1
	beq	$a0, $a1, .LBB6_221
# %bb.218:                              # %if.then.i.i712
                                        #   in Loop: Header=BB6_216 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ori	$a1, $zero, 1
	move	$s4, $s5
	b	.LBB6_215
	.p2align	4, , 16
.LBB6_219:                              # %if.else489
                                        #   in Loop: Header=BB6_216 Depth=1
	beq	$a0, $a1, .LBB6_228
# %bb.220:                              # %if.then.i.i743
                                        #   in Loop: Header=BB6_216 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$fp, $s5
	addi.d	$s3, $s6, 1
	bne	$a0, $a1, .LBB6_214
	b	.LBB6_235
.LBB6_221:                              # %if.else.i.i714
                                        #   in Loop: Header=BB6_216 Depth=1
	sub.d	$fp, $a0, $s5
	beq	$fp, $s8, .LBB6_518
# %bb.222:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i721
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.223:                              # %call5.i.i.i.i.i.noexc737
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$s4, $a0
	stx.w	$s6, $a0, $fp
	blt	$fp, $s2, .LBB6_225
# %bb.224:                              # %if.then.i.i.i.i.i.i734
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_225:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i728
                                        #   in Loop: Header=BB6_216 Depth=1
	beqz	$s5, .LBB6_227
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i730
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_227:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i731
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $s4, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $a2, 16
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_215
.LBB6_228:                              # %if.else.i.i745
                                        #   in Loop: Header=BB6_216 Depth=1
	sub.d	$s0, $a0, $s5
	beq	$s0, $s8, .LBB6_524
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i752
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.230:                              # %call5.i.i.i.i.i.noexc768
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$fp, $a0
	stx.w	$s6, $a0, $s0
	blt	$s0, $s2, .LBB6_232
# %bb.231:                              # %if.then.i.i.i.i.i.i765
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_232:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i759
                                        #   in Loop: Header=BB6_216 Depth=1
	beqz	$s5, .LBB6_234
# %bb.233:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i761
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_234:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i762
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.d	$fp, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a4, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s3, $s6, 1
	bne	$a0, $a1, .LBB6_214
.LBB6_235:                              # %if.else.i.i776
                                        #   in Loop: Header=BB6_216 Depth=1
	sub.d	$s0, $a1, $fp
	beq	$s0, $s8, .LBB6_522
# %bb.236:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i783
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
.Ltmp115:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.237:                              # %call5.i.i.i.i.i.noexc799
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$s4, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s2, .LBB6_239
# %bb.238:                              # %if.then.i.i.i.i.i.i796
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_239:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i790
                                        #   in Loop: Header=BB6_216 Depth=1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_241
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i792
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_241:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i793
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s5, $s4, 2
	st.d	$a1, $a2, 16
	ori	$a1, $zero, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_215
.LBB6_242:                              # %if.then483.peel
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_469
# %bb.243:                              # %if.then.i.i712.peel
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ori	$s6, $zero, 1
	move	$s5, $s4
	bnez	$s3, .LBB6_213
.LBB6_244:
	move	$s4, $s5
.LBB6_245:                              # %for.cond.cleanup470
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	sub.d	$s3, $a4, $a5
	beq	$a0, $a1, .LBB6_247
# %bb.246:                              # %if.then.i680
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_254
.LBB6_247:                              # %if.else.i683
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_542
# %bb.248:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i690
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.249:                              # %call5.i.i.i.i695.noexc
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	blt	$s0, $s4, .LBB6_251
# %bb.250:                              # %if.then.i.i.i.i.i704
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_251:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i698
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_253
# %bb.252:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i700
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_253:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i701
	addi.d	$a0, $s3, 4
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_254:                              # %invoke.cont506
	ld.d	$a1, $a1, 8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	sub.d	$a1, $a1, $s4
	srai.d	$a1, $a1, 2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a5
	beq	$a0, $a2, .LBB6_256
# %bb.255:                              # %if.then.i.i811
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_263
.LBB6_256:                              # %if.else.i.i813
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_544
# %bb.257:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i820
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp132:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.258:                              # %call5.i.i.i.i.i.noexc836
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_260
# %bb.259:                              # %if.then.i.i.i.i.i.i833
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_260:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i827
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_262
# %bb.261:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i829
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_262:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i830
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_263:                              # %if.end518
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_264:                              # %if.end518
	ld.w	$a0, $s7, 64
	beqz	$a0, .LBB6_320
# %bb.265:                              # %if.then521
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a2, $a1, 0
	sub.d	$fp, $a0, $s4
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_301
# %bb.266:                              # %for.body531.preheader
	ld.w	$a1, $s7, 68
	beqz	$a1, .LBB6_298
# %bb.267:
	move	$s5, $s4
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_300
.LBB6_268:                              # %if.end537.preheader
	bstrpick.d	$s3, $s3, 31, 0
	ori	$s6, $zero, 1
	ori	$s7, $zero, 4
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$s2, $a1, 511
	ori	$s1, $zero, 1
	b	.LBB6_271
	.p2align	4, , 16
.LBB6_269:                              # %if.then.i.i943
                                        #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$s4, $fp
.LBB6_270:                              # %for.inc564
                                        #   in Loop: Header=BB6_271 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	move	$s5, $s4
	beq	$s3, $s1, .LBB6_301
.LBB6_271:                              # %if.end537
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$s8, $a1, $s7
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.wu	$a2, $a1, 76
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	bne	$s1, $a2, .LBB6_274
# %bb.272:                              # %if.then545
                                        #   in Loop: Header=BB6_271 Depth=1
	beq	$a0, $a1, .LBB6_276
# %bb.273:                              # %if.then.i.i881
                                        #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$s4, $s5
	b	.LBB6_270
	.p2align	4, , 16
.LBB6_274:                              # %if.else551
                                        #   in Loop: Header=BB6_271 Depth=1
	beq	$a0, $a1, .LBB6_283
# %bb.275:                              # %if.then.i.i912
                                        #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$fp, $s5
	addi.d	$s8, $s8, 1
	bne	$a0, $a1, .LBB6_269
	b	.LBB6_290
.LBB6_276:                              # %if.else.i.i883
                                        #   in Loop: Header=BB6_271 Depth=1
	sub.d	$fp, $a0, $s5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB6_520
# %bb.277:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i890
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.278:                              # %call5.i.i.i.i.i.noexc906
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$s4, $a0
	stx.w	$s8, $a0, $fp
	blt	$fp, $s6, .LBB6_280
# %bb.279:                              # %if.then.i.i.i.i.i.i903
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_280:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i897
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$s5, .LBB6_282
# %bb.281:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i899
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_282:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i900
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $s4, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s4, 2
	b	.LBB6_297
.LBB6_283:                              # %if.else.i.i914
                                        #   in Loop: Header=BB6_271 Depth=1
	sub.d	$s0, $a0, $s5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_528
# %bb.284:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i921
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.285:                              # %call5.i.i.i.i.i.noexc937
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$fp, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s6, .LBB6_287
# %bb.286:                              # %if.then.i.i.i.i.i.i934
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_287:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i928
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$s5, .LBB6_289
# %bb.288:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i930
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_289:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i931
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.d	$fp, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a4, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	bne	$a0, $a1, .LBB6_269
.LBB6_290:                              # %if.else.i.i945
                                        #   in Loop: Header=BB6_271 Depth=1
	sub.d	$s0, $a1, $fp
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_526
# %bb.291:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i952
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.292:                              # %call5.i.i.i.i.i.noexc968
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$s4, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s6, .LBB6_294
# %bb.293:                              # %if.then.i.i.i.i.i.i965
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_294:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i959
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$fp, .LBB6_296
# %bb.295:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i961
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_296:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i962
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s5, $s4, 2
.LBB6_297:                              # %for.inc564
                                        #   in Loop: Header=BB6_271 Depth=1
	st.d	$a1, $a2, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_270
.LBB6_298:                              # %if.then545.peel
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	ld.w	$s1, $s6, 0
	beq	$a0, $a1, .LBB6_476
# %bb.299:                              # %if.then.i.i881.peel
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_268
.LBB6_300:
	move	$s4, $s5
.LBB6_301:                              # %for.cond.cleanup530
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s3, $a4, -1
	beq	$a0, $a1, .LBB6_303
# %bb.302:                              # %if.then.i848
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_310
.LBB6_303:                              # %if.else.i851
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_546
# %bb.304:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i858
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.305:                              # %call5.i.i.i.i863.noexc
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_307
# %bb.306:                              # %if.then.i.i.i.i.i872
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_307:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i866
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_309
# %bb.308:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i868
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_309:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i869
	addi.d	$a0, $s3, 4
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_310:                              # %invoke.cont569
	ld.d	$a1, $a1, 8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	sub.d	$a1, $a1, $s4
	srai.d	$a1, $a1, 2
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a5
	beq	$a0, $a2, .LBB6_312
# %bb.311:                              # %if.then.i.i980
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_319
.LBB6_312:                              # %if.else.i.i982
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_548
# %bb.313:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i989
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp163:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.314:                              # %call5.i.i.i.i.i.noexc1005
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_316
# %bb.315:                              # %if.then.i.i.i.i.i.i1002
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_316:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i996
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_318
# %bb.317:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i998
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_318:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i999
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB6_319:                              # %if.end580
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_320:                              # %if.end580
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s7, 64
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	addi.w	$a0, $a0, -1
	srai.d	$a2, $a2, 4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_376
# %bb.321:                              # %if.then585
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s1, $a3, 0
	ld.w	$a2, $a1, 0
	sub.d	$fp, $a0, $s1
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_357
# %bb.322:                              # %for.body594.preheader
	ld.w	$a1, $s7, 68
	beqz	$a1, .LBB6_353
# %bb.323:
	move	$s2, $s1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$a4, .LBB6_356
.LBB6_324:                              # %for.body594.peel.next
	bstrpick.d	$s3, $s6, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	ori	$s8, $zero, 8
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	lu52i.d	$a1, $s5, 511
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	b	.LBB6_327
	.p2align	4, , 16
.LBB6_325:                              # %if.then.i.i1112
                                        #   in Loop: Header=BB6_327 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $fp
	ori	$s4, $zero, 1
.LBB6_326:                              # %for.inc630
                                        #   in Loop: Header=BB6_327 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s8, $s8, 4
	move	$s2, $s1
	beq	$s3, $s6, .LBB6_357
.LBB6_327:                              # %if.end600
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s7, 76
	bne	$s6, $a1, .LBB6_330
# %bb.328:                              # %if.then611
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_332
# %bb.329:                              # %if.then.i.i1050
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s2
	b	.LBB6_326
	.p2align	4, , 16
.LBB6_330:                              # %if.else617
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$s1, $a1, $s8
	ld.d	$a1, $a3, 16
	addi.d	$s7, $s1, -2
	beq	$a0, $a1, .LBB6_339
# %bb.331:                              # %if.then.i.i1081
                                        #   in Loop: Header=BB6_327 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$fp, $s2
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $s1, -1
	bne	$a0, $a1, .LBB6_325
	b	.LBB6_346
.LBB6_332:                              # %if.else.i.i1052
                                        #   in Loop: Header=BB6_327 Depth=1
	sub.d	$fp, $a0, $s2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB6_530
# %bb.333:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1059
                                        #   in Loop: Header=BB6_327 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp186:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.334:                              # %call5.i.i.i.i.i.noexc1075
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s1, $fp
	blt	$fp, $s4, .LBB6_336
# %bb.335:                              # %if.then.i.i.i.i.i.i1072
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_336:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1066
                                        #   in Loop: Header=BB6_327 Depth=1
	beqz	$s2, .LBB6_338
# %bb.337:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1068
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_338:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1069
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s1, 2
	st.d	$a1, $a3, 16
	b	.LBB6_326
.LBB6_339:                              # %if.else.i.i1083
                                        #   in Loop: Header=BB6_327 Depth=1
	sub.d	$s0, $a0, $s2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_536
# %bb.340:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1090
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s5, $s3
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	ori	$s3, $zero, 1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp174:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.341:                              # %call5.i.i.i.i.i.noexc1106
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$fp, $a0
	stx.w	$s7, $a0, $s0
	blt	$s0, $s3, .LBB6_343
# %bb.342:                              # %if.then.i.i.i.i.i.i1103
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_343:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1097
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_345
# %bb.344:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1099
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_345:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1100
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a3, 16
	move	$s3, $s5
	addi.d	$s4, $s1, -1
	bne	$a0, $a1, .LBB6_325
.LBB6_346:                              # %if.else.i.i1114
                                        #   in Loop: Header=BB6_327 Depth=1
	sub.d	$s0, $a1, $fp
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_534
# %bb.347:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1121
                                        #   in Loop: Header=BB6_327 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp177:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.348:                              # %call5.i.i.i.i.i.noexc1137
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s1, $a0
	stx.w	$s4, $a0, $s0
	ori	$s4, $zero, 1
	blt	$s0, $s4, .LBB6_350
# %bb.349:                              # %if.then.i.i.i.i.i.i1134
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_350:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1128
                                        #   in Loop: Header=BB6_327 Depth=1
	beqz	$fp, .LBB6_352
# %bb.351:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1130
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_352:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1131
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $s1, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s1, 2
	st.d	$a1, $a3, 16
	b	.LBB6_326
.LBB6_353:                              # %if.end600.peel
	ld.w	$a1, $s7, 76
	beqz	$a1, .LBB6_483
# %bb.354:                              # %cond.end.peel
	ld.w	$a1, $s6, 4
	ld.d	$a2, $a3, 16
	addi.d	$s3, $a1, -1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB6_484
.LBB6_355:                              # %if.then.i.i1050.peel
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s1
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	bnez	$a4, .LBB6_324
.LBB6_356:
	move	$s1, $s2
.LBB6_357:                              # %for.cond.cleanup593
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s4, $a4, 1
	beq	$a0, $a1, .LBB6_359
# %bb.358:                              # %if.then.i1017
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	b	.LBB6_366
.LBB6_359:                              # %if.else.i1020
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_558
# %bb.360:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1027
	srai.d	$a0, $s0, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp192:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.361:                              # %call5.i.i.i.i1032.noexc
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	blt	$s0, $s1, .LBB6_363
# %bb.362:                              # %if.then.i.i.i.i.i1041
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_363:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1035
	add.d	$s1, $s2, $s0
	beqz	$fp, .LBB6_365
# %bb.364:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1037
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_365:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1038
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_366:                              # %invoke.cont635
	ld.d	$a1, $a3, 8
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a4
	beq	$a0, $a2, .LBB6_368
# %bb.367:                              # %if.then.i.i1149
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB6_375
.LBB6_368:                              # %if.else.i.i1151
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_560
# %bb.369:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1158
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.370:                              # %call5.i.i.i.i.i.noexc1174
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_372
# %bb.371:                              # %if.then.i.i.i.i.i.i1171
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_372:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1165
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_374
# %bb.373:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1167
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_374:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1168
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
.LBB6_375:                              # %if.end646
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_376:                              # %if.end646
	ld.w	$a0, $s7, 60
	ld.w	$a1, $s7, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_423
# %bb.377:                              # %if.then651
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s1, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a1, $s7, 56
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$fp, $a0, $s1
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_412
# %bb.378:                              # %for.body666.preheader
	ld.w	$a1, $s7, 76
	slli.d	$a1, $a1, 2
	ld.w	$a2, $s7, 64
	ldx.w	$s0, $s6, $a1
	beqz	$a2, .LBB6_409
# %bb.379:
	move	$s2, $s1
	beqz	$s3, .LBB6_411
.LBB6_380:                              # %for.body666.peel.next
	move	$s7, $zero
	addi.d	$s8, $s0, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s3, $a1, 2047
	ori	$s4, $zero, 1
	lu52i.d	$s5, $s5, 511
	b	.LBB6_383
	.p2align	4, , 16
.LBB6_381:                              # %if.then.i.i1281
                                        #   in Loop: Header=BB6_383 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s1, $fp
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_382:                              # %for.inc696
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$s8, $s8, $a1
	move	$s2, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $s7, .LBB6_412
.LBB6_383:                              # %if.end673
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a1, $a3, 16
	addi.w	$s7, $s7, 1
	bne	$s7, $a2, .LBB6_386
# %bb.384:                              # %if.then678
                                        #   in Loop: Header=BB6_383 Depth=1
	beq	$a0, $a1, .LBB6_388
# %bb.385:                              # %if.then.i.i1219
                                        #   in Loop: Header=BB6_383 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s1, $s2
	b	.LBB6_382
	.p2align	4, , 16
.LBB6_386:                              # %if.else684
                                        #   in Loop: Header=BB6_383 Depth=1
	beq	$a0, $a1, .LBB6_395
# %bb.387:                              # %if.then.i.i1250
                                        #   in Loop: Header=BB6_383 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$fp, $s2
	addi.d	$s6, $s8, 1
	bne	$a0, $a1, .LBB6_381
	b	.LBB6_402
.LBB6_388:                              # %if.else.i.i1221
                                        #   in Loop: Header=BB6_383 Depth=1
	sub.d	$fp, $a0, $s2
	beq	$fp, $s3, .LBB6_532
# %bb.389:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1228
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp217:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.390:                              # %call5.i.i.i.i.i.noexc1244
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$s1, $a0
	stx.w	$s8, $a0, $fp
	blt	$fp, $s4, .LBB6_392
# %bb.391:                              # %if.then.i.i.i.i.i.i1241
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_392:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1235
                                        #   in Loop: Header=BB6_383 Depth=1
	beqz	$s2, .LBB6_394
# %bb.393:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1237
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_394:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1238
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s1, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_382
.LBB6_395:                              # %if.else.i.i1252
                                        #   in Loop: Header=BB6_383 Depth=1
	sub.d	$s0, $a0, $s2
	beq	$s0, $s3, .LBB6_540
# %bb.396:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1259
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
.Ltmp205:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.397:                              # %call5.i.i.i.i.i.noexc1275
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$fp, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s4, .LBB6_399
# %bb.398:                              # %if.then.i.i.i.i.i.i1272
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_399:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1266
                                        #   in Loop: Header=BB6_383 Depth=1
	beqz	$s2, .LBB6_401
# %bb.400:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1268
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_401:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1269
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s1, $fp, 2
	st.d	$a1, $a3, 16
	addi.d	$s6, $s8, 1
	bne	$a0, $a1, .LBB6_381
.LBB6_402:                              # %if.else.i.i1283
                                        #   in Loop: Header=BB6_383 Depth=1
	sub.d	$s0, $a1, $fp
	beq	$s0, $s3, .LBB6_538
# %bb.403:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1290
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.404:                              # %call5.i.i.i.i.i.noexc1306
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$s1, $a0
	stx.w	$s6, $a0, $s0
	blt	$s0, $s4, .LBB6_406
# %bb.405:                              # %if.then.i.i.i.i.i.i1303
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_406:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1297
                                        #   in Loop: Header=BB6_383 Depth=1
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_408
# %bb.407:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1299
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_408:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1300
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $s1, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s1, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_382
.LBB6_409:                              # %if.then678.peel
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_491
# %bb.410:                              # %if.then.i.i1219.peel
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s1
	bnez	$s3, .LBB6_380
.LBB6_411:
	move	$s1, $s2
.LBB6_412:                              # %for.cond.cleanup665
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.d	$s4, $a5, $a4
	beq	$a0, $a1, .LBB6_414
# %bb.413:                              # %if.then.i1187
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	b	.LBB6_421
.LBB6_414:                              # %if.else.i1190
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_562
# %bb.415:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1197
	srai.d	$a0, $s0, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.416:                              # %call5.i.i.i.i1202.noexc
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s1, .LBB6_418
# %bb.417:                              # %if.then.i.i.i.i.i1211
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_418:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1205
	add.d	$s1, $s2, $s0
	beqz	$fp, .LBB6_420
# %bb.419:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1207
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_420:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1208
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_421:                              # %invoke.cont701
	ld.d	$a1, $a3, 8
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a4
	beq	$a0, $a2, .LBB6_428
# %bb.422:                              # %if.then.i.i1318
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
.LBB6_423:                              # %if.end713
	ld.w	$s2, $s7, 56
	ld.w	$a0, $s7, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_435
.LBB6_424:                              # %land.lhs.true718
	ld.w	$a0, $s7, 60
	ld.w	$a1, $s7, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_435
# %bb.425:                              # %if.then723
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a3, 16
	ld.w	$s3, $a2, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s5, $s7, -2
	beq	$a1, $a0, .LBB6_437
# %bb.426:                              # %if.then.i.i1349
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a3, 8
	addi.d	$s5, $s7, -1
	beq	$a1, $a0, .LBB6_444
.LBB6_427:                              # %if.then.i.i1380
	st.w	$s5, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a3, 8
	b	.LBB6_451
.LBB6_428:                              # %if.else.i.i1320
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_564
# %bb.429:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1327
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp225:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.430:                              # %call5.i.i.i.i.i.noexc1343
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_432
# %bb.431:                              # %if.then.i.i.i.i.i.i1340
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_432:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1334
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_434
# %bb.433:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1336
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_434:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1337
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.w	$s2, $s7, 56
	ld.w	$a0, $s7, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB6_424
.LBB6_435:                              # %cleanup
	beqz	$s6, .LBB6_454
.LBB6_436:                              # %if.then.i.i.i1472
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_437:                              # %if.else.i.i1351
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a1, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_566
# %bb.438:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1358
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.439:                              # %call5.i.i.i.i.i.noexc1374
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s6, .LBB6_441
# %bb.440:                              # %if.then.i.i.i.i.i.i1371
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_441:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1365
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_443
# %bb.442:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1367
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_443:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1368
	addi.d	$a1, $s5, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a1, $a3, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a3, 16
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $s7, -1
	bne	$a1, $a0, .LBB6_427
.LBB6_444:                              # %if.else.i.i1382
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_568
# %bb.445:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1389
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp235:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.446:                              # %call5.i.i.i.i.i.noexc1405
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s6, .LBB6_448
# %bb.447:                              # %if.then.i.i.i.i.i.i1402
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_448:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1396
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_450
# %bb.449:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1398
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_450:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1399
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_451:                              # %invoke.cont736
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_455
# %bb.452:                              # %if.then.i1411
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_462
.LBB6_453:                              # %if.then.i.i1443
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	bnez	$s6, .LBB6_436
.LBB6_454:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit1477
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
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
.LBB6_455:                              # %if.else.i1414
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_570
# %bb.456:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1421
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.457:                              # %call5.i.i.i.i1426.noexc
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_459
# %bb.458:                              # %if.then.i.i.i.i.i1435
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_459:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i1429
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_461
# %bb.460:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i1431
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_461:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i1432
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_453
.LBB6_462:                              # %if.else.i.i1445
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_572
# %bb.463:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1452
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp239:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.464:                              # %call5.i.i.i.i.i.noexc1468
	move	$s1, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s1, $s0
	blt	$s0, $s3, .LBB6_466
# %bb.465:                              # %if.then.i.i.i.i.i.i1465
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_466:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1459
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_468
# %bb.467:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1461
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_468:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1462
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	bnez	$s6, .LBB6_436
	b	.LBB6_454
.LBB6_469:                              # %if.else.i.i714.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_518
# %bb.470:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i721.peel
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.471:                              # %call5.i.i.i.i.i.noexc737.peel
	move	$s5, $a0
	stx.w	$zero, $a0, $fp
	blt	$fp, $s1, .LBB6_473
# %bb.472:                              # %if.then.i.i.i.i.i.i734.peel
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_473:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i728.peel
	add.d	$s1, $s5, $fp
	beqz	$s4, .LBB6_475
# %bb.474:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i730.peel
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_475:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i731.peel
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ori	$s6, $zero, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	bnez	$s3, .LBB6_213
	b	.LBB6_244
.LBB6_476:                              # %if.else.i.i883.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_520
# %bb.477:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i890.peel
	ori	$s2, $zero, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
# %bb.478:                              # %call5.i.i.i.i.i.noexc906.peel
	move	$s5, $a0
	stx.w	$s1, $a0, $fp
	blt	$fp, $s2, .LBB6_480
# %bb.479:                              # %if.then.i.i.i.i.i.i903.peel
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_480:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i897.peel
	add.d	$s1, $s5, $fp
	beqz	$s4, .LBB6_482
# %bb.481:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i899.peel
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_482:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i900.peel
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_268
	b	.LBB6_300
.LBB6_483:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	addi.d	$s3, $a1, -1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB6_355
.LBB6_484:                              # %if.else.i.i1052.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_530
# %bb.485:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1059.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp171:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.486:                              # %call5.i.i.i.i.i.noexc1075.peel
	move	$s2, $a0
	stx.w	$s3, $a0, $fp
	blt	$fp, $s4, .LBB6_488
# %bb.487:                              # %if.then.i.i.i.i.i.i1072.peel
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_488:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1066.peel
	add.d	$s3, $s2, $fp
	beqz	$s1, .LBB6_490
# %bb.489:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1068.peel
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_490:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1069.peel
	addi.d	$a0, $s3, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bnez	$a4, .LBB6_324
	b	.LBB6_356
.LBB6_491:                              # %if.else.i.i1221.peel
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_532
# %bb.492:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i1228.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp202:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.493:                              # %call5.i.i.i.i.i.noexc1244.peel
	move	$s2, $a0
	stx.w	$s0, $a0, $fp
	blt	$fp, $s4, .LBB6_495
# %bb.494:                              # %if.then.i.i.i.i.i.i1241.peel
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_495:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i1235.peel
	add.d	$s4, $s2, $fp
	beqz	$s1, .LBB6_497
# %bb.496:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i1237.peel
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_497:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i1238.peel
	addi.d	$a0, $s4, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s3, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	bnez	$s3, .LBB6_380
	b	.LBB6_411
.LBB6_498:                              # %if.then.i.i.i.i450
.Ltmp256:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.499:                              # %.noexc451
.LBB6_500:                              # %if.then.i.i.i.i485
.Ltmp253:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.501:                              # %.noexc486
.LBB6_502:                              # %if.then.i75.i
.Ltmp82:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.503:                              # %.noexc1709
.LBB6_504:                              # %if.then.i.i.i1507
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.505:                              # %.noexc1508
.LBB6_506:                              # %if.then.i.i.i1550
.Ltmp55:                                # EH_LABEL
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.507:                              # %.noexc1551
.LBB6_508:                              # %if.then.i.i.i1638
.Ltmp43:                                # EH_LABEL
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.509:                              # %.noexc1639
.LBB6_510:                              # %if.then.i.i.i1682
.Ltmp40:                                # EH_LABEL
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.511:                              # %.noexc1683
.LBB6_512:                              # %if.then.i.i.i1594
.Ltmp49:                                # EH_LABEL
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.513:                              # %.noexc1595
.LBB6_514:                              # %if.then.i560.invoke
.Ltmp259:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.515:                              # %if.then.i560.cont
.LBB6_516:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_517:                              # %if.then.i.i204
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_518:                              # %if.then.i.i.i.i735
.Ltmp127:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.519:                              # %.noexc736
.LBB6_520:                              # %if.then.i.i.i.i904
.Ltmp158:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.521:                              # %.noexc905
.LBB6_522:                              # %if.then.i.i.i.i797
.Ltmp118:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.523:                              # %.noexc798
.LBB6_524:                              # %if.then.i.i.i.i766
.Ltmp121:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.525:                              # %.noexc767
.LBB6_526:                              # %if.then.i.i.i.i966
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.527:                              # %.noexc967
.LBB6_528:                              # %if.then.i.i.i.i935
.Ltmp152:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.529:                              # %.noexc936
.LBB6_530:                              # %if.then.i.i.i.i1073
.Ltmp189:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.531:                              # %.noexc1074
.LBB6_532:                              # %if.then.i.i.i.i1242
.Ltmp220:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.533:                              # %.noexc1243
.LBB6_534:                              # %if.then.i.i.i.i1135
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.535:                              # %.noexc1136
.LBB6_536:                              # %if.then.i.i.i.i1104
.Ltmp183:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.537:                              # %.noexc1105
.LBB6_538:                              # %if.then.i.i.i.i1304
.Ltmp211:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.539:                              # %.noexc1305
.LBB6_540:                              # %if.then.i.i.i.i1273
.Ltmp214:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.541:                              # %.noexc1274
.LBB6_542:                              # %if.then.i.i.i705
.Ltmp137:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.543:                              # %.noexc706
.LBB6_544:                              # %if.then.i.i.i.i834
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.545:                              # %.noexc835
.LBB6_546:                              # %if.then.i.i.i873
.Ltmp168:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.547:                              # %.noexc874
.LBB6_548:                              # %if.then.i.i.i.i1003
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.549:                              # %.noexc1004
.LBB6_550:                              # %if.then.i.i.i.i591
.Ltmp106:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.551:                              # %.noexc592
.LBB6_552:                              # %if.then.i.i.i.i622
.Ltmp103:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.553:                              # %.noexc623
.LBB6_554:                              # %if.then.i.i.i637
.Ltmp100:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.555:                              # %.noexc638
.LBB6_556:                              # %if.then.i.i.i.i666
.Ltmp97:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.557:                              # %.noexc667
.LBB6_558:                              # %if.then.i.i.i1042
.Ltmp199:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.559:                              # %.noexc1043
.LBB6_560:                              # %if.then.i.i.i.i1172
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.561:                              # %.noexc1173
.LBB6_562:                              # %if.then.i.i.i1212
.Ltmp230:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.563:                              # %.noexc1213
.LBB6_564:                              # %if.then.i.i.i.i1341
.Ltmp227:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.565:                              # %.noexc1342
.LBB6_566:                              # %if.then.i.i.i.i1372
.Ltmp250:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.567:                              # %.noexc1373
.LBB6_568:                              # %if.then.i.i.i.i1403
.Ltmp247:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.569:                              # %.noexc1404
.LBB6_570:                              # %if.then.i.i.i1436
.Ltmp244:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.571:                              # %.noexc1437
.LBB6_572:                              # %if.then.i.i.i.i1466
.Ltmp241:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.573:                              # %.noexc1467
.LBB6_574:                              # %lpad681.loopexit.loopexit.split-lp
.Ltmp204:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_642
.LBB6_575:                              # %lpad614.loopexit.loopexit.split-lp
.Ltmp173:                               # EH_LABEL
	b	.LBB6_640
.LBB6_576:                              # %lpad548.loopexit.loopexit.split-lp
.Ltmp142:                               # EH_LABEL
	b	.LBB6_630
.LBB6_577:                              # %lpad486.loopexit.loopexit.split-lp
.Ltmp111:                               # EH_LABEL
	b	.LBB6_640
.LBB6_578:                              # %lpad741
.Ltmp243:                               # EH_LABEL
	b	.LBB6_602
.LBB6_579:                              # %lpad738
.Ltmp246:                               # EH_LABEL
	b	.LBB6_602
.LBB6_580:                              # %lpad735
.Ltmp249:                               # EH_LABEL
	b	.LBB6_640
.LBB6_581:                              # %lpad730
.Ltmp252:                               # EH_LABEL
	b	.LBB6_640
.LBB6_582:                              # %lpad707
.Ltmp229:                               # EH_LABEL
	b	.LBB6_602
.LBB6_583:                              # %lpad700
.Ltmp232:                               # EH_LABEL
	b	.LBB6_602
.LBB6_584:                              # %lpad641
.Ltmp198:                               # EH_LABEL
	b	.LBB6_602
.LBB6_585:                              # %lpad634
.Ltmp201:                               # EH_LABEL
	b	.LBB6_640
.LBB6_586:                              # %lpad454
.Ltmp99:                                # EH_LABEL
	b	.LBB6_602
.LBB6_587:                              # %lpad451
.Ltmp102:                               # EH_LABEL
	b	.LBB6_602
.LBB6_588:                              # %lpad448
.Ltmp105:                               # EH_LABEL
	b	.LBB6_602
.LBB6_589:                              # %lpad444
.Ltmp108:                               # EH_LABEL
	b	.LBB6_602
.LBB6_590:                              # %lpad575
.Ltmp167:                               # EH_LABEL
	b	.LBB6_602
.LBB6_591:                              # %lpad568
.Ltmp170:                               # EH_LABEL
	b	.LBB6_602
.LBB6_592:                              # %lpad512
.Ltmp136:                               # EH_LABEL
	b	.LBB6_602
.LBB6_593:                              # %lpad505
.Ltmp139:                               # EH_LABEL
	b	.LBB6_640
.LBB6_594:                              # %lpad681.loopexit.loopexit
.Ltmp219:                               # EH_LABEL
	b	.LBB6_602
.LBB6_595:                              # %lpad687.loopexit.split-lp
.Ltmp216:                               # EH_LABEL
	b	.LBB6_640
.LBB6_596:                              # %lpad614.loopexit.loopexit
.Ltmp188:                               # EH_LABEL
	b	.LBB6_640
.LBB6_597:                              # %lpad692.loopexit.split-lp
.Ltmp213:                               # EH_LABEL
	b	.LBB6_640
.LBB6_598:                              # %lpad620.loopexit.split-lp
.Ltmp185:                               # EH_LABEL
	b	.LBB6_630
.LBB6_599:                              # %lpad692.loopexit
.Ltmp210:                               # EH_LABEL
	b	.LBB6_640
.LBB6_600:                              # %lpad625.loopexit.split-lp
.Ltmp182:                               # EH_LABEL
	b	.LBB6_630
.LBB6_601:                              # %lpad687.loopexit
.Ltmp207:                               # EH_LABEL
.LBB6_602:                              # %ehcleanup748
	move	$s0, $a0
	b	.LBB6_641
.LBB6_603:                              # %lpad625.loopexit
.Ltmp179:                               # EH_LABEL
	b	.LBB6_630
.LBB6_604:                              # %lpad620.loopexit
.Ltmp176:                               # EH_LABEL
	b	.LBB6_630
.LBB6_605:                              # %lpad681.loopexit.split-lp
.Ltmp222:                               # EH_LABEL
	b	.LBB6_640
.LBB6_606:                              # %lpad614.loopexit.split-lp
.Ltmp191:                               # EH_LABEL
	b	.LBB6_640
.LBB6_607:                              # %lpad548.loopexit.loopexit
.Ltmp157:                               # EH_LABEL
	b	.LBB6_630
.LBB6_608:                              # %lpad554.loopexit.split-lp
.Ltmp154:                               # EH_LABEL
	b	.LBB6_630
.LBB6_609:                              # %lpad486.loopexit.loopexit
.Ltmp126:                               # EH_LABEL
	b	.LBB6_640
.LBB6_610:                              # %lpad559.loopexit.split-lp
.Ltmp151:                               # EH_LABEL
	b	.LBB6_630
.LBB6_611:                              # %lpad492.loopexit.split-lp
.Ltmp123:                               # EH_LABEL
	b	.LBB6_640
.LBB6_612:                              # %lpad559.loopexit
.Ltmp148:                               # EH_LABEL
	b	.LBB6_630
.LBB6_613:                              # %lpad497.loopexit.split-lp
.Ltmp120:                               # EH_LABEL
	b	.LBB6_640
.LBB6_614:                              # %lpad554.loopexit
.Ltmp145:                               # EH_LABEL
	b	.LBB6_630
.LBB6_615:                              # %lpad497.loopexit
.Ltmp117:                               # EH_LABEL
	b	.LBB6_640
.LBB6_616:                              # %lpad492.loopexit
.Ltmp114:                               # EH_LABEL
	b	.LBB6_640
.LBB6_617:                              # %lpad548.loopexit.split-lp
.Ltmp160:                               # EH_LABEL
	b	.LBB6_630
.LBB6_618:                              # %lpad486.loopexit.split-lp
.Ltmp129:                               # EH_LABEL
	b	.LBB6_640
.LBB6_619:                              # %lpad139
.Ltmp261:                               # EH_LABEL
	b	.LBB6_640
.LBB6_620:                              # %lpad88.loopexit
.Ltmp48:                                # EH_LABEL
	b	.LBB6_630
.LBB6_621:                              # %lpad119.loopexit
.Ltmp39:                                # EH_LABEL
	b	.LBB6_630
.LBB6_622:                              # %lpad88.loopexit.split-lp
.Ltmp51:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_642
.LBB6_623:                              # %lpad119.loopexit.split-lp
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_642
.LBB6_624:                              # %lpad104.loopexit.split-lp
.Ltmp45:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_642
.LBB6_625:                              # %lpad104.loopexit
.Ltmp36:                                # EH_LABEL
	b	.LBB6_630
.LBB6_626:                              # %lpad67.loopexit.split-lp
.Ltmp57:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_642
.LBB6_627:                              # %lpad67.loopexit
.Ltmp54:                                # EH_LABEL
	b	.LBB6_630
.LBB6_628:                              # %lpad52.loopexit.split-lp
.Ltmp63:                                # EH_LABEL
	b	.LBB6_630
.LBB6_629:                              # %lpad52.loopexit
.Ltmp60:                                # EH_LABEL
.LBB6_630:                              # %if.then.i.i.i1479
	move	$s0, $a0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_642
.LBB6_631:                              # %lpad382.loopexit.split-lp
.Ltmp84:                                # EH_LABEL
	b	.LBB6_637
.LBB6_632:                              # %lpad382.loopexit
.Ltmp81:                                # EH_LABEL
	b	.LBB6_637
.LBB6_633:                              # %lpad354.loopexit
.Ltmp75:                                # EH_LABEL
	b	.LBB6_637
.LBB6_634:                              # %lpad360.loopexit.split-lp
.Ltmp255:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_638
.LBB6_635:                              # %lpad354.loopexit.split-lp
.Ltmp258:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_638
.LBB6_636:                              # %lpad360.loopexit
.Ltmp78:                                # EH_LABEL
.LBB6_637:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit508
	move	$s0, $a0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_638:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit508
	ori	$a1, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_641
.LBB6_639:                              # %lpad183
.Ltmp72:                                # EH_LABEL
.LBB6_640:                              # %ehcleanup748
	move	$s0, $a0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_641:                              # %ehcleanup748
	beqz	$s6, .LBB6_643
.LBB6_642:                              # %if.then.i.i.i1479
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_643:                              # %ehcleanup750
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end6-_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp59                #   Call between .Ltmp59 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp46-.Ltmp38                #   Call between .Ltmp38 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin1          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp85-.Ltmp80                #   Call between .Ltmp80 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 35 <<
	.uleb128 .Ltmp124-.Ltmp96               #   Call between .Ltmp96 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp112-.Ltmp125              #   Call between .Ltmp125 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp130-.Ltmp116              #   Call between .Ltmp116 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp155-.Ltmp133              #   Call between .Ltmp133 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin1         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp143-.Ltmp156              #   Call between .Ltmp156 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin1         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp161-.Ltmp147              #   Call between .Ltmp147 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp186-.Ltmp164              #   Call between .Ltmp164 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin1         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp174-.Ltmp187              #   Call between .Ltmp187 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp177-.Ltmp175              #   Call between .Ltmp175 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp192-.Ltmp178              #   Call between .Ltmp178 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp217-.Ltmp195              #   Call between .Ltmp195 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin1         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp205-.Ltmp218              #   Call between .Ltmp218 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp208-.Ltmp206              #   Call between .Ltmp206 and .Ltmp208
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin1         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp223-.Ltmp209              #   Call between .Ltmp209 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp233-.Ltmp226              #   Call between .Ltmp226 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp109-.Ltmp240              #   Call between .Ltmp240 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp140-.Ltmp110              #   Call between .Ltmp110 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin1         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp171-.Ltmp141              #   Call between .Ltmp141 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp202-.Ltmp172              #   Call between .Ltmp172 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp256-.Ltmp203              #   Call between .Ltmp203 and .Ltmp256
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin1         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 94 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 95 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 96 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 97 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 98 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 99 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp127-.Ltmp260              #   Call between .Ltmp260 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin1         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin1         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin1         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin1         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin1         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin1         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin1         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin1         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 118 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin1         # >> Call Site 119 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 121 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin1         # >> Call Site 129 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 130 <<
	.uleb128 .Lfunc_end6-.Ltmp242           #   Call between .Ltmp242 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Error:  must specify meshtype"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"pie"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rect"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hex"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Error:  invalid meshtype "
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"meshparams"
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Error:  must specify meshparams"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Error:  meshparams must have <= 4 values"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error:  meshparams values must be positive"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Error:  meshparams theta must be < 360"
	.size	.L.str.11, 39

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"vector::reserve"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vector::_M_range_insert"
	.size	.L.str.16, 24

	.globl	_ZN7GenMeshC1EPK9InputFile
	.type	_ZN7GenMeshC1EPK9InputFile,@function
_ZN7GenMeshC1EPK9InputFile = _ZN7GenMeshC2EPK9InputFile
	.globl	_ZN7GenMeshD1Ev
	.type	_ZN7GenMeshD1Ev,@function
_ZN7GenMeshD1Ev = _ZN7GenMeshD2Ev
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
