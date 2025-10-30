	.file	"benchmark_api_internal.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi # -- Begin function _ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
	.globl	_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
	.p2align	5
	.type	_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi,@function
_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi: # @_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	addi.d	$a0, $fp, 48
	st.d	$a0, $fp, 32
	st.d	$zero, $fp, 40
	st.b	$zero, $fp, 48
	addi.d	$a0, $fp, 80
	st.d	$a0, $fp, 64
	st.d	$zero, $fp, 72
	st.b	$zero, $fp, 80
	addi.d	$a0, $fp, 112
	st.d	$a0, $fp, 96
	st.d	$zero, $fp, 104
	st.b	$zero, $fp, 112
	addi.d	$a0, $fp, 144
	st.d	$a0, $fp, 128
	st.d	$zero, $fp, 136
	st.b	$zero, $fp, 144
	addi.d	$a0, $fp, 176
	st.d	$a0, $fp, 160
	st.d	$zero, $fp, 168
	st.b	$zero, $fp, 176
	addi.d	$a0, $fp, 208
	st.d	$a0, $fp, 192
	st.d	$zero, $fp, 200
	st.b	$zero, $fp, 208
	addi.d	$a0, $fp, 240
	st.d	$a0, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	st.d	$a1, $fp, 256
	st.w	$a2, $fp, 264
	st.w	$a3, $fp, 268
	ld.w	$a0, $a1, 40
	move	$s2, $a5
	move	$s1, $a4
	st.w	$a0, $fp, 272
	st.d	$a4, $fp, 280
.Ltmp0:                                 # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZNK9benchmark8internal9Benchmark11GetTimeUnitEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a1, $fp, 256
	st.w	$a0, $fp, 288
	ld.b	$a0, $a1, 140
	st.b	$a0, $fp, 292
	ld.h	$a0, $a1, 141
	st.h	$a0, $fp, 293
	ld.w	$a0, $a1, 144
	st.w	$a0, $fp, 296
	ld.d	$a0, $a1, 152
	st.d	$a0, $fp, 304
	addi.d	$a0, $fp, 320
	st.w	$zero, $fp, 320
	st.d	$zero, $fp, 328
	st.d	$a0, $fp, 336
	st.d	$a0, $fp, 344
	st.d	$zero, $fp, 352
	addi.d	$a0, $a1, 160
	st.d	$a0, $fp, 360
	ld.w	$a0, $a1, 136
	st.w	$a0, $fp, 368
	vld	$vr0, $a1, 112
	vst	$vr0, $fp, 376
	ld.d	$a0, $a1, 128
	st.d	$a0, $fp, 392
	st.w	$s2, $fp, 400
	addi.d	$a1, $a1, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 408
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont33
	ld.d	$s5, $s1, 0
	ld.d	$s7, $s1, 8
	beq	$s5, $s7, .LBB0_22
# %bb.3:                                # %for.body.lr.ph
	addi.d	$s1, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -2
	lu52i.d	$s2, $a0, 2047
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	move	$s6, $zero
	move	$s8, $zero
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 32
	beq	$s5, $s7, .LBB0_22
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 40
	beqz	$s4, .LBB0_10
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a2, $fp, 48
	ld.d	$a1, $a2, 0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s4, $a1, .LBB0_9
# %bb.7:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_5 Depth=1
.Ltmp6:                                 # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s1, 0
.LBB0_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s4
	ld.d	$a0, $fp, 32
	addi.d	$a1, $s4, 1
	st.d	$a1, $fp, 40
	stx.b	$zero, $a0, $a1
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s0, 56
	ld.d	$a1, $s0, 48
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	bgeu	$s8, $a0, .LBB0_17
# %bb.11:                               # %if.then50
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $fp, 256
	ld.d	$a0, $a0, 48
	add.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB0_17
# %bb.12:                               # %if.then55
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a2, $a0, 0
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 24
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.13:                               # %invoke.cont58
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a2, $sp, 32
	sub.d	$a0, $s2, $a0
	bltu	$a0, $a2, .LBB0_132
# %bb.14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB0_5 Depth=1
.Ltmp12:                                # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.15:                               # %invoke.cont62
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 24
	addi.d	$a1, $sp, 40
	beq	$a0, $a1, .LBB0_17
# %bb.16:                               # %if.then.i.i29
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_17:                               # %if.end66
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a2, $s5, 0
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.18:                               # %invoke.cont69
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a2, $sp, 32
	sub.d	$a0, $s2, $a0
	bltu	$a0, $a2, .LBB0_130
# %bb.19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i45
                                        #   in Loop: Header=BB0_5 Depth=1
.Ltmp21:                                # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.20:                               # %invoke.cont73
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 24
	addi.d	$a1, $sp, 40
	beq	$a0, $a1, .LBB0_4
# %bb.21:                               # %if.then.i.i51
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_22:                               # %for.cond.cleanup
	fld.d	$fa0, $s0, 112
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal6IsZeroEd)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.23:                               # %invoke.cont84
	bnez	$a0, .LBB0_40
# %bb.24:                               # %if.then86
	ld.d	$a0, $fp, 256
	ld.d	$a2, $a0, 112
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.25:                               # %invoke.cont91
	addi.d	$a2, $fp, 64
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 24
	addi.d	$a3, $sp, 40
	addi.d	$a4, $fp, 80
	beq	$a0, $a4, .LBB0_29
# %bb.26:                               # %invoke.cont.thread.i
	beq	$a1, $a3, .LBB0_32
# %bb.27:                               # %if.then24.i
	ld.d	$a2, $a4, 0
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 64
	vst	$vr0, $fp, 72
	beqz	$a0, .LBB0_31
.LBB0_28:                               # %if.then30.i
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	b	.LBB0_38
.LBB0_29:                               # %invoke.cont.i
	beq	$a1, $a3, .LBB0_32
# %bb.30:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 64
	vst	$vr0, $fp, 72
	bnez	$a0, .LBB0_28
.LBB0_31:                               # %if.else31.i
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 24
	b	.LBB0_38
.LBB0_32:                               # %if.then9.i
	addi.d	$a3, $sp, 24
	beq	$a3, $a2, .LBB0_128
# %bb.33:                               # %if.then10.i
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB0_37
# %bb.34:                               # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_36
# %bb.35:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_37
.LBB0_36:                               # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %if.end18.i
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
.LBB0_38:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	addi.d	$a1, $sp, 40
	beq	$a0, $a1, .LBB0_40
# %bb.39:                               # %if.then.i.i69
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %if.end95
	fld.d	$fa0, $s0, 120
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal6IsZeroEd)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.41:                               # %invoke.cont97
	bnez	$a0, .LBB0_57
# %bb.42:                               # %if.then99
	ld.d	$a0, $fp, 256
	ld.d	$a2, $a0, 120
.Ltmp34:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.43:                               # %invoke.cont104
	addi.d	$a2, $fp, 96
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 24
	addi.d	$s0, $sp, 40
	addi.d	$a3, $fp, 112
	beq	$a0, $a3, .LBB0_47
# %bb.44:                               # %invoke.cont.thread.i77
	beq	$a1, $s0, .LBB0_50
# %bb.45:                               # %if.then24.i79
	ld.d	$a2, $a3, 0
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 96
	vst	$vr0, $fp, 104
	beqz	$a0, .LBB0_49
.LBB0_46:                               # %if.then30.i87
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_56
	b	.LBB0_57
.LBB0_47:                               # %invoke.cont.i102
	beq	$a1, $s0, .LBB0_50
# %bb.48:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 96
	vst	$vr0, $fp, 104
	bnez	$a0, .LBB0_46
.LBB0_49:                               # %if.else31.i89
	st.d	$s0, $sp, 24
	move	$a0, $s0
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_56
	b	.LBB0_57
.LBB0_50:                               # %if.then9.i90
	addi.d	$a3, $sp, 24
	beq	$a3, $a2, .LBB0_129
# %bb.51:                               # %if.then10.i94
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB0_55
# %bb.52:                               # %if.then10.i94
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_54
# %bb.53:                               # %if.then.i25.i95
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_55
.LBB0_54:                               # %if.end.i.i.i101
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %if.end18.i96
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB0_57
.LBB0_56:                               # %if.then.i.i108
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_57:                               # %if.end108
	ld.d	$a0, $fp, 256
	ld.d	$a2, $a0, 128
	beqz	$a2, .LBB0_74
# %bb.58:                               # %if.then112
.Ltmp37:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.59:                               # %invoke.cont117
	addi.d	$a2, $fp, 128
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 24
	addi.d	$s0, $sp, 40
	addi.d	$a3, $fp, 144
	beq	$a0, $a3, .LBB0_63
# %bb.60:                               # %invoke.cont.thread.i116
	beq	$a1, $s0, .LBB0_66
# %bb.61:                               # %if.then24.i118
	addi.d	$a2, $fp, 144
	ld.d	$a2, $a2, 0
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 128
	vst	$vr0, $fp, 136
	beqz	$a0, .LBB0_65
.LBB0_62:                               # %if.then30.i126
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_72
	b	.LBB0_73
.LBB0_63:                               # %invoke.cont.i141
	beq	$a1, $s0, .LBB0_66
# %bb.64:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 128
	vst	$vr0, $fp, 136
	bnez	$a0, .LBB0_62
.LBB0_65:                               # %if.else31.i128
	st.d	$s0, $sp, 24
	move	$a0, $s0
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_72
	b	.LBB0_73
.LBB0_66:                               # %if.then9.i129
	addi.d	$a3, $sp, 24
	beq	$a3, $a2, .LBB0_125
# %bb.67:                               # %if.then10.i133
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB0_71
# %bb.68:                               # %if.then10.i133
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_70
# %bb.69:                               # %if.then.i25.i134
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_71
.LBB0_70:                               # %if.end.i.i.i140
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_71:                               # %if.end18.i135
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB0_73
.LBB0_72:                               # %if.then.i.i147
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_73:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $fp, 256
.LBB0_74:                               # %if.end121
	ld.w	$a2, $a0, 136
	beqz	$a2, .LBB0_91
# %bb.75:                               # %if.then125
.Ltmp40:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.76:                               # %invoke.cont130
	addi.d	$a2, $fp, 160
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 24
	addi.d	$s0, $sp, 40
	addi.d	$a3, $fp, 176
	beq	$a0, $a3, .LBB0_80
# %bb.77:                               # %invoke.cont.thread.i155
	beq	$a1, $s0, .LBB0_83
# %bb.78:                               # %if.then24.i157
	addi.d	$a2, $fp, 176
	ld.d	$a2, $a2, 0
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 160
	vst	$vr0, $fp, 168
	beqz	$a0, .LBB0_82
.LBB0_79:                               # %if.then30.i165
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_89
	b	.LBB0_90
.LBB0_80:                               # %invoke.cont.i180
	beq	$a1, $s0, .LBB0_83
# %bb.81:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 160
	vst	$vr0, $fp, 168
	bnez	$a0, .LBB0_79
.LBB0_82:                               # %if.else31.i167
	st.d	$s0, $sp, 24
	move	$a0, $s0
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_89
	b	.LBB0_90
.LBB0_83:                               # %if.then9.i168
	addi.d	$a3, $sp, 24
	beq	$a3, $a2, .LBB0_126
# %bb.84:                               # %if.then10.i172
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB0_88
# %bb.85:                               # %if.then10.i172
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_87
# %bb.86:                               # %if.then.i25.i173
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_88
.LBB0_87:                               # %if.end.i.i.i179
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_88:                               # %if.end18.i174
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB0_90
.LBB0_89:                               # %if.then.i.i186
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_90:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
	ld.d	$a0, $fp, 256
.LBB0_91:                               # %if.end134
	ld.bu	$a1, $a0, 140
	addi.d	$s0, $fp, 192
	beqz	$a1, .LBB0_94
# %bb.92:                               # %if.then138
	ld.d	$a2, $fp, 200
.Ltmp43:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a3, $a0, %pc_lo12(.L.str.6)
	ori	$a4, $zero, 12
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.93:                               # %if.then138.if.end142_crit_edge
	ld.d	$a0, $fp, 256
.LBB0_94:                               # %if.end142
	ld.bu	$a1, $a0, 142
	beqz	$a1, .LBB0_100
# %bb.95:                               # %if.then146
	ld.d	$s3, $fp, 200
	ori	$s1, $zero, 11
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	beqz	$s3, .LBB0_106
# %bb.96:                               # %if.then150
	ld.d	$a0, $s0, 0
	addi.d	$a2, $fp, 208
	ld.d	$a1, $a2, 0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s3, $a1, .LBB0_99
# %bb.97:                               # %if.then.i.i206
.Ltmp47:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.98:                               # %.noexc213
	ld.d	$a0, $s0, 0
.LBB0_99:                               # %if.end155
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s3
	ld.d	$a0, $fp, 192
	addi.d	$a1, $s3, 1
	st.d	$a1, $fp, 200
	stx.b	$zero, $a0, $a1
	ld.d	$a0, $fp, 200
	addi.w	$a1, $zero, -13
	lu52i.d	$a1, $a1, 2047
	bgeu	$a1, $a0, .LBB0_106
	b	.LBB0_134
.LBB0_100:                              # %if.else
	ld.bu	$a0, $a0, 141
	beqz	$a0, .LBB0_107
# %bb.101:                              # %if.then163
	ld.d	$s3, $fp, 200
	ori	$s1, $zero, 9
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s2, $a0, %pc_lo12(.L.str.8)
	beqz	$s3, .LBB0_106
# %bb.102:                              # %if.then167
	ld.d	$a0, $s0, 0
	addi.d	$a2, $fp, 208
	ld.d	$a1, $a2, 0
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 15
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	bltu	$s3, $a1, .LBB0_105
# %bb.103:                              # %if.then.i.i231
.Ltmp45:                                # EH_LABEL
	ori	$a4, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.104:                              # %.noexc238
	ld.d	$a0, $s0, 0
.LBB0_105:                              # %if.end172
	ori	$a1, $zero, 47
	stx.b	$a1, $a0, $s3
	ld.d	$a0, $fp, 192
	addi.d	$a1, $s3, 1
	st.d	$a1, $fp, 200
	stx.b	$zero, $a0, $a1
	ld.d	$a0, $fp, 200
	addi.w	$a1, $zero, -10
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB0_134
.LBB0_106:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.invoke
.Ltmp51:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
.LBB0_107:                              # %if.end178
	ld.d	$a0, $fp, 256
	ld.d	$a1, $a0, 184
	ld.d	$a2, $a0, 192
	beq	$a1, $a2, .LBB0_124
# %bb.108:                              # %if.then181
	ld.w	$a2, $fp, 400
.Ltmp54:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9StrFormatB5cxx11EPKcz)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.109:                              # %invoke.cont185
	addi.d	$a2, $fp, 224
	ld.d	$a0, $a2, 0
	ld.d	$a1, $sp, 24
	addi.d	$s0, $sp, 40
	addi.d	$a3, $fp, 240
	beq	$a0, $a3, .LBB0_113
# %bb.110:                              # %invoke.cont.thread.i252
	beq	$a1, $s0, .LBB0_116
# %bb.111:                              # %if.then24.i254
	ld.d	$a2, $a3, 0
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 224
	vst	$vr0, $fp, 232
	beqz	$a0, .LBB0_115
.LBB0_112:                              # %if.then30.i262
	st.d	$a0, $sp, 24
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_122
	b	.LBB0_123
.LBB0_113:                              # %invoke.cont.i277
	beq	$a1, $s0, .LBB0_116
# %bb.114:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 32
	st.d	$a1, $fp, 224
	vst	$vr0, $fp, 232
	bnez	$a0, .LBB0_112
.LBB0_115:                              # %if.else31.i264
	st.d	$s0, $sp, 24
	move	$a0, $s0
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_122
	b	.LBB0_123
.LBB0_116:                              # %if.then9.i265
	addi.d	$a3, $sp, 24
	beq	$a3, $a2, .LBB0_127
# %bb.117:                              # %if.then10.i269
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB0_121
# %bb.118:                              # %if.then10.i269
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_120
# %bb.119:                              # %if.then.i25.i270
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_121
.LBB0_120:                              # %if.end.i.i.i276
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_121:                              # %if.end18.i271
	ld.d	$a0, $sp, 32
	ld.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB0_123
.LBB0_122:                              # %if.then.i.i283
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_123:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
	ld.d	$a0, $fp, 256
.LBB0_124:                              # %if.end189
	vld	$vr0, $a0, 208
	addi.d	$a0, $fp, 408
	vst	$vr0, $a0, 0
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
.LBB0_125:
	move	$a0, $a1
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_72
	b	.LBB0_73
.LBB0_126:
	move	$a0, $a1
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_89
	b	.LBB0_90
.LBB0_127:
	move	$a0, $a1
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_122
	b	.LBB0_123
.LBB0_128:
	move	$a0, $a1
	b	.LBB0_38
.LBB0_129:
	move	$a0, $a1
	st.d	$zero, $sp, 32
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 24
	bne	$a0, $s0, .LBB0_56
	b	.LBB0_57
.LBB0_130:                              # %if.then.i.i.i.i46
.Ltmp24:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.131:                              # %.noexc47
.LBB0_132:                              # %if.then.i.i.i.i25
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.133:                              # %.noexc26
.LBB0_134:                              # %if.then.i.i.i246.invoke
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.135:                              # %if.then.i.i.i246.cont
.LBB0_136:                              # %lpad103
.Ltmp36:                                # EH_LABEL
	b	.LBB0_149
.LBB0_137:                              # %lpad90
.Ltmp31:                                # EH_LABEL
	b	.LBB0_149
.LBB0_138:                              # %lpad184
.Ltmp56:                                # EH_LABEL
	b	.LBB0_149
.LBB0_139:                              # %lpad129
.Ltmp42:                                # EH_LABEL
	b	.LBB0_149
.LBB0_140:                              # %lpad116
.Ltmp39:                                # EH_LABEL
	b	.LBB0_149
.LBB0_141:                              # %lpad32
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_149
.LBB0_142:                              # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_143:                              # %lpad83
.Ltmp53:                                # EH_LABEL
	b	.LBB0_149
.LBB0_144:                              # %lpad46
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_149
.LBB0_145:                              # %lpad61.loopexit.split-lp
.Ltmp17:                                # EH_LABEL
	b	.LBB0_152
.LBB0_146:                              # %lpad61.loopexit
.Ltmp14:                                # EH_LABEL
	b	.LBB0_152
.LBB0_147:                              # %lpad57
.Ltmp11:                                # EH_LABEL
	b	.LBB0_149
.LBB0_148:                              # %lpad68
.Ltmp20:                                # EH_LABEL
.LBB0_149:                              # %ehcleanup197
	move	$s0, $a0
	b	.LBB0_154
.LBB0_150:                              # %lpad72.loopexit
.Ltmp23:                                # EH_LABEL
	b	.LBB0_152
.LBB0_151:                              # %lpad72.loopexit.split-lp
.Ltmp26:                                # EH_LABEL
.LBB0_152:                              # %lpad61
	move	$s0, $a0
	ld.d	$a0, $sp, 24
	addi.d	$a1, $sp, 40
	beq	$a0, $a1, .LBB0_154
# %bb.153:                              # %if.then.i.i33
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_154:                              # %ehcleanup197
	addi.d	$a0, $fp, 312
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi, .Lfunc_end0-_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp13                #   Call between .Ltmp13 and .Ltmp18
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
	.uleb128 .Ltmp27-.Ltmp22                #   Call between .Ltmp22 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp32-.Ltmp30                #   Call between .Ltmp30 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp52-.Ltmp43                #   Call between .Ltmp43 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp24-.Ltmp55                #   Call between .Ltmp55 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Lfunc_end0-.Ltmp50            #   Call between .Ltmp50 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:                                # %terminate.lpad.i
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end1-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
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
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin1          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end1
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
	.section	.text._ZN9benchmark13BenchmarkNameD2Ev,"axG",@progbits,_ZN9benchmark13BenchmarkNameD2Ev,comdat
	.hidden	_ZN9benchmark13BenchmarkNameD2Ev # -- Begin function _ZN9benchmark13BenchmarkNameD2Ev
	.weak	_ZN9benchmark13BenchmarkNameD2Ev
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameD2Ev,@function
_ZN9benchmark13BenchmarkNameD2Ev:       # @_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 224
	addi.d	$a1, $fp, 240
	beq	$a0, $a1, .LBB2_2
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB2_4
# %bb.3:                                # %if.then.i.i2
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB2_6
# %bb.5:                                # %if.then.i.i9
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB2_8
# %bb.7:                                # %if.then.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB2_10
# %bb.9:                                # %if.then.i.i23
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB2_12
# %bb.11:                               # %if.then.i.i30
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB2_14
# %bb.13:                               # %if.then.i.i37
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB2_16
# %bb.15:                               # %if.then.i.i44
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB2_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN9benchmark13BenchmarkNameD2Ev, .Lfunc_end2-_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE # -- Begin function _ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.globl	_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.p2align	5
	.type	_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE,@function
_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE: # @_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$s6, $a7
	move	$s4, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s5, $a2
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s8, $sp, 48
	ld.d	$a1, $a1, 8
	ld.d	$s7, $s0, 0
	st.d	$s8, $sp, 32
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s8
	bltu	$a1, $a2, .LBB3_2
# %bb.1:                                # %if.then.i.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB3_2:                                # %if.end.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB3_6
# %bb.3:                                # %if.end.i.i
	bnez	$a1, .LBB3_5
# %bb.4:                                # %if.then.i.i.i
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_6
.LBB3_5:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 64
	ld.d	$a3, $s0, 280
	ld.w	$a5, $s0, 400
	st.d	$a0, $sp, 40
.Ltmp60:                                # EH_LABEL
	st.d	$s6, $sp, 8
	addi.d	$a1, $sp, 32
	st.d	$s4, $sp, 0
	move	$a0, $fp
	move	$a2, $s5
	move	$a4, $s3
	move	$a6, $s2
	move	$a7, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.7:                                # %invoke.cont
	ld.d	$a0, $sp, 32
	beq	$a0, $s8, .LBB3_9
# %bb.8:                                # %if.then.i.i3
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s0, 256
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp63:                                # EH_LABEL
	move	$a1, $fp
	jirl	$ra, $a2, 0
.Ltmp64:                                # EH_LABEL
# %bb.10:                               # %nrvo.skipdtor
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB3_11:                               # %lpad2
.Ltmp65:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %lpad
.Ltmp62:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s0, $a0
	bne	$a2, $s8, .LBB3_14
# %bb.13:                               # %eh.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %if.then.i.i6
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE, .Lfunc_end3-_ZNK9benchmark8internal17BenchmarkInstance3RunEliPNS0_11ThreadTimerEPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin2          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp63-.Ltmp61                #   Call between .Ltmp61 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin2          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp64            #   Call between .Ltmp64 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark5StateD2Ev,"axG",@progbits,_ZN9benchmark5StateD2Ev,comdat
	.hidden	_ZN9benchmark5StateD2Ev         # -- Begin function _ZN9benchmark5StateD2Ev
	.weak	_ZN9benchmark5StateD2Ev
	.p2align	5
	.type	_ZN9benchmark5StateD2Ev,@function
_ZN9benchmark5StateD2Ev:                # @_ZN9benchmark5StateD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 112
	addi.d	$a1, $fp, 128
	beq	$a0, $a1, .LBB4_2
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $fp, 80
	addi.d	$a0, $fp, 64
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.3:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB4_5
# %bb.4:                                # %if.then.i.i.i
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_5:                                # %_ZNSt6vectorIlSaIlEED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_6:                                # %terminate.lpad.i.i
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark5StateD2Ev, .Lfunc_end4-_ZN9benchmark5StateD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark5StateD2Ev,"aG",@progbits,_ZN9benchmark5StateD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp66-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin3          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.hidden	_ZNK9benchmark8internal17BenchmarkInstance5SetupEv # -- Begin function _ZNK9benchmark8internal17BenchmarkInstance5SetupEv
	.globl	_ZNK9benchmark8internal17BenchmarkInstance5SetupEv
	.p2align	5
	.type	_ZNK9benchmark8internal17BenchmarkInstance5SetupEv,@function
_ZNK9benchmark8internal17BenchmarkInstance5SetupEv: # @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	addi.d	$fp, $sp, 320
	.cfi_def_cfa 22, 0
	bstrins.d	$sp, $zero, 5, 0
	move	$s0, $a0
	ld.d	$a0, $a0, 408
	beqz	$a0, .LBB5_16
# %bb.1:                                # %if.then
	addi.d	$s2, $sp, 48
	ld.d	$a1, $s0, 8
	ld.d	$s1, $s0, 0
	st.d	$s2, $sp, 32
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 272
	move	$a0, $s2
	bltu	$a1, $a2, .LBB5_3
# %bb.2:                                # %if.then.i.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 272
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB5_3:                                # %if.end.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB5_7
# %bb.4:                                # %if.end.i.i
	bnez	$a1, .LBB5_6
# %bb.5:                                # %if.then.i.i.i
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB5_7
.LBB5_6:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 272
	ld.d	$a3, $s0, 280
	ld.w	$a5, $s0, 400
	st.d	$a0, $sp, 40
.Ltmp69:                                # EH_LABEL
	vrepli.b	$vr0, 0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 1
	vst	$vr0, $sp, 0
	move	$a4, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.8:                                # %invoke.cont
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB5_10
# %bb.9:                                # %if.then.i.i3
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $s0, 408
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	jirl	$ra, $a1, 0
.Ltmp73:                                # EH_LABEL
# %bb.11:                               # %invoke.cont4
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB5_13
# %bb.12:                               # %if.then.i.i.i5
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a1, $sp, 144
	addi.d	$a0, $sp, 128
.Ltmp75:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.14:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB5_16
# %bb.15:                               # %if.then.i.i.i.i
	ld.d	$a1, $sp, 112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_16:                               # %if.end
	addi.d	$sp, $fp, -320
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB5_17:                               # %terminate.lpad.i.i.i
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_18:                               # %lpad3
.Ltmp74:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %lpad
.Ltmp71:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s0, $a0
	bne	$a2, $s2, .LBB5_21
# %bb.20:                               # %ehcleanup
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %if.then.i.i7
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZNK9benchmark8internal17BenchmarkInstance5SetupEv, .Lfunc_end5-_ZNK9benchmark8internal17BenchmarkInstance5SetupEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin4          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin4          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp75-.Ltmp73                #   Call between .Ltmp73 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin4          #     jumps to .Ltmp77
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp76-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Lfunc_end5-.Ltmp76            #   Call between .Ltmp76 and .Lfunc_end5
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
	.text
	.hidden	_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv # -- Begin function _ZNK9benchmark8internal17BenchmarkInstance8TeardownEv
	.globl	_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv
	.p2align	5
	.type	_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv,@function
_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv: # @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	addi.d	$fp, $sp, 320
	.cfi_def_cfa 22, 0
	bstrins.d	$sp, $zero, 5, 0
	move	$s0, $a0
	ld.d	$a0, $a0, 416
	beqz	$a0, .LBB6_16
# %bb.1:                                # %if.then
	addi.d	$s2, $sp, 48
	ld.d	$a1, $s0, 8
	ld.d	$s1, $s0, 0
	st.d	$s2, $sp, 32
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 272
	move	$a0, $s2
	bltu	$a1, $a2, .LBB6_3
# %bb.2:                                # %if.then.i.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 272
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB6_3:                                # %if.end.i.i
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB6_7
# %bb.4:                                # %if.end.i.i
	bnez	$a1, .LBB6_6
# %bb.5:                                # %if.then.i.i.i
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB6_7
.LBB6_6:                                # %if.end.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 272
	ld.d	$a3, $s0, 280
	ld.w	$a5, $s0, 400
	st.d	$a0, $sp, 40
.Ltmp78:                                # EH_LABEL
	vrepli.b	$vr0, 0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 1
	vst	$vr0, $sp, 0
	move	$a4, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElRKSt6vectorIlSaIlEEiiPNS_8internal11ThreadTimerEPNSC_13ThreadManagerEPNSC_23PerfCountersMeasurementEPNS_15ProfilerManagerE)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.8:                                # %invoke.cont
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB6_10
# %bb.9:                                # %if.then.i.i3
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $s0, 416
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	jirl	$ra, $a1, 0
.Ltmp82:                                # EH_LABEL
# %bb.11:                               # %invoke.cont4
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB6_13
# %bb.12:                               # %if.then.i.i.i5
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a1, $sp, 144
	addi.d	$a0, $sp, 128
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.14:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB6_16
# %bb.15:                               # %if.then.i.i.i.i
	ld.d	$a1, $sp, 112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_16:                               # %if.end
	addi.d	$sp, $fp, -320
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB6_17:                               # %terminate.lpad.i.i.i
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_18:                               # %lpad3
.Ltmp83:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark5StateD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_19:                               # %lpad
.Ltmp80:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$s0, $a0
	bne	$a2, $s2, .LBB6_21
# %bb.20:                               # %ehcleanup
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_21:                               # %if.then.i.i7
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv, .Lfunc_end6-_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp81-.Ltmp79                #   Call between .Ltmp79 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin5          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp84-.Ltmp82                #   Call between .Ltmp82 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin5          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp85-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp85            #   Call between .Ltmp85 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
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
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB8_6
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
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB8_5
.LBB8_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB8_2
# %bb.4:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_2
.LBB8_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB8_6:                                # %while.end
	ret
.Lfunc_end8:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end8-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_benchmark_api_internal.cc
	.type	_GLOBAL__sub_I_benchmark_api_internal.cc,@function
_GLOBAL__sub_I_benchmark_api_internal.cc: # @_GLOBAL__sub_I_benchmark_api_internal.cc
	.cfi_startproc
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end9:
	.size	_GLOBAL__sub_I_benchmark_api_internal.cc, .Lfunc_end9-_GLOBAL__sub_I_benchmark_api_internal.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%ld"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"min_time:%0.3f"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"min_warmup_time:%0.3f"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"iterations:%lu"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"repeats:%d"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"process_time"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"manual_time"
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"real_time"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"threads:%d"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"basic_string::append"
	.size	.L.str.10, 21

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_benchmark_api_internal.cc
	.globl	_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
	.type	_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi,@function
	.hidden	_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi = _ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi
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
	.addrsig_sym _GLOBAL__sub_I_benchmark_api_internal.cc
	.addrsig_sym _Unwind_Resume
