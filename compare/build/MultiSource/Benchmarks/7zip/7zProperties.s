	.file	"7zProperties.cpp"
	.text
	.globl	_ZN8NArchive3N7z8CHandler10FillPopIDsEv # -- Begin function _ZN8NArchive3N7z8CHandler10FillPopIDsEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CHandler10FillPopIDsEv,@function
_ZN8NArchive3N7z8CHandler10FillPopIDsEv: # @_ZN8NArchive3N7z8CHandler10FillPopIDsEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$s0, $a0, 880
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 16
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.w	$s2, $fp, 676
	ld.w	$a0, $sp, 28
	add.w	$a1, $a0, $s2
.Ltmp2:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:                                # %.noexc1.i
	blez	$s2, .LBB0_7
# %bb.3:                                # %for.body.lr.ph.i.i.i
	move	$s1, $zero
	slli.d	$s3, $s2, 3
	.p2align	4, , 16
.LBB0_4:                                # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 680
	ldx.d	$s2, $a0, $s1
.Ltmp5:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.5:                                # %.noexc2.i
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $sp, 28
	ld.d	$a1, $sp, 32
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.w	$s2, $a0, 1
	addi.d	$s1, $s1, 8
	st.w	$s2, $sp, 28
	bne	$s3, $s1, .LBB0_4
# %bb.6:                                # %_ZN13CRecordVectorIyEC2ERKS0_.exit
	bgtz	$s2, .LBB0_8
	b	.LBB0_89
.LBB0_7:                                # %_ZN13CRecordVectorIyEC2ERKS0_.exitthread-pre-split
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_8:                                # %for.body.lr.ph.i
	ld.d	$a0, $sp, 32
	move	$a1, $zero
	ori	$a2, $zero, 14
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a2, .LBB0_12
# %bb.10:                               # %for.inc.i
                                        #   in Loop: Header=BB0_9 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	bnez	$a3, .LBB0_9
# %bb.11:                               # %invoke.cont
	bgtz	$s2, .LBB0_14
	b	.LBB0_89
.LBB0_12:                               # %if.then.i
	ld.d	$a0, $sp, 16
	ld.d	$a3, $a0, 16
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
.Ltmp9:                                 # EH_LABEL
# %bb.13:                               # %if.then.i.invoke.cont_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_14:                               # %for.body.lr.ph.i3
	ld.d	$a0, $sp, 32
	move	$a1, $zero
	ori	$a2, $zero, 15
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_15:                               # %for.body.i6
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a2, .LBB0_18
# %bb.16:                               # %for.inc.i10
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	bnez	$a3, .LBB0_15
# %bb.17:                               # %invoke.cont2
	bgtz	$s2, .LBB0_20
	b	.LBB0_89
.LBB0_18:                               # %if.then.i13
	ld.d	$a0, $sp, 16
	ld.d	$a3, $a0, 16
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
.Ltmp11:                                # EH_LABEL
# %bb.19:                               # %if.then.i13.invoke.cont2_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_20:                               # %for.body.lr.ph.i19
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 17
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_21:                               # %for.body.i22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_24
# %bb.22:                               # %for.inc.i26
                                        #   in Loop: Header=BB0_21 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_21
# %bb.23:                               # %invoke.cont4
	bgtz	$s2, .LBB0_27
	b	.LBB0_89
.LBB0_24:                               # %if.then.i29
.Ltmp12:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.25:                               # %.noexc32
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp15:                                # EH_LABEL
# %bb.26:                               # %.noexc32.invoke.cont4_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_27:                               # %for.body.lr.ph.i36
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 16
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_28:                               # %for.body.i39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_31
# %bb.29:                               # %for.inc.i43
                                        #   in Loop: Header=BB0_28 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_28
# %bb.30:                               # %invoke.cont6
	bgtz	$s2, .LBB0_34
	b	.LBB0_89
.LBB0_31:                               # %if.then.i46
.Ltmp16:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.32:                               # %.noexc54
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 16
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
# %bb.33:                               # %.noexc54.invoke.cont6_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_34:                               # %for.body.lr.ph.i59
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 9
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_35:                               # %for.body.i62
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_38
# %bb.36:                               # %for.inc.i66
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_35
# %bb.37:                               # %invoke.cont8
	bgtz	$s2, .LBB0_41
	b	.LBB0_89
.LBB0_38:                               # %if.then.i69
.Ltmp20:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.39:                               # %.noexc77
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 9
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp23:                                # EH_LABEL
# %bb.40:                               # %.noexc77.invoke.cont8_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_41:                               # %for.body.lr.ph.i82
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 6
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_42:                               # %for.body.i85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_45
# %bb.43:                               # %for.inc.i89
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_42
# %bb.44:                               # %invoke.cont10
	bgtz	$s2, .LBB0_48
	b	.LBB0_89
.LBB0_45:                               # %if.then.i92
.Ltmp24:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.46:                               # %.noexc100
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 6
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp27:                                # EH_LABEL
# %bb.47:                               # %.noexc100.invoke.cont10_crit_edge
	ld.w	$s2, $sp, 28
	blez	$s2, .LBB0_89
.LBB0_48:                               # %for.body.lr.ph.i105
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 18
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_49:                               # %for.body.i108
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_51
# %bb.50:                               # %for.inc.i112
                                        #   in Loop: Header=BB0_49 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_49
	b	.LBB0_54
.LBB0_51:                               # %if.then.i115
.Ltmp28:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.52:                               # %.noexc123
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 18
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp31:                                # EH_LABEL
# %bb.53:                               # %.noexc123.invoke.cont12_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_54:                               # %invoke.cont12
	blez	$s2, .LBB0_89
# %bb.55:                               # %for.body.lr.ph.i128
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 20
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_56:                               # %for.body.i131
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_58
# %bb.57:                               # %for.inc.i135
                                        #   in Loop: Header=BB0_56 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_56
	b	.LBB0_61
.LBB0_58:                               # %if.then.i138
.Ltmp32:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.59:                               # %.noexc146
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 20
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp35:                                # EH_LABEL
# %bb.60:                               # %.noexc146.invoke.cont14_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_61:                               # %invoke.cont14
	blez	$s2, .LBB0_89
# %bb.62:                               # %for.body.lr.ph.i151
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 19
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_63:                               # %for.body.i154
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_65
# %bb.64:                               # %for.inc.i158
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_63
	b	.LBB0_68
.LBB0_65:                               # %if.then.i161
.Ltmp36:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.66:                               # %.noexc169
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 19
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp39:                                # EH_LABEL
# %bb.67:                               # %.noexc169.invoke.cont16_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_68:                               # %invoke.cont16
	blez	$s2, .LBB0_89
# %bb.69:                               # %for.body.lr.ph.i174
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 21
	move	$a2, $s2
.LBB0_70:                               # %for.body.i177
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_72
# %bb.71:                               # %for.inc.i181
                                        #   in Loop: Header=BB0_70 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_70
	b	.LBB0_75
.LBB0_72:                               # %if.then.i184
.Ltmp40:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.73:                               # %.noexc192
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 21
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
# %bb.74:                               # %.noexc192.invoke.cont18_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_75:                               # %invoke.cont18
	blez	$s2, .LBB0_89
# %bb.76:                               # %for.body.lr.ph.i197
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 10
	move	$a2, $s2
.LBB0_77:                               # %for.body.i200
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_79
# %bb.78:                               # %for.inc.i204
                                        #   in Loop: Header=BB0_77 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_77
	b	.LBB0_82
.LBB0_79:                               # %if.then.i207
.Ltmp44:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.80:                               # %.noexc215
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 10
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp47:                                # EH_LABEL
# %bb.81:                               # %.noexc215.invoke.cont20_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_82:                               # %invoke.cont20
	blez	$s2, .LBB0_89
# %bb.83:                               # %for.body.lr.ph.i220
	ld.d	$a0, $sp, 32
	move	$s1, $zero
	ori	$a1, $zero, 22
	move	$a2, $s2
.LBB0_84:                               # %for.body.i223
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	beq	$a3, $a1, .LBB0_86
# %bb.85:                               # %for.inc.i227
                                        #   in Loop: Header=BB0_84 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_84
	b	.LBB0_89
.LBB0_86:                               # %if.then.i230
.Ltmp48:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.87:                               # %.noexc238
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 22
	ld.d	$a4, $sp, 16
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
	ld.d	$a3, $a4, 16
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp51:                                # EH_LABEL
# %bb.88:                               # %.noexc238.invoke.cont22thread-pre-split_crit_edge
	ld.w	$s2, $sp, 28
.LBB0_89:                               # %invoke.cont22
	ld.w	$a0, $fp, 892
	add.w	$a1, $a0, $s2
.Ltmp52:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.90:                               # %.noexc251
	blez	$s2, .LBB0_94
# %bb.91:                               # %for.body.lr.ph.i242
	move	$s1, $zero
	slli.d	$s2, $s2, 3
	.p2align	4, , 16
.LBB0_92:                               # %for.body.i245
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32
	ldx.d	$s3, $a0, $s1
.Ltmp54:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.93:                               # %.noexc252
                                        #   in Loop: Header=BB0_92 Depth=1
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 8
	st.w	$a0, $fp, 892
	bne	$s2, $s1, .LBB0_92
.LBB0_94:                               # %invoke.cont24
.Ltmp57:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.95:                               # %invoke.cont26
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 97
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
.Ltmp59:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.96:                               # %invoke.cont29
	ld.w	$a0, $fp, 892
	ld.d	$a1, $fp, 896
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 98
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 892
.Ltmp61:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.97:                               # %invoke.cont32
	ld.w	$a1, $fp, 892
	ld.d	$a0, $fp, 896
	slli.d	$a2, $a1, 3
	ori	$a3, $zero, 99
	stx.d	$a3, $a0, $a2
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, 892
	bltz	$a1, .LBB0_102
# %bb.98:                               # %for.body.lr.ph.i269
	move	$a1, $zero
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 20
	.p2align	4, , 16
.LBB0_99:                               # %for.body.i272
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a3, .LBB0_101
# %bb.100:                              # %for.inc.i276
                                        #   in Loop: Header=BB0_99 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_99
	b	.LBB0_102
.LBB0_101:                              # %if.then.i279
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 16
.Ltmp63:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_102:                              # %cleanup.i
.Ltmp65:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.103:                              # %invoke.cont35
	ld.d	$a0, $fp, 896
	ld.w	$a2, $fp, 892
	ori	$a1, $zero, 20
	st.d	$a1, $a0, 0
	blez	$a2, .LBB0_108
# %bb.104:                              # %for.body.lr.ph.i289
	move	$a1, $zero
	ori	$a3, $zero, 6
	.p2align	4, , 16
.LBB0_105:                              # %for.body.i292
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a3, .LBB0_107
# %bb.106:                              # %for.inc.i296
                                        #   in Loop: Header=BB0_105 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_105
	b	.LBB0_108
.LBB0_107:                              # %if.then.i299
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 16
.Ltmp67:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp68:                                # EH_LABEL
.LBB0_108:                              # %cleanup.i287
.Ltmp69:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.109:                              # %invoke.cont37
	ld.d	$a0, $fp, 896
	ld.w	$a2, $fp, 892
	ori	$a1, $zero, 6
	st.d	$a1, $a0, 0
	blez	$a2, .LBB0_114
# %bb.110:                              # %for.body.lr.ph.i310
	move	$a1, $zero
	ori	$a3, $zero, 9
	.p2align	4, , 16
.LBB0_111:                              # %for.body.i313
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a3, .LBB0_113
# %bb.112:                              # %for.inc.i317
                                        #   in Loop: Header=BB0_111 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_111
	b	.LBB0_114
.LBB0_113:                              # %if.then.i320
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 16
.Ltmp71:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp72:                                # EH_LABEL
.LBB0_114:                              # %cleanup.i308
.Ltmp73:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.115:                              # %invoke.cont39
	ld.d	$a0, $fp, 896
	ld.w	$a2, $fp, 892
	ori	$a1, $zero, 9
	st.d	$a1, $a0, 0
	blez	$a2, .LBB0_120
# %bb.116:                              # %for.body.lr.ph.i331
	move	$a1, $zero
	ori	$a3, $zero, 17
	.p2align	4, , 16
.LBB0_117:                              # %for.body.i334
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	beq	$a4, $a3, .LBB0_119
# %bb.118:                              # %for.inc.i338
                                        #   in Loop: Header=BB0_117 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_117
	b	.LBB0_120
.LBB0_119:                              # %if.then.i341
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 16
.Ltmp75:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp76:                                # EH_LABEL
.LBB0_120:                              # %cleanup.i329
.Ltmp77:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector13InsertOneItemEi)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.121:                              # %invoke.cont41
	ld.d	$a0, $fp, 896
	ori	$a1, $zero, 17
	st.d	$a1, $a0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB0_122:                              # %lpad.loopexit.split-lp.i
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_126
.LBB0_123:                              # %lpad.loopexit.split-lp
.Ltmp79:                                # EH_LABEL
	b	.LBB0_126
.LBB0_124:                              # %lpad.loopexit
.Ltmp56:                                # EH_LABEL
	b	.LBB0_126
.LBB0_125:                              # %lpad.loopexit.i
.Ltmp7:                                 # EH_LABEL
.LBB0_126:                              # %lpad.i
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN8NArchive3N7z8CHandler10FillPopIDsEv, .Lfunc_end0-_ZN8NArchive3N7z8CHandler10FillPopIDsEv
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp53-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp53
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp78-.Ltmp57                #   Call between .Ltmp57 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp78            #   Call between .Ltmp78 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj # -- Begin function _ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj
	.p2align	5
	.type	_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj,@function
_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj: # @_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 892
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj, .Lfunc_end1-_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt # -- Begin function _ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt
	.p2align	5
	.type	_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt,@function
_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt: # @_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt
# %bb.0:                                # %entry
	move	$a5, $a0
	ld.w	$a6, $a0, 892
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	bge	$a1, $a6, .LBB2_16
# %bb.1:                                # %if.end
	ld.d	$a5, $a5, 896
	slli.d	$a1, $a1, 3
	ldx.d	$a5, $a5, $a1
	pcalau12i	$a1, %pc_hi20(_ZN8NArchive3N7z8kPropMapE)
	addi.d	$a1, $a1, %pc_lo12(_ZN8NArchive3N7z8kPropMapE)
	ld.d	$a6, $a1, 0
	bne	$a6, $a5, .LBB2_3
# %bb.2:
	move	$a6, $zero
	b	.LBB2_15
.LBB2_3:                                # %for.inc.i
	ld.d	$a7, $a1, 24
	ori	$a6, $zero, 1
	beq	$a7, $a5, .LBB2_15
# %bb.4:                                # %for.inc.1.i
	ld.d	$a7, $a1, 48
	ori	$a6, $zero, 2
	beq	$a7, $a5, .LBB2_15
# %bb.5:                                # %for.inc.2.i
	ld.d	$a7, $a1, 72
	ori	$a6, $zero, 3
	beq	$a7, $a5, .LBB2_15
# %bb.6:                                # %for.inc.3.i
	ld.d	$a7, $a1, 96
	ori	$a6, $zero, 4
	beq	$a7, $a5, .LBB2_15
# %bb.7:                                # %for.inc.4.i
	ld.d	$a7, $a1, 120
	ori	$a6, $zero, 5
	beq	$a7, $a5, .LBB2_15
# %bb.8:                                # %for.inc.5.i
	ld.d	$a7, $a1, 144
	ori	$a6, $zero, 6
	beq	$a7, $a5, .LBB2_15
# %bb.9:                                # %for.inc.6.i
	ld.d	$a7, $a1, 168
	ori	$a6, $zero, 7
	beq	$a7, $a5, .LBB2_15
# %bb.10:                               # %for.inc.7.i
	ld.d	$a7, $a1, 192
	ori	$a6, $zero, 8
	beq	$a7, $a5, .LBB2_15
# %bb.11:                               # %for.inc.8.i
	ld.d	$a7, $a1, 216
	ori	$a6, $zero, 9
	beq	$a7, $a5, .LBB2_15
# %bb.12:                               # %for.inc.9.i
	ld.d	$a7, $a1, 240
	ori	$a6, $zero, 10
	beq	$a7, $a5, .LBB2_15
# %bb.13:                               # %for.inc.10.i
	ld.d	$a7, $a1, 264
	ori	$a6, $zero, 11
	beq	$a7, $a5, .LBB2_15
# %bb.14:                               # %for.inc.11.i
	ld.d	$a7, $a1, 288
	ori	$a6, $zero, 12
	bne	$a7, $a5, .LBB2_16
.LBB2_15:                               # %if.end7
	slli.d	$a0, $a6, 4
	alsl.d	$a0, $a6, $a0, 3
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 16
	ld.h	$a5, $a0, 20
	move	$a0, $zero
	st.w	$a1, $a3, 0
	st.h	$a5, $a4, 0
	st.d	$zero, $a2, 0
.LBB2_16:                               # %return
	ret
.Lfunc_end2:
	.size	_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt, .Lfunc_end2-_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt
                                        # -- End function
	.section	.text._ZN13CRecordVectorIyED0Ev,"axG",@progbits,_ZN13CRecordVectorIyED0Ev,comdat
	.weak	_ZN13CRecordVectorIyED0Ev       # -- Begin function _ZN13CRecordVectorIyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIyED0Ev,@function
_ZN13CRecordVectorIyED0Ev:              # @_ZN13CRecordVectorIyED0Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end3:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end3-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.type	_ZN8NArchive3N7z8kPropMapE,@object # @_ZN8NArchive3N7z8kPropMapE
	.data
	.globl	_ZN8NArchive3N7z8kPropMapE
	.p2align	3, 0x0
_ZN8NArchive3N7z8kPropMapE:
	.dword	17                              # 0x11
	.dword	0
	.word	3                               # 0x3
	.half	8                               # 0x8
	.space	2
	.dword	9                               # 0x9
	.dword	0
	.word	7                               # 0x7
	.half	21                              # 0x15
	.space	2
	.dword	6                               # 0x6
	.dword	0
	.word	8                               # 0x8
	.half	21                              # 0x15
	.space	2
	.dword	18                              # 0x12
	.dword	0
	.word	10                              # 0xa
	.half	64                              # 0x40
	.space	2
	.dword	20                              # 0x14
	.dword	0
	.word	12                              # 0xc
	.half	64                              # 0x40
	.space	2
	.dword	19                              # 0x13
	.dword	0
	.word	11                              # 0xb
	.half	64                              # 0x40
	.space	2
	.dword	21                              # 0x15
	.dword	0
	.word	9                               # 0x9
	.half	19                              # 0x13
	.space	2
	.dword	24                              # 0x18
	.dword	0
	.word	29                              # 0x1d
	.half	19                              # 0x13
	.space	2
	.dword	10                              # 0xa
	.dword	0
	.word	19                              # 0x13
	.half	19                              # 0x13
	.space	2
	.dword	16                              # 0x10
	.dword	0
	.word	21                              # 0x15
	.half	11                              # 0xb
	.space	2
	.dword	97                              # 0x61
	.dword	0
	.word	15                              # 0xf
	.half	11                              # 0xb
	.space	2
	.dword	98                              # 0x62
	.dword	0
	.word	22                              # 0x16
	.half	8                               # 0x8
	.space	2
	.dword	99                              # 0x63
	.dword	0
	.word	27                              # 0x1b
	.half	19                              # 0x13
	.space	2
	.size	_ZN8NArchive3N7z8kPropMapE, 312

	.type	_ZTV13CRecordVectorIyE,@object  # @_ZTV13CRecordVectorIyE
	.section	.data.rel.ro._ZTV13CRecordVectorIyE,"awG",@progbits,_ZTV13CRecordVectorIyE,comdat
	.weak	_ZTV13CRecordVectorIyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIyE, 40

	.type	_ZTI13CRecordVectorIyE,@object  # @_ZTI13CRecordVectorIyE
	.section	.data.rel.ro._ZTI13CRecordVectorIyE,"awG",@progbits,_ZTI13CRecordVectorIyE,comdat
	.weak	_ZTI13CRecordVectorIyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIyE, 24

	.type	_ZTS13CRecordVectorIyE,@object  # @_ZTS13CRecordVectorIyE
	.section	.rodata._ZTS13CRecordVectorIyE,"aG",@progbits,_ZTS13CRecordVectorIyE,comdat
	.weak	_ZTS13CRecordVectorIyE
_ZTS13CRecordVectorIyE:
	.asciz	"13CRecordVectorIyE"
	.size	_ZTS13CRecordVectorIyE, 19

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
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI17CBaseRecordVector
