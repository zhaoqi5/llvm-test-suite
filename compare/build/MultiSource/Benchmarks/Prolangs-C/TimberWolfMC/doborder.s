	.file	"doborder.c"
	.text
	.globl	doborder                        # -- Begin function doborder
	.p2align	5
	.type	doborder,@function
doborder:                               # @doborder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a3, $a0, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB0_63
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	pcalau12i	$a2, %got_pc_hi20(cellList)
	ld.d	$a2, $a2, %got_pc_lo12(cellList)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a4, $zero, 8
	ori	$a5, $zero, 6
	pcalau12i	$a6, %pc_hi20(.LJTI0_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI0_1)
	vrepli.b	$vr0, 0
	ori	$a7, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc176
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a3, .LBB0_63
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_56 Depth 3
	slli.d	$t4, $a7, 3
	ldx.d	$t6, $a1, $t4
	ld.wu	$t0, $t6, 56
	addi.d	$t1, $t6, 152
	addi.w	$t2, $t0, 0
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $t1, $t3
	beqz	$t3, .LBB0_50
# %bb.4:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ldx.d	$t4, $a2, $t4
	beqz	$t4, .LBB0_35
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t5, $t6, 12
	ld.w	$t6, $t6, 16
	move	$t7, $t3
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %findBorder.exit244.loopexit
                                        #   in Loop: Header=BB0_7 Depth=2
	st.w	$s0, $t7, 52
	ld.d	$t7, $t7, 0
	beqz	$t7, .LBB0_37
.LBB0_7:                                # %for.body6
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	move	$s2, $zero
	ld.w	$t8, $t7, 56
	ld.w	$fp, $t7, 64
	ld.w	$s3, $t7, 68
	ld.w	$s1, $t7, 60
	add.w	$t8, $t8, $t5
	add.w	$s0, $fp, $t6
	add.w	$fp, $s3, $t6
	move	$s3, $t4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.inc.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.d	$s3, $s3, 32
	beqz	$s3, .LBB0_14
.LBB0_9:                                # %for.body.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, 8
	bnez	$s4, .LBB0_8
# %bb.10:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.w	$s4, $s3, 12
	bne	$s4, $t8, .LBB0_8
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.w	$s4, $s3, 20
	bge	$s0, $s4, .LBB0_8
# %bb.12:                               # %lor.lhs.false7.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.w	$s4, $s3, 16
	bge	$s4, $fp, .LBB0_8
# %bb.13:                               # %if.end10.i
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.w	$s4, $s3, 4
	slt	$s5, $s2, $s4
	masknez	$s2, $s2, $s5
	maskeqz	$s4, $s4, $s5
	or	$s2, $s4, $s2
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_14:                               # %findBorder.exit
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $zero
	add.w	$s1, $s1, $t5
	st.w	$s2, $t7, 40
	move	$s2, $t4
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %for.inc.i170
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.d	$s2, $s2, 32
	beqz	$s2, .LBB0_21
.LBB0_16:                               # %for.body.i165
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s2, 8
	bnez	$s4, .LBB0_15
# %bb.17:                               # %lor.lhs.false.i176
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$s4, $s2, 12
	bne	$s4, $s1, .LBB0_15
# %bb.18:                               # %if.end.i179
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$s4, $s2, 20
	bge	$s0, $s4, .LBB0_15
# %bb.19:                               # %lor.lhs.false7.i182
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$s4, $s2, 16
	bge	$s4, $fp, .LBB0_15
# %bb.20:                               # %if.end10.i185
                                        #   in Loop: Header=BB0_16 Depth=3
	ld.w	$s4, $s2, 4
	slt	$s5, $s3, $s4
	masknez	$s3, $s3, $s5
	maskeqz	$s4, $s4, $s5
	or	$s3, $s4, $s3
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_21:                               # %findBorder.exit188
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$s2, $zero
	st.w	$s3, $t7, 44
	move	$s3, $t4
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.inc.i198
                                        #   in Loop: Header=BB0_23 Depth=3
	ld.d	$s3, $s3, 32
	beqz	$s3, .LBB0_28
.LBB0_23:                               # %for.body.i193
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, 8
	bne	$s4, $a0, .LBB0_22
# %bb.24:                               # %lor.lhs.false.i204
                                        #   in Loop: Header=BB0_23 Depth=3
	ld.w	$s4, $s3, 12
	bne	$s4, $s0, .LBB0_22
# %bb.25:                               # %if.end.i207
                                        #   in Loop: Header=BB0_23 Depth=3
	ld.w	$s4, $s3, 20
	bge	$t8, $s4, .LBB0_22
# %bb.26:                               # %lor.lhs.false7.i210
                                        #   in Loop: Header=BB0_23 Depth=3
	ld.w	$s4, $s3, 16
	bge	$s4, $s1, .LBB0_22
# %bb.27:                               # %if.end10.i213
                                        #   in Loop: Header=BB0_23 Depth=3
	ld.w	$s4, $s3, 4
	slt	$s5, $s2, $s4
	masknez	$s2, $s2, $s5
	maskeqz	$s4, $s4, $s5
	or	$s2, $s4, $s2
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_28:                               # %findBorder.exit216
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$s0, $zero
	st.w	$s2, $t7, 48
	move	$s2, $t4
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %for.inc.i226
                                        #   in Loop: Header=BB0_30 Depth=3
	ld.d	$s2, $s2, 32
	beqz	$s2, .LBB0_6
.LBB0_30:                               # %for.body.i221
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $s2, 8
	bne	$s3, $a0, .LBB0_29
# %bb.31:                               # %lor.lhs.false.i232
                                        #   in Loop: Header=BB0_30 Depth=3
	ld.w	$s3, $s2, 12
	bne	$s3, $fp, .LBB0_29
# %bb.32:                               # %if.end.i235
                                        #   in Loop: Header=BB0_30 Depth=3
	ld.w	$s3, $s2, 20
	bge	$t8, $s3, .LBB0_29
# %bb.33:                               # %lor.lhs.false7.i238
                                        #   in Loop: Header=BB0_30 Depth=3
	ld.w	$s3, $s2, 16
	bge	$s3, $s1, .LBB0_29
# %bb.34:                               # %if.end10.i241
                                        #   in Loop: Header=BB0_30 Depth=3
	ld.w	$s3, $s2, 4
	slt	$s4, $s0, $s3
	masknez	$s0, $s0, $s4
	maskeqz	$s3, $s3, $s4
	or	$s0, $s3, $s0
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_35:                               # %for.body6.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$t4, $t3
	.p2align	4, , 16
.LBB0_36:                               # %for.body6.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t4, 40
	ld.d	$t4, $t4, 0
	bnez	$t4, .LBB0_36
.LBB0_37:                               # %for.end.thread
                                        #   in Loop: Header=BB0_3 Depth=1
	beqz	$t0, .LBB0_50
# %bb.38:                               # %for.body23.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$t4, $t1
	b	.LBB0_42
.LBB0_39:                               # %sw.bb60
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.d	$t5, $t3, 40
	st.d	$t5, $t4, 48
	ld.d	$t5, $t3, 48
.LBB0_40:                               # %for.inc87
                                        #   in Loop: Header=BB0_42 Depth=2
	st.d	$t5, $t4, 40
.LBB0_41:                               # %for.inc87
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.d	$t3, $t3, 0
	beqz	$t3, .LBB0_50
.LBB0_42:                               # %for.body23
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t4, 0
	addi.d	$t5, $t2, -1
	bltu	$a5, $t5, .LBB0_41
# %bb.43:                               # %for.body23
                                        #   in Loop: Header=BB0_42 Depth=2
	slli.d	$t5, $t5, 2
	pcalau12i	$t6, %pc_hi20(.LJTI0_0)
	addi.d	$t6, $t6, %pc_lo12(.LJTI0_0)
	ldx.w	$t5, $t6, $t5
	add.d	$t5, $t6, $t5
	jr	$t5
.LBB0_44:                               # %sw.bb
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.w	$t5, $t3, 48
	st.w	$t5, $t4, 52
	ld.w	$t5, $t3, 52
	st.w	$t5, $t4, 48
	ld.d	$t5, $t3, 40
	b	.LBB0_40
.LBB0_45:                               # %sw.bb42
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.w	$t5, $t3, 48
	ld.w	$t6, $t3, 40
	st.w	$t5, $t4, 52
	ld.w	$t5, $t3, 52
	st.w	$t6, $t4, 44
	ld.w	$t6, $t3, 44
	st.w	$t5, $t4, 48
	st.w	$t6, $t4, 40
	b	.LBB0_41
.LBB0_46:                               # %sw.bb51
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.d	$t5, $t3, 40
	rotri.d	$t5, $t5, 32
	st.d	$t5, $t4, 48
	ld.d	$t5, $t3, 48
	rotri.d	$t5, $t5, 32
	b	.LBB0_40
.LBB0_47:                               # %sw.bb33
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.w	$t5, $t3, 40
	st.w	$t5, $t4, 44
	ld.w	$t5, $t3, 44
	st.w	$t5, $t4, 40
	ld.w	$t6, $t3, 40
	st.w	$t5, $t4, 44
	st.w	$t6, $t4, 40
	b	.LBB0_41
.LBB0_48:                               # %sw.bb69
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.w	$t5, $t3, 48
	st.w	$t5, $t4, 40
	ld.d	$t5, $t3, 40
	ld.w	$t6, $t3, 52
	rotri.d	$t5, $t5, 32
	st.d	$t5, $t4, 48
	st.w	$t6, $t4, 44
	b	.LBB0_41
.LBB0_49:                               # %sw.bb78
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.w	$t5, $t3, 52
	st.w	$t5, $t4, 40
	ld.w	$t5, $t3, 40
	st.w	$t5, $t4, 48
	ld.w	$t5, $t3, 48
	st.w	$t5, $t4, 44
	ld.w	$t5, $t3, 44
	st.w	$t5, $t4, 52
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_50:                               # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$t2, $zero, 1
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_51:                               # %for.inc174
                                        #   in Loop: Header=BB0_52 Depth=2
	addi.d	$t2, $t2, 1
	beq	$t2, $a4, .LBB0_2
.LBB0_52:                               # %for.body93
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_56 Depth 3
	beq	$t2, $t0, .LBB0_51
# %bb.53:                               # %if.end97
                                        #   in Loop: Header=BB0_52 Depth=2
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $t1, $t3
	beqz	$t3, .LBB0_51
# %bb.54:                               # %for.body105.lr.ph
                                        #   in Loop: Header=BB0_52 Depth=2
	addi.d	$t4, $t2, -1
	bltu	$a5, $t4, .LBB0_51
# %bb.55:                               # %for.body105.lr.ph
                                        #   in Loop: Header=BB0_52 Depth=2
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $a6, $t4
	ld.d	$t4, $t1, 0
	add.d	$t5, $a6, $t5
	jr	$t5
	.p2align	4, , 16
.LBB0_56:                               # %for.body105.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t4, 48
	st.w	$t5, $t3, 52
	ld.w	$t5, $t4, 52
	st.w	$t5, $t3, 48
	ld.d	$t5, $t4, 40
	st.d	$t5, $t3, 40
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_56
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_57:                               # %for.body105.us289
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t4, 40
	st.d	$t5, $t3, 48
	ld.d	$t5, $t4, 48
	st.d	$t5, $t3, 40
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_57
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_58:                               # %for.body105.us273
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t4, 48
	ld.w	$t6, $t4, 40
	st.w	$t5, $t3, 52
	ld.w	$t5, $t4, 52
	st.w	$t6, $t3, 44
	ld.w	$t6, $t4, 44
	st.w	$t5, $t3, 48
	st.w	$t6, $t3, 40
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_58
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_59:                               # %for.body105.us281
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t4, 40
	rotri.d	$t5, $t5, 32
	st.d	$t5, $t3, 48
	ld.d	$t5, $t4, 48
	rotri.d	$t5, $t5, 32
	st.d	$t5, $t3, 40
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_59
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_60:                               # %for.body105.us265
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t4, 40
	st.w	$t5, $t3, 44
	ld.w	$t5, $t4, 44
	st.w	$t5, $t3, 40
	ld.w	$t6, $t4, 40
	st.w	$t5, $t3, 44
	st.w	$t6, $t3, 40
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_60
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_61:                               # %for.body105.us297
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t4, 52
	st.w	$t5, $t3, 40
	ld.w	$t5, $t4, 40
	st.w	$t5, $t3, 48
	ld.w	$t5, $t4, 48
	st.w	$t5, $t3, 44
	ld.w	$t5, $t4, 44
	st.w	$t5, $t3, 52
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_61
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_62:                               # %for.body105.us305
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t5, $t4, 48
	st.w	$t5, $t3, 40
	ld.d	$t5, $t4, 40
	ld.w	$t6, $t4, 52
	rotri.d	$t5, $t5, 32
	st.d	$t5, $t3, 48
	st.w	$t6, $t3, 44
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	bnez	$t3, .LBB0_62
	b	.LBB0_51
.LBB0_63:                               # %for.cond179.preheader
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$fp, $a0, %got_pc_lo12(numberCells)
	ld.w	$a1, $fp, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_69
# %bb.64:                               # %for.body181.preheader
	pcalau12i	$a2, %got_pc_hi20(cellList)
	ld.d	$s0, $a2, %got_pc_lo12(cellList)
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_65:                               # %for.inc185
                                        #   in Loop: Header=BB0_66 Depth=1
	addi.d	$a0, $s1, 1
	bge	$s1, $a1, .LBB0_69
.LBB0_66:                               # %for.body181
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_67 Depth 2
	ld.d	$a2, $s0, 0
	move	$s1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB0_65
	.p2align	4, , 16
.LBB0_67:                               # %while.body
                                        #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB0_67
# %bb.68:                               # %for.inc185.loopexit
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.w	$a1, $fp, 0
	b	.LBB0_65
.LBB0_69:                               # %for.end187
	pcalau12i	$a0, %got_pc_hi20(cellList)
	ld.d	$a0, $a0, %got_pc_lo12(cellList)
	ld.d	$a0, $a0, 0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end0:
	.size	doborder, .Lfunc_end0-doborder
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_46-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_56-.LJTI0_1
	.word	.LBB0_60-.LJTI0_1
	.word	.LBB0_58-.LJTI0_1
	.word	.LBB0_59-.LJTI0_1
	.word	.LBB0_57-.LJTI0_1
	.word	.LBB0_61-.LJTI0_1
	.word	.LBB0_62-.LJTI0_1
                                        # -- End function
	.text
	.globl	findBorder                      # -- Begin function findBorder
	.p2align	5
	.type	findBorder,@function
findBorder:                             # @findBorder
# %bb.0:                                # %entry
	pcalau12i	$a5, %got_pc_hi20(cellList)
	ld.d	$a5, $a5, %got_pc_lo12(cellList)
	ld.d	$a5, $a5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a5, $a5, $a0
	beqz	$a5, .LBB1_9
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $a5, 32
	beqz	$a5, .LBB1_8
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 8
	bne	$a6, $a4, .LBB1_2
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a6, $a5, 12
	bne	$a6, $a1, .LBB1_2
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a6, $a5, 20
	bge	$a2, $a6, .LBB1_2
# %bb.6:                                # %lor.lhs.false7
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a6, $a5, 16
	bge	$a6, $a3, .LBB1_2
# %bb.7:                                # %if.end10
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a6, $a5, 4
	slt	$a7, $a0, $a6
	masknez	$a0, $a0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a0, $a6, $a0
	b	.LBB1_2
.LBB1_8:                                # %for.end
	ret
.LBB1_9:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	findBorder, .Lfunc_end1-findBorder
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
