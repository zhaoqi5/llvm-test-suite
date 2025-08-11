	.file	"mv-search.c"
	.text
	.globl	SetMotionVectorPredictor        # -- Begin function SetMotionVectorPredictor
	.p2align	5
	.type	SetMotionVectorPredictor,@function
SetMotionVectorPredictor:               # @SetMotionVectorPredictor
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$s3, $a4, %got_pc_lo12(img)
	ld.d	$a4, $s3, 0
	move	$s4, $a7
	move	$s5, $a6
	move	$s1, $a5
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.w	$s6, $a5, 2
	ld.w	$s7, $a4, 12
	slli.w	$a2, $a6, 2
	addi.d	$fp, $zero, -1
	alsl.w	$s8, $a5, $fp, 2
	addi.d	$a3, $sp, 112
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	alsl.w	$fp, $s5, $fp, 2
	addi.d	$a3, $sp, 88
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$s6, $s1, $s4, 2
	addi.d	$a3, $sp, 64
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 40
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB0_6
# %bb.1:                                # %if.then
	blt	$a0, $s1, .LBB0_4
# %bb.2:                                # %if.then7
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB0_5
# %bb.3:                                # %if.then9
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_6
	b	.LBB0_15
.LBB0_4:                                # %if.else18
	ori	$a0, $zero, 16
	bne	$s6, $a0, .LBB0_6
	b	.LBB0_15
.LBB0_5:                                # %if.else
	ori	$a0, $zero, 8
	beq	$s6, $a0, .LBB0_15
.LBB0_6:                                # %if.end25
	ld.w	$a0, $sp, 64
	beqz	$a0, .LBB0_15
# %bb.7:                                # %if.end28
	ld.d	$a0, $s3, 0
	ldptr.w	$a2, $a0, 15268
	move	$t3, $s0
	beqz	$a2, .LBB0_16
.LBB0_8:                                # %if.else61
	ld.w	$a1, $a0, 12
	ldptr.d	$a4, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a4, $a1
	ld.w	$a3, $a1, 424
	ld.w	$a1, $sp, 112
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_23
# %bb.9:                                # %if.then66
	addi.d	$a5, $zero, -1
	beqz	$a1, .LBB0_11
# %bb.10:                               # %cond.true69
	ld.w	$a3, $sp, 132
	ld.w	$a5, $sp, 116
	ori	$a6, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t3, $a3
	ld.w	$a7, $sp, 128
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a4, $a5
	ld.w	$a5, $a5, 424
	ldx.b	$a3, $a3, $a7
	sltui	$a5, $a5, 1
	sll.w	$a5, $a3, $a5
.LBB0_11:                               # %cond.end95
	ld.w	$a3, $sp, 88
	addi.d	$a6, $zero, -1
	addi.d	$t2, $zero, -1
	beqz	$a3, .LBB0_13
# %bb.12:                               # %cond.true99
	ld.w	$a6, $sp, 108
	ld.w	$a7, $sp, 92
	ori	$t0, $zero, 536
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t3, $a6
	ld.w	$t1, $sp, 104
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a4, $a7
	ld.w	$a7, $a7, 424
	ldx.b	$a6, $a6, $t1
	sltui	$a7, $a7, 1
	sll.w	$a6, $a6, $a7
.LBB0_13:                               # %cond.end126
	ld.w	$a7, $sp, 64
	beqz	$a7, .LBB0_33
# %bb.14:                               # %cond.true130
	ld.w	$a7, $sp, 84
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 536
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $t3, $a7
	ld.w	$t2, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a4, $a4, $t0
	ld.w	$t0, $a4, 424
	ldx.b	$a7, $a7, $t2
	move	$a4, $zero
	sltui	$t0, $t0, 1
	sll.w	$t2, $a7, $t0
	b	.LBB0_32
.LBB0_15:                               # %if.then27
	ld.d	$a0, $sp, 56
	vld	$vr0, $sp, 40
	st.d	$a0, $sp, 80
	vst	$vr0, $sp, 64
	ld.d	$a0, $s3, 0
	ldptr.w	$a2, $a0, 15268
	move	$t3, $s0
	bnez	$a2, .LBB0_8
.LBB0_16:                               # %if.then30
	ld.w	$a1, $sp, 112
	addi.d	$t2, $zero, -1
	addi.d	$a5, $zero, -1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_18
# %bb.17:                               # %cond.true
	ld.w	$a3, $sp, 132
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t3, $a3
	ld.w	$a4, $sp, 128
	ldx.b	$a5, $a3, $a4
.LBB0_18:                               # %cond.end
	ld.w	$a3, $sp, 88
	addi.d	$a6, $zero, -1
	beqz	$a3, .LBB0_20
# %bb.19:                               # %cond.true37
	ld.w	$a4, $sp, 108
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t3, $a4
	ld.w	$a6, $sp, 104
	ldx.b	$a6, $a4, $a6
.LBB0_20:                               # %cond.end46
	ld.w	$a4, $sp, 64
	beqz	$a4, .LBB0_33
# %bb.21:                               # %cond.true50
	ld.w	$a4, $sp, 84
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t3, $a4
	ld.w	$a7, $sp, 80
	ldx.b	$t2, $a4, $a7
.LBB0_22:                               # %cond.false239
	move	$a4, $zero
	b	.LBB0_32
.LBB0_23:                               # %if.else159
	addi.d	$t2, $zero, -1
	addi.d	$a5, $zero, -1
	beqz	$a1, .LBB0_26
# %bb.24:                               # %cond.true162
	ld.w	$a3, $sp, 132
	ld.w	$a5, $sp, 116
	ori	$a6, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t3, $a3
	ld.w	$a7, $sp, 128
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a4, $a5
	ld.w	$a6, $a5, 424
	ldx.bu	$a3, $a3, $a7
	ext.w.b	$a5, $a3
	beqz	$a6, .LBB0_26
# %bb.25:                               # %cond.true169
	srai.d	$a5, $a5, 1
.LBB0_26:                               # %cond.end188
	ld.w	$a3, $sp, 88
	addi.d	$a6, $zero, -1
	beqz	$a3, .LBB0_29
# %bb.27:                               # %cond.true192
	ld.w	$a6, $sp, 108
	ld.w	$a7, $sp, 92
	ori	$t0, $zero, 536
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t3, $a6
	ld.w	$t1, $sp, 104
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a4, $a7
	ld.w	$a7, $a7, 424
	ldx.bu	$a6, $a6, $t1
	ext.w.b	$a6, $a6
	beqz	$a7, .LBB0_29
# %bb.28:                               # %cond.true199
	srai.d	$a6, $a6, 1
.LBB0_29:                               # %cond.end219
	ld.w	$a7, $sp, 64
	beqz	$a7, .LBB0_33
# %bb.30:                               # %cond.true223
	ld.w	$a7, $sp, 84
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 536
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $t3, $a7
	ld.w	$t2, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a4, $a4, $t0
	ld.w	$a4, $a4, 424
	ldx.bu	$a7, $a7, $t2
	ext.w.b	$t2, $a7
	beqz	$a4, .LBB0_22
# %bb.31:                               # %cond.true230
	move	$a4, $zero
	srai.d	$t2, $t2, 1
.LBB0_32:                               # %if.end253
	ori	$t1, $zero, 1
	addi.w	$a7, $a5, 0
	addi.w	$t0, $t2, 0
	addi.w	$a6, $a6, 0
	beq	$a7, $s0, .LBB0_34
	b	.LBB0_36
.LBB0_33:
	move	$t1, $zero
	ori	$a4, $zero, 1
	addi.w	$a7, $a5, 0
	addi.w	$t0, $t2, 0
	addi.w	$a6, $a6, 0
	bne	$a7, $s0, .LBB0_36
.LBB0_34:                               # %if.end253
	beq	$a6, $s0, .LBB0_36
# %bb.35:                               # %if.end253
	ori	$a5, $zero, 1
	bne	$t0, $s0, .LBB0_39
.LBB0_36:                               # %if.else265
	xor	$a5, $t0, $s0
	sltui	$t2, $a5, 1
	xor	$a5, $a6, $s0
	sltu	$t3, $zero, $a5
	xor	$a5, $a7, $s0
	sltui	$a5, $a5, 1
	or	$a5, $a5, $t2
	or	$t4, $a5, $t3
	ori	$a5, $zero, 2
	masknez	$a5, $a5, $t4
	beq	$a7, $s0, .LBB0_39
# %bb.37:                               # %if.else265
	beqz	$t4, .LBB0_39
# %bb.38:                               # %land.lhs.true282
	ori	$a5, $zero, 3
	maskeqz	$a5, $a5, $t2
	maskeqz	$a5, $a5, $t3
.LBB0_39:                               # %if.end293
	ld.d	$t2, $sp, 224
	ori	$t3, $zero, 8
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	bne	$t4, $t3, .LBB0_43
# %bb.40:                               # %if.end293
	ori	$t3, $zero, 16
	bne	$t2, $t3, .LBB0_43
# %bb.41:                               # %if.then299
	beqz	$s1, .LBB0_46
# %bb.42:                               # %if.else308
	xor	$a6, $t0, $s0
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 3
	b	.LBB0_48
.LBB0_43:                               # %if.else315
	ori	$t0, $zero, 16
	bne	$t4, $t0, .LBB0_49
# %bb.44:                               # %if.else315
	ori	$t0, $zero, 8
	bne	$t2, $t0, .LBB0_49
# %bb.45:                               # %if.then321
	beqz	$s5, .LBB0_47
.LBB0_46:                               # %if.else330
	xor	$a6, $a7, $s0
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 1
	b	.LBB0_48
.LBB0_47:                               # %if.then324
	xor	$a6, $a6, $s0
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 2
.LBB0_48:                               # %if.then345
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
.LBB0_49:                               # %if.then345
	ld.w	$a6, $sp, 132
	ld.w	$t4, $sp, 128
	ld.w	$a7, $sp, 108
	alsl.d	$t5, $a6, $s2, 3
	beqz	$a1, .LBB0_53
# %bb.50:                               # %cond.true348
	ld.d	$a6, $t5, 0
	slli.d	$t0, $t4, 3
	ldx.d	$a6, $a6, $t0
	ld.h	$t7, $a6, 0
	ld.w	$a6, $sp, 84
	ld.w	$t2, $sp, 104
	alsl.d	$t3, $a7, $s2, 3
	beqz	$a3, .LBB0_54
.LBB0_51:                               # %cond.true363
	ld.d	$a7, $t3, 0
	slli.d	$t0, $t2, 3
	ldx.d	$a7, $a7, $t0
	ld.h	$t6, $a7, 0
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a3
	alsl.d	$t0, $a6, $s2, 3
	beqz	$a4, .LBB0_55
.LBB0_52:
	move	$t8, $zero
	b	.LBB0_56
.LBB0_53:
	move	$t7, $zero
	ld.w	$a6, $sp, 84
	ld.w	$t2, $sp, 104
	alsl.d	$t3, $a7, $s2, 3
	bnez	$a3, .LBB0_51
.LBB0_54:
	move	$t6, $zero
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a3
	alsl.d	$t0, $a6, $s2, 3
	bnez	$a4, .LBB0_52
.LBB0_55:                               # %cond.true378
	ld.d	$a6, $t0, 0
	slli.d	$t8, $a7, 3
	ldx.d	$a6, $a6, $t8
	ld.h	$t8, $a6, 0
.LBB0_56:                               # %if.end610
	slli.d	$a6, $a5, 2
	pcalau12i	$a5, %pc_hi20(.LJTI0_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI0_0)
	ldx.w	$s0, $a5, $a6
	add.d	$s0, $a5, $s0
	or	$a5, $fp, $t1
	jr	$s0
.LBB0_57:                               # %sw.bb
	beqz	$a5, .LBB0_61
# %bb.58:                               # %if.else617
	slt	$t1, $t6, $t8
	masknez	$fp, $t8, $t1
	maskeqz	$t1, $t6, $t1
	or	$t1, $t1, $fp
	slt	$fp, $t7, $t1
	masknez	$t1, $t1, $fp
	maskeqz	$fp, $t7, $fp
	or	$t1, $fp, $t1
	slt	$fp, $t8, $t6
	masknez	$s0, $t8, $fp
	maskeqz	$fp, $t6, $fp
	or	$fp, $fp, $s0
	slt	$s0, $fp, $t7
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $t7, $s0
	or	$fp, $s0, $fp
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $t8
	add.d	$t1, $fp, $t1
	sub.d	$t7, $t6, $t1
	b	.LBB0_61
.LBB0_59:                               # %sw.bb627
	move	$t7, $t6
	b	.LBB0_61
.LBB0_60:                               # %sw.bb628
	move	$t7, $t8
.LBB0_61:                               # %sw.epilog
	ld.w	$t8, $sp, 116
	ld.w	$t6, $sp, 92
	ld.w	$t1, $sp, 68
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	st.h	$t7, $fp, 0
	beqz	$a2, .LBB0_68
# %bb.62:                               # %if.else391.1
	ld.w	$t7, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a0, $zero, 536
	mul.d	$a0, $t7, $a0
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 424
	beqz	$a0, .LBB0_71
# %bb.63:                               # %if.then398.1
	beqz	$a1, .LBB0_74
# %bb.64:                               # %cond.true401.1
	ld.d	$a0, $t5, 0
	ori	$a1, $zero, 536
	slli.d	$t4, $t4, 3
	ldx.d	$a0, $a0, $t4
	mul.d	$a1, $t8, $a1
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 424
	ld.hu	$a0, $a0, 2
	beqz	$a1, .LBB0_79
# %bb.65:                               # %cond.true408.1
	ext.w.h	$a0, $a0
	beqz	$a3, .LBB0_75
.LBB0_66:                               # %cond.true435.1
	ld.d	$a1, $t3, 0
	ori	$a3, $zero, 536
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a3, $t6, $a3
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 424
	ld.hu	$a1, $a1, 2
	beqz	$a3, .LBB0_80
# %bb.67:                               # %cond.true442.1
	ext.w.h	$a1, $a1
	bnez	$a4, .LBB0_85
	b	.LBB0_81
.LBB0_68:                               # %if.then345.1
	beqz	$a1, .LBB0_76
# %bb.69:                               # %cond.true348.1
	ld.d	$a0, $t5, 0
	slli.d	$a1, $t4, 3
	ldx.d	$a0, $a0, $a1
	ld.h	$a0, $a0, 2
	beqz	$a3, .LBB0_77
.LBB0_70:                               # %cond.true363.1
	ld.d	$a1, $t3, 0
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	ld.h	$a1, $a1, 2
	beqz	$a4, .LBB0_78
	b	.LBB0_85
.LBB0_71:                               # %if.else503.1
	beqz	$a1, .LBB0_83
# %bb.72:                               # %cond.true506.1
	ld.d	$a0, $t5, 0
	ori	$a1, $zero, 536
	slli.d	$t4, $t4, 3
	ldx.d	$a0, $a0, $t4
	mul.d	$a1, $t8, $a1
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 424
	ld.h	$a0, $a0, 2
	sltu	$a1, $zero, $a1
	sll.w	$a0, $a0, $a1
	beqz	$a3, .LBB0_84
.LBB0_73:                               # %cond.true541.1
	ld.d	$a1, $t3, 0
	ori	$a3, $zero, 536
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a3, $t6, $a3
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 424
	ld.h	$a1, $a1, 2
	sltu	$a3, $zero, $a3
	sll.w	$a1, $a1, $a3
	bnez	$a4, .LBB0_85
	b	.LBB0_89
.LBB0_74:
	move	$a0, $zero
	bnez	$a3, .LBB0_66
.LBB0_75:
	move	$a1, $zero
	beqz	$a4, .LBB0_81
	b	.LBB0_85
.LBB0_76:
	move	$a0, $zero
	bnez	$a3, .LBB0_70
.LBB0_77:
	move	$a1, $zero
	bnez	$a4, .LBB0_85
.LBB0_78:                               # %cond.true378.1
	ld.d	$a2, $t0, 0
	slli.d	$a3, $a7, 3
	ldx.d	$a2, $a2, $a3
	ld.h	$a2, $a2, 2
	b	.LBB0_86
.LBB0_79:                               # %cond.false418.1
	srli.d	$a1, $a0, 15
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 1
	bnez	$a3, .LBB0_66
	b	.LBB0_75
.LBB0_80:                               # %cond.false452.1
	srli.d	$a3, $a1, 15
	add.d	$a1, $a1, $a3
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	bnez	$a4, .LBB0_85
.LBB0_81:                               # %cond.true470.1
	ld.d	$a3, $t0, 0
	ori	$a4, $zero, 536
	slli.d	$a7, $a7, 3
	ldx.d	$a3, $a3, $a7
	mul.d	$a4, $t1, $a4
	add.d	$a2, $a2, $a4
	ld.w	$a4, $a2, 424
	ld.hu	$a2, $a3, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	beqz	$a4, .LBB0_90
# %bb.82:                               # %cond.true477.1
	ldx.w	$a4, $a3, $a6
	add.d	$a3, $a3, $a4
	ext.w.h	$a2, $a2
	jr	$a3
.LBB0_83:
	move	$a0, $zero
	bnez	$a3, .LBB0_73
.LBB0_84:
	move	$a1, $zero
	beqz	$a4, .LBB0_89
.LBB0_85:
	move	$a2, $zero
.LBB0_86:                               # %if.end610.1
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	ldx.w	$a4, $a3, $a6
	add.d	$a3, $a3, $a4
	jr	$a3
.LBB0_87:                               # %sw.bb.1
	beqz	$a5, .LBB0_93
# %bb.88:                               # %if.else617.1
	addi.w	$a3, $a2, 0
	addi.w	$a4, $a1, 0
	slt	$a5, $a4, $a3
	masknez	$a6, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a6
	addi.w	$a6, $a0, 0
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a7, $a6, $a7
	or	$a5, $a7, $a5
	slt	$a7, $a3, $a4
	masknez	$a3, $a3, $a7
	maskeqz	$a4, $a4, $a7
	or	$a3, $a4, $a3
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	add.d	$a1, $a3, $a5
	sub.d	$a0, $a0, $a1
	b	.LBB0_93
.LBB0_89:                               # %cond.true576.1
	ori	$a3, $zero, 536
	mul.d	$a3, $t1, $a3
	ld.d	$a4, $t0, 0
	add.d	$a2, $a2, $a3
	ld.w	$a2, $a2, 424
	slli.d	$a3, $a7, 3
	ldx.d	$a3, $a4, $a3
	pcalau12i	$a4, %pc_hi20(.LJTI0_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_1)
	ldx.w	$a6, $a4, $a6
	ld.h	$a3, $a3, 2
	sltu	$a2, $zero, $a2
	add.d	$a4, $a4, $a6
	sll.w	$a2, $a3, $a2
	jr	$a4
.LBB0_90:                               # %cond.false487.1
	ldx.w	$a4, $a3, $a6
	srli.d	$a6, $a2, 15
	add.d	$a2, $a2, $a6
	ext.w.h	$a2, $a2
	add.d	$a3, $a3, $a4
	srai.d	$a2, $a2, 1
	jr	$a3
.LBB0_91:                               # %sw.bb627.1
	move	$a0, $a1
	b	.LBB0_93
.LBB0_92:                               # %sw.bb628.1
	move	$a0, $a2
.LBB0_93:                               # %sw.epilog.1
	st.h	$a0, $fp, 2
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	SetMotionVectorPredictor, .Lfunc_end0-SetMotionVectorPredictor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_87-.LJTI0_1
	.word	.LBB0_93-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_92-.LJTI0_1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Init_Motion_Search_Module
.LCPI1_0:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI1_1:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	Init_Motion_Search_Module
	.p2align	5
	.type	Init_Motion_Search_Module,@function
Init_Motion_Search_Module:              # @Init_Motion_Search_Module
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$s1, $a0, 28
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s7, $a0, %got_pc_lo12(img)
	slli.d	$a0, $s1, 1
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a0
	ld.d	$s2, $s7, 0
	ori	$a1, $zero, 9
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	ld.w	$a3, $s2, 32
	maskeqz	$a0, $a0, $a2
	or	$fp, $a0, $a1
	ori	$a0, $zero, 15
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_1)
	fdiv.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa0, $fs2
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fs0, $fa0
	addi.d	$s4, $zero, -1
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 13
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa0, $fs2
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s0, $fa0
	ori	$a0, $zero, 3
	alsl.w	$s6, $s0, $a0, 1
	bstrpick.d	$a0, $s6, 32, 1
	sll.w	$a0, $s4, $a0
	ldptr.w	$a1, $s2, 15520
	ldptr.w	$a2, $s2, 15524
	nor	$a0, $a0, $zero
	pcalau12i	$s3, %pc_hi20(max_mvd)
	st.w	$a0, $s3, %pc_lo12(max_mvd)
	slt	$a0, $a2, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 6
	addi.d	$a0, $a0, 64
	pcalau12i	$s2, %pc_hi20(byte_abs_range)
	st.w	$a0, $s2, %pc_lo12(byte_abs_range)
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(spiral_search_x)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(spiral_search_x)
	bnez	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	movfr2gr.s	$s8, $fs0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(spiral_search_y)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(spiral_search_y)
	bnez	$a0, .LBB1_4
# %bb.3:                                # %if.then44
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end45
	addi.d	$s5, $s8, 1
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(spiral_hpel_search_x)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(spiral_hpel_search_x)
	bnez	$a0, .LBB1_6
# %bb.5:                                # %if.then50
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %if.end51
	sll.w	$s4, $s4, $s5
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(spiral_hpel_search_y)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(spiral_hpel_search_y)
	bnez	$a0, .LBB1_8
# %bb.7:                                # %if.then56
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %if.end57
	ld.w	$a0, $s3, %pc_lo12(max_mvd)
	nor	$fp, $s4, $zero
	slli.d	$a0, $a0, 1
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(mvbits)
	st.d	$a0, $s5, %pc_lo12(mvbits)
	bnez	$a0, .LBB1_10
# %bb.9:                                # %if.then64
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end65
	slli.d	$s8, $s8, 1
	addi.w	$a0, $fp, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(refbits)
	st.d	$a0, $s4, %pc_lo12(refbits)
	bnez	$a0, .LBB1_12
# %bb.11:                               # %if.then70
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %if.end71
	ld.w	$a0, $s2, %pc_lo12(byte_abs_range)
	addi.w	$s8, $s8, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(byte_abs)
	st.d	$a0, $fp, %pc_lo12(byte_abs)
	bnez	$a0, .LBB1_14
# %bb.13:                               # %if.then76
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %if.end77
	ld.d	$a0, $s7, 0
	ld.w	$a3, $a0, 32
	pcalau12i	$a0, %pc_hi20(motion_cost)
	addi.d	$a0, $a0, %pc_lo12(motion_cost)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 2
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(max_mvd)
	ld.d	$a2, $s5, %pc_lo12(mvbits)
	alsl.d	$a1, $a0, $a2, 2
	ld.wu	$a3, $s2, %pc_lo12(byte_abs_range)
	slli.d	$a4, $a0, 2
	st.d	$a1, $s5, %pc_lo12(mvbits)
	ld.d	$a0, $fp, %pc_lo12(byte_abs)
	srli.d	$a5, $a3, 31
	add.w	$a3, $a3, $a5
	srai.d	$a3, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	st.d	$a0, $fp, %pc_lo12(byte_abs)
	ori	$a3, $zero, 1
	stx.w	$a3, $a2, $a4
	bltz	$s0, .LBB1_20
# %bb.15:                               # %for.body.preheader
	ori	$a2, $zero, 3
	ori	$a4, $zero, 31
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               # %for.inc96
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a2, $a2, 2
	blt	$s6, $a2, .LBB1_20
.LBB1_17:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	bstrpick.d	$a5, $a2, 31, 1
	beq	$a5, $a4, .LBB1_16
# %bb.18:                               # %for.body91.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	sll.w	$a5, $a3, $a5
	srai.d	$a6, $a5, 1
	slli.d	$a7, $a6, 2
	sub.d	$a7, $a1, $a7
	alsl.d	$t0, $a6, $a1, 2
	.p2align	4, , 16
.LBB1_19:                               # %for.body91
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $t0, 0
	st.w	$a2, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 4
	blt	$a6, $a5, .LBB1_19
	b	.LBB1_16
.LBB1_20:                               # %for.end98
	ld.d	$a1, $s4, %pc_lo12(refbits)
	ori	$a2, $zero, 3
	st.w	$a3, $a1, 0
	bge	$s8, $a2, .LBB1_32
.LBB1_21:                               # %for.end120
	st.w	$zero, $a0, 0
	ld.w	$a1, $s2, %pc_lo12(byte_abs_range)
	ori	$a2, $zero, 4
	blt	$a1, $a2, .LBB1_24
# %bb.22:                               # %for.body126.preheader
	addi.d	$a1, $a0, -4
	addi.d	$a0, $a0, 4
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_23:                               # %for.body126
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	ld.wu	$a4, $s2, %pc_lo12(byte_abs_range)
	addi.d	$a3, $a3, 1
	srli.d	$a5, $a4, 31
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 4
	blt	$a3, $a4, .LBB1_23
.LBB1_24:                               # %for.end134
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(spiral_search_y)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(spiral_search_x)
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(spiral_hpel_search_y)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(spiral_hpel_search_x)
	st.h	$zero, $a4, 0
	st.h	$zero, $a3, 0
	st.h	$zero, $a2, 0
	st.h	$zero, $a5, 0
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s1
	masknez	$a6, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a6
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 2
	ori	$t3, $zero, 2
	ori	$a6, $zero, 3
	ori	$a7, $zero, 0
	lu32i.d	$a7, 2
	ori	$t0, $zero, 1
	ori	$t6, $zero, 1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB1_25:                               # %for.body149.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_28 Depth 2
	move	$t2, $t3
	sub.d	$t3, $zero, $t1
	sub.d	$t7, $a0, $t1
	slli.d	$t4, $t3, 1
	slli.d	$t5, $t1, 1
	slli.d	$t8, $t6, 32
	alsl.d	$fp, $t6, $a2, 1
	alsl.d	$s0, $t6, $a3, 1
	alsl.d	$s1, $t6, $a4, 1
	alsl.d	$s2, $t6, $a5, 1
	addi.w	$s4, $t6, 2
	move	$t6, $t0
	.p2align	4, , 16
.LBB1_26:                               # %for.body149
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s3, $s4
	st.h	$t7, $s0, -2
	st.h	$t3, $s1, -2
	slli.d	$s4, $t7, 1
	st.h	$s4, $s2, -2
	st.h	$t4, $fp, -2
	st.h	$t7, $s0, 0
	st.h	$t1, $s1, 0
	st.h	$s4, $s2, 0
	st.h	$t5, $fp, 0
	addi.d	$t7, $t7, 1
	addi.w	$t6, $t6, -1
	add.d	$t8, $t8, $a7
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.w	$s4, $s3, 2
	bnez	$t6, .LBB1_26
# %bb.27:                               # %for.body189.lr.ph
                                        #   in Loop: Header=BB1_25 Depth=1
	srai.d	$t6, $t8, 32
	alsl.d	$t7, $s3, $a2, 1
	alsl.d	$t8, $s3, $a3, 1
	alsl.d	$fp, $s3, $a4, 1
	alsl.d	$s0, $s3, $a5, 1
	move	$s1, $a6
	move	$s2, $t3
	.p2align	4, , 16
.LBB1_28:                               # %for.body189
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t3, $t8, -2
	st.h	$s2, $fp, -2
	st.h	$t4, $s0, -2
	slli.d	$s3, $s2, 1
	st.h	$s3, $t7, -2
	st.h	$t1, $t8, 0
	st.h	$s2, $fp, 0
	st.h	$t5, $s0, 0
	addi.w	$t6, $t6, 2
	st.h	$s3, $t7, 0
	addi.d	$s2, $s2, 1
	addi.w	$s1, $s1, -1
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	bnez	$s1, .LBB1_28
# %bb.29:                               # %for.inc225
                                        #   in Loop: Header=BB1_25 Depth=1
	addi.d	$t1, $t1, 1
	addi.w	$t3, $t2, 1
	addi.d	$t0, $t0, 2
	addi.d	$a6, $a6, 2
	bne	$t2, $a1, .LBB1_25
# %bb.30:                               # %for.end227
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 5776
	ldptr.w	$a1, $a0, 5780
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_49
# %bb.31:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB1_50
.LBB1_32:                               # %for.body103.preheader
	addi.d	$a3, $a1, 32
	ori	$a4, $zero, 2
	ori	$a5, $zero, 15
	ori	$a6, $zero, 3
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_33:                               # %for.inc118
                                        #   in Loop: Header=BB1_34 Depth=1
	addi.w	$a6, $a6, 2
	blt	$s8, $a6, .LBB1_21
.LBB1_34:                               # %for.body103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_48 Depth 2
	bstrpick.d	$a7, $a6, 31, 1
	sll.w	$t0, $a4, $a7
	blt	$t0, $a4, .LBB1_33
# %bb.35:                               # %iter.check
                                        #   in Loop: Header=BB1_34 Depth=1
	addi.w	$a7, $t0, -1
	addi.d	$t0, $t0, -1
	srli.d	$t1, $t0, 1
	addi.w	$t0, $t1, 1
	slt	$t2, $t0, $a7
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $a7, $t2
	or	$t0, $t2, $t0
	nor	$t2, $t1, $zero
	add.w	$t2, $t0, $t2
	bgeu	$t2, $a2, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_34 Depth=1
	move	$t2, $t1
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_37:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_34 Depth=1
	bstrpick.d	$t0, $t2, 31, 0
	addi.d	$t0, $t0, 1
	bgeu	$t2, $a5, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_34 Depth=1
	move	$t3, $zero
	b	.LBB1_43
.LBB1_39:                               # %vector.ph
                                        #   in Loop: Header=BB1_34 Depth=1
	bstrpick.d	$t2, $t0, 32, 4
	slli.d	$t3, $t2, 4
	xvreplgr2vr.w	$xr0, $a6
	alsl.d	$t2, $t1, $a3, 2
	move	$t4, $t3
	.p2align	4, , 16
.LBB1_40:                               # %vector.body
                                        #   Parent Loop BB1_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t2, -32
	xvst	$xr0, $t2, 0
	addi.d	$t4, $t4, -16
	addi.d	$t2, $t2, 64
	bnez	$t4, .LBB1_40
# %bb.41:                               # %middle.block
                                        #   in Loop: Header=BB1_34 Depth=1
	beq	$t0, $t3, .LBB1_33
# %bb.42:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_34 Depth=1
	andi	$t2, $t0, 12
	beqz	$t2, .LBB1_46
.LBB1_43:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_34 Depth=1
	bstrpick.d	$t2, $t0, 32, 2
	slli.d	$t4, $t2, 2
	alsl.d	$t2, $t2, $t1, 2
	vreplgr2vr.w	$vr0, $a6
	slli.d	$t5, $t3, 2
	alsl.d	$t1, $t1, $t5, 2
	add.d	$t1, $a1, $t1
	sub.d	$t3, $t3, $t4
	.p2align	4, , 16
.LBB1_44:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, 0
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, 16
	bnez	$t3, .LBB1_44
# %bb.45:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_34 Depth=1
	beq	$t0, $t4, .LBB1_33
	b	.LBB1_47
.LBB1_46:                               #   in Loop: Header=BB1_34 Depth=1
	add.d	$t2, $t1, $t3
	.p2align	4, , 16
.LBB1_47:                               # %for.body112.preheader
                                        #   in Loop: Header=BB1_34 Depth=1
	alsl.d	$t0, $t2, $a1, 2
	.p2align	4, , 16
.LBB1_48:                               # %for.body112
                                        #   Parent Loop BB1_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a6, $t0, 0
	addi.w	$t2, $t2, 1
	addi.d	$t0, $t0, 4
	blt	$t2, $a7, .LBB1_48
	b	.LBB1_33
.LBB1_49:                               # %lor.rhs239
	ldptr.w	$a3, $a0, 5784
	ldptr.w	$a4, $a0, 5788
	xor	$a2, $a1, $a3
	sltui	$a2, $a2, 1
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
.LBB1_50:                               # %lor.end246
	pcalau12i	$a4, %pc_hi20(start_me_refinement_hp)
	st.w	$a2, $a4, %pc_lo12(start_me_refinement_hp)
	pcalau12i	$a2, %pc_hi20(start_me_refinement_qp)
	st.w	$a3, $a2, %pc_lo12(start_me_refinement_qp)
	beqz	$a1, .LBB1_53
# %bb.51:                               # %lor.end246
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB1_54
# %bb.52:                               # %sw.bb264
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSSE2)
	ld.d	$t0, $a1, %got_pc_lo12(computeBiPredSSE2)
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSSE1)
	ld.d	$t1, $a1, %got_pc_lo12(computeBiPredSSE1)
	pcalau12i	$a1, %got_pc_hi20(computeSSEWP)
	ld.d	$t2, $a1, %got_pc_lo12(computeSSEWP)
	pcalau12i	$a1, %got_pc_hi20(computeSSE)
	ld.d	$a2, $a1, %got_pc_lo12(computeSSE)
	b	.LBB1_55
.LBB1_53:
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$t0, $a1, %got_pc_lo12(computeBiPredSAD2)
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$t1, $a1, %got_pc_lo12(computeBiPredSAD1)
	pcalau12i	$a1, %got_pc_hi20(computeSADWP)
	ld.d	$t2, $a1, %got_pc_lo12(computeSADWP)
	pcalau12i	$a1, %got_pc_hi20(computeSAD)
	ld.d	$a2, $a1, %got_pc_lo12(computeSAD)
	b	.LBB1_55
.LBB1_54:                               # %sw.default
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSATD2)
	ld.d	$t0, $a1, %got_pc_lo12(computeBiPredSATD2)
	pcalau12i	$a1, %got_pc_hi20(computeBiPredSATD1)
	ld.d	$t1, $a1, %got_pc_lo12(computeBiPredSATD1)
	pcalau12i	$a1, %got_pc_hi20(computeSATDWP)
	ld.d	$t2, $a1, %got_pc_lo12(computeSATDWP)
	pcalau12i	$a1, %got_pc_hi20(computeSATD)
	ld.d	$a2, $a1, %got_pc_lo12(computeSATD)
.LBB1_55:                               # %for.inc284
	pcalau12i	$a1, %got_pc_hi20(computeUniPred)
	ld.d	$a1, $a1, %got_pc_lo12(computeUniPred)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(computeBiPred1)
	ld.d	$a2, $a2, %got_pc_lo12(computeBiPred1)
	pcalau12i	$a3, %got_pc_hi20(computeBiPred2)
	ld.d	$a3, $a3, %got_pc_lo12(computeBiPred2)
	ldptr.w	$t5, $a0, 5784
	pcalau12i	$a4, %got_pc_hi20(computeBiPredSSE2)
	ld.d	$a4, $a4, %got_pc_lo12(computeBiPredSSE2)
	pcalau12i	$a5, %got_pc_hi20(computeBiPredSSE1)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPredSSE1)
	pcalau12i	$a6, %got_pc_hi20(computeSSEWP)
	ld.d	$a6, $a6, %got_pc_lo12(computeSSEWP)
	pcalau12i	$a7, %got_pc_hi20(computeSSE)
	ld.d	$a7, $a7, %got_pc_lo12(computeSSE)
	st.d	$t2, $a1, 24
	st.d	$t1, $a2, 0
	ori	$t1, $zero, 1
	st.d	$t0, $a3, 0
	move	$t4, $a7
	move	$t3, $a6
	move	$t2, $a5
	move	$t0, $a4
	beq	$t5, $t1, .LBB1_59
# %bb.56:                               # %for.inc284
	bnez	$t5, .LBB1_58
# %bb.57:                               # %sw.bb.1
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSAD2)
	pcalau12i	$t2, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$t2, $t2, %got_pc_lo12(computeBiPredSAD1)
	pcalau12i	$t3, %got_pc_hi20(computeSADWP)
	ld.d	$t3, $t3, %got_pc_lo12(computeSADWP)
	pcalau12i	$t4, %got_pc_hi20(computeSAD)
	ld.d	$t4, $t4, %got_pc_lo12(computeSAD)
	b	.LBB1_59
.LBB1_58:                               # %sw.default.1
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSATD2)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSATD2)
	pcalau12i	$t2, %got_pc_hi20(computeBiPredSATD1)
	ld.d	$t2, $t2, %got_pc_lo12(computeBiPredSATD1)
	pcalau12i	$t3, %got_pc_hi20(computeSATDWP)
	ld.d	$t3, $t3, %got_pc_lo12(computeSATDWP)
	pcalau12i	$t4, %got_pc_hi20(computeSATD)
	ld.d	$t4, $t4, %got_pc_lo12(computeSATD)
.LBB1_59:                               # %for.inc284.1
	ldptr.w	$t5, $a0, 5788
	st.d	$t4, $a1, 8
	st.d	$t3, $a1, 32
	st.d	$t2, $a2, 8
	st.d	$t0, $a3, 8
	beq	$t5, $t1, .LBB1_63
# %bb.60:                               # %for.inc284.1
	bnez	$t5, .LBB1_62
# %bb.61:                               # %sw.bb.2
	pcalau12i	$a4, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$a4, $a4, %got_pc_lo12(computeBiPredSAD2)
	pcalau12i	$a5, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPredSAD1)
	pcalau12i	$a6, %got_pc_hi20(computeSADWP)
	ld.d	$a6, $a6, %got_pc_lo12(computeSADWP)
	pcalau12i	$a7, %got_pc_hi20(computeSAD)
	ld.d	$a7, $a7, %got_pc_lo12(computeSAD)
	b	.LBB1_63
.LBB1_62:                               # %sw.default.2
	pcalau12i	$a4, %got_pc_hi20(computeBiPredSATD2)
	ld.d	$a4, $a4, %got_pc_lo12(computeBiPredSATD2)
	pcalau12i	$a5, %got_pc_hi20(computeBiPredSATD1)
	ld.d	$a5, $a5, %got_pc_lo12(computeBiPredSATD1)
	pcalau12i	$a6, %got_pc_hi20(computeSATDWP)
	ld.d	$a6, $a6, %got_pc_lo12(computeSATDWP)
	pcalau12i	$a7, %got_pc_hi20(computeSATD)
	ld.d	$a7, $a7, %got_pc_lo12(computeSATD)
.LBB1_63:                               # %for.inc284.2
	st.d	$a7, $a1, 16
	st.d	$a6, $a1, 40
	st.d	$a5, $a2, 16
	st.d	$a4, $a3, 16
	pcalau12i	$a1, %got_pc_hi20(get_line)
	ld.d	$a1, $a1, %got_pc_lo12(get_line)
	pcalau12i	$a2, %got_pc_hi20(FastLine4X)
	ld.d	$a2, $a2, %got_pc_lo12(FastLine4X)
	pcalau12i	$a3, %got_pc_hi20(UMVLine4X)
	ld.d	$a3, $a3, %got_pc_lo12(UMVLine4X)
	pcalau12i	$a4, %got_pc_hi20(get_crline)
	ld.d	$a4, $a4, %got_pc_lo12(get_crline)
	pcalau12i	$a5, %got_pc_hi20(FastLine8X_chroma)
	ld.d	$a5, $a5, %got_pc_lo12(FastLine8X_chroma)
	pcalau12i	$a6, %got_pc_hi20(UMVLine8X_chroma)
	ld.d	$a6, $a6, %got_pc_lo12(UMVLine8X_chroma)
	ldptr.w	$a0, $a0, 5244
	st.d	$a2, $a1, 0
	st.d	$a3, $a1, 8
	st.d	$a5, $a4, 0
	st.d	$a6, $a4, 8
	beqz	$a0, .LBB1_65
# %bb.64:                               # %if.end290
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.LBB1_65:                               # %if.then289
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(InitializeFastFullIntegerSearch)
	jr	$t8
.Lfunc_end1:
	.size	Init_Motion_Search_Module, .Lfunc_end1-Init_Motion_Search_Module
                                        # -- End function
	.globl	Clear_Motion_Search_Module      # -- Begin function Clear_Motion_Search_Module
	.p2align	5
	.type	Clear_Motion_Search_Module,@function
Clear_Motion_Search_Module:             # @Clear_Motion_Search_Module
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(max_mvd)
	ld.w	$a0, $a0, %pc_lo12(max_mvd)
	pcalau12i	$fp, %pc_hi20(mvbits)
	ld.d	$a1, $fp, %pc_lo12(mvbits)
	pcalau12i	$a2, %pc_hi20(byte_abs_range)
	ld.wu	$a2, $a2, %pc_lo12(byte_abs_range)
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	st.d	$a0, $fp, %pc_lo12(mvbits)
	srli.d	$a0, $a2, 31
	add.w	$a0, $a2, $a0
	pcalau12i	$s0, %pc_hi20(byte_abs)
	ld.d	$a1, $s0, %pc_lo12(byte_abs)
	slli.d	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(spiral_search_x)
	ld.d	$a0, $a0, %pc_lo12(spiral_search_x)
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a1, $a1, $a2
	st.d	$a1, $s0, %pc_lo12(byte_abs)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(spiral_search_y)
	ld.d	$a0, $a0, %pc_lo12(spiral_search_y)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(spiral_hpel_search_x)
	ld.d	$a0, $a0, %pc_lo12(spiral_hpel_search_x)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(spiral_hpel_search_y)
	ld.d	$a0, $a0, %pc_lo12(spiral_hpel_search_y)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(mvbits)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(refbits)
	ld.d	$a0, $a0, %pc_lo12(refbits)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(byte_abs)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(motion_cost)
	ld.d	$a0, $a0, %pc_lo12(motion_cost)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5244
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_2:                                # %if.then
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(ClearFastFullIntegerSearch)
	jr	$t8
.Lfunc_end2:
	.size	Clear_Motion_Search_Module, .Lfunc_end2-Clear_Motion_Search_Module
                                        # -- End function
	.globl	BPredPartitionCost              # -- Begin function BPredPartitionCost
	.p2align	5
	.type	BPredPartitionCost,@function
BPredPartitionCost:                     # @BPredPartitionCost
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1328
	st.d	$ra, $sp, 1320                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1240                  # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$s1, $a6, %got_pc_lo12(input)
	ld.d	$a6, $s1, 0
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	alsl.d	$a0, $a0, $a6, 3
	ld.w	$a5, $a0, 72
	slti	$a2, $fp, 4
	ori	$t1, $zero, 4
	masknez	$a3, $t1, $a2
	maskeqz	$a2, $fp, $a2
	or	$t5, $a2, $a3
	addi.d	$a2, $a6, 136
	alsl.d	$a3, $t5, $a2, 3
	ld.w	$t4, $a3, 4
	ld.w	$t0, $a0, 76
	slli.d	$a0, $t5, 3
	ori	$a3, $zero, 1
	lu12i.w	$s7, 1
	st.d	$t5, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$t4, $a3, .LBB3_13
# %bb.1:                                # %for.body.lr.ph
	ldx.w	$a0, $a2, $a0
	blt	$a0, $a3, .LBB3_13
# %bb.2:                                # %for.body.us.preheader
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$a3, $zero
	slli.d	$a5, $fp, 3
	alsl.d	$a7, $fp, $a2, 3
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$t1, $a6, %got_pc_lo12(img)
	ldx.w	$a6, $a2, $a5
	ld.w	$a7, $a7, 4
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sltui	$t0, $a2, 1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $t1, 0
	lu12i.w	$a2, 3
	ori	$t2, $a2, 2104
	masknez	$t2, $t2, $t0
	ori	$t3, $a2, 2112
	maskeqz	$t0, $t3, $t0
	or	$t0, $t0, $t2
	ldx.d	$t0, $t1, $t0
	ldptr.d	$t1, $t1, 14376
	pcalau12i	$t2, %pc_hi20(PartitionMotionSearch.by0)
	addi.d	$t2, $t2, %pc_lo12(PartitionMotionSearch.by0)
	alsl.d	$t2, $t5, $t2, 4
	slli.d	$a1, $a1, 2
	ldx.w	$s1, $t2, $a1
	pcalau12i	$t2, %pc_hi20(PartitionMotionSearch.bx0)
	addi.d	$t2, $t2, %pc_lo12(PartitionMotionSearch.bx0)
	alsl.d	$a2, $t5, $t2, 4
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ldx.w	$t3, $a2, $a1
	add.w	$a2, $s1, $t4
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$t4, %pc_hi20(mvbits)
	ld.d	$t4, $t4, %pc_lo12(mvbits)
	add.w	$t5, $t3, $a0
	slli.d	$t6, $t3, 3
	slli.d	$t7, $a6, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slli.d	$t8, $a2, 3
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slli.d	$s0, $a2, 3
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$s3, $s1, 3
	ldx.d	$s2, $t0, $s3
	ldx.d	$s3, $t1, $s3
	move	$s4, $t6
	move	$s5, $t3
	.p2align	4, , 16
.LBB3_4:                                # %for.body46.us
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$s6, $s2, $s4
	ldx.d	$s8, $s3, $s4
	ld.d	$ra, $s6, 0
	ld.d	$a2, $s8, 0
	ldx.d	$ra, $ra, $t8
	ldx.d	$a2, $a2, $t8
	ldx.d	$ra, $ra, $a5
	ldx.d	$a2, $a2, $a5
	ld.h	$t2, $ra, 0
	ld.h	$a4, $a2, 0
	sub.d	$a4, $t2, $a4
	ld.d	$t2, $s6, 8
	ld.d	$s6, $s8, 8
	slli.d	$a4, $a4, 2
	ld.h	$s8, $ra, 2
	ldx.d	$t2, $t2, $s0
	ldx.d	$s6, $s6, $s0
	ld.h	$a2, $a2, 2
	ldx.w	$a4, $t4, $a4
	ldx.d	$t2, $t2, $a5
	ldx.d	$s6, $s6, $a5
	sub.d	$a2, $s8, $a2
	slli.d	$a2, $a2, 2
	ld.h	$s8, $t2, 0
	ld.h	$ra, $s6, 0
	ldx.w	$a2, $t4, $a2
	ld.h	$t2, $t2, 2
	ld.h	$s6, $s6, 2
	sub.d	$s8, $s8, $ra
	slli.d	$s8, $s8, 2
	ldx.w	$s8, $t4, $s8
	sub.d	$t2, $t2, $s6
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t4, $t2
	add.d	$a3, $a4, $a3
	add.d	$a2, $a3, $a2
	add.d	$a2, $a2, $s8
	add.d	$a3, $a2, $t2
	add.d	$s5, $s5, $a6
	add.d	$s4, $s4, $t7
	blt	$s5, $t5, .LBB3_4
# %bb.5:                                # %for.cond39.for.inc150_crit_edge.us
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$s1, $s1, $a7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$s1, $a2, .LBB3_3
# %bb.6:                                # %for.end152
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	mul.w	$a1, $a3, $a1
	srai.d	$s8, $a1, 16
	add.w	$a0, $a2, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.w	$a0, $a2, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s0, $sp, 344
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$s3, $a0, %pc_lo12(diff64)
	ori	$a0, $s7, 1004
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %for.cond171.for.inc228_crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 256
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_14
.LBB3_8:                                # %for.body165.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 196
	slli.w	$s4, $a1, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	alsl.w	$a3, $a1, $a0, 2
	addi.d	$a0, $s4, 1
	addi.d	$a1, $s4, 2
	addi.d	$a2, $s4, 3
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a3, $s4, 5
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$s2, $a2, 5
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_9:                                # %if.then.us
                                        #   in Loop: Header=BB3_11 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	add.d	$s8, $a0, $s8
.LBB3_10:                               # %for.inc224.us
                                        #   in Loop: Header=BB3_11 Depth=2
	addi.d	$s1, $s1, 1
	addi.w	$s5, $s5, 4
	addi.d	$s0, $s0, 16
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB3_7
.LBB3_11:                               # %for.body179.us
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 192
	add.w	$s7, $s5, $a0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $fp
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4Bi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a0, $s6, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a1, 3
	slli.d	$a1, $s7, 1
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a2
	slli.d	$a2, $s5, 1
	ldx.d	$a5, $a5, $a2
	vinsgr2vr.d	$vr0, $a4, 0
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	ld.d	$a4, $a3, 8
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a4, $a4, $a1
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	ldx.d	$a5, $a5, $a2
	vst	$vr0, $s0, -128
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a5, 0
	vilvl.h	$vr2, $vr3, $vr2
	ld.d	$a4, $a3, 16
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s0, -64
	xvpermi.q	$xr0, $xr1, 2
	ldx.d	$a4, $a4, $a1
	xvst	$xr0, $s3, 0
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	ldx.d	$a5, $a5, $a2
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr3, $vr0
	ld.d	$a3, $a3, 24
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a1, $a3, $a1
	add.d	$a0, $a0, $s2
	ldx.d	$a0, $a0, $a2
	vst	$vr0, $s0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a0, 0
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s0, 64
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $s3, 32
	ori	$a0, $zero, 4
	blt	$a0, $fp, .LBB3_9
# %bb.12:                               # %for.body179.us
                                        #   in Loop: Header=BB3_11 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB3_10
	b	.LBB3_9
.LBB3_13:
	move	$s8, $zero
	bge	$t1, $fp, .LBB3_15
	b	.LBB3_23
.LBB3_14:                               # %for.end231.loopexit
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $s1, 0
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	ori	$t1, $zero, 4
	lu12i.w	$s7, 1
	blt	$t1, $fp, .LBB3_23
.LBB3_15:                               # %for.end231
	ori	$a0, $s7, 1004
	ldx.w	$a0, $a6, $a0
	beqz	$a0, .LBB3_23
# %bb.16:                               # %for.cond237.preheader
	alsl.d	$a0, $t5, $a6, 3
	ld.w	$a2, $a0, 76
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_23
# %bb.17:                               # %for.cond245.preheader.lr.ph
	ld.w	$a0, $a0, 72
	blt	$a0, $a1, .LBB3_23
# %bb.18:                               # %for.cond245.preheader.preheader
	move	$s0, $zero
	slti	$a0, $t0, 8
	ori	$a1, $zero, 8
	masknez	$a2, $a1, $a0
	maskeqz	$a0, $t0, $a0
	or	$a2, $a0, $a2
	slti	$a0, $a5, 8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a5, $a0
	or	$s2, $a0, $a1
	addi.d	$s6, $sp, 472
	move	$s4, $a2
	slli.d	$a0, $a2, 6
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	slli.d	$s5, $s2, 2
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$fp, $a0, %pc_lo12(diff64)
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_19:                               # %for.inc273
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	ld.w	$a0, $a0, 76
	add.d	$s0, $s0, $s4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a1
	bge	$s0, $a0, .LBB3_23
.LBB3_20:                               # %for.cond245.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	alsl.d	$a0, $t5, $a6, 3
	ld.w	$a0, $a0, 72
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_19
# %bb.21:                               # %for.cond253.preheader.lr.ph
                                        #   in Loop: Header=BB3_20 Depth=1
	move	$s7, $zero
	move	$s3, $s6
	.p2align	4, , 16
.LBB3_22:                               # %for.end267
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s3, -256
	xvld	$xr1, $s3, -192
	xvld	$xr2, $s3, -128
	xvld	$xr3, $s3, -64
	xvst	$xr0, $fp, 0
	xvst	$xr1, $fp, 32
	xvst	$xr2, $fp, 64
	xvst	$xr3, $fp, 96
	xvld	$xr0, $s3, 0
	xvld	$xr1, $s3, 64
	xvld	$xr2, $s3, 128
	xvld	$xr3, $s3, 192
	xvst	$xr0, $fp, 128
	xvst	$xr1, $fp, 160
	xvst	$xr2, $fp, 192
	xvst	$xr3, $fp, 224
	move	$a0, $fp
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $s1, 0
	alsl.d	$a1, $t5, $a6, 3
	ld.w	$a1, $a1, 72
	add.d	$s8, $a0, $s8
	add.d	$s7, $s7, $s2
	add.d	$s3, $s3, $s5
	blt	$s7, $a1, .LBB3_22
	b	.LBB3_19
.LBB3_23:                               # %if.end276
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1320                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1328
	ret
.Lfunc_end3:
	.size	BPredPartitionCost, .Lfunc_end3-BPredPartitionCost
                                        # -- End function
	.globl	BlockMotionSearch               # -- Begin function BlockMotionSearch
	.p2align	5
	.type	BlockMotionSearch,@function
BlockMotionSearch:                      # @BlockMotionSearch
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$t0, $a7, %got_pc_lo12(img)
	pcalau12i	$a7, %got_pc_hi20(input)
	ld.d	$a7, $a7, %got_pc_lo12(input)
	st.d	$t0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t6, $t0, 0
	st.w	$a5, $sp, 292
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a5, $a7, 0
	srai.d	$t3, $a2, 2
	ldptr.d	$a7, $t6, 14376
	srai.d	$t4, $a3, 2
	alsl.d	$t7, $a4, $a5, 3
	slli.d	$t0, $t4, 3
	ldx.d	$a7, $a7, $t0
	ld.w	$t0, $t7, 76
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	ld.w	$t0, $t6, 192
	slli.d	$t5, $t3, 3
	ldx.d	$t1, $a7, $t5
	ld.w	$a7, $t6, 196
	slli.d	$s5, $a1, 3
	ldptr.w	$t2, $t6, 15268
	ldx.d	$t1, $t1, $s5
	st.d	$a6, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	slli.d	$s8, $a0, 3
	beqz	$t2, .LBB4_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $t6, 12
	ldptr.d	$a6, $t6, 14224
	ori	$t2, $zero, 536
	mul.d	$t2, $a0, $t2
	add.d	$a6, $a6, $t2
	ld.w	$a6, $a6, 424
	beqz	$a6, .LBB4_3
# %bb.2:                                # %cond.true
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a0
	ori	$t2, $zero, 2
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $a6
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB4_4
.LBB4_3:
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
.LBB4_4:                                # %cond.end
	pcalau12i	$a0, %pc_hi20(chroma_shift_y)
	pcalau12i	$a6, %pc_hi20(chroma_shift_x)
	add.w	$s3, $t0, $a2
	ldptr.w	$a5, $a5, 5244
	ldx.d	$a2, $t1, $s8
	add.w	$a3, $a7, $a3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	ori	$a3, $zero, 3
	slli.d	$s6, $a4, 3
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	st.d	$t5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	bne	$a5, $a3, .LBB4_6
# %bb.5:                                # %cond.true33
	pcalau12i	$a3, %got_pc_hi20(EPZSDistortion)
	ld.d	$a3, $a3, %got_pc_lo12(EPZSDistortion)
	ld.d	$a3, $a3, 0
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a1
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a1, $a3, -8
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_7
.LBB4_6:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB4_7:                                # %cond.end41
	st.d	$t4, $sp, 160                   # 8-byte Folded Spill
	ld.w	$fp, $a0, %pc_lo12(chroma_shift_y)
	ld.w	$s1, $a6, %pc_lo12(chroma_shift_x)
	ld.w	$a0, $t7, 72
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ldx.d	$a0, $a2, $s6
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ldptr.d	$a0, $t6, 14384
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(BlockMotionSearch.tstruct1)
	addi.d	$a0, $a0, %pc_lo12(BlockMotionSearch.tstruct1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_10
# %bb.8:                                # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(imgY_org)
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	slli.d	$s4, $a1, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $a0, 3
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$s7, $a0, %pc_lo12(orig_pic)
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	alsl.d	$a1, $s3, $a0, 1
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	add.d	$s7, $s7, $s4
	bnez	$s2, .LBB4_9
.LBB4_10:                               # %for.end
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ldptr.w	$a0, $a0, 5776
	pcalau12i	$a1, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a1, $a1, %got_pc_lo12(ChromaMEEnable)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB4_16
# %bb.11:                               # %for.end
	addi.d	$a0, $fp, -2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sra.w	$s3, $a1, $a0
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB4_16
# %bb.12:                               # %for.body53.lr.ph
	addi.d	$a1, $s1, -2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	sra.w	$s1, $a2, $a1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	sra.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	sra.w	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(imgUV_org)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s2, $a1, %pc_lo12(imgUV_org)
	slli.d	$s4, $a0, 1
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$s7, $a0, 512
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s0, $a2, 3
	move	$fp, $s3
	.p2align	4, , 16
.LBB4_13:                               # %for.body53
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $s0
	alsl.d	$a1, $s1, $a0, 1
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	add.d	$s7, $s7, $s4
	bnez	$fp, .LBB4_13
# %bb.14:                               # %for.body70.lr.ph
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(imgUV_org)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s7, $a0, 1024
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$s0, $a0, 3
	.p2align	4, , 16
.LBB4_15:                               # %for.body70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $s0
	alsl.d	$a1, $s1, $a0, 1
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	add.d	$s7, $s7, $s4
	bnez	$s3, .LBB4_15
.LBB4_16:                               # %if.end
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldptr.w	$a1, $a3, 5244
	ori	$a0, $zero, 2
	lu12i.w	$s1, 1
	beq	$a1, $a0, .LBB4_19
# %bb.17:                               # %if.end
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_20
# %bb.18:                               # %if.then87
	pcalau12i	$a1, %pc_hi20(UMHEX_blocktype)
	st.w	$s4, $a1, %pc_lo12(UMHEX_blocktype)
	pcalau12i	$a1, %pc_hi20(bipred_flag)
	st.w	$zero, $a1, %pc_lo12(bipred_flag)
	b	.LBB4_21
.LBB4_19:                               # %if.then91
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(smpUMHEX_setup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ori	$a0, $s1, 1148
	ldx.w	$a0, $a3, $a0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB4_22
.LBB4_20:
	move	$a0, $a1
.LBB4_21:                               # %if.end93
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
.LBB4_22:                               # %if.end93
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a1, %got_pc_lo12(enc_picture)
	ldptr.w	$a1, $a3, 5100
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	sltu	$a3, $zero, $a1
	slti	$a4, $s4, 5
	ldptr.d	$a1, $a2, 6488
	ldptr.d	$a2, $a2, 6512
	pcalau12i	$a5, %got_pc_hi20(test8x8transform)
	ld.d	$a5, $a5, %got_pc_lo12(test8x8transform)
	ldx.d	$a1, $a1, $s5
	ldx.d	$a2, $a2, $s5
	and	$a3, $a4, $a3
	ori	$a4, $zero, 1
	st.w	$a3, $a5, 0
	bne	$a0, $a4, .LBB4_24
# %bb.23:                               # %if.then100
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $fp
	move	$a6, $s0
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(UMHEXSetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	b	.LBB4_25
.LBB4_24:                               # %if.else106
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $fp
	move	$a6, $s0
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %if.end113
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5244
	ori	$a2, $zero, 3
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB4_45
# %bb.26:                               # %if.end113
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB4_27:                               # %if.then372
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ld.w	$a0, $sp, 292
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.d	$a2, $sp, 290
	st.d	$a1, $sp, 32
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(FastFullPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_28:                               # %if.then173
	ld.h	$a1, $s3, 0
	bstrpick.d	$a2, $a1, 30, 29
	ld.h	$a4, $s3, 2
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 2
	bstrpick.d	$a1, $a4, 30, 29
	add.d	$a1, $a4, $a1
	ldptr.w	$a4, $a0, 4168
	ld.w	$a0, $sp, 292
	ext.w.h	$a1, $a1
	srai.d	$a2, $a1, 2
	addi.d	$a1, $sp, 290
	bnez	$a4, .LBB4_30
# %bb.29:                               # %if.then186
	sub.w	$a4, $zero, $a0
	slt	$a5, $a4, $a3
	masknez	$a6, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	slt	$a5, $a3, $a0
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a0, $a5
	or	$a3, $a3, $a5
	slt	$a5, $a4, $a2
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	slt	$a4, $a2, $a0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a0, $a4
	or	$a2, $a2, $a4
.LBB4_30:                               # %if.end199
	addi.w	$a4, $a0, -2047
	ori	$a5, $zero, 2047
	sub.w	$a5, $a5, $a0
	ext.w.h	$a3, $a3
	slt	$a6, $a4, $a3
	ld.d	$a7, $t0, 0
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	ld.w	$a4, $a7, 8
	slt	$a6, $a3, $a5
	maskeqz	$a3, $a3, $a6
	masknez	$a5, $a5, $a6
	alsl.d	$a4, $a4, $a4, 1
	slli.d	$a4, $a4, 3
	pcalau12i	$a6, %pc_hi20(LEVELMVLIMIT)
	addi.d	$a6, $a6, %pc_lo12(LEVELMVLIMIT)
	add.d	$a7, $a6, $a4
	ldx.w	$a4, $a6, $a4
	ld.w	$a6, $a7, 4
	or	$a3, $a3, $a5
	st.h	$a3, $sp, 288
	add.w	$a3, $a4, $a0
	sub.w	$a4, $a6, $a0
	ext.w.h	$a2, $a2
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	st.h	$a2, $sp, 290
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 32
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(smpUMHEXIntegerPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 2
	ori	$a2, $zero, 1
	move	$s4, $a0
	blt	$a1, $a2, .LBB4_52
# %bb.31:                               # %for.cond233.preheader.lr.ph
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 2
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB4_53
# %bb.32:                               # %for.cond233.preheader.us.preheader
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(smpUMHEX_l0_cost)
	pcalau12i	$a4, %pc_hi20(smpUMHEX_l1_cost)
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %for.cond233.for.inc272_crit_edge.us
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a1, .LBB4_53
.LBB4_34:                               # %for.cond233.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_36 Depth 2
                                        #     Child Loop BB4_38 Depth 2
	ld.d	$a5, $t4, 0
	add.d	$a6, $a2, $fp
	beqz	$s7, .LBB4_37
# %bb.35:                               # %for.body237.lr.ph.split.us425
                                        #   in Loop: Header=BB4_34 Depth=1
	ld.d	$a7, $a4, %pc_lo12(smpUMHEX_l1_cost)
	ldx.d	$a7, $a7, $s6
	move	$t0, $s0
	move	$t1, $a0
	.p2align	4, , 16
.LBB4_36:                               # %for.body237.us420
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, 180
	srli.d	$t2, $t2, 2
	ld.w	$t3, $a5, 176
	add.w	$t2, $t0, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a7, $t2
	srli.d	$t3, $t3, 2
	add.w	$t3, $a6, $t3
	slli.d	$t3, $t3, 2
	stx.w	$s4, $t2, $t3
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	bnez	$t1, .LBB4_36
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_37:                               # %for.body237.lr.ph.split.us.us
                                        #   in Loop: Header=BB4_34 Depth=1
	ld.d	$a7, $a3, %pc_lo12(smpUMHEX_l0_cost)
	ldx.d	$a7, $a7, $s6
	move	$t0, $s0
	move	$t1, $a0
	.p2align	4, , 16
.LBB4_38:                               # %for.body237.us.us
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a5, 180
	srli.d	$t2, $t2, 2
	ld.w	$t3, $a5, 176
	add.w	$t2, $t0, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a7, $t2
	srli.d	$t3, $t3, 2
	add.w	$t3, $a6, $t3
	slli.d	$t3, $t3, 2
	stx.w	$s4, $t2, $t3
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	bnez	$t1, .LBB4_38
	b	.LBB4_33
.LBB4_39:                               # %if.then279
	ldptr.w	$a3, $a0, 4120
	ld.hu	$a4, $s3, 0
	beqz	$a3, .LBB4_48
# %bb.40:                               # %if.then281
	ld.hu	$a1, $s3, 2
	ldptr.w	$a0, $a0, 4168
	ld.w	$a2, $sp, 292
	beqz	$a0, .LBB4_49
.LBB4_41:                               # %if.end299.if.end326_crit_edge
	slli.d	$a3, $a3, 1
	bstrpick.d	$a0, $a3, 31, 1
	slli.d	$a0, $a0, 1
	sll.w	$a0, $a2, $a0
	b	.LBB4_50
.LBB4_42:                               # %if.then117
	ld.h	$a1, $s3, 0
	bstrpick.d	$a2, $a1, 30, 29
	ld.h	$a4, $s3, 2
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 2
	bstrpick.d	$a1, $a4, 30, 29
	add.d	$a1, $a4, $a1
	ldptr.w	$a4, $a0, 4168
	ld.w	$a0, $sp, 292
	ext.w.h	$a1, $a1
	srai.d	$a2, $a1, 2
	addi.d	$a1, $sp, 290
	bnez	$a4, .LBB4_44
# %bb.43:                               # %if.then128
	sub.w	$a4, $zero, $a0
	slt	$a5, $a4, $a3
	masknez	$a6, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	slt	$a5, $a3, $a0
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a0, $a5
	or	$a3, $a3, $a5
	slt	$a5, $a4, $a2
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	slt	$a4, $a2, $a0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a0, $a4
	or	$a2, $a2, $a4
.LBB4_44:                               # %if.end141
	addi.w	$a4, $a0, -2047
	ori	$a5, $zero, 2047
	sub.w	$a5, $a5, $a0
	ext.w.h	$a3, $a3
	slt	$a6, $a4, $a3
	ld.d	$a7, $t0, 0
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	ld.w	$a4, $a7, 8
	slt	$a6, $a3, $a5
	maskeqz	$a3, $a3, $a6
	masknez	$a5, $a5, $a6
	alsl.d	$a4, $a4, $a4, 1
	slli.d	$a4, $a4, 3
	pcalau12i	$a6, %pc_hi20(LEVELMVLIMIT)
	addi.d	$a6, $a6, %pc_lo12(LEVELMVLIMIT)
	add.d	$a7, $a6, $a4
	ldx.w	$a4, $a6, $a4
	ld.w	$a6, $a7, 4
	or	$a3, $a3, $a5
	st.h	$a3, $sp, 288
	add.w	$a3, $a4, $a0
	sub.w	$a4, $a6, $a0
	ext.w.h	$a2, $a2
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	st.h	$a2, $sp, 290
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 32
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(UMHEXIntegerPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_45:                               # %if.else379
	ld.h	$a1, $s3, 0
	bstrpick.d	$a2, $a1, 30, 29
	ld.h	$a4, $s3, 2
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 2
	bstrpick.d	$a1, $a4, 30, 29
	add.d	$a1, $a4, $a1
	ldptr.w	$a4, $a0, 4168
	ld.w	$a0, $sp, 292
	ext.w.h	$a1, $a1
	srai.d	$a2, $a1, 2
	addi.d	$a1, $sp, 290
	bnez	$a4, .LBB4_47
# %bb.46:                               # %if.then392
	sub.w	$a4, $zero, $a0
	slt	$a5, $a4, $a3
	masknez	$a6, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	slt	$a5, $a3, $a0
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a0, $a5
	or	$a3, $a3, $a5
	slt	$a5, $a4, $a2
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	slt	$a4, $a2, $a0
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a0, $a4
	or	$a2, $a2, $a4
.LBB4_47:                               # %if.end405
	addi.w	$a4, $a0, -2047
	ori	$a5, $zero, 2047
	sub.w	$a5, $a5, $a0
	ext.w.h	$a3, $a3
	slt	$a6, $a4, $a3
	ld.d	$a7, $t0, 0
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	ld.w	$a4, $a7, 8
	slt	$a6, $a3, $a5
	maskeqz	$a3, $a3, $a6
	masknez	$a5, $a5, $a6
	alsl.d	$a4, $a4, $a4, 1
	slli.d	$a4, $a4, 3
	pcalau12i	$a6, %pc_hi20(LEVELMVLIMIT)
	addi.d	$a6, $a6, %pc_lo12(LEVELMVLIMIT)
	add.d	$a7, $a6, $a4
	ldx.w	$a4, $a6, $a4
	ld.w	$a6, $a7, 4
	or	$a3, $a3, $a5
	st.h	$a3, $sp, 288
	add.w	$a3, $a4, $a0
	sub.w	$a4, $a6, $a0
	ext.w.h	$a2, $a2
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	st.h	$a2, $sp, 290
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 32
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(FullPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_48:                               # %if.else286
	ld.h	$a1, $s3, 2
	ext.w.h	$a2, $a4
	addi.d	$a2, $a2, 2
	bstrpick.d	$a4, $a2, 31, 2
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 2
	ldptr.w	$a0, $a0, 4168
	ld.w	$a2, $sp, 292
	bnez	$a0, .LBB4_41
.LBB4_49:                               # %if.then302
	sub.d	$a0, $zero, $a2
	slli.d	$a3, $a3, 1
	bstrpick.d	$a5, $a3, 31, 1
	slli.d	$a5, $a5, 1
	sll.w	$a6, $a0, $a5
	sll.w	$a0, $a2, $a5
	ext.w.h	$a4, $a4
	slt	$a5, $a6, $a4
	masknez	$a7, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a7
	slt	$a5, $a4, $a0
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a0, $a5
	or	$a4, $a4, $a5
	ext.w.h	$a1, $a1
	slt	$a5, $a6, $a1
	masknez	$a6, $a6, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a6
	slt	$a5, $a1, $a0
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $a0, $a5
	or	$a1, $a1, $a5
.LBB4_50:                               # %if.end326
	addi.d	$a5, $a2, -2047
	sll.w	$a5, $a5, $a3
	ori	$a6, $zero, 2047
	sub.d	$a6, $a6, $a2
	ext.w.h	$a4, $a4
	slt	$a7, $a5, $a4
	masknez	$a5, $a5, $a7
	maskeqz	$a4, $a4, $a7
	ld.d	$a7, $t0, 0
	sll.w	$a6, $a6, $a3
	or	$a4, $a4, $a5
	slt	$a5, $a4, $a6
	ld.w	$a7, $a7, 8
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	alsl.d	$a5, $a7, $a7, 1
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(LEVELMVLIMIT)
	addi.d	$a6, $a6, %pc_lo12(LEVELMVLIMIT)
	ldx.w	$a7, $a6, $a5
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 4
	st.h	$a4, $sp, 288
	add.d	$a4, $a7, $a2
	sll.w	$a4, $a4, $a3
	sub.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a3
	ext.w.h	$a1, $a1
	slt	$a3, $a4, $a1
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	or	$a1, $a1, $a4
	slt	$a6, $a1, $a2
	maskeqz	$a1, $a1, $a6
	ldptr.d	$a4, $a3, 6488
	ldptr.d	$a5, $a3, 6512
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	masknez	$a2, $a2, $a6
	or	$a1, $a1, $a2
	st.h	$a1, $sp, 290
	st.d	$a3, $sp, 40
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 288
	st.d	$a0, $sp, 16
	st.d	$s3, $sp, 8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$s4, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s1
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(EPZSPelBlockMotionSearch)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %if.end437
	move	$s4, $a0
.LBB4_52:                               # %if.end437
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
.LBB4_53:                               # %if.end437
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4120
	beqz	$a1, .LBB4_55
# %bb.54:                               # %lor.lhs.false
	ldptr.w	$a1, $a0, 5244
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB4_56
.LBB4_55:                               # %if.then444
	ld.h	$a1, $sp, 288
	ld.h	$a2, $sp, 290
	slli.d	$a1, $a1, 2
	st.h	$a1, $sp, 288
	slli.d	$a1, $a2, 2
	st.h	$a1, $sp, 290
.LBB4_56:                               # %if.end453
	ldptr.w	$a1, $a0, 5776
	ld.w	$a2, $a0, 24
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	st.w	$a1, $t6, 0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_71
# %bb.57:                               # %if.then459
	ldptr.w	$a2, $a0, 5244
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_61
# %bb.58:                               # %if.then459
	ori	$a1, $zero, 3
	bne	$a2, $a1, .LBB4_61
# %bb.59:                               # %lor.lhs.false467
	ld.d	$a1, $t0, 0
	ld.w	$a1, $a1, 24
	beqz	$a1, .LBB4_79
.LBB4_60:                               # %if.then483.thread
	pcalau12i	$a1, %pc_hi20(start_me_refinement_hp)
	ld.w	$a1, $a1, %pc_lo12(start_me_refinement_hp)
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	lu12i.w	$a3, 524287
	ori	$a3, $a3, 4095
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB4_66
.LBB4_61:                               # %if.then483
	pcalau12i	$a1, %pc_hi20(start_me_refinement_hp)
	ld.w	$a1, $a1, %pc_lo12(start_me_refinement_hp)
	sltui	$a1, $a1, 1
	masknez	$a3, $s4, $a1
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4095
	maskeqz	$a1, $a4, $a1
	ori	$a4, $zero, 3
	or	$a1, $a1, $a3
	beq	$a2, $a4, .LBB4_66
# %bb.62:                               # %if.then483
	ori	$a3, $zero, 2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB4_81
# %bb.63:                               # %if.then483
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB4_68
# %bb.64:                               # %if.then490
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ori	$a2, $zero, 4
	addi.d	$a0, $sp, 290
	blt	$a5, $a2, .LBB4_69
# %bb.65:                               # %if.then493
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 8
	st.d	$a2, $sp, 40
	st.d	$a1, $sp, 32
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(UMHEXSubPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_83
.LBB4_66:                               # %land.lhs.true533
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 4124
	beqz	$a0, .LBB4_68
# %bb.67:                               # %if.then535
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	addi.d	$a7, $sp, 288
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(EPZSSubPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_70
.LBB4_68:                               # %if.else538
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	addi.d	$a0, $sp, 290
.LBB4_69:                               # %if.end548
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $sp, 40
	st.d	$a1, $sp, 32
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SubPelBlockMotionSearch)
	jirl	$ra, $ra, 0
.LBB4_70:                               # %if.end548
	move	$s4, $a0
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
.LBB4_71:                               # %if.end548
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a2, -1
	ori	$a1, $zero, 1
	sltui	$s3, $a0, 1
	lu12i.w	$s1, 1
	bne	$a2, $a1, .LBB4_77
# %bb.72:                               # %if.end548
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $s1, 72
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB4_77
# %bb.73:                               # %land.lhs.true554
	ld.d	$a0, $t0, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	ori	$s3, $zero, 1
	beq	$a0, $a1, .LBB4_75
# %bb.74:                               # %land.lhs.true554
	bnez	$a0, .LBB4_77
.LBB4_75:                               # %if.then561
	pcaddu18i	$ra, %call36(FindSkipModeMotionVector)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(GetSkipCostMB)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	add.w	$a1, $a1, $s1
	srli.d	$a1, $a1, 13
	sub.w	$a0, $a0, $a1
	bge	$a0, $s4, .LBB4_78
# %bb.76:                               # %if.then569
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $t0, 0
	ldptr.d	$a0, $a0, 14384
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.h	$a1, $a0, 0
	ld.h	$a0, $a0, 2
	st.h	$a1, $sp, 288
	st.h	$a0, $sp, 290
	b	.LBB4_85
.LBB4_77:
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	b	.LBB4_86
.LBB4_78:
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	b	.LBB4_84
.LBB4_79:                               # %lor.lhs.false470
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB4_71
# %bb.80:                               # %land.lhs.true474
	move	$a1, $s1
	bstrins.d	$a1, $zero, 1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -1012
	fmul.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB4_60
	b	.LBB4_71
.LBB4_81:                               # %if.then511
	ld.h	$a6, $s3, 0
	ld.h	$a7, $s3, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 8
	addi.d	$a0, $sp, 290
	blt	$a5, $a3, .LBB4_143
# %bb.82:                               # %if.then514
	st.d	$a2, $sp, 40
	st.d	$a1, $sp, 32
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(smpUMHEXSubPelBlockMotionSearch)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %if.end588
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$s1, 1
.LBB4_84:                               # %if.end588
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
.LBB4_85:                               # %if.end588
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
.LBB4_86:                               # %if.end588
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	srai.d	$a1, $a0, 2
	ori	$a0, $zero, 1
	add.d	$s4, $a1, $s0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB4_92
# %bb.87:                               # %for.cond595.preheader.lr.ph
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 2
	blt	$a1, $a0, .LBB4_92
# %bb.88:                               # %for.cond595.preheader.us.preheader
	add.d	$a1, $a1, $fp
	move	$a2, $s0
	.p2align	4, , 16
.LBB4_89:                               # %for.cond595.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_90 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $t5, $a3
	ld.hu	$a3, $sp, 288
	add.d	$a4, $a4, $s2
	move	$a5, $fp
	.p2align	4, , 16
.LBB4_90:                               # %for.body600.us
                                        #   Parent Loop BB4_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ldx.d	$a6, $a6, $s5
	ldx.d	$a6, $a6, $s8
	ldx.d	$a6, $a6, $s6
	st.h	$a3, $a6, 0
	ld.h	$a7, $sp, 290
	st.h	$a7, $a6, 2
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	blt	$a5, $a1, .LBB4_90
# %bb.91:                               # %for.cond595.for.inc628_crit_edge.us
                                        #   in Loop: Header=BB4_89 Depth=1
	addi.d	$a2, $a2, 1
	blt	$a2, $s4, .LBB4_89
.LBB4_92:                               # %for.end630
	ld.d	$a1, $t0, 0
	ld.w	$a2, $a1, 20
	bne	$a2, $a0, .LBB4_142
# %bb.93:                               # %land.lhs.true634
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 2120
	sltu	$a2, $zero, $a2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	sltui	$a3, $a3, 1
	and	$a2, $a3, $a2
	and	$a3, $s3, $a2
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB4_142
# %bb.94:                               # %if.then644
	sltui	$a4, $s7, 1
	lu12i.w	$a3, 3
	ori	$a5, $a3, 2104
	masknez	$a5, $a5, $a4
	ori	$a3, $a3, 2112
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	ldptr.w	$a0, $a0, 5244
	ldx.d	$s5, $a1, $a3
	st.w	$zero, $sp, 284
	st.w	$zero, $sp, 280
	xori	$s8, $s7, 1
	bne	$a0, $a2, .LBB4_96
# %bb.95:                               # %if.then654
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6488
	xori	$a2, $s7, 1
	ldptr.d	$a0, $a0, 6512
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $a4, 3
	ldx.d	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(bipred_flag)
	ori	$a3, $zero, 1
	st.w	$a3, $a0, %pc_lo12(bipred_flag)
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 276
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	st.d	$a3, $sp, 0
	move	$a3, $zero
	move	$a5, $fp
	move	$a6, $s0
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(UMHEXSetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	b	.LBB4_97
.LBB4_96:                               # %if.else668
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a0, $a0, 6512
	slli.d	$a2, $s8, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $a4, 3
	ldx.d	$a2, $a0, $a2
	addi.d	$a0, $sp, 276
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	st.d	$a3, $sp, 0
	move	$a3, $zero
	move	$a5, $fp
	move	$a6, $s0
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
.LBB4_97:                               # %if.end683
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ldptr.w	$a2, $a1, 5244
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB4_99
# %bb.98:                               # %lor.lhs.false687
	ldptr.w	$a0, $a1, 4120
	bnez	$a0, .LBB4_100
.LBB4_99:                               # %if.then691
	ld.h	$a0, $sp, 288
	ld.h	$a3, $sp, 290
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.h	$a0, $sp, 288
	addi.d	$a0, $a3, 2
	srli.d	$a0, $a0, 2
	st.h	$a0, $sp, 290
.LBB4_100:                              # %if.end704
	ldptr.w	$a0, $a1, 2124
	lu12i.w	$a3, 524287
	bltz	$a0, .LBB4_121
# %bb.101:                              # %for.body708.lr.ph
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$a2, $zero
	ori	$a0, $a3, 4095
	ori	$s5, $zero, 1
	ori	$a3, $s1, 24
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	b	.LBB4_104
	.p2align	4, , 16
.LBB4_102:                              # %if.then811
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.h	$a6, $a3, 0
	ld.h	$a7, $a3, 2
	ori	$a3, $zero, 2128
	ldx.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	sra.w	$a1, $a1, $s3
	st.d	$a3, $sp, 64
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 48
	addi.d	$a0, $sp, 282
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 286
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 16
	st.d	$a7, $sp, 8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a6, $sp, 0
	move	$a1, $zero
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(smpUMHEXBipredIntegerPelBlockMotionSearch)
	jirl	$ra, $ra, 0
.LBB4_103:                              # %if.end841
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a2, $sp, 280
	ldptr.w	$a3, $a1, 2124
	st.w	$a2, $sp, 288
	addi.w	$a2, $s3, 1
	bge	$s3, $a3, .LBB4_120
.LBB4_104:                              # %for.body708
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB4_108
# %bb.105:                              # %if.else723
                                        #   in Loop: Header=BB4_104 Depth=1
	beqz	$s3, .LBB4_109
# %bb.106:                              # %if.then727
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.w	$a4, $sp, 284
	ld.hu	$a2, $sp, 288
	ld.hu	$a3, $sp, 290
	st.w	$a4, $sp, 280
.LBB4_107:                              # %if.end769
                                        #   in Loop: Header=BB4_104 Depth=1
	st.h	$a2, $sp, 284
	b	.LBB4_113
	.p2align	4, , 16
.LBB4_108:                              # %if.then711
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.w	$a4, $sp, 284
	ld.hu	$a2, $sp, 288
	ld.hu	$a3, $sp, 290
	st.w	$a4, $sp, 280
	st.h	$a2, $sp, 284
	addi.d	$s7, $sp, 276
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	b	.LBB4_114
.LBB4_109:                              # %if.else736
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.w	$a2, $sp, 288
	ldptr.w	$a3, $a1, 5244
	st.w	$a2, $sp, 280
	ori	$a2, $zero, 3
	bne	$a3, $a2, .LBB4_112
# %bb.110:                              # %lor.lhs.false744
                                        #   in Loop: Header=BB4_104 Depth=1
	ldptr.w	$a2, $a1, 4120
	beqz	$a2, .LBB4_112
# %bb.111:                              # %if.else761
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.hu	$a2, $sp, 276
	ld.hu	$a3, $sp, 278
	b	.LBB4_107
.LBB4_112:                              # %if.then748
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.h	$a2, $sp, 276
	ld.h	$a3, $sp, 278
	addi.d	$a2, $a2, 2
	bstrpick.d	$a2, $a2, 31, 2
	st.h	$a2, $sp, 284
	addi.d	$a3, $a3, 2
	bstrpick.d	$a3, $a3, 31, 2
.LBB4_113:                              # %if.end769
                                        #   in Loop: Header=BB4_104 Depth=1
	addi.d	$s1, $sp, 276
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
.LBB4_114:                              # %if.end769
                                        #   in Loop: Header=BB4_104 Depth=1
	ldptr.w	$a4, $a1, 5244
	st.h	$a3, $sp, 286
	st.h	$a2, $sp, 288
	st.h	$a3, $sp, 290
	ext.w.h	$a2, $s8
	beq	$a4, $s5, .LBB4_118
# %bb.115:                              # %if.end769
                                        #   in Loop: Header=BB4_104 Depth=1
	ori	$a3, $zero, 2
	beq	$a4, $a3, .LBB4_102
# %bb.116:                              # %if.end769
                                        #   in Loop: Header=BB4_104 Depth=1
	ori	$a3, $zero, 3
	bne	$a4, $a3, .LBB4_119
# %bb.117:                              # %if.then777
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$a6, $a1, $a4
	ldptr.d	$a4, $a3, 6488
	ldptr.d	$a5, $a3, 6512
	ori	$a3, $zero, 2128
	ldx.w	$a1, $a1, $a3
	slli.d	$a3, $a6, 1
	bstrpick.d	$a3, $a3, 31, 1
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a6, $a6, 0
	slli.d	$a3, $a3, 1
	sll.w	$a1, $a1, $a3
	sra.w	$a1, $a1, $s3
	st.d	$a6, $sp, 56
	st.d	$a0, $sp, 48
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 24
	st.d	$s1, $sp, 16
	st.d	$s7, $sp, 8
	st.d	$s5, $sp, 0
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 40
	move	$a1, $zero
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(EPZSBiPredBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_103
	.p2align	4, , 16
.LBB4_118:                              # %if.then793
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.h	$a6, $s7, 0
	ld.h	$a7, $s7, 2
	ld.h	$a3, $s1, 0
	ld.h	$a4, $s1, 2
	ori	$a5, $zero, 2128
	ldx.w	$a1, $a1, $a5
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	sra.w	$a1, $a1, $s3
	st.d	$a5, $sp, 64
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 48
	addi.d	$a0, $sp, 282
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 286
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 16
	st.d	$a4, $sp, 8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a3, $sp, 0
	move	$a1, $zero
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(UMHEXBipredIntegerPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_103
	.p2align	4, , 16
.LBB4_119:                              # %if.else825
                                        #   in Loop: Header=BB4_104 Depth=1
	ld.h	$a6, $s7, 0
	ld.h	$a7, $s7, 2
	ld.h	$a3, $s1, 0
	ld.h	$a4, $s1, 2
	ori	$a5, $zero, 2128
	ldx.w	$a1, $a1, $a5
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	sra.w	$a1, $a1, $s3
	st.d	$a5, $sp, 64
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 48
	addi.d	$a0, $sp, 282
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 286
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 16
	st.d	$a4, $sp, 8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a3, $sp, 0
	move	$a1, $zero
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FullPelBlockMotionBiPred)
	jirl	$ra, $ra, 0
	b	.LBB4_103
.LBB4_120:                              # %for.end863.loopexit
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1148
	ldx.w	$a2, $a1, $a2
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB4_122
	b	.LBB4_123
.LBB4_121:
	move	$s7, $zero
	move	$s1, $zero
	ori	$a0, $a3, 4095
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB4_123
.LBB4_122:                              # %lor.lhs.false867
	ldptr.w	$a3, $a1, 4120
	bnez	$a3, .LBB4_124
.LBB4_123:                              # %if.then871
	ld.h	$a3, $sp, 280
	ld.h	$a4, $sp, 282
	slli.d	$a3, $a3, 2
	st.h	$a3, $sp, 288
	ld.h	$a3, $sp, 284
	slli.d	$a4, $a4, 2
	ld.h	$a5, $sp, 286
	st.h	$a4, $sp, 290
	slli.d	$a3, $a3, 2
	st.h	$a3, $sp, 284
	slli.d	$a3, $a5, 2
	st.h	$a3, $sp, 286
.LBB4_124:                              # %if.end892
	ldptr.w	$a3, $a1, 2132
	beqz	$a3, .LBB4_130
# %bb.125:                              # %land.lhs.true894
	ld.w	$a3, $a1, 24
	bnez	$a3, .LBB4_130
# %bb.126:                              # %if.then897
	pcalau12i	$a3, %pc_hi20(start_me_refinement_hp)
	ld.w	$a3, $a3, %pc_lo12(start_me_refinement_hp)
	sltui	$a3, $a3, 1
	masknez	$a0, $a0, $a3
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4095
	maskeqz	$a3, $a4, $a3
	ori	$a4, $zero, 3
	or	$a0, $a3, $a0
	bne	$a2, $a4, .LBB4_129
# %bb.127:                              # %land.lhs.true904
	ldptr.w	$a1, $a1, 4128
	beqz	$a1, .LBB4_129
# %bb.128:                              # %if.then906
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	st.d	$a0, $sp, 32
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 288
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 284
	ext.w.h	$a2, $s8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a1, $sp, 0
	move	$a1, $zero
	move	$a3, $s3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $s7
	pcaddu18i	$ra, %call36(EPZSSubPelBlockSearchBiPred)
	jirl	$ra, $ra, 0
	b	.LBB4_130
.LBB4_129:                              # %if.else911
	ld.h	$a6, $s1, 0
	ld.h	$a7, $s1, 2
	addi.d	$a1, $sp, 286
	addi.d	$a2, $sp, 290
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	st.d	$a3, $sp, 56
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 32
	st.d	$a2, $sp, 24
	addi.d	$a0, $sp, 288
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 284
	ext.w.h	$a2, $s8
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a1, $sp, 0
	move	$a1, $zero
	move	$a3, $s3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SubPelBlockSearchBiPred)
	jirl	$ra, $ra, 0
.LBB4_130:                              # %if.end921
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 2132
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB4_136
# %bb.131:                              # %land.lhs.true925
	ld.w	$a2, $a1, 24
	bnez	$a2, .LBB4_136
# %bb.132:                              # %if.then928
	pcalau12i	$a2, %pc_hi20(start_me_refinement_hp)
	ld.w	$a2, $a2, %pc_lo12(start_me_refinement_hp)
	pcalau12i	$a3, %pc_hi20(start_me_refinement_qp)
	ld.w	$a3, $a3, %pc_lo12(start_me_refinement_qp)
	sltu	$a2, $zero, $a2
	sltu	$a3, $zero, $a3
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4095
	masknez	$a5, $a4, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a5
	ldptr.w	$a3, $a1, 5244
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a4, $a2
	ori	$a4, $zero, 3
	or	$a0, $a0, $a2
	bne	$a3, $a4, .LBB4_135
# %bb.133:                              # %land.lhs.true937
	ldptr.w	$a1, $a1, 4128
	beqz	$a1, .LBB4_135
# %bb.134:                              # %if.then940
	xori	$a1, $s8, 1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $sp, 40
	st.d	$a0, $sp, 32
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 8
	addi.d	$a3, $sp, 288
	ext.w.h	$a2, $a1
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a3, $sp, 0
	move	$a1, $zero
	move	$a3, $s3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s7
	move	$a7, $s1
	pcaddu18i	$ra, %call36(EPZSSubPelBlockSearchBiPred)
	jirl	$ra, $ra, 0
	b	.LBB4_136
.LBB4_135:                              # %if.else946
	ld.h	$a6, $s7, 0
	ld.h	$a7, $s7, 2
	xori	$a1, $s8, 1
	addi.d	$a2, $sp, 290
	addi.d	$a3, $sp, 286
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	st.d	$a4, $sp, 56
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 32
	st.d	$a3, $sp, 24
	addi.d	$a0, $sp, 284
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 8
	addi.d	$a3, $sp, 288
	ext.w.h	$a2, $a1
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	ori	$a5, $zero, 1
	st.d	$a3, $sp, 0
	move	$a1, $zero
	move	$a3, $s3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SubPelBlockSearchBiPred)
	jirl	$ra, $ra, 0
.LBB4_136:                              # %if.end957
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_142
# %bb.137:                              # %for.cond964.preheader.lr.ph
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 2
	blt	$a0, $a1, .LBB4_142
# %bb.138:                              # %for.cond964.preheader.us.preheader
	ext.w.h	$a1, $s8
	xori	$a2, $s8, 1
	ext.w.h	$a2, $a2
	add.d	$a0, $a0, $fp
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB4_139:                              # %for.cond964.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_140 Depth 2
	slli.d	$a3, $s0, 3
	ldx.d	$a3, $s5, $a3
	add.d	$a3, $a3, $s2
	move	$a4, $fp
	.p2align	4, , 16
.LBB4_140:                              # %for.body969.us
                                        #   Parent Loop BB4_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	ldx.d	$a6, $a5, $a1
	ld.d	$a6, $a6, 0
	ld.h	$a7, $sp, 288
	ldx.d	$a5, $a5, $a2
	ldx.d	$a6, $a6, $s6
	ld.d	$a5, $a5, 0
	st.h	$a7, $a6, 0
	ld.h	$a7, $sp, 290
	ld.h	$t0, $sp, 284
	ldx.d	$a5, $a5, $s6
	st.h	$a7, $a6, 2
	st.h	$t0, $a5, 0
	ld.h	$a6, $sp, 286
	st.h	$a6, $a5, 2
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	blt	$a4, $a0, .LBB4_140
# %bb.141:                              # %for.cond964.for.inc1021_crit_edge.us
                                        #   in Loop: Header=BB4_139 Depth=1
	addi.d	$s0, $s0, 1
	blt	$s0, $s4, .LBB4_139
.LBB4_142:                              # %if.end1024
	pcalau12i	$a0, %pc_hi20(BlockMotionSearch.tstruct2)
	addi.d	$fp, $a0, %pc_lo12(BlockMotionSearch.tstruct2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	ld.hu	$a2, $fp, 8
	ld.hu	$a3, $a3, 8
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 1000
	mul.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a3
	pcalau12i	$a2, %pc_hi20(me_tot_time)
	ld.d	$a3, $a2, %pc_lo12(me_tot_time)
	pcalau12i	$a4, %pc_hi20(me_time)
	ld.d	$a5, $a4, %pc_lo12(me_time)
	add.d	$a0, $a1, $a0
	add.d	$a1, $a0, $a3
	st.d	$a1, $a2, %pc_lo12(me_tot_time)
	add.d	$a0, $a5, $a0
	st.d	$a0, $a4, %pc_lo12(me_time)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB4_143:                              # %if.else521
	st.d	$a2, $sp, 40
	st.d	$a1, $sp, 32
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 24
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 288
	pcalau12i	$a0, %pc_hi20(orig_pic)
	addi.d	$a0, $a0, %pc_lo12(orig_pic)
	st.d	$a1, $sp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(smpUMHEXFullSubPelBlockMotionSearch)
	jirl	$ra, $ra, 0
	b	.LBB4_70
.Lfunc_end4:
	.size	BlockMotionSearch, .Lfunc_end4-BlockMotionSearch
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_42-.LJTI4_0
	.word	.LBB4_28-.LJTI4_0
	.word	.LBB4_39-.LJTI4_0
                                        # -- End function
	.text
	.globl	FindSkipModeMotionVector        # -- Begin function FindSkipModeMotionVector
	.p2align	5
	.type	FindSkipModeMotionVector,@function
FindSkipModeMotionVector:               # @FindSkipModeMotionVector
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$s2, $a1, %got_pc_lo12(enc_picture)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a2, $a0, 6512
	ldptr.d	$s1, $a1, 14384
	ld.w	$a0, $a1, 12
	ldptr.d	$a1, $a1, 14224
	ld.d	$fp, $a2, 0
	ori	$s5, $zero, 536
	mul.d	$a2, $a0, $s5
	add.d	$s4, $a1, $a2
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 52
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 12
	addi.d	$a3, $sp, 28
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	beqz	$a0, .LBB5_4
# %bb.1:                                # %if.then
	ld.w	$a1, $sp, 72
	ld.d	$a2, $s2, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $sp, 68
	ldptr.d	$a2, $a2, 6488
	ldx.d	$a4, $fp, $a1
	slli.d	$a5, $a3, 3
	ld.d	$a2, $a2, 0
	ldx.d	$a4, $a4, $a5
	ld.d	$a5, $s3, 0
	ldx.d	$a2, $a2, $a1
	ld.h	$a1, $a4, 2
	ld.w	$a4, $sp, 56
	ldptr.d	$a5, $a5, 14224
	ldx.b	$a2, $a2, $a3
	ld.w	$a6, $s4, 424
	mul.d	$a3, $a4, $s5
	add.d	$a3, $a5, $a3
	ld.w	$a3, $a3, 424
	beqz	$a6, .LBB5_5
# %bb.2:                                # %land.lhs.true
	bnez	$a3, .LBB5_7
# %bb.3:                                # %if.then25
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a3, $a1, 15, 15
	add.d	$a1, $a1, $a3
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	slli.d	$a2, $a2, 1
	b	.LBB5_7
.LBB5_4:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB5_7
.LBB5_5:                                # %land.lhs.true28
	beqz	$a3, .LBB5_7
# %bb.6:                                # %if.then35
	slli.d	$a1, $a1, 1
	srai.d	$a2, $a2, 1
.LBB5_7:                                # %if.end38
	ld.w	$a3, $sp, 28
	beqz	$a3, .LBB5_11
# %bb.8:                                # %if.then41
	ld.d	$a4, $s2, 0
	ld.w	$a5, $sp, 48
	ldptr.d	$a4, $a4, 6488
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 44
	ldx.d	$a7, $fp, $a5
	ld.d	$a4, $a4, 0
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	ldx.d	$a5, $a4, $a5
	ld.d	$t0, $s3, 0
	ld.h	$a4, $a7, 2
	ldx.b	$a5, $a5, $a6
	ld.w	$a6, $sp, 32
	ldptr.d	$a7, $t0, 14224
	ld.w	$t0, $s4, 424
	ori	$t1, $zero, 536
	mul.d	$a6, $a6, $t1
	add.d	$a6, $a7, $a6
	ld.w	$a6, $a6, 424
	beqz	$t0, .LBB5_12
# %bb.9:                                # %land.lhs.true61
	bnez	$a6, .LBB5_14
# %bb.10:                               # %if.then68
	bstrpick.d	$a4, $a4, 15, 0
	bstrpick.d	$a6, $a4, 15, 15
	add.d	$a4, $a4, $a6
	ext.w.h	$a4, $a4
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a5, 1
	b	.LBB5_14
.LBB5_11:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB5_14
.LBB5_12:                               # %land.lhs.true74
	beqz	$a6, .LBB5_14
# %bb.13:                               # %if.then81
	slli.d	$a4, $a4, 1
	srai.d	$a5, $a5, 1
.LBB5_14:                               # %if.end85
	beqz	$a0, .LBB5_17
# %bb.15:                               # %cond.false
	beqz	$a2, .LBB5_18
# %bb.16:
	move	$a0, $zero
	bnez	$a3, .LBB5_19
	b	.LBB5_22
.LBB5_17:
	ori	$a0, $zero, 1
	bnez	$a3, .LBB5_19
	b	.LBB5_22
.LBB5_18:                               # %land.lhs.true89
	ld.w	$a0, $sp, 72
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 68
	ldx.d	$a0, $fp, $a0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.hu	$a0, $a0, 0
	addi.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	beqz	$a3, .LBB5_22
.LBB5_19:                               # %cond.false106
	bnez	$a5, .LBB5_21
# %bb.20:                               # %land.lhs.true109
	ld.w	$a1, $sp, 48
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 44
	ldx.d	$a1, $fp, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.hu	$a1, $a1, 0
	beqz	$a1, .LBB5_23
.LBB5_21:                               # %cond.end125
	beqz	$a0, .LBB5_24
.LBB5_22:
	move	$a0, $zero
	b	.LBB5_25
.LBB5_23:                               # %land.rhs120
	sltui	$a1, $a4, 1
	or	$a0, $a1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB5_22
.LBB5_24:                               # %if.else
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 16
	addi.d	$a0, $sp, 76
	ori	$a7, $zero, 16
	st.d	$a2, $sp, 0
	move	$a2, $fp
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
.LBB5_25:                               # %if.end170
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 16
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 24
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 24
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 24
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
	ld.d	$a1, $s1, 24
	ld.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a1, 0
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
.Lfunc_end5:
	.size	FindSkipModeMotionVector, .Lfunc_end5-FindSkipModeMotionVector
                                        # -- End function
	.globl	GetSkipCostMB                   # -- Begin function GetSkipCostMB
	.p2align	5
	.type	GetSkipCostMB,@function
GetSkipCostMB:                          # @GetSkipCostMB
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	move	$a4, $zero
	move	$fp, $zero
	move	$a3, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 432
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s4, $a0, %got_pc_lo12(input)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_1:                                # %for.inc48.1
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $s4, 0
	ldptr.w	$a1, $a0, 4168
	beqz	$a1, .LBB6_14
# %bb.2:                                #   in Loop: Header=BB6_4 Depth=1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
.LBB6_3:                                # %for.inc73
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	xori	$a4, $a4, 1
	addi.d	$fp, $fp, 4
	ori	$a0, $zero, 4
	beq	$a3, $a0, .LBB6_16
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_12 Depth 2
	andi	$a0, $a4, 1
	slli.d	$a5, $fp, 5
	slli.d	$a1, $a0, 5
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	bstrins.d	$a5, $zero, 7, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a2, $fp, 62, 3
	slli.d	$a6, $a2, 3
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	slli.d	$fp, $a0, 3
	ld.w	$a1, $a1, 196
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	andi	$a3, $a3, 8
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$s1, $a2, $a1, 3
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	bstrins.d	$a1, $a4, 4, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	slli.d	$s3, $s1, 3
	addi.d	$s6, $sp, 216
	move	$s7, $fp
	move	$s8, $fp
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_5:                                # %if.then
                                        #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
.LBB6_6:                                # %for.inc45
                                        #   in Loop: Header=BB6_7 Depth=2
	addi.d	$s8, $s8, 4
	addi.d	$s2, $s2, 8
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 16
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB6_9
.LBB6_7:                                # %for.body9
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 192
	add.d	$s0, $s8, $a0
	addi.w	$a0, $s7, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a0, $s5, 0
	ldx.d	$a2, $a1, $s3
	alsl.d	$a1, $s1, $a1, 3
	slli.d	$a3, $s0, 1
	add.d	$a4, $a0, $s2
	ldx.d	$a2, $a2, $a3
	ld.d	$a5, $a1, 8
	ld.d	$a6, $a4, -96
	vinsgr2vr.d	$vr0, $a2, 0
	ldx.d	$a2, $a5, $a3
	vinsgr2vr.d	$vr1, $a6, 0
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a2, 0
	ld.d	$a2, $a4, -64
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s6, -64
	vilvl.h	$vr1, $vr3, $vr2
	vinsgr2vr.d	$vr2, $a2, 0
	ld.d	$a2, $a1, 16
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s6, -32
	ldx.d	$a2, $a2, $a3
	xvpermi.q	$xr0, $xr1, 2
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	xvst	$xr0, $a5, 0
	ld.d	$a4, $a4, -32
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s6, 0
	ldx.d	$a2, $a0, $s2
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a0, $s4, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a2, 0
	vilvl.h	$vr2, $vr3, $vr2
	ldptr.w	$a1, $a0, 4168
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s6, 32
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $a5, 32
	bnez	$a1, .LBB6_5
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $a0, 5100
	bnez	$a0, .LBB6_6
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_9:                                # %for.inc48
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 196
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ori	$a3, $a1, 4
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	or	$a0, $a0, $a4
	ori	$a1, $a0, 224
	lu12i.w	$a2, 3
	ori	$a2, $a2, 336
	add.d	$s3, $a1, $a2
	ori	$a1, $a0, 192
	add.d	$s8, $a1, $a2
	ori	$a0, $a0, 160
	add.d	$s6, $a0, $a2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 5
	or	$a1, $a0, $a4
	add.d	$s0, $a1, $a2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 216
	add.d	$s1, $a1, $a0
	move	$s7, $fp
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_10:                               # %if.then.1
                                        #   in Loop: Header=BB6_12 Depth=2
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
.LBB6_11:                               # %for.inc45.1
                                        #   in Loop: Header=BB6_12 Depth=2
	addi.d	$fp, $fp, 4
	addi.d	$s3, $s3, 8
	addi.d	$s8, $s8, 8
	addi.d	$s6, $s6, 8
	addi.d	$s0, $s0, 8
	addi.d	$s7, $s7, 4
	addi.d	$s1, $s1, 16
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgeu	$fp, $a0, .LBB6_1
.LBB6_12:                               # %for.body9.1
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $s4
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	ld.w	$a0, $a0, 192
	add.d	$s5, $fp, $a0
	addi.w	$a0, $s7, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a0, $a4, 3
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $s4, 0
	move	$s4, $s2
	slli.d	$a3, $s5, 1
	ldx.d	$a2, $a2, $a3
	alsl.d	$a1, $a4, $a1, 3
	ldx.d	$a4, $a0, $s0
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a4, $a0, $s6
	vst	$vr0, $s1, -64
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a4, 0
	ld.d	$a2, $a1, 16
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s1, -32
	ldx.d	$a2, $a2, $a3
	xvpermi.q	$xr0, $xr1, 2
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	xvst	$xr0, $a5, 0
	ldx.d	$a4, $a0, $s8
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s1, 0
	ldx.d	$a2, $a0, $s3
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a0, $s2, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a2, 0
	vilvl.h	$vr2, $vr3, $vr2
	ldptr.w	$a1, $a0, 4168
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s1, 32
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $a5, 32
	bnez	$a1, .LBB6_10
# %bb.13:                               # %land.lhs.true.1
                                        #   in Loop: Header=BB6_12 Depth=2
	ldptr.w	$a0, $a0, 5100
	bnez	$a0, .LBB6_11
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_14:                               # %land.lhs.true54
                                        #   in Loop: Header=BB6_4 Depth=1
	ldptr.w	$a0, $a0, 5100
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_3
# %bb.15:                               # %for.body61.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$s0, $a0, %pc_lo12(diff64)
	addi.d	$a1, $sp, 152
	ori	$a2, $zero, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB6_3
.LBB6_16:                               # %for.end75
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end6:
	.size	GetSkipCostMB, .Lfunc_end6-GetSkipCostMB
                                        # -- End function
	.globl	BIDPartitionCost                # -- Begin function BIDPartitionCost
	.p2align	5
	.type	BIDPartitionCost,@function
BIDPartitionCost:                       # @BIDPartitionCost
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1312
	st.d	$ra, $sp, 1304                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1224                  # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$s1, $a5, %got_pc_lo12(input)
	ld.d	$a5, $s1, 0
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a0
	alsl.d	$a0, $a0, $a5, 3
	ld.w	$t1, $a0, 72
	slti	$a2, $fp, 4
	ori	$t4, $zero, 4
	masknez	$a3, $t4, $a2
	maskeqz	$a2, $fp, $a2
	or	$t3, $a2, $a3
	addi.d	$a3, $a5, 136
	alsl.d	$a2, $t3, $a3, 3
	ld.w	$a7, $a2, 4
	ld.w	$t2, $a0, 76
	slli.d	$a2, $t3, 3
	ori	$a0, $zero, 1
	lu12i.w	$ra, 1
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blt	$a7, $a0, .LBB7_13
# %bb.1:                                # %for.cond32.preheader.lr.ph
	ldx.w	$t0, $a3, $a2
	blt	$t0, $a0, .LBB7_13
# %bb.2:                                # %for.cond32.preheader.us.preheader
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $zero
	slli.d	$a0, $fp, 3
	alsl.d	$a5, $fp, $a3, 3
	ldx.w	$a3, $a3, $a0
	ld.w	$a5, $a5, 4
	pcalau12i	$a6, %pc_hi20(PartitionMotionSearch.bx0)
	addi.d	$a6, $a6, %pc_lo12(PartitionMotionSearch.bx0)
	alsl.d	$a6, $t3, $a6, 4
	pcalau12i	$t1, %got_pc_hi20(img)
	ld.d	$s7, $t1, %got_pc_lo12(img)
	slli.d	$a1, $a1, 2
	pcalau12i	$t1, %pc_hi20(PartitionMotionSearch.by0)
	addi.d	$t1, $t1, %pc_lo12(PartitionMotionSearch.by0)
	ld.d	$t2, $s7, 0
	alsl.d	$t1, $t3, $t1, 4
	ldx.w	$t4, $t1, $a1
	ldx.w	$t1, $a6, $a1
	ldptr.d	$a1, $t2, 14384
	ldptr.d	$a6, $t2, 14376
	add.w	$a7, $t4, $a7
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a7, %pc_hi20(mvbits)
	ld.d	$a7, $a7, %pc_lo12(mvbits)
	add.w	$s6, $t1, $t0
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$t0, $t1, 3
	slli.d	$t1, $a3, 3
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	slli.d	$t2, $t2, 3
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	slli.d	$t3, $t3, 3
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_3:                                # %for.cond32.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	slli.d	$t6, $t4, 3
	ldx.d	$t5, $a1, $t6
	ldx.d	$t6, $a6, $t6
	move	$t7, $t0
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_4:                                # %for.body35.us
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$s0, $t5, $t7
	ldx.d	$s1, $t6, $t7
	ld.d	$s2, $s0, 0
	ld.d	$s3, $s1, 0
	ldx.d	$s2, $s2, $t2
	ldx.d	$s3, $s3, $t2
	ldx.d	$s2, $s2, $a0
	ldx.d	$s3, $s3, $a0
	ld.h	$s4, $s2, 0
	ld.h	$s5, $s3, 0
	sub.d	$s4, $s4, $s5
	ld.d	$s0, $s0, 8
	ld.d	$s1, $s1, 8
	slli.d	$s4, $s4, 2
	ld.h	$s2, $s2, 2
	ldx.d	$s0, $s0, $t3
	ldx.d	$s1, $s1, $t3
	ld.h	$s3, $s3, 2
	ldx.w	$s4, $a7, $s4
	ldx.d	$s0, $s0, $a0
	ldx.d	$s1, $s1, $a0
	sub.d	$s2, $s2, $s3
	slli.d	$s2, $s2, 2
	ld.h	$s3, $s0, 0
	ld.h	$s5, $s1, 0
	ldx.w	$s2, $a7, $s2
	ld.h	$s0, $s0, 2
	ld.h	$s1, $s1, 2
	sub.d	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a7, $s3
	sub.d	$s0, $s0, $s1
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a7, $s0
	add.d	$a2, $s4, $a2
	add.d	$a2, $a2, $s2
	add.d	$a2, $a2, $s3
	add.d	$a2, $a2, $s0
	add.d	$t8, $t8, $a3
	add.d	$t7, $t7, $t1
	blt	$t8, $s6, .LBB7_4
# %bb.5:                                # %for.cond32.for.inc139_crit_edge.us
                                        #   in Loop: Header=BB7_3 Depth=1
	add.d	$t4, $t4, $a5
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	blt	$t4, $t5, .LBB7_3
# %bb.6:                                # %for.end141
	mul.w	$a0, $a2, $a4
	srai.d	$s8, $a0, 16
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.w	$a0, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s5, $sp, 328
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$s2, $a0, %pc_lo12(diff64)
	ori	$a0, $ra, 1004
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %for.cond148.for.inc200_crit_edge.us
                                        #   in Loop: Header=BB7_8 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s5, $s5, 256
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB7_14
.LBB7_8:                                # %for.body146.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	ld.d	$a0, $s7, 0
	ld.w	$a0, $a0, 196
	slli.w	$s3, $a1, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	alsl.w	$a3, $a1, $a0, 2
	addi.d	$a0, $s3, 1
	addi.d	$a1, $s3, 2
	addi.d	$a2, $s3, 3
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a3, $s3, 5
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 5
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_9:                                # %if.then.us
                                        #   in Loop: Header=BB7_11 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	add.d	$s8, $a0, $s8
.LBB7_10:                               # %for.inc196.us
                                        #   in Loop: Header=BB7_11 Depth=2
	addi.d	$s1, $s1, 1
	addi.w	$s4, $s4, 4
	addi.d	$s5, $s5, 16
	bge	$s1, $s6, .LBB7_7
.LBB7_11:                               # %for.body152.us
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ld.w	$a0, $a0, 192
	add.w	$s0, $s4, $a0
	ori	$a2, $zero, 2
	move	$a0, $s4
	move	$a1, $s3
	move	$a3, $fp
	move	$a4, $fp
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a0, $s7, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a1, 3
	slli.d	$a1, $s0, 1
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a2
	slli.d	$a2, $s4, 1
	ldx.d	$a5, $a5, $a2
	vinsgr2vr.d	$vr0, $a4, 0
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	ld.d	$a4, $a3, 8
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a4, $a4, $a1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	ldx.d	$a5, $a5, $a2
	vst	$vr0, $s5, -128
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a5, 0
	vilvl.h	$vr2, $vr3, $vr2
	ld.d	$a4, $a3, 16
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s5, -64
	xvpermi.q	$xr0, $xr1, 2
	ldx.d	$a4, $a4, $a1
	xvst	$xr0, $s2, 0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	ldx.d	$a5, $a5, $a2
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr3, $vr0
	ld.d	$a3, $a3, 24
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ldx.d	$a0, $a0, $a2
	vst	$vr0, $s5, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a0, 0
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s5, 64
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $s2, 32
	ori	$a0, $zero, 4
	blt	$a0, $fp, .LBB7_9
# %bb.12:                               # %for.body152.us
                                        #   in Loop: Header=BB7_11 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB7_10
	b	.LBB7_9
.LBB7_13:
	move	$s8, $zero
	bge	$t4, $fp, .LBB7_15
	b	.LBB7_23
.LBB7_14:                               # %for.end203.loopexit
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $s1, 0
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	ori	$t4, $zero, 4
	lu12i.w	$ra, 1
	blt	$t4, $fp, .LBB7_23
.LBB7_15:                               # %for.end203
	ori	$a0, $ra, 1004
	ldx.w	$a0, $a5, $a0
	beqz	$a0, .LBB7_23
# %bb.16:                               # %for.cond209.preheader
	alsl.d	$a0, $t3, $a5, 3
	ld.w	$a2, $a0, 76
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB7_23
# %bb.17:                               # %for.cond217.preheader.lr.ph
	ld.w	$a0, $a0, 72
	blt	$a0, $a1, .LBB7_23
# %bb.18:                               # %for.cond217.preheader.preheader
	move	$s0, $zero
	slti	$a0, $t2, 8
	ori	$a1, $zero, 8
	masknez	$a2, $a1, $a0
	maskeqz	$a0, $t2, $a0
	or	$a2, $a0, $a2
	slti	$a0, $t1, 8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t1, $a0
	or	$s2, $a0, $a1
	addi.d	$s6, $sp, 456
	move	$s4, $a2
	slli.d	$a0, $a2, 6
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	slli.d	$s5, $s2, 2
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$fp, $a0, %pc_lo12(diff64)
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_19:                               # %for.inc245
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	ld.w	$a0, $a0, 76
	add.d	$s0, $s0, $s4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a1
	bge	$s0, $a0, .LBB7_23
.LBB7_20:                               # %for.cond217.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
	alsl.d	$a0, $t3, $a5, 3
	ld.w	$a0, $a0, 72
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_19
# %bb.21:                               # %for.cond225.preheader.lr.ph
                                        #   in Loop: Header=BB7_20 Depth=1
	move	$s7, $zero
	move	$s3, $s6
	.p2align	4, , 16
.LBB7_22:                               # %for.end239
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s3, -256
	xvld	$xr1, $s3, -192
	xvld	$xr2, $s3, -128
	xvld	$xr3, $s3, -64
	xvst	$xr0, $fp, 0
	xvst	$xr1, $fp, 32
	xvst	$xr2, $fp, 64
	xvst	$xr3, $fp, 96
	xvld	$xr0, $s3, 0
	xvld	$xr1, $s3, 64
	xvld	$xr2, $s3, 128
	xvld	$xr3, $s3, 192
	xvst	$xr0, $fp, 128
	xvst	$xr1, $fp, 160
	xvst	$xr2, $fp, 192
	xvst	$xr3, $fp, 224
	move	$a0, $fp
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $s1, 0
	alsl.d	$a1, $t3, $a5, 3
	ld.w	$a1, $a1, 72
	add.d	$s8, $a0, $s8
	add.d	$s7, $s7, $s2
	add.d	$s3, $s3, $s5
	blt	$s7, $a1, .LBB7_22
	b	.LBB7_19
.LBB7_23:                               # %if.end248
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1304                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1312
	ret
.Lfunc_end7:
	.size	BIDPartitionCost, .Lfunc_end7-BIDPartitionCost
                                        # -- End function
	.globl	GetDirectCost8x8                # -- Begin function GetDirectCost8x8
	.p2align	5
	.type	GetDirectCost8x8,@function
GetDirectCost8x8:                       # @GetDirectCost8x8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$fp, $zero
	addi.d	$s2, $sp, 248
	bstrpick.d	$a1, $a0, 31, 31
	add.d	$a1, $a0, $a1
	addi.w	$a2, $a1, 0
	slli.d	$t0, $a2, 2
	bstrins.d	$t0, $zero, 2, 0
	bstrpick.d	$a1, $a1, 28, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	slli.w	$a7, $a0, 3
	addi.w	$a1, $t0, 0
	addi.d	$a0, $a7, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	alsl.d	$s7, $a7, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	pcalau12i	$a5, %pc_hi20(direct_pdir)
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(direct_ref_idx)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(imgY_org)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s5, $a0, %pc_lo12(diff)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $a1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s6, 0
	ld.w	$a1, $a2, 196
	add.w	$a3, $t0, $a1
	ld.d	$a4, $a5, %pc_lo12(direct_pdir)
	srai.d	$a3, $a3, 2
	ld.w	$a2, $a2, 192
	slli.d	$s0, $a3, 3
	ldx.d	$a4, $a4, $s0
	add.w	$s3, $a2, $a7
	srai.d	$a3, $s3, 2
	ldx.b	$a2, $a4, $a3
	bltz	$a2, .LBB8_7
# %bb.2:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	move	$t1, $a0
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(direct_ref_idx)
	ld.d	$a4, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a4, $a4, $s0
	ldx.d	$a0, $a0, $s0
	ldx.b	$a5, $a4, $a3
	ldx.b	$a6, $a0, $a3
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	add.d	$fp, $t1, $a1
	add.d	$s1, $s2, $s8
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s2, $t0, 0
	move	$a0, $a7
	move	$a1, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(imgY_org)
	ld.d	$a1, $s6, 0
	alsl.d	$a2, $fp, $a0, 3
	slli.d	$s6, $fp, 3
	ldx.d	$a0, $a0, $s6
	slli.d	$a3, $s3, 1
	add.d	$a1, $a1, $s7
	ld.d	$a4, $a2, 8
	add.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $a3
	ldptr.d	$a5, $a1, 12624
	ldx.d	$a4, $a4, $a3
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vinsgr2vr.d	$vr2, $a4, 0
	ldptr.d	$a0, $a1, 12656
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a0, 0
	ld.d	$a0, $a2, 16
	addi.d	$a4, $sp, 136
	vstx	$vr0, $s8, $a4
	vilvl.h	$vr2, $vr3, $vr2
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a0, $a0, $a3
	vsub.w	$vr1, $vr2, $vr1
	vst	$vr1, $s1, -80
	xvpermi.q	$xr0, $xr1, 2
	vinsgr2vr.d	$vr1, $a0, 0
	ldptr.d	$a0, $a1, 12688
	xvst	$xr0, $s5, 0
	ld.d	$a2, $a2, 24
	vilvl.h	$vr0, $vr3, $vr1
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a0, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a1, $a1, 12720
	vst	$vr0, $s1, -48
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a1, 0
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s1, -16
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $s5, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	move	$s4, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$s8, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(direct_pdir)
	ld.w	$a1, $a1, 192
	ldx.d	$a2, $a2, $s0
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.w	$s3, $a1, $a7
	srai.d	$a1, $s3, 2
	ldx.b	$a2, $a2, $a1
	bltz	$a2, .LBB8_7
# %bb.3:                                # %if.end.1
                                        #   in Loop: Header=BB8_1 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$a4, $a3, 0
	ld.d	$a3, $a3, 8
	ldx.d	$a4, $a4, $s0
	ldx.d	$a3, $a3, $s0
	ldx.b	$a5, $a4, $a1
	ldx.b	$a6, $a3, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $a7
	move	$a1, $s2
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s0, %pc_lo12(imgY_org)
	ldx.d	$a1, $a0, $s6
	move	$s6, $s8
	ld.d	$a2, $s8, 0
	alsl.d	$a0, $fp, $a0, 3
	slli.d	$a3, $s3, 1
	ldx.d	$a1, $a1, $a3
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a2, $s7
	add.d	$a2, $a2, $s4
	ldptr.d	$a4, $a2, 12632
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $a0, 8
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a4, $a2, 12664
	vst	$vr0, $s1, -96
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a4, 0
	ld.d	$a1, $a0, 16
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vst	$vr1, $s1, -64
	ldx.d	$a1, $a1, $a3
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $s5, 0
	ldptr.d	$a4, $a2, 12696
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a0, $a0, 24
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr3, $vr1
	ldx.d	$a0, $a0, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a1, $a2, 12728
	vst	$vr0, $s1, -32
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a1, 0
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	addi.d	$s2, $sp, 248
	vstx	$vr1, $s2, $s4
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $s5, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$fp, $a0, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a2, 4
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t0, $t0, 4
	addi.d	$s8, $s4, 128
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $s0
	bge	$a1, $a2, .LBB8_1
# %bb.4:                                # %for.end78
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	bnez	$a1, .LBB8_9
# %bb.5:                                # %land.lhs.true
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB8_9
# %bb.6:                                # %for.body85.preheader
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$s0, $a0, %pc_lo12(diff64)
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	b	.LBB8_8
.LBB8_7:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$fp, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB8_8:                                # %cleanup.sink.split
	st.w	$a0, $a2, 0
.LBB8_9:                                # %cleanup
	move	$a0, $fp
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end8:
	.size	GetDirectCost8x8, .Lfunc_end8-GetDirectCost8x8
                                        # -- End function
	.globl	GetDirectCostMB                 # -- Begin function GetDirectCostMB
	.p2align	5
	.type	GetDirectCostMB,@function
GetDirectCostMB:                        # @GetDirectCostMB
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.w	$zero, $sp, 4
	addi.d	$a1, $sp, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(GetDirectCost8x8)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 4
	lu12i.w	$s2, 524287
	ori	$a1, $s2, 4095
	beq	$a2, $a1, .LBB9_11
# %bb.1:                                # %for.inc
	move	$fp, $a0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(GetDirectCost8x8)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 4
	ori	$a1, $s2, 4095
	beq	$a2, $a1, .LBB9_11
# %bb.2:                                # %for.inc.1
	move	$s0, $a0
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(GetDirectCost8x8)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 4
	ori	$a1, $s2, 4095
	beq	$a2, $a1, .LBB9_11
# %bb.3:                                # %for.inc.2
	move	$s1, $a0
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(GetDirectCost8x8)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 4
	ori	$a1, $s2, 4095
	beq	$a2, $a1, .LBB9_11
# %bb.4:                                # %for.inc.3
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a3, $a1, 0
	ldptr.w	$a4, $a3, 5100
	ori	$a1, $zero, 2
	beq	$a4, $a1, .LBB9_10
# %bb.5:                                # %for.inc.3
	add.d	$a1, $s0, $fp
	add.d	$a1, $s1, $a1
	ori	$a5, $zero, 1
	add.w	$a1, $a0, $a1
	bne	$a4, $a5, .LBB9_11
# %bb.6:                                # %sw.bb
	blt	$a2, $a1, .LBB9_10
# %bb.7:                                # %lor.lhs.false
	ldptr.w	$a0, $a3, 4036
	beqz	$a0, .LBB9_10
# %bb.8:                                # %land.lhs.true
	ldptr.w	$a0, $a3, 4040
	beqz	$a0, .LBB9_10
# %bb.9:                                # %land.lhs.true4
	ldptr.w	$a0, $a3, 4044
	bnez	$a0, .LBB9_11
.LBB9_10:                               # %sw.bb8
	move	$a1, $a2
.LBB9_11:                               # %cleanup
	move	$a0, $a1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	GetDirectCostMB, .Lfunc_end9-GetDirectCostMB
                                        # -- End function
	.globl	PartitionMotionSearch           # -- Begin function PartitionMotionSearch
	.p2align	5
	.type	PartitionMotionSearch,@function
PartitionMotionSearch:                  # @PartitionMotionSearch
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
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a4, $a3, 0
	ld.w	$a3, $a4, 20
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a6, $a0, %got_pc_lo12(input)
	addi.d	$a0, $a3, -1
	slti	$a5, $s2, 4
	ori	$a2, $zero, 4
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a3, $a6, 0
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $s2, $a5
	or	$a7, $a5, $a2
	addi.d	$a3, $a3, 136
	alsl.d	$a2, $a7, $a3, 3
	ld.w	$a5, $a4, 12
	ldptr.d	$a4, $a4, 14224
	ld.w	$a2, $a2, 4
	ori	$a6, $zero, 536
	mul.d	$a5, $a5, $a6
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 432
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	blez	$a2, .LBB10_23
# %bb.1:                                # %for.cond30.preheader.us.preheader
	move	$s6, $zero
	slli.d	$a4, $a7, 3
	ldx.w	$a6, $a3, $a4
	alsl.d	$a4, $s2, $a3, 3
	slli.d	$a1, $s2, 3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ldx.w	$s3, $a3, $a1
	ld.w	$t0, $a4, 4
	pcalau12i	$a3, %pc_hi20(PartitionMotionSearch.bx0)
	addi.d	$a3, $a3, %pc_lo12(PartitionMotionSearch.bx0)
	alsl.d	$a3, $a7, $a3, 4
	ldx.w	$t1, $a3, $a0
	slti	$a3, $s2, 2
	ori	$a1, $zero, 2
	masknez	$a4, $a1, $a3
	pcalau12i	$a5, %pc_hi20(PartitionMotionSearch.by0)
	addi.d	$a5, $a5, %pc_lo12(PartitionMotionSearch.by0)
	alsl.d	$a1, $a7, $a5, 4
	ldx.w	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a3
	or	$a0, $a0, $a4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	add.w	$a0, $t1, $a6
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.w	$a0, $a1, $a2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	slli.w	$a0, $t1, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %for.inc126.us
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s6, $a0, .LBB10_28
.LBB10_3:                               # %for.cond30.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_22 Depth 4
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_21 Depth 5
                                        #           Child Loop BB10_18 Depth 5
                                        #             Child Loop BB10_19 Depth 6
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $s6, $a0
	slli.d	$a0, $a1, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	blez	$a0, .LBB10_2
# %bb.4:                                # %for.body36.lr.ph.us
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$a0, $zero
	move	$s4, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %for.cond67.for.inc123_crit_edge.us.us
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$s4, $s4, 1
	ext.w.h	$a0, $s4
	ori	$a3, $zero, 1
	bge	$a0, $a1, .LBB10_2
.LBB10_6:                               # %for.body36.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_13 Depth 3
                                        #         Child Loop BB10_22 Depth 4
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_21 Depth 5
                                        #           Child Loop BB10_18 Depth 5
                                        #             Child Loop BB10_19 Depth 6
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ldptr.w	$a1, $a2, 4140
	ld.w	$a2, $a2, 28
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB10_11
# %bb.7:                                # %for.body36.us.us
                                        #   in Loop: Header=BB10_6 Depth=2
	bne	$a1, $a3, .LBB10_9
# %bb.8:                                # %if.then51.us.us
                                        #   in Loop: Header=BB10_6 Depth=2
	slti	$a1, $a0, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 1
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %if.else55.us.us
                                        #   in Loop: Header=BB10_6 Depth=2
	slti	$a1, $a0, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
.LBB10_10:                              # %if.end62.us.us.sink.split
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
.LBB10_11:                              # %if.end62.us.us
                                        #   in Loop: Header=BB10_6 Depth=2
	pcalau12i	$a0, %pc_hi20(motion_cost)
	ld.d	$a0, $a0, %pc_lo12(motion_cost)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.d	$a1, $a1, 0
	slli.d	$a4, $s6, 3
	ldx.d	$a0, $a0, $a4
	ext.w.h	$a5, $s4
	ldptr.d	$a2, $a1, 6488
	ldptr.d	$a1, $a1, 6512
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	slli.d	$a5, $a5, 3
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a5
	ldx.d	$fp, $a2, $a4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$s0, $a1, $a4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a3, .LBB10_13
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_12:                              # %for.cond73.for.inc120_crit_edge.us.us.us
                                        #   in Loop: Header=BB10_13 Depth=3
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $s7, $t0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_5
.LBB10_13:                              # %for.body71.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_22 Depth 4
                                        #         Child Loop BB10_16 Depth 4
                                        #           Child Loop BB10_21 Depth 5
                                        #           Child Loop BB10_18 Depth 5
                                        #             Child Loop BB10_19 Depth 6
	slli.w	$a3, $s7, 2
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	blez	$t0, .LBB10_22
# %bb.14:                               # %for.body77.us.us.us.us.preheader
                                        #   in Loop: Header=BB10_13 Depth=3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	add.w	$a2, $a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	add.w	$s5, $a2, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_15:                              # %for.cond93.for.inc117_crit_edge.us.us.us.us
                                        #   in Loop: Header=BB10_16 Depth=4
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	add.d	$a4, $a4, $s3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bge	$a4, $a0, .LBB10_12
.LBB10_16:                              # %for.body77.us.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_21 Depth 5
                                        #           Child Loop BB10_18 Depth 5
                                        #             Child Loop BB10_19 Depth 6
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14384
	slli.d	$a2, $s7, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $a4, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.w	$s1, $a0, 168
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$s8, $a1, $a0
	add.w	$s7, $s1, $a4
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	slli.w	$a2, $a4, 2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a4, $s2
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(BlockMotionSearch)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	blez	$s3, .LBB10_21
# %bb.17:                               # %for.body97.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB10_16 Depth=4
	add.w	$s2, $s7, $s3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	slli.d	$s1, $a0, 3
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_18:                              # %for.body97.us.us.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB10_19 Depth 6
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $fp, $a0
	add.d	$a0, $a0, $s7
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s6, $s0, 3
	move	$a1, $s1
	move	$a2, $s7
	.p2align	4, , 16
.LBB10_19:                              # %for.body109.us.us.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        #           Parent Loop BB10_18 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a3, $a0, 0
	ldx.d	$a3, $a3, $a1
	ld.w	$a4, $s8, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $s2, .LBB10_19
# %bb.20:                               # %for.cond105.for.inc114_crit_edge.us.us.us.us.us
                                        #   in Loop: Header=BB10_18 Depth=5
	addi.d	$s6, $s6, 1
	blt	$s6, $s5, .LBB10_18
	b	.LBB10_15
	.p2align	4, , 16
.LBB10_21:                              # %for.body97.us57.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        #         Parent Loop BB10_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s7
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 8
	blt	$s6, $s5, .LBB10_21
	b	.LBB10_15
	.p2align	4, , 16
.LBB10_22:                              # %for.body77.us68.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s8
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	move	$a4, $s2
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(BlockMotionSearch)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	add.w	$s1, $s1, $s3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB10_22
	b	.LBB10_12
.LBB10_23:                              # %for.cond30.preheader.preheader
	pcalau12i	$a1, %pc_hi20(motion_cost)
	ld.d	$a3, $a1, %pc_lo12(motion_cost)
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	move	$a2, $zero
	alsl.d	$a3, $s2, $a3, 3
	ori	$a4, $zero, 1
	b	.LBB10_25
	.p2align	4, , 16
.LBB10_24:                              # %for.inc126
                                        #   in Loop: Header=BB10_25 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	beq	$a2, $a5, .LBB10_28
.LBB10_25:                              # %for.cond30.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_27 Depth 2
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$a7, $a2, $a5
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a1, $a5
	blt	$a5, $a4, .LBB10_24
# %bb.26:                               # %for.body36.lr.ph
                                        #   in Loop: Header=BB10_25 Depth=1
	ld.d	$a5, $a3, 0
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a5, $a6
	move	$a6, $zero
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB10_27:                              # %for.body36
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.h	$t0, $a6
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a5, $t0
	stx.w	$zero, $t0, $a0
	ld.w	$t0, $a7, 0
	addi.d	$a6, $a6, 1
	ext.w.h	$t1, $a6
	blt	$t1, $t0, .LBB10_27
	b	.LBB10_24
.LBB10_28:                              # %for.end128
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	PartitionMotionSearch, .Lfunc_end10-PartitionMotionSearch
                                        # -- End function
	.globl	Get_Direct_Motion_Vectors       # -- Begin function Get_Direct_Motion_Vectors
	.p2align	5
	.type	Get_Direct_Motion_Vectors,@function
Get_Direct_Motion_Vectors:              # @Get_Direct_Motion_Vectors
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ori	$a4, $zero, 536
	mul.d	$a4, $a0, $a4
	add.d	$fp, $a2, $a4
	ld.w	$a4, $fp, 432
	ld.d	$s6, $a3, %got_pc_lo12(enc_picture)
	pcalau12i	$a2, %got_pc_hi20(Co_located)
	ld.d	$a2, $a2, %got_pc_lo12(Co_located)
	beqz	$a4, .LBB11_3
# %bb.1:                                # %if.then
	ld.d	$a5, $a2, 0
	andi	$a2, $a0, 1
	bnez	$a2, .LBB11_4
# %bb.2:                                # %if.else
	addi.d	$a5, $a5, 2047
	addi.d	$a6, $a5, 1193
	addi.d	$a3, $a5, 1185
	addi.d	$a2, $a5, 1169
	addi.d	$a5, $a5, 1177
	b	.LBB11_5
.LBB11_3:                               # %if.else8
	ld.d	$a5, $a2, 0
	addi.d	$a6, $a5, 1624
	addi.d	$a3, $a5, 1616
	addi.d	$a2, $a5, 1600
	addi.d	$a5, $a5, 1608
	b	.LBB11_5
.LBB11_4:                               # %if.then7
	lu12i.w	$a7, 1
	ori	$a2, $a7, 760
	add.d	$a6, $a5, $a2
	ori	$a2, $a7, 752
	add.d	$a3, $a5, $a2
	ori	$a2, $a7, 736
	add.d	$a2, $a5, $a2
	ori	$a7, $a7, 744
	add.d	$a5, $a5, $a7
.LBB11_5:                               # %if.end11
	ld.d	$a7, $s6, 0
	ldptr.w	$a1, $a1, 14452
	pcalau12i	$s1, %pc_hi20(direct_ref_idx)
	pcalau12i	$s2, %pc_hi20(direct_pdir)
	pcalau12i	$t0, %pc_hi20(active_pps)
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(active_sps)
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$s3, -2
	pcalau12i	$t0, %pc_hi20(LEVELMVLIMIT)
	addi.d	$t0, $t0, %pc_lo12(LEVELMVLIMIT)
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(wbp_weight)
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB11_40
# %bb.6:                                # %if.then13
	ldptr.d	$a1, $a7, 6488
	ld.d	$s4, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $a6, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $sp, 164
	st.w	$zero, $sp, 160
	addi.w	$s5, $zero, -1
	addi.d	$a3, $sp, 136
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 12
	addi.d	$a3, $sp, 112
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 64
	move	$a2, $s5
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 12
	addi.d	$a3, $sp, 88
	move	$a1, $s5
	move	$a2, $s5
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	ldptr.w	$a0, $a2, 15268
	beqz	$a0, .LBB11_67
# %bb.7:                                # %if.else126
	ld.w	$a0, $fp, 424
	ld.w	$a5, $sp, 136
	beqz	$a0, .LBB11_83
# %bb.8:                                # %if.then128
	move	$a0, $s5
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a5, .LBB11_12
# %bb.9:                                # %cond.true131
	ld.w	$a0, $sp, 156
	ldptr.d	$a1, $a2, 14224
	ld.w	$a3, $sp, 140
	ori	$a4, $zero, 536
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	ld.w	$a6, $sp, 152
	mul.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	ld.w	$a1, $a1, 424
	ldx.b	$a0, $a0, $a6
	bnez	$a1, .LBB11_12
# %bb.10:                               # %cond.true131
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB11_12
# %bb.11:                               # %cond.false153
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 254
.LBB11_12:                              # %cond.end164
	ld.w	$a6, $sp, 112
	move	$a1, $s5
	beqz	$a6, .LBB11_16
# %bb.13:                               # %cond.true169
	ld.w	$a1, $sp, 132
	ldptr.d	$a3, $a2, 14224
	ld.w	$a4, $sp, 116
	ori	$a7, $zero, 536
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	ld.w	$t0, $sp, 128
	mul.d	$a4, $a4, $a7
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 424
	ldx.b	$a1, $a1, $t0
	bnez	$a3, .LBB11_16
# %bb.14:                               # %cond.true169
	addi.w	$a3, $zero, -1
	bge	$a3, $a1, .LBB11_16
# %bb.15:                               # %cond.false194
	slli.d	$a1, $a1, 1
	andi	$a1, $a1, 254
.LBB11_16:                              # %cond.end206
	ld.w	$a7, $sp, 88
	beqz	$a7, .LBB11_20
# %bb.17:                               # %cond.true211
	ld.w	$a3, $sp, 108
	ldptr.d	$a4, $a2, 14224
	ld.w	$t0, $sp, 92
	ori	$t1, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$t2, $sp, 104
	mul.d	$t0, $t0, $t1
	add.d	$a4, $a4, $t0
	ld.w	$a4, $a4, 424
	ldx.b	$s5, $a3, $t2
	bnez	$a4, .LBB11_20
# %bb.18:                               # %cond.true211
	addi.w	$a3, $zero, -1
	bge	$a3, $s5, .LBB11_20
# %bb.19:                               # %cond.false236
	slli.d	$a3, $s5, 1
	andi	$s5, $a3, 254
.LBB11_20:                              # %cond.end248
	ld.w	$t0, $sp, 64
	beqz	$t0, .LBB11_24
# %bb.21:                               # %cond.true253
	ld.w	$a3, $sp, 84
	ldptr.d	$a4, $a2, 14224
	ld.w	$t1, $sp, 68
	ori	$t2, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$t3, $sp, 80
	mul.d	$t1, $t1, $t2
	add.d	$a4, $a4, $t1
	ld.w	$a4, $a4, 424
	ldx.b	$s5, $a3, $t3
	bnez	$a4, .LBB11_24
# %bb.22:                               # %cond.true253
	addi.w	$a3, $zero, -1
	bge	$a3, $s5, .LBB11_24
# %bb.23:                               # %cond.false278
	slli.d	$a3, $s5, 1
	andi	$s5, $a3, 254
.LBB11_24:                              # %cond.end291
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB11_28
# %bb.25:                               # %cond.true296
	ld.w	$a3, $sp, 156
	ldptr.d	$a5, $a2, 14224
	ld.w	$t1, $sp, 140
	ori	$t2, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s7, $a3
	ld.w	$t3, $sp, 152
	mul.d	$t1, $t1, $t2
	add.d	$a5, $a5, $t1
	ld.w	$a5, $a5, 424
	ldx.b	$a3, $a3, $t3
	bnez	$a5, .LBB11_28
# %bb.26:                               # %cond.true296
	addi.w	$a5, $zero, -1
	bge	$a5, $a3, .LBB11_28
# %bb.27:                               # %cond.false321
	slli.d	$a3, $a3, 1
	andi	$a3, $a3, 254
.LBB11_28:                              # %cond.end333
	move	$a5, $a4
	beqz	$a6, .LBB11_32
# %bb.29:                               # %cond.true338
	ld.w	$a5, $sp, 132
	ldptr.d	$a6, $a2, 14224
	ld.w	$t1, $sp, 116
	ori	$t2, $zero, 536
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s7, $a5
	ld.w	$t3, $sp, 128
	mul.d	$t1, $t1, $t2
	add.d	$a6, $a6, $t1
	ld.w	$a6, $a6, 424
	ldx.b	$a5, $a5, $t3
	bnez	$a6, .LBB11_32
# %bb.30:                               # %cond.true338
	addi.w	$a6, $zero, -1
	bge	$a6, $a5, .LBB11_32
# %bb.31:                               # %cond.false363
	slli.d	$a5, $a5, 1
	andi	$a5, $a5, 254
.LBB11_32:                              # %cond.end375
	beqz	$a7, .LBB11_36
# %bb.33:                               # %cond.true380
	ld.w	$a4, $sp, 108
	ldptr.d	$a6, $a2, 14224
	ld.w	$a7, $sp, 92
	ori	$t1, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s7, $a4
	ld.w	$t2, $sp, 104
	mul.d	$a7, $a7, $t1
	add.d	$a6, $a6, $a7
	ld.w	$a6, $a6, 424
	ldx.b	$a4, $a4, $t2
	bnez	$a6, .LBB11_36
# %bb.34:                               # %cond.true380
	addi.w	$a6, $zero, -1
	bge	$a6, $a4, .LBB11_36
# %bb.35:                               # %cond.false405
	slli.d	$a4, $a4, 1
	andi	$a4, $a4, 254
.LBB11_36:                              # %cond.end417
	beqz	$t0, .LBB11_115
# %bb.37:                               # %cond.true422
	ld.w	$a4, $sp, 84
	ldptr.d	$a2, $a2, 14224
	ld.w	$a6, $sp, 68
	ori	$a7, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s7, $a4
	ld.w	$t0, $sp, 80
	mul.d	$a6, $a6, $a7
	add.d	$a2, $a2, $a6
	ld.w	$a2, $a2, 424
	ldx.b	$a4, $a4, $t0
	bnez	$a2, .LBB11_115
# %bb.38:                               # %cond.true422
	addi.w	$a2, $zero, -1
	bge	$a2, $a4, .LBB11_115
# %bb.39:                               # %cond.false447
	slli.d	$a2, $a4, 1
	andi	$a4, $a2, 254
	b	.LBB11_115
.LBB11_40:                              # %if.else1313
	move	$a0, $zero
	ld.d	$a1, $a5, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a3, $a4, 8
	alsl.d	$a3, $a4, $a3, 3
	add.d	$a4, $a7, $a3
	ori	$a5, $zero, 255
	ori	$a6, $zero, 1
	ori	$t0, $zero, 4
	lu12i.w	$a3, 3
	ori	$t1, $a3, 2184
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1807
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB11_42
	.p2align	4, , 16
.LBB11_41:                              # %for.inc1741
                                        #   in Loop: Header=BB11_42 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $t0, .LBB11_158
.LBB11_42:                              # %for.body1322
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_45 Depth 2
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_61 Depth 3
	ld.d	$a3, $s0, 0
	ld.w	$a7, $a3, 180
	ld.w	$a3, $a3, 196
	move	$t4, $zero
	srli.d	$a7, $a7, 2
	add.w	$a7, $a7, $a0
	srli.d	$a3, $a3, 2
	add.w	$a3, $a3, $a0
	slli.d	$t5, $a0, 3
	slli.d	$t6, $a3, 3
	slli.d	$t7, $a7, 3
	b	.LBB11_45
.LBB11_43:                              # %if.then1718
                                        #   in Loop: Header=BB11_45 Depth=2
	stx.b	$a5, $t3, $t8
	ld.d	$a3, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$a3, $a3, 8
	ldx.d	$a3, $a3, $t7
	stx.b	$a5, $a3, $t8
	ld.d	$a3, $s2, %pc_lo12(direct_pdir)
	ldx.d	$a3, $a3, $t7
	stx.b	$a5, $a3, $t8
	.p2align	4, , 16
.LBB11_44:                              # %for.inc1738
                                        #   in Loop: Header=BB11_45 Depth=2
	addi.d	$t4, $t4, 1
	beq	$t4, $t0, .LBB11_41
.LBB11_45:                              # %for.body1332
                                        #   Parent Loop BB11_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_61 Depth 3
	ld.d	$s8, $s0, 0
	ld.d	$a3, $a2, 0
	ld.w	$a7, $s8, 192
	ldx.d	$a3, $a3, $t6
	srli.d	$a7, $a7, 2
	add.w	$s5, $a7, $t4
	ldx.bu	$a3, $a3, $s5
	ldptr.d	$a7, $s8, 14384
	addi.d	$a3, $a3, -255
	sltui	$a3, $a3, 1
	slli.d	$t3, $a3, 3
	ldx.d	$a3, $a2, $t3
	ldx.d	$a7, $a7, $t5
	ldx.d	$a3, $a3, $t6
	slli.d	$t2, $t4, 3
	ldx.d	$s7, $a7, $t2
	ldx.bu	$a3, $a3, $s5
	ld.w	$t8, $s8, 176
	beq	$a3, $a5, .LBB11_50
# %bb.46:                               # %for.cond1394.preheader
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.w	$a3, $fp, 432
	pcalau12i	$a7, %got_pc_hi20(listXsize)
	ld.d	$a7, $a7, %got_pc_lo12(listXsize)
	ldptr.w	$t2, $s8, 14456
	slli.d	$s3, $a3, 2
	ldx.w	$a7, $a7, $s3
	slt	$s3, $t2, $a7
	masknez	$a7, $a7, $s3
	maskeqz	$t2, $t2, $s3
	or	$s6, $t2, $a7
	ori	$s4, $zero, 255
	blt	$s6, $a6, .LBB11_57
# %bb.47:                               # %for.body1402.lr.ph
                                        #   in Loop: Header=BB11_45 Depth=2
	ldx.d	$a7, $a1, $t3
	ldx.d	$a7, $a7, $t6
	move	$ra, $zero
	slli.d	$t2, $s5, 3
	ldx.d	$a7, $a7, $t2
	slli.d	$a3, $a3, 7
	add.d	$a3, $s8, $a3
	add.d	$a3, $a3, $t1
	ori	$s5, $zero, 24
	.p2align	4, , 16
.LBB11_48:                              # %for.body1402
                                        #   Parent Loop BB11_42 Depth=1
                                        #     Parent Loop BB11_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$s3, $a4, $s5
	beq	$s3, $a7, .LBB11_51
# %bb.49:                               # %if.else1414
                                        #   in Loop: Header=BB11_48 Depth=3
	addi.d	$ra, $ra, 1
	addi.d	$s5, $s5, 8
	addi.d	$a3, $a3, 4
	bne	$s6, $ra, .LBB11_48
	b	.LBB11_57
	.p2align	4, , 16
.LBB11_50:                              # %if.then1362
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a3, $s7, 0
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 0
	st.w	$zero, $a3, 0
	ld.d	$a3, $s7, 8
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 0
	move	$s4, $zero
	move	$t3, $zero
	st.w	$zero, $a3, 0
	ori	$s5, $zero, 2
	b	.LBB11_58
.LBB11_51:                              # %if.then1421
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a7, $a7, $t3
	ldx.d	$a7, $a7, $t6
	ldx.d	$s6, $a7, $t2
	ld.w	$a3, $a3, 0
	ld.hu	$t2, $s6, 0
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	bne	$a3, $a7, .LBB11_53
# %bb.52:                               # %if.then1430
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a3, $s7, 0
	ld.d	$a7, $a3, 0
	ld.d	$t3, $s7, 8
	ld.d	$a7, $a7, 0
	ld.d	$t3, $t3, 0
	st.h	$t2, $a7, 0
	ld.h	$t2, $s6, 2
	ld.d	$t3, $t3, 0
	st.h	$t2, $a7, 2
	st.w	$zero, $t3, 0
	add.d	$a3, $a3, $s5
	ld.d	$a3, $a3, -24
	ld.d	$t3, $a3, 0
	move	$s6, $zero
	move	$a3, $zero
	lu12i.w	$s5, -2
	b	.LBB11_54
.LBB11_53:                              # %if.else1461
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a7, $s7, 0
	add.d	$a7, $a7, $s5
	ld.d	$a7, $a7, -24
	ext.w.h	$t2, $t2
	ld.d	$t3, $a7, 0
	mul.d	$a7, $a3, $t2
	addi.d	$a7, $a7, 128
	srli.d	$a7, $a7, 8
	st.h	$a7, $t3, 0
	ld.h	$a7, $s6, 2
	mul.d	$a7, $a3, $a7
	ld.d	$t2, $s7, 8
	addi.d	$a7, $a7, 128
	srli.d	$a7, $a7, 8
	st.h	$a7, $t3, 2
	ld.d	$a7, $t2, 0
	ld.h	$t2, $s6, 0
	addi.d	$a3, $a3, -256
	ld.d	$a7, $a7, 0
	mul.d	$t2, $a3, $t2
	addi.d	$t2, $t2, 128
	bstrpick.d	$t2, $t2, 31, 8
	st.h	$t2, $a7, 0
	ld.h	$s3, $s6, 2
	slli.d	$t2, $t2, 8
	bstrpick.d	$t2, $t2, 23, 8
	mul.d	$a3, $a3, $s3
	addi.d	$a3, $a3, 128
	bstrpick.d	$s3, $a3, 31, 8
	st.h	$s3, $a7, 2
	lu12i.w	$s5, -2
	add.d	$a3, $t2, $s5
	srli.d	$a3, $a3, 14
	sltui	$a3, $a3, 3
	ext.w.h	$s6, $s3
.LBB11_54:                              # %if.end1529
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.hu	$a7, $t3, 0
	add.d	$a7, $a7, $s5
	srli.d	$a7, $a7, 14
	ori	$t2, $zero, 3
	bltu	$a7, $t2, .LBB11_57
# %bb.55:                               # %lor.lhs.false1547
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.w	$a7, $s8, 8
	ld.h	$t3, $t3, 2
	slli.d	$t2, $a7, 4
	alsl.d	$a7, $a7, $t2, 3
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a7, $t2, $a7
	ld.w	$t2, $a7, 16
	blt	$t3, $t2, .LBB11_57
# %bb.56:                               # %lor.lhs.false1560
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.w	$a7, $a7, 20
	slt	$t3, $a7, $t3
	or	$a3, $t3, $a3
	andi	$a3, $a3, 1
	beqz	$a3, .LBB11_64
	.p2align	4, , 16
.LBB11_57:                              #   in Loop: Header=BB11_45 Depth=2
	ori	$t3, $zero, 255
	ori	$s5, $zero, 255
.LBB11_58:                              # %if.end1661
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a3, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $t7
	srli.d	$a7, $t8, 2
	add.w	$t8, $a7, $t4
	stx.b	$s4, $a3, $t8
	ld.d	$a3, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$a3, $a3, 8
	ldx.d	$a3, $a3, $t7
	stx.b	$t3, $a3, $t8
	ld.d	$a3, $s2, %pc_lo12(direct_pdir)
	ldx.d	$a3, $a3, $t7
	stx.b	$s5, $a3, $t8
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	ld.w	$a3, $a3, 196
	bne	$a3, $a6, .LBB11_44
# %bb.59:                               # %land.lhs.true1665
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a3, $s2, %pc_lo12(direct_pdir)
	ldx.d	$a3, $a3, $t7
	ldx.bu	$a3, $a3, $t8
	ori	$a7, $zero, 2
	bne	$a3, $a7, .LBB11_44
# %bb.60:                               # %if.then1673
                                        #   in Loop: Header=BB11_45 Depth=2
	ld.d	$a3, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$a7, $a3, 0
	ld.d	$a3, $a3, 8
	ldx.d	$t3, $a7, $t7
	ldx.d	$a3, $a3, $t7
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(wbp_weight)
	ldx.b	$t2, $t3, $t8
	ldx.b	$s3, $a3, $t8
	ld.d	$a3, $a7, 0
	ld.d	$a7, $a7, 8
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $s4, %pc_lo12(active_sps)
	slli.d	$t2, $t2, 3
	ldx.d	$s5, $a3, $t2
	ldx.d	$a7, $a7, $t2
	ld.w	$a3, $s4, 32
	slli.d	$t2, $s3, 3
	ldx.d	$s4, $s5, $t2
	ldx.d	$s5, $a7, $t2
	move	$a7, $zero
	.p2align	4, , 16
.LBB11_61:                              # %for.body1697
                                        #   Parent Loop BB11_42 Depth=1
                                        #     Parent Loop BB11_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $s4, 0
	ld.w	$s3, $s5, 0
	add.d	$t2, $t2, $s3
	addi.w	$s3, $t2, -128
	addi.w	$s6, $zero, -257
	bgeu	$s6, $s3, .LBB11_43
# %bb.62:                               # %for.cond1690
                                        #   in Loop: Header=BB11_61 Depth=3
	move	$t2, $a7
	beqz	$a3, .LBB11_44
# %bb.63:                               # %for.cond1690
                                        #   in Loop: Header=BB11_61 Depth=3
	addi.d	$a7, $t2, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 4
	bgeu	$a6, $t2, .LBB11_61
	b	.LBB11_44
.LBB11_64:                              # %lor.lhs.false1589
                                        #   in Loop: Header=BB11_45 Depth=2
	blt	$s6, $t2, .LBB11_57
# %bb.65:                               # %lor.lhs.false1589
                                        #   in Loop: Header=BB11_45 Depth=2
	ori	$t3, $zero, 255
	ori	$s5, $zero, 255
	blt	$a7, $s6, .LBB11_58
# %bb.66:                               # %if.else1628
                                        #   in Loop: Header=BB11_45 Depth=2
	move	$t3, $zero
	ori	$s5, $zero, 2
	move	$s4, $ra
	b	.LBB11_58
.LBB11_67:                              # %if.then19
	ld.w	$a2, $sp, 136
	addi.w	$s5, $zero, -1
	move	$a0, $s5
	beqz	$a2, .LBB11_69
# %bb.68:                               # %cond.true
	ld.w	$a0, $sp, 156
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	ld.w	$a1, $sp, 152
	ldx.b	$a0, $a0, $a1
.LBB11_69:                              # %cond.end
	ld.w	$a6, $sp, 112
	move	$a1, $s5
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a6, .LBB11_71
# %bb.70:                               # %cond.true28
	ld.w	$a1, $sp, 132
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	ld.w	$a3, $sp, 128
	ldx.b	$a1, $a1, $a3
.LBB11_71:                              # %cond.end37
	ld.w	$a7, $sp, 88
	beqz	$a7, .LBB11_73
# %bb.72:                               # %cond.true42
	ld.w	$a3, $sp, 108
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$a4, $sp, 104
	ldx.b	$s5, $a3, $a4
.LBB11_73:                              # %cond.end51
	ld.w	$t0, $sp, 64
	beqz	$t0, .LBB11_75
# %bb.74:                               # %cond.true56
	ld.w	$a3, $sp, 84
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$a4, $sp, 80
	ldx.b	$s5, $a3, $a4
.LBB11_75:                              # %cond.end66
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a2, .LBB11_77
# %bb.76:                               # %cond.true71
	ld.w	$a2, $sp, 156
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s7, $a2
	ld.w	$a3, $sp, 152
	ldx.b	$a3, $a2, $a3
.LBB11_77:                              # %cond.end80
	move	$a5, $a4
	beqz	$a6, .LBB11_79
# %bb.78:                               # %cond.true85
	ld.w	$a2, $sp, 132
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s7, $a2
	ld.w	$a5, $sp, 128
	ldx.b	$a5, $a2, $a5
.LBB11_79:                              # %cond.end94
	beqz	$a7, .LBB11_81
# %bb.80:                               # %cond.true99
	ld.w	$a2, $sp, 108
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s7, $a2
	ld.w	$a4, $sp, 104
	ldx.b	$a4, $a2, $a4
.LBB11_81:                              # %cond.end108
	beqz	$t0, .LBB11_115
# %bb.82:                               # %cond.true113
	ld.w	$a2, $sp, 84
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s7, $a2
	ld.w	$a4, $sp, 80
	ldx.b	$a4, $a2, $a4
	b	.LBB11_115
.LBB11_83:                              # %if.else463
	addi.w	$s5, $zero, -1
	move	$a0, $s5
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a5, .LBB11_87
# %bb.84:                               # %cond.true466
	ld.w	$a0, $sp, 156
	ldptr.d	$a1, $a2, 14224
	ld.w	$a3, $sp, 140
	ori	$a4, $zero, 536
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	ld.w	$a6, $sp, 152
	mul.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	ld.w	$a1, $a1, 424
	ldx.b	$a0, $a0, $a6
	bnez	$a1, .LBB11_86
# %bb.85:                               # %cond.true466
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB11_87
.LBB11_86:                              # %cond.true483
	srai.d	$a0, $a0, 1
.LBB11_87:                              # %cond.end502
	ld.w	$a6, $sp, 112
	move	$a1, $s5
	beqz	$a6, .LBB11_91
# %bb.88:                               # %cond.true507
	ld.w	$a1, $sp, 132
	ldptr.d	$a3, $a2, 14224
	ld.w	$a4, $sp, 116
	ori	$a7, $zero, 536
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	ld.w	$t0, $sp, 128
	mul.d	$a4, $a4, $a7
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 424
	ldx.b	$a1, $a1, $t0
	bnez	$a3, .LBB11_90
# %bb.89:                               # %cond.true507
	addi.w	$a3, $zero, -1
	blt	$a3, $a1, .LBB11_91
.LBB11_90:                              # %cond.true524
	srai.d	$a1, $a1, 1
.LBB11_91:                              # %cond.end544
	ld.w	$a7, $sp, 88
	beqz	$a7, .LBB11_95
# %bb.92:                               # %cond.true549
	ld.w	$a3, $sp, 108
	ldptr.d	$a4, $a2, 14224
	ld.w	$t0, $sp, 92
	ori	$t1, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$t2, $sp, 104
	mul.d	$t0, $t0, $t1
	add.d	$a4, $a4, $t0
	ld.w	$a4, $a4, 424
	ldx.b	$s5, $a3, $t2
	bnez	$a4, .LBB11_94
# %bb.93:                               # %cond.true549
	addi.w	$a3, $zero, -1
	blt	$a3, $s5, .LBB11_95
.LBB11_94:                              # %cond.true566
	srai.d	$s5, $s5, 1
.LBB11_95:                              # %cond.end586
	ld.w	$t0, $sp, 64
	beqz	$t0, .LBB11_99
# %bb.96:                               # %cond.true591
	ld.w	$a3, $sp, 84
	ldptr.d	$a4, $a2, 14224
	ld.w	$t1, $sp, 68
	ori	$t2, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$t3, $sp, 80
	mul.d	$t1, $t1, $t2
	add.d	$a4, $a4, $t1
	ld.w	$a4, $a4, 424
	ldx.b	$s5, $a3, $t3
	bnez	$a4, .LBB11_98
# %bb.97:                               # %cond.true591
	addi.w	$a3, $zero, -1
	blt	$a3, $s5, .LBB11_99
.LBB11_98:                              # %cond.true608
	srai.d	$s5, $s5, 1
.LBB11_99:                              # %cond.end629
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB11_103
# %bb.100:                              # %cond.true634
	ld.w	$a3, $sp, 156
	ldptr.d	$a5, $a2, 14224
	ld.w	$t1, $sp, 140
	ori	$t2, $zero, 536
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s7, $a3
	ld.w	$t3, $sp, 152
	mul.d	$t1, $t1, $t2
	add.d	$a5, $a5, $t1
	ld.w	$a5, $a5, 424
	ldx.b	$a3, $a3, $t3
	bnez	$a5, .LBB11_102
# %bb.101:                              # %cond.true634
	addi.w	$a5, $zero, -1
	blt	$a5, $a3, .LBB11_103
.LBB11_102:                             # %cond.true651
	srai.d	$a3, $a3, 1
.LBB11_103:                             # %cond.end671
	move	$a5, $a4
	beqz	$a6, .LBB11_107
# %bb.104:                              # %cond.true676
	ld.w	$a5, $sp, 132
	ldptr.d	$a6, $a2, 14224
	ld.w	$t1, $sp, 116
	ori	$t2, $zero, 536
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s7, $a5
	ld.w	$t3, $sp, 128
	mul.d	$t1, $t1, $t2
	add.d	$a6, $a6, $t1
	ld.w	$a6, $a6, 424
	ldx.b	$a5, $a5, $t3
	bnez	$a6, .LBB11_106
# %bb.105:                              # %cond.true676
	addi.w	$a6, $zero, -1
	blt	$a6, $a5, .LBB11_107
.LBB11_106:                             # %cond.true693
	srai.d	$a5, $a5, 1
.LBB11_107:                             # %cond.end713
	beqz	$a7, .LBB11_111
# %bb.108:                              # %cond.true718
	ld.w	$a4, $sp, 108
	ldptr.d	$a6, $a2, 14224
	ld.w	$a7, $sp, 92
	ori	$t1, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s7, $a4
	ld.w	$t2, $sp, 104
	mul.d	$a7, $a7, $t1
	add.d	$a6, $a6, $a7
	ld.w	$a6, $a6, 424
	ldx.b	$a4, $a4, $t2
	bnez	$a6, .LBB11_110
# %bb.109:                              # %cond.true718
	addi.w	$a6, $zero, -1
	blt	$a6, $a4, .LBB11_111
.LBB11_110:                             # %cond.true735
	srai.d	$a4, $a4, 1
.LBB11_111:                             # %cond.end755
	beqz	$t0, .LBB11_115
# %bb.112:                              # %cond.true760
	ld.w	$a4, $sp, 84
	ldptr.d	$a2, $a2, 14224
	ld.w	$a6, $sp, 68
	ori	$a7, $zero, 536
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s7, $a4
	ld.w	$t0, $sp, 80
	mul.d	$a6, $a6, $a7
	add.d	$a2, $a2, $a6
	ld.w	$a2, $a2, 424
	ldx.b	$a4, $a4, $t0
	bnez	$a2, .LBB11_114
# %bb.113:                              # %cond.true760
	addi.w	$a2, $zero, -1
	blt	$a2, $a4, .LBB11_115
.LBB11_114:                             # %cond.true777
	srai.d	$a4, $a4, 1
.LBB11_115:                             # %if.end802
	or	$a2, $a0, $a1
	addi.w	$a2, $a2, 0
	addi.w	$a1, $a1, 0
	addi.w	$ra, $zero, -1
	slt	$a2, $ra, $a2
	sltu	$a6, $a0, $a1
	masknez	$a7, $a1, $a6
	maskeqz	$a6, $a0, $a6
	or	$a6, $a6, $a7
	slt	$a7, $a1, $a0
	masknez	$a1, $a1, $a7
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a6, $a2
	or	$a0, $a1, $a0
	or	$a1, $a0, $s5
	addi.w	$a1, $a1, 0
	addi.w	$a2, $s5, 0
	slt	$a1, $ra, $a1
	sltu	$a6, $a0, $a2
	maskeqz	$a7, $a0, $a6
	masknez	$a6, $a2, $a6
	or	$a6, $a7, $a6
	slt	$a7, $a2, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a2, $a2, $a7
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a6, $a1
	or	$s8, $a1, $a0
	or	$a0, $a3, $a5
	addi.w	$a0, $a0, 0
	addi.w	$a1, $a5, 0
	slt	$a0, $ra, $a0
	sltu	$a2, $a3, $a1
	masknez	$a5, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a5
	slt	$a5, $a1, $a3
	masknez	$a1, $a1, $a5
	maskeqz	$a3, $a3, $a5
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	or	$a1, $a0, $a4
	addi.w	$a1, $a1, 0
	addi.w	$a2, $a4, 0
	slt	$a1, $ra, $a1
	sltu	$a3, $a0, $a2
	maskeqz	$a4, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a3, $a4, $a3
	slt	$a4, $a2, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	lu12i.w	$s5, 8
	and	$a2, $s8, $s5
	or	$s4, $a1, $a0
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	bnez	$a2, .LBB11_117
# %bb.116:                              # %if.then876
	ld.d	$a0, $s6, 0
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ori	$a4, $zero, 16
	ext.w.h	$a3, $s8
	addi.d	$a0, $sp, 164
	ori	$a7, $zero, 16
	st.d	$a4, $sp, 0
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
.LBB11_117:                             # %if.end881
	and	$a0, $s4, $s5
	bnez	$a0, .LBB11_119
# %bb.118:                              # %if.then885
	ld.d	$a0, $s6, 0
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	ori	$a4, $zero, 16
	ext.w.h	$a3, $s4
	addi.d	$a0, $sp, 160
	ori	$a7, $zero, 16
	st.d	$a4, $sp, 0
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a1, $sp, 160
	ld.hu	$a0, $sp, 162
	b	.LBB11_120
.LBB11_119:
	move	$a0, $zero
	move	$a1, $zero
.LBB11_120:                             # %if.end891
	move	$a2, $zero
	ld.hu	$a3, $sp, 164
	ld.hu	$a4, $sp, 166
	ori	$a5, $zero, 255
	ori	$a6, $zero, 1
	ori	$a7, $zero, 4
	ori	$t0, $zero, 3
	b	.LBB11_122
	.p2align	4, , 16
.LBB11_121:                             # %for.inc1310
                                        #   in Loop: Header=BB11_122 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a7, .LBB11_158
.LBB11_122:                             # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_125 Depth 2
                                        #       Child Loop BB11_152 Depth 3
	ld.d	$t1, $s0, 0
	ld.w	$t2, $t1, 180
	ld.w	$t3, $t1, 196
	move	$t1, $zero
	srli.d	$t2, $t2, 2
	add.w	$t4, $t2, $a2
	srli.d	$t2, $t3, 2
	add.w	$t2, $t2, $a2
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$t2, $t2, $t3, 3
	slli.d	$t3, $a2, 3
	slli.d	$t4, $t4, 3
	b	.LBB11_125
.LBB11_123:                             #   in Loop: Header=BB11_125 Depth=2
	move	$t6, $zero
	.p2align	4, , 16
.LBB11_124:                             # %for.inc1307
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t7, $s2, %pc_lo12(direct_pdir)
	ldx.d	$t7, $t7, $t4
	addi.d	$t1, $t1, 1
	stx.b	$t6, $t7, $t5
	beq	$t1, $a7, .LBB11_121
.LBB11_125:                             # %for.body900
                                        #   Parent Loop BB11_122 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_152 Depth 3
	ld.d	$t5, $s0, 0
	ldptr.d	$t6, $t5, 14384
	ldx.d	$t6, $t6, $t3
	ld.w	$t8, $t5, 192
	ld.w	$t5, $t5, 176
	slli.d	$t7, $t1, 3
	ldx.d	$t7, $t6, $t7
	srli.d	$t8, $t8, 2
	ext.w.h	$t6, $s8
	add.w	$s7, $t8, $t1
	bltz	$t6, .LBB11_129
# %bb.126:                              # %if.then912
                                        #   in Loop: Header=BB11_125 Depth=2
	bstrpick.d	$t8, $s8, 15, 0
	bnez	$t8, .LBB11_128
# %bb.127:                              # %land.lhs.true914
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s5, $t2, 0
	ldx.bu	$s5, $s5, $s7
	beqz	$s5, .LBB11_141
.LBB11_128:                             # %if.else929
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s5, $t7, 0
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s5, $t8
	ld.d	$t8, $t8, 0
	st.h	$a3, $t8, 0
	st.h	$a4, $t8, 2
	move	$s5, $s8
	b	.LBB11_130
	.p2align	4, , 16
.LBB11_129:                             # %if.else949
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$t8, $t8, 0
	ld.d	$t8, $t8, 0
	st.w	$zero, $t8, 0
	ori	$s5, $zero, 255
.LBB11_130:                             # %if.end963
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t8, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t8, $t8, 0
	ldx.d	$s6, $t8, $t4
	srli.d	$t5, $t5, 2
	add.w	$t5, $t5, $t1
	ext.w.h	$t8, $s4
	stx.b	$s5, $s6, $t5
	bltz	$t8, .LBB11_134
# %bb.131:                              # %if.then967
                                        #   in Loop: Header=BB11_125 Depth=2
	bstrpick.d	$s5, $s4, 15, 0
	bnez	$s5, .LBB11_133
# %bb.132:                              # %land.lhs.true971
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s6, $t2, 0
	ldx.bu	$s6, $s6, $s7
	beqz	$s6, .LBB11_142
.LBB11_133:                             # %if.else992
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s6, $t7, 8
	ld.d	$s7, $s1, %pc_lo12(direct_ref_idx)
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $s6, $s5
	ld.d	$s6, $s7, 8
	ld.d	$s5, $s5, 0
	ldx.d	$s6, $s6, $t4
	st.h	$a1, $s5, 0
	st.h	$a0, $s5, 2
	stx.b	$s4, $s6, $t5
	ld.d	$s5, $s0, 0
	ldptr.w	$s6, $s5, 15268
	bnez	$s6, .LBB11_135
	b	.LBB11_145
	.p2align	4, , 16
.LBB11_134:                             # %if.else1012
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s5, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$s5, $s5, 8
	ldx.d	$s5, $s5, $t4
	stx.b	$a5, $s5, $t5
	ld.d	$s5, $t7, 8
	ld.d	$s5, $s5, 0
	ld.d	$s5, $s5, 0
	st.w	$zero, $s5, 0
	ld.d	$s5, $s0, 0
	ldptr.w	$s6, $s5, 15268
	beqz	$s6, .LBB11_145
.LBB11_135:                             # %land.lhs.true1029
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s6, $t7, 0
	srai.d	$s7, $t6, 63
	andn	$s7, $t6, $s7
	slli.d	$s7, $s7, 3
	ldx.d	$s6, $s6, $s7
	ld.d	$s6, $s6, 0
	ld.hu	$s7, $s6, 0
	add.d	$s7, $s7, $s3
	srli.d	$s7, $s7, 14
	bltu	$s7, $t0, .LBB11_139
# %bb.136:                              # %lor.lhs.false1063
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.w	$s5, $s5, 8
	ld.h	$s7, $s6, 2
	slli.d	$s6, $s5, 4
	alsl.d	$s5, $s5, $s6, 3
	add.d	$s6, $fp, $s5
	ld.w	$s5, $s6, 16
	blt	$s7, $s5, .LBB11_139
# %bb.137:                              # %lor.lhs.false1083
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.w	$s6, $s6, 20
	blt	$s6, $s7, .LBB11_139
# %bb.138:                              # %lor.lhs.false1104
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t7, $t7, 8
	srai.d	$s7, $t8, 63
	andn	$s7, $t8, $s7
	slli.d	$s7, $s7, 3
	ldx.d	$t7, $t7, $s7
	ld.d	$t7, $t7, 0
	ld.hu	$s7, $t7, 0
	add.d	$s7, $s7, $s3
	srli.d	$s7, $s7, 14
	bgeu	$s7, $t0, .LBB11_143
	.p2align	4, , 16
.LBB11_139:                             # %if.then1180
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $t4
	stx.b	$a5, $t6, $t5
.LBB11_140:                             # %for.inc1307.sink.split
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t6, $t6, 8
	ldx.d	$t7, $t6, $t4
	ori	$t6, $zero, 255
	stx.b	$t6, $t7, $t5
	b	.LBB11_124
.LBB11_141:                             # %if.then920
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$t8, $t8, 0
	ld.d	$t8, $t8, 0
	move	$s5, $zero
	st.w	$zero, $t8, 0
	b	.LBB11_130
.LBB11_142:                             # %if.then977
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$s5, $t7, 8
	ld.d	$s5, $s5, 0
	ld.d	$s5, $s5, 0
	st.w	$zero, $s5, 0
	ld.d	$s5, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$s5, $s5, 8
	ldx.d	$s5, $s5, $t4
	stx.b	$zero, $s5, $t5
	ld.d	$s5, $s0, 0
	ldptr.w	$s6, $s5, 15268
	bnez	$s6, .LBB11_135
	b	.LBB11_145
.LBB11_143:                             # %lor.lhs.false1138
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.h	$t7, $t7, 2
	blt	$t7, $s5, .LBB11_139
# %bb.144:                              # %lor.lhs.false1138
                                        #   in Loop: Header=BB11_125 Depth=2
	blt	$s6, $t7, .LBB11_139
	.p2align	4, , 16
.LBB11_145:                             # %if.else1195
                                        #   in Loop: Header=BB11_125 Depth=2
	blt	$ra, $t6, .LBB11_148
# %bb.146:                              # %if.else1195
                                        #   in Loop: Header=BB11_125 Depth=2
	bgez	$t8, .LBB11_148
# %bb.147:                              # %if.then1203
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t6, $t6, 8
	ldx.d	$t6, $t6, $t4
	stx.b	$zero, $t6, $t5
	ld.d	$t6, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $t4
	move	$s8, $zero
	move	$s4, $zero
	stx.b	$zero, $t6, $t5
.LBB11_148:                             # %if.end1214
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $s1, %pc_lo12(direct_ref_idx)
	ld.d	$t7, $t6, 8
	ldx.d	$t7, $t7, $t4
	ldx.bu	$t7, $t7, $t5
	beq	$t7, $a5, .LBB11_123
# %bb.149:                              # %if.else1228
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $t6, 0
	ldx.d	$t7, $t6, $t4
	ldx.bu	$t6, $t7, $t5
	beq	$t6, $a5, .LBB11_156
# %bb.150:                              # %if.else1242
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $t6, %pc_lo12(active_pps)
	ld.w	$t8, $t6, 196
	ori	$t6, $zero, 2
	bne	$t8, $a6, .LBB11_124
# %bb.151:                              # %for.cond1246.preheader
                                        #   in Loop: Header=BB11_125 Depth=2
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $t8, %pc_lo12(active_sps)
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $fp, %pc_lo12(wbp_weight)
	ld.w	$t8, $t8, 32
	ld.d	$s6, $s5, 0
	ld.d	$s5, $s5, 8
	ext.w.h	$s7, $s8
	slli.d	$s7, $s7, 3
	ldx.d	$s6, $s6, $s7
	ldx.d	$s7, $s5, $s7
	ext.w.h	$s5, $s4
	slli.d	$ra, $s5, 3
	ldx.d	$s5, $s6, $ra
	ldx.d	$s6, $s7, $ra
	move	$s7, $zero
	.p2align	4, , 16
.LBB11_152:                             # %for.body1252
                                        #   Parent Loop BB11_122 Depth=1
                                        #     Parent Loop BB11_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$ra, $s5, 0
	ld.w	$s3, $s6, 0
	add.d	$s3, $ra, $s3
	addi.w	$s3, $s3, -128
	addi.w	$fp, $zero, -257
	bgeu	$fp, $s3, .LBB11_157
# %bb.153:                              # %for.cond1246
                                        #   in Loop: Header=BB11_152 Depth=3
	move	$ra, $s7
	beqz	$t8, .LBB11_155
# %bb.154:                              # %for.cond1246
                                        #   in Loop: Header=BB11_152 Depth=3
	addi.d	$s7, $ra, 1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bgeu	$a6, $ra, .LBB11_152
.LBB11_155:                             #   in Loop: Header=BB11_125 Depth=2
	lu12i.w	$s3, -2
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	b	.LBB11_124
.LBB11_156:                             #   in Loop: Header=BB11_125 Depth=2
	ori	$t6, $zero, 1
	b	.LBB11_124
.LBB11_157:                             # %if.else1282
                                        #   in Loop: Header=BB11_125 Depth=2
	stx.b	$a5, $t7, $t5
	lu12i.w	$s3, -2
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	b	.LBB11_140
.LBB11_158:                             # %if.end1744
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end11:
	.size	Get_Direct_Motion_Vectors, .Lfunc_end11-Get_Direct_Motion_Vectors
                                        # -- End function
	.type	QP2QUANT,@object                # @QP2QUANT
	.section	.rodata,"a",@progbits
	.globl	QP2QUANT
	.p2align	2, 0x0
QP2QUANT:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	29                              # 0x1d
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	40                              # 0x28
	.word	45                              # 0x2d
	.word	51                              # 0x33
	.word	57                              # 0x39
	.word	64                              # 0x40
	.word	72                              # 0x48
	.word	81                              # 0x51
	.word	91                              # 0x5b
	.size	QP2QUANT, 160

	.type	LEVELMVLIMIT,@object            # @LEVELMVLIMIT
	.globl	LEVELMVLIMIT
	.p2align	2, 0x0
LEVELMVLIMIT:
	.word	4294967233                      # 0xffffffc1
	.word	63                              # 0x3f
	.word	4294967168                      # 0xffffff80
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294967233                      # 0xffffffc1
	.word	63                              # 0x3f
	.word	4294967168                      # 0xffffff80
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967169                      # 0xffffff81
	.word	127                             # 0x7f
	.word	4294967040                      # 0xffffff00
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294967041                      # 0xffffff01
	.word	255                             # 0xff
	.word	4294966784                      # 0xfffffe00
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.word	4294966785                      # 0xfffffe01
	.word	511                             # 0x1ff
	.word	4294966272                      # 0xfffffc00
	.word	1023                            # 0x3ff
	.word	4294965248                      # 0xfffff800
	.word	2047                            # 0x7ff
	.size	LEVELMVLIMIT, 408

	.type	max_mvd,@object                 # @max_mvd
	.comm	max_mvd,4,4
	.type	byte_abs_range,@object          # @byte_abs_range
	.comm	byte_abs_range,4,4
	.type	spiral_search_x,@object         # @spiral_search_x
	.comm	spiral_search_x,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Init_Motion_Search_Module: spiral_search_x"
	.size	.L.str, 43

	.type	spiral_search_y,@object         # @spiral_search_y
	.comm	spiral_search_y,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Init_Motion_Search_Module: spiral_search_y"
	.size	.L.str.1, 43

	.type	spiral_hpel_search_x,@object    # @spiral_hpel_search_x
	.comm	spiral_hpel_search_x,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Init_Motion_Search_Module: spiral_hpel_search_x"
	.size	.L.str.2, 48

	.type	spiral_hpel_search_y,@object    # @spiral_hpel_search_y
	.comm	spiral_hpel_search_y,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Init_Motion_Search_Module: spiral_hpel_search_y"
	.size	.L.str.3, 48

	.type	mvbits,@object                  # @mvbits
	.comm	mvbits,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Init_Motion_Search_Module: mvbits"
	.size	.L.str.4, 34

	.type	refbits,@object                 # @refbits
	.comm	refbits,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Init_Motion_Search_Module: refbits"
	.size	.L.str.5, 35

	.type	byte_abs,@object                # @byte_abs
	.comm	byte_abs,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Init_Motion_Search_Module: byte_abs"
	.size	.L.str.6, 36

	.type	motion_cost,@object             # @motion_cost
	.comm	motion_cost,8,8
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	diff64,@object                  # @diff64
	.local	diff64
	.comm	diff64,256,32
	.type	orig_pic,@object                # @orig_pic
	.local	orig_pic
	.comm	orig_pic,1536,2
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	BlockMotionSearch.tstruct1,@object # @BlockMotionSearch.tstruct1
	.local	BlockMotionSearch.tstruct1
	.comm	BlockMotionSearch.tstruct1,16,8
	.type	BlockMotionSearch.tstruct2,@object # @BlockMotionSearch.tstruct2
	.local	BlockMotionSearch.tstruct2
	.comm	BlockMotionSearch.tstruct2,16,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	UMHEX_blocktype,@object         # @UMHEX_blocktype
	.comm	UMHEX_blocktype,4,4
	.type	bipred_flag,@object             # @bipred_flag
	.comm	bipred_flag,4,4
	.type	smpUMHEX_l0_cost,@object        # @smpUMHEX_l0_cost
	.comm	smpUMHEX_l0_cost,8,8
	.type	smpUMHEX_l1_cost,@object        # @smpUMHEX_l1_cost
	.comm	smpUMHEX_l1_cost,8,8
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,64,32
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	PartitionMotionSearch.bx0,@object # @PartitionMotionSearch.bx0
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
PartitionMotionSearch.bx0:
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	2                               # 0x2
	.size	PartitionMotionSearch.bx0, 80

	.type	PartitionMotionSearch.by0,@object # @PartitionMotionSearch.by0
	.p2align	2, 0x0
PartitionMotionSearch.by0:
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.space	16
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	PartitionMotionSearch.by0, 80

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	McostState,@object              # @McostState
	.comm	McostState,8,8
	.type	SearchState,@object             # @SearchState
	.comm	SearchState,8,8
	.type	fastme_ref_cost,@object         # @fastme_ref_cost
	.comm	fastme_ref_cost,8,8
	.type	fastme_l0_cost,@object          # @fastme_l0_cost
	.comm	fastme_l0_cost,8,8
	.type	fastme_l1_cost,@object          # @fastme_l1_cost
	.comm	fastme_l1_cost,8,8
	.type	fastme_l0_cost_bipred,@object   # @fastme_l0_cost_bipred
	.comm	fastme_l0_cost_bipred,8,8
	.type	fastme_l1_cost_bipred,@object   # @fastme_l1_cost_bipred
	.comm	fastme_l1_cost_bipred,8,8
	.type	fastme_best_cost,@object        # @fastme_best_cost
	.comm	fastme_best_cost,8,8
	.type	pred_SAD,@object                # @pred_SAD
	.comm	pred_SAD,4,4
	.type	pred_MV_ref,@object             # @pred_MV_ref
	.comm	pred_MV_ref,8,4
	.type	pred_MV_uplayer,@object         # @pred_MV_uplayer
	.comm	pred_MV_uplayer,8,4
	.type	predict_point,@object           # @predict_point
	.comm	predict_point,40,4
	.type	SAD_a,@object                   # @SAD_a
	.comm	SAD_a,4,4
	.type	SAD_b,@object                   # @SAD_b
	.comm	SAD_b,4,4
	.type	SAD_c,@object                   # @SAD_c
	.comm	SAD_c,4,4
	.type	SAD_d,@object                   # @SAD_d
	.comm	SAD_d,4,4
	.type	Threshold_DSR_MB,@object        # @Threshold_DSR_MB
	.comm	Threshold_DSR_MB,32,4
	.type	Bsize,@object                   # @Bsize
	.comm	Bsize,32,4
	.type	AlphaFourth_1,@object           # @AlphaFourth_1
	.comm	AlphaFourth_1,32,4
	.type	AlphaFourth_2,@object           # @AlphaFourth_2
	.comm	AlphaFourth_2,32,4
	.type	flag_intra,@object              # @flag_intra
	.comm	flag_intra,8,8
	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.comm	flag_intra_SAD,4,4
	.type	SymmetricalCrossSearchThreshold1,@object # @SymmetricalCrossSearchThreshold1
	.comm	SymmetricalCrossSearchThreshold1,2,2
	.type	SymmetricalCrossSearchThreshold2,@object # @SymmetricalCrossSearchThreshold2
	.comm	SymmetricalCrossSearchThreshold2,2,2
	.type	ConvergeThreshold,@object       # @ConvergeThreshold
	.comm	ConvergeThreshold,2,2
	.type	SubPelThreshold1,@object        # @SubPelThreshold1
	.comm	SubPelThreshold1,2,2
	.type	SubPelThreshold3,@object        # @SubPelThreshold3
	.comm	SubPelThreshold3,2,2
	.type	smpUMHEX_SearchState,@object    # @smpUMHEX_SearchState
	.comm	smpUMHEX_SearchState,8,8
	.type	smpUMHEX_flag_intra,@object     # @smpUMHEX_flag_intra
	.comm	smpUMHEX_flag_intra,8,8
	.type	smpUMHEX_flag_intra_SAD,@object # @smpUMHEX_flag_intra_SAD
	.comm	smpUMHEX_flag_intra_SAD,4,4
	.type	smpUMHEX_pred_SAD_uplayer,@object # @smpUMHEX_pred_SAD_uplayer
	.comm	smpUMHEX_pred_SAD_uplayer,4,4
	.type	smpUMHEX_pred_MV_uplayer_X,@object # @smpUMHEX_pred_MV_uplayer_X
	.comm	smpUMHEX_pred_MV_uplayer_X,2,2
	.type	smpUMHEX_pred_MV_uplayer_Y,@object # @smpUMHEX_pred_MV_uplayer_Y
	.comm	smpUMHEX_pred_MV_uplayer_Y,2,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym computeSAD
	.addrsig_sym computeSADWP
	.addrsig_sym computeBiPredSAD1
	.addrsig_sym computeBiPredSAD2
	.addrsig_sym computeSSE
	.addrsig_sym computeSSEWP
	.addrsig_sym computeBiPredSSE1
	.addrsig_sym computeBiPredSSE2
	.addrsig_sym computeSATD
	.addrsig_sym computeSATDWP
	.addrsig_sym computeBiPredSATD1
	.addrsig_sym computeBiPredSATD2
	.addrsig_sym FastLine4X
	.addrsig_sym UMVLine4X
	.addrsig_sym FastLine8X_chroma
	.addrsig_sym UMVLine8X_chroma
	.addrsig_sym motion_cost
	.addrsig_sym diff64
	.addrsig_sym orig_pic
	.addrsig_sym BlockMotionSearch.tstruct1
	.addrsig_sym BlockMotionSearch.tstruct2
	.addrsig_sym diff
