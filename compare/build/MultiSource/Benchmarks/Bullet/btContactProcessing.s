	.file	"btContactProcessing.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN14btContactArray14merge_contactsERKS_b
.LCPI0_0:
	.word	0x447a0000                      # float 1000
.LCPI0_1:
	.word	0x44a6a000                      # float 1333
.LCPI0_2:
	.word	0x45055000                      # float 2133
.LCPI0_3:
	.word	0x3727c5ac                      # float 9.99999974E-6
.LCPI0_4:
	.word	0xb727c5ac                      # float -9.99999974E-6
	.text
	.globl	_ZN14btContactArray14merge_contactsERKS_b
	.p2align	2
	.type	_ZN14btContactArray14merge_contactsERKS_b,@function
_ZN14btContactArray14merge_contactsERKS_b: # @_ZN14btContactArray14merge_contactsERKS_b
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a0, .LBB0_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
	st.d	$zero, $fp, 4
	ld.w	$s3, $s0, 4
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	beqz	$s3, .LBB0_84
# %bb.4:                                # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
	bne	$s3, $a0, .LBB0_12
# %bb.5:                                # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
	ld.d	$s1, $s0, 16
	ori	$a0, $zero, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$a1, $a2, .LBB0_8
# %bb.6:                                # %for.body.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 4
	.p2align	4, , 16
.LBB0_7:                                # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a2, 16
	add.d	$a3, $s0, $a0
	vst	$vr0, $a3, 16
	fld.s	$fa0, $a2, 32
	ld.w	$a4, $a2, 40
	ld.w	$a2, $a2, 44
	fst.s	$fa0, $a3, 32
	st.w	$a4, $a3, 40
	addi.d	$a0, $a0, 48
	st.w	$a2, $a3, 44
	bne	$a1, $a0, .LBB0_7
.LBB0_8:                                # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_11
# %bb.9:                                # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_11
# %bb.10:                               # %if.then2.i.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	ld.w	$a1, $fp, 4
	st.w	$a0, $fp, 8
	vld	$vr0, $s1, 0
	slli.d	$a0, $a1, 5
	alsl.d	$a0, $a1, $a0, 4
	vstx	$vr0, $s0, $a0
	vld	$vr0, $s1, 16
	add.d	$a0, $s0, $a0
	vst	$vr0, $a0, 16
	fld.s	$fa0, $s1, 32
	ld.w	$a1, $s1, 40
	ld.w	$a2, $s1, 44
	ld.w	$a3, $fp, 4
	fst.s	$fa0, $a0, 32
	st.w	$a1, $a0, 40
	st.w	$a2, $a0, 44
	addi.d	$a0, $a3, 1
	st.w	$a0, $fp, 4
	b	.LBB0_84
.LBB0_12:                               # %if.end6
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	st.b	$s1, $sp, 176
	st.d	$zero, $sp, 168
	st.d	$zero, $sp, 156
	slli.d	$a0, $s3, 3
.Ltmp0:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.13:                               # %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i
	move	$s2, $a0
	ld.w	$a1, $sp, 156
	ld.d	$a0, $sp, 168
	blt	$a1, $s1, .LBB0_17
# %bb.14:                               # %for.body.lr.ph.i.i
	addi.d	$a2, $a0, 4
	addi.d	$a3, $s2, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_15:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, -4
	st.d	$a5, $a3, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_15
# %bb.16:                               # %if.then.i7.i
	ld.bu	$a2, $sp, 176
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB0_19
	b	.LBB0_21
.LBB0_17:                               # %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i
	beqz	$a0, .LBB0_21
# %bb.18:                               # %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i
	ld.b	$a2, $sp, 176
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_21
.LBB0_19:                               # %if.then2.i.i51
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.20:                               # %if.then2.i.i51.if.end.i.i_crit_edge
	ld.w	$a1, $sp, 156
.LBB0_21:                               # %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit
	ld.w	$a0, $s0, 4
	ori	$s4, $zero, 1
	st.b	$s4, $sp, 176
	st.d	$s2, $sp, 168
	st.w	$s3, $sp, 160
	blt	$a0, $s4, .LBB0_36
# %bb.22:                               # %invoke.cont15.lr.ph
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.s	$fs1, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.s	$fs2, $a2, %pc_lo12(.LCPI0_2)
	move	$s5, $zero
	b	.LBB0_27
.LBB0_23:                               # %if.then2.i.i.i85
                                        #   in Loop: Header=BB0_27 Depth=1
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.24:                               # %.noexc95
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.w	$a1, $sp, 156
.LBB0_25:                               # %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.w	$a0, $s0, 4
	st.b	$s4, $sp, 176
	st.d	$s2, $sp, 168
	st.w	$s1, $sp, 160
	move	$s3, $s1
.LBB0_26:                               # %invoke.cont18
                                        #   in Loop: Header=BB0_27 Depth=1
	vldi	$vr0, -1168
	fmadd.s	$fa0, $fs5, $fs0, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	fmul.s	$fa0, $fs4, $fs1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	vldi	$vr0, -1272
	fmadd.s	$fa0, $fs3, $fs2, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	alsl.d	$a2, $a3, $a2, 4
	slli.d	$a3, $a4, 8
	add.d	$a2, $a2, $a3
	alsl.d	$a3, $a1, $s2, 3
	slli.d	$a4, $a1, 3
	stx.w	$a2, $s2, $a4
	st.w	$s5, $a3, 4
	addi.w	$a1, $a1, 1
	addi.d	$s5, $s5, 1
	st.w	$a1, $sp, 156
	bge	$s5, $a0, .LBB0_36
.LBB0_27:                               # %invoke.cont15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	ld.d	$a2, $s0, 16
	slli.d	$a3, $s5, 5
	alsl.d	$a3, $s5, $a3, 4
	add.d	$a4, $a2, $a3
	fldx.s	$fs5, $a2, $a3
	fld.s	$fs4, $a4, 4
	fld.s	$fs3, $a4, 8
	bne	$a1, $s3, .LBB0_26
# %bb.28:                               # %if.then.i64
                                        #   in Loop: Header=BB0_27 Depth=1
	sltui	$a1, $s3, 1
	slli.w	$a2, $s3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s4, $a1
	or	$s1, $a1, $a2
	move	$a1, $s3
	bge	$s3, $s1, .LBB0_26
# %bb.29:                               # %if.then.i.i.i71
                                        #   in Loop: Header=BB0_27 Depth=1
	slli.d	$a0, $s1, 3
.Ltmp4:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.30:                               # %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	move	$s2, $a0
	ld.w	$a1, $sp, 156
	ld.d	$a0, $sp, 168
	blt	$a1, $s4, .LBB0_34
# %bb.31:                               # %for.body.lr.ph.i.i.i86
                                        #   in Loop: Header=BB0_27 Depth=1
	addi.d	$a2, $a0, 4
	addi.d	$a3, $s2, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_32:                               # %for.body.i.i.i88
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a2, -4
	st.d	$a5, $a3, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_32
# %bb.33:                               # %if.then.i7.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.bu	$a2, $sp, 176
	beq	$a2, $s4, .LBB0_23
	b	.LBB0_25
.LBB0_34:                               # %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	beqz	$a0, .LBB0_25
# %bb.35:                               # %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.b	$a2, $sp, 176
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_23
	b	.LBB0_25
.LBB0_36:                               # %for.end
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_39
# %bb.37:                               # %if.then.i98
	addi.w	$a3, $a1, -1
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 152
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.38:                               # %if.then.i98.invoke.cont19_crit_edge
	ld.d	$s2, $sp, 168
.LBB0_39:                               # %invoke.cont19
	ld.w	$s3, $s2, 0
	ld.w	$s4, $s2, 4
	ld.w	$a0, $fp, 4
	ld.w	$a1, $fp, 8
	ld.d	$s5, $s0, 16
	bne	$a0, $a1, .LBB0_51
# %bb.40:                               # %if.then.i122
	sltui	$a1, $a0, 1
	slli.w	$a2, $a0, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a2
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	bge	$a0, $s6, .LBB0_52
# %bb.41:                               # %if.then.i.i127
	beqz	$s6, .LBB0_44
# %bb.42:                               # %if.then.i.i.i129
	slli.d	$a0, $s6, 5
	alsl.d	$a0, $s6, $a0, 4
.Ltmp12:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.43:                               # %call.i.i.i.i132.noexc
	move	$s2, $a0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB0_45
	b	.LBB0_47
.LBB0_44:
	move	$s2, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_47
.LBB0_45:                               # %for.body.lr.ph.i.i.i146
	move	$a1, $zero
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 4
	.p2align	4, , 16
.LBB0_46:                               # %for.body.i.i.i149
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a1
	add.d	$a2, $a2, $a1
	vstx	$vr0, $s2, $a1
	vld	$vr0, $a2, 16
	add.d	$a3, $s2, $a1
	vst	$vr0, $a3, 16
	fld.s	$fa0, $a2, 32
	ld.w	$a4, $a2, 40
	ld.w	$a2, $a2, 44
	fst.s	$fa0, $a3, 32
	st.w	$a4, $a3, 40
	addi.d	$a1, $a1, 48
	st.w	$a2, $a3, 44
	bne	$a0, $a1, .LBB0_46
.LBB0_47:                               # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i137
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_50
# %bb.48:                               # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i137
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_50
# %bb.49:                               # %if.then2.i.i.i145
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
.LBB0_50:                               # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE10deallocateEv.exit.i.i143
	ori	$a1, $zero, 1
	ld.w	$a0, $fp, 4
	st.b	$a1, $fp, 24
	st.d	$s2, $fp, 16
	st.w	$s6, $fp, 8
.LBB0_51:                               # %invoke.cont30
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
.LBB0_52:                               # %invoke.cont30
	slli.d	$a1, $s4, 5
	alsl.d	$a1, $s4, $a1, 4
	add.d	$a1, $s5, $a1
	ld.d	$a2, $fp, 16
	vld	$vr0, $a1, 0
	slli.d	$a3, $a0, 5
	alsl.d	$a0, $a0, $a3, 4
	vstx	$vr0, $a2, $a0
	vld	$vr0, $a1, 16
	add.d	$a0, $a2, $a0
	vst	$vr0, $a0, 16
	fld.s	$fa0, $a1, 32
	ld.w	$a2, $a1, 40
	fst.s	$fa0, $a0, 32
	ld.w	$a3, $a1, 44
	ld.w	$a4, $fp, 4
	st.w	$a2, $a0, 40
	ld.w	$a1, $sp, 156
	st.w	$a3, $a0, 44
	addi.d	$a0, $a4, 1
	ori	$a2, $zero, 2
	st.w	$a0, $fp, 4
	blt	$a1, $a2, .LBB0_81
# %bb.53:                               # %for.body38.preheader
	move	$s6, $zero
	ld.d	$a0, $fp, 16
	ori	$t0, $zero, 1
	addi.d	$s4, $sp, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI0_4)
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	fld.s	$fs1, $a2, %pc_lo12(.LCPI0_3)
	ori	$t1, $zero, 48
	ori	$s7, $zero, 1
	ori	$s8, $zero, 1
	b	.LBB0_57
.LBB0_54:                               # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE10deallocateEv.exit.i.i217
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 24
	st.d	$s2, $fp, 16
	ori	$t0, $zero, 1
	st.w	$s1, $fp, 8
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ori	$t1, $zero, 48
.LBB0_55:                               # %invoke.cont74
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a1, $fp, 16
	vld	$vr0, $s5, 0
	mul.d	$a0, $a0, $t1
	vstx	$vr0, $a1, $a0
	vld	$vr0, $s5, 16
	add.d	$a0, $a1, $a0
	vst	$vr0, $a0, 16
	fld.s	$fa0, $s5, 32
	ld.w	$a1, $s5, 40
	ld.w	$a2, $s5, 44
	ld.w	$a3, $fp, 4
	fst.s	$fa0, $a0, 32
	st.w	$a1, $a0, 40
	st.w	$a2, $a0, 44
	addi.d	$a0, $a3, 1
	ld.d	$a2, $fp, 16
	ld.w	$a1, $sp, 156
	st.w	$a0, $fp, 4
	mul.d	$a0, $a3, $t1
	add.d	$a0, $a2, $a0
.LBB0_56:                               # %if.end80
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.d	$s7, $s7, 1
	bge	$s7, $a1, .LBB0_81
.LBB0_57:                               # %for.body38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_77 Depth 2
	ld.d	$a2, $sp, 168
	move	$a3, $s3
	alsl.d	$a4, $s7, $a2, 3
	slli.d	$a5, $s7, 3
	ld.w	$a4, $a4, 4
	ldx.w	$s3, $a2, $a5
	ld.d	$a2, $s0, 16
	slli.d	$a5, $a4, 5
	alsl.d	$a4, $a4, $a5, 4
	add.d	$s5, $a2, $a4
	bne	$a3, $s3, .LBB0_60
# %bb.58:                               # %if.then49
                                        #   in Loop: Header=BB0_57 Depth=1
	fld.s	$fa0, $a0, 32
	fld.s	$fa1, $s5, 32
	fadd.s	$fa2, $fa0, $fs0
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_71
# %bb.59:                               # %if.then52
                                        #   in Loop: Header=BB0_57 Depth=1
	vld	$vr0, $s5, 32
	vst	$vr0, $a0, 32
	xvld	$xr0, $s5, 0
	move	$s6, $zero
	xvst	$xr0, $a0, 0
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_60:                               # %if.else68
                                        #   in Loop: Header=BB0_57 Depth=1
	beqz	$a6, .LBB0_66
# %bb.61:                               # %if.else68
                                        #   in Loop: Header=BB0_57 Depth=1
	blt	$s6, $t0, .LBB0_66
# %bb.62:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB0_57 Depth=1
	fld.s	$fa1, $a0, 16
	fld.s	$fa2, $a0, 20
	fld.s	$fa0, $a0, 24
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_63:                               # %for.body.i
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a1, -8
	fld.s	$fa4, $a1, -4
	fld.s	$fa5, $a1, 0
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	addi.d	$s6, $s6, -1
	addi.d	$a1, $a1, 16
	bnez	$s6, .LBB0_63
# %bb.64:                               # %for.cond.cleanup.i
                                        #   in Loop: Header=BB0_57 Depth=1
	fmul.s	$fa3, $fa2, $fa2
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	move	$s6, $zero
	fcmp.clt.s	$fcc0, $fa3, $fs1
	bcnez	$fcc0, .LBB0_66
# %bb.65:                               # %if.end.i
                                        #   in Loop: Header=BB0_57 Depth=1
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 16
	st.d	$a2, $a0, 24
.LBB0_66:                               # %if.end73
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a0, $fp, 4
	ld.w	$a1, $fp, 8
	bne	$a0, $a1, .LBB0_55
# %bb.67:                               # %if.then.i196
                                        #   in Loop: Header=BB0_57 Depth=1
	sltui	$a1, $a0, 1
	slli.w	$a2, $a0, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $t0, $a1
	or	$s1, $a1, $a2
	bge	$a0, $s1, .LBB0_55
# %bb.68:                               # %if.then.i.i201
                                        #   in Loop: Header=BB0_57 Depth=1
	beqz	$s1, .LBB0_75
# %bb.69:                               # %if.then.i.i.i203
                                        #   in Loop: Header=BB0_57 Depth=1
	slli.d	$a0, $s1, 5
	alsl.d	$a0, $s1, $a0, 4
.Ltmp17:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.70:                               # %call.i.i.i.i206.noexc
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$s2, $a0
	ld.w	$a0, $fp, 4
	bge	$a0, $s8, .LBB0_76
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_71:                               # %if.else
                                        #   in Loop: Header=BB0_57 Depth=1
	beqz	$a6, .LBB0_56
# %bb.72:                               # %if.then53
                                        #   in Loop: Header=BB0_57 Depth=1
	fsub.s	$fa0, $fa0, $fa1
	fabs.s	$fa0, $fa0
	fcmp.cule.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_56
# %bb.73:                               # %if.then53
                                        #   in Loop: Header=BB0_57 Depth=1
	ori	$a2, $zero, 7
	blt	$a2, $s6, .LBB0_56
# %bb.74:                               # %if.then62
                                        #   in Loop: Header=BB0_57 Depth=1
	vld	$vr0, $s5, 16
	slli.d	$a2, $s6, 4
	addi.d	$a3, $sp, 24
	vstx	$vr0, $a2, $a3
	addi.w	$s6, $s6, 1
	b	.LBB0_56
.LBB0_75:                               #   in Loop: Header=BB0_57 Depth=1
	move	$s2, $zero
	blt	$a0, $s8, .LBB0_78
.LBB0_76:                               # %for.body.lr.ph.i.i.i220
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$a1, $zero
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 4
	.p2align	4, , 16
.LBB0_77:                               # %for.body.i.i.i223
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a1
	add.d	$a2, $a2, $a1
	vstx	$vr0, $s2, $a1
	vld	$vr0, $a2, 16
	add.d	$a3, $s2, $a1
	vst	$vr0, $a3, 16
	fld.s	$fa0, $a2, 32
	ld.w	$a4, $a2, 40
	ld.w	$a2, $a2, 44
	fst.s	$fa0, $a3, 32
	st.w	$a4, $a3, 40
	addi.d	$a1, $a1, 48
	st.w	$a2, $a3, 44
	bne	$a0, $a1, .LBB0_77
.LBB0_78:                               # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i211
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_54
# %bb.79:                               # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i211
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_54
# %bb.80:                               # %if.then2.i.i.i219
                                        #   in Loop: Header=BB0_57 Depth=1
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
	b	.LBB0_54
.LBB0_81:                               # %for.end83
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB0_84
# %bb.82:                               # %for.end83
	ld.b	$a1, $sp, 176
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_84
# %bb.83:                               # %if.then2.i.i.i249
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %cleanup
	fld.d	$fs5, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
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
.LBB0_85:                               # %lpad25
.Ltmp16:                                # EH_LABEL
	b	.LBB0_89
.LBB0_86:                               # %lpad
.Ltmp11:                                # EH_LABEL
	b	.LBB0_89
.LBB0_87:                               # %lpad42
.Ltmp21:                                # EH_LABEL
	b	.LBB0_89
.LBB0_88:                               # %lpad12
.Ltmp8:                                 # EH_LABEL
.LBB0_89:                               # %ehcleanup88
	move	$fp, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB0_92
# %bb.90:                               # %ehcleanup88
	ld.b	$a1, $sp, 176
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_92
# %bb.91:                               # %if.then2.i.i.i257
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
.LBB0_92:                               # %invoke.cont89
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_93:                               # %terminate.lpad
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN14btContactArray14merge_contactsERKS_b, .Lfunc_end0-_ZN14btContactArray14merge_contactsERKS_b
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
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp5
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp15-.Ltmp12                #   Call between .Ltmp12 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end0-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end0
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN14btContactArray21merge_contacts_uniqueERKS_ # -- Begin function _ZN14btContactArray21merge_contacts_uniqueERKS_
	.p2align	2
	.type	_ZN14btContactArray21merge_contacts_uniqueERKS_,@function
_ZN14btContactArray21merge_contacts_uniqueERKS_: # @_ZN14btContactArray21merge_contacts_uniqueERKS_
	.cfi_startproc
# %bb.0:                                # %entry
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a1
	beqz	$a0, .LBB2_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.2:                                # %if.then2.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
	st.d	$zero, $fp, 4
	ld.w	$a0, $s0, 4
	ori	$s2, $zero, 1
	st.b	$s2, $fp, 24
	st.d	$zero, $fp, 16
	bne	$a0, $s2, .LBB2_11
# %bb.4:                                # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
	ld.d	$s1, $s0, 16
	ori	$a0, $zero, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s0, $a0
	blt	$a1, $s2, .LBB2_7
# %bb.5:                                # %for.body.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 4
	.p2align	4, , 16
.LBB2_6:                                # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a2, 16
	add.d	$a3, $s0, $a0
	vst	$vr0, $a3, 16
	fld.s	$fa0, $a2, 32
	ld.w	$a4, $a2, 40
	ld.w	$a2, $a2, 44
	fst.s	$fa0, $a3, 32
	st.w	$a4, $a3, 40
	addi.d	$a0, $a0, 48
	st.w	$a2, $a3, 44
	bne	$a1, $a0, .LBB2_6
.LBB2_7:                                # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB2_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_10
# %bb.9:                                # %if.then2.i.i.i
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	ld.w	$a1, $fp, 4
	st.w	$a0, $fp, 8
	vld	$vr0, $s1, 0
	slli.d	$a0, $a1, 5
	alsl.d	$a0, $a1, $a0, 4
	vstx	$vr0, $s0, $a0
	vld	$vr0, $s1, 16
	add.d	$a0, $s0, $a0
	vst	$vr0, $a0, 16
	fld.s	$fa0, $s1, 32
	ld.w	$a1, $s1, 40
	ld.w	$a2, $s1, 44
	ld.w	$a3, $fp, 4
	fst.s	$fa0, $a0, 32
	st.w	$a1, $a0, 40
	st.w	$a2, $a0, 44
	addi.d	$a0, $a3, 1
	st.w	$a0, $fp, 4
.LBB2_11:                               # %return
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	_ZN14btContactArray21merge_contacts_uniqueERKS_, .Lfunc_end2-_ZN14btContactArray21merge_contacts_uniqueERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii,"axG",@progbits,_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii,comdat
	.weak	_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii # -- Begin function _ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii
	.p2align	2
	.type	_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii,@function
_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii: # @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %if.end19
                                        #   in Loop: Header=BB3_2 Depth=1
	bge	$s0, $fp, .LBB3_12
.LBB3_2:                                # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_5 Depth 3
                                        #       Child Loop BB3_7 Depth 3
	move	$a2, $s0
	ld.d	$a0, $s1, 16
	add.d	$a1, $s0, $fp
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	ldx.w	$a0, $a0, $a1
	move	$a3, $fp
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %if.then
                                        #   in Loop: Header=BB3_4 Depth=2
	add.d	$a1, $a1, $a6
	ld.d	$a1, $a1, 8
	ld.d	$a5, $a4, 0
	st.d	$a1, $a4, 0
	ld.d	$a1, $s1, 16
	add.d	$a1, $a1, $a6
	st.d	$a5, $a1, 8
	blt	$a3, $s0, .LBB3_10
.LBB3_4:                                # %do.body
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
                                        #       Child Loop BB3_7 Depth 3
	ld.d	$a1, $s1, 16
	addi.d	$a5, $s0, -1
	alsl.d	$a4, $s0, $a1, 3
	addi.d	$a4, $a4, -8
	.p2align	4, , 16
.LBB3_5:                                # %while.cond
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 1
	addi.w	$s0, $s0, 1
	bltu	$a6, $a0, .LBB3_5
# %bb.6:                                # %while.cond5.preheader
                                        #   in Loop: Header=BB3_4 Depth=2
	addi.d	$a7, $a3, 1
	slli.d	$a6, $a3, 3
	.p2align	4, , 16
.LBB3_7:                                # %while.cond5
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$t0, $a1, $a6
	addi.d	$a7, $a7, -1
	addi.w	$a3, $a3, -1
	addi.d	$a6, $a6, -8
	bltu	$a0, $t0, .LBB3_7
# %bb.8:                                # %while.end11
                                        #   in Loop: Header=BB3_4 Depth=2
	bge	$a7, $a5, .LBB3_3
# %bb.9:                                #   in Loop: Header=BB3_4 Depth=2
	addi.w	$s0, $s0, -1
	addi.w	$a3, $a3, 1
	bge	$a3, $s0, .LBB3_4
.LBB3_10:                               # %do.end
                                        #   in Loop: Header=BB3_2 Depth=1
	bge	$a2, $a3, .LBB3_1
# %bb.11:                               # %if.then16
                                        #   in Loop: Header=BB3_2 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.LBB3_12:                               # %if.end25
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii, .Lfunc_end3-_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii
	.cfi_endproc
                                        # -- End function
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
