	.file	"Ppmd8Enc.c"
	.text
	.globl	Ppmd8_RangeEnc_FlushData        # -- Begin function Ppmd8_RangeEnc_FlushData
	.p2align	5
	.type	Ppmd8_RangeEnc_FlushData,@function
Ppmd8_RangeEnc_FlushData:               # @Ppmd8_RangeEnc_FlushData
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	ld.d	$a2, $a0, 0
	ld.bu	$a1, $fp, 115
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 112
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	Ppmd8_RangeEnc_FlushData, .Lfunc_end0-Ppmd8_RangeEnc_FlushData
                                        # -- End function
	.globl	Ppmd8_EncodeSymbol              # -- Begin function Ppmd8_EncodeSymbol
	.p2align	5
	.type	Ppmd8_EncodeSymbol,@function
Ppmd8_EncodeSymbol:                     # @Ppmd8_EncodeSymbol
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s2, $a0, 0
	ld.bu	$s4, $s2, 0
	move	$s0, $a1
	beqz	$s4, .LBB1_7
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 56
	ld.wu	$a1, $s2, 4
	ldx.bu	$a2, $a0, $a1
	add.d	$s1, $a0, $a1
	bne	$s0, $a2, .LBB1_14
# %bb.2:                                # %if.then6
	ld.hu	$a0, $s2, 2
	ld.w	$a2, $fp, 104
	ld.bu	$a3, $s1, 1
	ld.w	$a1, $fp, 112
	div.wu	$a0, $a2, $a0
	mul.d	$a0, $a0, $a3
	st.w	$a0, $fp, 104
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %while.body.critedge.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_4:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_3
# %bb.5:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_13
# %bb.6:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_3
.LBB1_7:                                # %if.else
	ld.bu	$a0, $s2, 3
	ld.d	$a1, $fp, 56
	ld.wu	$a2, $s2, 8
	add.d	$a0, $fp, $a0
	ld.bu	$a0, $a0, 855
	ldx.bu	$a1, $a1, $a2
	slli.d	$a0, $a0, 7
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, 600
	ld.w	$a2, $fp, 32
	ld.bu	$a3, $s2, 1
	ld.w	$a4, $fp, 40
	add.d	$a0, $fp, $a0
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a3
	srli.d	$a2, $a4, 26
	andi	$a2, $a2, 32
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a0, $a1, $a0, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 96
	ld.bu	$s1, $s2, 2
	ld.wu	$a3, $fp, 104
	ldx.hu	$a2, $a0, $a1
	addi.d	$s2, $s2, 2
	add.d	$s3, $a0, $a1
	srli.d	$a3, $a3, 14
	mul.d	$a0, $a3, $a2
	bne	$s0, $s1, .LBB1_24
# %bb.8:                                # %if.then112
	ld.w	$a1, $fp, 112
	st.w	$a0, $fp, 104
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %while.body.critedge.i.i175
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_10:                               # %while.cond.i.i166
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_9
# %bb.11:                               # %lor.rhs.i.i170
                                        #   in Loop: Header=BB1_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_29
# %bb.12:                               # %land.rhs.i.i172
                                        #   in Loop: Header=BB1_10 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_9
.LBB1_13:                               # %RangeEnc_Encode.exit
	st.d	$s1, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd8_Update1_0)
	jr	$t8
.LBB1_14:                               # %if.end
	ld.bu	$s3, $s1, 1
	st.w	$zero, $fp, 32
	move	$a0, $s4
	.p2align	4, , 16
.LBB1_15:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s5, $s1, 6
	ld.bu	$a2, $s1, 7
	addi.d	$s1, $s1, 6
	beq	$s0, $s5, .LBB1_45
# %bb.16:                               # %if.end26
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.w	$a0, $a0, -1
	add.d	$s3, $s3, $a2
	bnez	$a0, .LBB1_15
# %bb.17:                               # %for.cond.preheader
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s6, $sp, 24
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s6
	addi.w	$a0, $zero, -6
	.p2align	4, , 16
.LBB1_18:                               # %do.body62
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s1, $a0
	stx.b	$zero, $a1, $s6
	addi.w	$s4, $s4, -1
	addi.d	$a0, $a0, -6
	bnez	$s4, .LBB1_18
# %bb.19:                               # %do.end71
	ld.hu	$a0, $s2, 2
	ld.w	$a1, $fp, 104
	ld.w	$a2, $fp, 112
	sub.w	$a3, $a0, $s3
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a2, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a3
	st.w	$a0, $fp, 104
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %while.body.critedge.i.i157
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_21:                               # %while.cond.i.i148
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_20
# %bb.22:                               # %lor.rhs.i.i152
                                        #   in Loop: Header=BB1_21 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_31
# %bb.23:                               # %land.rhs.i.i154
                                        #   in Loop: Header=BB1_21 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_20
.LBB1_24:                               # %if.else122
	ld.w	$a1, $fp, 112
	add.w	$a1, $a0, $a1
	st.w	$a1, $fp, 112
	lu12i.w	$a0, 4
	sub.d	$a0, $a0, $a2
	mul.d	$a0, $a3, $a0
	st.w	$a0, $fp, 104
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %while.body.critedge.i.i196
                                        #   in Loop: Header=BB1_26 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_26:                               # %while.cond.i.i187
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_25
# %bb.27:                               # %lor.rhs.i.i191
                                        #   in Loop: Header=BB1_26 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_30
# %bb.28:                               # %land.rhs.i.i193
                                        #   in Loop: Header=BB1_26 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_25
.LBB1_29:                               # %RangeEnc_EncodeBit_0.exit
	ld.hu	$a0, $s3, 0
	addi.d	$a1, $a0, 32
	srli.d	$a1, $a1, 7
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 128
	st.h	$a0, $s3, 0
	st.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_UpdateBin)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB1_31
	b	.LBB1_67
.LBB1_30:                               # %RangeEnc_EncodeBit_1.exit
	ld.hu	$a0, $s3, 0
	addi.d	$a1, $a0, 32
	srli.d	$a1, $a1, 7
	sub.d	$a0, $a0, $a1
	st.h	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 15, 10
	pcalau12i	$a1, %got_pc_hi20(PPMD8_kExpEscape)
	ld.d	$a1, $a1, %got_pc_lo12(PPMD8_kExpEscape)
	ldx.bu	$a0, $a1, $a0
	st.w	$a0, $fp, 28
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s3, $sp, 24
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	stx.b	$zero, $a0, $s3
	st.w	$zero, $fp, 32
	beq	$s0, $s1, .LBB1_67
.LBB1_31:                               # %if.end178
	addi.d	$s4, $sp, 24
	addi.w	$s5, $zero, -1
.LBB1_32:                               # %for.cond179
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_41 Depth 2
	ld.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	ld.w	$a0, $fp, 24
	.p2align	4, , 16
.LBB1_33:                               # %do.body186
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	beqz	$a2, .LBB1_44
# %bb.34:                               # %if.end191
                                        #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a3, $fp, 56
	ldx.bu	$a4, $a3, $a2
	add.d	$a2, $a3, $a2
	st.d	$a2, $fp, 0
	beq	$a4, $a1, .LBB1_33
# %bb.35:                               # %do.end204
                                        #   in Loop: Header=BB1_32 Depth=1
	st.w	$a0, $fp, 24
	addi.d	$a2, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_MakeEscFreq)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a3, $fp, 56
	ld.bu	$a2, $a1, 0
	ld.wu	$a1, $a1, 4
	move	$s1, $a0
	move	$s3, $zero
	addi.d	$a0, $a2, 1
	add.d	$s2, $a3, $a1
	move	$a1, $a0
	.p2align	4, , 16
.LBB1_36:                               # %do.body214
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $s2, 0
	beq	$s0, $a3, .LBB1_51
# %bb.37:                               # %cleanup271.thread
                                        #   in Loop: Header=BB1_36 Depth=2
	ld.bu	$a4, $s2, 1
	ldx.bu	$a5, $a3, $s4
	and	$a4, $a5, $a4
	add.d	$s3, $s3, $a4
	stx.b	$zero, $a3, $s4
	addi.d	$s2, $s2, 6
	addi.d	$a1, $a1, -1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, -1
	bne	$a2, $s5, .LBB1_36
# %bb.38:                               # %do.end277
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.w	$a0, $sp, 20
	ld.w	$a1, $fp, 104
	ld.w	$a2, $fp, 112
	add.w	$a3, $a0, $s3
	div.wu	$a3, $a1, $a3
	mul.d	$a1, $a3, $s3
	add.w	$a1, $a2, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a3, $a0
	st.w	$a0, $fp, 104
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_39:                               # %land.rhs.i.i236
                                        #   in Loop: Header=BB1_41 Depth=2
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
.LBB1_40:                               # %while.body.critedge.i.i239
                                        #   in Loop: Header=BB1_41 Depth=2
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_41:                               # %while.cond.i.i230
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_40
# %bb.42:                               # %lor.rhs.i.i234
                                        #   in Loop: Header=BB1_41 Depth=2
	bstrpick.d	$a0, $a0, 31, 15
	beqz	$a0, .LBB1_39
# %bb.43:                               # %RangeEnc_Encode.exit244
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.h	$a0, $s1, 0
	ld.w	$a1, $sp, 20
	add.d	$a0, $s3, $a0
	add.d	$a0, $a0, $a1
	st.h	$a0, $s1, 0
	b	.LBB1_32
.LBB1_44:                               # %cleanup285.loopexit
	st.w	$a0, $fp, 24
	b	.LBB1_67
.LBB1_45:                               # %if.then19
	ld.hu	$a0, $s2, 2
	ld.w	$a1, $fp, 104
	ld.w	$a3, $fp, 112
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a3, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a2
	st.w	$a0, $fp, 104
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %while.body.critedge.i.i135
                                        #   in Loop: Header=BB1_47 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_47:                               # %while.cond.i.i126
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_46
# %bb.48:                               # %lor.rhs.i.i130
                                        #   in Loop: Header=BB1_47 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_50
# %bb.49:                               # %land.rhs.i.i132
                                        #   in Loop: Header=BB1_47 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_46
.LBB1_50:                               # %RangeEnc_Encode.exit140
	st.d	$s1, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd8_Update1)
	jr	$t8
.LBB1_51:                               # %do.body220.preheader
	ori	$a3, $zero, 2
	bgeu	$a0, $a3, .LBB1_53
# %bb.52:
	addi.d	$a1, $a2, 1
	move	$a3, $s2
	move	$a2, $s3
	b	.LBB1_56
.LBB1_53:                               # %vector.ph
	move	$a2, $zero
	addi.d	$a5, $s2, 7
	move	$a4, $a0
	bstrins.d	$a4, $zero, 0, 0
	srli.d	$a3, $a0, 1
	slli.d	$a6, $a3, 3
	alsl.d	$a3, $a3, $a6, 2
	add.d	$a3, $s2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a6, $sp, 24
	move	$t0, $a4
	move	$a7, $s3
	.p2align	4, , 16
.LBB1_54:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t1, $a5, -7
	ld.bu	$t2, $a5, -1
	ld.bu	$t3, $a5, -6
	ld.bu	$t4, $a5, 0
	ldx.bu	$t1, $t1, $a6
	ldx.bu	$t2, $t2, $a6
	and	$t1, $t1, $t3
	and	$t2, $t2, $t4
	add.d	$a7, $a7, $t1
	add.d	$a2, $a2, $t2
	addi.d	$t0, $t0, -2
	addi.d	$a5, $a5, 12
	bnez	$t0, .LBB1_54
# %bb.55:                               # %middle.block
	add.d	$a2, $a2, $a7
	beq	$a0, $a4, .LBB1_58
.LBB1_56:                               # %do.body220.preheader294
	addi.d	$a0, $a3, 1
	addi.d	$a3, $sp, 24
	.p2align	4, , 16
.LBB1_57:                               # %do.body220
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, -1
	ld.bu	$a5, $a0, 0
	ldx.bu	$a4, $a4, $a3
	and	$a4, $a4, $a5
	add.d	$a2, $a2, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 6
	bnez	$a1, .LBB1_57
.LBB1_58:                               # %do.end234
	ld.w	$a0, $sp, 20
	ld.w	$a1, $fp, 104
	ld.bu	$a3, $s2, 1
	ld.w	$a4, $fp, 112
	add.w	$a0, $a0, $a2
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a4, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a3
	st.w	$a0, $fp, 104
	b	.LBB1_60
	.p2align	4, , 16
.LBB1_59:                               # %while.body.critedge.i.i217
                                        #   in Loop: Header=BB1_60 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_60:                               # %while.cond.i.i208
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_59
# %bb.61:                               # %lor.rhs.i.i212
                                        #   in Loop: Header=BB1_60 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_63
# %bb.62:                               # %land.rhs.i.i214
                                        #   in Loop: Header=BB1_60 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_59
.LBB1_63:                               # %RangeEnc_Encode.exit222
	ld.bu	$a0, $s1, 2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB1_66
# %bb.64:                               # %land.lhs.true
	ld.b	$a1, $s1, 3
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	st.b	$a1, $s1, 3
	bnez	$a2, .LBB1_66
# %bb.65:                               # %if.then245
	ld.h	$a1, $s1, 0
	slli.d	$a1, $a1, 1
	st.h	$a1, $s1, 0
	addi.d	$a1, $a0, 1
	st.b	$a1, $s1, 2
	ori	$a1, $zero, 3
	sll.w	$a0, $a1, $a0
	st.b	$a0, $s1, 3
.LBB1_66:                               # %cleanup271
	st.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_Update2)
	jirl	$ra, $ra, 0
.LBB1_67:                               # %cleanup293
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
.Lfunc_end1:
	.size	Ppmd8_EncodeSymbol, .Lfunc_end1-Ppmd8_EncodeSymbol
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
