	.file	"btShapeHull.cpp"
	.text
	.globl	_ZN11btShapeHullC2EPK13btConvexShape # -- Begin function _ZN11btShapeHullC2EPK13btConvexShape
	.p2align	2
	.type	_ZN11btShapeHullC2EPK13btConvexShape,@function
_ZN11btShapeHullC2EPK13btConvexShape:   # @_ZN11btShapeHullC2EPK13btConvexShape
	.cfi_startproc
# %bb.0:                                # %invoke.cont6
	st.d	$a1, $a0, 72
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 24
	st.d	$zero, $a0, 16
	st.d	$zero, $a0, 4
	st.b	$a1, $a0, 56
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 36
	st.w	$zero, $a0, 64
	ret
.Lfunc_end0:
	.size	_ZN11btShapeHullC2EPK13btConvexShape, .Lfunc_end0-_ZN11btShapeHullC2EPK13btConvexShape
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIjED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIjED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIjED2Ev # -- Begin function _ZN20btAlignedObjectArrayIjED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayIjED2Ev,@function
_ZN20btAlignedObjectArrayIjED2Ev:       # @_ZN20btAlignedObjectArrayIjED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIjE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIjED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIjED2Ev
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI9btVector3ED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI9btVector3ED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI9btVector3ED2Ev # -- Begin function _ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayI9btVector3ED2Ev,@function
_ZN20btAlignedObjectArrayI9btVector3ED2Ev: # @_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB3_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN11btShapeHullD2Ev            # -- Begin function _ZN11btShapeHullD2Ev
	.p2align	2
	.type	_ZN11btShapeHullD2Ev,@function
_ZN11btShapeHullD2Ev:                   # @_ZN11btShapeHullD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ld.d	$a0, $a0, 48
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB4_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_3
# %bb.2:                                # %if.then2.i.i
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB4_3:                                # %invoke.cont
	ld.d	$a0, $fp, 16
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB4_12
# %bb.4:                                # %invoke.cont
	ld.b	$a2, $fp, 24
	andi	$a2, $a2, 1
	beqz	$a2, .LBB4_12
# %bb.5:                                # %if.then2.i.i10
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.6:                                # %invoke.cont2
	ld.d	$a0, $fp, 48
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	beqz	$a0, .LBB4_13
# %bb.7:                                # %invoke.cont2
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_13
# %bb.8:                                # %if.then2.i.i.i
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.9:                                # %invoke.cont5
	ld.d	$a0, $fp, 16
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB4_14
# %bb.10:                               # %invoke.cont5
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_14
# %bb.11:                               # %if.then2.i.i.i20
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB4_14
.LBB4_12:                               # %invoke.cont2.thread
	st.b	$a1, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
.LBB4_13:                               # %invoke.cont5.thread
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
.LBB4_14:                               # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_15:                               # %lpad4
.Ltmp9:                                 # EH_LABEL
	move	$s1, $a0
	b	.LBB4_17
.LBB4_16:                               # %lpad
.Ltmp4:                                 # EH_LABEL
	move	$s1, $a0
.Ltmp5:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIjED2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
.LBB4_17:                               # %ehcleanup
.Ltmp10:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.18:                               # %eh.resume
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %terminate.lpad
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN11btShapeHullD2Ev, .Lfunc_end4-_ZN11btShapeHullD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp11            #   Call between .Ltmp11 and .Lfunc_end4
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
	.text
	.globl	_ZN11btShapeHull9buildHullEf    # -- Begin function _ZN11btShapeHull9buildHullEf
	.p2align	2
	.type	_ZN11btShapeHull9buildHullEf,@function
_ZN11btShapeHull9buildHullEf:           # @_ZN11btShapeHull9buildHullEf
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1232
	.cfi_def_cfa_offset 1232
	st.d	$ra, $sp, 1224                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1176                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 128
	jirl	$ra, $a1, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(_ZL18btUnitSpherePoints)
	addi.d	$s2, $a1, %pc_lo12(_ZL18btUnitSpherePoints)
	blt	$s0, $a0, .LBB5_4
# %bb.1:                                # %for.body.preheader
	move	$s1, $zero
	addi.d	$s3, $s2, 672
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 136
	addi.d	$a2, $sp, 184
	move	$a1, $s1
	jirl	$ra, $a3, 0
	vld	$vr0, $sp, 184
	vst	$vr0, $s3, 0
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, 16
	bne	$s0, $s1, .LBB5_2
# %bb.3:                                # %if.end.loopexit
	addi.w	$s0, $s1, 42
	b	.LBB5_5
.LBB5_4:
	ori	$s0, $zero, 42
.LBB5_5:                                # %if.end
	move	$s1, $zero
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$s3, $a0, 4
	addi.d	$s4, $sp, 184
	.p2align	4, , 16
.LBB5_6:                                # %for.body9
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 96
	add.d	$a1, $s2, $s1
	jirl	$ra, $a2, 0
	add.d	$a2, $s4, $s1
	stx.d	$a0, $s1, $s4
	addi.d	$s1, $s1, 16
	st.d	$a1, $a2, 8
	bne	$s3, $s1, .LBB5_6
# %bb.7:                                # %invoke.cont
	lu12i.w	$a0, 1
	lu32i.d	$a0, 4096
	st.d	$a0, $sp, 176
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 152
	st.w	$s0, $sp, 156
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 160
	ori	$a0, $zero, 16
	lu32i.d	$a0, 201327
	lu52i.d	$a0, $a0, 936
	st.d	$a0, $sp, 168
	st.b	$s1, $sp, 112
	st.d	$zero, $sp, 104
	st.d	$zero, $sp, 92
	st.b	$s1, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	st.b	$s1, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$zero, $sp, 20
	st.b	$s1, $sp, 80
	st.d	$zero, $sp, 72
	st.d	$zero, $sp, 60
	st.b	$s1, $sp, 8
	st.w	$zero, $sp, 12
	st.d	$zero, $sp, 48
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:                                # %invoke.cont23
	move	$s0, $a0
	beq	$a0, $s1, .LBB5_54
# %bb.9:                                # %if.end27
	ld.w	$s2, $sp, 12
	ld.w	$a0, $fp, 4
	move	$a1, $s2
	bge	$a0, $s2, .LBB5_21
# %bb.10:                               # %if.then5.i
	ld.w	$a2, $fp, 8
	move	$a1, $s2
	bge	$a2, $s2, .LBB5_21
# %bb.11:                               # %if.then.i.i
	beqz	$s2, .LBB5_14
# %bb.12:                               # %if.then.i.i.i
	slli.d	$a0, $s2, 4
.Ltmp15:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.13:                               # %call.i.i.i.i.noexc
	move	$s1, $a0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB5_15
	b	.LBB5_17
.LBB5_14:
	move	$s1, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_17
.LBB5_15:                               # %for.body.lr.ph.i.i.i
	move	$a1, $zero
	slli.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB5_16:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a1
	vstx	$vr0, $s1, $a1
	addi.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB5_16
.LBB5_17:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_20
# %bb.18:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_20
# %bb.19:                               # %if.then2.i.i.i
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
.LBB5_20:                               # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $sp, 12
	st.b	$a0, $fp, 24
	st.d	$s1, $fp, 16
	st.w	$s2, $fp, 8
.LBB5_21:                               # %invoke.cont31
	ori	$a0, $zero, 1
	st.w	$s2, $fp, 4
	blt	$a1, $a0, .LBB5_24
# %bb.22:                               # %for.body35.lr.ph
	move	$a0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB5_23:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 32
	ld.d	$a3, $fp, 16
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $a3, $a0
	ld.w	$a2, $sp, 12
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 16
	blt	$a1, $a2, .LBB5_23
.LBB5_24:                               # %for.end43
	ld.w	$s2, $sp, 52
	ld.w	$s3, $fp, 36
	st.w	$s2, $fp, 64
	move	$a0, $s2
	bge	$s3, $s2, .LBB5_50
# %bb.25:                               # %if.then5.i38
	ld.w	$a0, $fp, 40
	bge	$a0, $s2, .LBB5_33
# %bb.26:                               # %if.then.i.i49
	beqz	$s2, .LBB5_34
# %bb.27:                               # %if.then.i.i.i51
	slli.d	$a0, $s2, 2
.Ltmp20:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.28:                               # %call.i.i.i.i.noexc70
	move	$s1, $a0
	ld.w	$a1, $fp, 36
	ld.d	$a0, $fp, 48
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB5_35
.LBB5_29:                               # %iter.check
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB5_44
# %bb.30:                               # %iter.check
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB5_44
# %bb.31:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB5_37
# %bb.32:
	move	$a2, $zero
	b	.LBB5_41
.LBB5_33:                               # %if.then5.i38.for.body10.lr.ph.i41_crit_edge
	ld.d	$s1, $fp, 48
	b	.LBB5_49
.LBB5_34:
	move	$s1, $zero
	move	$a1, $s3
	ld.d	$a0, $fp, 48
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB5_29
.LBB5_35:                               # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	beqz	$a0, .LBB5_48
# %bb.36:                               # %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	bnez	$a1, .LBB5_47
	b	.LBB5_48
.LBB5_37:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_38:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB5_38
# %bb.39:                               # %middle.block
	beq	$a2, $a1, .LBB5_46
# %bb.40:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB5_44
.LBB5_41:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s1, 2
	.p2align	4, , 16
.LBB5_42:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB5_42
# %bb.43:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB5_46
.LBB5_44:                               # %for.body.i.i.i64.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s1, 2
	.p2align	4, , 16
.LBB5_45:                               # %for.body.i.i.i64
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB5_45
.LBB5_46:                               # %if.then.i7.i.i
	ld.bu	$a1, $fp, 56
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB5_48
.LBB5_47:                               # %if.then2.i.i.i61
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
.LBB5_48:                               # %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$s1, $fp, 48
	st.w	$s2, $fp, 40
.LBB5_49:                               # %for.body10.lr.ph.i41
	alsl.d	$a0, $s3, $s1, 2
	sub.d	$a1, $s2, $s3
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 64
.LBB5_50:                               # %invoke.cont47
	ori	$a1, $zero, 1
	st.w	$s2, $fp, 36
	blt	$a0, $a1, .LBB5_53
# %bb.51:                               # %for.body51.lr.ph
	ld.d	$a0, $sp, 72
	ld.d	$a1, $fp, 48
	move	$a2, $zero
	.p2align	4, , 16
.LBB5_52:                               # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	st.w	$a3, $a1, 0
	ld.w	$a3, $fp, 64
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	blt	$a2, $a3, .LBB5_52
.LBB5_53:                               # %for.end59
.Ltmp25:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN11HullLibrary13ReleaseResultER10HullResult)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB5_54:                               # %cleanup
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB5_57
# %bb.55:                               # %cleanup
	ld.b	$a1, $sp, 80
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_57
# %bb.56:                               # %if.then2.i.i.i.i
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
.LBB5_57:                               # %invoke.cont.i
	ld.d	$a0, $sp, 32
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 80
	st.d	$zero, $sp, 72
	st.d	$zero, $sp, 60
	beqz	$a0, .LBB5_60
# %bb.58:                               # %invoke.cont.i
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_60
# %bb.59:                               # %if.then2.i.i.i8.i
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
.LBB5_60:                               # %invoke.cont62
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB5_63
# %bb.61:                               # %invoke.cont62
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_63
# %bb.62:                               # %if.then2.i.i.i.i96
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
.LBB5_63:                               # %invoke.cont.i85
	ld.d	$a0, $sp, 104
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	beqz	$a0, .LBB5_66
# %bb.64:                               # %invoke.cont.i85
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_66
# %bb.65:                               # %if.then2.i.i.i8.i95
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %_ZN11HullLibraryD2Ev.exit
	addi.d	$a0, $s0, -1
	sltu	$a0, $zero, $a0
	ld.d	$s4, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1224                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1232
	ret
.LBB5_67:                               # %lpad46
.Ltmp24:                                # EH_LABEL
	b	.LBB5_79
.LBB5_68:                               # %lpad29
.Ltmp19:                                # EH_LABEL
	b	.LBB5_79
.LBB5_69:                               # %lpad.i97
.Ltmp44:                                # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	beqz	$a1, .LBB5_81
# %bb.70:                               # %lpad.i97
	ld.b	$a0, $sp, 112
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_81
# %bb.71:                               # %if.then2.i.i.i116
.Ltmp45:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
	b	.LBB5_81
.LBB5_72:                               # %terminate.lpad.i98
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_73:                               # %lpad
.Ltmp38:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB5_80
.LBB5_74:                               # %lpad.i
.Ltmp32:                                # EH_LABEL
	ld.d	$a1, $sp, 32
	move	$fp, $a0
	beqz	$a1, .LBB5_80
# %bb.75:                               # %lpad.i
	ld.b	$a0, $sp, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_80
# %bb.76:                               # %if.then2.i.i.i107
.Ltmp33:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
	b	.LBB5_80
.LBB5_77:                               # %terminate.lpad.i
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %lpad22
.Ltmp27:                                # EH_LABEL
.LBB5_79:                               # %ehcleanup
	move	$fp, $a0
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN10HullResultD2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
.LBB5_80:                               # %ehcleanup65
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN11HullLibraryD2Ev)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
.LBB5_81:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_82:                               # %terminate.lpad
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN11btShapeHull9buildHullEf, .Lfunc_end5-_ZN11btShapeHull9buildHullEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp18-.Ltmp15                #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin1          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin1          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp33-.Ltmp46                #   Call between .Ltmp46 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp28-.Ltmp34                #   Call between .Ltmp34 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp40-.Ltmp28                #   Call between .Ltmp28 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Lfunc_end5-.Ltmp40            #   Call between .Ltmp40 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10HullResultD2Ev,"axG",@progbits,_ZN10HullResultD2Ev,comdat
	.weak	_ZN10HullResultD2Ev             # -- Begin function _ZN10HullResultD2Ev
	.p2align	2
	.type	_ZN10HullResultD2Ev,@function
_ZN10HullResultD2Ev:                    # @_ZN10HullResultD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB6_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 72
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_3
# %bb.2:                                # %if.then2.i.i.i
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
.LBB6_3:                                # %invoke.cont
	ld.d	$a0, $fp, 24
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 72
	st.d	$zero, $fp, 64
	st.d	$zero, $fp, 52
	beqz	$a0, .LBB6_6
# %bb.4:                                # %invoke.cont
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_6
# %bb.5:                                # %if.then2.i.i.i8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
	st.b	$s0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_7:                                # %lpad
.Ltmp50:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.8:                                # %eh.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_9:                                # %terminate.lpad
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN10HullResultD2Ev, .Lfunc_end6-_ZN10HullResultD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10HullResultD2Ev,"aG",@progbits,_ZN10HullResultD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp49                #   Call between .Ltmp49 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp52            #   Call between .Ltmp52 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11HullLibraryD2Ev,"axG",@progbits,_ZN11HullLibraryD2Ev,comdat
	.weak	_ZN11HullLibraryD2Ev            # -- Begin function _ZN11HullLibraryD2Ev
	.p2align	2
	.type	_ZN11HullLibraryD2Ev,@function
_ZN11HullLibraryD2Ev:                   # @_ZN11HullLibraryD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	ld.d	$a0, $a0, 48
	beqz	$a0, .LBB7_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_3
# %bb.2:                                # %if.then2.i.i.i
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
.LBB7_3:                                # %invoke.cont
	ld.d	$a0, $fp, 16
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	beqz	$a0, .LBB7_6
# %bb.4:                                # %invoke.cont
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_6
# %bb.5:                                # %if.then2.i.i.i8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB7_6:                                # %_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev.exit
	st.b	$s0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_7:                                # %lpad
.Ltmp56:                                # EH_LABEL
	move	$s0, $a0
.Ltmp57:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.8:                                # %eh.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %terminate.lpad
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN11HullLibraryD2Ev, .Lfunc_end7-_ZN11HullLibraryD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11HullLibraryD2Ev,"aG",@progbits,_ZN11HullLibraryD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin3          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp57-.Ltmp55                #   Call between .Ltmp55 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin3          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Lfunc_end7-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK11btShapeHull12numTrianglesEv # -- Begin function _ZNK11btShapeHull12numTrianglesEv
	.p2align	2
	.type	_ZNK11btShapeHull12numTrianglesEv,@function
_ZNK11btShapeHull12numTrianglesEv:      # @_ZNK11btShapeHull12numTrianglesEv
# %bb.0:                                # %entry
	ld.wu	$a0, $a0, 64
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 33
	ret
.Lfunc_end8:
	.size	_ZNK11btShapeHull12numTrianglesEv, .Lfunc_end8-_ZNK11btShapeHull12numTrianglesEv
                                        # -- End function
	.globl	_ZNK11btShapeHull11numVerticesEv # -- Begin function _ZNK11btShapeHull11numVerticesEv
	.p2align	2
	.type	_ZNK11btShapeHull11numVerticesEv,@function
_ZNK11btShapeHull11numVerticesEv:       # @_ZNK11btShapeHull11numVerticesEv
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 4
	ret
.Lfunc_end9:
	.size	_ZNK11btShapeHull11numVerticesEv, .Lfunc_end9-_ZNK11btShapeHull11numVerticesEv
                                        # -- End function
	.globl	_ZNK11btShapeHull10numIndicesEv # -- Begin function _ZNK11btShapeHull10numIndicesEv
	.p2align	2
	.type	_ZNK11btShapeHull10numIndicesEv,@function
_ZNK11btShapeHull10numIndicesEv:        # @_ZNK11btShapeHull10numIndicesEv
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 64
	ret
.Lfunc_end10:
	.size	_ZNK11btShapeHull10numIndicesEv, .Lfunc_end10-_ZNK11btShapeHull10numIndicesEv
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.p2align	2
	.type	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev,@function
_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev: # @_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB11_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB11_3:                               # %_ZN20btAlignedObjectArrayIP14btHullTriangleE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev, .Lfunc_end11-_ZN20btAlignedObjectArrayIP14btHullTriangleED2Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZL18btUnitSpherePoints,@object # @_ZL18btUnitSpherePoints
	.data
	.p2align	2, 0x0
_ZL18btUnitSpherePoints:
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf64f91a                      # float -0.894425988
	.word	0x80000000                      # float -0
	.word	0xbee4f97f                      # float -0.447216004
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0xbee4fa05                      # float -0.447219998
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0x3ee4fa05                      # float 0.447219998
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3f64f91a                      # float 0.894425988
	.word	0x00000000                      # float 0
	.word	0x3ee4f97f                      # float 0.447216004
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3f59c411                      # float 0.850647985
	.word	0x80000000                      # float -0
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbf06963e                      # float -0.525730014
	.word	0x80000000                      # float -0
	.word	0xbf59c454                      # float -0.850651979
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x3f800000                      # float 1
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0xbf59c411                      # float -0.850647985
	.word	0x00000000                      # float 0
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0x3f06963e                      # float 0.525730014
	.word	0x00000000                      # float 0
	.word	0x3f59c454                      # float 0.850651979
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.size	_ZL18btUnitSpherePoints, 992

	.globl	_ZN11btShapeHullC1EPK13btConvexShape
	.type	_ZN11btShapeHullC1EPK13btConvexShape,@function
_ZN11btShapeHullC1EPK13btConvexShape = _ZN11btShapeHullC2EPK13btConvexShape
	.globl	_ZN11btShapeHullD1Ev
	.type	_ZN11btShapeHullD1Ev,@function
_ZN11btShapeHullD1Ev = _ZN11btShapeHullD2Ev
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
	.addrsig_sym _ZL18btUnitSpherePoints
