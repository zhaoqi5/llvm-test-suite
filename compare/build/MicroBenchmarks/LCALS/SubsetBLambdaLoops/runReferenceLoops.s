	.file	"runReferenceLoops.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z26defineReferenceLoopRunInfov # -- Begin function _Z26defineReferenceLoopRunInfov
	.p2align	5
	.type	_Z26defineReferenceLoopRunInfov,@function
_Z26defineReferenceLoopRunInfov:        # @_Z26defineReferenceLoopRunInfov
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcaddu18i	$ra, %call36(_Z19getLoopSuiteRunInfov)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZN8LoopStatC2Ej)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 152
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8LoopStataSEOS_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 360
	lu12i.w	$a1, 5
	ori	$a1, $a1, 3856
	lu32i.d	$a1, 3844
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 64
	st.w	$a1, $a0, 8
	ld.d	$a0, $fp, 384
	lu12i.w	$a1, 7
	ori	$a1, $a1, 1328
	lu32i.d	$a1, 300000
	st.d	$a1, $a0, 0
	lu12i.w	$a1, 12207
	ori	$a1, $a1, 128
	st.w	$a1, $a0, 8
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	_Z26defineReferenceLoopRunInfov, .Lfunc_end0-_Z26defineReferenceLoopRunInfov
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8LoopStatC2Ej,"axG",@progbits,_ZN8LoopStatC2Ej,comdat
	.weak	_ZN8LoopStatC2Ej                # -- Begin function _ZN8LoopStatC2Ej
	.p2align	2
	.type	_ZN8LoopStatC2Ej,@function
_ZN8LoopStatC2Ej:                       # @_ZN8LoopStatC2Ej
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	st.b	$zero, $a0, 0
	addi.d	$s0, $a0, 16
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 8
	beqz	$a1, .LBB1_12
# %bb.1:                                # %for.body.preheader.i.i.i.i.i
	bstrpick.d	$s5, $a1, 31, 0
	alsl.d	$a0, $s5, $s5, 1
	slli.d	$s1, $a0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	add.d	$s2, $a0, $s1
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, 32
	st.d	$s2, $fp, 24
	st.d	$zero, $fp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 48
	slli.d	$s1, $s5, 3
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %call5.i.i.i2.i.i.noexc28
	move	$s2, $a0
	st.d	$a0, $fp, 40
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $fp, 56
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 48
	st.d	$zero, $fp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 72
	slli.d	$s1, $s5, 4
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %call5.i.i.i2.i.i.noexc44
	move	$s2, $a0
	st.d	$a0, $fp, 64
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 80
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 72
	st.d	$zero, $fp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 96
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.4:                                # %call5.i.i.i2.i.i.noexc61
	move	$s2, $a0
	st.d	$a0, $fp, 88
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 104
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 96
	st.d	$zero, $fp, 112
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 120
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:                                # %call5.i.i.i2.i.i.noexc79
	move	$s2, $a0
	st.d	$a0, $fp, 112
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 128
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 120
	st.d	$zero, $fp, 136
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 144
.Ltmp12:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.6:                                # %call5.i.i.i2.i.i.noexc97
	move	$s2, $a0
	st.d	$a0, $fp, 136
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 152
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 144
	st.d	$zero, $fp, 160
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 168
.Ltmp15:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.7:                                # %call5.i.i.i2.i.i.noexc115
	move	$s2, $a0
	st.d	$a0, $fp, 160
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 176
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 168
	st.d	$zero, $fp, 184
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 192
.Ltmp18:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.8:                                # %call5.i.i.i2.i.i.noexc133
	move	$s2, $a0
	st.d	$a0, $fp, 184
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 200
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 192
	st.d	$zero, $fp, 208
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 216
	slli.d	$s2, $s5, 2
.Ltmp21:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.9:                                # %call5.i.i.i2.i.i.noexc150
	move	$s3, $a0
	st.d	$a0, $fp, 208
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $fp, 224
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s2
	st.d	$a0, $fp, 216
	st.d	$zero, $fp, 232
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 240
.Ltmp24:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.10:                               # %call5.i.i.i2.i.i.noexc167
	move	$s4, $a0
	addi.d	$s3, $fp, 208
	st.d	$a0, $fp, 232
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $fp, 248
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s2
	st.d	$a0, $fp, 240
	st.d	$zero, $fp, 256
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 264
.Ltmp27:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.11:                               # %call5.i.i.i2.i.i.noexc185
	move	$s2, $a0
	st.d	$a0, $fp, 256
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $fp, 272
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s1
	b	.LBB1_13
.LBB1_12:                               # %_ZNSt12_Vector_baseIeSaIeEEC2EmRKS0_.exit.thread.i184
	ori	$a2, $zero, 264
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB1_13:                               # %invoke.cont51
	st.d	$a0, $fp, 264
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
.LBB1_14:                               # %ehcleanup
.Ltmp29:                                # EH_LABEL
	move	$s1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB1_24
# %bb.15:                               # %ehcleanup52
	addi.d	$a0, $fp, 184
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_26
.LBB1_16:                               # %ehcleanup53
	addi.d	$a0, $fp, 160
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_28
.LBB1_17:                               # %ehcleanup54
	addi.d	$a0, $fp, 136
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_30
.LBB1_18:                               # %ehcleanup55
	addi.d	$a0, $fp, 112
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_32
.LBB1_19:                               # %ehcleanup56
	addi.d	$a0, $fp, 88
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_34
.LBB1_20:                               # %ehcleanup57
	addi.d	$a0, $fp, 64
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_36
.LBB1_21:                               # %ehcleanup58
	addi.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_38
.LBB1_22:                               # %ehcleanup59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %ehcleanup.thread
.Ltmp26:                                # EH_LABEL
	move	$s1, $a0
.LBB1_24:                               # %if.then.i.i.i189
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 184
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_16
	b	.LBB1_26
.LBB1_25:                               # %lpad40
.Ltmp23:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 184
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_16
.LBB1_26:                               # %if.then.i.i.i192
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 160
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_17
	b	.LBB1_28
.LBB1_27:                               # %lpad35
.Ltmp20:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 160
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_17
.LBB1_28:                               # %if.then.i.i.i194
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 136
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_18
	b	.LBB1_30
.LBB1_29:                               # %lpad30
.Ltmp17:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 136
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_18
.LBB1_30:                               # %if.then.i.i.i197
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 112
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_19
	b	.LBB1_32
.LBB1_31:                               # %lpad25
.Ltmp14:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 112
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_19
.LBB1_32:                               # %if.then.i.i.i200
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 88
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_20
	b	.LBB1_34
.LBB1_33:                               # %lpad20
.Ltmp11:                                # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 88
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_20
.LBB1_34:                               # %if.then.i.i.i203
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_21
	b	.LBB1_36
.LBB1_35:                               # %lpad15
.Ltmp8:                                 # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 64
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_21
.LBB1_36:                               # %if.then.i.i.i206
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_22
	b	.LBB1_38
.LBB1_37:                               # %lpad10
.Ltmp5:                                 # EH_LABEL
	move	$s1, $a0
	addi.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_22
.LBB1_38:                               # %if.then.i.i.i209
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_39:                               # %lpad5
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN8LoopStatC2Ej, .Lfunc_end1-_ZN8LoopStatC2Ej
	.cfi_endproc
	.section	.gcc_except_table._ZN8LoopStatC2Ej,"aG",@progbits,_ZN8LoopStatC2Ej,comdat
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
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp27-.Ltmp25                #   Call between .Ltmp25 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Lfunc_end1-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8LoopStataSEOS_,"axG",@progbits,_ZN8LoopStataSEOS_,comdat
	.weak	_ZN8LoopStataSEOS_              # -- Begin function _ZN8LoopStataSEOS_
	.p2align	2
	.type	_ZN8LoopStataSEOS_,@function
_ZN8LoopStataSEOS_:                     # @_ZN8LoopStataSEOS_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a1
	vld	$vr0, $a1, 0
	move	$fp, $a0
	vst	$vr0, $a0, 0
	vld	$vr0, $a1, 16
	ld.d	$s1, $a0, 16
	ld.d	$s2, $a0, 24
	vst	$vr0, $a0, 16
	ld.d	$a0, $a1, 32
	st.d	$a0, $fp, 32
	st.d	$zero, $a1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a1, 16
	beq	$s1, $s2, .LBB2_5
# %bb.1:                                # %for.body.i.i.i.i.preheader
	move	$s3, $s1
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s3, $s3, 24
	beq	$s3, $s2, .LBB2_5
.LBB2_3:                                # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB2_2
# %bb.4:                                # %if.then.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_5:                                # %invoke.cont.i.i.i
	beqz	$s1, .LBB2_7
# %bb.6:                                # %if.then.i.i.i.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSEOS3_.exit
	vld	$vr0, $s0, 40
	ld.d	$a0, $fp, 40
	vst	$vr0, $fp, 40
	ld.d	$a1, $s0, 56
	st.d	$a1, $fp, 56
	st.d	$zero, $s0, 56
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 40
	beqz	$a0, .LBB2_9
# %bb.8:                                # %if.then.i.i.i.i.i17
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %_ZNSt6vectorImSaImEEaSEOS1_.exit
	vld	$vr0, $s0, 64
	ld.d	$a0, $fp, 64
	vst	$vr0, $fp, 64
	ld.d	$a1, $s0, 80
	st.d	$a1, $fp, 80
	st.d	$zero, $s0, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 64
	beqz	$a0, .LBB2_11
# %bb.10:                               # %if.then.i.i.i.i.i23
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit
	vld	$vr0, $s0, 88
	ld.d	$a0, $fp, 88
	vst	$vr0, $fp, 88
	ld.d	$a1, $s0, 104
	st.d	$a1, $fp, 104
	st.d	$zero, $s0, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 88
	beqz	$a0, .LBB2_13
# %bb.12:                               # %if.then.i.i.i.i.i29
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_13:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit30
	vld	$vr0, $s0, 112
	ld.d	$a0, $fp, 112
	vst	$vr0, $fp, 112
	ld.d	$a1, $s0, 128
	st.d	$a1, $fp, 128
	st.d	$zero, $s0, 128
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 112
	beqz	$a0, .LBB2_15
# %bb.14:                               # %if.then.i.i.i.i.i36
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit37
	vld	$vr0, $s0, 136
	ld.d	$a0, $fp, 136
	vst	$vr0, $fp, 136
	ld.d	$a1, $s0, 152
	st.d	$a1, $fp, 152
	st.d	$zero, $s0, 152
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 136
	beqz	$a0, .LBB2_17
# %bb.16:                               # %if.then.i.i.i.i.i43
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit44
	vld	$vr0, $s0, 160
	ld.d	$a0, $fp, 160
	vst	$vr0, $fp, 160
	ld.d	$a1, $s0, 176
	st.d	$a1, $fp, 176
	st.d	$zero, $s0, 176
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 160
	beqz	$a0, .LBB2_19
# %bb.18:                               # %if.then.i.i.i.i.i50
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit51
	vld	$vr0, $s0, 184
	ld.d	$a0, $fp, 184
	vst	$vr0, $fp, 184
	ld.d	$a1, $s0, 200
	st.d	$a1, $fp, 200
	st.d	$zero, $s0, 200
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 184
	beqz	$a0, .LBB2_21
# %bb.20:                               # %if.then.i.i.i.i.i57
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit58
	vld	$vr0, $s0, 208
	ld.d	$a0, $fp, 208
	vst	$vr0, $fp, 208
	ld.d	$a1, $s0, 224
	st.d	$a1, $fp, 224
	st.d	$zero, $s0, 224
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 208
	beqz	$a0, .LBB2_23
# %bb.22:                               # %if.then.i.i.i.i.i64
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
	vld	$vr0, $s0, 232
	ld.d	$a0, $fp, 232
	vst	$vr0, $fp, 232
	ld.d	$a1, $s0, 248
	st.d	$a1, $fp, 248
	st.d	$zero, $s0, 248
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 232
	beqz	$a0, .LBB2_25
# %bb.24:                               # %if.then.i.i.i.i.i70
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_25:                               # %_ZNSt6vectorIiSaIiEEaSEOS1_.exit71
	vld	$vr0, $s0, 256
	ld.d	$a0, $fp, 256
	vst	$vr0, $fp, 256
	ld.d	$a1, $s0, 272
	st.d	$a1, $fp, 272
	st.d	$zero, $s0, 272
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 256
	beqz	$a0, .LBB2_27
# %bb.26:                               # %if.then.i.i.i.i.i77
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB2_27:                               # %_ZNSt6vectorIeSaIeEEaSEOS1_.exit78
	move	$a0, $fp
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZN8LoopStataSEOS_, .Lfunc_end2-_ZN8LoopStataSEOS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8LoopStatD2Ev,"axG",@progbits,_ZN8LoopStatD2Ev,comdat
	.weak	_ZN8LoopStatD2Ev                # -- Begin function _ZN8LoopStatD2Ev
	.p2align	2
	.type	_ZN8LoopStatD2Ev,@function
_ZN8LoopStatD2Ev:                       # @_ZN8LoopStatD2Ev
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
	ld.d	$a0, $a0, 256
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %_ZNSt6vectorIeSaIeEED2Ev.exit
	ld.d	$a0, $fp, 232
	beqz	$a0, .LBB3_4
# %bb.3:                                # %if.then.i.i.i2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_4:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB3_6
# %bb.5:                                # %if.then.i.i.i4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit5
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB3_8
# %bb.7:                                # %if.then.i.i.i7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_8:                                # %_ZNSt6vectorIeSaIeEED2Ev.exit8
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB3_10
# %bb.9:                                # %if.then.i.i.i10
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_10:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit11
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB3_12
# %bb.11:                               # %if.then.i.i.i13
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit14
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB3_14
# %bb.13:                               # %if.then.i.i.i16
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit17
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB3_16
# %bb.15:                               # %if.then.i.i.i19
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit20
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB3_18
# %bb.17:                               # %if.then.i.i.i22
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_18:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit23
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB3_20
# %bb.19:                               # %if.then.i.i.i25
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_20:                               # %_ZNSt6vectorImSaImEED2Ev.exit
	ld.d	$s0, $fp, 16
	ld.d	$s1, $fp, 24
	bne	$s0, $s1, .LBB3_24
# %bb.21:                               # %invoke.cont.i
	beqz	$s0, .LBB3_27
.LBB3_22:                               # %if.then.i.i.i27
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB3_23:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB3_24 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB3_26
.LBB3_24:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB3_23
# %bb.25:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB3_24 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB3_23
.LBB3_26:                               # %invoke.contthread-pre-split.i
	ld.d	$s0, $fp, 16
	bnez	$s0, .LBB3_22
.LBB3_27:                               # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN8LoopStatD2Ev, .Lfunc_end3-_ZN8LoopStatD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z25computeReferenceLoopTimesv
.LCPI4_0:
	.dword	0x3f5426fe718a86d7              # double 0.00123
.LCPI4_1:
	.dword	0xbf5426fe718a86d7              # double -0.00123
	.text
	.globl	_Z25computeReferenceLoopTimesv
	.p2align	5
	.type	_Z25computeReferenceLoopTimesv,@function
_Z25computeReferenceLoopTimesv:         # @_Z25computeReferenceLoopTimesv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -768
	.cfi_def_cfa_offset 768
	st.d	$ra, $sp, 760                   # 8-byte Folded Spill
	st.d	$fp, $sp, 752                   # 8-byte Folded Spill
	st.d	$s0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s1, $sp, 736                   # 8-byte Folded Spill
	st.d	$s2, $sp, 728                   # 8-byte Folded Spill
	st.d	$s3, $sp, 720                   # 8-byte Folded Spill
	st.d	$s4, $sp, 712                   # 8-byte Folded Spill
	st.d	$s5, $sp, 704                   # 8-byte Folded Spill
	st.d	$s6, $sp, 696                   # 8-byte Folded Spill
	st.d	$s7, $sp, 688                   # 8-byte Folded Spill
	st.d	$s8, $sp, 680                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 664                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 656                  # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_Z19getLoopSuiteRunInfov)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a1, $a0, 64
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN8LoopStatC2Ej)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 152
	vst	$vr0, $sp, 344
	addi.d	$a0, $sp, 360
	addi.d	$a1, $s0, 168
.Ltmp30:                                # EH_LABEL
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.1:                                # %call.i.noexc
	addi.d	$a0, $sp, 384
	addi.d	$a1, $s0, 192
.Ltmp32:                                # EH_LABEL
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorImSaImEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.2:                                # %call5.i.noexc
	addi.d	$a0, $sp, 408
	addi.d	$a1, $s0, 216
.Ltmp34:                                # EH_LABEL
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.3:                                # %call7.i.noexc
	addi.d	$a0, $sp, 432
	addi.d	$a1, $s0, 240
.Ltmp36:                                # EH_LABEL
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.4:                                # %call9.i.noexc
	addi.d	$a0, $sp, 456
	addi.d	$a1, $s0, 264
.Ltmp38:                                # EH_LABEL
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.5:                                # %call11.i.noexc
	addi.d	$a0, $sp, 480
	addi.d	$a1, $s0, 288
.Ltmp40:                                # EH_LABEL
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.6:                                # %call13.i.noexc
	addi.d	$a0, $sp, 504
	addi.d	$a1, $s0, 312
.Ltmp42:                                # EH_LABEL
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.7:                                # %call15.i.noexc
	addi.d	$a0, $sp, 528
	addi.d	$s7, $s0, 336
.Ltmp44:                                # EH_LABEL
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.8:                                # %call17.i.noexc
	addi.d	$a0, $sp, 552
	addi.d	$s8, $s0, 360
.Ltmp46:                                # EH_LABEL
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.9:                                # %call19.i.noexc
	addi.d	$a0, $sp, 576
	addi.d	$fp, $s0, 384
.Ltmp48:                                # EH_LABEL
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.10:                               # %call21.i.noexc
	addi.d	$a0, $sp, 600
	addi.d	$s1, $s0, 408
.Ltmp50:                                # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.11:                               # %for.cond.preheader
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.12:                               # %call.i.noexc30
	move	$s2, $a0
	ld.d	$a0, $sp, 552
	ld.d	$a1, $sp, 576
	ld.w	$s4, $a0, 0
	ld.w	$s3, $a1, 0
.Ltmp55:                                # EH_LABEL
	addi.d	$a1, $sp, 344
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.13:                               # %.noexc
	ld.d	$s5, $s2, 8
	ld.d	$s6, $s2, 16
	ld.d	$s2, $s2, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64
	st.w	$zero, $sp, 632
	ld.w	$a0, $sp, 632
	bge	$a0, $s3, .LBB4_25
# %bb.14:                               # %for.cond9.preheader.lr.ph.i
	blez	$s4, .LBB4_24
# %bb.15:                               # %for.cond9.preheader.us.preheader.i
	sub.d	$a0, $s2, $s5
	sub.d	$a1, $s2, $s6
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s2, 32
	addi.d	$a2, $s6, 32
	addi.d	$a3, $s5, 32
	sltui	$a5, $s4, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %for.cond9.for.cond.cleanup11_crit_edge.us.i
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.w	$a5, $sp, 632
	addi.d	$a5, $a5, 1
	st.w	$a5, $sp, 632
	ld.w	$a5, $sp, 632
	bge	$a5, $s3, .LBB4_25
.LBB4_17:                               # %for.cond9.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_23 Depth 2
	beqz	$a4, .LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=1
	move	$t0, $zero
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_19:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$t0, $a0
	beq	$a0, $s4, .LBB4_16
.LBB4_22:                               # %for.body12.us.i.preheader
                                        #   in Loop: Header=BB4_17 Depth=1
	sub.d	$a5, $s4, $t0
	alsl.d	$a6, $t0, $s2, 3
	alsl.d	$a7, $t0, $s6, 3
	alsl.d	$t0, $t0, $s5, 3
	.p2align	4, , 16
.LBB4_23:                               # %for.body12.us.i
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_23
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_24:                               # %for.cond9.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 632
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 632
	ld.w	$a0, $sp, 632
	blt	$a0, $s3, .LBB4_24
.LBB4_25:                               # %for.cond.cleanup.i
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 80
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 344
	addi.d	$a2, $sp, 64
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.26:                               # %for.inc
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.27:                               # %call.i.noexc30.1
	move	$s2, $a0
	ld.d	$a0, $sp, 552
	ld.d	$a1, $sp, 576
	ld.w	$s4, $a0, 4
	ld.w	$s3, $a1, 4
.Ltmp61:                                # EH_LABEL
	addi.d	$a1, $sp, 344
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.28:                               # %.noexc.1
	ld.d	$s5, $s2, 8
	ld.d	$s6, $s2, 16
	ld.d	$s2, $s2, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64
	st.w	$zero, $sp, 632
	ld.w	$a0, $sp, 632
	bge	$a0, $s3, .LBB4_40
# %bb.29:                               # %for.cond9.preheader.lr.ph.i.1
	blez	$s4, .LBB4_39
# %bb.30:                               # %for.cond9.preheader.us.preheader.i.1
	sub.d	$a0, $s2, $s5
	sub.d	$a1, $s2, $s6
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s2, 32
	addi.d	$a2, $s6, 32
	addi.d	$a3, $s5, 32
	sltui	$a5, $s4, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               # %for.cond9.for.cond.cleanup11_crit_edge.us.i.1
                                        #   in Loop: Header=BB4_32 Depth=1
	ld.w	$a5, $sp, 632
	addi.d	$a5, $a5, 1
	st.w	$a5, $sp, 632
	ld.w	$a5, $sp, 632
	bge	$a5, $s3, .LBB4_40
.LBB4_32:                               # %for.cond9.preheader.us.i.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
                                        #     Child Loop BB4_38 Depth 2
	beqz	$a4, .LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=1
	move	$t0, $zero
	b	.LBB4_37
	.p2align	4, , 16
.LBB4_34:                               # %vector.body184.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_35:                               # %vector.body184
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_35
# %bb.36:                               # %middle.block191
                                        #   in Loop: Header=BB4_32 Depth=1
	move	$t0, $a0
	beq	$a0, $s4, .LBB4_31
.LBB4_37:                               # %for.body12.us.i.1.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	sub.d	$a5, $s4, $t0
	alsl.d	$a6, $t0, $s2, 3
	alsl.d	$a7, $t0, $s6, 3
	alsl.d	$t0, $t0, $s5, 3
	.p2align	4, , 16
.LBB4_38:                               # %for.body12.us.i.1
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_38
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_39:                               # %for.cond9.preheader.i.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 632
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 632
	ld.w	$a0, $sp, 632
	blt	$a0, $s3, .LBB4_39
.LBB4_40:                               # %for.cond.cleanup.i.1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 80
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 344
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 64
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.41:                               # %for.inc.1
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.42:                               # %call.i.noexc30.2
	move	$s2, $a0
	ld.d	$a0, $sp, 552
	ld.d	$a1, $sp, 576
	ld.w	$s4, $a0, 8
	ld.w	$s3, $a1, 8
.Ltmp67:                                # EH_LABEL
	addi.d	$a1, $sp, 344
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.43:                               # %.noexc.2
	ld.d	$s5, $s2, 8
	ld.d	$s6, $s2, 16
	ld.d	$s2, $s2, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64
	st.w	$zero, $sp, 632
	ld.w	$a0, $sp, 632
	bge	$a0, $s3, .LBB4_55
# %bb.44:                               # %for.cond9.preheader.lr.ph.i.2
	blez	$s4, .LBB4_54
# %bb.45:                               # %for.cond9.preheader.us.preheader.i.2
	sub.d	$a0, $s2, $s5
	sub.d	$a1, $s2, $s6
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s2, 32
	addi.d	$a2, $s6, 32
	addi.d	$a3, $s5, 32
	sltui	$a5, $s4, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_46:                               # %for.cond9.for.cond.cleanup11_crit_edge.us.i.2
                                        #   in Loop: Header=BB4_47 Depth=1
	ld.w	$a5, $sp, 632
	addi.d	$a5, $a5, 1
	st.w	$a5, $sp, 632
	ld.w	$a5, $sp, 632
	bge	$a5, $s3, .LBB4_55
.LBB4_47:                               # %for.cond9.preheader.us.i.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_50 Depth 2
                                        #     Child Loop BB4_53 Depth 2
	beqz	$a4, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_47 Depth=1
	move	$t0, $zero
	b	.LBB4_52
	.p2align	4, , 16
.LBB4_49:                               # %vector.body203.preheader
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_50:                               # %vector.body203
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_50
# %bb.51:                               # %middle.block210
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$t0, $a0
	beq	$a0, $s4, .LBB4_46
.LBB4_52:                               # %for.body12.us.i.2.preheader
                                        #   in Loop: Header=BB4_47 Depth=1
	sub.d	$a5, $s4, $t0
	alsl.d	$a6, $t0, $s2, 3
	alsl.d	$a7, $t0, $s6, 3
	alsl.d	$t0, $t0, $s5, 3
	.p2align	4, , 16
.LBB4_53:                               # %for.body12.us.i.2
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_53
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_54:                               # %for.cond9.preheader.i.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 632
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 632
	ld.w	$a0, $sp, 632
	blt	$a0, $s3, .LBB4_54
.LBB4_55:                               # %for.cond.cleanup.i.2
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 80
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 344
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 64
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.56:                               # %for.inc.2
	ld.w	$a1, $s0, 64
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8LoopStatC2Ej)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.57:                               # %invoke.cont7
	addi.d	$a0, $s0, 152
	vld	$vr0, $a0, 0
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 80
.Ltmp75:                                # EH_LABEL
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.58:                               # %call.i.noexc56
	addi.d	$a0, $sp, 104
.Ltmp77:                                # EH_LABEL
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorImSaImEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.59:                               # %call5.i.noexc58
	addi.d	$a0, $sp, 128
.Ltmp79:                                # EH_LABEL
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.60:                               # %call7.i.noexc60
	addi.d	$a0, $sp, 152
.Ltmp81:                                # EH_LABEL
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.61:                               # %call9.i.noexc62
	addi.d	$a0, $sp, 176
.Ltmp83:                                # EH_LABEL
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.62:                               # %call11.i.noexc64
	addi.d	$a0, $sp, 200
.Ltmp85:                                # EH_LABEL
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.63:                               # %call13.i.noexc66
	addi.d	$a0, $sp, 224
.Ltmp87:                                # EH_LABEL
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.64:                               # %call15.i.noexc68
	addi.d	$a0, $sp, 248
.Ltmp89:                                # EH_LABEL
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.65:                               # %call17.i.noexc70
	addi.d	$a0, $sp, 272
.Ltmp91:                                # EH_LABEL
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.66:                               # %call19.i.noexc72
	addi.d	$a0, $sp, 296
.Ltmp93:                                # EH_LABEL
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.67:                               # %call21.i53.noexc
	addi.d	$a0, $sp, 320
.Ltmp95:                                # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.68:                               # %for.cond12.preheader
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.69:                               # %call.i.noexc110
	move	$fp, $a0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 296
	ld.w	$s1, $a0, 0
	ld.w	$s0, $a1, 0
.Ltmp100:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.70:                               # %.noexc112
	ld.d	$s2, $fp, 8
	ld.d	$s3, $fp, 16
	ld.d	$s4, $fp, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632
	st.w	$zero, $sp, 628
	ld.w	$a0, $sp, 628
	bge	$a0, $s0, .LBB4_83
# %bb.71:                               # %for.cond9.preheader.lr.ph.i90
	blez	$s1, .LBB4_81
# %bb.72:                               # %for.cond9.preheader.us.preheader.i95
	sub.d	$a0, $s4, $s2
	sub.d	$a1, $s4, $s3
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s4, 32
	addi.d	$a2, $s3, 32
	addi.d	$a3, $s2, 32
	sltui	$a5, $s1, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_73:                               # %for.cond9.for.cond.cleanup11_crit_edge.us.i106
                                        #   in Loop: Header=BB4_74 Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a6, $sp, 628
	addi.d	$a6, $a6, 1
	st.w	$a6, $sp, 628
	ld.w	$a6, $sp, 628
	bge	$a6, $s0, .LBB4_82
.LBB4_74:                               # %for.cond9.preheader.us.i97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_77 Depth 2
                                        #     Child Loop BB4_80 Depth 2
	beqz	$a4, .LBB4_76
# %bb.75:                               #   in Loop: Header=BB4_74 Depth=1
	move	$t0, $zero
	b	.LBB4_79
	.p2align	4, , 16
.LBB4_76:                               # %vector.body222.preheader
                                        #   in Loop: Header=BB4_74 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_77:                               # %vector.body222
                                        #   Parent Loop BB4_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_77
# %bb.78:                               # %middle.block229
                                        #   in Loop: Header=BB4_74 Depth=1
	move	$t0, $a0
	beq	$a0, $s1, .LBB4_73
.LBB4_79:                               # %for.body12.us.i98.preheader
                                        #   in Loop: Header=BB4_74 Depth=1
	sub.d	$a5, $s1, $t0
	alsl.d	$a6, $t0, $s4, 3
	alsl.d	$a7, $t0, $s3, 3
	alsl.d	$t0, $t0, $s2, 3
	.p2align	4, , 16
.LBB4_80:                               # %for.body12.us.i98
                                        #   Parent Loop BB4_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_80
	b	.LBB4_73
	.p2align	4, , 16
.LBB4_81:                               # %for.cond9.preheader.i91
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a0, $sp, 628
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 628
	ld.w	$a0, $sp, 628
	blt	$a0, $s0, .LBB4_81
.LBB4_82:                               # %for.cond.for.cond.cleanup_crit_edge.i
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fcopysign.d	$fs2, $fa1, $fa0
	b	.LBB4_84
.LBB4_83:
	movgr2fr.d	$fs2, $zero
.LBB4_84:                               # %for.cond.cleanup.i87
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_1)
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 648
	fadd.d	$fa0, $fs2, $fs0
	fadd.d	$fa1, $fs2, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 384
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 632
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.85:                               # %for.inc18
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.86:                               # %call.i.noexc110.1
	move	$fp, $a0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 296
	ld.w	$s1, $a0, 4
	ld.w	$s0, $a1, 4
.Ltmp106:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.87:                               # %.noexc112.1
	ld.d	$s2, $fp, 8
	ld.d	$s3, $fp, 16
	ld.d	$s4, $fp, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632
	st.w	$zero, $sp, 628
	ld.w	$a0, $sp, 628
	bge	$a0, $s0, .LBB4_100
# %bb.88:                               # %for.cond9.preheader.lr.ph.i90.1
	blez	$s1, .LBB4_98
# %bb.89:                               # %for.cond9.preheader.us.preheader.i95.1
	sub.d	$a0, $s4, $s2
	sub.d	$a1, $s4, $s3
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s4, 32
	addi.d	$a2, $s3, 32
	addi.d	$a3, $s2, 32
	sltui	$a5, $s1, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_91
	.p2align	4, , 16
.LBB4_90:                               # %for.cond9.for.cond.cleanup11_crit_edge.us.i106.1
                                        #   in Loop: Header=BB4_91 Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a6, $sp, 628
	addi.d	$a6, $a6, 1
	st.w	$a6, $sp, 628
	ld.w	$a6, $sp, 628
	bge	$a6, $s0, .LBB4_99
.LBB4_91:                               # %for.cond9.preheader.us.i97.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_94 Depth 2
                                        #     Child Loop BB4_97 Depth 2
	beqz	$a4, .LBB4_93
# %bb.92:                               #   in Loop: Header=BB4_91 Depth=1
	move	$t0, $zero
	b	.LBB4_96
	.p2align	4, , 16
.LBB4_93:                               # %vector.body241.preheader
                                        #   in Loop: Header=BB4_91 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_94:                               # %vector.body241
                                        #   Parent Loop BB4_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_94
# %bb.95:                               # %middle.block248
                                        #   in Loop: Header=BB4_91 Depth=1
	move	$t0, $a0
	beq	$a0, $s1, .LBB4_90
.LBB4_96:                               # %for.body12.us.i98.1.preheader
                                        #   in Loop: Header=BB4_91 Depth=1
	sub.d	$a5, $s1, $t0
	alsl.d	$a6, $t0, $s4, 3
	alsl.d	$a7, $t0, $s3, 3
	alsl.d	$t0, $t0, $s2, 3
	.p2align	4, , 16
.LBB4_97:                               # %for.body12.us.i98.1
                                        #   Parent Loop BB4_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_97
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_98:                               # %for.cond9.preheader.i91.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a0, $sp, 628
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 628
	ld.w	$a0, $sp, 628
	blt	$a0, $s0, .LBB4_98
.LBB4_99:                               # %for.cond.for.cond.cleanup_crit_edge.i.1
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fcopysign.d	$fs2, $fa1, $fa0
	b	.LBB4_101
.LBB4_100:
	movgr2fr.d	$fs2, $zero
.LBB4_101:                              # %for.cond.cleanup.i87.1
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 648
	fadd.d	$fa0, $fs2, $fs0
	fadd.d	$fa1, $fs2, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 384
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 632
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.102:                              # %for.inc18.1
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.103:                              # %call.i.noexc110.2
	move	$fp, $a0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 296
	ld.w	$s1, $a0, 8
	ld.w	$s0, $a1, 8
.Ltmp112:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8loopInitjR8LoopStat)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.104:                              # %.noexc112.2
	ld.d	$s2, $fp, 8
	ld.d	$s3, $fp, 16
	ld.d	$s4, $fp, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632
	st.w	$zero, $sp, 628
	ld.w	$a0, $sp, 628
	bge	$a0, $s0, .LBB4_117
# %bb.105:                              # %for.cond9.preheader.lr.ph.i90.2
	blez	$s1, .LBB4_115
# %bb.106:                              # %for.cond9.preheader.us.preheader.i95.2
	sub.d	$a0, $s4, $s2
	sub.d	$a1, $s4, $s3
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a4, $a0, $a1
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s4, 32
	addi.d	$a2, $s3, 32
	addi.d	$a3, $s2, 32
	sltui	$a5, $s1, 8
	or	$a4, $a5, $a4
	andi	$a4, $a4, 1
	b	.LBB4_108
	.p2align	4, , 16
.LBB4_107:                              # %for.cond9.for.cond.cleanup11_crit_edge.us.i106.2
                                        #   in Loop: Header=BB4_108 Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a6, $sp, 628
	addi.d	$a6, $a6, 1
	st.w	$a6, $sp, 628
	ld.w	$a6, $sp, 628
	bge	$a6, $s0, .LBB4_116
.LBB4_108:                              # %for.cond9.preheader.us.i97.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_111 Depth 2
                                        #     Child Loop BB4_114 Depth 2
	beqz	$a4, .LBB4_110
# %bb.109:                              #   in Loop: Header=BB4_108 Depth=1
	move	$t0, $zero
	b	.LBB4_113
	.p2align	4, , 16
.LBB4_110:                              # %vector.body260.preheader
                                        #   in Loop: Header=BB4_108 Depth=1
	move	$a5, $a3
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_111:                              # %vector.body260
                                        #   Parent Loop BB4_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvfmul.d	$xr0, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB4_111
# %bb.112:                              # %middle.block267
                                        #   in Loop: Header=BB4_108 Depth=1
	move	$t0, $a0
	beq	$a0, $s1, .LBB4_107
.LBB4_113:                              # %for.body12.us.i98.2.preheader
                                        #   in Loop: Header=BB4_108 Depth=1
	sub.d	$a5, $s1, $t0
	alsl.d	$a6, $t0, $s4, 3
	alsl.d	$a7, $t0, $s3, 3
	alsl.d	$t0, $t0, $s2, 3
	.p2align	4, , 16
.LBB4_114:                              # %for.body12.us.i98.2
                                        #   Parent Loop BB4_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t0, 0
	fld.d	$fa1, $a7, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	bnez	$a5, .LBB4_114
	b	.LBB4_107
	.p2align	4, , 16
.LBB4_115:                              # %for.cond9.preheader.i91.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $sp, 628
	ld.w	$a0, $sp, 628
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 628
	ld.w	$a0, $sp, 628
	blt	$a0, $s0, .LBB4_115
.LBB4_116:                              # %for.cond.for.cond.cleanup_crit_edge.i.2
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fcopysign.d	$fs2, $fa1, $fa0
	b	.LBB4_118
.LBB4_117:
	movgr2fr.d	$fs2, $zero
.LBB4_118:                              # %for.cond.cleanup.i87.2
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 648
	fadd.d	$fa0, $fs2, $fs0
	fadd.d	$fa1, $fs2, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 384
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 632
	pcaddu18i	$ra, %call36(_Z9copyTimerR8LoopStatiRK9LoopTimer)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.119:                              # %for.inc18.2
	ld.d	$s5, $sp, 80
	ld.d	$s4, $sp, 360
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $a2, 0
	ld.d	$fp, $a0, 0
	ld.d	$s0, $a0, 8
	ld.d	$s1, $a1, 0
	ld.d	$s2, $a1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	slti	$a1, $a0, 0
	masknez	$a2, $s2, $a1
	maskeqz	$a3, $s0, $a1
	ld.d	$a0, $s3, 8
	ld.d	$a4, $s3, 16
	or	$s6, $a3, $a2
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $fp, $a1
	or	$s7, $a1, $a2
	beq	$a0, $a4, .LBB4_121
# %bb.120:                              # %if.then.i
	st.d	$s7, $a0, 0
	st.d	$s6, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s3, 8
	b	.LBB4_128
.LBB4_121:                              # %if.else.i
	ld.d	$fp, $s3, 0
	sub.d	$s1, $a0, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_147
# %bb.122:                              # %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 4
.Ltmp117:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.123:                              # %call5.i.i.i.i.noexc
	move	$s0, $a0
	add.d	$s8, $a0, $s1
	stx.d	$s7, $a0, $s1
	st.d	$s6, $s8, 8
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB4_125
# %bb.124:                              # %if.then.i.i.i.i.i.i
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_125:                              # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i
	move	$a0, $s3
	beqz	$fp, .LBB4_127
# %bb.126:                              # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 360
	ld.d	$s5, $sp, 80
.LBB4_127:                              # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i
	addi.d	$a1, $s8, 16
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a1, $s2, $s0, 4
	st.d	$a1, $s3, 16
	move	$s3, $a0
.LBB4_128:                              # %for.inc39
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s4, 24
	ld.d	$fp, $a0, 0
	ld.d	$s0, $a0, 8
	ld.d	$s1, $a1, 0
	ld.d	$s2, $a1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	slti	$a1, $a0, 0
	masknez	$a2, $s2, $a1
	maskeqz	$a3, $s0, $a1
	ld.d	$a0, $s3, 32
	ld.d	$a4, $s3, 40
	or	$s6, $a3, $a2
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $fp, $a1
	or	$s7, $a1, $a2
	beq	$a0, $a4, .LBB4_130
# %bb.129:                              # %if.then.i.1
	st.d	$s7, $a0, 0
	st.d	$s6, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s3, 32
	b	.LBB4_137
.LBB4_130:                              # %if.else.i.1
	ld.d	$fp, $s3, 24
	sub.d	$s1, $a0, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_147
# %bb.131:                              # %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.1
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 4
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.132:                              # %call5.i.i.i.i.noexc.1
	move	$s0, $a0
	add.d	$s8, $a0, $s1
	stx.d	$s7, $a0, $s1
	st.d	$s6, $s8, 8
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB4_134
# %bb.133:                              # %if.then.i.i.i.i.i.i.1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_134:                              # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i.1
	move	$a0, $s3
	beqz	$fp, .LBB4_136
# %bb.135:                              # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit.i.i.i.1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 360
	ld.d	$s5, $sp, 80
.LBB4_136:                              # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i.1
	addi.d	$a1, $s8, 16
	st.d	$s0, $s3, 24
	st.d	$a1, $s3, 32
	alsl.d	$a1, $s2, $s0, 4
	st.d	$a1, $s3, 40
	move	$s3, $a0
.LBB4_137:                              # %for.inc39.1
	ld.d	$a0, $s5, 48
	ld.d	$a1, $s4, 48
	ld.d	$fp, $a0, 0
	ld.d	$s0, $a0, 8
	ld.d	$s1, $a1, 0
	ld.d	$s2, $a1, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	slti	$a1, $a0, 0
	masknez	$a2, $s2, $a1
	maskeqz	$a3, $s0, $a1
	ld.d	$a0, $s3, 56
	ld.d	$a4, $s3, 64
	or	$s2, $a3, $a2
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a2
	beq	$a0, $a4, .LBB4_139
# %bb.138:                              # %if.then.i.2
	st.d	$s4, $a0, 0
	st.d	$s2, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s3, 56
	b	.LBB4_146
.LBB4_139:                              # %if.else.i.2
	ld.d	$fp, $s3, 48
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_147
# %bb.140:                              # %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.2
	srai.d	$a0, $s0, 4
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 4
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.141:                              # %call5.i.i.i.i.noexc.2
	move	$s1, $a0
	add.d	$s7, $a0, $s0
	stx.d	$s4, $a0, $s0
	st.d	$s2, $s7, 8
	blt	$s0, $s6, .LBB4_143
# %bb.142:                              # %if.then.i.i.i.i.i.i.2
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_143:                              # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i.2
	beqz	$fp, .LBB4_145
# %bb.144:                              # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit.i.i.i.2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_145:                              # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i.2
	addi.d	$a0, $s7, 16
	st.d	$s1, $s3, 48
	st.d	$a0, $s3, 56
	alsl.d	$a0, $s5, $s1, 4
	st.d	$a0, $s3, 64
.LBB4_146:                              # %for.inc39.2
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 672                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 760                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 768
	ret
.LBB4_147:                              # %if.then.i.i.i
.Ltmp124:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.148:                              # %.noexc120
.LBB4_149:                              # %lpad6
.Ltmp74:                                # EH_LABEL
	b	.LBB4_157
.LBB4_150:                              # %lpad35.loopexit
.Ltmp123:                               # EH_LABEL
	b	.LBB4_155
.LBB4_151:                              # %lpad35.loopexit.split-lp
.Ltmp126:                               # EH_LABEL
	b	.LBB4_155
.LBB4_152:                              # %lpad16
.Ltmp116:                               # EH_LABEL
	b	.LBB4_155
.LBB4_153:                              # %lpad3
.Ltmp71:                                # EH_LABEL
	b	.LBB4_157
.LBB4_154:                              # %lpad8
.Ltmp97:                                # EH_LABEL
.LBB4_155:                              # %ehcleanup
	move	$fp, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_156:                              # %lpad
.Ltmp52:                                # EH_LABEL
.LBB4_157:                              # %lpad6
	move	$fp, $a0
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z25computeReferenceLoopTimesv, .Lfunc_end4-_Z25computeReferenceLoopTimesv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp30                #   Call between .Ltmp30 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp56-.Ltmp53                #   Call between .Ltmp53 and .Ltmp56
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp62-.Ltmp57                #   Call between .Ltmp57 and .Ltmp62
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp68-.Ltmp63                #   Call between .Ltmp63 and .Ltmp68
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin1          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp96-.Ltmp75                #   Call between .Ltmp75 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp101-.Ltmp98               #   Call between .Ltmp98 and .Ltmp101
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp107-.Ltmp102              #   Call between .Ltmp102 and .Ltmp107
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp113-.Ltmp108              #   Call between .Ltmp108 and .Ltmp113
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp117-.Ltmp115              #   Call between .Ltmp115 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp124-.Ltmp122              #   Call between .Ltmp122 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Lfunc_end4-.Ltmp125           #   Call between .Ltmp125 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev
	.p2align	2
	.type	_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev,@function
_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev:    # @_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev
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
	ld.d	$fp, $a0, 0
	ld.d	$s1, $a0, 8
	beq	$fp, $s1, .LBB5_6
# %bb.1:                                # %for.body.i.preheader
	move	$s0, $a0
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$fp, $fp, 24
	beq	$fp, $s1, .LBB5_5
.LBB5_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_2
# %bb.4:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB5_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB5_2
.LBB5_5:                                # %invoke.contthread-pre-split
	ld.d	$fp, $s0, 0
.LBB5_6:                                # %invoke.cont
	beqz	$fp, .LBB5_8
# %bb.7:                                # %if.then.i.i
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB5_8:                                # %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev, .Lfunc_end5-_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev,comdat
	.weak	_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev
	.p2align	2
	.type	_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB6_2
# %bb.1:                                # %if.end
	ret
.LBB6_2:                                # %if.then
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$fp, $a0, 0
	ld.d	$s0, $a1, 0
	bne	$fp, $s0, .LBB6_5
.LBB6_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_4:                                # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i
                                        #   in Loop: Header=BB6_5 Depth=1
	addi.d	$fp, $fp, 24
	beq	$fp, $s0, .LBB6_3
.LBB6_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_4
# %bb.6:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB6_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB6_4
.Lfunc_end6:
	.size	_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev, .Lfunc_end6-_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_,"axG",@progbits,_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_,comdat
	.weak	_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_ # -- Begin function _ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_
	.p2align	2
	.type	_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_,@function
_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_: # @_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	beq	$a1, $a0, .LBB7_31
# %bb.1:                                # %if.then
	ld.d	$s0, $a1, 8
	ld.d	$s1, $a1, 0
	ld.d	$a0, $fp, 16
	ld.d	$s2, $fp, 0
	sub.d	$s3, $s0, $s1
	sub.d	$a0, $a0, $s2
	bgeu	$a0, $s3, .LBB7_9
# %bb.2:                                # %if.then4
	srli.d	$a0, $s3, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mul.d	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	ld.d	$s2, $fp, 8
	move	$s0, $a0
	bne	$s1, $s2, .LBB7_7
# %bb.3:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEEEvT_S4_.exit
	beqz	$s1, .LBB7_5
.LBB7_4:                                # %if.then.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EE13_M_deallocateEPS2_m.exit
	st.d	$s0, $fp, 0
	add.d	$a0, $s0, $s3
	st.d	$a0, $fp, 16
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_6:                                # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$s1, $s1, 24
	beq	$s1, $s2, .LBB7_14
.LBB7_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB7_6
# %bb.8:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB7_7 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_6
.LBB7_9:                                # %if.else
	ld.d	$s4, $fp, 8
	sub.d	$s5, $s4, $s2
	bgeu	$s5, $s3, .LBB7_15
# %bb.10:                               # %if.else61
	beq	$s4, $s2, .LBB7_19
# %bb.11:                               # %for.body.i.i45.preheader
	move	$s0, $a1
	.p2align	4, , 16
.LBB7_12:                               # %for.body.i.i45
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 24
	addi.d	$s5, $s5, -24
	addi.d	$s1, $s1, 24
	bnez	$s5, .LBB7_12
# %bb.13:                               # %_ZSt4copyIPSt6vectorIeSaIeEES3_ET0_T_S5_S4_.exit.loopexit
	ld.d	$s1, $s0, 0
	ld.d	$s4, $fp, 8
	ld.d	$a0, $fp, 0
	ld.d	$s0, $s0, 8
	sub.d	$a0, $s4, $a0
	b	.LBB7_20
.LBB7_14:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEEEvT_S4_.exitthread-pre-split
	ld.d	$s1, $fp, 0
	bnez	$s1, .LBB7_4
	b	.LBB7_5
.LBB7_15:                               # %if.then29
	beq	$s1, $s0, .LBB7_29
# %bb.16:                               # %for.body.i.i.preheader
	move	$s5, $s2
	.p2align	4, , 16
.LBB7_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIeSaIeEEaSERKS1_)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 24
	addi.d	$s1, $s1, 24
	addi.d	$s5, $s5, 24
	bne	$s1, $s0, .LBB7_17
# %bb.18:                               # %_ZSt14__copy_move_a2ILb0EPKSt6vectorIeSaIeEES4_PS2_ET2_T0_T1_S6_.exit.loopexit.i
	ld.d	$s4, $fp, 8
	bne	$s5, $s4, .LBB7_33
	b	.LBB7_30
.LBB7_19:
	move	$a0, $zero
.LBB7_20:                               # %_ZSt4copyIPSt6vectorIeSaIeEES3_ET0_T_S5_S4_.exit
	add.d	$s5, $s1, $a0
	st.d	$s4, $sp, 48
	st.d	$s4, $sp, 32
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 40
	beq	$s5, $s0, .LBB7_30
# %bb.21:                               # %for.body.i.i.i.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB7_22:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 0
	sub.d	$s2, $a0, $a1
	st.d	$zero, $s4, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s4, 0
	beq	$a0, $a1, .LBB7_25
# %bb.23:                               # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_22 Depth=1
.Ltmp127:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s1, $a0
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_25:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s1, $zero
.LBB7_26:                               # %invoke.cont.i.i.i.i.i
                                        #   in Loop: Header=BB7_22 Depth=1
	st.d	$s1, $s4, 0
	st.d	$s1, $s4, 8
	add.d	$a0, $s1, $s2
	st.d	$a0, $s4, 16
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s5, 8
	sub.d	$s2, $a0, $a1
	blt	$s2, $s6, .LBB7_28
# %bb.27:                               # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB7_22 Depth=1
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB7_28:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB7_22 Depth=1
	st.d	$s1, $s4, 8
	addi.d	$s5, $s5, 24
	addi.d	$s4, $s4, 24
	st.d	$s4, $sp, 48
	bne	$s5, $s0, .LBB7_22
	b	.LBB7_30
.LBB7_29:
	move	$s5, $s2
	bne	$s5, $s4, .LBB7_33
.LBB7_30:                               # %if.end81
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s3
	st.d	$a0, $fp, 8
.LBB7_31:                               # %if.end87
	move	$a0, $fp
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
	.p2align	4, , 16
.LBB7_32:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i36
                                        #   in Loop: Header=BB7_33 Depth=1
	addi.d	$s5, $s5, 24
	beq	$s5, $s4, .LBB7_30
.LBB7_33:                               # %for.body.i33
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB7_32
# %bb.34:                               # %if.then.i.i.i.i.i35
                                        #   in Loop: Header=BB7_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_32
.LBB7_35:                               # %lpad.i.i.i
.Ltmp129:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_, .Lfunc_end7-_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_,"aG",@progbits,_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin2         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp128           #   Call between .Ltmp128 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorImSaImEEaSERKS1_,"axG",@progbits,_ZNSt6vectorImSaImEEaSERKS1_,comdat
	.weak	_ZNSt6vectorImSaImEEaSERKS1_    # -- Begin function _ZNSt6vectorImSaImEEaSERKS1_
	.p2align	2
	.type	_ZNSt6vectorImSaImEEaSERKS1_,@function
_ZNSt6vectorImSaImEEaSERKS1_:           # @_ZNSt6vectorImSaImEEaSERKS1_
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
	move	$fp, $a0
	beq	$a1, $a0, .LBB8_15
# %bb.1:                                # %if.then
	ld.d	$a3, $a1, 8
	ld.d	$s1, $a1, 0
	ld.d	$a0, $fp, 16
	ld.d	$s2, $fp, 0
	sub.d	$s0, $a3, $s1
	srai.d	$a4, $s0, 3
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 3
	bgeu	$a0, $a4, .LBB8_7
# %bb.2:                                # %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s0, $a1, .LBB8_4
# %bb.3:                                # %if.then.i.i3.i
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
	beqz	$s2, .LBB8_6
# %bb.5:                                # %if.then.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_6:                                # %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
	st.d	$s3, $fp, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $fp, 16
	b	.LBB8_14
.LBB8_7:                                # %if.else
	ld.d	$a0, $fp, 8
	sub.d	$a2, $a0, $s2
	srai.d	$a5, $a2, 3
	bgeu	$a5, $a4, .LBB8_12
# %bb.8:                                # %if.else61
	move	$s3, $a1
	ori	$a1, $zero, 9
	blt	$a2, $a1, .LBB8_16
# %bb.9:                                # %if.then.i.i46
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	ld.d	$a3, $s3, 8
	sub.d	$a1, $a0, $a1
.LBB8_10:                               # %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
	add.d	$a1, $s1, $a1
	sub.d	$a2, $a3, $a1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB8_14
# %bb.11:                               # %if.then.i.i57
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB8_14
.LBB8_12:                               # %if.then29
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB8_18
# %bb.13:                               # %if.then.i.i
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB8_14:                               # %if.end81
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 8
.LBB8_15:                               # %if.end87
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_16:                               # %if.else.i.i41
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB8_20
# %bb.17:                               # %if.then2.i.i44
	ld.d	$a2, $s1, 0
	st.d	$a2, $s2, 0
	b	.LBB8_10
.LBB8_18:                               # %if.else.i.i
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB8_14
# %bb.19:                               # %if.then2.i.i
	ld.d	$a0, $s1, 0
	st.d	$a0, $s2, 0
	b	.LBB8_14
.LBB8_20:
	move	$a1, $a2
	b	.LBB8_10
.Lfunc_end8:
	.size	_ZNSt6vectorImSaImEEaSERKS1_, .Lfunc_end8-_ZNSt6vectorImSaImEEaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIeSaIeEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIeSaIeEEaSERKS1_,comdat
	.weak	_ZNSt6vectorIeSaIeEEaSERKS1_    # -- Begin function _ZNSt6vectorIeSaIeEEaSERKS1_
	.p2align	2
	.type	_ZNSt6vectorIeSaIeEEaSERKS1_,@function
_ZNSt6vectorIeSaIeEEaSERKS1_:           # @_ZNSt6vectorIeSaIeEEaSERKS1_
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
	move	$fp, $a0
	beq	$a1, $a0, .LBB9_15
# %bb.1:                                # %if.then
	ld.d	$a3, $a1, 8
	ld.d	$s1, $a1, 0
	ld.d	$a0, $fp, 16
	ld.d	$s2, $fp, 0
	sub.d	$s0, $a3, $s1
	srai.d	$a4, $s0, 4
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 4
	bgeu	$a0, $a4, .LBB9_7
# %bb.2:                                # %_ZNSt12_Vector_baseIeSaIeEE11_M_allocateEm.exit.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s0, $a1, .LBB9_4
# %bb.3:                                # %if.then.i.i3.i
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %_ZNSt6vectorIeSaIeEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKeS1_EEEEPemT_S9_.exit
	beqz	$s2, .LBB9_6
# %bb.5:                                # %if.then.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit
	st.d	$s3, $fp, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $fp, 16
	b	.LBB9_14
.LBB9_7:                                # %if.else
	ld.d	$a0, $fp, 8
	sub.d	$a2, $a0, $s2
	srai.d	$a5, $a2, 4
	bgeu	$a5, $a4, .LBB9_12
# %bb.8:                                # %if.else61
	move	$s3, $a1
	ori	$a1, $zero, 17
	blt	$a2, $a1, .LBB9_16
# %bb.9:                                # %if.then.i.i46
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	ld.d	$a3, $s3, 8
	sub.d	$a1, $a0, $a1
.LBB9_10:                               # %_ZSt4copyIPeS0_ET0_T_S2_S1_.exit
	add.d	$a1, $s1, $a1
	sub.d	$a2, $a3, $a1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB9_14
# %bb.11:                               # %if.then.i.i57
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB9_14
.LBB9_12:                               # %if.then29
	ori	$a0, $zero, 17
	blt	$s0, $a0, .LBB9_18
# %bb.13:                               # %if.then.i.i
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %if.end81
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 8
.LBB9_15:                               # %if.end87
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_16:                               # %if.else.i.i41
	ori	$a1, $zero, 16
	bne	$a2, $a1, .LBB9_20
# %bb.17:                               # %if.then2.i.i44
	vld	$vr0, $s1, 0
	vst	$vr0, $s2, 0
	b	.LBB9_10
.LBB9_18:                               # %if.else.i.i
	ori	$a0, $zero, 16
	bne	$s0, $a0, .LBB9_14
# %bb.19:                               # %if.then2.i.i
	vld	$vr0, $s1, 0
	vst	$vr0, $s2, 0
	b	.LBB9_14
.LBB9_20:
	move	$a1, $a2
	b	.LBB9_10
.Lfunc_end9:
	.size	_ZNSt6vectorIeSaIeEEaSERKS1_, .Lfunc_end9-_ZNSt6vectorIeSaIeEEaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEaSERKS1_,comdat
	.weak	_ZNSt6vectorIiSaIiEEaSERKS1_    # -- Begin function _ZNSt6vectorIiSaIiEEaSERKS1_
	.p2align	2
	.type	_ZNSt6vectorIiSaIiEEaSERKS1_,@function
_ZNSt6vectorIiSaIiEEaSERKS1_:           # @_ZNSt6vectorIiSaIiEEaSERKS1_
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
	move	$fp, $a0
	beq	$a1, $a0, .LBB10_15
# %bb.1:                                # %if.then
	ld.d	$a3, $a1, 8
	ld.d	$s1, $a1, 0
	ld.d	$a0, $fp, 16
	ld.d	$s2, $fp, 0
	sub.d	$s0, $a3, $s1
	srai.d	$a4, $s0, 2
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a4, .LBB10_7
# %bb.2:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s0, $a1, .LBB10_4
# %bb.3:                                # %if.then.i.i3.i
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_4:                               # %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
	beqz	$s2, .LBB10_6
# %bb.5:                                # %if.then.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s3, $fp, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $fp, 16
	b	.LBB10_14
.LBB10_7:                               # %if.else
	ld.d	$a0, $fp, 8
	sub.d	$a2, $a0, $s2
	srai.d	$a5, $a2, 2
	bgeu	$a5, $a4, .LBB10_12
# %bb.8:                                # %if.else61
	move	$s3, $a1
	ori	$a1, $zero, 5
	blt	$a2, $a1, .LBB10_16
# %bb.9:                                # %if.then.i.i46
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	ld.d	$a3, $s3, 8
	sub.d	$a1, $a0, $a1
.LBB10_10:                              # %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
	add.d	$a1, $s1, $a1
	sub.d	$a2, $a3, $a1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB10_14
# %bb.11:                               # %if.then.i.i57
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB10_14
.LBB10_12:                              # %if.then29
	ori	$a0, $zero, 5
	blt	$s0, $a0, .LBB10_18
# %bb.13:                               # %if.then.i.i
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB10_14:                              # %if.end81
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 8
.LBB10_15:                              # %if.end87
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB10_16:                              # %if.else.i.i41
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB10_20
# %bb.17:                               # %if.then2.i.i44
	ld.w	$a2, $s1, 0
	st.w	$a2, $s2, 0
	b	.LBB10_10
.LBB10_18:                              # %if.else.i.i
	ori	$a0, $zero, 4
	bne	$s0, $a0, .LBB10_14
# %bb.19:                               # %if.then2.i.i
	ld.w	$a0, $s1, 0
	st.w	$a0, $s2, 0
	b	.LBB10_14
.LBB10_20:
	move	$a1, $a2
	b	.LBB10_10
.Lfunc_end10:
	.size	_ZNSt6vectorIiSaIiEEaSERKS1_, .Lfunc_end10-_ZNSt6vectorIiSaIiEEaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,"axG",@progbits,_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,comdat
	.weak	_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ # -- Begin function _ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
	.p2align	2
	.type	_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,@function
_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_: # @_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$fp, $a3
	move	$s0, $a2
	beqz	$a1, .LBB11_3
# %bb.1:                                # %cond.true.i
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 85
	bgeu	$a1, $a0, .LBB11_14
# %bb.2:                                # %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB11_4
.LBB11_3:
	move	$s1, $zero
.LBB11_4:                               # %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EE11_M_allocateEm.exit
	st.d	$s1, $sp, 56
	st.d	$s1, $sp, 40
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 48
	beq	$s0, $fp, .LBB11_13
# %bb.5:                                # %for.body.preheader.i.i.i
	move	$s4, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB11_6:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s7, $s0, $s4
	ld.d	$a0, $s7, 8
	ldx.d	$a1, $s0, $s4
	add.d	$s6, $s1, $s4
	sub.d	$s3, $a0, $a1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vstx	$vr0, $s1, $s4
	st.d	$zero, $s6, 16
	beq	$a0, $a1, .LBB11_9
# %bb.7:                                # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB11_6 Depth=1
.Ltmp130:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	move	$s2, $a0
	b	.LBB11_10
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_6 Depth=1
	move	$s2, $zero
.LBB11_10:                              # %invoke.cont.i.i.i.i.i
                                        #   in Loop: Header=BB11_6 Depth=1
	st.d	$s2, $s6, 0
	st.d	$s2, $s6, 8
	add.d	$a0, $s2, $s3
	st.d	$a0, $s6, 16
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s7, 8
	sub.d	$s3, $a0, $a1
	blt	$s3, $s5, .LBB11_12
# %bb.11:                               # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB11_6 Depth=1
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $s3
.LBB11_12:                              # %for.inc.i.i.i
                                        #   in Loop: Header=BB11_6 Depth=1
	st.d	$s2, $s6, 8
	addi.d	$a0, $s6, 24
	addi.d	$s4, $s4, 24
	add.d	$a1, $s0, $s4
	st.d	$a0, $sp, 56
	bne	$a1, $fp, .LBB11_6
.LBB11_13:                              # %_ZNSt6vectorIS_IeSaIeEESaIS1_EE12_Guard_allocD2Ev.exit
	move	$a0, $s1
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
.LBB11_14:                              # %if.then.i.i
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, 170
	bltu	$a1, $a0, .LBB11_16
# %bb.15:                               # %if.then3.i.i
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.LBB11_16:                              # %if.end.i.i
	pcaddu18i	$ra, %call36(_ZSt17__throw_bad_allocv)
	jirl	$ra, $ra, 0
.LBB11_17:                              # %lpad.i.i.i
.Ltmp132:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPSt6vectorIeSaIeEEvED2Ev)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB11_19
# %bb.18:                               # %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EE13_M_deallocateEPS2_m.exit.i3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_19:                              # %_ZNSt6vectorIS_IeSaIeEESaIS1_EE12_Guard_allocD2Ev.exit4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_, .Lfunc_end11-_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,"aG",@progbits,_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp130-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin3         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp131          #   Call between .Ltmp131 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.1, 26

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
