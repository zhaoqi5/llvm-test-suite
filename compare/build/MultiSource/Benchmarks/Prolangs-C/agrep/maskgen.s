	.file	"maskgen.c"
	.text
	.globl	maskgen                         # -- Begin function maskgen
	.p2align	5
	.type	maskgen,@function
maskgen:                                # @maskgen
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	move	$fp, $a0
	st.b	$zero, $sp, 52
	st.b	$zero, $sp, 88
	st.b	$zero, $sp, 124
	st.b	$zero, $sp, 160
	st.b	$zero, $sp, 196
	st.b	$zero, $sp, 232
	st.b	$zero, $sp, 268
	st.b	$zero, $sp, 304
	st.b	$zero, $sp, 340
	st.b	$zero, $sp, 376
	st.b	$zero, $sp, 412
	st.b	$zero, $sp, 448
	st.b	$zero, $sp, 484
	st.b	$zero, $sp, 520
	st.b	$zero, $sp, 556
	st.b	$zero, $sp, 592
	st.b	$zero, $sp, 628
	st.b	$zero, $sp, 664
	st.b	$zero, $sp, 700
	st.b	$zero, $sp, 736
	st.b	$zero, $sp, 772
	st.b	$zero, $sp, 808
	st.b	$zero, $sp, 844
	st.b	$zero, $sp, 880
	st.b	$zero, $sp, 916
	st.b	$zero, $sp, 952
	st.b	$zero, $sp, 988
	st.b	$zero, $sp, 1024
	st.b	$zero, $sp, 1060
	st.b	$zero, $sp, 1096
	st.b	$zero, $sp, 1132
	st.b	$zero, $sp, 1168
	st.w	$zero, $sp, 48
	st.w	$zero, $sp, 84
	st.w	$zero, $sp, 120
	st.w	$zero, $sp, 156
	st.w	$zero, $sp, 192
	st.w	$zero, $sp, 228
	st.w	$zero, $sp, 264
	st.w	$zero, $sp, 300
	st.w	$zero, $sp, 336
	st.w	$zero, $sp, 372
	st.w	$zero, $sp, 408
	st.w	$zero, $sp, 444
	st.w	$zero, $sp, 480
	st.w	$zero, $sp, 516
	st.w	$zero, $sp, 552
	st.w	$zero, $sp, 588
	st.w	$zero, $sp, 624
	st.w	$zero, $sp, 660
	st.w	$zero, $sp, 696
	st.w	$zero, $sp, 732
	st.w	$zero, $sp, 768
	st.w	$zero, $sp, 804
	st.w	$zero, $sp, 840
	st.w	$zero, $sp, 876
	st.w	$zero, $sp, 912
	st.w	$zero, $sp, 948
	st.w	$zero, $sp, 984
	st.w	$zero, $sp, 1020
	st.w	$zero, $sp, 1056
	st.w	$zero, $sp, 1092
	st.w	$zero, $sp, 1128
	st.w	$zero, $sp, 1164
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$s3, $a0, %got_pc_lo12(endposition)
	st.w	$zero, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(NO_ERR_MASK)
	ld.d	$s4, $a0, %got_pc_lo12(NO_ERR_MASK)
	st.w	$zero, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(wildmask)
	ld.d	$s5, $a0, %got_pc_lo12(wildmask)
	st.w	$zero, $s5, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(NOUPPER)
	ld.d	$a0, $a0, %got_pc_lo12(NOUPPER)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	addi.w	$s6, $s1, 0
	beqz	$a0, .LBB0_6
# %bb.1:                                # %entry
	blez	$s6, .LBB0_6
# %bb.2:                                # %for.body13.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrpick.d	$s1, $s1, 30, 0
	ori	$s2, $zero, 1280
	move	$s7, $fp
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.inc43
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 1
	beqz	$s1, .LBB0_6
.LBB0_4:                                # %for.body13
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s8, $s7, 0
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1280
	bne	$a0, $s2, .LBB0_3
# %bb.5:                                # %if.then32
                                        #   in Loop: Header=BB0_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.b	$a0, $a0, $a1
	st.b	$a0, $s7, 0
	b	.LBB0_3
.LBB0_6:                                # %if.end46
	blez	$s6, .LBB0_48
# %bb.7:                                # %for.body50.lr.ph
	ld.w	$a0, $s5, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a0, 0
	ld.w	$a4, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(D_length)
	ld.d	$a0, $a0, %got_pc_lo12(D_length)
	ld.w	$a6, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(REGEX)
	ld.d	$a0, $a0, %got_pc_lo12(REGEX)
	ld.w	$a7, $a0, 0
	ori	$t0, $zero, 1
	ori	$t1, $zero, 14
	pcalau12i	$a0, %got_pc_hi20(Bit)
	ld.d	$t3, $a0, %got_pc_lo12(Bit)
	move	$t6, $zero
	move	$s8, $zero
	move	$t4, $zero
	move	$t2, $zero
	addi.d	$t5, $sp, 48
	ori	$t7, $zero, 32
	lu12i.w	$a0, -65808
	ori	$t8, $a0, 2570
	lu32i.d	$t8, 0
	lu12i.w	$a0, 263074
	ori	$a0, $a0, 3841
	lu32i.d	$a0, -303013
	lu52i.d	$a0, $a0, 2039
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s7, $zero, 245
	ori	$ra, $zero, 237
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3630
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 2
	ori	$a0, $zero, 1
	b	.LBB0_10
.LBB0_8:                                # %sw.bb72
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$t4, $t4, 1
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB0_9:                                # %for.inc308
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$t6, $t6, 1
	bge	$t6, $s6, .LBB0_46
.LBB0_10:                               # %for.body50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	ldx.bu	$s1, $fp, $t6
	addi.d	$a1, $s1, -239
	bltu	$t1, $a1, .LBB0_13
# %bb.11:                               # %for.body50
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a3, $a1
	add.d	$a1, $a3, $a1
	jr	$a1
.LBB0_12:                               # %sw.bb253
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	or	$a4, $a4, $a1
	st.w	$a4, $s4, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $t5, $a1
	st.w	$t8, $a1, 4
	st.b	$zero, $a1, 8
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_13:                               # %for.body50
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 10
	bne	$s1, $a1, .LBB0_15
# %bb.14:                               # %sw.bb195
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	or	$a4, $a1, $a4
	st.w	$a4, $s4, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $t5, $a1
	ori	$a3, $zero, 2570
	st.h	$a3, $a1, 4
	st.b	$zero, $a1, 6
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_15:                               # %sw.default
                                        #   in Loop: Header=BB0_10 Depth=1
	bne	$s8, $t0, .LBB0_17
# %bb.16:                               # %if.then280
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	or	$a4, $a1, $a4
	st.w	$a4, $s4, 0
	ldx.bu	$s1, $fp, $t6
.LBB0_17:                               # %if.end284
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a3, $t5, $a1
	stx.w	$zero, $a1, $t5
	st.b	$s1, $a3, 5
	st.b	$s1, $a3, 4
	st.b	$zero, $a3, 6
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_18:                               # %sw.bb151
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$a7, $t0, .LBB0_95
# %bb.19:                               # %sw.bb151
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$a5, $t0, .LBB0_95
# %bb.20:                               # %if.end158
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $t3, $a3
	add.d	$t2, $t5, $a1
	stx.w	$s0, $a1, $t5
	st.b	$zero, $t2, 4
	or	$a2, $a3, $a2
	st.w	$a2, $s3, 0
	ori	$t2, $zero, 1
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_21:                               # %sw.bb170
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a3, $t5, $a1
	stx.w	$s0, $a1, $t5
	st.b	$zero, $a3, 4
	bge	$a6, $a0, .LBB0_23
# %bb.22:                               # %if.then180
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a5, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a5, $a1, 0
.LBB0_23:                               # %if.end181
                                        #   in Loop: Header=BB0_10 Depth=1
	bnez	$t2, .LBB0_95
# %bb.24:                               # %if.end181
                                        #   in Loop: Header=BB0_10 Depth=1
	slt	$a1, $a6, $a0
	addi.d	$a3, $a7, -1
	sltui	$a3, $a3, 1
	and	$a1, $a1, $a3
	bnez	$a1, .LBB0_95
# %bb.25:                               # %if.end190
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	move	$t2, $zero
	or	$a2, $a1, $a2
	st.w	$a2, $s3, 0
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_26:                               # %sw.bb212
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	or	$a4, $a1, $a4
	st.w	$a4, $s4, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $t5, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $a1, 4
	st.b	$zero, $a1, 12
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_27:                               # %sw.bb
                                        #   in Loop: Header=BB0_10 Depth=1
	beqz	$a7, .LBB0_45
# %bb.28:                               # %if.then55
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $t5, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.h	$a3, $a1, 4
	st.b	$zero, $a1, 6
	blt	$a0, $t7, .LBB0_44
	b	.LBB0_94
.LBB0_29:                               # %sw.bb74
                                        #   in Loop: Header=BB0_10 Depth=1
	blez	$t4, .LBB0_47
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=1
	move	$s8, $zero
	addi.w	$t4, $t4, -1
	b	.LBB0_9
.LBB0_31:                               # %sw.bb80
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$s8, $t0, .LBB0_34
# %bb.32:                               # %if.end87
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s2, $t6, 1
	ldx.bu	$s1, $fp, $s2
	ori	$a1, $zero, 248
	beq	$s1, $a1, .LBB0_35
.LBB0_33:                               # %if.end98
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$t6, $zero
	bne	$s1, $s7, .LBB0_36
	b	.LBB0_42
.LBB0_34:                               # %if.then83
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t3, $a1
	or	$a4, $a1, $a4
	st.w	$a4, $s4, 0
	addi.w	$s2, $t6, 1
	ldx.bu	$s1, $fp, $s2
	ori	$a1, $zero, 248
	bne	$s1, $a1, .LBB0_33
.LBB0_35:                               # %if.then93
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s2, $t6, 2
	ldx.bu	$s1, $fp, $s2
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	stx.w	$t0, $a1, $t5
	move	$t6, $zero
	beq	$s1, $s7, .LBB0_42
.LBB0_36:                               # %if.end98
                                        #   in Loop: Header=BB0_10 Depth=1
	bge	$s2, $s6, .LBB0_42
# %bb.37:                               # %while.body.lr.ph
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$t6, $zero
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a3, $t5, $a1
	addi.d	$a1, $a3, 4
	.p2align	4, , 16
.LBB0_38:                               # %while.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s1, $ra, .LBB0_40
# %bb.39:                               # %if.then111
                                        #   in Loop: Header=BB0_38 Depth=2
	add.d	$s1, $fp, $s2
	ld.b	$s1, $s1, 1
	add.d	$s0, $a3, $t6
	st.b	$s1, $s0, 3
	ori	$s1, $zero, 2
	add.w	$s2, $s2, $s1
	ldx.bu	$s1, $fp, $s2
	bne	$s1, $s7, .LBB0_41
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               # %if.else
                                        #   in Loop: Header=BB0_38 Depth=2
	add.d	$s0, $a1, $t6
	st.b	$s1, $s0, 1
	stx.b	$s1, $a1, $t6
	addi.w	$t6, $t6, 2
	ori	$s1, $zero, 1
	add.w	$s2, $s2, $s1
	ldx.bu	$s1, $fp, $s2
	beq	$s1, $s7, .LBB0_42
.LBB0_41:                               # %if.end137
                                        #   in Loop: Header=BB0_38 Depth=2
	blt	$s2, $s6, .LBB0_38
.LBB0_42:                               # %while.end
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$s2, $s6, .LBB0_96
# %bb.43:                               # %if.end142
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $t5, $a1
	add.d	$a1, $a1, $t6
	st.b	$zero, $a1, 4
	move	$t6, $s2
	ori	$s0, $zero, 2
	bge	$a0, $t7, .LBB0_94
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $a0, 1
	b	.LBB0_9
.LBB0_45:                               # %if.end69
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a1, $a0, $t3, 2
	ld.w	$a1, $a1, -4
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	or	$a3, $a1, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.w	$a3, $s5, 0
	b	.LBB0_9
.LBB0_46:                               # %for.end310
	beqz	$t4, .LBB0_49
.LBB0_47:                               # %if.then77
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	b	.LBB0_97
.LBB0_48:
	ori	$a0, $zero, 1
.LBB0_49:                               # %if.end315
	addi.w	$fp, $a0, -1
	ori	$a1, $zero, 33
	ld.w	$a2, $s5, 0
	sub.w	$a1, $a1, $a0
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s4, 0
	srl.w	$a3, $a2, $a1
	st.w	$a3, $s5, 0
	srl.w	$a4, $a4, $a1
	srai.d	$a5, $a5, 1
	pcalau12i	$a2, %got_pc_hi20(Bit)
	ld.d	$a2, $a2, %got_pc_lo12(Bit)
	ld.w	$a6, $a2, 4
	orn	$a5, $a6, $a5
	ori	$a6, $zero, 32
	sub.d	$a7, $a6, $a0
	sra.w	$a5, $a5, $a7
	st.w	$a5, $s4, 0
	pcalau12i	$a5, %got_pc_hi20(Init)
	ld.d	$a5, $a5, %got_pc_lo12(Init)
	ld.w	$a7, $a5, 0
	blt	$a6, $a0, .LBB0_62
# %bb.50:                               # %iter.check
	ori	$t1, $zero, 1
	slt	$a6, $t1, $a1
	masknez	$t0, $t1, $a6
	maskeqz	$a6, $a1, $a6
	ori	$t2, $zero, 4
	or	$a6, $a6, $t0
	blt	$a1, $t2, .LBB0_60
# %bb.51:                               # %vector.main.loop.iter.check
	ori	$t0, $zero, 16
	bge	$a1, $t0, .LBB0_53
# %bb.52:
	move	$t0, $zero
	b	.LBB0_57
.LBB0_53:                               # %vector.ph
	andi	$t1, $a6, 12
	bstrpick.d	$t0, $a6, 30, 4
	xvrepli.b	$xr0, 0
	slli.d	$t0, $t0, 4
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $a7, 0
	addi.d	$a7, $a2, 36
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_54:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, -32
	xvld	$xr3, $a7, 0
	xvor.v	$xr1, $xr2, $xr1
	xvor.v	$xr0, $xr3, $xr0
	addi.d	$t2, $t2, -16
	addi.d	$a7, $a7, 64
	bnez	$t2, .LBB0_54
# %bb.55:                               # %middle.block
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.q	$xr1, $xr0, 1
	vor.v	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	beq	$t0, $a6, .LBB0_62
# %bb.56:                               # %vec.epilog.iter.check
	beqz	$t1, .LBB0_93
.LBB0_57:                               # %vec.epilog.ph
	bstrpick.d	$t1, $a6, 30, 2
	slli.d	$t2, $t1, 2
	srli.d	$t3, $a6, 2
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t3, 30, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a7, 0
	alsl.d	$a7, $t0, $a2, 2
	addi.d	$a7, $a7, 4
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB0_58:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vor.v	$vr0, $vr1, $vr0
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB0_58
# %bb.59:                               # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	beq	$t2, $a6, .LBB0_62
.LBB0_60:                               # %for.body328.preheader
	alsl.d	$t0, $t1, $a2, 2
	sub.d	$a6, $a6, $t1
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB0_61:                               # %for.body328
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	or	$a7, $t1, $a7
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 4
	bnez	$a6, .LBB0_61
.LBB0_62:                               # %for.end334
	or	$a6, $a7, $a4
	st.w	$a6, $a5, 0
	slli.d	$a4, $a4, 1
	addi.d	$a4, $a4, 1
	or	$a3, $a4, $a3
	or	$a3, $a3, $a6
	pcalau12i	$a5, %got_pc_hi20(Init1)
	ld.d	$a5, $a5, %got_pc_lo12(Init1)
	st.w	$a3, $a5, 0
	pcalau12i	$a3, %got_pc_hi20(D_length)
	ld.d	$a3, $a3, %got_pc_lo12(D_length)
	ld.w	$a3, $a3, 0
	sub.d	$a3, $fp, $a3
	addi.d	$a5, $zero, -1
	sll.w	$a3, $a5, $a3
	and	$a3, $a3, $a4
	pcalau12i	$a5, %got_pc_hi20(D_endpos)
	ld.d	$a5, $a5, %got_pc_lo12(D_endpos)
	st.w	$a3, $a5, 0
	xor	$a3, $a3, $a4
	ori	$a4, $zero, 2
	st.w	$a3, $s3, 0
	blt	$a0, $a4, .LBB0_87
# %bb.63:                               # %for.cond347.preheader.us.preheader
	pcalau12i	$a3, %got_pc_hi20(REGEX)
	ld.d	$a3, $a3, %got_pc_lo12(REGEX)
	ld.w	$a3, $a3, 0
	alsl.d	$a1, $a1, $a2, 2
	addi.d	$a2, $sp, 90
	addi.d	$a4, $sp, 89
	pcalau12i	$a5, %got_pc_hi20(Mask)
	ld.d	$a5, $a5, %got_pc_lo12(Mask)
	move	$a6, $zero
	ori	$a7, $zero, 10
	addi.d	$t0, $sp, 48
	ori	$t1, $zero, 1
	ori	$t2, $zero, 238
	ori	$t3, $zero, 256
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               # %for.cond347.for.inc435_crit_edge.us
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t3, .LBB0_87
.LBB0_65:                               # %for.cond347.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_78 Depth 2
                                        #       Child Loop BB0_80 Depth 3
	alsl.d	$t4, $a6, $a5, 2
	bne	$a6, $a7, .LBB0_76
# %bb.66:                               # %for.cond347.preheader.us
                                        #   in Loop: Header=BB0_65 Depth=1
	bnez	$a3, .LBB0_76
# %bb.67:                               # %while.cond351.preheader.us225.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $a2
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %for.inc432.us222
                                        #   in Loop: Header=BB0_69 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 36
	beq	$t5, $a0, .LBB0_64
.LBB0_69:                               # %while.cond351.preheader.us225
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
	slli.d	$t7, $t5, 5
	alsl.d	$t7, $t5, $t7, 2
	add.d	$t7, $t0, $t7
	ld.bu	$s0, $t7, 4
	move	$t8, $t6
	bnez	$s0, .LBB0_73
.LBB0_70:                               # %while.end416.us215
                                        #   in Loop: Header=BB0_69 Depth=2
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_68
.LBB0_71:                               # %if.then422.us217
                                        #   in Loop: Header=BB0_69 Depth=2
	ld.w	$t7, $t4, 0
	slli.d	$t8, $t5, 2
	ldx.w	$t8, $a1, $t8
	xor	$t7, $t8, $t7
	st.w	$t7, $t4, 0
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_72:                               # %if.end414.us
                                        #   in Loop: Header=BB0_73 Depth=3
	ld.bu	$s0, $t8, 0
	addi.d	$t8, $t8, 2
	beqz	$s0, .LBB0_70
.LBB0_73:                               # %if.end384.us
                                        #   Parent Loop BB0_65 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a7, $s0, .LBB0_72
# %bb.74:                               # %land.lhs.true394.us
                                        #   in Loop: Header=BB0_73 Depth=3
	ld.bu	$s0, $t8, -1
	bltu	$s0, $a7, .LBB0_72
# %bb.75:                               # %if.then405.split.us
                                        #   in Loop: Header=BB0_69 Depth=2
	ld.w	$t8, $t4, 0
	slli.d	$s0, $t5, 2
	ldx.w	$s0, $a1, $s0
	or	$t8, $s0, $t8
	st.w	$t8, $t4, 0
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_68
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_76:                               # %while.cond351.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $a4
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               # %for.inc432.us.us
                                        #   in Loop: Header=BB0_78 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 36
	beq	$t5, $a0, .LBB0_64
.LBB0_78:                               # %while.cond351.preheader.us.us
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
	slli.d	$t7, $t5, 5
	alsl.d	$t7, $t5, $t7, 2
	add.d	$t7, $t0, $t7
	move	$t8, $t6
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_79:                               # %if.end414.us.us.us
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$t8, $t8, 2
.LBB0_80:                               # %while.cond351.us.us.us
                                        #   Parent Loop BB0_65 Depth=1
                                        #     Parent Loop BB0_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$s0, $t8, -1
	beqz	$s0, .LBB0_85
# %bb.81:                               # %while.cond351.us.us.us
                                        #   in Loop: Header=BB0_80 Depth=3
	beq	$s0, $t2, .LBB0_84
# %bb.82:                               # %if.end384.us.us.us
                                        #   in Loop: Header=BB0_80 Depth=3
	bltu	$a6, $s0, .LBB0_79
# %bb.83:                               # %land.lhs.true394.us.us.us
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.bu	$s0, $t8, 0
	bltu	$s0, $a6, .LBB0_79
.LBB0_84:                               # %while.end416.us.us.sink.split
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.w	$t8, $t4, 0
	slli.d	$s0, $t5, 2
	ldx.w	$s0, $a1, $s0
	or	$t8, $s0, $t8
	st.w	$t8, $t4, 0
.LBB0_85:                               # %while.end416.us.us
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_77
# %bb.86:                               # %if.then422.us.us
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.w	$t7, $t4, 0
	slli.d	$t8, $t5, 2
	ldx.w	$t8, $a1, $t8
	xor	$t7, $t8, $t7
	st.w	$t7, $t4, 0
	b	.LBB0_77
.LBB0_87:                               # %for.end438
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_92
# %bb.88:                               # %for.cond441.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$s0, $a0, 130
	ori	$s1, $zero, 260
	ori	$s2, $zero, 364
	pcalau12i	$a0, %got_pc_hi20(Mask)
	ld.d	$s3, $a0, %got_pc_lo12(Mask)
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_89:                               # %for.inc465
                                        #   in Loop: Header=BB0_90 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 2
	beq	$s1, $s2, .LBB0_92
.LBB0_90:                               # %for.body445
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	andi	$a0, $a0, 256
	beqz	$a0, .LBB0_89
# %bb.91:                               # %if.then453
                                        #   in Loop: Header=BB0_90 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	stx.w	$a0, $s3, $s1
	b	.LBB0_89
.LBB0_92:                               # %if.end470
	move	$a0, $fp
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.LBB0_93:
	addi.d	$t1, $t0, 1
	b	.LBB0_60
.LBB0_94:                               # %if.then305
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	b	.LBB0_97
.LBB0_95:                               # %if.then156
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_96:                               # %if.then140
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
.LBB0_97:                               # %if.then77
	pcalau12i	$a2, %got_pc_hi20(Progname)
	ld.d	$a2, $a2, %got_pc_lo12(Progname)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	maskgen, .Lfunc_end0-maskgen
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_96-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: illegal pattern, unmatched '<', '>'\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: illegal pattern, unmatched '[', ']'\n"
	.size	.L.str.1, 41

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"illegal pattern \n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: pattern too long\n"
	.size	.L.str.3, 22

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Progname
