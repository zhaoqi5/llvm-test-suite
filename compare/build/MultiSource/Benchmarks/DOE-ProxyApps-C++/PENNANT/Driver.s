	.file	"Driver.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI0_0:
	.dword	0x547d42aea2879f2e              # double 9.9999999999999997E+98
.LCPI0_1:
	.dword	0x3ff3333333333333              # double 1.2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.dword	8                               # 0x8
	.dword	8390891584273675364             # 0x74726f7065727464
	.text
	.globl	_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
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
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$s4, $a0, 32
	st.d	$s4, $a0, 16
	ld.d	$a1, $a2, 8
	ld.d	$s2, $a2, 0
	addi.d	$fp, $a0, 16
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 8
	move	$a0, $s4
	bltu	$a1, $a2, .LBB0_2
# %bb.1:                                # %if.then.i.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $fp, 0
	st.d	$a1, $s4, 0
.LBB0_2:                                # %if.end.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB0_6
# %bb.3:                                # %if.end.i.i
	bnez	$a1, .LBB0_5
# %bb.4:                                # %if.then.i.i.i
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB0_6
.LBB0_5:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 8
	st.d	$a0, $s0, 24
	addi.d	$s5, $s0, 144
	st.d	$s5, $s0, 128
	st.d	$zero, $s0, 136
	st.b	$zero, $s0, 144
	addi.d	$s6, $s0, 176
	st.d	$s6, $s0, 160
	st.d	$zero, $s0, 168
	st.b	$zero, $s0, 176
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$s3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_38
# %bb.7:                                # %if.then
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.8:                                # %invoke.cont
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB0_63
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB0_11
# %bb.10:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB0_13
.LBB0_11:                               # %if.end.i.i.i
.Ltmp2:                                 # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.12:                               # %.noexc211
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp4:                                 # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp5:                                 # EH_LABEL
.LBB0_13:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp6:                                 # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.14:                               # %call1.i.noexc
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.15:                               # %invoke.cont2
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.16:                               # %invoke.cont4
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB0_63
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i221
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB0_19
# %bb.18:                               # %if.then.i2.i.i224
	ld.bu	$a0, $s2, 67
	b	.LBB0_21
.LBB0_19:                               # %if.end.i.i.i229
.Ltmp12:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.20:                               # %.noexc234
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp14:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp15:                                # EH_LABEL
.LBB0_21:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i226
.Ltmp16:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.22:                               # %call1.i.noexc237
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.23:                               # %invoke.cont6
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.24:                               # %invoke.cont8
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB0_63
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB0_27
# %bb.26:                               # %if.then.i2.i.i250
	ld.bu	$a0, $s2, 67
	b	.LBB0_29
.LBB0_27:                               # %if.end.i.i.i255
.Ltmp22:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.28:                               # %.noexc260
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp24:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp25:                                # EH_LABEL
.LBB0_29:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i252
.Ltmp26:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.30:                               # %call1.i.noexc263
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.31:                               # %invoke.cont10
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB0_63
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i273
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB0_34
# %bb.33:                               # %if.then.i2.i.i276
	ld.bu	$a0, $s2, 67
	b	.LBB0_36
.LBB0_34:                               # %if.end.i.i.i281
.Ltmp30:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.35:                               # %.noexc286
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp32:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp33:                                # EH_LABEL
.LBB0_36:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i278
.Ltmp34:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.37:                               # %call1.i.noexc289
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
.LBB0_38:                               # %if.end
	addi.d	$s7, $sp, 24
	st.d	$s7, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.b	$a0, $sp, 28
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 29
.Ltmp38:                                # EH_LABEL
	lu12i.w	$a0, 244
	ori	$s2, $a0, 575
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp39:                                # EH_LABEL
# %bb.39:                               # %invoke.cont18
	ld.d	$a0, $sp, 8
	st.w	$a1, $s0, 72
	beq	$a0, $s7, .LBB0_41
# %bb.40:                               # %if.then.i.i43
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	st.d	$s7, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.b	$a0, $sp, 28
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 29
.Ltmp41:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.42:                               # %invoke.cont27
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $s0, 64
	beq	$a0, $s7, .LBB0_44
# %bb.43:                               # %if.then.i.i58
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 64
.LBB0_44:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	ld.w	$a0, $s0, 72
	bne	$a0, $s2, .LBB0_46
# %bb.45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	fcmp.cune.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_65
.LBB0_46:                               # %if.end45
	st.d	$s7, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.b	$a0, $sp, 28
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 29
.Ltmp44:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.47:                               # %invoke.cont51
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $s0, 80
	beq	$a0, $s7, .LBB0_49
# %bb.48:                               # %if.then.i.i96
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_49:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
	st.d	$s7, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.h	$a0, $sp, 28
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 30
.Ltmp47:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.50:                               # %invoke.cont62
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $s0, 88
	beq	$a0, $s7, .LBB0_52
# %bb.51:                               # %if.then.i.i115
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
	st.d	$s7, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.b	$a0, $sp, 28
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 29
.Ltmp50:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.53:                               # %invoke.cont73
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $s0, 96
	beq	$a0, $s7, .LBB0_55
# %bb.54:                               # %if.then.i.i134
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	st.d	$s7, $sp, 8
	vst	$vr0, $sp, 16
	st.b	$zero, $sp, 32
.Ltmp53:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp54:                                # EH_LABEL
# %bb.56:                               # %invoke.cont84
	ld.d	$a0, $sp, 8
	st.w	$a1, $s0, 104
	beq	$a0, $s7, .LBB0_58
# %bb.57:                               # %if.then.i.i153
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
.Ltmp56:                                # EH_LABEL
	ori	$a0, $zero, 616
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.59:                               # %invoke.cont90
.Ltmp58:                                # EH_LABEL
	move	$s2, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN4MeshC1EPK9InputFile)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.60:                               # %invoke.cont93
	st.d	$s2, $s0, 0
.Ltmp61:                                # EH_LABEL
	ori	$a0, $zero, 408
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.61:                               # %invoke.cont95
.Ltmp63:                                # EH_LABEL
	move	$s3, $a0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN5HydroC1EPK9InputFileP4Mesh)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.62:                               # %invoke.cont99
	st.d	$s3, $s0, 8
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.LBB0_63:                               # %if.then.i.i.i284.invoke
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.64:                               # %if.then.i.i.i284.cont
.LBB0_65:                               # %if.then37
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_68
# %bb.66:                               # %if.then39
.Ltmp66:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 34
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.67:                               # %invoke.cont40
.Ltmp68:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
.LBB0_68:                               # %if.end44
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %lpad98
.Ltmp65:                                # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 408
	move	$a0, $s3
	b	.LBB0_83
.LBB0_70:                               # %lpad92
.Ltmp60:                                # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 616
	move	$a0, $s2
	b	.LBB0_83
.LBB0_71:                               # %lpad83
.Ltmp55:                                # EH_LABEL
	b	.LBB0_77
.LBB0_72:                               # %lpad72
.Ltmp52:                                # EH_LABEL
	b	.LBB0_77
.LBB0_73:                               # %lpad61
.Ltmp49:                                # EH_LABEL
	b	.LBB0_77
.LBB0_74:                               # %lpad50
.Ltmp46:                                # EH_LABEL
	b	.LBB0_77
.LBB0_75:                               # %lpad26
.Ltmp43:                                # EH_LABEL
	b	.LBB0_77
.LBB0_76:                               # %lpad17
.Ltmp40:                                # EH_LABEL
.LBB0_77:                               # %lpad17
	ld.d	$a2, $sp, 8
	move	$s1, $a0
	bne	$a2, $s7, .LBB0_82
# %bb.78:                               # %ehcleanup101
	ld.d	$a0, $s0, 160
	bne	$a0, $s6, .LBB0_85
.LBB0_79:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
	ld.d	$a0, $s0, 128
	bne	$a0, $s5, .LBB0_86
.LBB0_80:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
	ld.d	$a0, $fp, 0
	bne	$a0, $s4, .LBB0_87
.LBB0_81:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_82:                               # %if.then.i.i70
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB0_83:                               # %ehcleanup101
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	beq	$a0, $s6, .LBB0_79
	b	.LBB0_85
.LBB0_84:                               # %lpad
.Ltmp72:                                # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s0, 160
	beq	$a0, $s6, .LBB0_79
.LBB0_85:                               # %if.then.i.i188
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 128
	beq	$a0, $s5, .LBB0_80
.LBB0_86:                               # %if.then.i.i195
	ld.d	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $s4, .LBB0_81
.LBB0_87:                               # %if.then.i.i202
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end0-_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	.uleb128 .Ltmp37-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp37
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp41-.Ltmp39                #   Call between .Ltmp39 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp44-.Ltmp42                #   Call between .Ltmp42 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp50-.Ltmp48                #   Call between .Ltmp48 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp53-.Ltmp51                #   Call between .Ltmp51 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp69-.Ltmp70                #   Call between .Ltmp70 and .Ltmp69
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Lfunc_end0-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN6DriverD2Ev                  # -- Begin function _ZN6DriverD2Ev
	.p2align	5
	.type	_ZN6DriverD2Ev,@function
_ZN6DriverD2Ev:                         # @_ZN6DriverD2Ev
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
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB1_2
# %bb.1:                                # %delete.notnull
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN5HydroD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 408
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %delete.end
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB1_4
# %bb.3:                                # %delete.notnull3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4MeshD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 616
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %delete.end4
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB1_6
# %bb.5:                                # %if.then.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB1_8
# %bb.7:                                # %if.then.i.i3
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 32
	beq	$a0, $a1, .LBB1_10
# %bb.9:                                # %if.then.i.i10
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN6DriverD2Ev, .Lfunc_end1-_ZN6DriverD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Driver3runEv                # -- Begin function _ZN6Driver3runEv
	.p2align	5
	.type	_ZN6Driver3runEv,@function
_ZN6Driver3runEv:                       # @_ZN6Driver3runEv
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	st.d	$zero, $fp, 48
	st.w	$zero, $fp, 56
	pcaddu18i	$ra, %call36(_ZN5Hydro16writeEnergyCheckEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$s3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.end
	ld.w	$a0, $fp, 56
	ld.w	$a1, $fp, 72
	blt	$a0, $a1, .LBB2_3
	b	.LBB2_14
.LBB2_2:                                # %if.then
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	ld.w	$a1, $fp, 72
	bge	$a0, $a1, .LBB2_14
.LBB2_3:                                # %land.rhs.lr.ph
	ori	$s4, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a1, %got_pc_lo12(_ZSt4cout)
	addi.w	$s5, $zero, -261
	lu32i.d	$s5, 0
	ori	$s6, $zero, 5
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$s1, $a1, %pc_lo12(.L.str.9)
	b	.LBB2_7
.LBB2_4:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s7, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s7
.LBB2_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
.LBB2_6:                                # %if.end31
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $fp, 72
	bge	$a0, $a1, .LBB2_14
.LBB2_7:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 48
	fld.d	$fa1, $fp, 64
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_14
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6Driver12calcGlobalDtEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	fld.d	$fa0, $fp, 112
	pcaddu18i	$ra, %call36(_ZN5Hydro7doCycleEd)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 112
	fld.d	$fa1, $fp, 48
	ld.w	$a1, $s3, 0
	ld.w	$a0, $fp, 56
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 48
	bnez	$a1, .LBB2_6
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s4, .LBB2_11
# %bb.10:                               # %lor.lhs.false
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $fp, 104
	mod.w	$a1, $a0, $a1
	bnez	$a1, .LBB2_6
.LBB2_11:                               # %if.then17
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s5
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$s6, $a0, 8
	ori	$a2, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 128
	ld.d	$a2, $fp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s2, $a1, 240
	beqz	$s2, .LBB2_37
# %bb.12:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a1, $s2, 56
	beqz	$a1, .LBB2_4
# %bb.13:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a1, $s2, 67
	b	.LBB2_5
.LBB2_14:                               # %while.end
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB2_36
# %bb.15:                               # %if.then33
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB2_37
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB2_18
# %bb.17:                               # %if.then.i2.i.i80
	ld.bu	$a0, $s1, 67
	b	.LBB2_19
.LBB2_18:                               # %if.end.i.i.i85
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB2_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit90
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB2_37
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB2_22
# %bb.21:                               # %if.then.i2.i.i100
	ld.bu	$a0, $s1, 67
	b	.LBB2_23
.LBB2_22:                               # %if.end.i.i.i105
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB2_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit110
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -261
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$s2, $zero, 6
	st.d	$s2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$s2, $a0, 16
	ld.w	$a1, $fp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 18
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	st.d	$s2, $a0, 16
	ld.w	$a1, $fp, 72
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB2_37
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB2_26
# %bb.25:                               # %if.then.i2.i.i123
	ld.bu	$a1, $s1, 67
	b	.LBB2_27
.LBB2_26:                               # %if.end.i.i.i128
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB2_27:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit133
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$s2, $zero, 14
	st.d	$s2, $a0, 16
	fld.d	$fa0, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	st.d	$s2, $a0, 16
	fld.d	$fa0, $fp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB2_37
# %bb.28:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB2_30
# %bb.29:                               # %if.then.i2.i.i143
	ld.bu	$a1, $s1, 67
	b	.LBB2_31
.LBB2_30:                               # %if.end.i.i.i148
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB2_31:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit153
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB2_37
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB2_34
# %bb.33:                               # %if.then.i2.i.i163
	ld.bu	$a0, $s0, 67
	b	.LBB2_35
.LBB2_34:                               # %if.end.i.i.i168
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB2_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit173
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB2_36:                               # %if.end94
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(_ZN5Hydro16writeEnergyCheckEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	ld.w	$a2, $fp, 56
	fld.d	$fa0, $fp, 48
	ld.d	$a3, $a1, 304
	ld.d	$a4, $a1, 320
	ld.d	$a5, $a1, 352
	addi.d	$a1, $fp, 16
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
	pcaddu18i	$t8, %call36(_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_)
	jr	$t8
.LBB2_37:                               # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN6Driver3runEv, .Lfunc_end2-_ZN6Driver3runEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6Driver12calcGlobalDtEv      # -- Begin function _ZN6Driver12calcGlobalDtEv
	.p2align	5
	.type	_ZN6Driver12calcGlobalDtEv,@function
_ZN6Driver12calcGlobalDtEv:             # @_ZN6Driver12calcGlobalDtEv
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
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a0
	fld.d	$fa0, $a0, 112
	fst.d	$fa0, $a0, 120
	addi.d	$fp, $a0, 128
	addi.d	$s4, $a0, 160
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 80
	ld.d	$a2, $s0, 136
	fst.d	$fa0, $s0, 112
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a3, $a0, %pc_lo12(.L.str.15)
	ori	$a4, $zero, 22
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 56
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_3
# %bb.1:                                # %if.then
	fld.d	$fa0, $s0, 88
	fld.d	$fa1, $s0, 112
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_30
# %bb.2:                                # %if.then7
	ld.d	$a2, $s0, 136
	fst.d	$fa0, $s0, 112
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a3, $a0, %pc_lo12(.L.str.16)
	ori	$a4, $zero, 16
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
	b	.LBB3_30
.LBB3_3:                                # %if.else
	fld.d	$fa0, $s0, 96
	fld.d	$fa1, $s0, 120
	fld.d	$fa2, $s0, 112
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB3_30
# %bb.4:                                # %if.then15
	ld.d	$s2, $s0, 168
	fst.d	$fa0, $s0, 112
	addi.d	$s1, $sp, 32
	ld.d	$s3, $s0, 160
	sltui	$a0, $s2, 8
	ori	$a1, $zero, 8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s5, $a0, $a1
	st.d	$s1, $sp, 16
	beqz	$s5, .LBB3_7
# %bb.5:                                # %if.then15
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB3_8
# %bb.6:                                # %if.then.i.i.i.i.i
	ld.b	$a0, $s3, 0
	st.b	$a0, $sp, 32
.LBB3_7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
	st.d	$s5, $sp, 24
	ori	$a0, $zero, 7
	stx.b	$zero, $s1, $s5
	bltu	$a0, $s2, .LBB3_9
	b	.LBB3_10
.LBB3_8:                                # %if.end.i.i.i.i.i.i
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 24
	ori	$a0, $zero, 7
	stx.b	$zero, $s1, $s5
	bgeu	$a0, $s2, .LBB3_10
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
.LBB3_10:                               # %if.else23
	st.d	$s1, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	addi.d	$a1, $s2, 10
.Ltmp73:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.11:                               # %invoke.cont.i.i
	ld.d	$a0, $sp, 24
	addi.w	$a1, $zero, -12
	lu52i.d	$a1, $a1, 2047
	bltu	$a1, $a0, .LBB3_34
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.13:                               # %invoke.cont1.i.i
	ld.d	$a0, $sp, 24
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s2, .LBB3_34
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp77:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.15:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
	ld.d	$a0, $s0, 128
	ld.d	$a1, $sp, 16
	addi.d	$a2, $s0, 144
	beq	$a0, $a2, .LBB3_19
# %bb.16:                               # %invoke.cont.thread.i
	beq	$a1, $s1, .LBB3_22
# %bb.17:                               # %if.then24.i
	ld.d	$a2, $a2, 0
	vld	$vr0, $sp, 24
	st.d	$a1, $s0, 128
	vst	$vr0, $s0, 136
	beqz	$a0, .LBB3_21
.LBB3_18:                               # %if.then30.i
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 32
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s1, .LBB3_29
	b	.LBB3_30
.LBB3_19:                               # %invoke.cont.i
	beq	$a1, $s1, .LBB3_22
# %bb.20:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 24
	st.d	$a1, $s0, 128
	vst	$vr0, $s0, 136
	bnez	$a0, .LBB3_18
.LBB3_21:                               # %if.else31.i
	st.d	$s1, $sp, 16
	move	$a0, $s1
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s1, .LBB3_29
	b	.LBB3_30
.LBB3_22:                               # %if.then9.i
	addi.d	$a2, $sp, 16
	beq	$a2, $fp, .LBB3_33
# %bb.23:                               # %if.then10.i
	ld.d	$a2, $sp, 24
	beqz	$a2, .LBB3_28
# %bb.24:                               # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_27
# %bb.25:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_28
.LBB3_26:                               # %if.then19
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	b	.LBB3_30
.LBB3_27:                               # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_28:                               # %if.end18.i
	ld.d	$a0, $sp, 24
	ld.d	$a1, $s0, 128
	st.d	$a0, $s0, 136
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB3_30
.LBB3_29:                               # %if.then.i.i26
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_30:                               # %if.end30
	fld.d	$fa0, $s0, 64
	fld.d	$fa1, $s0, 48
	fld.d	$fa2, $s0, 112
	fsub.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	addi.d	$s1, $s0, 112
	bcnez	$fcc0, .LBB3_32
# %bb.31:                               # %if.then33
	ld.d	$a2, $s0, 136
	fst.d	$fa0, $s0, 112
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a3, $a0, %pc_lo12(.L.str.19)
	ori	$a4, $zero, 21
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.LBB3_32:                               # %if.end40
	ld.d	$a0, $s0, 8
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN5Hydro10getDtHydroERdRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
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
.LBB3_33:
	move	$a0, $a1
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s1, .LBB3_29
	b	.LBB3_30
.LBB3_34:                               # %if.then.i.i10.invoke.i.i
.Ltmp79:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.35:                               # %if.then.i.i10.cont.i.i
.LBB3_36:                               # %lpad.i.i
.Ltmp81:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB3_38
# %bb.37:                               # %if.then.i.i15.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %lpad.body.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN6Driver12calcGlobalDtEv, .Lfunc_end3-_ZN6Driver12calcGlobalDtEv
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
	.uleb128 .Ltmp73-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp78-.Ltmp73                #   Call between .Ltmp73 and .Ltmp78
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp80            #   Call between .Ltmp80 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"********************"
	.size	.L.str, 21

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Running PENNANT v0.9"
	.size	.L.str.1, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"cstop"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"tstop"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Must specify either cstop or tstop"
	.size	.L.str.4, 35

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"dtmax"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"dtinit"
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"dtfac"
	.size	.L.str.7, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"dt limiter: "
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Run complete"
	.size	.L.str.10, 13

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"cycle = "
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	",         cstop = "
	.size	.L.str.12, 19

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"time  = "
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	", tstop = "
	.size	.L.str.14, 11

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Global maximum (dtmax)"
	.size	.L.str.15, 23

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Initial timestep"
	.size	.L.str.16, 17

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Recovery"
	.size	.L.str.17, 9

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Recovery: "
	.size	.L.str.18, 11

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Global (tstop - time)"
	.size	.L.str.19, 22

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"basic_string::append"
	.size	.L.str.24, 21

	.globl	_ZN6DriverC1EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN6DriverC1EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN6DriverC1EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = _ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_ZN6DriverD1Ev
	.type	_ZN6DriverD1Ev,@function
_ZN6DriverD1Ev = _ZN6DriverD2Ev
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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
