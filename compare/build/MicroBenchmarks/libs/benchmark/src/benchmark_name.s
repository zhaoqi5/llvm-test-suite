	.file	"benchmark_name.cc"
	.text
	.hidden	_ZNK9benchmark13BenchmarkName3strB5cxx11Ev # -- Begin function _ZNK9benchmark13BenchmarkName3strB5cxx11Ev
	.globl	_ZNK9benchmark13BenchmarkName3strB5cxx11Ev
	.p2align	2
	.type	_ZNK9benchmark13BenchmarkName3strB5cxx11Ev,@function
_ZNK9benchmark13BenchmarkName3strB5cxx11Ev: # @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	addi.d	$s2, $a0, 16
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 40
	ld.d	$a2, $s0, 72
	ld.d	$a3, $s0, 104
	ld.d	$a4, $s0, 136
	ld.d	$a5, $s0, 168
	ld.d	$a6, $s0, 200
	ld.d	$a7, $s0, 232
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a1, $a0, 8
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont15.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 8
	beqz	$s1, .LBB0_7
# %bb.2:                                # %invoke.cont15.i
	beqz	$a2, .LBB0_7
# %bb.3:                                # %if.then.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_6
# %bb.4:                                # %if.then.i.i.i.i
.Ltmp2:                                 # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %.noexc.i
	ld.d	$a0, $fp, 0
.LBB0_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 8
	ld.d	$s1, $fp, 8
.LBB0_7:                                # %if.end.i.i
	addi.w	$a0, $zero, -2
	lu52i.d	$s3, $a0, 2047
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i
.Ltmp4:                                 # EH_LABEL
	ld.d	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.9:                                # %call.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 40
	beqz	$s1, .LBB0_15
# %bb.10:                               # %call.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_15
# %bb.11:                               # %if.then.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_14
# %bb.12:                               # %if.then.i.i.i.i.i
.Ltmp6:                                 # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.13:                               # %.noexc24.i
	ld.d	$a0, $fp, 0
.LBB0_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 40
	ld.d	$s1, $fp, 8
.LBB0_15:                               # %if.end.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i
.Ltmp8:                                 # EH_LABEL
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.17:                               # %call.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 72
	beqz	$s1, .LBB0_23
# %bb.18:                               # %call.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_23
# %bb.19:                               # %if.then.i.i17.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_22
# %bb.20:                               # %if.then.i.i.i.i18.i.i
.Ltmp10:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.21:                               # %.noexc27.i
	ld.d	$a0, $fp, 0
.LBB0_22:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 72
	ld.d	$s1, $fp, 8
.LBB0_23:                               # %if.end.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i
.Ltmp12:                                # EH_LABEL
	ld.d	$a1, $s0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.25:                               # %call.i.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 104
	beqz	$s1, .LBB0_31
# %bb.26:                               # %call.i.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_31
# %bb.27:                               # %if.then.i.i17.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_30
# %bb.28:                               # %if.then.i.i.i.i18.i.i.i
.Ltmp14:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.29:                               # %.noexc30.i
	ld.d	$a0, $fp, 0
.LBB0_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 104
	ld.d	$s1, $fp, 8
.LBB0_31:                               # %if.end.i.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i.i
.Ltmp16:                                # EH_LABEL
	ld.d	$a1, $s0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.33:                               # %call.i.i.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 136
	beqz	$s1, .LBB0_39
# %bb.34:                               # %call.i.i.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_39
# %bb.35:                               # %if.then.i.i17.i.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_38
# %bb.36:                               # %if.then.i.i.i.i18.i.i.i.i
.Ltmp18:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.37:                               # %.noexc33.i
	ld.d	$a0, $fp, 0
.LBB0_38:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 136
	ld.d	$s1, $fp, 8
.LBB0_39:                               # %if.end.i.i.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i.i.i
.Ltmp20:                                # EH_LABEL
	ld.d	$a1, $s0, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.41:                               # %call.i.i.i.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 168
	beqz	$s1, .LBB0_47
# %bb.42:                               # %call.i.i.i.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_47
# %bb.43:                               # %if.then.i.i17.i.i.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_46
# %bb.44:                               # %if.then.i.i.i.i18.i.i.i.i.i
.Ltmp22:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.45:                               # %.noexc36.i
	ld.d	$a0, $fp, 0
.LBB0_46:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 168
	ld.d	$s1, $fp, 8
.LBB0_47:                               # %if.end.i.i.i.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i.i.i.i
.Ltmp24:                                # EH_LABEL
	ld.d	$a1, $s0, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.49:                               # %call.i.i.i.i.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 200
	beqz	$s1, .LBB0_55
# %bb.50:                               # %call.i.i.i.i.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_55
# %bb.51:                               # %if.then.i.i17.i.i.i.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_54
# %bb.52:                               # %if.then.i.i.i.i18.i.i.i.i.i.i
.Ltmp26:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.53:                               # %.noexc39.i
	ld.d	$a0, $fp, 0
.LBB0_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 200
	ld.d	$s1, $fp, 8
.LBB0_55:                               # %if.end.i.i.i.i.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i.i.i.i.i.i.i
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $s0, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.57:                               # %call.i.i.i.i.i.i.i.i.i.i.noexc.i
	ld.d	$s1, $fp, 8
	ld.d	$a2, $s0, 232
	beqz	$s1, .LBB0_63
# %bb.58:                               # %call.i.i.i.i.i.i.i.i.i.i.noexc.i
	beqz	$a2, .LBB0_63
# %bb.59:                               # %if.then.i.i17.i.i.i.i.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s1, $a1, .LBB0_62
# %bb.60:                               # %if.then.i.i.i.i18.i.i.i.i.i.i.i
.Ltmp30:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.61:                               # %.noexc42.i
	ld.d	$a0, $fp, 0
.LBB0_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i.i.i.i.i.i
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $s1, 1
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	ld.d	$a2, $s0, 232
	ld.d	$s1, $fp, 8
.LBB0_63:                               # %if.end.i.i.i.i.i.i.i.i.i
	sub.d	$a0, $s3, $s1
	bltu	$a0, $a2, .LBB0_66
# %bb.64:                               # %_ZN9benchmark12_GLOBAL__N_19join_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_S7_S7_S7_S7_S7_EEEvRS7_cRKT_DpRKT0_.exit.i.i
.Ltmp32:                                # EH_LABEL
	ld.d	$a1, $s0, 224
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.65:                               # %_ZN9benchmark12_GLOBAL__N_14joinIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_S7_S7_S7_S7_EEES7_cDpRKT_.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_66:                               # %if.then.i.i.i.i11.i.i.i.i.i.i.i.i.invoke.i
.Ltmp34:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.67:                               # %if.then.i.i.i.i11.i.i.i.i.i.i.i.i.cont.i
.LBB0_68:                               # %lpad.i
.Ltmp36:                                # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s2, .LBB0_70
# %bb.69:                               # %if.then.i.i46.i
	ld.d	$a0, $s2, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK9benchmark13BenchmarkName3strB5cxx11Ev, .Lfunc_end0-_ZNK9benchmark13BenchmarkName3strB5cxx11Ev
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
	.uleb128 .Ltmp35-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Lfunc_end0-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_benchmark_name.cc
	.type	_GLOBAL__sub_I_benchmark_name.cc,@function
_GLOBAL__sub_I_benchmark_name.cc:       # @_GLOBAL__sub_I_benchmark_name.cc
	.cfi_startproc
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end1:
	.size	_GLOBAL__sub_I_benchmark_name.cc, .Lfunc_end1-_GLOBAL__sub_I_benchmark_name.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"basic_string::append"
	.size	.L.str, 21

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_benchmark_name.cc
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
	.addrsig_sym _GLOBAL__sub_I_benchmark_name.cc
	.addrsig_sym _Unwind_Resume
