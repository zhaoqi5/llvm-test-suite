	.file	"zlib_inflate.c"
	.text
	.globl	inflateResetKeep                # -- Begin function inflateResetKeep
	.p2align	5
	.type	inflateResetKeep,@function
inflateResetKeep:                       # @inflateResetKeep
# %bb.0:                                # %entry
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB0_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB0_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB0_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB0_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB0_6
.LBB0_5:                                # %cleanup
	ret
.LBB0_6:                                # %inflateStateCheck.exit
	ld.w	$a3, $a2, 8
	lu12i.w	$a4, -4
	ori	$a4, $a4, 204
	add.w	$a3, $a3, $a4
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB0_5
# %bb.7:                                # %if.end
	st.d	$zero, $a2, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 40
	ld.w	$a0, $a2, 16
	st.d	$zero, $a1, 16
	beqz	$a0, .LBB0_9
# %bb.8:                                # %if.then3
	andi	$a0, $a0, 1
	st.d	$a0, $a1, 96
.LBB0_9:                                # %if.end5
	move	$a0, $zero
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3892
	st.d	$a1, $a2, 8
	lu12i.w	$a1, 8
	st.w	$a1, $a2, 28
	addi.d	$a1, $a2, 1368
	st.d	$a1, $a2, 144
	st.d	$a1, $a2, 112
	st.d	$a1, $a2, 104
	ori	$a1, $zero, 1
	lu32i.d	$a1, -1
	stptr.d	$a1, $a2, 7144
	st.w	$zero, $a2, 20
	st.d	$zero, $a2, 48
	st.d	$zero, $a2, 80
	st.w	$zero, $a2, 88
	ret
.Lfunc_end0:
	.size	inflateResetKeep, .Lfunc_end0-inflateResetKeep
                                        # -- End function
	.globl	inflateReset                    # -- Begin function inflateReset
	.p2align	5
	.type	inflateReset,@function
inflateReset:                           # @inflateReset
# %bb.0:                                # %entry
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB1_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB1_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB1_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB1_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB1_6
.LBB1_5:                                # %cleanup
	ret
.LBB1_6:                                # %inflateStateCheck.exit
	ld.w	$a3, $a2, 8
	lu12i.w	$a4, -4
	ori	$a4, $a4, 204
	add.w	$a3, $a3, $a4
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB1_5
# %bb.7:                                # %if.end.i6
	st.d	$zero, $a2, 60
	st.w	$zero, $a2, 68
	st.d	$zero, $a2, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 40
	ld.w	$a0, $a2, 16
	st.d	$zero, $a1, 16
	beqz	$a0, .LBB1_9
# %bb.8:                                # %if.then3.i
	andi	$a0, $a0, 1
	st.d	$a0, $a1, 96
.LBB1_9:                                # %if.end5.i
	move	$a0, $zero
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3892
	st.d	$a1, $a2, 8
	lu12i.w	$a1, 8
	st.w	$a1, $a2, 28
	addi.d	$a1, $a2, 1368
	st.d	$a1, $a2, 144
	st.d	$a1, $a2, 112
	st.d	$a1, $a2, 104
	ori	$a1, $zero, 1
	lu32i.d	$a1, -1
	stptr.d	$a1, $a2, 7144
	st.w	$zero, $a2, 20
	st.d	$zero, $a2, 48
	st.d	$zero, $a2, 80
	st.w	$zero, $a2, 88
	ret
.Lfunc_end1:
	.size	inflateReset, .Lfunc_end1-inflateReset
                                        # -- End function
	.globl	inflateReset2                   # -- Begin function inflateReset2
	.p2align	5
	.type	inflateReset2,@function
inflateReset2:                          # @inflateReset2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $zero, -2
	beqz	$fp, .LBB2_22
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $fp, 64
	beqz	$a2, .LBB2_22
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a3, $fp, 72
	beqz	$a3, .LBB2_22
# %bb.3:                                # %if.end.i
	ld.d	$s1, $fp, 56
	beqz	$s1, .LBB2_22
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a2, $s1, 0
	bne	$a2, $fp, .LBB2_22
# %bb.5:                                # %inflateStateCheck.exit
	ld.w	$a2, $s1, 8
	lu12i.w	$a4, -4
	ori	$s0, $a4, 204
	add.w	$a2, $a2, $s0
	ori	$a4, $zero, 31
	bltu	$a4, $a2, .LBB2_22
# %bb.6:                                # %if.end
	bltz	$a1, .LBB2_8
# %bb.7:                                # %if.else
	bstrpick.d	$a2, $a1, 31, 4
	addi.d	$s2, $a2, 5
	sltui	$a2, $a1, 48
	andi	$a4, $a1, 15
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$s3, $a2, $a1
	b	.LBB2_9
.LBB2_8:                                # %if.then2
	move	$s2, $zero
	sub.w	$s3, $zero, $a1
.LBB2_9:                                # %if.end6
	beqz	$s3, .LBB2_11
# %bb.10:                               # %if.end6
	bstrpick.d	$a1, $s3, 30, 3
	slli.w	$a1, $a1, 3
	ori	$a2, $zero, 8
	bne	$a1, $a2, .LBB2_22
.LBB2_11:                               # %if.end11
	ld.d	$a1, $s1, 72
	beqz	$a1, .LBB2_13
# %bb.12:                               # %land.lhs.true13
	ld.w	$a2, $s1, 56
	bne	$a2, $s3, .LBB2_14
.LBB2_13:                               # %lor.lhs.false.i.i.thread
	st.w	$s2, $s1, 16
	st.w	$s3, $s1, 56
	b	.LBB2_15
.LBB2_14:                               # %lor.lhs.false.i.i
	ld.d	$a2, $fp, 80
	move	$s4, $a0
	move	$a0, $a2
	jirl	$ra, $a3, 0
	move	$a0, $s4
	ld.d	$a1, $fp, 64
	st.d	$zero, $s1, 72
	st.w	$s2, $s1, 16
	st.w	$s3, $s1, 56
	beqz	$a1, .LBB2_22
.LBB2_15:                               # %lor.lhs.false2.i.i
	ld.d	$a1, $fp, 72
	beqz	$a1, .LBB2_22
# %bb.16:                               # %if.end.i.i
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB2_22
# %bb.17:                               # %lor.lhs.false6.i.i
	ld.d	$a2, $a1, 0
	bne	$a2, $fp, .LBB2_22
# %bb.18:                               # %inflateStateCheck.exit.i
	ld.w	$a2, $a1, 8
	add.w	$a2, $a2, $s0
	ori	$a3, $zero, 31
	bltu	$a3, $a2, .LBB2_22
# %bb.19:                               # %if.end.i6.i
	st.d	$zero, $a1, 60
	st.w	$zero, $a1, 68
	st.d	$zero, $a1, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
	ld.w	$a0, $a1, 16
	st.d	$zero, $fp, 16
	beqz	$a0, .LBB2_21
# %bb.20:                               # %if.then3.i.i
	andi	$a0, $a0, 1
	st.d	$a0, $fp, 96
.LBB2_21:                               # %if.end5.i.i
	move	$a0, $zero
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3892
	st.d	$a2, $a1, 8
	lu12i.w	$a2, 8
	st.w	$a2, $a1, 28
	addi.d	$a2, $a1, 1368
	st.d	$a2, $a1, 144
	st.d	$a2, $a1, 112
	st.d	$a2, $a1, 104
	ori	$a2, $zero, 1
	lu32i.d	$a2, -1
	stptr.d	$a2, $a1, 7144
	st.w	$zero, $a1, 20
	st.d	$zero, $a1, 48
	st.d	$zero, $a1, 80
	st.w	$zero, $a1, 88
.LBB2_22:                               # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	inflateReset2, .Lfunc_end2-inflateReset2
                                        # -- End function
	.globl	inflateInit2_                   # -- Begin function inflateInit2_
	.p2align	5
	.type	inflateInit2_,@function
inflateInit2_:                          # @inflateInit2_
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	addi.w	$a1, $zero, -6
	beqz	$a2, .LBB3_14
# %bb.1:                                # %lor.lhs.false
	ori	$a4, $zero, 112
	bne	$a3, $a4, .LBB3_14
# %bb.2:                                # %lor.lhs.false
	ld.bu	$a2, $a2, 0
	ori	$a3, $zero, 49
	bne	$a2, $a3, .LBB3_14
# %bb.3:                                # %if.end
	beqz	$a0, .LBB3_9
# %bb.4:                                # %if.end10
	ld.d	$a3, $a0, 64
	st.d	$zero, $a0, 48
	beqz	$a3, .LBB3_10
# %bb.5:                                # %if.end15
	ld.d	$a1, $a0, 72
	beqz	$a1, .LBB3_11
.LBB3_6:                                # %if.end20
	move	$s1, $a0
	ld.d	$a0, $a0, 80
	lu12i.w	$a1, 1
	ori	$a2, $a1, 3064
	ori	$a1, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB3_12
# %bb.7:                                # %if.end26
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $s1, 56
	st.d	$s1, $s0, 0
	st.d	$zero, $s0, 72
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3892
	st.w	$a1, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(inflateReset2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_13
# %bb.8:                                # %if.then32
	ld.d	$a2, $s1, 72
	ld.d	$a1, $s1, 80
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $s0
	jirl	$ra, $a2, 0
	move	$a1, $fp
	st.d	$zero, $s1, 56
	b	.LBB3_14
.LBB3_9:
	addi.w	$a1, $zero, -2
	b	.LBB3_14
.LBB3_10:                               # %if.then13
	pcalau12i	$a1, %got_pc_hi20(zcalloc)
	ld.d	$a3, $a1, %got_pc_lo12(zcalloc)
	st.d	$a3, $a0, 64
	st.d	$zero, $a0, 80
	ld.d	$a1, $a0, 72
	bnez	$a1, .LBB3_6
.LBB3_11:                               # %if.then18
	pcalau12i	$a1, %got_pc_hi20(zcfree)
	ld.d	$a1, $a1, %got_pc_lo12(zcfree)
	st.d	$a1, $a0, 72
	b	.LBB3_6
.LBB3_12:
	addi.w	$a1, $zero, -4
	b	.LBB3_14
.LBB3_13:
	move	$a1, $zero
.LBB3_14:                               # %cleanup
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	inflateInit2_, .Lfunc_end3-inflateInit2_
                                        # -- End function
	.globl	inflateInit_                    # -- Begin function inflateInit_
	.p2align	5
	.type	inflateInit_,@function
inflateInit_:                           # @inflateInit_
# %bb.0:                                # %entry
	addi.w	$a3, $zero, -6
	beqz	$a1, .LBB4_10
# %bb.1:                                # %lor.lhs.false.i
	ori	$a4, $zero, 112
	bne	$a2, $a4, .LBB4_10
# %bb.2:                                # %lor.lhs.false.i
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 49
	bne	$a1, $a2, .LBB4_10
# %bb.3:                                # %if.end.i
	beqz	$a0, .LBB4_9
# %bb.4:                                # %if.end10.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 64
	st.d	$zero, $a0, 48
	beqz	$a3, .LBB4_11
# %bb.5:                                # %if.end15.i
	ld.d	$a1, $a0, 72
	beqz	$a1, .LBB4_12
.LBB4_6:                                # %if.end20.i
	move	$s0, $a0
	ld.d	$a0, $a0, 80
	lu12i.w	$a1, 1
	ori	$a2, $a1, 3064
	ori	$a1, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB4_13
# %bb.7:                                # %if.end26.i
	move	$fp, $a0
	move	$a0, $s0
	st.d	$fp, $s0, 56
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 72
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3892
	st.w	$a1, $fp, 8
	ori	$a1, $zero, 15
	pcaddu18i	$ra, %call36(inflateReset2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_14
# %bb.8:                                # %if.then32.i
	move	$s1, $s0
	ld.d	$a2, $s0, 72
	ld.d	$a1, $s0, 80
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	jirl	$ra, $a2, 0
	move	$a3, $s0
	st.d	$zero, $s1, 56
	b	.LBB4_15
.LBB4_9:
	addi.w	$a3, $zero, -2
.LBB4_10:                               # %inflateInit2_.exit
	move	$a0, $a3
	ret
.LBB4_11:                               # %if.then13.i
	pcalau12i	$a1, %got_pc_hi20(zcalloc)
	ld.d	$a3, $a1, %got_pc_lo12(zcalloc)
	st.d	$a3, $a0, 64
	st.d	$zero, $a0, 80
	ld.d	$a1, $a0, 72
	bnez	$a1, .LBB4_6
.LBB4_12:                               # %if.then18.i
	pcalau12i	$a1, %got_pc_hi20(zcfree)
	ld.d	$a1, $a1, %got_pc_lo12(zcfree)
	st.d	$a1, $a0, 72
	b	.LBB4_6
.LBB4_13:
	addi.w	$a3, $zero, -4
	b	.LBB4_15
.LBB4_14:
	move	$a3, $zero
.LBB4_15:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	move	$a0, $a3
	ret
.Lfunc_end4:
	.size	inflateInit_, .Lfunc_end4-inflateInit_
                                        # -- End function
	.globl	inflatePrime                    # -- Begin function inflatePrime
	.p2align	5
	.type	inflatePrime,@function
inflatePrime:                           # @inflatePrime
# %bb.0:                                # %entry
	move	$a3, $a0
	addi.w	$a0, $zero, -2
	beqz	$a3, .LBB5_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB5_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a4, $a3, 72
	beqz	$a4, .LBB5_5
# %bb.3:                                # %if.end.i
	ld.d	$a4, $a3, 56
	beqz	$a4, .LBB5_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a5, $a4, 0
	beq	$a5, $a3, .LBB5_6
.LBB5_5:                                # %cleanup
	ret
.LBB5_6:                                # %inflateStateCheck.exit
	ld.w	$a3, $a4, 8
	lu12i.w	$a5, -4
	ori	$a5, $a5, 204
	add.w	$a3, $a3, $a5
	ori	$a5, $zero, 31
	bltu	$a5, $a3, .LBB5_5
# %bb.7:                                # %if.end
	bltz	$a1, .LBB5_11
# %bb.8:                                # %if.end4
	ori	$a3, $zero, 16
	bltu	$a3, $a1, .LBB5_5
# %bb.9:                                # %lor.lhs.false
	ld.w	$a5, $a4, 88
	add.w	$a3, $a5, $a1
	ori	$a6, $zero, 32
	bltu	$a6, $a3, .LBB5_5
# %bb.10:                               # %if.end9
	move	$a0, $zero
	addi.d	$a6, $zero, -1
	sll.d	$a1, $a6, $a1
	ld.d	$a6, $a4, 80
	andn	$a1, $a2, $a1
	sll.w	$a1, $a1, $a5
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a6, $a1
	st.d	$a1, $a4, 80
	st.w	$a3, $a4, 88
	ret
.LBB5_11:                               # %if.then2
	move	$a0, $zero
	st.d	$zero, $a4, 80
	st.w	$zero, $a4, 88
	ret
.Lfunc_end5:
	.size	inflatePrime, .Lfunc_end5-inflatePrime
                                        # -- End function
	.globl	inflate                         # -- Begin function inflate
	.p2align	5
	.type	inflate,@function
inflate:                                # @inflate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s3, $zero, -2
	beqz	$a0, .LBB6_411
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB6_411
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a0, 72
	beqz	$a2, .LBB6_411
# %bb.3:                                # %if.end.i
	ld.d	$s5, $a0, 56
	beqz	$s5, .LBB6_411
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a2, $s5, 0
	bne	$a2, $a0, .LBB6_411
# %bb.5:                                # %inflateStateCheck.exit
	ld.w	$a2, $s5, 8
	lu12i.w	$a3, -4
	ori	$t7, $a3, 204
	add.w	$a3, $a2, $t7
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB6_411
# %bb.6:                                # %lor.lhs.false
	ld.d	$t8, $a0, 24
	beqz	$t8, .LBB6_411
# %bb.7:                                # %lor.lhs.false1
	ld.d	$s8, $a0, 0
	beqz	$s8, .LBB6_11
.LBB6_8:                                # %if.end
	lu12i.w	$t3, 3
	ori	$s6, $t3, 3903
	bne	$a2, $s6, .LBB6_10
# %bb.9:                                # %if.then6
	ori	$a2, $t3, 3904
	st.w	$a2, $s5, 8
.LBB6_10:                               # %do.body
	ld.w	$ra, $a0, 32
	ld.w	$s7, $a0, 8
	ld.d	$fp, $s5, 80
	ld.w	$s1, $s5, 88
	addi.d	$t6, $s5, 152
	addi.w	$a3, $a1, -5
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a3, $zero, -3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 30
	pcalau12i	$a3, %pc_hi20(.LJTI6_0)
	addi.d	$t5, $a3, %pc_lo12(.LJTI6_0)
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s4, $s7
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$t7, $sp, 80                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_16
.LBB6_11:                               # %land.lhs.true
	ld.w	$a3, $a0, 8
	bnez	$a3, .LBB6_411
	b	.LBB6_8
.LBB6_12:                               # %do.body702
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $s1, 7
	srl.d	$fp, $fp, $a2
	bstrins.d	$s1, $zero, 2, 0
	ori	$a2, $t3, 3918
.LBB6_13:                               # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$a2, $s5, 8
.LBB6_14:                               # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_15:                               # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 8
	move	$s8, $s0
.LBB6_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_55 Depth 2
                                        #     Child Loop BB6_283 Depth 2
                                        #     Child Loop BB6_41 Depth 2
                                        #     Child Loop BB6_86 Depth 2
                                        #     Child Loop BB6_167 Depth 2
                                        #     Child Loop BB6_93 Depth 2
                                        #     Child Loop BB6_100 Depth 2
                                        #       Child Loop BB6_102 Depth 3
                                        #       Child Loop BB6_117 Depth 3
                                        #       Child Loop BB6_111 Depth 3
                                        #       Child Loop BB6_114 Depth 3
                                        #       Child Loop BB6_131 Depth 3
                                        #       Child Loop BB6_135 Depth 3
                                        #     Child Loop BB6_300 Depth 2
                                        #     Child Loop BB6_306 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_319 Depth 2
                                        #     Child Loop BB6_325 Depth 2
                                        #     Child Loop BB6_335 Depth 2
                                        #     Child Loop BB6_357 Depth 2
                                        #     Child Loop BB6_361 Depth 2
                                        #     Child Loop BB6_38 Depth 2
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_45 Depth 2
                                        #     Child Loop BB6_185 Depth 2
                                        #     Child Loop BB6_194 Depth 2
                                        #     Child Loop BB6_205 Depth 2
                                        #     Child Loop BB6_230 Depth 2
                                        #     Child Loop BB6_247 Depth 2
                                        #     Child Loop BB6_262 Depth 2
                                        #     Child Loop BB6_21 Depth 2
	add.d	$a2, $a2, $t7
	bltu	$s2, $a2, .LBB6_411
# %bb.17:                               # %for.cond
                                        #   in Loop: Header=BB6_16 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $t5, $a2
	add.d	$a2, $t5, $a2
	jr	$a2
.LBB6_18:                               # %sw.bb
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 16
	beqz	$a2, .LBB6_141
# %bb.19:                               # %while.cond.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	ori	$a4, $zero, 15
	bltu	$a4, $a3, .LBB6_152
# %bb.20:                               # %do.body21.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a6, $s6
.LBB6_21:                               # %do.body21
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_412
# %bb.22:                               # %if.end24
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a4, $a3
	ld.bu	$a3, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a3, $a3, $a4
	add.d	$fp, $a3, $fp
	addi.d	$a3, $a4, 8
	ori	$a5, $zero, 8
	addi.w	$s1, $s1, 8
	move	$s8, $s0
	bltu	$a4, $a5, .LBB6_21
	b	.LBB6_153
.LBB6_23:                               # %sw.bb1736
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$ra, .LBB6_414
# %bb.24:                               # %if.end1740
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.b	$a2, $s5, 92
	st.b	$a2, $t8, 0
	addi.d	$t8, $t8, 1
	addi.w	$ra, $ra, -1
	ori	$a3, $t3, 3912
	st.w	$a3, $s5, 8
	b	.LBB6_14
.LBB6_25:                               # %for.cond.sw.bb1449_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 100
	beqz	$a3, .LBB6_315
.LBB6_26:                               # %while.cond1454.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	bgeu	$a2, $a3, .LBB6_146
# %bb.27:                               # %do.body1459.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a4, $s1
	move	$a2, $s4
	move	$a6, $s8
.LBB6_28:                               # %do.body1459
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB6_388
# %bb.29:                               # %if.end1463
                                        #   in Loop: Header=BB6_28 Depth=2
	ld.bu	$a7, $a6, 0
	addi.w	$a2, $a2, -1
	addi.d	$a5, $a6, 1
	sll.d	$a6, $a7, $a4
	addi.w	$a4, $a4, 8
	add.d	$fp, $a6, $fp
	move	$a6, $a5
	bltu	$a4, $a3, .LBB6_28
	b	.LBB6_147
.LBB6_30:                               # %for.cond.sw.bb979_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a6, $s5, 140
	b	.LBB6_98
.LBB6_31:                               # %for.cond.sw.bb1621_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 100
	b	.LBB6_332
.LBB6_32:                               # %while.cond634.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	ori	$a2, $zero, 31
	bltu	$a2, $a3, .LBB6_59
.LBB6_33:                               # %do.body638
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_381
# %bb.34:                               # %if.end642
                                        #   in Loop: Header=BB6_33 Depth=2
	move	$a4, $a3
	ld.bu	$a3, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$a2, $s8, 1
	sll.d	$a3, $a3, $a4
	add.d	$fp, $a3, $fp
	addi.d	$a3, $a4, 8
	ori	$a5, $zero, 24
	addi.d	$s1, $s1, 8
	move	$s8, $a2
	bltu	$a4, $a5, .LBB6_33
	b	.LBB6_60
.LBB6_35:                               # %do.body190
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 31
	bgeu	$a3, $a2, .LBB6_184
	b	.LBB6_187
.LBB6_36:                               # %do.body768
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	andi	$a3, $s1, 7
	ori	$a4, $zero, 31
	srl.d	$fp, $fp, $a3
	bltu	$a4, $a2, .LBB6_71
# %bb.37:                               # %do.body781.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$s1, $s1, 24
	move	$a4, $s1
	move	$a2, $s8
.LBB6_38:                               # %do.body781
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_382
# %bb.39:                               # %if.end785
                                        #   in Loop: Header=BB6_38 Depth=2
	move	$a3, $a4
	ld.bu	$a4, $a2, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $a2, 1
	sll.d	$a2, $a4, $a3
	add.d	$fp, $a2, $fp
	addi.d	$a4, $a3, 8
	ori	$a5, $zero, 24
	addi.w	$s1, $s1, 8
	move	$a2, $s8
	bltu	$a3, $a5, .LBB6_38
	b	.LBB6_72
.LBB6_40:                               # %while.cond848.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 13
	bltu	$a3, $a2, .LBB6_79
.LBB6_41:                               # %do.body852
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_381
# %bb.42:                               # %if.end856
                                        #   in Loop: Header=BB6_41 Depth=2
	move	$a3, $a2
	ld.bu	$a2, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a2, $a2, $a3
	add.d	$fp, $a2, $fp
	addi.d	$a2, $a3, 8
	ori	$a4, $zero, 6
	addi.d	$s1, $s1, 8
	move	$s8, $s0
	bltu	$a3, $a4, .LBB6_41
	b	.LBB6_80
.LBB6_43:                               # %while.cond117.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 15
	bltu	$a3, $a2, .LBB6_47
# %bb.44:                               # %do.body121.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a3, $s8
.LBB6_45:                               # %do.body121
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_384
# %bb.46:                               # %if.end125
                                        #   in Loop: Header=BB6_45 Depth=2
	move	$a4, $a2
	ld.bu	$a2, $a3, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $a3, 1
	sll.d	$a2, $a2, $a4
	add.d	$fp, $a2, $fp
	addi.d	$a2, $a4, 8
	ori	$a5, $zero, 8
	addi.w	$s1, $s1, 8
	move	$a3, $s8
	bltu	$a4, $a5, .LBB6_45
.LBB6_47:                               # %do.end137
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $fp, 255
	ori	$a3, $zero, 8
	st.w	$fp, $s5, 24
	bne	$a2, $a3, .LBB6_145
# %bb.48:                               # %if.end147
                                        #   in Loop: Header=BB6_16 Depth=1
	lu12i.w	$a2, 14
	and	$a2, $fp, $a2
	beqz	$a2, .LBB6_178
# %bb.49:                               # %if.then151
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	b	.LBB6_347
.LBB6_50:                               # %do.body250
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 15
	bgeu	$a3, $a2, .LBB6_193
	b	.LBB6_196
.LBB6_51:                               # %sw.bb308
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 24
	andi	$a3, $a2, 1024
	beqz	$a3, .LBB6_202
# %bb.52:                               # %while.cond314.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	ori	$a4, $zero, 15
	bltu	$a4, $a3, .LBB6_207
	b	.LBB6_204
.LBB6_53:                               # %sw.bb1746
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 16
	beqz	$a3, .LBB6_142
# %bb.54:                               # %while.cond1751.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a4, $zero, 31
	bltu	$a4, $a2, .LBB6_158
.LBB6_55:                               # %do.body1755
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_381
# %bb.56:                               # %if.end1759
                                        #   in Loop: Header=BB6_55 Depth=2
	move	$a4, $a2
	ld.bu	$a2, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a2, $a2, $a4
	add.d	$fp, $a2, $fp
	addi.d	$a2, $a4, 8
	ori	$a5, $zero, 24
	addi.w	$s1, $s1, 8
	move	$s8, $s0
	bltu	$a4, $a5, .LBB6_55
	b	.LBB6_159
.LBB6_57:                               # %sw.bb906
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 128
	ld.w	$a5, $s5, 140
	bltu	$a5, $a2, .LBB6_83
	b	.LBB6_89
.LBB6_58:                               # %for.cond.sw.bb1835_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 16
	b	.LBB6_280
.LBB6_59:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a2, $s8
.LBB6_60:                               # %do.end654
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s1, $zero
	revb.2w	$a1, $fp
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $s5, 32
	st.d	$a1, $a0, 96
	ori	$a1, $t3, 3902
	st.w	$a1, $s5, 8
	move	$s8, $a2
	move	$fp, $zero
.LBB6_61:                               # %sw.bb672
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a1, $s5, 20
	beqz	$a1, .LBB6_417
# %bb.62:                               # %if.end685
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $t3
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $t8
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	move	$t8, $s2
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $s5, 32
	st.d	$a1, $a0, 96
	st.w	$s6, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ori	$s2, $zero, 30
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	move	$t3, $s0
.LBB6_63:                               # %sw.bb690
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $zero, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB6_385
.LBB6_64:                               # %sw.bb698
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 12
	bnez	$a2, .LBB6_12
# %bb.65:                               # %while.cond713.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB6_68
# %bb.66:                               # %do.body717.lr.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$s4, .LBB6_381
# %bb.67:                               # %if.end721
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a3, $s8, 0
	ori	$s1, $s1, 8
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a2, $a3, $a2
	add.d	$fp, $a2, $fp
	b	.LBB6_69
.LBB6_68:                               #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_69:                               # %do.end733
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $fp, 1
	st.w	$a2, $s5, 12
	bstrpick.d	$a3, $fp, 2, 1
	ori	$a2, $t3, 3905
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI6_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI6_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB6_70:                               # %sw.bb746
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(fixedtables.lenfix)
	addi.d	$a2, $a2, %pc_lo12(fixedtables.lenfix)
	st.d	$a2, $s5, 104
	ori	$a2, $zero, 9
	lu32i.d	$a2, 5
	st.d	$a2, $s5, 120
	pcalau12i	$a2, %pc_hi20(fixedtables.distfix)
	addi.d	$a2, $a2, %pc_lo12(fixedtables.distfix)
	st.d	$a2, $s5, 112
	ori	$a2, $t3, 3911
	ori	$a3, $zero, 6
	st.w	$a2, $s5, 8
	bne	$a1, $a3, .LBB6_151
	b	.LBB6_423
.LBB6_71:                               #   in Loop: Header=BB6_16 Depth=1
	bstrins.d	$s1, $zero, 2, 0
.LBB6_72:                               # %do.end797
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$a2, $fp, 15, 0
	srli.d	$a3, $fp, 16
	xor	$a3, $a3, $a2
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	bne	$a3, $a4, .LBB6_143
# %bb.73:                               # %if.end805
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$fp, $zero
	st.w	$a2, $s5, 92
	ori	$a2, $t3, 3906
	ori	$a3, $zero, 6
	st.w	$a2, $s5, 8
	move	$s1, $zero
	beq	$a1, $a3, .LBB6_422
.LBB6_74:                               # %sw.bb817
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3907
	st.w	$a2, $s5, 8
.LBB6_75:                               # %sw.bb819
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 92
	beqz	$a2, .LBB6_78
# %bb.76:                               # %if.then822
                                        #   in Loop: Header=BB6_16 Depth=1
	sltu	$a3, $a2, $s4
	masknez	$a4, $s4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	sltu	$a3, $a2, $ra
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $ra, $a3
	or	$s2, $a2, $a3
	beqz	$s2, .LBB6_418
# %bb.77:                               # %if.end834
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$s6, $s2, 31, 0
	move	$a0, $t8
	move	$a1, $s8
	move	$a2, $s6
	move	$s0, $ra
	move	$s7, $t8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.w	$s4, $s4, $s2
	ld.w	$a2, $s5, 92
	add.d	$s0, $s8, $s6
	sub.w	$ra, $ra, $s2
	add.d	$t8, $s7, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $s2
	st.w	$a2, $s5, 92
	b	.LBB6_271
.LBB6_78:                               # %if.end844
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$s6, $s5, 8
	b	.LBB6_14
.LBB6_79:                               #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_80:                               # %do.end868
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a4, $fp, 31
	addi.d	$a2, $a4, 257
	st.w	$a2, $s5, 132
	bstrpick.d	$a3, $fp, 9, 5
	addi.d	$a2, $a3, 1
	st.w	$a2, $s5, 136
	bstrpick.d	$a2, $fp, 13, 10
	addi.d	$a2, $a2, 4
	st.w	$a2, $s5, 128
	srli.d	$fp, $fp, 14
	ori	$a5, $zero, 29
	addi.w	$s1, $s1, -14
	bltu	$a5, $a4, .LBB6_144
# %bb.81:                               # %do.end868
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a4, $zero, 30
	bgeu	$a3, $a4, .LBB6_144
# %bb.82:                               # %sw.bb906.thread
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a5, $zero
	st.w	$zero, $s5, 140
	ori	$a3, $t3, 3909
	st.w	$a3, $s5, 8
	move	$s8, $s0
.LBB6_83:                               # %while.cond914.preheader.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$a4, $a5, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	pcalau12i	$a3, %pc_hi20(inflate.order)
	addi.d	$a3, $a3, %pc_lo12(inflate.order)
	alsl.d	$a3, $a4, $a3, 1
	sub.d	$a4, $a6, $a4
	addi.d	$a5, $a5, 1
	b	.LBB6_86
.LBB6_84:                               # %if.end922
                                        #   in Loop: Header=BB6_86 Depth=2
	ld.bu	$a7, $s8, 0
	ori	$s1, $s1, 8
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	sll.d	$a6, $a7, $a6
	add.d	$fp, $a6, $fp
.LBB6_85:                               # %do.end934
                                        #   in Loop: Header=BB6_86 Depth=2
	ld.hu	$a6, $a3, 0
	andi	$a7, $fp, 7
	st.w	$a5, $s5, 140
	slli.d	$a6, $a6, 1
	stx.h	$a7, $t6, $a6
	srli.d	$fp, $fp, 3
	addi.w	$s1, $s1, -3
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	beqz	$a4, .LBB6_88
.LBB6_86:                               # %while.cond914.preheader
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $s1, 0
	ori	$a7, $zero, 2
	bltu	$a7, $a6, .LBB6_85
# %bb.87:                               # %do.body918.lr.ph
                                        #   in Loop: Header=BB6_86 Depth=2
	bnez	$s4, .LBB6_84
	b	.LBB6_381
.LBB6_88:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a5, $a2
.LBB6_89:                               # %while.cond950.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s2, $s7
	move	$s0, $t3
	move	$s6, $t8
	move	$s7, $ra
	addi.w	$a4, $a5, 0
	ori	$a0, $zero, 18
	bltu	$a0, $a4, .LBB6_95
# %bb.90:                               # %while.body954.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $a5, 1
	ori	$a0, $zero, 20
	sub.d	$a1, $a0, $a2
	ori	$a3, $zero, 16
	pcalau12i	$a0, %pc_hi20(inflate.order)
	addi.d	$a0, $a0, %pc_lo12(inflate.order)
	bgeu	$a1, $a3, .LBB6_164
.LBB6_91:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a2, $a4
.LBB6_92:                               # %while.body954.preheader3131
                                        #   in Loop: Header=BB6_16 Depth=1
	alsl.d	$a0, $a2, $a0, 1
	addi.d	$a1, $a2, 1
.LBB6_93:                               # %while.body954
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $a0, 0
	slli.d	$a2, $a2, 1
	stx.h	$zero, $t6, $a2
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a0, $a0, 2
	ori	$a3, $zero, 19
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB6_93
.LBB6_94:                               # %while.cond950.while.end962_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a0, $zero, 19
	st.w	$a0, $s5, 140
.LBB6_95:                               # %while.end962
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.d	$a0, $s5, 1368
	st.d	$a0, $s5, 144
	st.d	$a0, $s5, 104
	ori	$a0, $zero, 7
	st.w	$a0, $s5, 120
	ori	$a2, $zero, 19
	move	$a0, $zero
	move	$a1, $t6
	addi.d	$a3, $s5, 144
	addi.d	$a4, $s5, 120
	addi.d	$a5, $s5, 792
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_97
# %bb.96:                               # %if.then973
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 48
	move	$a2, $s0
	ori	$a1, $s0, 3921
	st.w	$a1, $s5, 8
	move	$s0, $s8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$ra, $s7
	move	$t3, $a2
	move	$t8, $s6
	b	.LBB6_177
.LBB6_97:                               # %if.end976
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a6, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.w	$zero, $s5, 140
	ori	$a0, $s0, 3910
	st.w	$a0, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$ra, $s7
	move	$t3, $s0
	move	$t8, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$s7, $s2
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ori	$s2, $zero, 30
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
.LBB6_98:                               # %sw.bb979
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 132
	ld.w	$a3, $s5, 136
	add.w	$a3, $a3, $a2
	bgeu	$a6, $a3, .LBB6_138
# %bb.99:                               # %for.cond988.preheader.lr.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a5, $s5, 120
	ld.d	$a4, $s5, 104
	addi.d	$a7, $zero, -1
	sll.w	$a5, $a7, $a5
	nor	$a5, $a5, $zero
	move	$t1, $s4
	move	$t2, $s8
.LBB6_100:                              # %for.cond988.preheader
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_102 Depth 3
                                        #       Child Loop BB6_117 Depth 3
                                        #       Child Loop BB6_111 Depth 3
                                        #       Child Loop BB6_114 Depth 3
                                        #       Child Loop BB6_131 Depth 3
                                        #       Child Loop BB6_135 Depth 3
	and	$a7, $a5, $fp
	addi.w	$t3, $a7, 0
	alsl.d	$a7, $t3, $a4, 2
	ld.bu	$t0, $a7, 1
	addi.w	$t4, $s1, 0
	bgeu	$t4, $t0, .LBB6_105
# %bb.101:                              # %do.body1003.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	move	$a7, $s1
	move	$s4, $t1
	move	$t5, $t2
.LBB6_102:                              # %do.body1003
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s4, .LBB6_387
# %bb.103:                              # %if.end1007
                                        #   in Loop: Header=BB6_102 Depth=3
	ld.bu	$t0, $t5, 0
	sll.d	$t0, $t0, $t4
	add.d	$fp, $t0, $fp
	and	$t0, $a5, $fp
	addi.w	$t3, $t0, 0
	alsl.d	$t0, $t3, $a4, 2
	ld.bu	$t0, $t0, 1
	addi.w	$s4, $s4, -1
	addi.d	$s8, $t5, 1
	addi.d	$t4, $t4, 8
	addi.d	$a7, $a7, 8
	move	$t5, $s8
	bltu	$t4, $t0, .LBB6_102
# %bb.104:                              # %for.end.loopexit
                                        #   in Loop: Header=BB6_100 Depth=2
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_106
.LBB6_105:                              #   in Loop: Header=BB6_100 Depth=2
	move	$s8, $t2
	move	$s4, $t1
	move	$a7, $s1
.LBB6_106:                              # %for.end
                                        #   in Loop: Header=BB6_100 Depth=2
	alsl.d	$t1, $t3, $a4, 2
	ld.hu	$t1, $t1, 2
	ori	$t2, $zero, 15
	bltu	$t2, $t1, .LBB6_108
# %bb.107:                              # %do.body1021
                                        #   in Loop: Header=BB6_100 Depth=2
	srl.d	$fp, $fp, $t0
	sub.w	$s1, $a7, $t0
	bstrpick.d	$a7, $a6, 31, 0
	addi.w	$a6, $a6, 1
	st.w	$a6, $s5, 140
	slli.d	$a7, $a7, 1
	stx.h	$t1, $t6, $a7
	b	.LBB6_137
.LBB6_108:                              # %if.else1037
                                        #   in Loop: Header=BB6_100 Depth=2
	ori	$t2, $zero, 16
	beq	$t1, $t2, .LBB6_113
# %bb.109:                              # %if.else1037
                                        #   in Loop: Header=BB6_100 Depth=2
	ori	$t2, $zero, 17
	bne	$t1, $t2, .LBB6_116
# %bb.110:                              # %while.cond1106.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	addi.d	$t1, $t0, 3
	addi.w	$t2, $a7, 0
	bgeu	$t2, $t1, .LBB6_119
.LBB6_111:                              # %do.body1113
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s4, .LBB6_391
# %bb.112:                              # %if.end1117
                                        #   in Loop: Header=BB6_111 Depth=3
	ld.bu	$t4, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$t3, $s8, 1
	sll.d	$t4, $t4, $t2
	add.d	$fp, $t4, $fp
	addi.d	$t2, $t2, 8
	addi.d	$a7, $a7, 8
	move	$s8, $t3
	bltu	$t2, $t1, .LBB6_111
	b	.LBB6_120
.LBB6_113:                              # %while.cond1044.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	addi.d	$t1, $t0, 2
	addi.w	$t2, $a7, 0
	bgeu	$t2, $t1, .LBB6_121
.LBB6_114:                              # %do.body1051
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s4, .LBB6_391
# %bb.115:                              # %if.end1055
                                        #   in Loop: Header=BB6_114 Depth=3
	ld.bu	$t3, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$t3, $t3, $t2
	add.d	$fp, $t3, $fp
	addi.d	$t2, $t2, 8
	addi.d	$a7, $a7, 8
	move	$s8, $s0
	bltu	$t2, $t1, .LBB6_114
	b	.LBB6_122
.LBB6_116:                              # %while.cond1150.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	addi.w	$t1, $a7, 0
	addi.d	$t2, $t0, 7
	bgeu	$t1, $t2, .LBB6_124
.LBB6_117:                              # %do.body1157
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s4, .LBB6_391
# %bb.118:                              # %if.end1161
                                        #   in Loop: Header=BB6_117 Depth=3
	ld.bu	$t4, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$t3, $s8, 1
	sll.d	$t4, $t4, $t1
	add.d	$fp, $t4, $fp
	addi.d	$t1, $t1, 8
	addi.d	$a7, $a7, 8
	move	$s8, $t3
	bltu	$t1, $t2, .LBB6_117
	b	.LBB6_125
.LBB6_119:                              #   in Loop: Header=BB6_100 Depth=2
	move	$t3, $s8
.LBB6_120:                              # %do.body1130
                                        #   in Loop: Header=BB6_100 Depth=2
	move	$t1, $zero
	srl.d	$t4, $fp, $t0
	andi	$t2, $t4, 7
	addi.d	$t2, $t2, 3
	srli.d	$fp, $t4, 3
	sub.d	$a7, $a7, $t0
	addi.w	$s1, $a7, -3
	b	.LBB6_126
.LBB6_121:                              #   in Loop: Header=BB6_100 Depth=2
	move	$s0, $s8
.LBB6_122:                              # %do.body1068
                                        #   in Loop: Header=BB6_100 Depth=2
	srl.d	$fp, $fp, $t0
	sub.w	$s1, $a7, $t0
	beqz	$a6, .LBB6_380
# %bb.123:                              # %if.end1084
                                        #   in Loop: Header=BB6_100 Depth=2
	addi.d	$a7, $a6, -1
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 1
	ldx.hu	$t1, $t6, $a7
	andi	$a7, $fp, 3
	addi.d	$t2, $a7, 3
	srli.d	$fp, $fp, 2
	addi.w	$s1, $s1, -2
	move	$s8, $s0
	b	.LBB6_127
.LBB6_124:                              #   in Loop: Header=BB6_100 Depth=2
	move	$t3, $s8
.LBB6_125:                              # %do.body1174
                                        #   in Loop: Header=BB6_100 Depth=2
	move	$t1, $zero
	srl.d	$t4, $fp, $t0
	andi	$t2, $t4, 127
	addi.d	$t2, $t2, 11
	srli.d	$fp, $t4, 7
	sub.d	$a7, $a7, $t0
	addi.w	$s1, $a7, -7
.LBB6_126:                              # %if.end1193
                                        #   in Loop: Header=BB6_100 Depth=2
	move	$s8, $t3
.LBB6_127:                              # %if.end1193
                                        #   in Loop: Header=BB6_100 Depth=2
	add.w	$a7, $t2, $a6
	bltu	$a3, $a7, .LBB6_376
# %bb.128:                              # %while.body1208.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	ori	$a7, $zero, 16
	bltu	$t2, $a7, .LBB6_133
# %bb.129:                              # %while.body1208.preheader
                                        #   in Loop: Header=BB6_100 Depth=2
	sub.d	$a7, $zero, $t2
	bltu	$a7, $a6, .LBB6_133
# %bb.130:                              # %vector.ph3103
                                        #   in Loop: Header=BB6_100 Depth=2
	andi	$t3, $t2, 240
	andi	$a7, $t2, 15
	add.w	$t0, $a6, $t3
	vreplgr2vr.h	$vr0, $t1
	move	$t4, $t3
.LBB6_131:                              # %vector.body3106
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t5, $a6, 31, 0
	addi.d	$t6, $s5, 152
	alsl.d	$t6, $t5, $t6, 1
	slli.d	$t5, $t5, 1
	addi.d	$s0, $s5, 152
	vstx	$vr0, $s0, $t5
	vst	$vr0, $t6, 16
	addi.d	$t6, $s5, 152
	addi.w	$t4, $t4, -16
	addi.w	$a6, $a6, 16
	bnez	$t4, .LBB6_131
# %bb.132:                              # %middle.block3109
                                        #   in Loop: Header=BB6_100 Depth=2
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	bne	$t2, $t3, .LBB6_134
	b	.LBB6_136
.LBB6_133:                              #   in Loop: Header=BB6_100 Depth=2
	move	$a7, $t2
	move	$t0, $a6
.LBB6_134:                              # %while.body1208.preheader3130
                                        #   in Loop: Header=BB6_100 Depth=2
	move	$a6, $t0
.LBB6_135:                              # %while.body1208
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a7, $a7, -1
	addi.w	$t0, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 1
	stx.h	$t1, $t6, $a6
	move	$a6, $t0
	bnez	$a7, .LBB6_135
.LBB6_136:                              # %if.end1216.loopexit
                                        #   in Loop: Header=BB6_100 Depth=2
	st.w	$t0, $s5, 140
	move	$a6, $t0
.LBB6_137:                              # %if.end1216
                                        #   in Loop: Header=BB6_100 Depth=2
	lu12i.w	$t3, 3
	move	$t1, $s4
	move	$t2, $s8
	bltu	$a6, $a3, .LBB6_100
.LBB6_138:                              # %if.end1222
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.hu	$a3, $s5, 664
	beqz	$a3, .LBB6_163
# %bb.139:                              # %if.end1231
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s2, $s7
	move	$s7, $t3
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $ra
	addi.d	$a0, $s5, 1368
	st.d	$a0, $s5, 144
	st.d	$a0, $s5, 104
	ori	$a0, $zero, 9
	st.w	$a0, $s5, 120
	ori	$a0, $zero, 1
	move	$a1, $t6
	addi.d	$a3, $s5, 144
	addi.d	$a4, $s5, 120
	addi.d	$a5, $s5, 792
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_174
# %bb.140:                              # %if.then1247
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	b	.LBB6_176
.LBB6_141:                              # %if.then16
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3904
	b	.LBB6_13
.LBB6_142:                              #   in Loop: Header=BB6_16 Depth=1
	move	$a3, $zero
	b	.LBB6_279
.LBB6_143:                              # %if.then802
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	b	.LBB6_347
.LBB6_144:                              # %if.then900
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	b	.LBB6_288
.LBB6_145:                              # %if.then144
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	b	.LBB6_347
.LBB6_146:                              #   in Loop: Header=BB6_16 Depth=1
	move	$a5, $s8
	move	$a2, $s4
	move	$a4, $s1
.LBB6_147:                              # %do.end1475
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a6, $s5, 92
	addi.d	$a7, $zero, -1
	sll.w	$a7, $a7, $a3
	andn	$a7, $fp, $a7
	add.d	$a6, $a6, $a7
	lu12i.w	$a7, 1
	ori	$a7, $a7, 3052
	ldx.w	$a7, $s5, $a7
	st.w	$a6, $s5, 92
	srl.d	$fp, $fp, $a3
	sub.d	$s1, $a4, $a3
	add.d	$a3, $a7, $a3
	stptr.w	$a3, $s5, 7148
	move	$s8, $a5
	move	$s4, $a2
	b	.LBB6_316
.LBB6_148:                              # %sw.bb757
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3908
	b	.LBB6_150
.LBB6_149:                              # %sw.bb759
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	st.d	$a2, $a0, 48
	ori	$a2, $t3, 3921
.LBB6_150:                              # %do.body762.sink.split
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$a2, $s5, 8
.LBB6_151:                              # %do.body762
                                        #   in Loop: Header=BB6_16 Depth=1
	srli.d	$fp, $fp, 3
	addi.w	$s1, $s1, -3
	b	.LBB6_15
.LBB6_152:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_153:                              # %do.end29
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s6, $s7
	andi	$a3, $a2, 2
	beqz	$a3, .LBB6_169
# %bb.154:                              # %do.end29
                                        #   in Loop: Header=BB6_16 Depth=1
	lu12i.w	$a3, 8
	ori	$s2, $a3, 2847
	bne	$fp, $s2, .LBB6_169
# %bb.155:                              # %if.then35
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s8, $t8
	move	$s7, $ra
	ld.w	$a0, $s5, 56
	bnez	$a0, .LBB6_157
# %bb.156:                              # %if.then38
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a0, $zero, 15
	st.w	$a0, $s5, 56
.LBB6_157:                              # %if.end40
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 32
	st.h	$s2, $sp, 116
	addi.d	$a1, $sp, 116
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	move	$s1, $zero
	st.d	$a0, $s5, 32
	lu12i.w	$t3, 3
	ori	$a0, $t3, 3893
	st.w	$a0, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$ra, $s7
	move	$t8, $s8
	move	$s7, $s6
	move	$s6, $a3
	b	.LBB6_272
.LBB6_158:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_159:                              # %do.end1771
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a4, $a0, 40
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a2, $a7, $ra
	ld.d	$a6, $s5, 40
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $a0, 40
	add.d	$a6, $a6, $a5
	andi	$a4, $a3, 4
	st.d	$a6, $s5, 40
	beqz	$a4, .LBB6_276
# %bb.160:                              # %do.end1771
                                        #   in Loop: Header=BB6_16 Depth=1
	beq	$a7, $ra, .LBB6_276
# %bb.161:                              # %if.then1782
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s8, $s7
	move	$s2, $t3
	move	$s7, $ra
	ld.w	$a3, $s5, 24
	ld.d	$a0, $s5, 32
	move	$s6, $t8
	sub.d	$a1, $t8, $a5
	beqz	$a3, .LBB6_274
# %bb.162:                              # %cond.true1785
                                        #   in Loop: Header=BB6_16 Depth=1
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	b	.LBB6_275
.LBB6_163:                              # %if.then1228
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	b	.LBB6_347
.LBB6_164:                              # %vector.scevcheck3113
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a3, $zero, 19
	sub.d	$a2, $a3, $a2
	addi.w	$a3, $a2, 0
	addi.d	$a6, $zero, -2
	sub.w	$a5, $a6, $a5
	bltu	$a5, $a3, .LBB6_91
# %bb.165:                              # %vector.scevcheck3113
                                        #   in Loop: Header=BB6_16 Depth=1
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB6_91
# %bb.166:                              # %vector.ph3116
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a3, $a1
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a2, $a3, $a4
	alsl.d	$a4, $a4, $a0, 1
	move	$a5, $a3
.LBB6_167:                              # %vector.body3119
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vrepli.b	$vr1, 0
	vilvh.h	$vr2, $vr1, $vr0
	vilvh.w	$vr3, $vr1, $vr2
	vilvl.w	$vr2, $vr1, $vr2
	vilvl.h	$vr0, $vr1, $vr0
	vilvh.w	$vr4, $vr1, $vr0
	vilvl.w	$vr0, $vr1, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	vpickve2gr.d	$a7, $vr0, 1
	vpickve2gr.d	$t0, $vr4, 0
	vpickve2gr.d	$t1, $vr4, 1
	vpickve2gr.d	$t2, $vr2, 0
	vpickve2gr.d	$t3, $vr2, 1
	vpickve2gr.d	$t4, $vr3, 0
	vpickve2gr.d	$t5, $vr3, 1
	slli.d	$a6, $a6, 1
	slli.d	$a7, $a7, 1
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 1
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	stx.h	$zero, $t6, $a6
	stx.h	$zero, $t6, $a7
	stx.h	$zero, $t6, $t0
	stx.h	$zero, $t6, $t1
	stx.h	$zero, $t6, $t2
	stx.h	$zero, $t6, $t3
	stx.h	$zero, $t6, $t4
	stx.h	$zero, $t6, $t5
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB6_167
# %bb.168:                              # %middle.block3124
                                        #   in Loop: Header=BB6_16 Depth=1
	bne	$a1, $a3, .LBB6_92
	b	.LBB6_94
.LBB6_169:                              # %if.end55
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a3, $s5, 48
	st.w	$zero, $s5, 24
	beqz	$a3, .LBB6_171
# %bb.170:                              # %if.then58
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	st.w	$a4, $a3, 72
.LBB6_171:                              # %if.end60
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $a2, 1
	lu12i.w	$t3, 3
	move	$s7, $s6
	ori	$s2, $zero, 30
	beqz	$a2, .LBB6_173
# %bb.172:                              # %lor.lhs.false64
                                        #   in Loop: Header=BB6_16 Depth=1
	slli.d	$a2, $fp, 8
	bstrpick.d	$a2, $a2, 15, 8
	slli.d	$a2, $a2, 8
	srli.d	$a3, $fp, 8
	add.d	$a2, $a2, $a3
	lu12i.w	$a3, -270601
	ori	$a3, $a3, 3039
	lu32i.d	$a3, -270601
	lu52i.d	$a3, $a3, -265
	mul.d	$a2, $a2, $a3
	lu12i.w	$a3, 135300
	ori	$a3, $a3, 529
	lu32i.d	$a3, 135300
	lu52i.d	$a3, $a3, 132
	bltu	$a2, $a3, .LBB6_369
.LBB6_173:                              # %if.then72
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	st.d	$a2, $a0, 48
	ori	$a2, $t3, 3921
	st.w	$a2, $s5, 8
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_15
.LBB6_174:                              # %if.end1250
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 144
	st.d	$a0, $s5, 112
	ld.wu	$a0, $s5, 132
	ld.w	$a2, $s5, 136
	ori	$s0, $zero, 6
	st.w	$s0, $s5, 124
	addi.d	$a1, $s5, 152
	alsl.d	$a1, $a0, $a1, 1
	ori	$a0, $zero, 2
	addi.d	$a3, $s5, 144
	addi.d	$a4, $s5, 124
	addi.d	$a5, $s5, 792
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	beqz	$a0, .LBB6_291
# %bb.175:                              # %if.then1264
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
.LBB6_176:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 48
	ori	$a1, $s7, 3921
	st.w	$a1, $s5, 8
	move	$s0, $s8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$ra, $s6
	move	$t3, $s7
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
.LBB6_177:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$s7, $s2
	b	.LBB6_272
.LBB6_178:                              # %if.end154
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_180
# %bb.179:                              # %if.then158
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$a3, $fp, 8, 8
	st.w	$a3, $a2, 0
.LBB6_180:                              # %if.end163
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $fp, 512
	beqz	$a2, .LBB6_183
# %bb.181:                              # %land.lhs.true167
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_183
# %bb.182:                              # %do.body172
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	st.h	$fp, $sp, 116
	addi.d	$a1, $sp, 116
	ori	$a2, $zero, 2
	move	$fp, $ra
	move	$s0, $t8
	move	$s1, $t3
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$t3, $s1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	move	$t8, $s0
	move	$ra, $fp
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_183:                              # %do.body190.thread
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s1, $zero
	move	$fp, $zero
	ori	$a2, $t3, 3894
	st.w	$a2, $s5, 8
.LBB6_184:                              # %do.body195.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	move	$a2, $s8
.LBB6_185:                              # %do.body195
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_382
# %bb.186:                              # %if.end199
                                        #   in Loop: Header=BB6_185 Depth=2
	move	$a4, $a3
	ld.bu	$a3, $a2, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $a2, 1
	sll.d	$a2, $a3, $a4
	add.d	$fp, $a2, $fp
	addi.d	$a3, $a4, 8
	ori	$a5, $zero, 24
	addi.d	$s1, $s1, 8
	move	$a2, $s8
	bltu	$a4, $a5, .LBB6_185
.LBB6_187:                              # %do.end211
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_189
# %bb.188:                              # %if.then215
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$fp, $a2, 8
.LBB6_189:                              # %if.end217
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 2
	beqz	$a2, .LBB6_192
# %bb.190:                              # %land.lhs.true221
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_192
# %bb.191:                              # %do.body226
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	st.w	$fp, $sp, 116
	addi.d	$a1, $sp, 116
	ori	$a2, $zero, 4
	move	$fp, $ra
	move	$s0, $t8
	move	$s1, $t3
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$t3, $s1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	move	$t8, $s0
	move	$ra, $fp
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_192:                              # %do.body250.thread
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s1, $zero
	move	$fp, $zero
	ori	$a2, $t3, 3895
	st.w	$a2, $s5, 8
.LBB6_193:                              # %do.body255.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	move	$a2, $s8
.LBB6_194:                              # %do.body255
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_382
# %bb.195:                              # %if.end259
                                        #   in Loop: Header=BB6_194 Depth=2
	move	$a4, $a3
	ld.bu	$a3, $a2, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $a2, 1
	sll.d	$a2, $a3, $a4
	add.d	$fp, $a2, $fp
	addi.d	$a3, $a4, 8
	ori	$a5, $zero, 8
	addi.d	$s1, $s1, 8
	move	$a2, $s8
	bltu	$a4, $a5, .LBB6_194
.LBB6_196:                              # %do.end271
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_198
# %bb.197:                              # %if.then275
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a3, $fp, 255
	st.w	$a3, $a2, 16
	srli.d	$a3, $fp, 8
	st.w	$a3, $a2, 20
.LBB6_198:                              # %if.end282
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 2
	beqz	$a2, .LBB6_201
# %bb.199:                              # %land.lhs.true286
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_201
# %bb.200:                              # %do.body291
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	st.h	$fp, $sp, 116
	addi.d	$a1, $sp, 116
	ori	$a2, $zero, 2
	move	$fp, $ra
	move	$s0, $t8
	move	$s1, $t3
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$t3, $s1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	move	$t8, $s0
	move	$ra, $fp
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_201:                              # %sw.bb308.thread
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 24
	move	$fp, $zero
	move	$s1, $zero
	ori	$a3, $t3, 3896
	andi	$a4, $a2, 1024
	st.w	$a3, $s5, 8
	bnez	$a4, .LBB6_204
.LBB6_202:                              # %if.else
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_213
# %bb.203:                              # %if.then370
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$zero, $a2, 24
	b	.LBB6_213
.LBB6_204:                              # %do.body318.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a5, $s1, 0
	move	$a3, $s8
.LBB6_205:                              # %do.body318
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_384
# %bb.206:                              # %if.end322
                                        #   in Loop: Header=BB6_205 Depth=2
	move	$a4, $a5
	ld.bu	$a5, $a3, 0
	addi.w	$s4, $s4, -1
	addi.d	$s8, $a3, 1
	sll.d	$a3, $a5, $a4
	add.d	$fp, $a3, $fp
	addi.d	$a5, $a4, 8
	ori	$a6, $zero, 8
	addi.d	$s1, $s1, 8
	move	$a3, $s8
	bltu	$a4, $a6, .LBB6_205
.LBB6_207:                              # %do.end334
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a3, $s5, 48
	st.w	$fp, $s5, 92
	beqz	$a3, .LBB6_209
# %bb.208:                              # %if.then339
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$fp, $a3, 32
.LBB6_209:                              # %if.end342
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $a2, 512
	beqz	$a2, .LBB6_211
# %bb.210:                              # %land.lhs.true346
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	bnez	$a2, .LBB6_212
.LBB6_211:                              #   in Loop: Header=BB6_16 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	b	.LBB6_213
.LBB6_212:                              # %do.body351
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	st.h	$fp, $sp, 116
	addi.d	$a1, $sp, 116
	ori	$a2, $zero, 2
	move	$fp, $ra
	move	$s0, $t8
	move	$s1, $t3
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$t3, $s1
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	move	$t8, $s0
	move	$ra, $fp
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$fp, $zero
	move	$s1, $zero
	st.d	$a2, $s5, 32
.LBB6_213:                              # %if.end373
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3897
	st.w	$a2, $s5, 8
.LBB6_214:                              # %sw.bb375
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a3, $s5, 24
	andi	$a2, $a3, 1024
	beqz	$a2, .LBB6_224
# %bb.215:                              # %if.then379
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s6
	ld.w	$a2, $s5, 92
	sltu	$a4, $a2, $s4
	masknez	$a5, $s4, $a4
	maskeqz	$a4, $a2, $a4
	or	$s6, $a4, $a5
	beqz	$s6, .LBB6_223
# %bb.216:                              # %if.then386
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a4, $s5, 48
	beqz	$a4, .LBB6_219
# %bb.217:                              # %land.lhs.true390
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a5, $a4, 24
	beqz	$a5, .LBB6_219
# %bb.218:                              # %if.then395
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a0, $a4, 32
	sub.d	$a1, $a0, $a2
	ld.w	$a2, $a4, 36
	bstrpick.d	$a0, $a1, 31, 0
	add.d	$a0, $a5, $a0
	add.w	$a3, $a1, $s6
	sltu	$a3, $a2, $a3
	sub.d	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a2, $s6, $a3
	or	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 0
	move	$a1, $s8
	move	$s7, $ra
	move	$s2, $t8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	move	$t8, $s2
	ori	$s2, $zero, 30
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$ra, $s7
	lu12i.w	$t3, 3
	move	$s7, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a3, $s5, 24
.LBB6_219:                              # %if.end411
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a2, $a3, 512
	beqz	$a2, .LBB6_222
# %bb.220:                              # %land.lhs.true415
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_222
# %bb.221:                              # %if.then419
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $s8
	move	$a2, $s6
	move	$s2, $t3
	move	$s7, $ra
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	move	$ra, $s7
	move	$t3, $s2
	ori	$s2, $zero, 30
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_222:                              # %if.end423
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 92
	sub.w	$s4, $s4, $s6
	bstrpick.d	$a3, $s6, 31, 0
	add.d	$s8, $s8, $a3
	sub.w	$a2, $a2, $s6
	st.w	$a2, $s5, 92
.LBB6_223:                              # %if.end429
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s6, $s0
	bnez	$a2, .LBB6_385
.LBB6_224:                              # %if.end434
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$zero, $s5, 92
	ori	$a2, $t3, 3898
	st.w	$a2, $s5, 8
.LBB6_225:                              # %sw.bb437
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 8
	bnez	$a2, .LBB6_228
# %bb.226:                              # %if.else493
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_241
# %bb.227:                              # %if.then497
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$zero, $a2, 40
	b	.LBB6_241
.LBB6_228:                              # %if.then441
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$s4, .LBB6_381
# %bb.229:                              # %do.body446.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s7, $t3
	move	$s6, $zero
	move	$s0, $zero
	bstrpick.d	$a2, $s4, 31, 0
.LBB6_230:                              # %do.body446
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s5, 48
	ldx.bu	$s2, $s8, $s0
	beqz	$a4, .LBB6_234
# %bb.231:                              # %land.lhs.true452
                                        #   in Loop: Header=BB6_230 Depth=2
	ld.d	$a3, $a4, 40
	beqz	$a3, .LBB6_234
# %bb.232:                              # %land.lhs.true456
                                        #   in Loop: Header=BB6_230 Depth=2
	ld.w	$a5, $s5, 92
	ld.w	$a4, $a4, 48
	bgeu	$a5, $a4, .LBB6_234
# %bb.233:                              # %if.then461
                                        #   in Loop: Header=BB6_230 Depth=2
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	st.w	$a5, $s5, 92
	stx.b	$s2, $a3, $a4
.LBB6_234:                              # %do.cond470
                                        #   in Loop: Header=BB6_230 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$s6, $s6, 1
	beqz	$s2, .LBB6_236
# %bb.235:                              # %do.cond470
                                        #   in Loop: Header=BB6_230 Depth=2
	bltu	$s0, $a2, .LBB6_230
.LBB6_236:                              # %do.end474
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 2
	beqz	$a2, .LBB6_239
# %bb.237:                              # %land.lhs.true478
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_239
# %bb.238:                              # %if.then482
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $s8
	move	$a2, $s6
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_239:                              # %if.end486
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.w	$s4, $s4, $s6
	bnez	$s2, .LBB6_413
# %bb.240:                              #   in Loop: Header=BB6_16 Depth=1
	add.d	$s8, $s8, $s0
	move	$t3, $s7
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$s2, $zero, 30
.LBB6_241:                              # %if.end501
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$zero, $s5, 92
	ori	$a2, $t3, 3899
	st.w	$a2, $s5, 8
.LBB6_242:                              # %sw.bb504
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 16
	bnez	$a2, .LBB6_245
# %bb.243:                              # %if.else564
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a2, $s5, 48
	beqz	$a2, .LBB6_258
# %bb.244:                              # %if.then568
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$zero, $a2, 56
	b	.LBB6_258
.LBB6_245:                              # %if.then508
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$s4, .LBB6_381
# %bb.246:                              # %do.body513.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s7, $t3
	move	$s6, $zero
	move	$s0, $zero
	bstrpick.d	$a2, $s4, 31, 0
.LBB6_247:                              # %do.body513
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s5, 48
	ldx.bu	$s2, $s8, $s0
	beqz	$a4, .LBB6_251
# %bb.248:                              # %land.lhs.true521
                                        #   in Loop: Header=BB6_247 Depth=2
	ld.d	$a3, $a4, 56
	beqz	$a3, .LBB6_251
# %bb.249:                              # %land.lhs.true525
                                        #   in Loop: Header=BB6_247 Depth=2
	ld.w	$a5, $s5, 92
	ld.w	$a4, $a4, 64
	bgeu	$a5, $a4, .LBB6_251
# %bb.250:                              # %if.then530
                                        #   in Loop: Header=BB6_247 Depth=2
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	st.w	$a5, $s5, 92
	stx.b	$s2, $a3, $a4
.LBB6_251:                              # %do.cond539
                                        #   in Loop: Header=BB6_247 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$s6, $s6, 1
	beqz	$s2, .LBB6_253
# %bb.252:                              # %do.cond539
                                        #   in Loop: Header=BB6_247 Depth=2
	bltu	$s0, $a2, .LBB6_247
.LBB6_253:                              # %do.end545
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 25
	andi	$a2, $a2, 2
	beqz	$a2, .LBB6_256
# %bb.254:                              # %land.lhs.true549
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a2, $s5, 16
	andi	$a2, $a2, 4
	beqz	$a2, .LBB6_256
# %bb.255:                              # %if.then553
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $s8
	move	$a2, $s6
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s5, 32
.LBB6_256:                              # %if.end557
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.w	$s4, $s4, $s6
	bnez	$s2, .LBB6_413
# %bb.257:                              #   in Loop: Header=BB6_16 Depth=1
	add.d	$s8, $s8, $s0
	move	$t3, $s7
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$s2, $zero, 30
.LBB6_258:                              # %if.end572
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3900
	st.w	$a2, $s5, 8
.LBB6_259:                              # %sw.bb574
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 24
	andi	$a3, $a2, 512
	bnez	$a3, .LBB6_261
# %bb.260:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s2, $s6
	move	$s0, $s8
	b	.LBB6_268
.LBB6_261:                              # %while.cond580.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a3, $s1, 0
	ori	$a4, $zero, 15
	bltu	$a4, $a3, .LBB6_264
.LBB6_262:                              # %do.body584
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_381
# %bb.263:                              # %if.end588
                                        #   in Loop: Header=BB6_262 Depth=2
	move	$a4, $a3
	ld.bu	$a3, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a3, $a3, $a4
	add.d	$fp, $a3, $fp
	addi.d	$a3, $a4, 8
	ori	$a5, $zero, 8
	addi.w	$s1, $s1, 8
	move	$s8, $s0
	bltu	$a4, $a5, .LBB6_262
	b	.LBB6_265
.LBB6_264:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_265:                              # %do.end600
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$a3, $s5, 16
	andi	$a3, $a3, 4
	beqz	$a3, .LBB6_267
# %bb.266:                              # %land.lhs.true604
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.hu	$a3, $s5, 32
	bne	$fp, $a3, .LBB6_273
.LBB6_267:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s2, $s6
	move	$fp, $zero
	move	$s1, $zero
.LBB6_268:                              # %if.end616
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s6, $t8
	move	$s7, $ra
	ld.d	$a0, $s5, 48
	beqz	$a0, .LBB6_270
# %bb.269:                              # %if.then620
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$a1, $a2, 9, 9
	st.w	$a1, $a0, 68
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 72
.LBB6_270:                              # %if.end627
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s5, 32
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 96
	st.w	$s2, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$ra, $s7
	move	$t8, $s6
	move	$s6, $s2
.LBB6_271:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	lu12i.w	$t3, 3
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB6_272:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ori	$s2, $zero, 30
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	b	.LBB6_15
.LBB6_273:                              # %if.then609
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	b	.LBB6_288
.LBB6_274:                              # %cond.false1791
                                        #   in Loop: Header=BB6_16 Depth=1
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
.LBB6_275:                              # %cond.end1797
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a1, $a0
	ld.w	$a3, $s5, 16
	st.d	$a0, $s5, 32
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 96
	andi	$a4, $a3, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$ra, $s7
	move	$t8, $s6
	move	$t3, $s2
	move	$s7, $s8
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ori	$s2, $zero, 30
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
.LBB6_276:                              # %if.end1801
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$a4, .LBB6_278
# %bb.277:                              # %land.lhs.true1805
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 24
	sltui	$a2, $a2, 1
	revb.2w	$a4, $fp
	bstrpick.d	$a4, $a4, 31, 0
	ld.d	$a5, $s5, 32
	masknez	$a6, $fp, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a6
	bne	$a2, $a5, .LBB6_290
.LBB6_278:                              #   in Loop: Header=BB6_16 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	move	$s8, $s0
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
.LBB6_279:                              # %if.end1833
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3919
	st.w	$a2, $s5, 8
.LBB6_280:                              # %sw.bb1835
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$a3, .LBB6_415
# %bb.281:                              # %land.lhs.true1838
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 24
	beqz	$a2, .LBB6_415
# %bb.282:                              # %while.cond1843.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	ori	$a3, $zero, 31
	bltu	$a3, $a2, .LBB6_285
.LBB6_283:                              # %do.body1847
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s4, .LBB6_381
# %bb.284:                              # %if.end1851
                                        #   in Loop: Header=BB6_283 Depth=2
	move	$a3, $a2
	ld.bu	$a2, $s8, 0
	addi.w	$s4, $s4, -1
	addi.d	$s0, $s8, 1
	sll.d	$a2, $a2, $a3
	add.d	$fp, $a2, $fp
	addi.d	$a2, $a3, 8
	ori	$a4, $zero, 24
	addi.w	$s1, $s1, 8
	move	$s8, $s0
	bltu	$a3, $a4, .LBB6_283
	b	.LBB6_286
.LBB6_285:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
.LBB6_286:                              # %do.end1863
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 40
	beq	$fp, $a2, .LBB6_419
# %bb.287:                              # %if.then1868
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	addi.d	$a2, $a2, %pc_lo12(.L.str.18)
.LBB6_288:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$a2, $a0, 48
.LBB6_289:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3921
	st.w	$a2, $s5, 8
	b	.LBB6_15
.LBB6_290:                              # %if.then1826
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	st.d	$a2, $a0, 48
	ori	$a2, $t3, 3921
	st.w	$a2, $s5, 8
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	b	.LBB6_15
.LBB6_291:                              # %if.end1267
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$a0, $s7, 3911
	st.w	$a0, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$ra, $s6
	move	$t3, $s7
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$s7, $s2
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ori	$s2, $zero, 30
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $s0, .LBB6_385
.LBB6_292:                              # %sw.bb1273
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3912
	st.w	$a2, $s5, 8
.LBB6_293:                              # %sw.bb1275
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $zero, 6
	bltu	$s4, $a2, .LBB6_298
# %bb.294:                              # %sw.bb1275
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $zero, 258
	bltu	$ra, $a2, .LBB6_298
# %bb.295:                              # %do.body1282
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s2, $s7
	move	$s7, $t3
	st.d	$t8, $a0, 24
	st.w	$ra, $a0, 32
	st.d	$s8, $a0, 0
	st.w	$s4, $a0, 8
	st.d	$fp, $s5, 80
	st.w	$s1, $s5, 88
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inflate_fast)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $a0, 24
	ld.w	$ra, $a0, 32
	ld.d	$s0, $a0, 0
	ld.w	$s4, $a0, 8
	ld.d	$fp, $s5, 80
	ld.w	$a1, $s5, 8
	ld.w	$s1, $s5, 88
	move	$a2, $s6
	bne	$a1, $s6, .LBB6_297
# %bb.296:                              # %if.then1303
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	stptr.w	$a1, $s5, 7148
.LBB6_297:                              #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	move	$t3, $s7
	move	$s7, $s2
	move	$s6, $a2
	ori	$s2, $zero, 30
	b	.LBB6_15
.LBB6_298:                              # %if.end1305
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 120
	stptr.w	$zero, $s5, 7148
	ld.d	$a6, $s5, 104
	addi.w	$a3, $zero, -1
	sll.w	$a2, $a3, $a2
	andn	$a4, $fp, $a2
	addi.w	$a4, $a4, 0
	alsl.d	$t0, $a4, $a6, 2
	ld.bu	$a5, $t0, 1
	addi.w	$a7, $s1, 0
	bgeu	$a7, $a5, .LBB6_302
# %bb.299:                              # %do.body1322.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	nor	$t1, $a2, $zero
	move	$a4, $s1
	move	$a2, $s4
	move	$t2, $s8
.LBB6_300:                              # %do.body1322
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB6_383
# %bb.301:                              # %if.end1326
                                        #   in Loop: Header=BB6_300 Depth=2
	ld.bu	$a5, $t2, 0
	sll.d	$a5, $a5, $a7
	add.d	$fp, $a5, $fp
	and	$a5, $t1, $fp
	addi.w	$a5, $a5, 0
	alsl.d	$t0, $a5, $a6, 2
	ld.bu	$a5, $t0, 1
	addi.w	$a2, $a2, -1
	addi.d	$s0, $t2, 1
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 8
	move	$t2, $s0
	bltu	$a7, $a5, .LBB6_300
	b	.LBB6_303
.LBB6_302:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
	move	$a2, $s4
	move	$a4, $s1
.LBB6_303:                              # %for.end1336.loopexit
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a7, $a5
	ld.bu	$t3, $t0, 0
	ld.hu	$t0, $t0, 2
	addi.d	$t1, $t3, -1
	ori	$t2, $zero, 14
	bltu	$t2, $t1, .LBB6_308
# %bb.304:                              # %for.cond1346.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$s6, $t8
	add.d	$t1, $a7, $t3
	sll.w	$t1, $a3, $t1
	andn	$t2, $fp, $t1
	srl.w	$t2, $t2, $a7
	add.d	$t2, $t2, $t0
	bstrpick.d	$t2, $t2, 31, 0
	alsl.d	$t6, $t2, $a6, 2
	ld.bu	$t4, $t6, 1
	add.d	$t2, $a7, $t4
	addi.w	$t3, $a4, 0
	bgeu	$t3, $t2, .LBB6_309
# %bb.305:                              # %do.body1374.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	nor	$t5, $t1, $zero
	move	$t2, $a4
	move	$t1, $a2
	move	$t8, $s0
.LBB6_306:                              # %do.body1374
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t1, .LBB6_416
# %bb.307:                              # %if.end1378
                                        #   in Loop: Header=BB6_306 Depth=2
	ld.bu	$t4, $t8, 0
	sll.d	$t4, $t4, $t3
	add.d	$fp, $t4, $fp
	and	$t4, $fp, $t5
	srl.w	$t4, $t4, $a7
	add.d	$t4, $t4, $t0
	bstrpick.d	$t4, $t4, 31, 0
	alsl.d	$t6, $t4, $a6, 2
	ld.bu	$t4, $t6, 1
	addi.w	$t1, $t1, -1
	addi.d	$t7, $t8, 1
	addi.d	$t3, $t3, 8
	add.d	$s1, $a7, $t4
	addi.d	$t2, $t2, 8
	move	$t8, $t7
	bltu	$t3, $s1, .LBB6_306
	b	.LBB6_310
.LBB6_308:                              #   in Loop: Header=BB6_16 Depth=1
	move	$a7, $zero
	b	.LBB6_311
.LBB6_309:                              #   in Loop: Header=BB6_16 Depth=1
	move	$t7, $s0
	move	$t1, $a2
	move	$t2, $a4
.LBB6_310:                              # %do.body1389
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.hu	$t0, $t6, 2
	ld.bu	$t3, $t6, 0
	srl.d	$fp, $fp, $a5
	sub.d	$a4, $t2, $a7
	move	$s0, $t7
	move	$a2, $t1
	move	$a5, $t4
	move	$t8, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
.LBB6_311:                              # %do.body1404
                                        #   in Loop: Header=BB6_16 Depth=1
	srl.d	$fp, $fp, $a5
	sub.w	$s1, $a4, $a5
	add.d	$a4, $a7, $a5
	stptr.w	$a4, $s5, 7148
	st.w	$t0, $s5, 92
	beqz	$t3, .LBB6_365
# %bb.312:                              # %if.end1427
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a4, $t3, 32
	bnez	$a4, .LBB6_367
# %bb.313:                              # %if.end1435
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a3, $t3, 64
	bnez	$a3, .LBB6_368
# %bb.314:                              # %if.end1443
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a3, $t3, 15
	st.w	$a3, $s5, 100
	lu12i.w	$t3, 3
	ori	$a4, $t3, 3913
	st.w	$a4, $s5, 8
	move	$s8, $s0
	move	$s4, $a2
	bnez	$a3, .LBB6_26
.LBB6_315:                              # %sw.bb1449.if.end1494_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a6, $s5, 92
.LBB6_316:                              # %if.end1494
                                        #   in Loop: Header=BB6_16 Depth=1
	stptr.w	$a6, $s5, 7152
	ori	$a2, $t3, 3914
	st.w	$a2, $s5, 8
.LBB6_317:                              # %sw.bb1497
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.wu	$a2, $s5, 124
	ld.d	$a5, $s5, 112
	addi.d	$a7, $zero, -1
	sll.w	$a2, $a7, $a2
	andn	$a3, $fp, $a2
	addi.w	$a3, $a3, 0
	alsl.d	$a6, $a3, $a5, 2
	ld.bu	$a4, $a6, 1
	addi.w	$t0, $s1, 0
	bgeu	$t0, $a4, .LBB6_321
# %bb.318:                              # %do.body1513.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	nor	$t1, $a2, $zero
	move	$a3, $s1
	move	$a2, $s4
	move	$t2, $s8
.LBB6_319:                              # %do.body1513
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB6_383
# %bb.320:                              # %if.end1517
                                        #   in Loop: Header=BB6_319 Depth=2
	ld.bu	$a4, $t2, 0
	sll.d	$a4, $a4, $t0
	add.d	$fp, $a4, $fp
	and	$a4, $t1, $fp
	addi.w	$a4, $a4, 0
	alsl.d	$a6, $a4, $a5, 2
	ld.bu	$a4, $a6, 1
	addi.w	$a2, $a2, -1
	addi.d	$s0, $t2, 1
	addi.d	$t0, $t0, 8
	addi.d	$a3, $a3, 8
	move	$t2, $s0
	bltu	$t0, $a4, .LBB6_319
	b	.LBB6_322
.LBB6_321:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
	move	$a2, $s4
	move	$a3, $s1
.LBB6_322:                              # %for.end1527
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.bu	$t2, $a6, 0
	ld.hu	$a6, $a6, 2
	ori	$t0, $zero, 16
	bgeu	$t2, $t0, .LBB6_327
# %bb.323:                              # %for.cond1534.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	add.d	$t0, $a4, $t2
	sll.w	$a7, $a7, $t0
	andn	$t0, $fp, $a7
	srl.w	$t0, $t0, $a4
	add.d	$t0, $t0, $a6
	bstrpick.d	$t0, $t0, 31, 0
	alsl.d	$t3, $t0, $a5, 2
	ld.bu	$t1, $t3, 1
	add.d	$t0, $a4, $t1
	addi.w	$t2, $a3, 0
	bgeu	$t2, $t0, .LBB6_328
# %bb.324:                              # %do.body1562.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	nor	$t4, $a7, $zero
	move	$t0, $a3
	move	$a7, $a2
	move	$t6, $s0
.LBB6_325:                              # %do.body1562
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a7, .LBB6_390
# %bb.326:                              # %if.end1566
                                        #   in Loop: Header=BB6_325 Depth=2
	ld.bu	$t1, $t6, 0
	sll.d	$t1, $t1, $t2
	add.d	$fp, $t1, $fp
	and	$t1, $fp, $t4
	srl.w	$t1, $t1, $a4
	add.d	$t1, $t1, $a6
	bstrpick.d	$t1, $t1, 31, 0
	alsl.d	$t3, $t1, $a5, 2
	ld.bu	$t1, $t3, 1
	addi.w	$a7, $a7, -1
	addi.d	$t5, $t6, 1
	addi.d	$t2, $t2, 8
	add.d	$t7, $a4, $t1
	addi.d	$t0, $t0, 8
	move	$t6, $t5
	bltu	$t2, $t7, .LBB6_325
	b	.LBB6_329
.LBB6_327:                              # %for.end1527.do.body1592_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3052
	ldx.w	$a5, $s5, $a5
	b	.LBB6_330
.LBB6_328:                              #   in Loop: Header=BB6_16 Depth=1
	move	$t5, $s0
	move	$a7, $a2
	move	$t0, $a3
.LBB6_329:                              # %do.body1577
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.hu	$a6, $t3, 2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3052
	ldx.w	$a2, $s5, $a2
	ld.bu	$t2, $t3, 0
	srl.d	$fp, $fp, $a4
	sub.d	$a3, $t0, $a4
	add.d	$a5, $a2, $a4
	move	$s0, $t5
	move	$a2, $a7
	move	$a4, $t1
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t6, $s5, 152
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$t3, 3
.LBB6_330:                              # %do.body1592
                                        #   in Loop: Header=BB6_16 Depth=1
	srl.d	$fp, $fp, $a4
	sub.w	$s1, $a3, $a4
	add.d	$a3, $a5, $a4
	andi	$a4, $t2, 64
	stptr.w	$a3, $s5, 7148
	bnez	$a4, .LBB6_337
# %bb.331:                              # %if.end1613
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$a6, $s5, 96
	andi	$a3, $t2, 15
	st.w	$a3, $s5, 100
	ori	$a4, $t3, 3915
	st.w	$a4, $s5, 8
	move	$s8, $s0
	move	$s4, $a2
.LBB6_332:                              # %sw.bb1621
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$a3, .LBB6_341
# %bb.333:                              # %while.cond1626.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.w	$a2, $s1, 0
	bgeu	$a2, $a3, .LBB6_339
# %bb.334:                              # %do.body1631.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a4, $s1
	move	$a2, $s4
	move	$a6, $s8
.LBB6_335:                              # %do.body1631
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB6_388
# %bb.336:                              # %if.end1635
                                        #   in Loop: Header=BB6_335 Depth=2
	ld.bu	$a7, $a6, 0
	addi.w	$a2, $a2, -1
	addi.d	$a5, $a6, 1
	sll.d	$a6, $a7, $a4
	addi.w	$a4, $a4, 8
	add.d	$fp, $a6, $fp
	move	$a6, $a5
	bltu	$a4, $a3, .LBB6_335
	b	.LBB6_340
.LBB6_337:                              # %if.then1610
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a3, %pc_hi20(.L.str.15)
	addi.d	$a3, $a3, %pc_lo12(.L.str.15)
	st.d	$a3, $a0, 48
.LBB6_338:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a3, $t3, 3921
	b	.LBB6_366
.LBB6_339:                              #   in Loop: Header=BB6_16 Depth=1
	move	$a5, $s8
	move	$a2, $s4
	move	$a4, $s1
.LBB6_340:                              # %do.end1647
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a6, $s5, 96
	addi.d	$a7, $zero, -1
	sll.w	$a7, $a7, $a3
	andn	$a7, $fp, $a7
	add.d	$a6, $a6, $a7
	lu12i.w	$a7, 1
	ori	$a7, $a7, 3052
	ldx.w	$a7, $s5, $a7
	st.w	$a6, $s5, 96
	srl.d	$fp, $fp, $a3
	sub.w	$s1, $a4, $a3
	add.d	$a3, $a7, $a3
	stptr.w	$a3, $s5, 7148
	move	$s8, $a5
	move	$s4, $a2
.LBB6_341:                              # %if.end1666
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3916
	st.w	$a2, $s5, 8
.LBB6_342:                              # %sw.bb1668
                                        #   in Loop: Header=BB6_16 Depth=1
	beqz	$ra, .LBB6_414
# %bb.343:                              # %if.end1672
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 96
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a3, $a3, $ra
	bgeu	$a3, $a2, .LBB6_349
# %bb.344:                              # %if.then1677
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a4, $s5, 64
	sub.w	$a2, $a2, $a3
	bgeu	$a4, $a2, .LBB6_350
# %bb.345:                              # %if.then1682
                                        #   in Loop: Header=BB6_16 Depth=1
	ldptr.w	$a3, $s5, 7144
	beqz	$a3, .LBB6_350
# %bb.346:                              # %if.then1684
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
.LBB6_347:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$a2, $a0, 48
.LBB6_348:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3921
	b	.LBB6_13
.LBB6_349:                              # %if.else1710
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 92
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a6, $t8, $a2
	move	$a2, $a3
	b	.LBB6_354
.LBB6_350:                              # %if.end1688
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a3, $s5, 68
	bgeu	$a3, $a2, .LBB6_352
# %bb.351:                              # %if.then1691
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a4, $s5, 60
	sub.w	$a2, $a2, $a3
	sub.w	$a4, $a4, $a2
	b	.LBB6_353
.LBB6_352:                              # %if.else1697
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.w	$a4, $a3, $a2
.LBB6_353:                              # %if.end1703
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a5, $s5, 72
	ld.w	$a3, $s5, 92
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a6, $a5, $a4
	sltu	$a4, $a2, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
.LBB6_354:                              # %if.end1715
                                        #   in Loop: Header=BB6_16 Depth=1
	sltu	$a4, $a2, $ra
	masknez	$a5, $ra, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
	sub.d	$a4, $a3, $a2
	addi.w	$a3, $a2, -1
	ori	$a5, $zero, 31
	st.w	$a4, $s5, 92
	bltu	$a3, $a5, .LBB6_359
# %bb.355:                              # %if.end1715
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.d	$a4, $t8, $a6
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB6_359
# %bb.356:                              # %vector.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a7, $a3, 1
	bstrpick.d	$a3, $a7, 32, 5
	slli.d	$t0, $a3, 5
	add.d	$a3, $t8, $t0
	sub.d	$a4, $a2, $t0
	add.d	$a5, $a6, $t0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t8, 16
	move	$t2, $t0
.LBB6_357:                              # %vector.body
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -32
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB6_357
# %bb.358:                              # %middle.block
                                        #   in Loop: Header=BB6_16 Depth=1
	bne	$a7, $t0, .LBB6_360
	b	.LBB6_362
.LBB6_359:                              #   in Loop: Header=BB6_16 Depth=1
	move	$a3, $t8
	move	$a4, $a2
	move	$a5, $a6
.LBB6_360:                              # %do.body1723.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a6, $a3
.LBB6_361:                              # %do.body1723
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a7, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a6, 1
	addi.w	$a4, $a4, -1
	st.b	$a7, $a6, 0
	move	$a6, $a3
	bnez	$a4, .LBB6_361
.LBB6_362:                              # %do.end1729
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a4, $s5, 92
	sub.w	$ra, $ra, $a2
	bnez	$a4, .LBB6_364
# %bb.363:                              # %if.then1733
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a2, $t3, 3912
	st.w	$a2, $s5, 8
.LBB6_364:                              #   in Loop: Header=BB6_16 Depth=1
	move	$s0, $s8
	move	$t8, $a3
	b	.LBB6_15
.LBB6_365:                              # %if.then1425
                                        #   in Loop: Header=BB6_16 Depth=1
	lu12i.w	$t3, 3
	ori	$a3, $t3, 3917
.LBB6_366:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$a3, $s5, 8
	move	$s4, $a2
	b	.LBB6_15
.LBB6_367:                              # %if.then1432
                                        #   in Loop: Header=BB6_16 Depth=1
	lu32i.d	$a3, 0
	stptr.w	$a3, $s5, 7148
	st.w	$s6, $s5, 8
	move	$s4, $a2
	lu12i.w	$t3, 3
	b	.LBB6_15
.LBB6_368:                              # %if.then1440
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a3, %pc_hi20(.L.str.14)
	addi.d	$a3, $a3, %pc_lo12(.L.str.14)
	st.d	$a3, $a0, 48
	lu12i.w	$t3, 3
	b	.LBB6_338
.LBB6_369:                              # %if.end74
                                        #   in Loop: Header=BB6_16 Depth=1
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $fp, 15
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB6_375
# %bb.370:                              # %do.body83
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a2, $s5, 56
	bstrpick.d	$a0, $fp, 7, 4
	addi.w	$a1, $a0, 8
	bnez	$a2, .LBB6_372
# %bb.371:                              # %if.then93
                                        #   in Loop: Header=BB6_16 Depth=1
	st.w	$a1, $s5, 56
	move	$a2, $a1
.LBB6_372:                              # %if.end95
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a3, $zero, 7
	bltu	$a3, $a0, .LBB6_377
# %bb.373:                              # %if.end95
                                        #   in Loop: Header=BB6_16 Depth=1
	bltu	$a2, $a1, .LBB6_377
# %bb.374:                              # %if.end105
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$a1, $zero, 256
	sll.w	$a0, $a1, $a0
	st.w	$a0, $s5, 28
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$s1, $zero
	st.d	$a0, $s5, 32
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 96
	lu12i.w	$a1, 2
	and	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	lu12i.w	$t3, 3
	ori	$a2, $t3, 3901
	masknez	$a2, $a2, $a1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s5, 8
	move	$fp, $zero
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_379
.LBB6_375:                              # %if.then79
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	b	.LBB6_378
.LBB6_376:                              # %if.then1201
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	st.d	$a2, $a0, 48
	lu12i.w	$t3, 3
	b	.LBB6_348
.LBB6_377:                              # %if.then102
                                        #   in Loop: Header=BB6_16 Depth=1
	srli.d	$fp, $fp, 4
	addi.w	$s1, $s1, -4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
.LBB6_378:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 48
	lu12i.w	$t3, 3
	ori	$a1, $t3, 3921
	st.w	$a1, $s5, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
.LBB6_379:                              # %sw.epilog1881
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_272
.LBB6_380:                              # %if.then1081
                                        #   in Loop: Header=BB6_16 Depth=1
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	st.d	$a2, $a0, 48
	lu12i.w	$t3, 3
	b	.LBB6_289
.LBB6_381:
	move	$s4, $zero
	b	.LBB6_385
.LBB6_382:
	move	$s4, $zero
	move	$s8, $a2
	b	.LBB6_385
.LBB6_383:                              # %do.body1882.loopexit2428
	bstrpick.d	$a2, $s4, 31, 0
	alsl.w	$s1, $s4, $s1, 3
	b	.LBB6_389
.LBB6_384:
	move	$s4, $zero
	move	$s8, $a3
.LBB6_385:                              # %do.body1882
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
.LBB6_386:                              # %do.body1882
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB6_394
.LBB6_387:                              # %do.body1882.loopexit2425
	move	$s4, $zero
	bstrpick.d	$a2, $t1, 31, 0
	alsl.w	$s1, $t1, $s1, 3
	add.d	$s8, $t2, $a2
	b	.LBB6_392
.LBB6_388:                              # %do.body1882.loopexit2426
	alsl.w	$s1, $s4, $s1, 3
	bstrpick.d	$a2, $s4, 31, 0
.LBB6_389:                              # %do.body1882
	add.d	$s8, $s8, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s4, $zero
	b	.LBB6_394
.LBB6_390:                              # %do.body1882.loopexit2427
	move	$s4, $zero
	bstrpick.d	$a4, $a2, 31, 0
	alsl.w	$s1, $a2, $a3, 3
	add.d	$s8, $s0, $a4
	b	.LBB6_392
.LBB6_391:
	move	$s4, $zero
	move	$s1, $a7
.LBB6_392:                              # %do.body1882
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
.LBB6_393:                              # %do.body1882
	lu12i.w	$t3, 3
.LBB6_394:                              # %do.body1882
	st.d	$t8, $a0, 24
	st.w	$ra, $a0, 32
	ld.w	$a2, $s5, 60
	st.d	$s8, $a0, 0
	st.w	$s4, $a0, 8
	st.d	$fp, $s5, 80
	st.w	$s1, $s5, 88
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a2, .LBB6_398
.LBB6_395:                              # %if.then1908
	move	$fp, $t3
	sub.w	$a2, $s0, $ra
	move	$a1, $t8
	pcaddu18i	$ra, %call36(updatewindow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_403
# %bb.396:                              # %if.then1914
	ori	$a0, $fp, 3922
	st.w	$a0, $s5, 8
.LBB6_397:                              # %cleanup.loopexit
	addi.w	$s3, $zero, -4
	b	.LBB6_411
.LBB6_398:                              # %lor.lhs.false1893
	beq	$s0, $ra, .LBB6_402
# %bb.399:                              # %land.lhs.true1897
	ld.w	$a2, $s5, 8
	ori	$a3, $t3, 3920
	bltu	$a3, $a2, .LBB6_402
# %bb.400:                              # %land.lhs.true1901
	ori	$a3, $zero, 4
	bne	$a1, $a3, .LBB6_395
# %bb.401:                              # %land.lhs.true1901
	ori	$a3, $t3, 3917
	bgeu	$a3, $a2, .LBB6_395
.LBB6_402:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_404
.LBB6_403:                              # %if.then1908.if.end1917_crit_edge
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s4, $a0, 8
	ld.w	$ra, $a0, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	move	$t3, $fp
.LBB6_404:                              # %if.end1917
	sub.d	$a3, $s7, $s4
	ld.d	$a4, $a0, 16
	sub.w	$a2, $s0, $ra
	bstrpick.d	$a3, $a3, 31, 0
	ld.d	$a5, $a0, 40
	add.d	$a3, $a4, $a3
	st.d	$a3, $a0, 16
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a4, $a5, $a3
	st.d	$a4, $a0, 40
	ld.d	$a4, $s5, 40
	ld.bu	$a5, $s5, 16
	add.d	$a4, $a4, $a3
	andi	$a5, $a5, 4
	st.d	$a4, $s5, 40
	beqz	$a5, .LBB6_410
# %bb.405:                              # %if.end1917
	beq	$s0, $ra, .LBB6_410
# %bb.406:                              # %if.then1935
	move	$s2, $t3
	move	$fp, $ra
	ld.w	$a4, $s5, 24
	ld.d	$a1, $a0, 24
	ld.d	$a0, $s5, 32
	sub.d	$a1, $a1, $a3
	beqz	$a4, .LBB6_408
# %bb.407:                              # %cond.true1938
	pcaddu18i	$ra, %call36(crc32)
	jirl	$ra, $ra, 0
	b	.LBB6_409
.LBB6_408:                              # %cond.false1945
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
.LBB6_409:                              # %cond.end1952
	move	$a1, $a0
	st.d	$a0, $s5, 32
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, 96
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$ra, $fp
	move	$t3, $s2
.LBB6_410:                              # %if.end1956
	ld.w	$a2, $s5, 12
	ld.w	$a3, $s5, 88
	ld.w	$a4, $s5, 8
	sltu	$a2, $zero, $a2
	slli.d	$a2, $a2, 6
	add.d	$a2, $a2, $a3
	xor	$a3, $a4, $s6
	sltui	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	add.d	$a2, $a2, $a3
	ori	$a3, $t3, 3911
	xor	$a3, $a4, $a3
	sltui	$a3, $a3, 1
	ori	$a5, $t3, 3906
	xor	$a4, $a4, $a5
	sltui	$a4, $a4, 1
	or	$a3, $a3, $a4
	slli.d	$a3, $a3, 8
	add.d	$a2, $a2, $a3
	st.w	$a2, $a0, 88
	xor	$a0, $s7, $s4
	sltui	$a0, $a0, 1
	xor	$a2, $s0, $ra
	sltui	$a2, $a2, 1
	addi.d	$a1, $a1, -4
	sltui	$a1, $a1, 1
	sltui	$a3, $s1, 1
	masknez	$a4, $s1, $a3
	addi.w	$a5, $zero, -5
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	maskeqz	$a4, $a3, $a1
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s1, $a2
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a1
	or	$s3, $a4, $a0
.LBB6_411:                              # %cleanup
	move	$a0, $s3
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB6_412:
	move	$s4, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $a6
	b	.LBB6_394
.LBB6_413:                              # %if.end486.do.body1882.loopexit3792_crit_edge
	add.d	$s8, $s8, $s0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$t3, $s7
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_394
.LBB6_414:
	move	$ra, $zero
	b	.LBB6_385
.LBB6_415:
	move	$s0, $s8
	b	.LBB6_420
.LBB6_416:                              # %do.body1882.loopexit2430
	move	$s4, $zero
	bstrpick.d	$a3, $a2, 31, 0
	alsl.w	$s1, $a2, $a4, 3
	add.d	$s8, $s0, $a3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$t8, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_393
.LBB6_417:                              # %do.body676
	st.d	$t8, $a0, 24
	st.w	$ra, $a0, 32
	st.d	$s8, $a0, 0
	st.w	$s4, $a0, 8
	st.d	$fp, $s5, 80
	st.w	$s1, $s5, 88
	ori	$s3, $zero, 2
	b	.LBB6_411
.LBB6_418:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$t3, 3
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_394
.LBB6_419:
	move	$fp, $zero
	move	$s1, $zero
.LBB6_420:                              # %if.end1875
	ori	$a2, $t3, 3920
	st.w	$a2, $s5, 8
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $s0
	b	.LBB6_394
.LBB6_421:                              # %do.body1882.loopexit3133
	ori	$a2, $zero, 1
	b	.LBB6_386
.LBB6_422:
	move	$s1, $fp
	b	.LBB6_385
.LBB6_423:                              # %do.body751
	srli.d	$fp, $fp, 3
	addi.d	$s1, $s1, -3
	move	$s8, $s0
	b	.LBB6_385
.Lfunc_end6:
	.size	inflate, .Lfunc_end6-inflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_35-.LJTI6_0
	.word	.LBB6_50-.LJTI6_0
	.word	.LBB6_51-.LJTI6_0
	.word	.LBB6_214-.LJTI6_0
	.word	.LBB6_225-.LJTI6_0
	.word	.LBB6_242-.LJTI6_0
	.word	.LBB6_259-.LJTI6_0
	.word	.LBB6_32-.LJTI6_0
	.word	.LBB6_61-.LJTI6_0
	.word	.LBB6_63-.LJTI6_0
	.word	.LBB6_64-.LJTI6_0
	.word	.LBB6_36-.LJTI6_0
	.word	.LBB6_74-.LJTI6_0
	.word	.LBB6_75-.LJTI6_0
	.word	.LBB6_40-.LJTI6_0
	.word	.LBB6_57-.LJTI6_0
	.word	.LBB6_30-.LJTI6_0
	.word	.LBB6_292-.LJTI6_0
	.word	.LBB6_293-.LJTI6_0
	.word	.LBB6_25-.LJTI6_0
	.word	.LBB6_317-.LJTI6_0
	.word	.LBB6_31-.LJTI6_0
	.word	.LBB6_342-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_53-.LJTI6_0
	.word	.LBB6_58-.LJTI6_0
	.word	.LBB6_421-.LJTI6_0
	.word	.LBB6_394-.LJTI6_0
	.word	.LBB6_397-.LJTI6_0
.LJTI6_1:
	.word	.LBB6_150-.LJTI6_1
	.word	.LBB6_70-.LJTI6_1
	.word	.LBB6_148-.LJTI6_1
	.word	.LBB6_149-.LJTI6_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function updatewindow
	.type	updatewindow,@function
updatewindow:                           # @updatewindow
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$a3, $a0
	ld.d	$s2, $a0, 56
	ld.d	$a0, $s2, 72
	move	$s0, $a2
	move	$fp, $a1
	bnez	$a0, .LBB7_2
# %bb.1:                                # %if.then
	ld.d	$a4, $a3, 64
	ld.wu	$a1, $s2, 56
	ld.d	$a0, $a3, 80
	ori	$s1, $zero, 1
	sll.w	$a1, $s1, $a1
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.d	$a0, $s2, 72
	beqz	$a0, .LBB7_9
.LBB7_2:                                # %if.end6
	ld.w	$a1, $s2, 60
	beqz	$a1, .LBB7_6
# %bb.3:                                # %if.end12
	bgeu	$s0, $a1, .LBB7_7
.LBB7_4:                                # %if.else
	ld.wu	$a2, $s2, 68
	sub.w	$s1, $a1, $a2
	sltu	$a1, $s1, $s0
	maskeqz	$a3, $s1, $a1
	masknez	$a1, $s0, $a1
	or	$s3, $a3, $a1
	add.d	$a0, $a0, $a2
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$a1, $fp, $a1
	bstrpick.d	$a2, $s3, 31, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s0, .LBB7_10
# %bb.5:                                # %if.then37
	ld.d	$a0, $s2, 72
	sub.d	$s0, $s0, $s3
	bstrpick.d	$a2, $s0, 31, 0
	sub.d	$a1, $fp, $a2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 60
	move	$s1, $zero
	st.w	$s0, $s2, 68
	b	.LBB7_8
.LBB7_6:                                # %if.then8
	ld.wu	$a1, $s2, 56
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	st.w	$a1, $s2, 60
	st.d	$zero, $s2, 64
	bltu	$s0, $a1, .LBB7_4
.LBB7_7:                                # %if.then15
	bstrpick.d	$a2, $a1, 31, 0
	sub.d	$a1, $fp, $a2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 60
	move	$s1, $zero
	st.w	$zero, $s2, 68
.LBB7_8:                                # %cleanup
	st.w	$a0, $s2, 64
.LBB7_9:                                # %cleanup
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_10:                               # %if.else46
	ld.w	$a0, $s2, 68
	ld.w	$a1, $s2, 60
	add.w	$a2, $a0, $s3
	ld.w	$a0, $s2, 64
	xor	$a3, $a2, $a1
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	st.w	$a2, $s2, 68
	move	$s1, $zero
	bgeu	$a0, $a1, .LBB7_9
# %bb.11:                               # %if.then59
	add.d	$a0, $a0, $s3
	b	.LBB7_8
.Lfunc_end7:
	.size	updatewindow, .Lfunc_end7-updatewindow
                                        # -- End function
	.globl	inflateEnd                      # -- Begin function inflateEnd
	.p2align	5
	.type	inflateEnd,@function
inflateEnd:                             # @inflateEnd
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -2
	beqz	$a0, .LBB8_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB8_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a3, $a0, 72
	beqz	$a3, .LBB8_5
# %bb.3:                                # %if.end.i
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB8_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $a1, 0
	beq	$a4, $a0, .LBB8_6
.LBB8_5:                                # %cleanup
	move	$a0, $a2
	ret
.LBB8_6:                                # %inflateStateCheck.exit
	ld.w	$a4, $a1, 8
	lu12i.w	$a5, -4
	ori	$a5, $a5, 204
	add.w	$a4, $a4, $a5
	ori	$a5, $zero, 31
	bltu	$a5, $a4, .LBB8_5
# %bb.7:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB8_9
# %bb.8:                                # %if.then2
	ld.d	$a1, $a0, 80
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $a2
	jirl	$ra, $a3, 0
	move	$a0, $fp
	ld.d	$a3, $fp, 72
	ld.d	$a1, $fp, 56
.LBB8_9:                                # %if.end4
	ld.d	$a2, $a0, 80
	move	$fp, $a0
	move	$a0, $a2
	jirl	$ra, $a3, 0
	move	$a2, $zero
	st.d	$zero, $fp, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $a2
	ret
.Lfunc_end8:
	.size	inflateEnd, .Lfunc_end8-inflateEnd
                                        # -- End function
	.globl	inflateGetDictionary            # -- Begin function inflateGetDictionary
	.p2align	5
	.type	inflateGetDictionary,@function
inflateGetDictionary:                   # @inflateGetDictionary
# %bb.0:                                # %entry
	move	$a3, $a0
	addi.w	$a0, $zero, -2
	beqz	$a3, .LBB9_13
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB9_13
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a4, $a3, 72
	beqz	$a4, .LBB9_13
# %bb.3:                                # %if.end.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a3, 56
	beqz	$fp, .LBB9_12
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $fp, 0
	bne	$a4, $a3, .LBB9_12
# %bb.5:                                # %inflateStateCheck.exit
	ld.w	$a3, $fp, 8
	lu12i.w	$a4, -4
	ori	$a4, $a4, 204
	add.w	$a3, $a3, $a4
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB9_12
# %bb.6:                                # %if.end
	beqz	$a1, .LBB9_9
# %bb.7:                                # %if.end
	ld.w	$a0, $fp, 64
	beqz	$a0, .LBB9_9
# %bb.8:                                # %if.then3
	ld.d	$a3, $fp, 72
	ld.wu	$a4, $fp, 68
	add.d	$a3, $a3, $a4
	sub.d	$a0, $a0, $a4
	bstrpick.d	$a4, $a0, 31, 0
	move	$a0, $a1
	move	$s1, $a1
	move	$a1, $a3
	move	$s0, $a2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 64
	ld.wu	$a2, $fp, 68
	ld.d	$a1, $fp, 72
	add.d	$a0, $s1, $a0
	sub.d	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s0
.LBB9_9:                                # %if.end15
	beqz	$a2, .LBB9_11
# %bb.10:                               # %if.then18
	ld.w	$a1, $fp, 64
	move	$a0, $zero
	st.w	$a1, $a2, 0
	b	.LBB9_12
.LBB9_11:
	move	$a0, $zero
.LBB9_12:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB9_13:                               # %cleanup
	ret
.Lfunc_end9:
	.size	inflateGetDictionary, .Lfunc_end9-inflateGetDictionary
                                        # -- End function
	.globl	inflateSetDictionary            # -- Begin function inflateSetDictionary
	.p2align	5
	.type	inflateSetDictionary,@function
inflateSetDictionary:                   # @inflateSetDictionary
# %bb.0:                                # %entry
	move	$a3, $a0
	addi.w	$a0, $zero, -2
	beqz	$a3, .LBB10_15
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB10_15
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a4, $a3, 72
	beqz	$a4, .LBB10_15
# %bb.3:                                # %if.end.i
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a3, 56
	beqz	$s1, .LBB10_14
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $s1, 0
	bne	$a4, $a3, .LBB10_14
# %bb.5:                                # %inflateStateCheck.exit
	ld.w	$a4, $s1, 8
	lu12i.w	$a5, -4
	ori	$a5, $a5, 204
	add.w	$a5, $a4, $a5
	ori	$a6, $zero, 31
	bltu	$a6, $a5, .LBB10_14
# %bb.6:                                # %if.end
	ld.w	$a5, $s1, 16
	beqz	$a5, .LBB10_8
# %bb.7:                                # %land.lhs.true
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3902
	beq	$a4, $a5, .LBB10_9
	b	.LBB10_14
.LBB10_8:                               # %if.end4
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3902
	bne	$a4, $a0, .LBB10_10
.LBB10_9:                               # %if.then7
	move	$s2, $a3
	move	$a0, $zero
	move	$fp, $a1
	move	$a1, $zero
	move	$s0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(adler32)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$a4, $s1, 32
	move	$a3, $s2
	bne	$a0, $a4, .LBB10_12
.LBB10_10:                              # %if.end13
	bstrpick.d	$a0, $a2, 31, 0
	add.d	$a1, $a1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(updatewindow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_13
# %bb.11:                               # %if.then16
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3922
	st.w	$a0, $s1, 8
	addi.w	$a0, $zero, -4
	b	.LBB10_14
.LBB10_12:
	addi.w	$a0, $zero, -3
	b	.LBB10_14
.LBB10_13:                              # %if.end18
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s1, 20
.LBB10_14:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB10_15:                              # %cleanup
	ret
.Lfunc_end10:
	.size	inflateSetDictionary, .Lfunc_end10-inflateSetDictionary
                                        # -- End function
	.globl	inflateGetHeader                # -- Begin function inflateGetHeader
	.p2align	5
	.type	inflateGetHeader,@function
inflateGetHeader:                       # @inflateGetHeader
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -2
	beqz	$a2, .LBB11_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a3, $a2, 64
	beqz	$a3, .LBB11_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a3, $a2, 72
	beqz	$a3, .LBB11_5
# %bb.3:                                # %if.end.i
	ld.d	$a3, $a2, 56
	beqz	$a3, .LBB11_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB11_6
.LBB11_5:                               # %cleanup
	ret
.LBB11_6:                               # %inflateStateCheck.exit
	ld.w	$a2, $a3, 8
	lu12i.w	$a4, -4
	ori	$a4, $a4, 204
	add.w	$a2, $a2, $a4
	ori	$a4, $zero, 31
	bltu	$a4, $a2, .LBB11_5
# %bb.7:                                # %if.end
	ld.bu	$a2, $a3, 16
	andi	$a2, $a2, 2
	beqz	$a2, .LBB11_5
# %bb.8:                                # %if.end3
	move	$a0, $zero
	st.d	$a1, $a3, 48
	st.w	$zero, $a1, 72
	ret
.Lfunc_end11:
	.size	inflateGetHeader, .Lfunc_end11-inflateGetHeader
                                        # -- End function
	.globl	inflateSync                     # -- Begin function inflateSync
	.p2align	5
	.type	inflateSync,@function
inflateSync:                            # @inflateSync
# %bb.0:                                # %entry
	addi.w	$a1, $zero, -2
	beqz	$a0, .LBB12_30
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB12_30
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a0, 72
	beqz	$a2, .LBB12_30
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a0, 56
	beqz	$a2, .LBB12_30
# %bb.4:                                # %lor.lhs.false6.i
	addi.d	$sp, $sp, -16
	ld.d	$a3, $a2, 0
	bne	$a3, $a0, .LBB12_29
# %bb.5:                                # %inflateStateCheck.exit
	ld.w	$a4, $a2, 8
	lu12i.w	$a3, -4
	ori	$a3, $a3, 204
	add.w	$a3, $a4, $a3
	ori	$a5, $zero, 31
	bltu	$a5, $a3, .LBB12_29
# %bb.6:                                # %if.end
	ld.w	$a6, $a0, 8
	bnez	$a6, .LBB12_9
# %bb.7:                                # %land.lhs.true
	ld.w	$a1, $a2, 88
	ori	$a3, $zero, 8
	bgeu	$a1, $a3, .LBB12_9
# %bb.8:
	addi.w	$a1, $zero, -5
	b	.LBB12_29
.LBB12_9:                               # %if.end4
	lu12i.w	$a3, 3
	ori	$a1, $a3, 3923
	bne	$a4, $a1, .LBB12_11
# %bb.10:                               # %if.end4.if.end20_crit_edge
	ld.w	$a1, $a2, 140
	b	.LBB12_19
.LBB12_11:                              # %if.then6
	ld.wu	$a4, $a2, 88
	ld.d	$a5, $a2, 80
	st.w	$a1, $a2, 8
	andi	$a1, $a4, 7
	sll.d	$a5, $a5, $a1
	bstrpick.d	$a1, $a4, 31, 3
	slli.w	$a1, $a1, 3
	st.d	$a5, $a2, 80
	beqz	$a1, .LBB12_17
# %bb.12:                               # %while.body.preheader
	move	$a4, $zero
	sub.d	$a1, $zero, $a1
	addi.d	$a6, $sp, 12
	.p2align	4, , 16
.LBB12_13:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	stx.b	$a5, $a4, $a6
	addi.d	$a4, $a4, 1
	addi.w	$a1, $a1, 8
	srli.d	$a5, $a5, 8
	bnez	$a1, .LBB12_13
# %bb.14:                               # %while.end
	move	$a6, $zero
	move	$a1, $zero
	st.d	$a5, $a2, 80
	st.w	$zero, $a2, 88
	addi.d	$a5, $sp, 12
	ori	$a7, $zero, 255
	ori	$t0, $zero, 4
	.p2align	4, , 16
.LBB12_15:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t1, $a6, $a5
	sltui	$t2, $t1, 1
	sltui	$t3, $a1, 2
	masknez	$t3, $a7, $t3
	xor	$t1, $t3, $t1
	sltui	$t1, $t1, 1
	addi.w	$t3, $a1, 1
	sub.w	$a1, $t0, $a1
	maskeqz	$a1, $a1, $t2
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t3, $t1
	addi.d	$a6, $a6, 1
	or	$a1, $t1, $a1
	bgeu	$a6, $a4, .LBB12_18
# %bb.16:                               # %while.body.i
                                        #   in Loop: Header=BB12_15 Depth=1
	bltu	$a1, $t0, .LBB12_15
	b	.LBB12_18
.LBB12_17:                              # %while.end.thread
	move	$a1, $zero
	st.w	$zero, $a2, 88
.LBB12_18:                              # %syncsearch.exit
	st.w	$a1, $a2, 140
	ld.w	$a6, $a0, 8
.LBB12_19:                              # %if.end20
	ld.d	$a4, $a0, 0
	move	$a5, $zero
	beqz	$a6, .LBB12_24
# %bb.20:                               # %if.end20
	ori	$a7, $zero, 3
	bltu	$a7, $a1, .LBB12_24
# %bb.21:                               # %while.body.preheader.i39
	move	$a5, $zero
	move	$a7, $zero
	bstrpick.d	$a6, $a6, 31, 0
	ori	$t0, $zero, 255
	ori	$t1, $zero, 4
	.p2align	4, , 16
.LBB12_22:                              # %while.body.i40
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t2, $a4, $a7
	sltui	$t3, $t2, 1
	sltui	$t4, $a1, 2
	masknez	$t4, $t0, $t4
	xor	$t2, $t4, $t2
	sltui	$t2, $t2, 1
	addi.w	$t4, $a1, 1
	sub.w	$a1, $t1, $a1
	maskeqz	$a1, $a1, $t3
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t4, $t2
	or	$a1, $t2, $a1
	addi.d	$a7, $a7, 1
	addi.w	$a5, $a5, 1
	bgeu	$a7, $a6, .LBB12_24
# %bb.23:                               # %while.body.i40
                                        #   in Loop: Header=BB12_22 Depth=1
	bltu	$a1, $t1, .LBB12_22
.LBB12_24:                              # %syncsearch.exit57
	st.w	$a1, $a2, 140
	ld.w	$a6, $a0, 8
	sub.d	$a6, $a6, $a5
	st.w	$a6, $a0, 8
	ld.d	$a6, $a0, 16
	bstrpick.d	$a5, $a5, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $a0, 0
	add.d	$a4, $a6, $a5
	ori	$a5, $zero, 4
	st.d	$a4, $a0, 16
	bne	$a1, $a5, .LBB12_28
# %bb.25:                               # %if.end.i6.i
	ld.d	$a5, $a0, 40
	st.d	$zero, $a2, 60
	st.w	$zero, $a2, 68
	st.d	$zero, $a2, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	ld.w	$a1, $a2, 16
	beqz	$a1, .LBB12_27
# %bb.26:                               # %if.then3.i.i
	andi	$a1, $a1, 1
	st.d	$a1, $a0, 96
.LBB12_27:                              # %inflateReset.exit
	move	$a1, $zero
	lu12i.w	$a6, 8
	st.w	$a6, $a2, 28
	addi.d	$a6, $a2, 1368
	st.d	$a6, $a2, 144
	st.d	$a6, $a2, 112
	st.d	$a6, $a2, 104
	ori	$a6, $zero, 1
	lu32i.d	$a6, -1
	stptr.d	$a6, $a2, 7144
	st.w	$zero, $a2, 20
	st.d	$zero, $a2, 48
	st.d	$zero, $a2, 80
	st.w	$zero, $a2, 88
	ori	$a3, $a3, 3903
	st.d	$a3, $a2, 8
	st.d	$a4, $a0, 16
	st.d	$a5, $a0, 40
	b	.LBB12_29
.LBB12_28:
	addi.w	$a1, $zero, -3
.LBB12_29:
	addi.d	$sp, $sp, 16
.LBB12_30:                              # %cleanup
	move	$a0, $a1
	ret
.Lfunc_end12:
	.size	inflateSync, .Lfunc_end12-inflateSync
                                        # -- End function
	.globl	inflateSyncPoint                # -- Begin function inflateSyncPoint
	.p2align	5
	.type	inflateSyncPoint,@function
inflateSyncPoint:                       # @inflateSyncPoint
# %bb.0:                                # %entry
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB13_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB13_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB13_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB13_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB13_6
.LBB13_5:                               # %cleanup
	ret
.LBB13_6:                               # %inflateStateCheck.exit
	ld.w	$a1, $a2, 8
	lu12i.w	$a3, -4
	ori	$a3, $a3, 204
	add.w	$a3, $a1, $a3
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB13_5
# %bb.7:                                # %if.end
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3905
	bne	$a1, $a0, .LBB13_9
# %bb.8:                                # %land.rhs
	ld.w	$a0, $a2, 88
	sltui	$a0, $a0, 1
	ret
.LBB13_9:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	inflateSyncPoint, .Lfunc_end13-inflateSyncPoint
                                        # -- End function
	.globl	inflateCopy                     # -- Begin function inflateCopy
	.p2align	5
	.type	inflateCopy,@function
inflateCopy:                            # @inflateCopy
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB14_6
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a3, $a1, 64
	beqz	$a3, .LBB14_6
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a4, $a1, 72
	beqz	$a4, .LBB14_6
# %bb.3:                                # %if.end.i
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a1, 56
	beqz	$fp, .LBB14_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $fp, 0
	beq	$a4, $a1, .LBB14_7
.LBB14_5:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB14_6:                               # %cleanup
	ret
.LBB14_7:                               # %inflateStateCheck.exit
	beqz	$a2, .LBB14_5
# %bb.8:                                # %inflateStateCheck.exit
	ld.w	$a4, $fp, 8
	lu12i.w	$a5, -4
	ori	$a5, $a5, 172
	add.w	$a4, $a4, $a5
	addi.w	$a5, $zero, -32
	bltu	$a4, $a5, .LBB14_5
# %bb.9:                                # %if.end
	move	$s4, $a2
	move	$s6, $a1
	ld.d	$a0, $a1, 80
	lu12i.w	$s5, 1
	ori	$s2, $s5, 3064
	ori	$a1, $zero, 1
	move	$a2, $s2
	jirl	$ra, $a3, 0
	move	$s0, $a0
	addi.w	$a0, $zero, -4
	beqz	$s0, .LBB14_5
# %bb.10:                               # %if.end5
	ld.d	$a1, $fp, 72
	beqz	$a1, .LBB14_13
# %bb.11:                               # %if.then8
	move	$s3, $a0
	ld.d	$a3, $s6, 64
	ld.wu	$a1, $fp, 56
	ld.d	$a0, $s6, 80
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
	move	$a1, $s6
	move	$s1, $a0
	bnez	$a0, .LBB14_14
# %bb.12:                               # %if.then13
	ld.d	$a2, $a1, 72
	ld.d	$a0, $a1, 80
	move	$a1, $s0
	jirl	$ra, $a2, 0
	move	$a0, $s3
	b	.LBB14_5
.LBB14_13:
	move	$s1, $zero
	move	$a1, $s6
.LBB14_14:                              # %if.end16
	ori	$a2, $zero, 112
	move	$s3, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 104
	addi.d	$a0, $fp, 1368
	st.d	$s4, $s0, 0
	bltu	$a1, $a0, .LBB14_17
# %bb.15:                               # %if.end16
	ori	$a2, $s5, 3044
	add.d	$a2, $fp, $a2
	bltu	$a2, $a1, .LBB14_17
# %bb.16:                               # %if.then23
	addi.d	$a2, $s0, 1368
	ld.d	$a3, $fp, 112
	sub.d	$a1, $a1, $a0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 104
	sub.d	$a1, $a3, $a0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 112
.LBB14_17:                              # %if.end41
	ld.d	$a1, $fp, 144
	sub.d	$a0, $a1, $a0
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 1368
	st.d	$a0, $s0, 144
	beqz	$s1, .LBB14_19
# %bb.18:                               # %if.then53
	ld.wu	$a0, $fp, 56
	ld.d	$a1, $fp, 72
	ori	$a2, $zero, 1
	sll.w	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 31, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s3, $s4
.LBB14_19:                              # %if.end57
	move	$a0, $zero
	st.d	$s1, $s0, 72
	st.d	$s0, $s3, 56
	b	.LBB14_5
.Lfunc_end14:
	.size	inflateCopy, .Lfunc_end14-inflateCopy
                                        # -- End function
	.globl	inflateUndermine                # -- Begin function inflateUndermine
	.p2align	5
	.type	inflateUndermine,@function
inflateUndermine:                       # @inflateUndermine
# %bb.0:                                # %entry
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB15_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB15_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB15_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB15_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB15_6
.LBB15_5:                               # %cleanup
	ret
.LBB15_6:                               # %inflateStateCheck.exit
	ld.w	$a1, $a2, 8
	lu12i.w	$a3, -4
	ori	$a3, $a3, 204
	add.w	$a1, $a1, $a3
	ori	$a3, $zero, 31
	bltu	$a3, $a1, .LBB15_5
# %bb.7:                                # %if.end
	ori	$a0, $zero, 1
	stptr.w	$a0, $a2, 7144
	addi.w	$a0, $zero, -3
	ret
.Lfunc_end15:
	.size	inflateUndermine, .Lfunc_end15-inflateUndermine
                                        # -- End function
	.globl	inflateValidate                 # -- Begin function inflateValidate
	.p2align	5
	.type	inflateValidate,@function
inflateValidate:                        # @inflateValidate
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -2
	beqz	$a2, .LBB16_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a3, $a2, 64
	beqz	$a3, .LBB16_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a3, $a2, 72
	beqz	$a3, .LBB16_5
# %bb.3:                                # %if.end.i
	ld.d	$a3, $a2, 56
	beqz	$a3, .LBB16_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB16_6
.LBB16_5:                               # %cleanup
	ret
.LBB16_6:                               # %inflateStateCheck.exit
	ld.w	$a2, $a3, 8
	lu12i.w	$a4, -4
	ori	$a4, $a4, 204
	add.w	$a2, $a2, $a4
	ori	$a4, $zero, 31
	bltu	$a4, $a2, .LBB16_5
# %bb.7:                                # %if.end
	move	$a0, $zero
	ld.wu	$a2, $a3, 16
	sltu	$a1, $zero, $a1
	addi.w	$a4, $zero, -5
	lu32i.d	$a4, 0
	and	$a2, $a2, $a4
	slli.d	$a1, $a1, 2
	or	$a1, $a2, $a1
	st.w	$a1, $a3, 16
	ret
.Lfunc_end16:
	.size	inflateValidate, .Lfunc_end16-inflateValidate
                                        # -- End function
	.globl	inflateMark                     # -- Begin function inflateMark
	.p2align	5
	.type	inflateMark,@function
inflateMark:                            # @inflateMark
# %bb.0:                                # %entry
	move	$a1, $a0
	lu12i.w	$a0, -16
	beqz	$a1, .LBB17_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB17_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB17_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB17_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB17_6
.LBB17_5:                               # %cleanup
	ret
.LBB17_6:                               # %inflateStateCheck.exit
	ld.w	$a1, $a2, 8
	lu12i.w	$a3, -4
	ori	$a3, $a3, 204
	add.w	$a3, $a1, $a3
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB17_5
# %bb.7:                                # %if.end
	ldptr.w	$a0, $a2, 7148
	lu12i.w	$a3, 3
	ori	$a4, $a3, 3916
	slli.d	$a0, $a0, 16
	beq	$a1, $a4, .LBB17_10
# %bb.8:                                # %if.end
	ori	$a3, $a3, 3907
	bne	$a1, $a3, .LBB17_11
# %bb.9:                                # %cond.true
	ld.w	$a1, $a2, 92
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	ret
.LBB17_10:                              # %cond.true6
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3056
	ldx.w	$a1, $a2, $a1
	ld.w	$a2, $a2, 92
	sub.w	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	ret
.LBB17_11:
	move	$a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end17:
	.size	inflateMark, .Lfunc_end17-inflateMark
                                        # -- End function
	.globl	inflateCodesUsed                # -- Begin function inflateCodesUsed
	.p2align	5
	.type	inflateCodesUsed,@function
inflateCodesUsed:                       # @inflateCodesUsed
# %bb.0:                                # %entry
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	beqz	$a1, .LBB18_5
# %bb.1:                                # %lor.lhs.false.i
	ld.d	$a2, $a1, 64
	beqz	$a2, .LBB18_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.d	$a2, $a1, 72
	beqz	$a2, .LBB18_5
# %bb.3:                                # %if.end.i
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB18_5
# %bb.4:                                # %lor.lhs.false6.i
	ld.d	$a3, $a2, 0
	beq	$a3, $a1, .LBB18_6
.LBB18_5:                               # %cleanup
	ret
.LBB18_6:                               # %inflateStateCheck.exit
	ld.w	$a1, $a2, 8
	lu12i.w	$a3, -4
	ori	$a3, $a3, 204
	add.w	$a1, $a1, $a3
	ori	$a3, $zero, 31
	bltu	$a3, $a1, .LBB18_5
# %bb.7:                                # %if.end
	ld.d	$a0, $a2, 144
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, -1368
	srai.d	$a0, $a0, 2
	ret
.Lfunc_end18:
	.size	inflateCodesUsed, .Lfunc_end18-inflateCodesUsed
                                        # -- End function
	.type	inflate.order,@object           # @inflate.order
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
inflate.order:
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	7                               # 0x7
	.half	9                               # 0x9
	.half	6                               # 0x6
	.half	10                              # 0xa
	.half	5                               # 0x5
	.half	11                              # 0xb
	.half	4                               # 0x4
	.half	12                              # 0xc
	.half	3                               # 0x3
	.half	13                              # 0xd
	.half	2                               # 0x2
	.half	14                              # 0xe
	.half	1                               # 0x1
	.half	15                              # 0xf
	.size	inflate.order, 38

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"incorrect header check"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"unknown compression method"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"invalid window size"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"unknown header flags set"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"header crc mismatch"
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"invalid block type"
	.size	.L.str.6, 19

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"invalid stored block lengths"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"too many length or distance symbols"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"invalid code lengths set"
	.size	.L.str.9, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"invalid bit length repeat"
	.size	.L.str.10, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"invalid code -- missing end-of-block"
	.size	.L.str.11, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"invalid literal/lengths set"
	.size	.L.str.12, 28

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"invalid distances set"
	.size	.L.str.13, 22

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"invalid literal/length code"
	.size	.L.str.14, 28

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"invalid distance code"
	.size	.L.str.15, 22

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"invalid distance too far back"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"incorrect data check"
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"incorrect length check"
	.size	.L.str.18, 23

	.type	fixedtables.lenfix,@object      # @fixedtables.lenfix
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
fixedtables.lenfix:
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	80                              # 0x50
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	16                              # 0x10
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	112                             # 0x70
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	48                              # 0x30
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	192                             # 0xc0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	96                              # 0x60
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	32                              # 0x20
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	160                             # 0xa0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	128                             # 0x80
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	64                              # 0x40
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	224                             # 0xe0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	88                              # 0x58
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	24                              # 0x18
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	144                             # 0x90
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	120                             # 0x78
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	56                              # 0x38
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	208                             # 0xd0
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	104                             # 0x68
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	40                              # 0x28
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	176                             # 0xb0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	136                             # 0x88
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	72                              # 0x48
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	240                             # 0xf0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	84                              # 0x54
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	20                              # 0x14
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	227                             # 0xe3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	116                             # 0x74
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	52                              # 0x34
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	200                             # 0xc8
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	100                             # 0x64
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	36                              # 0x24
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	168                             # 0xa8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	132                             # 0x84
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	68                              # 0x44
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	232                             # 0xe8
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	92                              # 0x5c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	152                             # 0x98
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	124                             # 0x7c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	216                             # 0xd8
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	108                             # 0x6c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	44                              # 0x2c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	184                             # 0xb8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	12                              # 0xc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	140                             # 0x8c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	76                              # 0x4c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	248                             # 0xf8
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	82                              # 0x52
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	18                              # 0x12
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	163                             # 0xa3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	114                             # 0x72
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	50                              # 0x32
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	196                             # 0xc4
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	98                              # 0x62
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	34                              # 0x22
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	164                             # 0xa4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	2                               # 0x2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	130                             # 0x82
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	66                              # 0x42
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	228                             # 0xe4
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	90                              # 0x5a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	26                              # 0x1a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	148                             # 0x94
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	58                              # 0x3a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	212                             # 0xd4
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	106                             # 0x6a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	180                             # 0xb4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	138                             # 0x8a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	244                             # 0xf4
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	86                              # 0x56
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	22                              # 0x16
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	118                             # 0x76
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	54                              # 0x36
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	204                             # 0xcc
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	102                             # 0x66
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	38                              # 0x26
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	172                             # 0xac
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	134                             # 0x86
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	70                              # 0x46
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	236                             # 0xec
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	30                              # 0x1e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	156                             # 0x9c
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	220                             # 0xdc
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	110                             # 0x6e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	46                              # 0x2e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	188                             # 0xbc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	14                              # 0xe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	252                             # 0xfc
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	81                              # 0x51
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	17                              # 0x11
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	113                             # 0x71
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	49                              # 0x31
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	194                             # 0xc2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	97                              # 0x61
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	33                              # 0x21
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	162                             # 0xa2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	1                               # 0x1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	129                             # 0x81
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	65                              # 0x41
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	226                             # 0xe2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	89                              # 0x59
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	25                              # 0x19
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	146                             # 0x92
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	121                             # 0x79
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	57                              # 0x39
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	210                             # 0xd2
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	105                             # 0x69
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	41                              # 0x29
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	178                             # 0xb2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	137                             # 0x89
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	73                              # 0x49
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	242                             # 0xf2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	85                              # 0x55
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	21                              # 0x15
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.half	258                             # 0x102
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	117                             # 0x75
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	53                              # 0x35
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	202                             # 0xca
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	101                             # 0x65
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	37                              # 0x25
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	170                             # 0xaa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	133                             # 0x85
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	69                              # 0x45
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	234                             # 0xea
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	93                              # 0x5d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	154                             # 0x9a
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	125                             # 0x7d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	218                             # 0xda
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	109                             # 0x6d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	186                             # 0xba
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	141                             # 0x8d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	77                              # 0x4d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	250                             # 0xfa
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	19                              # 0x13
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	195                             # 0xc3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	198                             # 0xc6
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	166                             # 0xa6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	230                             # 0xe6
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	91                              # 0x5b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	150                             # 0x96
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	214                             # 0xd6
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	107                             # 0x6b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	182                             # 0xb6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	139                             # 0x8b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	75                              # 0x4b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	246                             # 0xf6
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	87                              # 0x57
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	23                              # 0x17
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	119                             # 0x77
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	55                              # 0x37
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	206                             # 0xce
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	103                             # 0x67
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	39                              # 0x27
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	174                             # 0xae
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	135                             # 0x87
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	71                              # 0x47
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	238                             # 0xee
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	95                              # 0x5f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	158                             # 0x9e
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	222                             # 0xde
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	111                             # 0x6f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	47                              # 0x2f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	190                             # 0xbe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	143                             # 0x8f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	79                              # 0x4f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	254                             # 0xfe
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	80                              # 0x50
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	16                              # 0x10
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	112                             # 0x70
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	48                              # 0x30
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	193                             # 0xc1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	96                              # 0x60
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	32                              # 0x20
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	161                             # 0xa1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	128                             # 0x80
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	64                              # 0x40
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	225                             # 0xe1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	88                              # 0x58
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	24                              # 0x18
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	145                             # 0x91
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	120                             # 0x78
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	56                              # 0x38
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	209                             # 0xd1
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	104                             # 0x68
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	40                              # 0x28
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	177                             # 0xb1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	136                             # 0x88
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	72                              # 0x48
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	241                             # 0xf1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	84                              # 0x54
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	20                              # 0x14
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	227                             # 0xe3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	116                             # 0x74
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	52                              # 0x34
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	201                             # 0xc9
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	100                             # 0x64
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	36                              # 0x24
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	169                             # 0xa9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	132                             # 0x84
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	68                              # 0x44
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	233                             # 0xe9
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	92                              # 0x5c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	153                             # 0x99
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	124                             # 0x7c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	217                             # 0xd9
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	108                             # 0x6c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	44                              # 0x2c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	185                             # 0xb9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	12                              # 0xc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	140                             # 0x8c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	76                              # 0x4c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	249                             # 0xf9
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	82                              # 0x52
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	18                              # 0x12
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	163                             # 0xa3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	114                             # 0x72
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	50                              # 0x32
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	197                             # 0xc5
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	98                              # 0x62
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	34                              # 0x22
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	165                             # 0xa5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	2                               # 0x2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	130                             # 0x82
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	66                              # 0x42
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	229                             # 0xe5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	90                              # 0x5a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	26                              # 0x1a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	149                             # 0x95
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	58                              # 0x3a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	213                             # 0xd5
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	106                             # 0x6a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	181                             # 0xb5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	138                             # 0x8a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	245                             # 0xf5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	86                              # 0x56
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	22                              # 0x16
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	118                             # 0x76
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	54                              # 0x36
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	205                             # 0xcd
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	102                             # 0x66
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	38                              # 0x26
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	173                             # 0xad
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	134                             # 0x86
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	70                              # 0x46
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	237                             # 0xed
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	30                              # 0x1e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	157                             # 0x9d
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	221                             # 0xdd
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	110                             # 0x6e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	46                              # 0x2e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	189                             # 0xbd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	14                              # 0xe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	253                             # 0xfd
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	81                              # 0x51
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	17                              # 0x11
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	113                             # 0x71
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	49                              # 0x31
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	195                             # 0xc3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	97                              # 0x61
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	33                              # 0x21
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	163                             # 0xa3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	1                               # 0x1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	129                             # 0x81
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	65                              # 0x41
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	227                             # 0xe3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	89                              # 0x59
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	25                              # 0x19
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	147                             # 0x93
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	121                             # 0x79
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	57                              # 0x39
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	211                             # 0xd3
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	105                             # 0x69
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	41                              # 0x29
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	179                             # 0xb3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	137                             # 0x89
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	73                              # 0x49
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	243                             # 0xf3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	85                              # 0x55
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	21                              # 0x15
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.half	258                             # 0x102
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	117                             # 0x75
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	53                              # 0x35
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	203                             # 0xcb
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	101                             # 0x65
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	37                              # 0x25
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	171                             # 0xab
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	133                             # 0x85
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	69                              # 0x45
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	235                             # 0xeb
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	93                              # 0x5d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	155                             # 0x9b
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	125                             # 0x7d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	219                             # 0xdb
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	109                             # 0x6d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	187                             # 0xbb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	141                             # 0x8d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	77                              # 0x4d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	251                             # 0xfb
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	19                              # 0x13
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	195                             # 0xc3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	199                             # 0xc7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	167                             # 0xa7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	231                             # 0xe7
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	91                              # 0x5b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	151                             # 0x97
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	215                             # 0xd7
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	107                             # 0x6b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	183                             # 0xb7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	139                             # 0x8b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	75                              # 0x4b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	247                             # 0xf7
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	87                              # 0x57
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	23                              # 0x17
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	119                             # 0x77
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	55                              # 0x37
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	207                             # 0xcf
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	103                             # 0x67
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	39                              # 0x27
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	175                             # 0xaf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	135                             # 0x87
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	71                              # 0x47
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	239                             # 0xef
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	95                              # 0x5f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	159                             # 0x9f
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	223                             # 0xdf
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	111                             # 0x6f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	47                              # 0x2f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	191                             # 0xbf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	143                             # 0x8f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	79                              # 0x4f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	255                             # 0xff
	.size	fixedtables.lenfix, 2048

	.type	fixedtables.distfix,@object     # @fixedtables.distfix
	.p2align	1, 0x0
fixedtables.distfix:
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	1                               # 0x1
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.half	257                             # 0x101
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.half	17                              # 0x11
	.byte	27                              # 0x1b
	.byte	5                               # 0x5
	.half	4097                            # 0x1001
	.byte	17                              # 0x11
	.byte	5                               # 0x5
	.half	5                               # 0x5
	.byte	25                              # 0x19
	.byte	5                               # 0x5
	.half	1025                            # 0x401
	.byte	21                              # 0x15
	.byte	5                               # 0x5
	.half	65                              # 0x41
	.byte	29                              # 0x1d
	.byte	5                               # 0x5
	.half	16385                           # 0x4001
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	3                               # 0x3
	.byte	24                              # 0x18
	.byte	5                               # 0x5
	.half	513                             # 0x201
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.half	33                              # 0x21
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.half	8193                            # 0x2001
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.half	9                               # 0x9
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.half	2049                            # 0x801
	.byte	22                              # 0x16
	.byte	5                               # 0x5
	.half	129                             # 0x81
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.half	0                               # 0x0
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	2                               # 0x2
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.half	385                             # 0x181
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.half	25                              # 0x19
	.byte	27                              # 0x1b
	.byte	5                               # 0x5
	.half	6145                            # 0x1801
	.byte	17                              # 0x11
	.byte	5                               # 0x5
	.half	7                               # 0x7
	.byte	25                              # 0x19
	.byte	5                               # 0x5
	.half	1537                            # 0x601
	.byte	21                              # 0x15
	.byte	5                               # 0x5
	.half	97                              # 0x61
	.byte	29                              # 0x1d
	.byte	5                               # 0x5
	.half	24577                           # 0x6001
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	4                               # 0x4
	.byte	24                              # 0x18
	.byte	5                               # 0x5
	.half	769                             # 0x301
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.half	49                              # 0x31
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.half	12289                           # 0x3001
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.half	13                              # 0xd
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.half	3073                            # 0xc01
	.byte	22                              # 0x16
	.byte	5                               # 0x5
	.half	193                             # 0xc1
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.half	0                               # 0x0
	.size	fixedtables.distfix, 128

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zcalloc
	.addrsig_sym zcfree
	.addrsig_sym fixedtables.lenfix
	.addrsig_sym fixedtables.distfix
