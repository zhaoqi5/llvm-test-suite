	.file	"Ppmd7Enc.c"
	.text
	.globl	Ppmd7z_RangeEnc_Init            # -- Begin function Ppmd7z_RangeEnc_Init
	.p2align	5
	.type	Ppmd7z_RangeEnc_Init,@function
Ppmd7z_RangeEnc_Init:                   # @Ppmd7z_RangeEnc_Init
# %bb.0:                                # %entry
	st.d	$zero, $a0, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 8
	st.b	$zero, $a0, 12
	ori	$a1, $zero, 1
	st.d	$a1, $a0, 16
	ret
.Lfunc_end0:
	.size	Ppmd7z_RangeEnc_Init, .Lfunc_end0-Ppmd7z_RangeEnc_Init
                                        # -- End function
	.globl	Ppmd7z_RangeEnc_FlushData       # -- Begin function Ppmd7z_RangeEnc_FlushData
	.p2align	5
	.type	Ppmd7z_RangeEnc_FlushData,@function
Ppmd7z_RangeEnc_FlushData:              # @Ppmd7z_RangeEnc_FlushData
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	srli.d	$a0, $a1, 24
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB1_2
# %bb.1:                                # %entry.if.end_crit_edge.i
	ld.d	$a0, $fp, 16
	addi.d	$a2, $a0, 1
	b	.LBB1_5
.LBB1_2:                                # %if.then.i
	ld.d	$a0, $fp, 24
	ld.b	$a2, $fp, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ld.b	$a1, $fp, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	bnez	$a0, .LBB1_3
.LBB1_4:                                # %do.end.i
	ld.d	$a1, $fp, 0
	srli.d	$a0, $a1, 24
	st.b	$a0, $fp, 12
	ori	$a2, $zero, 1
.LBB1_5:                                # %RangeEnc_ShiftLow.exit
	st.d	$a2, $fp, 16
	slli.d	$a0, $a1, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	lu12i.w	$s0, 4080
	and	$a1, $a1, $s0
	st.d	$a0, $fp, 0
	bne	$a1, $s0, .LBB1_7
# %bb.6:                                # %entry.if.end_crit_edge.i.1
	addi.d	$a2, $a2, 1
	b	.LBB1_11
.LBB1_7:                                # %if.then.i.1
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $fp, 12
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB1_8:                                # %do.body.i.1
                                        # =>This Inner Loop Header: Depth=1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB1_10
# %bb.9:                                # %do.body.i.1
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $fp, 24
	ld.b	$a1, $fp, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	b	.LBB1_8
.LBB1_10:                               # %do.end.i.1
	ld.d	$a0, $fp, 0
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 12
	ori	$a2, $zero, 1
.LBB1_11:                               # %RangeEnc_ShiftLow.exit.1
	st.d	$a2, $fp, 16
	slli.d	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	and	$a0, $a0, $s0
	st.d	$a1, $fp, 0
	bne	$a0, $s0, .LBB1_13
# %bb.12:                               # %entry.if.end_crit_edge.i.2
	addi.d	$a2, $a2, 1
	b	.LBB1_17
.LBB1_13:                               # %if.then.i.2
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $fp, 12
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB1_14:                               # %do.body.i.2
                                        # =>This Inner Loop Header: Depth=1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB1_16
# %bb.15:                               # %do.body.i.2
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a0, $fp, 24
	ld.b	$a1, $fp, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	b	.LBB1_14
.LBB1_16:                               # %do.end.i.2
	ld.d	$a1, $fp, 0
	srli.d	$a0, $a1, 24
	st.b	$a0, $fp, 12
	ori	$a2, $zero, 1
.LBB1_17:                               # %RangeEnc_ShiftLow.exit.2
	st.d	$a2, $fp, 16
	slli.d	$a0, $a1, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	and	$a1, $a1, $s0
	st.d	$a0, $fp, 0
	bne	$a1, $s0, .LBB1_19
# %bb.18:                               # %entry.if.end_crit_edge.i.3
	addi.d	$a2, $a2, 1
	b	.LBB1_23
.LBB1_19:                               # %if.then.i.3
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $fp, 12
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB1_20:                               # %do.body.i.3
                                        # =>This Inner Loop Header: Depth=1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB1_22
# %bb.21:                               # %do.body.i.3
                                        #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a0, $fp, 24
	ld.b	$a1, $fp, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	b	.LBB1_20
.LBB1_22:                               # %do.end.i.3
	ld.d	$a0, $fp, 0
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 12
	ori	$a2, $zero, 1
.LBB1_23:                               # %RangeEnc_ShiftLow.exit.3
	st.d	$a2, $fp, 16
	slli.d	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	and	$a0, $a0, $s0
	st.d	$a1, $fp, 0
	bne	$a0, $s0, .LBB1_25
# %bb.24:                               # %entry.if.end_crit_edge.i.4
	addi.d	$a0, $a2, 1
	b	.LBB1_29
.LBB1_25:                               # %if.then.i.4
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $fp, 12
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB1_26:                               # %do.body.i.4
                                        # =>This Inner Loop Header: Depth=1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB1_28
# %bb.27:                               # %do.body.i.4
                                        #   in Loop: Header=BB1_26 Depth=1
	ld.d	$a0, $fp, 24
	ld.b	$a1, $fp, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	b	.LBB1_26
.LBB1_28:                               # %do.end.i.4
	ld.d	$a1, $fp, 0
	srli.d	$a0, $a1, 24
	st.b	$a0, $fp, 12
	ori	$a0, $zero, 1
.LBB1_29:                               # %RangeEnc_ShiftLow.exit.4
	st.d	$a0, $fp, 16
	slli.d	$a0, $a1, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	st.d	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	Ppmd7z_RangeEnc_FlushData, .Lfunc_end1-Ppmd7z_RangeEnc_FlushData
                                        # -- End function
	.globl	Ppmd7_EncodeSymbol              # -- Begin function Ppmd7_EncodeSymbol
	.p2align	5
	.type	Ppmd7_EncodeSymbol,@function
Ppmd7_EncodeSymbol:                     # @Ppmd7_EncodeSymbol
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
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 0
	ld.hu	$a0, $s3, 0
	ori	$a3, $zero, 1
	move	$s1, $a2
	move	$s0, $a1
	bne	$a0, $a3, .LBB2_10
# %bb.1:                                # %if.else
	ld.d	$a0, $fp, 64
	ld.wu	$a1, $s3, 8
	ldx.hu	$a0, $a0, $a1
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 32
	add.d	$a0, $a0, $fp
	ld.bu	$a1, $a1, 0
	ld.bu	$a0, $a0, 683
	ld.bu	$s2, $s3, 2
	addi.d	$a3, $fp, 940
	ldx.bu	$a1, $a3, $a1
	ld.bu	$a4, $s3, 3
	ldx.bu	$a3, $a3, $s2
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	ld.w	$a2, $fp, 44
	alsl.d	$a0, $a3, $a0, 1
	slli.d	$a3, $a4, 7
	add.d	$a3, $a3, $fp
	srli.d	$a2, $a2, 26
	andi	$a2, $a2, 32
	add.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a0, $a0, $a3, 1
	st.w	$a1, $fp, 40
	ori	$a1, $zero, 2672
	ld.wu	$a3, $s0, 8
	ldx.hu	$a2, $a0, $a1
	addi.d	$s4, $s3, 2
	add.d	$s3, $a0, $a1
	srli.d	$a0, $a3, 14
	mul.d	$a0, $a0, $a2
	bne	$s1, $s2, .LBB2_19
# %bb.2:                                # %if.then132
	bstrpick.d	$a1, $a0, 31, 24
	st.w	$a0, $s0, 8
	bnez	$a1, .LBB2_51
# %bb.3:                                # %while.body.lr.ph.i203
	ld.d	$a1, $s0, 0
	ori	$s5, $zero, 255
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                # %do.end.i.i222
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_5:                                # %RangeEnc_ShiftLow.exit.i226
                                        #   in Loop: Header=BB2_6 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_50
.LBB2_6:                                # %while.body.i207
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s5, .LBB2_8
# %bb.7:                                # %entry.if.end_crit_edge.i.i232
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_8:                                # %if.then.i.i210
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_4
	.p2align	4, , 16
.LBB2_9:                                # %do.body.i.i216
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_9
	b	.LBB2_4
.LBB2_10:                               # %if.then
	ld.d	$a1, $fp, 64
	ld.wu	$a2, $s3, 4
	ldx.bu	$a3, $a1, $a2
	add.d	$s2, $a1, $a2
	bne	$s1, $a3, .LBB2_27
# %bb.11:                               # %if.then6
	ld.hu	$a0, $s3, 2
	ld.w	$a1, $s0, 8
	ld.bu	$a2, $s2, 1
	div.wu	$a0, $a1, $a0
	ld.d	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 24
	st.w	$a0, $s0, 8
	bnez	$a2, .LBB2_40
# %bb.12:                               # %while.body.lr.ph.i
	ori	$s1, $zero, 255
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               # %do.end.i.i
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_14:                               # %RangeEnc_ShiftLow.exit.i
                                        #   in Loop: Header=BB2_15 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_40
.LBB2_15:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s1, .LBB2_17
# %bb.16:                               # %entry.if.end_crit_edge.i.i
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_17:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_13
	.p2align	4, , 16
.LBB2_18:                               # %do.body.i.i
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_18
	b	.LBB2_13
.LBB2_19:                               # %if.else142
	ld.d	$a1, $s0, 0
	bstrpick.d	$a4, $a0, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s0, 0
	sub.w	$a0, $a3, $a0
	bstrpick.d	$a3, $a0, 31, 24
	st.w	$a0, $s0, 8
	move	$s5, $s2
	bnez	$a3, .LBB2_53
# %bb.20:                               # %while.body.lr.ph.i239
	ori	$s5, $zero, 255
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_21:                               # %do.end.i.i258
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_22:                               # %RangeEnc_ShiftLow.exit.i262
                                        #   in Loop: Header=BB2_23 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_52
.LBB2_23:                               # %while.body.i243
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s5, .LBB2_25
# %bb.24:                               # %entry.if.end_crit_edge.i.i268
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_25:                               # %if.then.i.i246
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_21
	.p2align	4, , 16
.LBB2_26:                               # %do.body.i.i252
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_26
	b	.LBB2_21
.LBB2_27:                               # %if.end
	ld.bu	$s4, $s2, 1
	addi.d	$s5, $a0, -1
	st.w	$zero, $fp, 32
	move	$a0, $s5
	.p2align	4, , 16
.LBB2_28:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s6, $s2, 6
	ld.bu	$a2, $s2, 7
	addi.d	$s2, $s2, 6
	beq	$s1, $s6, .LBB2_41
# %bb.29:                               # %if.end26
                                        #   in Loop: Header=BB2_28 Depth=1
	addi.w	$a0, $a0, -1
	add.w	$s4, $s4, $a2
	bnez	$a0, .LBB2_28
# %bb.30:                               # %do.end
	ld.d	$a0, $fp, 16
	ld.bu	$a0, $a0, 0
	add.d	$a0, $fp, $a0
	ld.bu	$a0, $a0, 940
	st.w	$a0, $fp, 40
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s7, $sp, 16
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s6, $s7
	addi.w	$a0, $zero, -6
	.p2align	4, , 16
.LBB2_31:                               # %do.body68
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s2, $a0
	stx.b	$zero, $a1, $s7
	addi.w	$s5, $s5, -1
	addi.d	$a0, $a0, -6
	bnez	$s5, .LBB2_31
# %bb.32:                               # %do.end77
	ld.hu	$a0, $s3, 2
	ld.w	$a1, $s0, 8
	sub.w	$a2, $a0, $s4
	ld.d	$a3, $s0, 0
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s4
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	st.d	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 24
	st.w	$a0, $s0, 8
	bnez	$a2, .LBB2_54
# %bb.33:                               # %while.body.lr.ph.i169
	ori	$s2, $zero, 255
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_34:                               # %do.end.i.i188
                                        #   in Loop: Header=BB2_36 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_35:                               # %RangeEnc_ShiftLow.exit.i192
                                        #   in Loop: Header=BB2_36 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_54
.LBB2_36:                               # %while.body.i173
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s2, .LBB2_38
# %bb.37:                               # %entry.if.end_crit_edge.i.i198
                                        #   in Loop: Header=BB2_36 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_38:                               # %if.then.i.i176
                                        #   in Loop: Header=BB2_36 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_34
	.p2align	4, , 16
.LBB2_39:                               # %do.body.i.i182
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_39
	b	.LBB2_34
.LBB2_40:                               # %RangeEnc_Encode.exit
	st.d	$s2, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd7_Update1_0)
	jr	$t8
.LBB2_41:                               # %if.then19
	ld.hu	$a0, $s3, 2
	ld.w	$a1, $s0, 8
	ld.d	$a3, $s0, 0
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s4
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	st.d	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 24
	st.w	$a0, $s0, 8
	bnez	$a2, .LBB2_49
# %bb.42:                               # %while.body.lr.ph.i130
	ori	$s1, $zero, 255
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_43:                               # %do.end.i.i149
                                        #   in Loop: Header=BB2_45 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_44:                               # %RangeEnc_ShiftLow.exit.i153
                                        #   in Loop: Header=BB2_45 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_49
.LBB2_45:                               # %while.body.i134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_48 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s1, .LBB2_47
# %bb.46:                               # %entry.if.end_crit_edge.i.i159
                                        #   in Loop: Header=BB2_45 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_47:                               # %if.then.i.i137
                                        #   in Loop: Header=BB2_45 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_43
	.p2align	4, , 16
.LBB2_48:                               # %do.body.i.i143
                                        #   Parent Loop BB2_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_48
	b	.LBB2_43
.LBB2_49:                               # %RangeEnc_Encode.exit161
	st.d	$s2, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd7_Update1)
	jr	$t8
.LBB2_50:                               # %RangeEnc_EncodeBit_0.exit.loopexit
	ld.hu	$a2, $s3, 0
.LBB2_51:                               # %RangeEnc_EncodeBit_0.exit
	addi.d	$a0, $a2, 32
	srli.d	$a0, $a0, 7
	sub.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 128
	st.h	$a0, $s3, 0
	st.d	$s4, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd7_UpdateBin)
	jirl	$ra, $ra, 0
	bne	$s1, $s2, .LBB2_54
	b	.LBB2_90
.LBB2_52:                               # %RangeEnc_EncodeBit_1.exit.loopexit
	ld.hu	$a2, $s3, 0
	ld.bu	$s5, $s4, 0
.LBB2_53:                               # %RangeEnc_EncodeBit_1.exit
	addi.d	$a0, $a2, 32
	srli.d	$a0, $a0, 7
	pcalau12i	$a1, %got_pc_hi20(PPMD7_kExpEscape)
	ld.d	$a1, $a1, %got_pc_lo12(PPMD7_kExpEscape)
	sub.d	$a0, $a2, $a0
	st.h	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 15, 10
	ldx.bu	$a0, $a1, $a0
	st.w	$a0, $fp, 28
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s3, $sp, 16
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s3
	st.w	$zero, $fp, 32
	beq	$s1, $s2, .LBB2_90
.LBB2_54:                               # %if.end198
	addi.d	$s5, $sp, 16
	ori	$s6, $zero, 0
	lu32i.d	$s6, 1
	ori	$s7, $zero, 255
.LBB2_55:                               # %for.cond199
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_56 Depth 2
                                        #     Child Loop BB2_59 Depth 2
                                        #     Child Loop BB2_64 Depth 2
                                        #       Child Loop BB2_67 Depth 3
	ld.d	$a2, $fp, 0
	ld.hu	$a1, $a2, 0
	ld.w	$a0, $fp, 24
	.p2align	4, , 16
.LBB2_56:                               # %do.body206
                                        #   Parent Loop BB2_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	beqz	$a2, .LBB2_70
# %bb.57:                               # %if.end211
                                        #   in Loop: Header=BB2_56 Depth=2
	ld.d	$a3, $fp, 64
	ldx.hu	$a4, $a3, $a2
	add.d	$a2, $a3, $a2
	st.d	$a2, $fp, 0
	beq	$a4, $a1, .LBB2_56
# %bb.58:                               # %do.end224
                                        #   in Loop: Header=BB2_55 Depth=1
	st.w	$a0, $fp, 24
	addi.d	$a2, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd7_MakeEscFreq)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 64
	ld.wu	$a3, $a1, 4
	ld.hu	$a1, $a1, 0
	move	$s2, $a0
	move	$s4, $zero
	add.d	$s3, $a2, $a3
	addi.d	$a0, $a1, -1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	sub.d	$a1, $zero, $a1
	.p2align	4, , 16
.LBB2_59:                               # %do.body233
                                        #   Parent Loop BB2_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s3, 0
	beq	$s1, $a2, .LBB2_71
# %bb.60:                               # %cleanup290.thread
                                        #   in Loop: Header=BB2_59 Depth=2
	ld.bu	$a3, $s3, 1
	ldx.bu	$a4, $a2, $s5
	and	$a3, $a4, $a3
	add.w	$s4, $s4, $a3
	stx.b	$zero, $a2, $s5
	addi.d	$s3, $s3, 6
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a2, $a1, $s6
	addi.d	$a0, $a0, -1
	beqz	$a2, .LBB2_59
# %bb.61:                               # %do.end296
                                        #   in Loop: Header=BB2_55 Depth=1
	ld.w	$a2, $sp, 12
	ld.w	$a0, $s0, 8
	add.w	$a1, $a2, $s4
	ld.d	$a3, $s0, 0
	div.wu	$a0, $a0, $a1
	mul.d	$a1, $a0, $s4
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	st.d	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	bstrpick.d	$a3, $a0, 31, 24
	st.w	$a0, $s0, 8
	beqz	$a3, .LBB2_64
	b	.LBB2_69
	.p2align	4, , 16
.LBB2_62:                               # %do.end.i.i335
                                        #   in Loop: Header=BB2_64 Depth=2
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_63:                               # %RangeEnc_ShiftLow.exit.i339
                                        #   in Loop: Header=BB2_64 Depth=2
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_68
.LBB2_64:                               # %while.body.i320
                                        #   Parent Loop BB2_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_67 Depth 3
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s7, .LBB2_66
# %bb.65:                               # %entry.if.end_crit_edge.i.i345
                                        #   in Loop: Header=BB2_64 Depth=2
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_63
	.p2align	4, , 16
.LBB2_66:                               # %if.then.i.i323
                                        #   in Loop: Header=BB2_64 Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_62
	.p2align	4, , 16
.LBB2_67:                               # %do.body.i.i329
                                        #   Parent Loop BB2_55 Depth=1
                                        #     Parent Loop BB2_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_67
	b	.LBB2_62
.LBB2_68:                               # %RangeEnc_Encode.exit347.loopexit
                                        #   in Loop: Header=BB2_55 Depth=1
	ld.w	$a2, $sp, 12
.LBB2_69:                               # %RangeEnc_Encode.exit347
                                        #   in Loop: Header=BB2_55 Depth=1
	ld.h	$a0, $s2, 0
	add.d	$a0, $s4, $a0
	add.d	$a0, $a0, $a2
	st.h	$a0, $s2, 0
	b	.LBB2_55
.LBB2_70:                               # %cleanup304.loopexit
	st.w	$a0, $fp, 24
	b	.LBB2_90
.LBB2_71:                               # %do.body239.preheader
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB2_73
# %bb.72:
	sub.d	$a1, $zero, $a1
	move	$a2, $s3
	move	$a3, $s4
	b	.LBB2_76
.LBB2_73:                               # %vector.ph
	move	$a3, $zero
	addi.d	$a5, $s3, 7
	move	$a4, $a0
	bstrins.d	$a4, $zero, 0, 0
	srli.d	$a2, $a0, 1
	slli.d	$a6, $a2, 3
	alsl.d	$a2, $a2, $a6, 2
	add.d	$a2, $s3, $a2
	add.d	$a1, $a4, $a1
	sub.d	$a1, $zero, $a1
	addi.d	$a6, $sp, 16
	move	$t0, $a4
	move	$a7, $s4
	.p2align	4, , 16
.LBB2_74:                               # %vector.body
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
	add.d	$a3, $a3, $t2
	addi.d	$t0, $t0, -2
	addi.d	$a5, $a5, 12
	bnez	$t0, .LBB2_74
# %bb.75:                               # %middle.block
	add.d	$a3, $a3, $a7
	beq	$a0, $a4, .LBB2_78
.LBB2_76:                               # %do.body239.preheader415
	addi.d	$a0, $a2, 1
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB2_77:                               # %do.body239
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, -1
	ld.bu	$a5, $a0, 0
	ldx.bu	$a4, $a4, $a2
	and	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 6
	bnez	$a1, .LBB2_77
.LBB2_78:                               # %do.end253
	ld.w	$a0, $sp, 12
	ld.w	$a1, $s0, 8
	ld.bu	$a2, $s3, 1
	add.w	$a0, $a0, $a3
	ld.d	$a3, $s0, 0
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s4
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a3, $a1
	st.d	$a1, $s0, 0
	mul.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a0, 31, 24
	st.w	$a0, $s0, 8
	bnez	$a2, .LBB2_86
# %bb.79:                               # %while.body.i281.preheader
	ori	$s1, $zero, 255
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_80:                               # %do.end.i.i296
                                        #   in Loop: Header=BB2_82 Depth=1
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 8
	srli.d	$a2, $a1, 24
	st.b	$a2, $s0, 12
	ori	$a2, $zero, 1
.LBB2_81:                               # %RangeEnc_ShiftLow.exit.i300
                                        #   in Loop: Header=BB2_82 Depth=1
	st.d	$a2, $s0, 16
	slli.d	$a1, $a1, 8
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.d	$a1, $s0, 0
	bnez	$a2, .LBB2_86
.LBB2_82:                               # %while.body.i281
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
	slli.d	$a0, $a0, 8
	srli.d	$a2, $a1, 24
	st.w	$a0, $s0, 8
	bne	$a2, $s1, .LBB2_84
# %bb.83:                               # %entry.if.end_crit_edge.i.i306
                                        #   in Loop: Header=BB2_82 Depth=1
	ld.d	$a2, $s0, 16
	addi.d	$a2, $a2, 1
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_84:                               # %if.then.i.i284
                                        #   in Loop: Header=BB2_82 Depth=1
	ld.d	$a0, $s0, 24
	ld.b	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 32
	add.d	$a1, $a2, $a1
	andi	$a1, $a1, 255
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	beqz	$a0, .LBB2_80
	.p2align	4, , 16
.LBB2_85:                               # %do.body.i.i290
                                        #   Parent Loop BB2_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 4
	ld.d	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	andi	$a1, $a1, 255
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB2_85
	b	.LBB2_80
.LBB2_86:                               # %RangeEnc_Encode.exit308
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB2_89
# %bb.87:                               # %land.lhs.true
	ld.b	$a1, $s2, 3
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	st.b	$a1, $s2, 3
	bnez	$a2, .LBB2_89
# %bb.88:                               # %if.then264
	ld.h	$a1, $s2, 0
	slli.d	$a1, $a1, 1
	st.h	$a1, $s2, 0
	addi.d	$a1, $a0, 1
	st.b	$a1, $s2, 2
	ori	$a1, $zero, 3
	sll.w	$a0, $a1, $a0
	st.b	$a0, $s2, 3
.LBB2_89:                               # %cleanup290
	st.d	$s3, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd7_Update2)
	jirl	$ra, $ra, 0
.LBB2_90:                               # %cleanup312
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
.Lfunc_end2:
	.size	Ppmd7_EncodeSymbol, .Lfunc_end2-Ppmd7_EncodeSymbol
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
