	.file	"macroblock.c"
	.text
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	5
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s1, $a0, 5600
	ld.wu	$s2, $a0, 4
	ldptr.w	$a0, $a0, 5624
	ori	$a1, $zero, 408
	mul.d	$a1, $s2, $a1
	add.d	$s0, $s1, $a1
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 48
	bstrpick.d	$a1, $a0, 62, 60
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	addi.w	$a1, $a0, 0
	addi.w	$a2, $s2, 0
	div.wu	$a2, $a2, $a1
	mul.d	$a0, $a2, $a0
	sub.w	$a1, $s2, $a0
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	bstrins.d	$a1, $a2, 63, 1
	srai.d	$a0, $a0, 1
	st.w	$a0, $fp, 72
	b	.LBB0_3
.LBB0_2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(PicPos)
	ld.d	$a0, $a0, %pc_lo12(PicPos)
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a0, $a1, 0
	st.w	$a0, $fp, 72
	ld.w	$a1, $a1, 4
.LBB0_3:                                # %if.end24
	slli.d	$a2, $a1, 2
	st.w	$a2, $fp, 76
	lu12i.w	$a2, 1
	ori	$a3, $a2, 1840
	ldx.w	$a3, $fp, $a3
	slli.d	$a4, $a1, 4
	st.w	$a4, $fp, 80
	st.w	$a1, $fp, 68
	mul.d	$a3, $a3, $a1
	st.w	$a3, $fp, 88
	slli.d	$a3, $a0, 2
	st.w	$a3, $fp, 92
	ori	$a2, $a2, 1836
	ldx.w	$a3, $fp, $a2
	slli.d	$a2, $a0, 4
	st.w	$a2, $fp, 84
	ld.w	$a2, $fp, 12
	mul.d	$a3, $a3, $a0
	st.w	$a3, $fp, 96
	ori	$a3, $zero, 50
	st.w	$a2, $s0, 12
	blt	$a2, $a3, .LBB0_5
# %bb.4:                                # %if.then38
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 200
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	ld.w	$a1, $fp, 68
	ld.w	$a0, $fp, 72
.LBB0_5:                                # %if.end39
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a3, 0
	lu12i.w	$a3, 77
	ori	$a5, $a3, 1468
	add.d	$a3, $a4, $a5
	ld.d	$a6, $a3, 84
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 1
	stx.h	$a2, $a1, $a0
	ldx.h	$a0, $a4, $a5
	bge	$a0, $a2, .LBB0_7
# %bb.6:                                # %if.then51
	st.h	$a2, $a3, 0
.LBB0_7:                                # %if.end55
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighbors)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	st.w	$a0, $s0, 0
	st.w	$zero, $s0, 40
	st.w	$zero, $s0, 16
	st.w	$zero, $s0, 300
	st.w	$zero, $s0, 352
	ori	$a0, $zero, 408
	mul.d	$a0, $s2, $a0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 44
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 304
	addi.d	$a0, $fp, 1384
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 5592
	ld.w	$a1, $a0, 136
	st.w	$a1, $s0, 340
	ld.d	$a0, $a0, 140
	st.d	$a0, $s0, 344
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	start_macroblock, .Lfunc_end0-start_macroblock
                                        # -- End function
	.globl	exit_macroblock                 # -- Begin function exit_macroblock
	.p2align	5
	.type	exit_macroblock,@function
exit_macroblock:                        # @exit_macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 8
	ldptr.w	$a1, $s0, 5836
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	ori	$fp, $zero, 1
	beq	$a0, $a1, .LBB1_8
# %bb.1:                                # %if.else
	move	$s1, $a2
	ld.w	$a0, $s0, 4
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.w	$a0, $s0, 4
	beq	$a0, $a1, .LBB1_8
# %bb.2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(nal_startcode_follows)
	ld.d	$a2, $a0, %pc_lo12(nal_startcode_follows)
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_7
# %bb.3:                                # %if.end9
	ld.w	$a0, $s0, 44
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_8
# %bb.4:                                # %if.end9
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_8
# %bb.5:                                # %lor.lhs.false13
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB1_8
# %bb.6:                                # %if.end16
	ldptr.w	$a0, $s0, 5576
	slti	$fp, $a0, 1
	b	.LBB1_8
.LBB1_7:
	move	$fp, $zero
.LBB1_8:                                # %return
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	exit_macroblock, .Lfunc_end1-exit_macroblock
                                        # -- End function
	.globl	interpret_mb_mode_P             # -- Begin function interpret_mb_mode_P
	.p2align	5
	.type	interpret_mb_mode_P,@function
interpret_mb_mode_P:                    # @interpret_mb_mode_P
# %bb.0:                                # %entry
	ld.wu	$a1, $a0, 4
	ldptr.d	$a2, $a0, 5600
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 40
	ori	$a3, $zero, 3
	blt	$a3, $a2, .LBB2_2
# %bb.1:                                # %if.then
	andi	$a0, $a2, 255
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	mul.d	$a0, $a0, $a2
	st.w	$a0, $a1, 328
	st.w	$zero, $a1, 332
	ret
.LBB2_2:                                # %if.else
	bstrpick.d	$a3, $a2, 30, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 4
	bne	$a3, $a4, .LBB2_4
# %bb.3:                                # %if.then6
	addi.d	$a2, $a2, -5
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 8
	st.w	$a3, $a1, 40
	st.w	$a2, $a0, 100
	ret
.LBB2_4:                                # %if.else9
	ori	$a0, $zero, 31
	beq	$a2, $a0, .LBB2_7
# %bb.5:                                # %if.else9
	ori	$a0, $zero, 6
	bne	$a2, $a0, .LBB2_8
# %bb.6:                                # %if.then12
	ori	$a0, $zero, 9
	st.w	$a0, $a1, 40
	lu12i.w	$a0, 45232
	ori	$a0, $a0, 2827
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.LBB2_7:                                # %if.then21
	ori	$a0, $zero, 14
	st.w	$a0, $a1, 40
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a1, 300
	st.d	$zero, $a1, 324
	st.w	$a0, $a1, 332
	ret
.LBB2_8:                                # %if.else27
	ori	$a0, $zero, 10
	st.w	$a0, $a1, 40
	addi.d	$a0, $a2, -7
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a1, 300
	andi	$a0, $a0, 3
	st.w	$a0, $a1, 324
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.Lfunc_end2:
	.size	interpret_mb_mode_P, .Lfunc_end2-interpret_mb_mode_P
                                        # -- End function
	.globl	interpret_mb_mode_I             # -- Begin function interpret_mb_mode_I
	.p2align	5
	.type	interpret_mb_mode_I,@function
interpret_mb_mode_I:                    # @interpret_mb_mode_I
# %bb.0:                                # %entry
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 40
	ori	$a3, $zero, 25
	addi.w	$a1, $zero, -1
	beq	$a2, $a3, .LBB3_3
# %bb.1:                                # %entry
	bnez	$a2, .LBB3_4
# %bb.2:                                # %if.then
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	lu12i.w	$a2, 45232
	ori	$a2, $a2, 2827
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.LBB3_3:                                # %if.then5
	move	$a2, $zero
	ori	$a3, $zero, 14
	st.w	$a3, $a0, 40
	move	$a3, $a1
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 300
	st.w	$zero, $a0, 324
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.LBB3_4:                                # %if.else11
	ori	$a3, $zero, 10
	st.w	$a3, $a0, 40
	addi.w	$a2, $a2, -1
	andi	$a3, $a2, 3
	bstrins.d	$a2, $zero, 1, 0
	pcalau12i	$a4, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a4, $a4, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a4, $a4, $a2
	move	$a2, $zero
	st.w	$a4, $a0, 300
	st.w	$a3, $a0, 324
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.Lfunc_end3:
	.size	interpret_mb_mode_I, .Lfunc_end3-interpret_mb_mode_I
                                        # -- End function
	.globl	interpret_mb_mode_B             # -- Begin function interpret_mb_mode_B
	.p2align	5
	.type	interpret_mb_mode_B,@function
interpret_mb_mode_B:                    # @interpret_mb_mode_B
# %bb.0:                                # %entry
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 23
	beq	$a1, $a2, .LBB4_3
# %bb.1:                                # %entry
	bnez	$a1, .LBB4_4
# %bb.2:                                # %if.then
	ori	$a1, $zero, 0
	lu32i.d	$a1, 131586
	lu52i.d	$a1, $a1, 32
	st.d	$a1, $a0, 328
	st.w	$zero, $a0, 40
	ret
.LBB4_3:                                # %if.then4
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	ret
.LBB4_4:                                # %if.else9
	addi.w	$a2, $a1, -24
	ori	$a3, $zero, 23
	bltu	$a3, $a2, .LBB4_6
# %bb.5:                                # %if.then12
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	st.d	$a3, $a0, 328
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
	st.w	$a1, $a0, 324
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	ret
.LBB4_6:                                # %if.else20
	ori	$a3, $zero, 22
	ori	$a2, $zero, 8
	bne	$a1, $a3, .LBB4_8
# %bb.7:                                # %if.end80
	st.w	$a2, $a0, 40
	ret
.LBB4_8:                                # %if.else23
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB4_10
# %bb.9:                                # %if.then25
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	st.w	$a2, $a0, 328
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(interpret_mb_mode_B.offset2pdir16x16)
	addi.d	$a3, $a3, %pc_lo12(interpret_mb_mode_B.offset2pdir16x16)
	ldx.bu	$a1, $a3, $a1
	mul.d	$a1, $a1, $a2
	st.w	$a1, $a0, 332
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 40
	ret
.LBB4_10:                               # %if.else32
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB4_12
# %bb.11:                               # %if.then34
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	st.w	$a1, $a0, 300
	st.d	$zero, $a0, 324
	ori	$a2, $zero, 14
	st.w	$a2, $a0, 40
	ret
.LBB4_12:                               # %if.else41
	andi	$a2, $a1, 1
	bnez	$a2, .LBB4_14
# %bb.13:                               # %if.then44
	lu12i.w	$a2, 8224
	ori	$a2, $a2, 514
	st.w	$a2, $a0, 328
	pcalau12i	$a2, %pc_hi20(interpret_mb_mode_B.offset2pdir16x8)
	addi.d	$a2, $a2, %pc_lo12(interpret_mb_mode_B.offset2pdir16x8)
	slli.d	$a3, $a1, 3
	ldx.b	$a3, $a2, $a3
	alsl.d	$a1, $a1, $a2, 3
	st.b	$a3, $a0, 332
	st.b	$a3, $a0, 333
	ld.b	$a1, $a1, 4
	st.b	$a1, $a0, 334
	st.b	$a1, $a0, 335
	ori	$a2, $zero, 2
	st.w	$a2, $a0, 40
	ret
.LBB4_14:                               # %if.else56
	lu12i.w	$a2, 12336
	ori	$a2, $a2, 771
	st.w	$a2, $a0, 328
	pcalau12i	$a2, %pc_hi20(interpret_mb_mode_B.offset2pdir8x16)
	addi.d	$a2, $a2, %pc_lo12(interpret_mb_mode_B.offset2pdir8x16)
	slli.d	$a3, $a1, 3
	ldx.b	$a3, $a2, $a3
	alsl.d	$a1, $a1, $a2, 3
	st.b	$a3, $a0, 332
	ld.b	$a1, $a1, 4
	st.b	$a1, $a0, 333
	st.b	$a3, $a0, 334
	st.b	$a1, $a0, 335
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 40
	ret
.Lfunc_end4:
	.size	interpret_mb_mode_B, .Lfunc_end4-interpret_mb_mode_B
                                        # -- End function
	.globl	interpret_mb_mode_SI            # -- Begin function interpret_mb_mode_SI
	.p2align	5
	.type	interpret_mb_mode_SI,@function
interpret_mb_mode_SI:                   # @interpret_mb_mode_SI
# %bb.0:                                # %entry
	ld.wu	$a1, $a0, 4
	ldptr.d	$a2, $a0, 5600
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 40
	ori	$a3, $zero, 26
	beq	$a2, $a3, .LBB5_5
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB5_4
# %bb.2:                                # %entry
	bnez	$a2, .LBB5_6
# %bb.3:                                # %if.then
	lu12i.w	$a2, 45232
	ori	$a2, $a2, 2827
	lu32i.d	$a2, -1
	st.d	$a2, $a1, 328
	ld.w	$a2, $a0, 68
	ldptr.d	$a3, $a0, 5568
	ori	$a4, $zero, 12
	ld.w	$a0, $a0, 72
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	st.w	$a4, $a1, 40
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 1
	stx.w	$a1, $a2, $a0
	ret
.LBB5_4:                                # %if.then9
	ori	$a0, $zero, 9
	st.w	$a0, $a1, 40
	lu12i.w	$a0, 45232
	ori	$a0, $a0, 2827
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.LBB5_5:                                # %if.then17
	ori	$a0, $zero, 14
	st.w	$a0, $a1, 40
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a1, 300
	st.d	$zero, $a1, 324
	st.w	$a0, $a1, 332
	ret
.LBB5_6:                                # %if.else23
	ori	$a0, $zero, 10
	st.w	$a0, $a1, 40
	addi.w	$a0, $a2, -1
	bstrins.d	$a0, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a0, $a3, $a0
	st.w	$a0, $a1, 300
	andi	$a0, $a2, 3
	xori	$a0, $a0, 2
	st.w	$a0, $a1, 324
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.Lfunc_end5:
	.size	interpret_mb_mode_SI, .Lfunc_end5-interpret_mb_mode_SI
                                        # -- End function
	.globl	init_macroblock                 # -- Begin function init_macroblock
	.p2align	5
	.type	init_macroblock,@function
init_macroblock:                        # @init_macroblock
# %bb.0:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.w	$a3, $a0, 76
	ld.d	$t2, $a1, 0
	ld.w	$t3, $a0, 92
	addi.d	$a2, $a3, -1
	slli.d	$a3, $a3, 3
	lu12i.w	$t0, 77
	ori	$a4, $t0, 1584
	vrepli.b	$vr0, 0
	ori	$a5, $t0, 1560
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	lu12i.w	$a7, 8224
	ori	$a7, $a7, 514
	ori	$t0, $t0, 1568
	lu52i.d	$t1, $zero, -2048
	.p2align	4, , 16
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$t2, $t2, $a4
	ld.d	$t2, $t2, 0
	ldx.d	$t2, $t2, $a3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	vst	$vr0, $t2, 0
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a4
	ld.d	$t2, $t2, 8
	ld.w	$t3, $a0, 92
	ldx.d	$t2, $t2, $a3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	vst	$vr0, $t2, 0
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a5
	ld.d	$t2, $t2, 0
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a6, $t2, $t3
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a5
	ld.d	$t2, $t2, 8
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a6, $t2, $t3
	ldptr.d	$t2, $a0, 5544
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a7, $t2, $t3
	ld.d	$t2, $a1, 0
	ldx.d	$t3, $t2, $t0
	ld.d	$t4, $t3, 0
	ld.d	$t5, $t3, 8
	ld.w	$t3, $a0, 92
	ldx.d	$t4, $t4, $a3
	ldx.d	$t5, $t5, $a3
	slli.d	$t6, $t3, 3
	stx.d	$t1, $t4, $t6
	stx.d	$t1, $t5, $t6
	addi.d	$t7, $t6, 8
	stx.d	$t1, $t4, $t7
	stx.d	$t1, $t5, $t7
	addi.d	$t7, $t6, 16
	stx.d	$t1, $t4, $t7
	stx.d	$t1, $t5, $t7
	ld.w	$t7, $a0, 76
	addi.d	$t6, $t6, 24
	stx.d	$t1, $t4, $t6
	stx.d	$t1, $t5, $t6
	addi.w	$t4, $t7, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $t4, .LBB6_1
# %bb.2:                                # %for.end51
	ret
.Lfunc_end6:
	.size	init_macroblock, .Lfunc_end6-init_macroblock
                                        # -- End function
	.globl	SetB8Mode                       # -- Begin function SetB8Mode
	.p2align	5
	.type	SetB8Mode,@function
SetB8Mode:                              # @SetB8Mode
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 44
	ori	$a5, $zero, 1
	addi.d	$a0, $a1, 328
	bne	$a4, $a5, .LBB7_2
# %bb.1:                                # %if.then
	slli.d	$a4, $a2, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$a5, $a5, %pc_lo12(SetB8Mode.b_v2b8)
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a0, $a3
	pcalau12i	$a0, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$a0, $a0, %pc_lo12(SetB8Mode.b_v2pd)
	b	.LBB7_3
.LBB7_2:                                # %if.else
	slli.d	$a4, $a2, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$a5, $a5, %pc_lo12(SetB8Mode.p_v2b8)
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a0, $a3
	pcalau12i	$a0, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$a0, $a0, %pc_lo12(SetB8Mode.p_v2pd)
.LBB7_3:                                # %if.end
	alsl.d	$a0, $a2, $a0, 2
	ld.b	$a0, $a0, 0
	add.d	$a1, $a1, $a3
	st.b	$a0, $a1, 332
	ret
.Lfunc_end7:
	.size	SetB8Mode, .Lfunc_end7-SetB8Mode
                                        # -- End function
	.globl	reset_coeffs                    # -- Begin function reset_coeffs
	.p2align	5
	.type	reset_coeffs,@function
reset_coeffs:                           # @reset_coeffs
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a2, $zero, -3
	blt	$a3, $a2, .LBB8_12
# %bb.1:                                # %for.body3.preheader
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 2408
	xvrepli.b	$xr0, 0
	.p2align	4, , 16
.LBB8_2:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a5
	xvstx	$xr0, $a0, $a5
	xvst	$xr0, $a3, 32
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 64
	blt	$a4, $a6, .LBB8_2
# %bb.3:                                # %for.inc8
	blt	$a3, $a2, .LBB8_12
# %bb.4:                                # %for.body3.1.preheader
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 3176
	.p2align	4, , 16
.LBB8_5:                                # %for.body3.1
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a5
	xvstx	$xr0, $a0, $a5
	xvst	$xr0, $a3, 32
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 64
	blt	$a4, $a6, .LBB8_5
# %bb.6:                                # %for.inc8.1
	blt	$a3, $a2, .LBB8_12
# %bb.7:                                # %for.body3.2.preheader
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 3944
	.p2align	4, , 16
.LBB8_8:                                # %for.body3.2
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a5
	xvstx	$xr0, $a0, $a5
	xvst	$xr0, $a3, 32
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 64
	blt	$a4, $a6, .LBB8_8
# %bb.9:                                # %for.inc8.2
	blt	$a3, $a2, .LBB8_12
# %bb.10:                               # %for.body3.3.preheader
	addi.w	$a2, $zero, -1
	lu12i.w	$a3, 1
	ori	$a4, $a3, 616
	ori	$a5, $a3, 1828
	.p2align	4, , 16
.LBB8_11:                               # %for.body3.3
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a4
	xvstx	$xr0, $a0, $a4
	xvst	$xr0, $a3, 32
	ld.d	$a0, $a1, 0
	ldx.w	$a3, $a0, $a5
	addi.w	$a6, $a3, 3
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 64
	blt	$a2, $a6, .LBB8_11
.LBB8_12:                               # %for.end10
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5560
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 16
	alsl.w	$a1, $a3, $a1, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end8:
	.size	reset_coeffs, .Lfunc_end8-reset_coeffs
                                        # -- End function
	.globl	field_flag_inference            # -- Begin function field_flag_inference
	.p2align	5
	.type	field_flag_inference,@function
field_flag_inference:                   # @field_flag_inference
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.wu	$a3, $a0, 4
	ldptr.d	$a1, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a3, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a4, $a0, 380
	ori	$a3, $zero, 364
	bnez	$a4, .LBB9_2
# %bb.1:                                # %if.else
	ld.w	$a4, $a0, 384
	ori	$a3, $zero, 368
	beqz	$a4, .LBB9_3
.LBB9_2:                                # %if.end14.sink.split
	ldx.w	$a3, $a0, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 356
	st.w	$a1, $a0, 356
	ret
.LBB9_3:
	st.w	$zero, $a0, 356
	ret
.Lfunc_end9:
	.size	field_flag_inference, .Lfunc_end9-field_flag_inference
                                        # -- End function
	.globl	set_chroma_qp                   # -- Begin function set_chroma_qp
	.p2align	5
	.type	set_chroma_qp,@function
set_chroma_qp:                          # @set_chroma_qp
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 0
	ld.d	$a4, $a3, 0
	lu12i.w	$a3, 77
	ori	$a5, $a3, 1684
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1792
	ldx.w	$a6, $a2, $a3
	ldx.w	$a7, $a4, $a5
	add.d	$a4, $a4, $a5
	sub.w	$a5, $zero, $a6
	add.w	$a6, $a7, $a1
	slt	$a7, $a5, $a6
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$t0, $a6, $a5
	slti	$a6, $t0, 51
	maskeqz	$a7, $t0, $a6
	ori	$a5, $zero, 51
	masknez	$a6, $a5, $a6
	or	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(QP_SCALE_CR)
	addi.d	$a6, $a6, %pc_lo12(QP_SCALE_CR)
	bltz	$t0, .LBB10_2
# %bb.1:                                # %cond.false
	ldx.bu	$a7, $a6, $a7
.LBB10_2:                               # %cond.end
	st.w	$a7, $a0, 4
	ldx.w	$a2, $a2, $a3
	ld.w	$a3, $a4, 4
	sub.w	$a2, $zero, $a2
	add.w	$a1, $a3, $a1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a2, $a1, $a2
	slti	$a1, $a2, 51
	maskeqz	$a3, $a2, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a3, $a1
	bltz	$a2, .LBB10_4
# %bb.3:                                # %cond.false.1
	ldx.bu	$a1, $a6, $a1
.LBB10_4:                               # %cond.end.1
	st.w	$a1, $a0, 8
	ret
.Lfunc_end10:
	.size	set_chroma_qp, .Lfunc_end10-set_chroma_qp
                                        # -- End function
	.globl	read_one_macroblock             # -- Begin function read_one_macroblock
	.p2align	5
	.type	read_one_macroblock,@function
read_one_macroblock:                    # @read_one_macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s5, $a0, 5592
	ldptr.d	$a2, $a0, 5600
	ld.wu	$a3, $a0, 4
	ori	$a4, $zero, 408
	ld.w	$a0, $s5, 28
	ldptr.w	$a5, $fp, 5624
	mul.d	$a4, $a3, $a4
	add.d	$s4, $a2, $a4
	slli.d	$a7, $a0, 6
	andi	$a4, $a3, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a5, .LBB11_4
# %bb.1:                                # %entry
	beqz	$a4, .LBB11_4
# %bb.2:                                # %if.then5
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ld.w	$a4, $fp, 44
	ori	$a5, $zero, 408
	mul.d	$a5, $a3, $a5
	ori	$a6, $zero, 1
	add.d	$s3, $a2, $a5
	bne	$a4, $a6, .LBB11_7
# %bb.3:                                # %if.else
	ld.w	$s0, $s3, 360
	b	.LBB11_8
.LBB11_4:                               # %if.end14
	bnez	$a4, .LBB11_6
# %bb.5:
	move	$a2, $zero
	move	$s3, $zero
	move	$s0, $zero
	b	.LBB11_9
.LBB11_6:                               # %if.end14.if.else20_crit_edge
	move	$s3, $zero
	move	$s0, $zero
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	b	.LBB11_8
.LBB11_7:                               # %if.then10
	ld.w	$a4, $s3, 40
	sltui	$s0, $a4, 1
.LBB11_8:                               # %if.else20
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	ld.w	$a2, $a2, 356
.LBB11_9:                               # %if.end28
	alsl.d	$a0, $a0, $a7, 4
	ld.w	$a3, $fp, 28
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$s2, $a1, %got_pc_lo12(dec_picture)
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	st.w	$a2, $s4, 356
	st.w	$a3, $s4, 0
	ld.d	$a4, $s2, 0
	lu12i.w	$s6, 77
	ori	$a5, $s6, 1684
	lu12i.w	$s8, 1
	ori	$a2, $s8, 1792
	ldx.w	$a6, $fp, $a2
	ldx.w	$a7, $a4, $a5
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	add.d	$a5, $a4, $a5
	sub.w	$a4, $zero, $a6
	add.w	$a3, $a7, $a3
	slt	$a6, $a4, $a3
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a7, $a3, $a4
	slti	$a4, $a7, 51
	maskeqz	$a6, $a7, $a4
	ori	$a3, $zero, 51
	masknez	$a4, $a3, $a4
	or	$a6, $a6, $a4
	pcalau12i	$a4, %pc_hi20(QP_SCALE_CR)
	addi.d	$a4, $a4, %pc_lo12(QP_SCALE_CR)
	bltz	$a7, .LBB11_11
# %bb.10:                               # %cond.false
	ldx.bu	$a6, $a4, $a6
.LBB11_11:                              # %cond.end
	st.w	$a6, $s4, 4
	ldx.w	$a2, $fp, $a2
	ld.w	$a6, $fp, 28
	ld.w	$a5, $a5, 4
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sub.w	$a0, $zero, $a2
	add.w	$a1, $a5, $a6
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	slti	$a0, $a1, 51
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a2, $a0
	bltz	$a1, .LBB11_13
# %bb.12:                               # %cond.false.1
	ldx.bu	$a0, $a4, $a0
.LBB11_13:                              # %cond.end.1
	st.w	$a0, $s4, 8
	pcalau12i	$s7, %pc_hi20(active_pps)
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$a1, $zero, 2
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 104
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s1, $a2, $a1
	beqz	$a0, .LBB11_15
# %bb.14:                               # %lor.lhs.false
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	beqz	$a1, .LBB11_16
.LBB11_15:                              # %if.then64
	pcalau12i	$a1, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_ue)
	st.d	$a1, $sp, 136
.LBB11_16:                              # %if.end65
	ld.w	$a1, $fp, 44
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB11_18
# %bb.17:                               # %if.end65
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB11_23
.LBB11_18:                              # %if.then73
	ldptr.w	$a1, $fp, 5624
	beqz	$a1, .LBB11_68
# %bb.19:                               # %land.lhs.true
	ld.bu	$a1, $fp, 4
	andi	$a1, $a1, 1
	bnez	$a1, .LBB11_68
# %bb.20:                               # %if.then80
	ld.d	$a1, $s1, 0
	beqz	$a0, .LBB11_22
# %bb.21:                               # %lor.lhs.false84
	ld.w	$a0, $a1, 24
	beqz	$a0, .LBB11_66
.LBB11_22:                              # %if.then88
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	b	.LBB11_67
.LBB11_23:                              # %if.else112
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_34
# %bb.24:                               # %if.then116
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_31
# %bb.25:                               # %land.lhs.true119
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_27
# %bb.26:                               # %land.lhs.true119
	beqz	$s0, .LBB11_31
.LBB11_27:                              # %if.then126
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.wu	$a3, $a0, 4
	ldptr.d	$a1, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a3, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a4, $a0, 380
	ori	$a3, $zero, 364
	bnez	$a4, .LBB11_29
# %bb.28:                               # %if.else.i
	ld.w	$a4, $a0, 384
	ori	$a3, $zero, 368
	beqz	$a4, .LBB11_210
.LBB11_29:                              # %if.end14.sink.split.i
	ldx.w	$a3, $a0, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 356
.LBB11_30:                              # %field_flag_inference.exit
	st.w	$a1, $a0, 356
.LBB11_31:                              # %if.end127
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(readMB_skip_flagInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readMB_skip_flagInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
	ld.w	$a1, $fp, 44
	st.w	$a0, $s4, 40
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 1
	st.w	$a2, $s4, 360
	bne	$a1, $a3, .LBB11_43
# %bb.32:                               # %if.then139
	ld.w	$a2, $sp, 112
	st.w	$a2, $s4, 300
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 24
	bnez	$a2, .LBB11_44
.LBB11_33:                              # %if.then144
	st.w	$zero, $s4, 336
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB11_45
	b	.LBB11_48
.LBB11_34:                              # %if.else211
	ldptr.w	$a0, $fp, 5576
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB11_52
# %bb.35:                               # %if.end220
	beqz	$a0, .LBB11_53
.LBB11_36:                              # %if.else268
	addi.w	$a1, $a0, -1
	stptr.w	$a1, $fp, 5576
	ldptr.w	$a2, $fp, 5624
	st.w	$zero, $s4, 40
	st.w	$zero, $s4, 336
	ori	$a3, $zero, 1
	st.w	$a3, $s4, 360
	beqz	$a2, .LBB11_72
# %bb.37:                               # %if.then276
	beqz	$a1, .LBB11_207
# %bb.38:                               # %if.else293
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB11_72
# %bb.39:                               # %land.lhs.true297
	ld.w	$a1, $fp, 4
	andi	$a0, $a1, 1
	bnez	$a0, .LBB11_72
# %bb.40:                               # %if.then302
	addi.w	$a0, $a1, -2
	pcaddu18i	$ra, %call36(mb_is_available)
	jirl	$ra, $ra, 0
	ori	$s0, $s8, 1724
	ldx.w	$a2, $fp, $s0
	ld.w	$a1, $fp, 4
	slli.w	$a2, $a2, 1
	beqz	$a0, .LBB11_211
# %bb.41:                               # %land.lhs.true308
	mod.wu	$a0, $a1, $a2
	beqz	$a0, .LBB11_211
# %bb.42:                               # %if.then312
	ldptr.d	$a0, $fp, 5600
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	b	.LBB11_213
.LBB11_43:                              # %if.end140
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 24
	beqz	$a2, .LBB11_33
.LBB11_44:                              # %if.end146
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB11_48
.LBB11_45:                              # %if.end146
	bnez	$a0, .LBB11_48
# %bb.46:                               # %if.end146
	ld.w	$a1, $sp, 112
	bnez	$a1, .LBB11_48
# %bb.47:                               # %if.then158
	stptr.w	$zero, $fp, 5576
.LBB11_48:                              # %if.end159
	ldptr.w	$a1, $fp, 5624
	beqz	$a1, .LBB11_65
# %bb.49:                               # %if.then162
	ld.bu	$a1, $fp, 4
	andi	$a1, $a1, 1
	bnez	$a1, .LBB11_62
# %bb.50:                               # %if.then167
	bnez	$a0, .LBB11_64
# %bb.51:                               # %if.then191
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(check_next_mb_and_get_field_mode_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB11_65
.LBB11_52:                              # %if.then215
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
	stptr.w	$a0, $fp, 5576
	bnez	$a0, .LBB11_36
.LBB11_53:                              # %if.then224
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_57
# %bb.54:                               # %land.lhs.true227
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_56
# %bb.55:                               # %land.lhs.true227
	beqz	$s0, .LBB11_57
.LBB11_56:                              # %if.then238
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	st.w	$a0, $s4, 356
.LBB11_57:                              # %if.end244
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB11_59
# %bb.58:                               # %if.end244
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_209
.LBB11_59:                              # %if.then254
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB11_61
.LBB11_60:                              # %if.then263
	st.w	$zero, $s4, 336
.LBB11_61:                              # %if.end265
	ori	$a0, $s8, 1480
	ldx.w	$a0, $fp, $a0
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $fp, 5576
	st.w	$zero, $s4, 360
	b	.LBB11_72
.LBB11_62:                              # %if.else172
	ld.w	$a1, $s3, 360
	beqz	$a1, .LBB11_65
# %bb.63:                               # %if.else172
	beqz	$a0, .LBB11_65
.LBB11_64:                              # %if.then183
	pcalau12i	$a0, %got_pc_hi20(readFieldModeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readFieldModeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
	st.w	$a0, $s4, 356
.LBB11_65:                              # %if.end194
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 40
	bnez	$a0, .LBB11_70
	b	.LBB11_72
.LBB11_66:                              # %if.else91
	pcalau12i	$a0, %got_pc_hi20(readFieldModeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readFieldModeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
.LBB11_67:                              # %if.end93
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a0, 12
	st.w	$a1, $s4, 356
.LBB11_68:                              # %if.end95
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_70
# %bb.69:                               # %if.then99
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
.LBB11_70:                              # %if.end100
	pcalau12i	$a0, %got_pc_hi20(readMB_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readMB_typeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a0, 24
	st.w	$a1, $s4, 40
	bnez	$a0, .LBB11_72
# %bb.71:                               # %if.then109
	st.w	$zero, $s4, 336
.LBB11_72:                              # %if.end347
	ld.d	$a0, $s2, 0
	ld.b	$a1, $s4, 356
	ori	$a2, $s6, 1544
	ldx.d	$a0, $a0, $a2
	ld.wu	$a2, $fp, 4
	stx.b	$a1, $a0, $a2
	ld.w	$a0, $fp, 68
	ldptr.d	$a1, $fp, 5568
	slli.d	$a0, $a0, 3
	ld.w	$a2, $fp, 72
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 2
	stx.w	$zero, $a0, $a1
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB11_93
# %bb.73:                               # %if.end347
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI11_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI11_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB11_74:                              # %if.then361
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB11_84
# %bb.75:                               # %if.then.i324
	andi	$a1, $a1, 255
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	mul.d	$a1, $a1, $a2
	st.w	$a1, $a0, 328
	st.w	$zero, $a0, 332
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_76:                              # %if.then381
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 26
	beq	$a1, $a2, .LBB11_89
# %bb.77:                               # %if.then381
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB11_88
# %bb.78:                               # %if.then381
	bnez	$a1, .LBB11_173
# %bb.79:                               # %if.then.i379
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ld.w	$a1, $fp, 68
	ldptr.d	$a2, $fp, 5568
	ori	$a3, $zero, 12
	ld.w	$a4, $fp, 72
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	st.w	$a3, $a0, 40
	slli.d	$a0, $a4, 2
	ori	$a2, $zero, 1
	stx.w	$a2, $a1, $a0
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_80:                              # %if.then371
	move	$a0, $fp
	pcaddu18i	$ra, %call36(interpret_mb_mode_B)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_81:                              # %if.then366
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 25
	beq	$a1, $a2, .LBB11_90
# %bb.82:                               # %if.then366
	bnez	$a1, .LBB11_91
# %bb.83:                               # %if.then.i333
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 40
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	b	.LBB11_92
.LBB11_84:                              # %if.else.i322
	bstrpick.d	$a2, $a1, 30, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB11_86
# %bb.85:                               # %if.then6.i323
	addi.d	$a1, $a1, -5
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 8
	st.w	$a2, $a0, 40
	st.w	$a1, $fp, 100
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_86:                              # %if.else9.i
	ori	$a2, $zero, 31
	beq	$a1, $a2, .LBB11_89
# %bb.87:                               # %if.else9.i
	ori	$a2, $zero, 6
	bne	$a1, $a2, .LBB11_204
.LBB11_88:                              # %if.then12.i
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 40
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	b	.LBB11_206
.LBB11_89:                              # %if.then21.i
	ori	$a1, $zero, 14
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 300
	st.d	$zero, $a0, 324
	st.w	$a1, $a0, 332
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_90:                              # %if.then5.i
	move	$a1, $zero
	ori	$a2, $zero, 14
	st.w	$a2, $a0, 40
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $a0, 300
	st.w	$zero, $a0, 324
	b	.LBB11_92
.LBB11_91:                              # %if.else11.i
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.w	$a1, $a1, -1
	andi	$a2, $a1, 3
	bstrins.d	$a1, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a3, $a3, $a1
	move	$a1, $zero
	st.w	$a3, $a0, 300
	st.w	$a2, $a0, 324
.LBB11_92:                              # %interpret_mb_mode_I.exit
	st.w	$a1, $a0, 328
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
.LBB11_93:                              # %if.end386
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_96
.LBB11_94:                              # %if.then389
	ld.w	$a0, $s4, 356
	beqz	$a0, .LBB11_96
# %bb.95:                               # %if.then392
	ori	$a0, $s8, 1544
	ldx.w	$a0, $fp, $a0
	ori	$a1, $s8, 1548
	ldx.w	$a1, $fp, $a1
	slli.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 5640
	slli.d	$a0, $a1, 1
	stptr.w	$a0, $fp, 5644
.LBB11_96:                              # %if.end395
	ld.w	$a0, $s4, 40
	beqz	$a0, .LBB11_101
# %bb.97:                               # %land.end407
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	st.w	$a1, $s4, 400
	bne	$a0, $a2, .LBB11_130
# %bb.98:                               # %if.then413
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$a1, $zero, 2
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 104
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s1, $a2, $a1
	beqz	$a0, .LBB11_100
# %bb.99:                               # %lor.lhs.false426
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_104
.LBB11_100:                             # %if.then430
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 136
	b	.LBB11_105
.LBB11_101:                             # %land.lhs.true399
	ld.w	$a1, $fp, 44
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB11_103
# %bb.102:                              # %land.rhs403
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ldptr.w	$a0, $a0, 2084
	sltu	$a0, $zero, $a0
.LBB11_103:                             # %if.end457.thread
	st.w	$a0, $s4, 400
	b	.LBB11_135
.LBB11_104:                             # %if.else432
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_105:                             # %if.end434
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$s3, $a0, %pc_lo12(SetB8Mode.b_v2b8)
	alsl.d	$a0, $a1, $s3, 2
	pcalau12i	$a3, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$s8, $a3, %pc_lo12(SetB8Mode.b_v2pd)
	alsl.d	$a3, $a1, $s8, 2
	pcalau12i	$a4, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$s0, $a4, %pc_lo12(SetB8Mode.p_v2b8)
	alsl.d	$a4, $a1, $s0, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$s6, $a5, %pc_lo12(SetB8Mode.p_v2pd)
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 328
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 332
	beqz	$a0, .LBB11_107
.LBB11_106:                             # %lor.rhs
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_108
.LBB11_107:                             # %land.lhs.true443
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_106
.LBB11_108:                             # %lor.end
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_110
# %bb.109:                              # %lor.lhs.false426.1
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_111
.LBB11_110:                             # %if.then430.1
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 136
	b	.LBB11_112
.LBB11_111:                             # %if.else432.1
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_112:                             # %if.end434.1
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 329
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 333
	beqz	$a0, .LBB11_114
.LBB11_113:                             # %lor.rhs.1
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_115
.LBB11_114:                             # %land.lhs.true443.1
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_113
.LBB11_115:                             # %lor.end.1
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_117
# %bb.116:                              # %lor.lhs.false426.2
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_118
.LBB11_117:                             # %if.then430.2
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 136
	b	.LBB11_119
.LBB11_118:                             # %if.else432.2
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_119:                             # %if.end434.2
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 330
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 334
	beqz	$a0, .LBB11_121
.LBB11_120:                             # %lor.rhs.2
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_122
.LBB11_121:                             # %land.lhs.true443.2
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_120
.LBB11_122:                             # %lor.end.2
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_124
# %bb.123:                              # %lor.lhs.false426.3
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_125
.LBB11_124:                             # %if.then430.3
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 136
	b	.LBB11_126
.LBB11_125:                             # %if.else432.3
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_126:                             # %if.end434.3
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 331
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 335
	beqz	$a0, .LBB11_128
.LBB11_127:                             # %lor.rhs.3
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_129
.LBB11_128:                             # %land.lhs.true443.3
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_127
.LBB11_129:                             # %lor.end.3
	ld.wu	$a0, $s4, 400
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 400
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_macroblock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readMotionInfoFromNAL)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 40
	lu12i.w	$s6, 77
.LBB11_130:                             # %if.end457
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB11_135
# %bb.131:                              # %land.lhs.true461
	ldptr.w	$a0, $fp, 5908
	beqz	$a0, .LBB11_135
# %bb.132:                              # %if.then463
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s5, 40
	ori	$a2, $zero, 56
	ld.d	$a3, $s7, %pc_lo12(active_pps)
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a4, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a0, $a2
	st.w	$zero, $sp, 104
	st.d	$a4, $sp, 144
	beqz	$a3, .LBB11_134
# %bb.133:                              # %lor.lhs.false473
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB11_171
.LBB11_134:                             # %if.then477
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	st.w	$a0, $s4, 396
	bnez	$a0, .LBB11_172
	b	.LBB11_136
.LBB11_135:                             # %if.else503
	st.w	$zero, $s4, 396
.LBB11_136:                             # %if.end505
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	addi.d	$s0, $s4, 40
	move	$a0, $s0
	beqz	$a1, .LBB11_141
# %bb.137:                              # %land.lhs.true507
	ld.w	$a1, $fp, 44
	ori	$a2, $zero, 1
	move	$a0, $s0
	bltu	$a2, $a1, .LBB11_141
# %bb.138:                              # %if.then515
	ld.w	$a0, $s0, 0
	addi.w	$a0, $a0, -9
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB11_159
# %bb.139:                              # %if.then515
	ori	$a1, $zero, 59
	srl.d	$a1, $a1, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_159
# %bb.140:                              # %switch.lookup
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.read_one_macroblock)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.read_one_macroblock)
	alsl.d	$a0, $a0, $a1, 2
.LBB11_141:                             # %if.end540
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 14
	bltu	$s1, $a0, .LBB11_147
.LBB11_142:                             # %if.end540
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	lu12i.w	$a2, 7
	ori	$a2, $a2, 1536
	and	$a1, $a1, $a2
	beqz	$a1, .LBB11_146
# %bb.143:                              # %land.lhs.true564
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_147
# %bb.144:                              # %land.lhs.true568
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB11_147
# %bb.145:                              # %if.then570
	st.w	$zero, $s4, 40
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 336
	st.d	$zero, $s4, 328
	b	.LBB11_147
.LBB11_146:                             # %if.end540
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB11_155
.LBB11_147:                             # %if.end597
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beq	$a0, $s1, .LBB11_158
# %bb.148:                              # %if.end597
	bnez	$a0, .LBB11_155
# %bb.149:                              # %land.lhs.true601
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB11_160
# %bb.150:                              # %land.lhs.true601
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB11_160
# %bb.151:                              # %land.lhs.true601
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_155
# %bb.152:                              # %land.lhs.true605
	ldptr.w	$a0, $fp, 5576
	bltz	$a0, .LBB11_155
# %bb.153:                              # %if.then609
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_202
# %bb.154:                              # %if.then614
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $fp, 5576
	b	.LBB11_202
.LBB11_155:                             # %if.then887
	move	$a0, $fp
	pcaddu18i	$ra, %call36(read_ipred_modes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB11_163
# %bb.156:                              # %if.then887
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 6
	ori	$a1, $a1, 1793
	and	$a0, $a0, $a1
	beqz	$a0, .LBB11_163
.LBB11_157:                             # %if.end912
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(readCBPandCoeffsFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_202
.LBB11_158:                             # %if.else913
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readIPCMcoeffsFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_202
.LBB11_159:                             # %if.then535
	ld.wu	$a0, $fp, 4
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	move	$a0, $s0
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 14
	bgeu	$s1, $a0, .LBB11_142
	b	.LBB11_147
.LBB11_160:                             # %if.then629
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_164
# %bb.161:                              # %land.lhs.true633
	ld.w	$a1, $s4, 356
	ld.w	$a0, $fp, 4
	beqz	$a1, .LBB11_165
# %bb.162:                              # %cond.true636
	andi	$a1, $a0, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a2
	b	.LBB11_166
.LBB11_163:                             # %if.then911
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readMotionInfoFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_157
.LBB11_164:                             # %if.then629.cond.end642_crit_edge
	ld.w	$a0, $fp, 4
.LBB11_165:
	move	$s1, $zero
.LBB11_166:                             # %cond.end642
	ld.d	$a1, $s2, 0
	ori	$a2, $s6, 1584
	ldx.d	$a1, $a1, $a2
	ld.d	$s5, $a1, 0
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 76
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 52
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	beqz	$a0, .LBB11_170
# %bb.167:                              # %if.then648
	ld.d	$a1, $s2, 0
	ld.w	$a2, $sp, 96
	ori	$a3, $s6, 1560
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 3
	ld.w	$a3, $sp, 92
	ldx.d	$a4, $s5, $a2
	ld.d	$a1, $a1, 0
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ldx.d	$a2, $a1, $a2
	ld.h	$a1, $a4, 2
	ldx.b	$a2, $a2, $a3
	ld.w	$a3, $sp, 80
	ldptr.d	$a4, $fp, 5600
	ld.w	$a5, $s4, 356
	ori	$a6, $zero, 408
	mul.d	$a3, $a3, $a6
	add.d	$a3, $a4, $a3
	ld.w	$a3, $a3, 356
	beqz	$a5, .LBB11_174
# %bb.168:                              # %land.lhs.true665
	bnez	$a3, .LBB11_176
# %bb.169:                              # %if.then671
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a3, $a1, 15, 15
	add.d	$a1, $a1, $a3
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	slli.d	$a2, $a2, 1
	b	.LBB11_176
.LBB11_170:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_176
.LBB11_171:                             # %if.else481
	add.d	$a2, $a0, $a2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
	st.w	$a0, $s4, 396
	beqz	$a0, .LBB11_136
.LBB11_172:                             # %if.then488
	ori	$a0, $zero, 13
	st.w	$a0, $s4, 40
	lu12i.w	$a0, 53456
	ori	$a0, $a0, 3341
	lu32i.d	$a0, -1
	st.d	$a0, $s4, 328
	b	.LBB11_136
.LBB11_173:                             # %if.else23.i
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.w	$a2, $a1, -1
	bstrins.d	$a2, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
	xori	$a1, $a1, 2
	b	.LBB11_205
.LBB11_174:                             # %land.lhs.true676
	beqz	$a3, .LBB11_176
# %bb.175:                              # %if.then683
	slli.d	$a1, $a1, 1
	srai.d	$a2, $a2, 1
.LBB11_176:                             # %if.end686
	ld.w	$a3, $sp, 52
	beqz	$a3, .LBB11_180
# %bb.177:                              # %if.then689
	ld.d	$a4, $s2, 0
	ld.w	$a5, $sp, 72
	ori	$a6, $s6, 1560
	ldx.d	$a4, $a4, $a6
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 68
	ldx.d	$a7, $s5, $a5
	ld.d	$a4, $a4, 0
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	ldx.d	$a5, $a4, $a5
	ld.h	$a4, $a7, 2
	ldx.b	$a5, $a5, $a6
	ld.w	$a6, $sp, 56
	ldptr.d	$a7, $fp, 5600
	ld.w	$t0, $s4, 356
	ori	$t1, $zero, 408
	mul.d	$a6, $a6, $t1
	add.d	$a6, $a7, $a6
	ld.w	$a6, $a6, 356
	beqz	$t0, .LBB11_181
# %bb.178:                              # %land.lhs.true709
	bnez	$a6, .LBB11_183
# %bb.179:                              # %if.then716
	bstrpick.d	$a4, $a4, 15, 0
	bstrpick.d	$a6, $a4, 15, 15
	add.d	$a4, $a4, $a6
	ext.w.h	$a4, $a4
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a5, 1
	b	.LBB11_183
.LBB11_180:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB11_183
.LBB11_181:                             # %land.lhs.true722
	beqz	$a6, .LBB11_183
# %bb.182:                              # %if.then729
	slli.d	$a4, $a4, 1
	srai.d	$a5, $a5, 1
.LBB11_183:                             # %if.end733
	beqz	$a0, .LBB11_191
# %bb.184:                              # %cond.false737
	beqz	$a2, .LBB11_203
# %bb.185:
	move	$s3, $zero
	beqz	$a3, .LBB11_192
.LBB11_186:                             # %cond.false762
	bnez	$a5, .LBB11_189
# %bb.187:                              # %land.lhs.true765
	ld.w	$a0, $sp, 72
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 68
	ldx.d	$a0, $s5, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.hu	$a0, $a0, 0
	bnez	$a0, .LBB11_189
# %bb.188:                              # %land.rhs776
	sltui	$a0, $a4, 1
	or	$a0, $a0, $s3
	andi	$s3, $a0, 1
.LBB11_189:                             # %cond.end782
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 76
	bnez	$s3, .LBB11_193
# %bb.190:                              # %if.end839.loopexit439
	ld.d	$a0, $s2, 0
	ori	$a1, $s6, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 100
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 92
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $s5, $a1
	alsl.d	$a2, $s0, $s5, 3
	slli.d	$a3, $a0, 3
	ldx.d	$a4, $a1, $a3
	ld.w	$a5, $sp, 100
	alsl.d	$a6, $a0, $a1, 3
	addi.d	$a7, $a3, 8
	ldx.d	$a1, $a1, $a7
	st.w	$a5, $a4, 0
	ld.d	$a4, $a6, 16
	ld.d	$t0, $a2, 8
	st.w	$a5, $a1, 0
	ld.d	$a1, $a6, 24
	st.w	$a5, $a4, 0
	ldx.d	$a4, $t0, $a3
	ldx.d	$a6, $t0, $a7
	st.w	$a5, $a1, 0
	alsl.d	$a1, $a0, $t0, 3
	st.w	$a5, $a4, 0
	st.w	$a5, $a6, 0
	ld.d	$a4, $a2, 16
	ld.d	$a6, $a1, 16
	ld.d	$a1, $a1, 24
	ld.w	$t0, $sp, 100
	ldx.d	$t1, $a4, $a3
	ld.w	$t2, $sp, 100
	st.w	$a5, $a6, 0
	st.w	$t0, $a1, 0
	alsl.d	$a1, $a0, $a4, 3
	st.w	$t2, $t1, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a5, $a1, 16
	ld.d	$a1, $a1, 24
	ld.w	$a6, $sp, 100
	ld.d	$a2, $a2, 24
	st.w	$t2, $a4, 0
	st.w	$t2, $a5, 0
	st.w	$a6, $a1, 0
	alsl.d	$a0, $a0, $a2, 3
	ldx.d	$a1, $a2, $a3
	ld.w	$a3, $sp, 100
	ldx.d	$a2, $a2, $a7
	ld.d	$a4, $a0, 16
	ld.d	$a0, $a0, 24
	ld.w	$a5, $sp, 100
	st.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	st.w	$a3, $a4, 0
	st.w	$a5, $a0, 0
	b	.LBB11_194
.LBB11_191:
	ori	$s3, $zero, 1
	bnez	$a3, .LBB11_186
.LBB11_192:                             # %cond.end782.thread
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 76
.LBB11_193:                             # %if.end839.loopexit
	slli.d	$a0, $s0, 3
	ld.w	$a1, $fp, 92
	ldx.d	$a0, $s5, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.d	$a1, $s0, $s5, 3
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a2, $a1, 8
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a2, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a1, $a1, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	vst	$vr0, $a0, 0
.LBB11_194:                             # %for.body851.lr.ph
	ld.d	$a1, $s2, 0
	ori	$a0, $s6, 1560
	ldx.d	$a1, $a1, $a0
	ld.d	$a1, $a1, 0
	ld.w	$a6, $fp, 92
	slli.d	$a2, $s0, 3
	ldx.d	$a5, $a1, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	slli.d	$a1, $s1, 3
	slli.d	$a7, $s1, 8
	or	$a1, $a7, $a1
	.p2align	4, , 16
.LBB11_195:                             # %for.body851
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_195
# %bb.196:                              # %for.body851.lr.ph.1
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 1
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_197:                             # %for.body851.1
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_197
# %bb.198:                              # %for.body851.lr.ph.2
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 2
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_199:                             # %for.body851.2
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_199
# %bb.200:                              # %for.body851.lr.ph.3
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 3
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_201:                             # %for.body851.3
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_201
.LBB11_202:                             # %cleanup
	ori	$a0, $zero, 1
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB11_203:                             # %land.lhs.true740
	ld.w	$a0, $sp, 96
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 92
	ldx.d	$a0, $s5, $a0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.hu	$a0, $a0, 0
	addi.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	sltui	$s3, $a0, 1
	bnez	$a3, .LBB11_186
	b	.LBB11_192
.LBB11_204:                             # %if.else27.i
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.d	$a1, $a1, -7
	bstrpick.d	$a2, $a1, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
.LBB11_205:                             # %if.end386
	st.w	$a1, $a0, 324
	ori	$a1, $zero, 0
.LBB11_206:                             # %if.end386
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_207:                             # %land.lhs.true280
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB11_72
# %bb.208:                              # %if.then285
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 108
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 8
	st.w	$a2, $s4, 356
	b	.LBB11_72
.LBB11_209:                             # %if.end244.if.end257_crit_edge
	ld.w	$a0, $sp, 108
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB11_61
	b	.LBB11_60
.LBB11_210:
	move	$a1, $zero
	b	.LBB11_30
.LBB11_211:                             # %if.else320
	sub.w	$a0, $a1, $a2
	pcaddu18i	$ra, %call36(mb_is_available)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_214
# %bb.212:                              # %if.then328
	ldx.w	$a0, $fp, $s0
	ld.w	$a1, $fp, 4
	ldptr.d	$a2, $fp, 5600
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
.LBB11_213:                             # %if.end347
	ld.w	$a0, $a0, 356
	st.w	$a0, $s4, 356
	b	.LBB11_72
.LBB11_214:                             # %if.else338
	st.w	$zero, $s4, 356
	b	.LBB11_72
.Lfunc_end11:
	.size	read_one_macroblock, .Lfunc_end11-read_one_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_74-.LJTI11_0
	.word	.LBB11_80-.LJTI11_0
	.word	.LBB11_81-.LJTI11_0
	.word	.LBB11_74-.LJTI11_0
	.word	.LBB11_76-.LJTI11_0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function readMotionInfoFromNAL
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	readMotionInfoFromNAL
	.p2align	5
	.type	readMotionInfoFromNAL,@function
readMotionInfoFromNAL:                  # @readMotionInfoFromNAL
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	move	$a7, $a0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.wu	$a0, $a0, 4
	ldptr.d	$a3, $a7, 5592
	ldptr.d	$a1, $a7, 5600
	ori	$a2, $zero, 408
	mul.d	$a2, $a0, $a2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 28
	add.d	$t6, $a1, $a2
	ld.w	$a1, $t6, 40
	addi.w	$a0, $a0, 0
	slli.d	$a5, $a3, 6
	ld.w	$a2, $a7, 44
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a2, $a1, -8
	sltui	$a2, $a2, 1
	masknez	$a4, $a1, $a2
	ori	$a6, $zero, 4
	maskeqz	$a2, $a6, $a2
	or	$a4, $a2, $a4
	pcalau12i	$a6, %pc_hi20(BLOCK_STEP)
	ldptr.w	$a2, $a7, 5624
	addi.d	$a6, $a6, %pc_lo12(BLOCK_STEP)
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a6, $a4, $a6, 3
	slli.d	$a7, $a4, 3
	lu12i.w	$t3, 1
	beqz	$a2, .LBB12_4
# %bb.1:                                # %land.lhs.true
	ld.w	$a4, $t6, 356
	beqz	$a4, .LBB12_4
# %bb.2:                                # %if.then
	pcalau12i	$a4, %got_pc_hi20(Co_located)
	ld.d	$a4, $a4, %got_pc_lo12(Co_located)
	ld.d	$t2, $a4, 0
	andi	$a4, $a0, 1
	bnez	$a4, .LBB12_5
# %bb.3:                                # %if.else
	addi.d	$t2, $t2, 2047
	addi.d	$a4, $t2, 1193
	addi.d	$t0, $t2, 1185
	addi.d	$t1, $t2, 1169
	addi.d	$t2, $t2, 1177
	ori	$t3, $zero, 2
	b	.LBB12_6
.LBB12_4:                               # %if.else29
	pcalau12i	$a4, %got_pc_hi20(Co_located)
	ld.d	$a4, $a4, %got_pc_lo12(Co_located)
	ld.d	$t2, $a4, 0
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	addi.d	$a4, $t2, 1624
	addi.d	$t0, $t2, 1616
	addi.d	$t1, $t2, 1600
	addi.d	$t2, $t2, 1608
	b	.LBB12_7
.LBB12_5:                               # %if.then28
	ori	$a4, $t3, 760
	add.d	$a4, $t2, $a4
	ori	$t0, $t3, 752
	add.d	$t0, $t2, $t0
	ori	$t1, $t3, 736
	add.d	$t1, $t2, $t1
	ori	$t3, $t3, 744
	add.d	$t2, $t2, $t3
	ori	$t3, $zero, 4
.LBB12_6:                               # %if.end31
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
.LBB12_7:                               # %if.end31
	alsl.d	$a3, $a3, $a5, 4
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a7
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a3, $a6, 4
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$fp, $t2, 0
	ld.d	$t3, $t1, 0
	ld.d	$a3, $t0, 0
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	addi.d	$a3, $t6, 328
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	bne	$a3, $a5, .LBB12_163
# %bb.8:                                # %if.end31
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB12_163
# %bb.9:                                # %if.then37
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $s4, 40
	beqz	$a1, .LBB12_50
# %bb.10:                               # %if.then39
	lu12i.w	$s8, 77
	beqz	$a2, .LBB12_15
# %bb.11:                               # %land.lhs.true42
	ld.w	$a1, $t6, 356
	beqz	$a1, .LBB12_15
# %bb.12:                               # %cond.true45
	ld.w	$a1, $s4, 76
	andi	$a2, $a0, 1
	beqz	$a2, .LBB12_14
# %bb.13:                               # %cond.true49
	addi.w	$a1, $a1, -4
.LBB12_14:                              # %cond.false50
	srai.d	$s3, $a1, 1
	b	.LBB12_16
.LBB12_15:                              # %cond.false55
	ld.w	$s3, $s4, 76
.LBB12_16:                              # %cond.end57
	ld.d	$s6, $a4, 0
	st.w	$zero, $sp, 428
	st.w	$zero, $sp, 424
	addi.w	$s1, $zero, -1
	addi.d	$a3, $sp, 504
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	addi.d	$a3, $sp, 480
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 432
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	addi.d	$a3, $sp, 456
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s4, 5624
	beqz	$a0, .LBB12_86
# %bb.17:                               # %if.else183
	ld.wu	$a0, $s4, 4
	ldptr.d	$a2, $s4, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a5, $sp, 504
	beqz	$a0, .LBB12_102
# %bb.18:                               # %if.then190
	move	$a0, $s1
	beqz	$a5, .LBB12_22
# %bb.19:                               # %cond.true193
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 524
	ld.d	$a0, $a0, 0
	ld.w	$a3, $sp, 508
	ori	$a4, $zero, 408
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 520
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	ldx.b	$a0, $a0, $a1
	bnez	$a3, .LBB12_22
# %bb.20:                               # %cond.true193
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB12_22
# %bb.21:                               # %cond.false220
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 254
.LBB12_22:                              # %cond.end233
	ld.w	$a6, $sp, 480
	move	$a1, $s1
	beqz	$a6, .LBB12_26
# %bb.23:                               # %cond.true237
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 500
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 484
	ori	$a7, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 496
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	bnez	$a4, .LBB12_26
# %bb.24:                               # %cond.true237
	addi.w	$a3, $zero, -1
	bge	$a3, $a1, .LBB12_26
# %bb.25:                               # %cond.false266
	slli.d	$a1, $a1, 1
	andi	$a1, $a1, 254
.LBB12_26:                              # %cond.end280
	ld.w	$a7, $sp, 456
	beqz	$a7, .LBB12_30
# %bb.27:                               # %cond.true284
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 476
	ld.d	$a3, $a3, 0
	ld.w	$t0, $sp, 460
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 472
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t0, .LBB12_30
# %bb.28:                               # %cond.true284
	addi.w	$a3, $zero, -1
	bge	$a3, $s1, .LBB12_30
# %bb.29:                               # %cond.false313
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_30:                              # %cond.end327
	ld.w	$t0, $sp, 432
	beqz	$t0, .LBB12_34
# %bb.31:                               # %cond.true331
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 452
	ld.d	$a3, $a3, 0
	ld.w	$t1, $sp, 436
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 448
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t1, .LBB12_34
# %bb.32:                               # %cond.true331
	addi.w	$a3, $zero, -1
	bge	$a3, $s1, .LBB12_34
# %bb.33:                               # %cond.false360
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_34:                              # %cond.end374
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_38
# %bb.35:                               # %cond.true378
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a5, $s8, 1560
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 524
	ld.d	$a3, $a3, 8
	ld.w	$t1, $sp, 508
	ori	$t2, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 520
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a3, $a3, $a5
	bnez	$t1, .LBB12_38
# %bb.36:                               # %cond.true378
	addi.w	$a5, $zero, -1
	bge	$a5, $a3, .LBB12_38
# %bb.37:                               # %cond.false407
	slli.d	$a3, $a3, 1
	andi	$a3, $a3, 254
.LBB12_38:                              # %cond.end421
	move	$a5, $a4
	beqz	$a6, .LBB12_42
# %bb.39:                               # %cond.true425
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$a6, $s8, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 500
	ld.d	$a5, $a5, 8
	ld.w	$t1, $sp, 484
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 496
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a5, $a5, $a6
	bnez	$t1, .LBB12_42
# %bb.40:                               # %cond.true425
	addi.w	$a6, $zero, -1
	bge	$a6, $a5, .LBB12_42
# %bb.41:                               # %cond.false454
	slli.d	$a5, $a5, 1
	andi	$a5, $a5, 254
.LBB12_42:                              # %cond.end468
	beqz	$a7, .LBB12_46
# %bb.43:                               # %cond.true472
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 476
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 460
	ori	$t1, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 472
	mul.d	$a7, $a7, $t1
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a7, .LBB12_46
# %bb.44:                               # %cond.true472
	addi.w	$a6, $zero, -1
	bge	$a6, $a4, .LBB12_46
# %bb.45:                               # %cond.false501
	slli.d	$a4, $a4, 1
	andi	$a4, $a4, 254
.LBB12_46:                              # %cond.end515
	beqz	$t0, .LBB12_134
# %bb.47:                               # %cond.true519
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 452
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 436
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 448
	mul.d	$a7, $a7, $t0
	add.d	$a2, $a2, $a7
	ld.w	$a2, $a2, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_134
# %bb.48:                               # %cond.true519
	addi.w	$a2, $zero, -1
	bge	$a2, $a4, .LBB12_134
# %bb.49:                               # %cond.false548
	slli.d	$a2, $a4, 1
	andi	$a4, $a2, 254
	b	.LBB12_134
.LBB12_50:                              # %for.cond1241.preheader
	move	$a1, $zero
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	ori	$s6, $zero, 255
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s7, $a0, %got_pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$s8, $a0, 1560
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$s3, $a0, %got_pc_lo12(listXsize)
	ori	$t7, $zero, 1
	lu12i.w	$a0, -33153
	ori	$s1, $a0, 2220
	ori	$s0, $zero, 1584
	b	.LBB12_52
	.p2align	4, , 16
.LBB12_51:                              # %for.inc1464
                                        #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB12_163
.LBB12_52:                              # %for.body1244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_55 Depth 2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_77 Depth 4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a1
	bnez	$a0, .LBB12_51
# %bb.53:                               # %if.then1251
                                        #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	andi	$a0, $a2, 2
	slli.d	$a1, $a2, 1
	andi	$a1, $a1, 2
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ori	$a1, $a2, 1
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	b	.LBB12_55
	.p2align	4, , 16
.LBB12_54:                              # %for.inc1460
                                        #   in Loop: Header=BB12_55 Depth=2
	addi.w	$a0, $s5, 1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	beq	$s5, $a1, .LBB12_51
.LBB12_55:                              # %for.body1260
                                        #   Parent Loop BB12_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_77 Depth 4
	move	$s5, $a0
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	b	.LBB12_58
	.p2align	4, , 16
.LBB12_56:                              #   in Loop: Header=BB12_58 Depth=3
	move	$a3, $zero
.LBB12_57:                              # %if.end1456
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a2, $s7, 0
	ldx.d	$a2, $a2, $s8
	ld.d	$a2, $a2, 0
	add.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	stx.b	$a3, $a0, $a1
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s8
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 76
	ld.d	$a0, $a0, 8
	add.w	$a1, $a1, $s5
	ld.w	$a2, $a3, 92
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	add.w	$a1, $a2, $s4
	addi.w	$s4, $s4, 1
	stx.b	$zero, $a0, $a1
	beq	$s4, $s2, .LBB12_54
.LBB12_58:                              # %for.body1269
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_77 Depth 4
	ldptr.w	$a2, $a3, 5624
	beqz	$a2, .LBB12_62
# %bb.59:                               # %land.lhs.true1273
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.w	$a0, $t6, 356
	beqz	$a0, .LBB12_62
# %bb.60:                               # %cond.true1290
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.bu	$a0, $a4, 4
	andi	$a1, $a0, 1
	sltui	$a3, $a1, 1
	ld.w	$a0, $a4, 76
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 2
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	bnez	$a1, .LBB12_63
# %bb.61:                               # %cond.false1298
                                        #   in Loop: Header=BB12_58 Depth=3
	srai.d	$a1, $a0, 1
	b	.LBB12_64
	.p2align	4, , 16
.LBB12_62:                              # %cond.false1303
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a0, $t2, 76
	move	$a3, $zero
	move	$a1, $a0
	b	.LBB12_65
.LBB12_63:                              # %cond.true1294
                                        #   in Loop: Header=BB12_58 Depth=3
	addi.w	$a1, $a0, -4
	srai.d	$a1, $a1, 1
.LBB12_64:                              # %cond.end1305
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
.LBB12_65:                              # %cond.end1305
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a5, $t3, 0
	add.w	$a1, $a1, $s5
	slli.d	$a4, $a1, 3
	ld.w	$a1, $t2, 92
	ldx.d	$a5, $a5, $a4
	add.w	$a1, $a1, $s4
	ldx.bu	$a5, $a5, $a1
	addi.d	$a5, $a5, -255
	sltui	$a7, $a5, 1
	slli.d	$a5, $a7, 3
	ldx.d	$a5, $t3, $a5
	ldx.d	$a5, $a5, $a4
	ldx.bu	$a5, $a5, $a1
	beq	$a5, $s6, .LBB12_56
# %bb.66:                               # %for.cond1354.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$a5, $t2, 5640
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $s3, $a6
	slt	$t0, $a5, $a6
	masknez	$a6, $a6, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a6
	blt	$a5, $t7, .LBB12_73
# %bb.67:                               # %for.body1361.lr.ph
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$t1, $t2, 5584
	ld.d	$a6, $s7, 0
	slli.d	$t0, $a3, 3
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $t0
	add.d	$a3, $a6, $a3
	addi.d	$a6, $a3, 24
	alsl.d	$t0, $a7, $fp, 3
	slli.d	$a7, $a1, 3
	beqz	$t1, .LBB12_74
# %bb.68:                               # %for.body1361.lr.ph.split.us
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a3, $t0, 0
	ldx.d	$a3, $a3, $a4
	ld.w	$t0, $t2, 12
	ldx.d	$a4, $a3, $a7
	mul.d	$a3, $t0, $s0
	add.d	$a6, $a6, $a3
	bstrpick.d	$a5, $a5, 31, 0
	move	$a3, $zero
	beqz	$a2, .LBB12_71
	.p2align	4, , 16
.LBB12_69:                              # %for.body1361.us
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a6, 0
	beq	$a2, $a4, .LBB12_83
# %bb.70:                               # %for.inc1428.us
                                        #   in Loop: Header=BB12_69 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	bne	$a5, $a3, .LBB12_69
	b	.LBB12_84
	.p2align	4, , 16
.LBB12_71:                              # %for.body1361.us.us
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a6, 0
	beq	$a2, $a4, .LBB12_83
# %bb.72:                               # %for.inc1428.us.us
                                        #   in Loop: Header=BB12_71 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	bne	$a5, $a3, .LBB12_71
	b	.LBB12_84
	.p2align	4, , 16
.LBB12_73:                              #   in Loop: Header=BB12_58 Depth=3
	addi.d	$a3, $zero, -1
	b	.LBB12_57
.LBB12_74:                              # %for.body1361.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$t1, $a3, 0
	move	$a3, $zero
	ori	$t4, $zero, 1
	b	.LBB12_77
	.p2align	4, , 16
.LBB12_75:                              # %if.end1406
                                        #   in Loop: Header=BB12_77 Depth=4
	ld.d	$t4, $sp, 408                   # 8-byte Folded Reload
	ld.w	$t4, $t4, 12
	ldx.d	$t3, $t3, $a4
	mul.d	$t4, $t4, $s0
	ldx.d	$t4, $a6, $t4
	ldx.d	$t3, $t3, $a7
	xor	$t3, $t4, $t3
	sltui	$t3, $t3, 1
	addi.d	$a3, $a3, 1
	bnez	$t3, .LBB12_82
.LBB12_76:                              # %cleanup
                                        #   in Loop: Header=BB12_77 Depth=4
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 8
	addi.d	$t4, $t2, 1
	bgeu	$t2, $a5, .LBB12_82
.LBB12_77:                              # %for.body1361
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$t2, $t4
	beqz	$a2, .LBB12_79
# %bb.78:                               # %land.rhs
                                        #   in Loop: Header=BB12_77 Depth=4
	ld.w	$t4, $t6, 356
	ld.d	$t3, $t0, 0
	bnez	$t4, .LBB12_75
	b	.LBB12_80
	.p2align	4, , 16
.LBB12_79:                              # %for.body1361.if.then1371_crit_edge
                                        #   in Loop: Header=BB12_77 Depth=4
	ld.d	$t3, $t0, 0
.LBB12_80:                              # %if.then1371
                                        #   in Loop: Header=BB12_77 Depth=4
	ld.d	$t4, $t1, 0
	ldx.d	$t3, $t3, $a4
	ld.w	$t5, $t4, 8
	ldx.d	$t3, $t3, $a7
	slli.w	$t5, $t5, 1
	beq	$t3, $t5, .LBB12_85
# %bb.81:                               # %lor.lhs.false1387
                                        #   in Loop: Header=BB12_77 Depth=4
	ld.w	$t4, $t4, 12
	slli.w	$t4, $t4, 1
	xor	$t3, $t3, $t4
	sltui	$t3, $t3, 1
	addi.d	$a3, $a3, 1
	beqz	$t3, .LBB12_76
.LBB12_82:                              # %for.end1430.loopexit
                                        #   in Loop: Header=BB12_58 Depth=3
	addi.d	$a2, $a3, -1
	masknez	$a3, $s1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a3, $a2, $a3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
.LBB12_83:                              # %for.end1430
                                        #   in Loop: Header=BB12_58 Depth=3
	addi.w	$a2, $a3, 0
	lu12i.w	$a4, -33153
	ori	$a4, $a4, 2220
	bne	$a2, $a4, .LBB12_57
.LBB12_84:                              # %if.then1433
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 1
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 92
	ld.w	$a0, $a0, 76
	add.w	$a1, $a1, $s4
	move	$a3, $s1
	b	.LBB12_57
.LBB12_85:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	b	.LBB12_57
.LBB12_86:                              # %if.then65
	ld.w	$a2, $sp, 504
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a2, .LBB12_88
# %bb.87:                               # %cond.true67
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 524
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 520
	ldx.b	$a0, $a0, $a1
.LBB12_88:                              # %cond.end76
	ld.w	$a6, $sp, 480
	move	$a1, $s1
	beqz	$a6, .LBB12_90
# %bb.89:                               # %cond.true80
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 500
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 496
	ldx.b	$a1, $a1, $a3
.LBB12_90:                              # %cond.end91
	ld.w	$a7, $sp, 456
	beqz	$a7, .LBB12_92
# %bb.91:                               # %cond.true95
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 476
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 472
	ldx.b	$s1, $a3, $a4
.LBB12_92:                              # %cond.end106
	ld.w	$t0, $sp, 432
	beqz	$t0, .LBB12_94
# %bb.93:                               # %cond.true110
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 452
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 448
	ldx.b	$s1, $a3, $a4
.LBB12_94:                              # %cond.end121
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a2, .LBB12_96
# %bb.95:                               # %cond.true125
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a3, $s8, 1560
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 524
	ld.d	$a2, $a2, 8
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 520
	ldx.b	$a3, $a2, $a3
.LBB12_96:                              # %cond.end136
	move	$a5, $a4
	beqz	$a6, .LBB12_98
# %bb.97:                               # %cond.true140
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a5, $s8, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 500
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 496
	ldx.b	$a5, $a2, $a5
.LBB12_98:                              # %cond.end151
	beqz	$a7, .LBB12_100
# %bb.99:                               # %cond.true155
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s8, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 476
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 472
	ldx.b	$a4, $a2, $a4
.LBB12_100:                             # %cond.end166
	beqz	$t0, .LBB12_134
# %bb.101:                              # %cond.true170
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s8, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 452
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 448
	ldx.b	$a4, $a2, $a4
	b	.LBB12_134
.LBB12_102:                             # %if.else564
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a5, .LBB12_106
# %bb.103:                              # %cond.true567
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 524
	ld.d	$a0, $a0, 0
	ld.w	$a3, $sp, 508
	ori	$a4, $zero, 408
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 520
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	ldx.b	$a0, $a0, $a1
	bnez	$a3, .LBB12_105
# %bb.104:                              # %cond.true567
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB12_106
.LBB12_105:                             # %cond.true586
	srai.d	$a0, $a0, 1
.LBB12_106:                             # %cond.end610
	ld.w	$a6, $sp, 480
	move	$a1, $s1
	beqz	$a6, .LBB12_110
# %bb.107:                              # %cond.true614
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 500
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 484
	ori	$a7, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 496
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	bnez	$a4, .LBB12_109
# %bb.108:                              # %cond.true614
	addi.w	$a3, $zero, -1
	blt	$a3, $a1, .LBB12_110
.LBB12_109:                             # %cond.true633
	srai.d	$a1, $a1, 1
.LBB12_110:                             # %cond.end657
	ld.w	$a7, $sp, 456
	beqz	$a7, .LBB12_114
# %bb.111:                              # %cond.true661
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 476
	ld.d	$a3, $a3, 0
	ld.w	$t0, $sp, 460
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 472
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t0, .LBB12_113
# %bb.112:                              # %cond.true661
	addi.w	$a3, $zero, -1
	blt	$a3, $s1, .LBB12_114
.LBB12_113:                             # %cond.true680
	srai.d	$s1, $s1, 1
.LBB12_114:                             # %cond.end704
	ld.w	$t0, $sp, 432
	beqz	$t0, .LBB12_118
# %bb.115:                              # %cond.true708
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 452
	ld.d	$a3, $a3, 0
	ld.w	$t1, $sp, 436
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 448
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t1, .LBB12_117
# %bb.116:                              # %cond.true708
	addi.w	$a3, $zero, -1
	blt	$a3, $s1, .LBB12_118
.LBB12_117:                             # %cond.true727
	srai.d	$s1, $s1, 1
.LBB12_118:                             # %cond.end751
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_122
# %bb.119:                              # %cond.true755
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a5, $s8, 1560
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 524
	ld.d	$a3, $a3, 8
	ld.w	$t1, $sp, 508
	ori	$t2, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 520
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a3, $a3, $a5
	bnez	$t1, .LBB12_121
# %bb.120:                              # %cond.true755
	addi.w	$a5, $zero, -1
	blt	$a5, $a3, .LBB12_122
.LBB12_121:                             # %cond.true774
	srai.d	$a3, $a3, 1
.LBB12_122:                             # %cond.end798
	move	$a5, $a4
	beqz	$a6, .LBB12_126
# %bb.123:                              # %cond.true802
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$a6, $s8, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 500
	ld.d	$a5, $a5, 8
	ld.w	$t1, $sp, 484
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 496
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a5, $a5, $a6
	bnez	$t1, .LBB12_125
# %bb.124:                              # %cond.true802
	addi.w	$a6, $zero, -1
	blt	$a6, $a5, .LBB12_126
.LBB12_125:                             # %cond.true821
	srai.d	$a5, $a5, 1
.LBB12_126:                             # %cond.end845
	beqz	$a7, .LBB12_130
# %bb.127:                              # %cond.true849
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 476
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 460
	ori	$t1, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 472
	mul.d	$a7, $a7, $t1
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a7, .LBB12_129
# %bb.128:                              # %cond.true849
	addi.w	$a6, $zero, -1
	blt	$a6, $a4, .LBB12_130
.LBB12_129:                             # %cond.true868
	srai.d	$a4, $a4, 1
.LBB12_130:                             # %cond.end892
	beqz	$t0, .LBB12_134
# %bb.131:                              # %cond.true896
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 452
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 436
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 448
	mul.d	$a7, $a7, $t0
	add.d	$a2, $a2, $a7
	ld.w	$a2, $a2, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_133
# %bb.132:                              # %cond.true896
	addi.w	$a2, $zero, -1
	blt	$a2, $a4, .LBB12_134
.LBB12_133:                             # %cond.true915
	srai.d	$a4, $a4, 1
.LBB12_134:                             # %if.end942
	or	$a2, $a0, $a1
	addi.w	$a2, $a2, 0
	addi.w	$a1, $a1, 0
	addi.w	$s0, $zero, -1
	slt	$a2, $s0, $a2
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
	ext.w.b	$a0, $a0
	or	$a1, $a0, $s1
	addi.w	$a1, $a1, 0
	addi.w	$a2, $s1, 0
	slt	$a1, $s0, $a1
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
	or	$s7, $a1, $a0
	or	$a0, $a3, $a5
	addi.w	$a0, $a0, 0
	addi.w	$a1, $a5, 0
	slt	$a0, $s0, $a0
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
	ext.w.b	$a0, $a0
	or	$a1, $a0, $a4
	addi.w	$a1, $a1, 0
	addi.w	$a2, $a4, 0
	slt	$a1, $s0, $a1
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
	ext.w.b	$s1, $s7
	or	$s5, $a1, $a0
	bltz	$s1, .LBB12_136
# %bb.135:                              # %if.then999
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 428
	st.d	$a0, $sp, 0
	move	$a0, $s4
	move	$a2, $s1
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
.LBB12_136:                             # %if.end1003
	ext.w.b	$s2, $s5
	slli.w	$fp, $s5, 24
	bltz	$s2, .LBB12_138
# %bb.137:                              # %if.then1007
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 424
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s4
	move	$a2, $s2
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 424
	ld.hu	$t0, $sp, 426
	b	.LBB12_139
.LBB12_138:
	move	$t0, $zero
	move	$a1, $zero
.LBB12_139:                             # %if.end1011
	move	$a3, $zero
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	and	$a4, $s2, $s1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ori	$a2, $a2, 8
	add.d	$a5, $a0, $a2
	ld.hu	$a6, $sp, 428
	ld.hu	$a7, $sp, 430
	addi.w	$a0, $s3, 0
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$t3, $a0, %got_pc_lo12(dec_picture)
	andi	$t4, $s7, 255
	ori	$t5, $s8, 1452
	ori	$t6, $s8, 1584
	b	.LBB12_141
	.p2align	4, , 16
.LBB12_140:                             # %for.inc1237
                                        #   in Loop: Header=BB12_141 Depth=1
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a3, $a0, .LBB12_162
.LBB12_141:                             # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_144 Depth 2
                                        #       Child Loop BB12_146 Depth 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a3, $sp, 376                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a3
	bnez	$a0, .LBB12_140
# %bb.142:                              # %if.then1019
                                        #   in Loop: Header=BB12_141 Depth=1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 4
	maskeqz	$a0, $a3, $a0
	or	$t7, $a0, $a2
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a0, $a3, 2
	bstrpick.d	$a2, $a3, 62, 1
	slli.d	$t8, $a2, 1
	slli.d	$a2, $a3, 1
	andi	$s4, $a2, 2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	b	.LBB12_144
	.p2align	4, , 16
.LBB12_143:                             # %for.inc1233
                                        #   in Loop: Header=BB12_144 Depth=2
	addi.d	$t8, $t8, 1
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	beq	$t8, $a0, .LBB12_140
.LBB12_144:                             # %for.body1027
                                        #   Parent Loop BB12_141 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_146 Depth 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a0, 3
	move	$s8, $s4
	b	.LBB12_146
	.p2align	4, , 16
.LBB12_145:                             # %if.end1232
                                        #   in Loop: Header=BB12_146 Depth=3
	addi.w	$s8, $s8, 1
	beq	$t7, $s8, .LBB12_143
.LBB12_146:                             # %for.body1036
                                        #   Parent Loop BB12_141 Depth=1
                                        #     Parent Loop BB12_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 76
	ld.w	$a2, $a2, 92
	add.d	$a0, $t8, $a0
	add.w	$ra, $s8, $a2
	slli.d	$t1, $a0, 3
	bltz	$s1, .LBB12_151
# %bb.147:                              # %if.then1044
                                        #   in Loop: Header=BB12_146 Depth=3
	bnez	$t4, .LBB12_150
# %bb.148:                              # %land.lhs.true1046
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a0, $s6, 0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB12_150
# %bb.149:                              # %land.lhs.true1052
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a0, $a5, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t5
	beqz	$a0, .LBB12_160
	.p2align	4, , 16
.LBB12_150:                             # %if.else1079
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	st.h	$a6, $t2, 0
	move	$a2, $a7
	move	$a0, $s7
	b	.LBB12_152
	.p2align	4, , 16
.LBB12_151:                             # %if.else1103
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	move	$a2, $zero
	st.h	$zero, $t2, 0
	ori	$a0, $zero, 255
.LBB12_152:                             # %if.end1124
                                        #   in Loop: Header=BB12_146 Depth=3
	st.h	$a2, $t2, 2
	lu12i.w	$a2, 77
	ori	$t2, $a2, 1560
	ldx.d	$a2, $a3, $t2
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $t1
	stx.b	$a0, $a2, $ra
	bltz	$s2, .LBB12_157
# %bb.153:                              # %if.then1128
                                        #   in Loop: Header=BB12_146 Depth=3
	bnez	$fp, .LBB12_156
# %bb.154:                              # %land.lhs.true1132
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a0, $s6, 0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB12_156
# %bb.155:                              # %land.lhs.true1138
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a0, $a5, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t5
	beqz	$a0, .LBB12_161
	.p2align	4, , 16
.LBB12_156:                             # %if.else1166
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	st.h	$a1, $a2, 0
	move	$a0, $t0
	move	$s3, $s5
	b	.LBB12_158
	.p2align	4, , 16
.LBB12_157:                             # %if.else1190
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	move	$a0, $zero
	st.h	$zero, $a2, 0
	ori	$s3, $zero, 255
.LBB12_158:                             # %if.end1211
                                        #   in Loop: Header=BB12_146 Depth=3
	st.h	$a0, $a2, 2
	ldx.d	$a0, $a3, $t2
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	stx.b	$s3, $a0, $ra
	blt	$s0, $a4, .LBB12_145
# %bb.159:                              # %if.then1219
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $t2
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	stx.b	$zero, $a0, $ra
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $t2
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	stx.b	$zero, $a0, $ra
	b	.LBB12_145
.LBB12_160:                             # %if.then1058
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	move	$a2, $zero
	move	$a0, $zero
	st.h	$zero, $t2, 0
	b	.LBB12_152
.LBB12_161:                             # %if.then1145
                                        #   in Loop: Header=BB12_146 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	move	$a0, $zero
	move	$s3, $zero
	st.h	$zero, $a2, 0
	b	.LBB12_158
.LBB12_162:                             # %for.end1239
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
.LBB12_163:                             # %if.end1468
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ldptr.w	$a3, $a0, 5640
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a0, $t6, 332
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_pps)
	ori	$a0, $zero, 1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	bge	$a0, $a3, .LBB12_166
# %bb.164:                              # %if.then1472
	ld.d	$a0, $a1, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 504
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_175
# %bb.165:                              # %lor.lhs.false1483
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_ue)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_ue)
	pcalau12i	$a4, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_176
.LBB12_166:                             # %for.cond1587.preheader
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$fp, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 416                 # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$a0, 77
	ori	$s1, $a0, 1560
	ori	$s2, $zero, 4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_168
	.p2align	4, , 16
.LBB12_167:                             # %for.inc1646
                                        #   in Loop: Header=BB12_168 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$s3, $s4
	bge	$s4, $s2, .LBB12_197
.LBB12_168:                             # %for.cond1591.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_170 Depth 2
                                        #       Child Loop BB12_174 Depth 3
	move	$s5, $zero
	move	$s6, $s3
	bstrins.d	$s6, $zero, 0, 0
	add.w	$s4, $s3, $a6
	b	.LBB12_170
	.p2align	4, , 16
.LBB12_169:                             # %for.inc1643
                                        #   in Loop: Header=BB12_170 Depth=2
	add.w	$s5, $s5, $a5
	bge	$s5, $s2, .LBB12_167
.LBB12_170:                             # %for.body1594
                                        #   Parent Loop BB12_168 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_174 Depth 3
	srli.d	$a0, $s5, 1
	add.w	$a0, $a0, $s6
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	bnez	$a1, .LBB12_169
# %bb.171:                              # %land.lhs.true1612
                                        #   in Loop: Header=BB12_170 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_169
# %bb.172:                              # %if.then1619
                                        #   in Loop: Header=BB12_170 Depth=2
	ld.w	$a0, $s0, 76
	add.w	$a1, $a0, $s3
	add.w	$a2, $s4, $a0
	bge	$a1, $a2, .LBB12_169
# %bb.173:                              # %for.body1628.preheader
                                        #   in Loop: Header=BB12_170 Depth=2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	slli.d	$s8, $s7, 3
	.p2align	4, , 16
.LBB12_174:                             # %for.body1628
                                        #   Parent Loop BB12_168 Depth=1
                                        #     Parent Loop BB12_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s0, 92
	ldx.d	$a0, $a0, $s8
	add.w	$a1, $a1, $s5
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 76
	addi.d	$s7, $s7, 1
	add.w	$a0, $s4, $a0
	addi.d	$s8, $s8, 8
	blt	$s7, $a0, .LBB12_174
	b	.LBB12_169
.LBB12_175:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_176:                             # %if.end1487
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	move	$s8, $zero
	addi.d	$a2, $sp, 504
	stx.d	$a1, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s7, $a0, %got_pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$s0, $a0, 1560
	b	.LBB12_178
	.p2align	4, , 16
.LBB12_177:                             # %for.inc1583
                                        #   in Loop: Header=BB12_178 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$s8, $s5
	ori	$a0, $zero, 4
	bge	$s5, $a0, .LBB12_197
.LBB12_178:                             # %for.cond1492.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_180 Depth 2
                                        #       Child Loop BB12_196 Depth 3
	move	$s4, $zero
	move	$fp, $s8
	bstrins.d	$fp, $zero, 0, 0
	add.w	$s5, $s8, $a6
	b	.LBB12_180
	.p2align	4, , 16
.LBB12_179:                             # %for.inc1580
                                        #   in Loop: Header=BB12_180 Depth=2
	add.w	$s4, $s4, $a5
	ori	$a0, $zero, 4
	bge	$s4, $a0, .LBB12_177
.LBB12_180:                             # %for.body1495
                                        #   Parent Loop BB12_178 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_196 Depth 3
	srli.d	$a0, $s4, 1
	add.w	$a0, $a0, $fp
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	bnez	$a1, .LBB12_179
# %bb.181:                              # %land.lhs.true1512
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_179
# %bb.182:                              # %if.then1519
                                        #   in Loop: Header=BB12_180 Depth=2
	stptr.w	$s4, $a2, 5608
	stptr.w	$s8, $a2, 5612
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 40
	ori	$a2, $zero, 8
	bne	$a1, $a2, .LBB12_186
# %bb.183:                              # %if.then1519
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB12_186
# %bb.184:                              # %land.lhs.true1527
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 100
	beqz	$a1, .LBB12_186
# %bb.185:                              #   in Loop: Header=BB12_180 Depth=2
	move	$s2, $zero
	b	.LBB12_194
	.p2align	4, , 16
.LBB12_186:                             # %if.then1529
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $zero, 3
	slt	$a0, $a2, $a0
	st.w	$a0, $sp, 528
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_189
# %bb.187:                              # %lor.lhs.false1538
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_192
# %bb.188:                              # %lor.lhs.false1538
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_191
	b	.LBB12_192
.LBB12_189:                             # %land.lhs.true1542
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_192
# %bb.190:                              # %land.lhs.true1542.if.then1544_crit_edge
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_191:                             # %if.then1544
                                        #   in Loop: Header=BB12_180 Depth=2
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 516
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 508
	sub.w	$s2, $s1, $a0
	st.w	$s2, $sp, 508
	b	.LBB12_193
.LBB12_192:                             # %if.else1549
                                        #   in Loop: Header=BB12_180 Depth=2
	st.w	$zero, $sp, 512
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 504
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 508
.LBB12_193:                             # %if.end1551
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
.LBB12_194:                             # %if.end1555
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a0, $s6, 76
	add.w	$a1, $a0, $s8
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_179
# %bb.195:                              # %for.body1564.preheader
                                        #   in Loop: Header=BB12_180 Depth=2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	slli.d	$s3, $s1, 3
	.p2align	4, , 16
.LBB12_196:                             # %for.body1564
                                        #   Parent Loop BB12_178 Depth=1
                                        #     Parent Loop BB12_180 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s6, 92
	ldx.d	$a0, $a0, $s3
	add.w	$a1, $a1, $s4
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s6, 76
	addi.d	$s1, $s1, 1
	add.w	$a0, $s5, $a0
	addi.d	$s3, $s3, 8
	blt	$s1, $a0, .LBB12_196
	b	.LBB12_179
.LBB12_197:                             # %if.end1649
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 5644
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB12_200
# %bb.198:                              # %if.then1652
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 504
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	lu12i.w	$a7, 77
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_209
# %bb.199:                              # %lor.lhs.false1665
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_ue)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_ue)
	pcalau12i	$a4, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_210
.LBB12_200:                             # %for.cond1769.preheader
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s0, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 416                 # 8-byte Folded Spill
	move	$s4, $zero
	lu12i.w	$a0, 77
	ori	$s2, $a0, 1560
	ori	$s3, $zero, 4
	b	.LBB12_202
	.p2align	4, , 16
.LBB12_201:                             # %for.inc1828
                                        #   in Loop: Header=BB12_202 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$s4, $s5
	bge	$s5, $s3, .LBB12_226
.LBB12_202:                             # %for.cond1773.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_204 Depth 2
                                        #       Child Loop BB12_208 Depth 3
	move	$s6, $zero
	move	$s7, $s4
	bstrins.d	$s7, $zero, 0, 0
	add.w	$s5, $s4, $a6
	b	.LBB12_204
	.p2align	4, , 16
.LBB12_203:                             # %for.inc1825
                                        #   in Loop: Header=BB12_204 Depth=2
	add.w	$s6, $s6, $a5
	bge	$s6, $s3, .LBB12_201
.LBB12_204:                             # %for.body1776
                                        #   Parent Loop BB12_202 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_208 Depth 3
	srli.d	$a0, $s6, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB12_203
# %bb.205:                              # %land.lhs.true1794
                                        #   in Loop: Header=BB12_204 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_203
# %bb.206:                              # %if.then1801
                                        #   in Loop: Header=BB12_204 Depth=2
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_203
# %bb.207:                              # %for.body1810.preheader
                                        #   in Loop: Header=BB12_204 Depth=2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	slli.d	$s1, $s8, 3
	.p2align	4, , 16
.LBB12_208:                             # %for.body1810
                                        #   Parent Loop BB12_202 Depth=1
                                        #     Parent Loop BB12_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ld.w	$a1, $fp, 92
	ldx.d	$a0, $a0, $s1
	add.w	$a1, $a1, $s6
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 76
	addi.d	$s8, $s8, 1
	add.w	$a0, $s5, $a0
	addi.d	$s1, $s1, 8
	blt	$s8, $a0, .LBB12_208
	b	.LBB12_203
.LBB12_209:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_210:                             # %if.end1673
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a2, $sp, 504
	stx.d	$a1, $a0, $a2
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s6, $a0, %got_pc_lo12(dec_picture)
	ori	$s8, $a7, 1560
	b	.LBB12_212
	.p2align	4, , 16
.LBB12_211:                             # %for.inc1765
                                        #   in Loop: Header=BB12_212 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a3, $s5
	ori	$a0, $zero, 4
	bge	$s5, $a0, .LBB12_226
.LBB12_212:                             # %for.cond1678.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_214 Depth 2
                                        #       Child Loop BB12_225 Depth 3
	move	$fp, $zero
	move	$s7, $a3
	bstrins.d	$s7, $zero, 0, 0
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	add.w	$s5, $a3, $a6
	b	.LBB12_214
	.p2align	4, , 16
.LBB12_213:                             # %for.inc1762
                                        #   in Loop: Header=BB12_214 Depth=2
	add.w	$fp, $fp, $a5
	ori	$a0, $zero, 4
	bge	$fp, $a0, .LBB12_211
.LBB12_214:                             # %for.body1681
                                        #   Parent Loop BB12_212 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_225 Depth 3
	srli.d	$a0, $fp, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	bltu	$s3, $a1, .LBB12_213
# %bb.215:                              # %land.lhs.true1699
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_213
# %bb.216:                              # %if.then1706
                                        #   in Loop: Header=BB12_214 Depth=2
	stptr.w	$fp, $a2, 5608
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	stptr.w	$s1, $a2, 5612
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $zero, 3
	slt	$a0, $a2, $a0
	st.w	$a0, $sp, 528
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_219
# %bb.217:                              # %lor.lhs.false1718
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_222
# %bb.218:                              # %lor.lhs.false1718
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_221
	b	.LBB12_222
.LBB12_219:                             # %land.lhs.true1722
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_222
# %bb.220:                              # %land.lhs.true1722.if.then1724_crit_edge
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_221:                             # %if.then1724
                                        #   in Loop: Header=BB12_214 Depth=2
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 516
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 508
	ori	$s3, $zero, 1
	sub.w	$s2, $s0, $a0
	st.w	$s2, $sp, 508
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	b	.LBB12_223
.LBB12_222:                             # %if.else1731
                                        #   in Loop: Header=BB12_214 Depth=2
	st.w	$s3, $sp, 512
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 504
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s4
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 508
.LBB12_223:                             # %if.end1735
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.w	$a0, $s4, 76
	add.w	$a1, $a0, $s1
	add.w	$a2, $s5, $a0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB12_213
# %bb.224:                              # %for.body1746.preheader
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	slli.d	$s0, $s1, 3
	.p2align	4, , 16
.LBB12_225:                             # %for.body1746
                                        #   Parent Loop BB12_212 Depth=1
                                        #     Parent Loop BB12_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 8
	ld.w	$a1, $s4, 92
	ldx.d	$a0, $a0, $s0
	add.w	$a1, $a1, $fp
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 76
	addi.d	$s1, $s1, 1
	add.w	$a0, $s5, $a0
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB12_225
	b	.LBB12_213
.LBB12_226:                             # %if.end1831
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 504
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s6, $a2, $a1
	beqz	$a0, .LBB12_228
# %bb.227:                              # %lor.lhs.false1840
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	pcalau12i	$a4, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_229
.LBB12_228:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_229:                             # %if.end1848
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	lu12i.w	$a4, 77
	lu12i.w	$a5, 1
	move	$a7, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$a2, $sp, 504
	stx.d	$a1, $a0, $a2
	addi.d	$a1, $a3, 44
	addi.d	$a0, $s4, 616
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $a3, 48
	slli.d	$a0, $a6, 5
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a0, $a4, 1560
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s2, $zero, 4
	ori	$a0, $a5, 1488
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(.LCPI12_0)
	b	.LBB12_231
	.p2align	4, , 16
.LBB12_230:                             # %for.inc2355
                                        #   in Loop: Header=BB12_231 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a7, $a0
	bge	$a0, $s2, .LBB12_310
.LBB12_231:                             # %for.cond1853.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_234 Depth 2
                                        #       Child Loop BB12_269 Depth 3
                                        #         Child Loop BB12_270 Depth 4
                                        #       Child Loop BB12_273 Depth 3
                                        #         Child Loop BB12_274 Depth 4
                                        #       Child Loop BB12_242 Depth 3
                                        #         Child Loop BB12_244 Depth 4
                                        #           Child Loop BB12_246 Depth 5
                                        #             Child Loop BB12_249 Depth 6
                                        #             Child Loop BB12_252 Depth 6
                                        #           Child Loop BB12_255 Depth 5
                                        #             Child Loop BB12_258 Depth 6
                                        #             Child Loop BB12_261 Depth 6
                                        #       Child Loop BB12_282 Depth 3
                                        #       Child Loop BB12_301 Depth 3
                                        #         Child Loop BB12_305 Depth 4
                                        #       Child Loop BB12_293 Depth 3
                                        #         Child Loop BB12_295 Depth 4
	move	$t0, $zero
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	move	$a0, $a7
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a6
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a7
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB12_234
	.p2align	4, , 16
.LBB12_232:                             # %if.then1989
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $s4, 40
	beqz	$a0, .LBB12_263
.LBB12_233:                             # %for.inc2352
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a4, 77
	bge	$t0, $s2, .LBB12_230
.LBB12_234:                             # %for.body1856
                                        #   Parent Loop BB12_231 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_269 Depth 3
                                        #         Child Loop BB12_270 Depth 4
                                        #       Child Loop BB12_273 Depth 3
                                        #         Child Loop BB12_274 Depth 4
                                        #       Child Loop BB12_242 Depth 3
                                        #         Child Loop BB12_244 Depth 4
                                        #           Child Loop BB12_246 Depth 5
                                        #             Child Loop BB12_249 Depth 6
                                        #             Child Loop BB12_252 Depth 6
                                        #           Child Loop BB12_255 Depth 5
                                        #             Child Loop BB12_258 Depth 6
                                        #             Child Loop BB12_261 Depth 6
                                        #       Child Loop BB12_282 Depth 3
                                        #       Child Loop BB12_301 Depth 3
                                        #         Child Loop BB12_305 Depth 4
                                        #       Child Loop BB12_293 Depth 3
                                        #         Child Loop BB12_295 Depth 4
	addi.w	$a0, $t0, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ori	$t1, $a4, 1584
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	bnez	$a1, .LBB12_262
# %bb.235:                              # %land.lhs.true1874
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	beqz	$a0, .LBB12_232
# %bb.236:                              # %if.then1881
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_233
# %bb.237:                              # %for.body1906.lr.ph
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_233
# %bb.238:                              # %for.body1906.lr.ph.split.us
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 0
	ld.w	$a2, $s4, 76
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a4, 3
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $s4, 92
	ldx.w	$s8, $a4, $a0
	ld.w	$s7, $a3, 4
	add.d	$a0, $a1, $t0
	ldx.b	$a2, $a0, $a2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slli.w	$t1, $s8, 2
	slli.w	$a6, $s7, 2
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t1, $sp, 384                   # 8-byte Folded Spill
	st.d	$a6, $sp, 376                   # 8-byte Folded Spill
	blez	$s7, .LBB12_268
# %bb.239:                              # %for.body1906.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB12_234 Depth=2
	blez	$s8, .LBB12_272
# %bb.240:                              # %for.body1906.us.us.us.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$fp, $a0, 2
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	b	.LBB12_242
	.p2align	4, , 16
.LBB12_241:                             # %for.cond1909.for.inc1975_crit_edge.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB12_242 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB12_233
.LBB12_242:                             # %for.body1906.us.us.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_244 Depth 4
                                        #           Child Loop BB12_246 Depth 5
                                        #             Child Loop BB12_249 Depth 6
                                        #             Child Loop BB12_252 Depth 6
                                        #           Child Loop BB12_255 Depth 5
                                        #             Child Loop BB12_258 Depth 6
                                        #             Child Loop BB12_261 Depth 6
	ld.w	$a0, $s4, 76
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$s4, $t0
	b	.LBB12_244
	.p2align	4, , 16
.LBB12_243:                             # %for.cond1935.for.inc1969_crit_edge.split.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_244 Depth=4
	add.d	$s4, $s4, $s8
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB12_241
.LBB12_244:                             # %for.body1913.us.us.us.us.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_246 Depth 5
                                        #             Child Loop BB12_249 Depth 6
                                        #             Child Loop BB12_252 Depth 6
                                        #           Child Loop BB12_255 Depth 5
                                        #             Child Loop BB12_258 Depth 6
                                        #             Child Loop BB12_261 Depth 6
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $s0, 92
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a3
	ldx.d	$a4, $a0, $a3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.d	$a1, $sp, 480
	st.d	$t1, $sp, 0
	move	$a0, $s0
	move	$a3, $zero
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s4, $s0, 5608
	stptr.w	$s3, $s0, 5612
	st.w	$zero, $sp, 512
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s0
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 508
	ld.h	$a2, $sp, 480
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	xvreplgr2vr.d	$xr2, $s4
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	slli.d	$s1, $a4, 3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB12_246
	.p2align	4, , 16
.LBB12_245:                             # %for.cond1939.for.inc1966_crit_edge.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_246 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_253
.LBB12_246:                             # %for.cond1939.preheader.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_249 Depth 6
                                        #             Child Loop BB12_252 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	bgeu	$s8, $s2, .LBB12_248
# %bb.247:                              #   in Loop: Header=BB12_246 Depth=5
	move	$a7, $zero
	b	.LBB12_251
	.p2align	4, , 16
.LBB12_248:                             # %vector.body1368.preheader
                                        #   in Loop: Header=BB12_246 Depth=5
	add.d	$a6, $a1, $s3
	xvld	$xr0, $s5, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $t5, $a6
	add.d	$a7, $a5, $s1
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_249:                             # %vector.body1368
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        #           Parent Loop BB12_246 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr1, $a7, 0
	xvpickve2gr.d	$t1, $xr1, 0
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 1
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 2
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 3
	st.h	$a2, $t1, 0
	xvadd.d	$xr1, $xr0, $xr2
	xvpickve2gr.d	$t1, $xr1, 0
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr1, 1
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr1, 2
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr1, 3
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_249
# %bb.250:                              # %middle.block1374
                                        #   in Loop: Header=BB12_246 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_245
.LBB12_251:                             # %for.body1942.us.us.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_246 Depth=5
	add.d	$a5, $a5, $s1
	alsl.d	$a5, $a7, $a5, 3
	add.d	$a6, $s4, $a7
	alsl.d	$a6, $a6, $a4, 3
	sub.d	$a7, $s8, $a7
	.p2align	4, , 16
.LBB12_252:                             # %for.body1942.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        #           Parent Loop BB12_246 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 0
	st.w	$a0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB12_252
	b	.LBB12_245
	.p2align	4, , 16
.LBB12_253:                             # %for.cond1935.for.inc1969_crit_edge.split.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_244 Depth=4
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	stptr.w	$s4, $a1, 5608
	stptr.w	$s3, $a1, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 512
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a2, $s6
	xvst	$xr2, $sp, 320                  # 32-byte Folded Spill
	jirl	$ra, $a3, 0
	xvld	$xr2, $sp, 320                  # 32-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 508
	ld.h	$a2, $sp, 482
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	b	.LBB12_255
	.p2align	4, , 16
.LBB12_254:                             # %for.cond1939.for.inc1966_crit_edge.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_255 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_243
.LBB12_255:                             # %for.cond1939.preheader.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_258 Depth 6
                                        #             Child Loop BB12_261 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_257
# %bb.256:                              #   in Loop: Header=BB12_255 Depth=5
	move	$a7, $zero
	b	.LBB12_260
	.p2align	4, , 16
.LBB12_257:                             # %vector.body.preheader
                                        #   in Loop: Header=BB12_255 Depth=5
	add.d	$a6, $a1, $s3
	xvld	$xr0, $s5, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $t5, $a6
	addi.d	$a7, $a5, 16
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_258:                             # %vector.body
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        #           Parent Loop BB12_255 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a7, -16
	ld.d	$t2, $a7, -8
	ld.d	$t3, $a7, 0
	ld.d	$t4, $a7, 8
	st.h	$a2, $t1, 2
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	xvadd.d	$xr1, $xr0, $xr2
	xvpickve2gr.d	$t1, $xr1, 0
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr1, 1
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr1, 2
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr1, 3
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_258
# %bb.259:                              # %middle.block
                                        #   in Loop: Header=BB12_255 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_254
.LBB12_260:                             # %for.body1942.us.us.us.us.us.us.us.us.1.preheader
                                        #   in Loop: Header=BB12_255 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	sub.d	$a6, $s8, $a7
	add.d	$a7, $s4, $a7
	alsl.d	$a7, $a7, $a4, 3
	.p2align	4, , 16
.LBB12_261:                             # %for.body1942.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_242 Depth=3
                                        #         Parent Loop BB12_244 Depth=4
                                        #           Parent Loop BB12_255 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 2
	st.w	$a0, $a7, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB12_261
	b	.LBB12_254
	.p2align	4, , 16
.LBB12_262:                             # %if.else1978
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	bnez	$a0, .LBB12_233
	b	.LBB12_232
.LBB12_263:                             # %if.then1992
                                        #   in Loop: Header=BB12_234 Depth=2
	ldptr.w	$a1, $s4, 5624
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB12_267
# %bb.264:                              # %land.lhs.true1996
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $t6, 356
	beqz	$a0, .LBB12_267
# %bb.265:                              # %cond.true2013
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.bu	$a0, $s4, 4
	andi	$a2, $a0, 1
	sltui	$a3, $a2, 1
	ld.w	$a0, $s4, 76
	masknez	$a4, $s2, $a3
	ori	$a5, $zero, 2
	maskeqz	$a3, $a5, $a3
	or	$fp, $a3, $a4
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	bnez	$a2, .LBB12_276
# %bb.266:                              # %cond.false2021
                                        #   in Loop: Header=BB12_234 Depth=2
	srai.d	$a2, $a0, 1
	b	.LBB12_277
.LBB12_267:                             # %cond.false2026
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $s4, 76
	move	$fp, $zero
	move	$a2, $a0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	b	.LBB12_277
.LBB12_268:                             # %for.body1906.us.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_269:                             # %for.body1906.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_270 Depth 4
	move	$s1, $t0
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_270:                             # %for.body1913.us800
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_269 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s0
	ldx.d	$a4, $a0, $s0
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 480
	st.d	$t1, $sp, 0
	move	$a0, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	st.w	$zero, $sp, 512
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s6
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 512
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_270
# %bb.271:                              # %for.cond1909.for.inc1975_crit_edge.split.us806
                                        #   in Loop: Header=BB12_269 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_269
	b	.LBB12_233
.LBB12_272:                             # %for.body1906.us.us.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_273:                             # %for.body1906.us.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_274 Depth 4
	move	$s1, $t0
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_274:                             # %for.body1913.us.us808.us
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_273 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s0
	ldx.d	$a4, $a0, $s0
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 480
	st.d	$t1, $sp, 0
	move	$a0, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	st.w	$zero, $sp, 512
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s6
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 512
	ld.d	$a3, $s6, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_274
# %bb.275:                              # %for.cond1909.for.inc1975_crit_edge.split.us.split.us814.us
                                        #   in Loop: Header=BB12_273 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_273
	b	.LBB12_233
.LBB12_276:                             # %cond.true2017
                                        #   in Loop: Header=BB12_234 Depth=2
	addi.w	$a2, $a0, -4
	srai.d	$a2, $a2, 1
.LBB12_277:                             # %cond.end2028
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a3, $a6, 0
	addi.w	$s3, $a2, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a2, $s3
	slli.d	$a2, $a2, 3
	ld.w	$a4, $s4, 92
	ldx.d	$a5, $a3, $a2
	add.d	$a3, $t0, $a4
	ldx.bu	$a5, $a5, $a3
	addi.d	$a5, $a5, -255
	sltui	$s1, $a5, 1
	slli.d	$a5, $s1, 3
	ldx.d	$a5, $a6, $a5
	ldx.d	$a5, $a5, $a2
	ldx.bu	$a5, $a5, $a3
	ori	$a6, $zero, 255
	ori	$t7, $zero, 1584
	beq	$a5, $a6, .LBB12_290
# %bb.278:                              # %for.cond2120.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	ldptr.w	$a4, $s4, 5640
	slli.d	$a5, $fp, 2
	ldx.w	$a0, $a0, $a5
	slt	$a5, $a4, $a0
	masknez	$a0, $a0, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a0
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB12_297
# %bb.279:                              # %for.body2128.lr.ph
                                        #   in Loop: Header=BB12_234 Depth=2
	move	$a0, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a5, $s4, $a5
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	slli.d	$a7, $fp, 3
	pcalau12i	$t0, %got_pc_hi20(listX)
	ld.d	$t0, $t0, %got_pc_lo12(listX)
	slli.d	$t1, $fp, 8
	or	$a7, $t1, $a7
	add.d	$a7, $a6, $a7
	ld.d	$a6, $t0, 0
	addi.d	$a7, $a7, 24
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$t0, $s1, $t0, 3
	ori	$t3, $zero, 1
	b	.LBB12_282
	.p2align	4, , 16
.LBB12_280:                             # %if.end2180
                                        #   in Loop: Header=BB12_282 Depth=3
	ld.d	$t2, $t0, 0
	ld.w	$t3, $s4, 12
	ldx.d	$t2, $t2, $a2
	mul.d	$t3, $t3, $t7
	ldx.d	$t3, $a7, $t3
	slli.d	$t4, $a3, 3
	ldx.d	$t2, $t2, $t4
	xor	$t2, $t3, $t2
	sltui	$t2, $t2, 1
	addi.w	$a0, $a0, 1
	bnez	$t2, .LBB12_288
.LBB12_281:                             # %cleanup2204
                                        #   in Loop: Header=BB12_282 Depth=3
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$t3, $t1, 1
	bgeu	$t1, $a4, .LBB12_288
.LBB12_282:                             # %for.body2128
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t3
	ori	$t2, $zero, 1
	beqz	$a1, .LBB12_284
# %bb.283:                              # %land.rhs2132
                                        #   in Loop: Header=BB12_282 Depth=3
	ld.w	$t2, $t6, 356
	sltui	$t2, $t2, 1
.LBB12_284:                             # %land.end2135
                                        #   in Loop: Header=BB12_282 Depth=3
	bnez	$a5, .LBB12_280
# %bb.285:                              # %land.end2135
                                        #   in Loop: Header=BB12_282 Depth=3
	beqz	$t2, .LBB12_280
# %bb.286:                              # %if.then2143
                                        #   in Loop: Header=BB12_282 Depth=3
	ld.d	$t3, $t0, 0
	ld.d	$t2, $a6, 0
	ldx.d	$t3, $t3, $a2
	ld.w	$t4, $t2, 8
	slli.d	$t5, $a3, 3
	ldx.d	$t3, $t3, $t5
	slli.w	$t4, $t4, 1
	beq	$t3, $t4, .LBB12_309
# %bb.287:                              # %lor.lhs.false2160
                                        #   in Loop: Header=BB12_282 Depth=3
	ld.w	$t2, $t2, 12
	slli.w	$t2, $t2, 1
	xor	$t2, $t3, $t2
	sltui	$t2, $t2, 1
	addi.w	$a0, $a0, 1
	beqz	$t2, .LBB12_281
.LBB12_288:                             # %for.end2209
                                        #   in Loop: Header=BB12_234 Depth=2
	addi.w	$a0, $a0, -1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	masknez	$a1, $a2, $t2
	maskeqz	$a0, $a0, $t2
	or	$a0, $a0, $a1
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB12_298
# %bb.289:                              # %if.then2212
                                        #   in Loop: Header=BB12_234 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB12_299
	b	.LBB12_233
.LBB12_290:                             # %if.then2056
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	bge	$a1, $a2, .LBB12_233
# %bb.291:                              # %for.body2065.lr.ph
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	b	.LBB12_293
	.p2align	4, , 16
.LBB12_292:                             # %for.inc2113
                                        #   in Loop: Header=BB12_293 Depth=3
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	bge	$a2, $a3, .LBB12_233
.LBB12_293:                             # %for.body2065
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_295 Depth 4
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	add.w	$a5, $a1, $a4
	bge	$a3, $a5, .LBB12_292
# %bb.294:                              # %for.body2074.lr.ph
                                        #   in Loop: Header=BB12_293 Depth=3
	add.d	$a0, $t0, $a4
	slli.d	$a3, $a0, 3
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_295:                             # %for.body2074
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_293 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a4, $a4, 8
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a4, $a5
	stx.b	$zero, $a4, $a0
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $a5
	stx.b	$zero, $a4, $a0
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $t1
	ld.d	$a6, $a4, 0
	ld.d	$a4, $a4, 8
	ldx.d	$a6, $a6, $a5
	ldx.d	$a4, $a4, $a5
	ldx.d	$a5, $a6, $a3
	ldx.d	$a4, $a4, $a3
	st.h	$zero, $a5, 0
	st.h	$zero, $a4, 0
	st.h	$zero, $a5, 2
	st.h	$zero, $a4, 2
	ld.w	$a4, $s4, 92
	addi.d	$a0, $a0, 1
	add.w	$a5, $a1, $a4
	addi.d	$a3, $a3, 8
	blt	$a0, $a5, .LBB12_295
# %bb.296:                              # %for.inc2113.loopexit
                                        #   in Loop: Header=BB12_293 Depth=3
	ld.w	$a0, $s4, 76
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	b	.LBB12_292
.LBB12_297:                             #   in Loop: Header=BB12_234 Depth=2
	addi.w	$a0, $zero, -1
.LBB12_298:                             # %if.end2213
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_233
.LBB12_299:                             # %for.body2218.lr.ph
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	slli.d	$a2, $fp, 7
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	ld.w	$t2, $s4, 92
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a3, $fp, $a3, 3
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a4, $s1, $a4, 3
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	b	.LBB12_301
	.p2align	4, , 16
.LBB12_300:                             # %for.inc2345
                                        #   in Loop: Header=BB12_301 Depth=3
	addi.d	$a5, $a5, 1
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bge	$a5, $a6, .LBB12_233
.LBB12_301:                             # %for.body2218
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_305 Depth 4
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	add.w	$a6, $t2, $a6
	add.w	$a7, $a1, $t2
	bge	$a6, $a7, .LBB12_300
# %bb.302:                              # %for.body2230.lr.ph
                                        #   in Loop: Header=BB12_301 Depth=3
	ld.w	$a7, $s4, 76
	add.d	$a6, $a5, $s3
	add.d	$a7, $a5, $a7
	add.d	$t0, $t0, $t2
	slli.d	$t1, $t0, 3
	lu12i.w	$s0, 77
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB12_305
	.p2align	4, , 16
.LBB12_303:                             # %for.body2230.split.us
                                        #   in Loop: Header=BB12_305 Depth=4
	ld.d	$t2, $t5, 0
	ld.d	$t5, $a4, 0
	ld.d	$t6, $t2, 0
	ldx.d	$t4, $t5, $t4
	ld.d	$t2, $t2, 8
	ldx.d	$t5, $t6, $t3
	ldx.d	$t4, $t4, $t1
	ldx.d	$t2, $t2, $t3
	ldx.d	$t5, $t5, $t1
	ld.h	$t6, $t4, 0
	ldx.d	$t3, $t2, $t1
	st.h	$t6, $t5, 0
	st.h	$zero, $t3, 0
	ld.h	$t4, $t4, 2
	move	$t2, $zero
	st.h	$t4, $t5, 2
.LBB12_304:                             # %for.inc2342
                                        #   in Loop: Header=BB12_305 Depth=4
	st.h	$t2, $t3, 2
	ld.w	$t2, $s4, 92
	addi.d	$t0, $t0, 1
	add.w	$t3, $a1, $t2
	addi.d	$t1, $t1, 8
	bge	$t0, $t3, .LBB12_300
.LBB12_305:                             # %for.body2230
                                        #   Parent Loop BB12_231 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_301 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t2, $t6, 0
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t5
	ld.d	$t2, $t2, 0
	slli.d	$t3, $a7, 3
	ldx.d	$t4, $t2, $t3
	ld.w	$t2, $a2, 0
	stx.b	$a0, $t4, $t0
	ld.d	$t4, $t6, 0
	ldx.d	$t4, $t4, $t5
	ld.d	$t4, $t4, 8
	ldx.d	$t4, $t4, $t3
	stx.b	$zero, $t4, $t0
	ld.d	$t4, $t6, 0
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
	add.d	$t5, $t4, $t5
	slli.d	$t4, $a6, 3
	beq	$t2, $s1, .LBB12_303
# %bb.306:                              # %for.body2230.split
                                        #   in Loop: Header=BB12_305 Depth=4
	ld.d	$t5, $t5, 0
	ld.d	$t6, $a3, 0
	slli.d	$t7, $a0, 3
	ld.d	$t8, $a4, 0
	ld.d	$fp, $t5, 0
	ld.d	$t5, $t5, 8
	ldx.d	$t6, $t6, $t7
	ldx.d	$t4, $t8, $t4
	ldx.d	$t7, $fp, $t3
	ldx.d	$t3, $t5, $t3
	ori	$t8, $s0, 1452
	ldx.d	$t5, $t4, $t1
	ldx.w	$t8, $t6, $t8
	ldx.d	$t4, $t7, $t1
	ldx.d	$t3, $t3, $t1
	ld.hu	$t6, $t5, 0
	beqz	$t8, .LBB12_308
# %bb.307:                              # %for.body2230.split.split
                                        #   in Loop: Header=BB12_305 Depth=4
	st.h	$t6, $t4, 0
	st.h	$zero, $t3, 0
	ld.h	$t5, $t5, 2
	move	$t2, $zero
	st.h	$t5, $t4, 2
	b	.LBB12_304
.LBB12_308:                             # %for.body2230.split.split.us
                                        #   in Loop: Header=BB12_305 Depth=4
	ext.w.h	$t6, $t6
	mul.d	$t6, $t2, $t6
	addi.d	$t6, $t6, 128
	bstrpick.d	$t6, $t6, 31, 8
	st.h	$t6, $t4, 0
	ld.h	$t7, $t5, 0
	sub.d	$t6, $t6, $t7
	st.h	$t6, $t3, 0
	ld.h	$t6, $t5, 2
	mul.d	$t2, $t2, $t6
	addi.d	$t2, $t2, 128
	bstrpick.d	$t2, $t2, 31, 8
	st.h	$t2, $t4, 2
	ld.h	$t4, $t5, 2
	sub.d	$t2, $t2, $t4
	b	.LBB12_304
.LBB12_309:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB12_299
	b	.LBB12_233
.LBB12_310:                             # %for.end2357
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 504
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s0, $a2, $a1
	beqz	$a0, .LBB12_312
# %bb.311:                              # %lor.lhs.false2366
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	pcalau12i	$a4, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_313
.LBB12_312:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_313:                             # %if.end2374
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$a4, $zero
	addi.d	$a2, $sp, 504
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $a3, 172
	addi.d	$s6, $a3, 176
	ori	$a2, $zero, 1
	ori	$s2, $zero, 4
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 352                   # 8-byte Folded Spill
	b	.LBB12_315
	.p2align	4, , 16
.LBB12_314:                             # %for.inc2511
                                        #   in Loop: Header=BB12_315 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB12_353
.LBB12_315:                             # %for.cond2379.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_318 Depth 2
                                        #       Child Loop BB12_346 Depth 3
                                        #         Child Loop BB12_347 Depth 4
                                        #       Child Loop BB12_350 Depth 3
                                        #         Child Loop BB12_351 Depth 4
                                        #       Child Loop BB12_325 Depth 3
                                        #         Child Loop BB12_327 Depth 4
                                        #           Child Loop BB12_329 Depth 5
                                        #             Child Loop BB12_332 Depth 6
                                        #             Child Loop BB12_335 Depth 6
                                        #           Child Loop BB12_338 Depth 5
                                        #             Child Loop BB12_341 Depth 6
                                        #             Child Loop BB12_344 Depth 6
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $a4, $a6
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	blt	$a6, $a2, .LBB12_314
# %bb.316:                              # %for.body2382.us.preheader
                                        #   in Loop: Header=BB12_315 Depth=1
	move	$s1, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB12_318
	.p2align	4, , 16
.LBB12_317:                             # %for.inc2508.us
                                        #   in Loop: Header=BB12_318 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ori	$a2, $zero, 1
	bge	$s1, $s2, .LBB12_314
.LBB12_318:                             # %for.body2382.us
                                        #   Parent Loop BB12_315 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_346 Depth 3
                                        #         Child Loop BB12_347 Depth 4
                                        #       Child Loop BB12_350 Depth 3
                                        #         Child Loop BB12_351 Depth 4
                                        #       Child Loop BB12_325 Depth 3
                                        #         Child Loop BB12_327 Depth 4
                                        #           Child Loop BB12_329 Depth 5
                                        #             Child Loop BB12_332 Depth 6
                                        #             Child Loop BB12_335 Depth 6
                                        #           Child Loop BB12_338 Depth 5
                                        #             Child Loop BB12_341 Depth 6
                                        #             Child Loop BB12_344 Depth 6
	addi.w	$a0, $s1, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	bltu	$a2, $a1, .LBB12_317
# %bb.319:                              # %land.lhs.true2400.us
                                        #   in Loop: Header=BB12_318 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	beqz	$a0, .LBB12_317
# %bb.320:                              # %if.then2407.us
                                        #   in Loop: Header=BB12_318 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	blez	$a1, .LBB12_317
# %bb.321:                              # %for.body2432.lr.ph.split.us.us
                                        #   in Loop: Header=BB12_318 Depth=2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	ld.w	$a2, $s4, 76
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a4, 3
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $s4, 92
	ldx.w	$s8, $a4, $a0
	ld.w	$s7, $a3, 4
	add.d	$a0, $a1, $s1
	ldx.b	$a2, $a0, $a2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slli.w	$t0, $s8, 2
	slli.w	$a6, $s7, 2
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t0, $sp, 384                   # 8-byte Folded Spill
	st.d	$a6, $sp, 376                   # 8-byte Folded Spill
	blez	$s7, .LBB12_345
# %bb.322:                              # %for.body2432.lr.ph.split.us.split.us.us
                                        #   in Loop: Header=BB12_318 Depth=2
	blez	$s8, .LBB12_349
# %bb.323:                              # %for.body2432.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_318 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$fp, $a0, 2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	b	.LBB12_325
	.p2align	4, , 16
.LBB12_324:                             # %for.cond2435.for.inc2504_crit_edge.split.us.split.us.us.us.us.us
                                        #   in Loop: Header=BB12_325 Depth=3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB12_317
.LBB12_325:                             # %for.body2432.us.us.us.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_327 Depth 4
                                        #           Child Loop BB12_329 Depth 5
                                        #             Child Loop BB12_332 Depth 6
                                        #             Child Loop BB12_335 Depth 6
                                        #           Child Loop BB12_338 Depth 5
                                        #             Child Loop BB12_341 Depth 6
                                        #             Child Loop BB12_344 Depth 6
	ld.w	$a0, $s4, 76
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$s4, $s1
	b	.LBB12_327
	.p2align	4, , 16
.LBB12_326:                             # %for.cond2463.for.inc2498_crit_edge.split.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_327 Depth=4
	add.d	$s4, $s4, $s8
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB12_324
.LBB12_327:                             # %for.body2439.us.us.us.us.us.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_329 Depth 5
                                        #             Child Loop BB12_332 Depth 6
                                        #             Child Loop BB12_335 Depth 6
                                        #           Child Loop BB12_338 Depth 5
                                        #             Child Loop BB12_341 Depth 6
                                        #             Child Loop BB12_344 Depth 6
	ld.d	$s0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 92
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a3
	ldx.d	$a4, $a0, $a3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.d	$a1, $sp, 480
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s4, $s1, 5608
	stptr.w	$s3, $s1, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 512
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 0
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 508
	ld.h	$a2, $sp, 480
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	xvreplgr2vr.d	$xr2, $s4
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	slli.d	$s1, $a4, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	ori	$t6, $zero, 3
	b	.LBB12_329
	.p2align	4, , 16
.LBB12_328:                             # %for.cond2467.for.inc2495_crit_edge.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_329 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_336
.LBB12_329:                             # %for.cond2467.preheader.us.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_332 Depth 6
                                        #             Child Loop BB12_335 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	bgeu	$s8, $s2, .LBB12_331
# %bb.330:                              #   in Loop: Header=BB12_329 Depth=5
	move	$a7, $zero
	b	.LBB12_334
	.p2align	4, , 16
.LBB12_331:                             # %vector.body1400.preheader
                                        #   in Loop: Header=BB12_329 Depth=5
	add.d	$a6, $a1, $s3
	xvld	$xr0, $s5, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $t5, $a6
	add.d	$a7, $a5, $s1
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_332:                             # %vector.body1400
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        #           Parent Loop BB12_329 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr1, $a7, 0
	xvpickve2gr.d	$t1, $xr1, 0
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 1
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 2
	st.h	$a2, $t1, 0
	xvpickve2gr.d	$t1, $xr1, 3
	st.h	$a2, $t1, 0
	xvadd.d	$xr1, $xr0, $xr2
	xvpickve2gr.d	$t1, $xr1, 0
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr1, 1
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr1, 2
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr1, 3
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_332
# %bb.333:                              # %middle.block1406
                                        #   in Loop: Header=BB12_329 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_328
.LBB12_334:                             # %for.body2470.us.us.us.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_329 Depth=5
	add.d	$a5, $a5, $s1
	alsl.d	$a5, $a7, $a5, 3
	add.d	$a6, $s4, $a7
	alsl.d	$a6, $a6, $a4, 3
	sub.d	$a7, $s8, $a7
	.p2align	4, , 16
.LBB12_335:                             # %for.body2470.us.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        #           Parent Loop BB12_329 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 0
	st.w	$a0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB12_335
	b	.LBB12_328
	.p2align	4, , 16
.LBB12_336:                             # %for.cond2463.for.inc2498_crit_edge.split.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_327 Depth=4
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	stptr.w	$s4, $a1, 5608
	stptr.w	$s3, $a1, 5612
	st.w	$t6, $sp, 512
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 504
	xvst	$xr2, $sp, 288                  # 32-byte Folded Spill
	jirl	$ra, $a3, 0
	xvld	$xr2, $sp, 288                  # 32-byte Folded Reload
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 508
	ld.h	$a2, $sp, 482
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB12_338
	.p2align	4, , 16
.LBB12_337:                             # %for.cond2467.for.inc2495_crit_edge.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_338 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_326
.LBB12_338:                             # %for.cond2467.preheader.us.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_341 Depth 6
                                        #             Child Loop BB12_344 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_340
# %bb.339:                              #   in Loop: Header=BB12_338 Depth=5
	move	$a7, $zero
	b	.LBB12_343
	.p2align	4, , 16
.LBB12_340:                             # %vector.body1384.preheader
                                        #   in Loop: Header=BB12_338 Depth=5
	add.d	$a6, $a1, $s3
	xvld	$xr0, $s5, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $s6, $a6
	addi.d	$a7, $a5, 16
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_341:                             # %vector.body1384
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        #           Parent Loop BB12_338 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a7, -16
	ld.d	$t2, $a7, -8
	ld.d	$t3, $a7, 0
	ld.d	$t4, $a7, 8
	st.h	$a2, $t1, 2
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	xvadd.d	$xr1, $xr0, $xr2
	xvpickve2gr.d	$t1, $xr1, 0
	slli.d	$t1, $t1, 3
	xvpickve2gr.d	$t2, $xr1, 1
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr1, 2
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr1, 3
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_341
# %bb.342:                              # %middle.block1390
                                        #   in Loop: Header=BB12_338 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_337
.LBB12_343:                             # %for.body2470.us.us.us.us.us.us.us.us.us.1.preheader
                                        #   in Loop: Header=BB12_338 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	sub.d	$a6, $s8, $a7
	add.d	$a7, $s4, $a7
	alsl.d	$a7, $a7, $a4, 3
	.p2align	4, , 16
.LBB12_344:                             # %for.body2470.us.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_325 Depth=3
                                        #         Parent Loop BB12_327 Depth=4
                                        #           Parent Loop BB12_338 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 2
	st.w	$a0, $a7, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB12_344
	b	.LBB12_337
.LBB12_345:                             # %for.body2432.us.us904.preheader
                                        #   in Loop: Header=BB12_318 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_346:                             # %for.body2432.us.us904
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_347 Depth 4
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_347:                             # %for.body2439.us877.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_346 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a1, $a0, $s3
	ldx.d	$a4, $a0, $s3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 480
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 512
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 512
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_347
# %bb.348:                              # %for.cond2435.for.inc2504_crit_edge.split.us883.us
                                        #   in Loop: Header=BB12_346 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_346
	b	.LBB12_317
.LBB12_349:                             # %for.body2432.us.us.us910.preheader
                                        #   in Loop: Header=BB12_318 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_350:                             # %for.body2432.us.us.us910
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_351 Depth 4
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_351:                             # %for.body2439.us.us885.us.us
                                        #   Parent Loop BB12_315 Depth=1
                                        #     Parent Loop BB12_318 Depth=2
                                        #       Parent Loop BB12_350 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a1, $a0, $s3
	ldx.d	$a4, $a0, $s3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 480
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 512
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 512
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 504
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_351
# %bb.352:                              # %for.cond2435.for.inc2504_crit_edge.split.us.split.us891.us.us
                                        #   in Loop: Header=BB12_350 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_350
	b	.LBB12_317
.LBB12_353:                             # %for.end2513
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a3
	ld.w	$a0, $s4, 92
	add.d	$a3, $a1, $a3
	ld.d	$t2, $a2, 0
	ld.d	$t3, $a2, 8
	addi.d	$a2, $a1, 24
	ori	$a4, $zero, 264
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a1, $a5, $a4
	add.d	$a1, $a2, $a1
	ori	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	add.d	$a2, $a2, $a4
	ld.d	$a5, $a3, 8
	ld.w	$t4, $s4, 76
	addi.d	$a3, $a0, 1
	addi.d	$a4, $a0, 2
	ld.d	$a7, $a5, 8
	ld.d	$t0, $a5, 0
	addi.d	$a5, $a0, 3
	addi.w	$a6, $t4, 3
	alsl.d	$a7, $t4, $a7, 3
	alsl.d	$t0, $t4, $t0, 3
	addi.d	$t1, $t4, -1
	alsl.d	$t2, $t4, $t2, 3
	alsl.d	$t3, $t4, $t3, 3
	lu52i.d	$t4, $zero, -2048
	ori	$t5, $zero, 1584
	b	.LBB12_355
	.p2align	4, , 16
.LBB12_354:                             # %for.inc2611
                                        #   in Loop: Header=BB12_355 Depth=1
	stx.d	$t8, $fp, $t6
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	bge	$t1, $a6, .LBB12_371
.LBB12_355:                             # %for.body2520
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $t2, 0
	ldx.b	$t7, $t6, $a0
	move	$fp, $t4
	bltz	$t7, .LBB12_357
# %bb.356:                              # %if.then2537
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$t8, $s4, 12
	mul.d	$t8, $t8, $t5
	add.d	$t8, $a1, $t8
	slli.d	$t7, $t7, 3
	ldx.d	$fp, $t8, $t7
.LBB12_357:                             # %if.end2567
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.d	$t8, $t0, 0
	ld.d	$t7, $t3, 0
	slli.d	$s0, $a0, 3
	stx.d	$fp, $t8, $s0
	ldx.b	$fp, $t7, $a0
	move	$s1, $t4
	bltz	$fp, .LBB12_359
# %bb.358:                              # %if.then2577
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s1, $s4, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a2, $s1
	slli.d	$fp, $fp, 3
	ldx.d	$s1, $s1, $fp
.LBB12_359:                             # %for.body2527.1
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.d	$fp, $a7, 0
	stx.d	$s1, $fp, $s0
	ldx.b	$s0, $t6, $a3
	move	$s1, $t4
	bltz	$s0, .LBB12_361
# %bb.360:                              # %if.then2537.1
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s1, $s4, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a1, $s1
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $s1, $s0
.LBB12_361:                             # %if.end2567.1
                                        #   in Loop: Header=BB12_355 Depth=1
	slli.d	$s0, $a3, 3
	stx.d	$s1, $t8, $s0
	ldx.b	$s1, $t7, $a3
	move	$s2, $t4
	bltz	$s1, .LBB12_363
# %bb.362:                              # %if.then2577.1
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s2, $s4, 12
	mul.d	$s2, $s2, $t5
	add.d	$s2, $a2, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB12_363:                             # %for.inc2608.1
                                        #   in Loop: Header=BB12_355 Depth=1
	stx.d	$s2, $fp, $s0
	ldx.b	$s0, $t6, $a4
	move	$s1, $t4
	bltz	$s0, .LBB12_365
# %bb.364:                              # %if.then2537.2
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s1, $s4, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a1, $s1
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $s1, $s0
.LBB12_365:                             # %if.end2567.2
                                        #   in Loop: Header=BB12_355 Depth=1
	slli.d	$s0, $a4, 3
	stx.d	$s1, $t8, $s0
	ldx.b	$s1, $t7, $a4
	move	$s2, $t4
	bltz	$s1, .LBB12_367
# %bb.366:                              # %if.then2577.2
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s2, $s4, 12
	mul.d	$s2, $s2, $t5
	add.d	$s2, $a2, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB12_367:                             # %for.inc2608.2
                                        #   in Loop: Header=BB12_355 Depth=1
	stx.d	$s2, $fp, $s0
	ldx.b	$t6, $t6, $a5
	move	$s0, $t4
	bltz	$t6, .LBB12_369
# %bb.368:                              # %if.then2537.3
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$s0, $s4, 12
	mul.d	$s0, $s0, $t5
	add.d	$s0, $a1, $s0
	slli.d	$t6, $t6, 3
	ldx.d	$s0, $s0, $t6
.LBB12_369:                             # %if.end2567.3
                                        #   in Loop: Header=BB12_355 Depth=1
	slli.d	$t6, $a5, 3
	stx.d	$s0, $t8, $t6
	ldx.b	$t7, $t7, $a5
	move	$t8, $t4
	bltz	$t7, .LBB12_354
# %bb.370:                              # %if.then2577.3
                                        #   in Loop: Header=BB12_355 Depth=1
	ld.w	$t8, $s4, 12
	mul.d	$t8, $t8, $t5
	add.d	$t8, $a2, $t8
	slli.d	$t7, $t7, 3
	ldx.d	$t8, $t8, $t7
	b	.LBB12_354
.LBB12_371:                             # %for.end2613
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.Lfunc_end12:
	.size	readMotionInfoFromNAL, .Lfunc_end12-readMotionInfoFromNAL
                                        # -- End function
	.p2align	5                               # -- Begin function SetMotionVectorPredictor
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
	move	$s5, $a7
	move	$s3, $a6
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a4
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 224
	slli.w	$s7, $a6, 2
	move	$s6, $a0
	ld.w	$s8, $a0, 4
	slli.w	$a2, $a7, 2
	addi.d	$s1, $zero, -1
	alsl.w	$fp, $a6, $s1, 2
	addi.d	$a3, $sp, 112
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	alsl.w	$s1, $s5, $s1, 2
	addi.d	$a3, $sp, 88
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$s7, $s3, $s4, 2
	addi.d	$a3, $sp, 64
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 40
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB13_6
# %bb.1:                                # %if.then
	blt	$a0, $s3, .LBB13_4
# %bb.2:                                # %if.then7
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB13_5
# %bb.3:                                # %if.then9
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB13_6
	b	.LBB13_15
.LBB13_4:                               # %if.else18
	ori	$a0, $zero, 16
	bne	$s7, $a0, .LBB13_6
	b	.LBB13_15
.LBB13_5:                               # %if.else
	ori	$a0, $zero, 8
	beq	$s7, $a0, .LBB13_15
.LBB13_6:                               # %if.end25
	ld.w	$a0, $sp, 64
	beqz	$a0, .LBB13_15
# %bb.7:                                # %if.end28
	ldptr.w	$a1, $s6, 5624
	move	$t3, $s0
	beqz	$a1, .LBB13_16
.LBB13_8:                               # %if.else67
	ld.wu	$a0, $s6, 4
	ldptr.d	$a3, $s6, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a3, $a0
	ld.w	$a2, $a0, 356
	ld.w	$a0, $sp, 112
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a2, .LBB13_23
# %bb.9:                                # %if.then72
	slli.d	$a6, $s0, 3
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_11
# %bb.10:                               # %cond.true75
	ld.w	$a2, $sp, 132
	ldx.d	$a4, $t3, $a6
	ld.w	$a5, $sp, 116
	ori	$a7, $zero, 408
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ld.w	$a4, $sp, 128
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a3, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a2, $a2, $a4
	sltui	$a4, $a5, 1
	sll.w	$a4, $a2, $a4
.LBB13_11:                              # %cond.end105
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	addi.d	$t2, $zero, -1
	beqz	$a2, .LBB13_13
# %bb.12:                               # %cond.true109
	ld.w	$a5, $sp, 108
	ldx.d	$a7, $t3, $a6
	ld.w	$t0, $sp, 92
	ori	$t1, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	ld.w	$a7, $sp, 104
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a3, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a5, $a5, $a7
	sltui	$a7, $t0, 1
	sll.w	$a5, $a5, $a7
.LBB13_13:                              # %cond.end140
	ld.w	$a7, $sp, 64
	beqz	$a7, .LBB13_33
# %bb.14:                               # %cond.true144
	ld.w	$a7, $sp, 84
	ldx.d	$a6, $t3, $a6
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$t0, $a3, 356
	ldx.b	$a6, $a6, $a7
	move	$a3, $zero
	sltui	$a7, $t0, 1
	sll.w	$t2, $a6, $a7
	b	.LBB13_32
.LBB13_15:                              # %if.then27
	ld.d	$a0, $sp, 56
	vld	$vr0, $sp, 40
	st.d	$a0, $sp, 80
	vst	$vr0, $sp, 64
	ldptr.w	$a1, $s6, 5624
	move	$t3, $s0
	bnez	$a1, .LBB13_8
.LBB13_16:                              # %if.then30
	ld.w	$a0, $sp, 112
	addi.d	$t2, $zero, -1
	addi.d	$a4, $zero, -1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB13_18
# %bb.17:                               # %cond.true
	slli.d	$a2, $s0, 3
	ld.w	$a3, $sp, 132
	ldx.d	$a2, $t3, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 128
	ldx.b	$a4, $a2, $a3
.LBB13_18:                              # %cond.end
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	beqz	$a2, .LBB13_20
# %bb.19:                               # %cond.true39
	slli.d	$a3, $s0, 3
	ld.w	$a5, $sp, 108
	ldx.d	$a3, $t3, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 104
	ldx.b	$a5, $a3, $a5
.LBB13_20:                              # %cond.end50
	ld.w	$a3, $sp, 64
	beqz	$a3, .LBB13_33
# %bb.21:                               # %cond.true54
	slli.d	$a3, $s0, 3
	ld.w	$a6, $sp, 84
	ldx.d	$a3, $t3, $a3
	slli.d	$a6, $a6, 3
	ldx.d	$a3, $a3, $a6
	ld.w	$a6, $sp, 80
	ldx.b	$t2, $a3, $a6
.LBB13_22:                              # %cond.false267
	move	$a3, $zero
	b	.LBB13_32
.LBB13_23:                              # %if.else177
	addi.d	$t2, $zero, -1
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_26
# %bb.24:                               # %cond.true180
	slli.d	$a2, $s0, 3
	ld.w	$a4, $sp, 132
	ldx.d	$a2, $t3, $a2
	ld.w	$a5, $sp, 116
	ori	$a6, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 128
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a3, $a5
	ld.w	$a5, $a5, 356
	ldx.bu	$a2, $a2, $a4
	ext.w.b	$a4, $a2
	beqz	$a5, .LBB13_26
# %bb.25:                               # %cond.true187
	srai.d	$a4, $a4, 1
.LBB13_26:                              # %cond.end210
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	beqz	$a2, .LBB13_29
# %bb.27:                               # %cond.true214
	slli.d	$a5, $s0, 3
	ld.w	$a6, $sp, 108
	ldx.d	$a5, $t3, $a5
	ld.w	$a7, $sp, 92
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 104
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a3, $a7
	ld.w	$a7, $a7, 356
	ldx.bu	$a5, $a5, $a6
	ext.w.b	$a5, $a5
	beqz	$a7, .LBB13_29
# %bb.28:                               # %cond.true221
	srai.d	$a5, $a5, 1
.LBB13_29:                              # %cond.end245
	ld.w	$a6, $sp, 64
	beqz	$a6, .LBB13_33
# %bb.30:                               # %cond.true249
	slli.d	$a6, $s0, 3
	ld.w	$a7, $sp, 84
	ldx.d	$a6, $t3, $a6
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$a3, $a3, 356
	ldx.bu	$a6, $a6, $a7
	ext.w.b	$t2, $a6
	beqz	$a3, .LBB13_22
# %bb.31:                               # %cond.true256
	move	$a3, $zero
	srai.d	$t2, $t2, 1
.LBB13_32:                              # %if.end283
	ori	$t1, $zero, 1
	addi.w	$a6, $a4, 0
	addi.w	$a7, $t2, 0
	addi.w	$a5, $a5, 0
	beq	$a6, $s2, .LBB13_34
	b	.LBB13_36
.LBB13_33:
	move	$t1, $zero
	ori	$a3, $zero, 1
	addi.w	$a6, $a4, 0
	addi.w	$a7, $t2, 0
	addi.w	$a5, $a5, 0
	bne	$a6, $s2, .LBB13_36
.LBB13_34:                              # %if.end283
	beq	$a5, $s2, .LBB13_36
# %bb.35:                               # %if.end283
	ori	$a4, $zero, 1
	bne	$a7, $s2, .LBB13_39
.LBB13_36:                              # %if.else295
	xor	$a4, $a7, $s2
	sltui	$t0, $a4, 1
	xor	$a4, $a5, $s2
	sltu	$t2, $zero, $a4
	xor	$a4, $a6, $s2
	sltui	$a4, $a4, 1
	or	$a4, $a4, $t0
	or	$t3, $a4, $t2
	ori	$a4, $zero, 2
	masknez	$a4, $a4, $t3
	beq	$a6, $s2, .LBB13_39
# %bb.37:                               # %if.else295
	beqz	$t3, .LBB13_39
# %bb.38:                               # %land.lhs.true312
	ori	$a4, $zero, 3
	maskeqz	$a4, $a4, $t0
	maskeqz	$a4, $a4, $t2
.LBB13_39:                              # %if.end323
	ld.d	$t0, $sp, 232
	ori	$t2, $zero, 8
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	bne	$t3, $t2, .LBB13_43
# %bb.40:                               # %if.end323
	ori	$t2, $zero, 16
	bne	$t0, $t2, .LBB13_43
# %bb.41:                               # %if.then329
	beqz	$s3, .LBB13_46
# %bb.42:                               # %if.else338
	xor	$a5, $a7, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 3
	b	.LBB13_48
.LBB13_43:                              # %if.else345
	ori	$a7, $zero, 16
	bne	$t3, $a7, .LBB13_49
# %bb.44:                               # %if.else345
	ori	$a7, $zero, 8
	bne	$t0, $a7, .LBB13_49
# %bb.45:                               # %if.then351
	beqz	$s5, .LBB13_47
.LBB13_46:                              # %if.else360
	xor	$a5, $a6, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 1
	b	.LBB13_48
.LBB13_47:                              # %if.then354
	xor	$a5, $a5, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 2
.LBB13_48:                              # %if.then375
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
.LBB13_49:                              # %if.then375
	ld.w	$t6, $sp, 132
	ld.w	$t5, $sp, 128
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a5, 3
	beqz	$a0, .LBB13_53
# %bb.50:                               # %cond.true378
	ld.d	$a5, $a6, 0
	slli.d	$a7, $t6, 3
	ldx.d	$a5, $a5, $a7
	slli.d	$a7, $t5, 3
	ldx.d	$a5, $a5, $a7
	ld.h	$t4, $a5, 0
	ld.w	$t3, $sp, 108
	ld.w	$t2, $sp, 104
	beqz	$a2, .LBB13_54
.LBB13_51:                              # %cond.true395
	ld.d	$a5, $a6, 0
	slli.d	$a7, $t3, 3
	ldx.d	$a5, $a5, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a5, $a5, $a7
	ld.h	$t7, $a5, 0
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a2
	beqz	$a3, .LBB13_55
.LBB13_52:
	move	$t8, $zero
	b	.LBB13_56
.LBB13_53:
	move	$t4, $zero
	ld.w	$t3, $sp, 108
	ld.w	$t2, $sp, 104
	bnez	$a2, .LBB13_51
.LBB13_54:
	move	$t7, $zero
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a2
	bnez	$a3, .LBB13_52
.LBB13_55:                              # %cond.true412
	ld.d	$a5, $a6, 0
	slli.d	$t8, $t0, 3
	ldx.d	$a5, $a5, $t8
	slli.d	$t8, $a7, 3
	ldx.d	$a5, $a5, $t8
	ld.h	$t8, $a5, 0
.LBB13_56:                              # %if.end670
	slli.d	$a5, $a4, 2
	pcalau12i	$a4, %pc_hi20(.LJTI13_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI13_0)
	ldx.w	$s1, $a4, $a5
	add.d	$s1, $a4, $s1
	or	$a4, $fp, $t1
	jr	$s1
.LBB13_57:                              # %sw.bb
	beqz	$a4, .LBB13_61
# %bb.58:                               # %if.else677
	slt	$t1, $t7, $t8
	masknez	$fp, $t8, $t1
	maskeqz	$t1, $t7, $t1
	or	$t1, $t1, $fp
	slt	$fp, $t4, $t1
	masknez	$t1, $t1, $fp
	maskeqz	$fp, $t4, $fp
	or	$t1, $fp, $t1
	slt	$fp, $t8, $t7
	masknez	$s1, $t8, $fp
	maskeqz	$fp, $t7, $fp
	or	$fp, $fp, $s1
	slt	$s1, $fp, $t4
	masknez	$fp, $fp, $s1
	maskeqz	$s1, $t4, $s1
	or	$fp, $s1, $fp
	add.d	$t4, $t7, $t4
	add.d	$t4, $t4, $t8
	add.d	$t1, $fp, $t1
	sub.d	$t4, $t4, $t1
	b	.LBB13_61
.LBB13_59:                              # %sw.bb687
	move	$t4, $t7
	b	.LBB13_61
.LBB13_60:                              # %sw.bb688
	move	$t4, $t8
.LBB13_61:                              # %sw.epilog
	ld.w	$t8, $sp, 116
	ld.w	$t7, $sp, 92
	ld.w	$t1, $sp, 68
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	st.h	$t4, $s1, 0
	beqz	$a1, .LBB13_68
# %bb.62:                               # %if.else427.1
	ld.wu	$a1, $s6, 4
	ldptr.d	$t4, $s6, 5600
	ori	$fp, $zero, 408
	mul.d	$a1, $a1, $fp
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	beqz	$a1, .LBB13_71
# %bb.63:                               # %if.then434.1
	beqz	$a0, .LBB13_74
# %bb.64:                               # %cond.true437.1
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 408
	slli.d	$t5, $t5, 3
	ldx.d	$a0, $a0, $t5
	mul.d	$a1, $t8, $a1
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	ld.hu	$a0, $a0, 2
	beqz	$a1, .LBB13_79
# %bb.65:                               # %cond.true444.1
	ext.w.h	$a0, $a0
	beqz	$a2, .LBB13_75
.LBB13_66:                              # %cond.true475.1
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.hu	$a1, $a1, 2
	beqz	$a2, .LBB13_80
# %bb.67:                               # %cond.true482.1
	ext.w.h	$a1, $a1
	bnez	$a3, .LBB13_85
	b	.LBB13_81
.LBB13_68:                              # %if.then375.1
	beqz	$a0, .LBB13_76
# %bb.69:                               # %cond.true378.1
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 3
	ldx.d	$a0, $a0, $a1
	ld.h	$a0, $a0, 2
	beqz	$a2, .LBB13_77
.LBB13_70:                              # %cond.true395.1
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	ld.h	$a1, $a1, 2
	beqz	$a3, .LBB13_78
	b	.LBB13_85
.LBB13_71:                              # %if.else551.1
	beqz	$a0, .LBB13_83
# %bb.72:                               # %cond.true554.1
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 408
	slli.d	$t5, $t5, 3
	ldx.d	$a0, $a0, $t5
	mul.d	$a1, $t8, $a1
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	ld.h	$a0, $a0, 2
	sltu	$a1, $zero, $a1
	sll.w	$a0, $a0, $a1
	beqz	$a2, .LBB13_84
.LBB13_73:                              # %cond.true593.1
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.h	$a1, $a1, 2
	sltu	$a2, $zero, $a2
	sll.w	$a1, $a1, $a2
	bnez	$a3, .LBB13_85
	b	.LBB13_89
.LBB13_74:
	move	$a0, $zero
	bnez	$a2, .LBB13_66
.LBB13_75:
	move	$a1, $zero
	beqz	$a3, .LBB13_81
	b	.LBB13_85
.LBB13_76:
	move	$a0, $zero
	bnez	$a2, .LBB13_70
.LBB13_77:
	move	$a1, $zero
	bnez	$a3, .LBB13_85
.LBB13_78:                              # %cond.true412.1
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	slli.d	$a3, $a7, 3
	ldx.d	$a2, $a2, $a3
	ld.h	$a2, $a2, 2
	b	.LBB13_86
.LBB13_79:                              # %cond.false456.1
	srli.d	$a1, $a0, 15
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 1
	bnez	$a2, .LBB13_66
	b	.LBB13_75
.LBB13_80:                              # %cond.false494.1
	srli.d	$a2, $a1, 15
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	bnez	$a3, .LBB13_85
.LBB13_81:                              # %cond.true514.1
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 408
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	mul.d	$a3, $t1, $a3
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	ld.hu	$a2, $a2, 2
	beqz	$a3, .LBB13_90
# %bb.82:                               # %cond.true521.1
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	ext.w.h	$a2, $a2
	jr	$a3
.LBB13_83:
	move	$a0, $zero
	bnez	$a2, .LBB13_73
.LBB13_84:
	move	$a1, $zero
	beqz	$a3, .LBB13_89
.LBB13_85:
	move	$a2, $zero
.LBB13_86:                              # %if.end670.1
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_87:                              # %sw.bb.1
	beqz	$a4, .LBB13_93
# %bb.88:                               # %if.else677.1
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
	b	.LBB13_93
.LBB13_89:                              # %cond.true632.1
	ld.d	$a2, $a6, 0
	ori	$a3, $zero, 408
	mul.d	$a3, $t1, $a3
	slli.d	$a6, $t0, 3
	ldx.d	$a2, $a2, $a6
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	pcalau12i	$a6, %pc_hi20(.LJTI13_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a6, $a5
	ld.h	$a2, $a2, 2
	sltu	$a3, $zero, $a3
	add.d	$a5, $a6, $a5
	sll.w	$a2, $a2, $a3
	jr	$a5
.LBB13_90:                              # %cond.false533.1
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	srli.d	$a6, $a2, 15
	add.d	$a2, $a2, $a6
	ext.w.h	$a2, $a2
	add.d	$a3, $a3, $a5
	srai.d	$a2, $a2, 1
	jr	$a3
.LBB13_91:                              # %sw.bb687.1
	move	$a0, $a1
	b	.LBB13_93
.LBB13_92:                              # %sw.bb688.1
	move	$a0, $a2
.LBB13_93:                              # %sw.epilog.1
	st.h	$a0, $s1, 2
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
.Lfunc_end13:
	.size	SetMotionVectorPredictor, .Lfunc_end13-SetMotionVectorPredictor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_57-.LJTI13_0
	.word	.LBB13_61-.LJTI13_0
	.word	.LBB13_59-.LJTI13_0
	.word	.LBB13_60-.LJTI13_0
.LJTI13_1:
	.word	.LBB13_87-.LJTI13_1
	.word	.LBB13_93-.LJTI13_1
	.word	.LBB13_91-.LJTI13_1
	.word	.LBB13_92-.LJTI13_1
                                        # -- End function
	.text
	.globl	read_ipred_modes                # -- Begin function read_ipred_modes
	.p2align	5
	.type	read_ipred_modes,@function
read_ipred_modes:                       # @read_ipred_modes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a0, $a0, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 40
	addi.w	$a1, $a0, -9
	ori	$a2, $zero, 5
	ldptr.d	$a6, $fp, 5592
	sltu	$a2, $a2, $a1
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	ld.w	$a3, $a6, 28
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	orn	$a1, $a2, $a1
	slli.d	$a2, $a3, 6
	alsl.d	$a2, $a3, $a2, 4
	add.d	$a2, $a4, $a2
	ld.w	$a3, $a2, 16
	ori	$a4, $zero, 56
	pcalau12i	$s7, %pc_hi20(active_pps)
	ld.d	$a5, $s7, %pc_lo12(active_pps)
	mul.d	$a4, $a3, $a4
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 40
	addi.d	$a0, $a0, -12
	ld.w	$a5, $a5, 12
	sltu	$a3, $zero, $a0
	add.d	$s0, $a6, $a4
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 168
	beqz	$a5, .LBB14_3
# %bb.1:                                # %lor.lhs.false19
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	bnez	$a0, .LBB14_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(readIntraPredMode_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readIntraPredMode_CABAC)
	st.d	$a0, $sp, 208
.LBB14_3:                               # %if.end
	move	$a0, $zero
	and	$a1, $a1, $a3
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a5, $a2, 328
	ori	$a6, $zero, 13
	addi.w	$s6, $zero, -1
	ori	$a7, $zero, 11
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %for.inc204.thread
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$a1, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a3, 1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ori	$a6, $zero, 13
	ori	$a2, $zero, 3
	ori	$a7, $zero, 11
	beq	$a3, $a2, .LBB14_40
.LBB14_5:                               # %for.body.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #     Child Loop BB14_11 Depth 2
                                        #       Child Loop BB14_12 Depth 3
                                        #         Child Loop BB14_35 Depth 4
	slli.d	$a2, $a0, 2
	sub.d	$a2, $zero, $a2
	slli.d	$a3, $a0, 1
	move	$t0, $a0
	.p2align	4, , 16
.LBB14_6:                               # %for.body
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a4, $a5, $t0
	beq	$a4, $a6, .LBB14_9
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB14_6 Depth=2
	beq	$a4, $a7, .LBB14_9
# %bb.8:                                # %for.inc204
                                        #   in Loop: Header=BB14_6 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, 2
	addi.d	$a0, $a0, 1
	ori	$a4, $zero, 4
	bne	$t0, $a4, .LBB14_6
	b	.LBB14_39
	.p2align	4, , 16
.LBB14_9:                               # %if.then32
                                        #   in Loop: Header=BB14_5 Depth=1
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a4, $a4, -13
	sltu	$a5, $zero, $a4
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sltui	$a4, $a4, 1
	andi	$a0, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	andi	$a0, $a3, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s1, $a4, 1
	sub.d	$a0, $zero, $a2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_10:                              # %for.inc200
                                        #   in Loop: Header=BB14_11 Depth=2
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB14_4
.LBB14_11:                              # %for.body43
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_12 Depth 3
                                        #         Child Loop BB14_35 Depth 4
	move	$a0, $zero
	move	$a4, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	or	$a1, $a1, $a3
	ld.w	$a2, $fp, 76
	slli.d	$a5, $a4, 1
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	slli.w	$a5, $a1, 2
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	alsl.w	$a1, $a1, $s6, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $a3, $a4
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB14_12:                              # %for.body48
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_35 Depth 4
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ld.w	$s2, $fp, 92
	move	$s8, $a0
	beqz	$a1, .LBB14_14
# %bb.13:                               # %lor.lhs.false55
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB14_15
.LBB14_14:                              # %if.then59
                                        #   in Loop: Header=BB14_12 Depth=3
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(readSyntaxElement_Intra4x4PredictionMode)
	jirl	$ra, $ra, 0
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              # %if.else
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a3, $s0, 48
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 192
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
.LBB14_16:                              # %if.end65
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	or	$s3, $s8, $a1
	slli.w	$s4, $s3, 2
	alsl.w	$a1, $s3, $s6, 2
	addi.d	$a3, $sp, 144
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 120
	move	$a1, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB14_23
# %bb.17:                               # %if.then74
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB14_20
# %bb.18:                               # %cond.true
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 148
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 120
	st.w	$a0, $sp, 144
	beqz	$a1, .LBB14_21
.LBB14_19:                              # %cond.true82
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 124
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB14_22
	.p2align	4, , 16
.LBB14_20:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
	ld.w	$a1, $sp, 120
	st.w	$a0, $sp, 144
	bnez	$a1, .LBB14_19
.LBB14_21:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
.LBB14_22:                              # %cond.end88
                                        #   in Loop: Header=BB14_12 Depth=3
	st.w	$a0, $sp, 120
.LBB14_23:                              # %if.end91
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 1
	ori	$a2, $zero, 9
	bne	$a0, $a2, .LBB14_27
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB14_27
# %bb.25:                               # %if.then98
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB14_37
# %bb.26:                               # %if.then101
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 164
	ldptr.d	$a2, $fp, 5568
	slli.d	$a0, $a0, 3
	ld.w	$a3, $sp, 160
	ldx.d	$a0, $a2, $a0
	slli.d	$a2, $a3, 2
	ldx.w	$a0, $a0, $a2
	sltu	$a0, $zero, $a0
	ld.w	$a2, $sp, 120
	bnez	$a2, .LBB14_38
	b	.LBB14_28
	.p2align	4, , 16
.LBB14_27:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
.LBB14_28:                              # %if.end124
                                        #   in Loop: Header=BB14_12 Depth=3
	move	$a2, $s6
	beqz	$a1, .LBB14_31
# %bb.29:                               # %if.end124
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 120
	move	$a2, $s6
	beqz	$a1, .LBB14_31
# %bb.30:                               # %cond.true130
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 140
	ldptr.d	$a2, $fp, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $sp, 136
	ldx.bu	$a2, $a1, $a2
.LBB14_31:                              # %cond.end139
                                        #   in Loop: Header=BB14_12 Depth=3
	move	$a1, $s6
	bnez	$a0, .LBB14_34
# %bb.32:                               # %cond.end139
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	move	$a1, $s6
	beqz	$a0, .LBB14_34
# %bb.33:                               # %cond.true146
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 164
	ldptr.d	$a1, $fp, 5544
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 160
	ldx.bu	$a1, $a0, $a1
.LBB14_34:                              # %cond.end156
                                        #   in Loop: Header=BB14_12 Depth=3
	add.w	$s2, $s2, $s3
	or	$a0, $a2, $a1
	slti	$a0, $a0, 0
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	ld.w	$a2, $sp, 172
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	sltui	$a1, $a1, 1
	slt	$a3, $a2, $a0
	xori	$a3, $a3, 1
	add.w	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s4, $a0, $a1
	move	$s3, $s1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB14_35:                              # %for.body188
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        #       Parent Loop BB14_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldptr.d	$a0, $fp, 5544
	ldx.d	$a0, $a0, $s5
	add.d	$a0, $a0, $s2
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB14_35
# %bb.36:                               # %for.inc197
                                        #   in Loop: Header=BB14_12 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bltu	$s8, $a1, .LBB14_12
	b	.LBB14_10
.LBB14_37:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
	ld.w	$a2, $sp, 120
	beqz	$a2, .LBB14_28
.LBB14_38:                              # %if.then112
                                        #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 140
	ldptr.d	$a2, $fp, 5568
	slli.d	$a1, $a1, 3
	ld.w	$a3, $sp, 136
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 2
	ldx.w	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	b	.LBB14_28
.LBB14_39:                              # %for.end206
	andi	$a0, $a1, 1
	bnez	$a0, .LBB14_46
.LBB14_40:                              # %land.lhs.true208
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB14_46
# %bb.41:                               # %if.then211
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$s0, $zero, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 12
	st.w	$s0, $sp, 168
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a1, $a2
	beqz	$a0, .LBB14_43
# %bb.42:                               # %lor.lhs.false222
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_ue)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_ue)
	pcalau12i	$a5, %got_pc_hi20(readCIPredMode_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readCIPredMode_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB14_44
.LBB14_43:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB14_44:                              # %if.end229
	addi.d	$a3, $sp, 168
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 172
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, 352
	bltu	$a0, $s0, .LBB14_46
# %bb.45:                               # %if.then240
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB14_46:                              # %if.end242
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end14:
	.size	read_ipred_modes, .Lfunc_end14-read_ipred_modes
                                        # -- End function
	.globl	readCBPandCoeffsFromNAL         # -- Begin function readCBPandCoeffsFromNAL
	.p2align	5
	.type	readCBPandCoeffsFromNAL,@function
readCBPandCoeffsFromNAL:                # @readCBPandCoeffsFromNAL
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	move	$s1, $a0
	ld.w	$a0, $a0, 4
	ldptr.d	$a1, $s1, 5600
	ori	$a2, $zero, 408
	ld.w	$a4, $s1, 44
	ldptr.d	$a3, $s1, 5592
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	ori	$a2, $zero, 3
	add.d	$s5, $a1, $a0
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bne	$a4, $a2, .LBB15_2
# %bb.1:                                # %land.lhs.true
	ld.w	$s6, $s5, 40
	addi.w	$a0, $s6, -9
	addi.w	$a1, $zero, -6
	and	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	b	.LBB15_3
.LBB15_2:                               # %lor.rhs
	ld.w	$s6, $s5, 40
	addi.d	$a0, $a4, -4
	sltui	$a0, $a0, 1
	addi.d	$a1, $s6, -12
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
.LBB15_3:                               # %lor.end
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	lu12i.w	$a2, 1
	ori	$s0, $a2, 1788
	ldx.w	$a2, $s1, $s0
	ld.w	$a3, $s1, 28
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	lu12i.w	$a4, 77
	sub.w	$a2, $zero, $a2
	ori	$a4, $a4, 1652
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	bne	$a3, $a2, .LBB15_5
# %bb.4:                                # %land.rhs41
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1824
	ldx.w	$a2, $s1, $a2
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
.LBB15_5:                               # %land.end43
	ldptr.w	$a2, $s1, 5584
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$s2, $a1, $a3
	slli.d	$a1, $a0, 6
	pcalau12i	$a3, %pc_hi20(SNGL_SCAN)
	addi.d	$t0, $a3, %pc_lo12(SNGL_SCAN)
	beqz	$a2, .LBB15_7
# %bb.6:
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN)
	addi.d	$s7, $a2, %pc_lo12(FIELD_SCAN)
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a2, $a2, %pc_lo12(FIELD_SCAN8x8)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	b	.LBB15_8
.LBB15_7:                               # %land.rhs50
	ld.w	$a2, $s5, 356
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $t0, $a2
	or	$s7, $a2, $a3
.LBB15_8:                               # %land.end54
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	alsl.d	$a0, $a0, $a1, 4
	lu12i.w	$s3, 174762
	beqz	$s2, .LBB15_10
# %bb.9:                                # %for.cond.preheader
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	ldx.w	$a1, $s1, $a1
	ld.w	$a3, $s5, 4
	add.w	$a3, $a1, $a3
	ori	$a4, $s3, 2731
	mul.d	$a5, $a3, $a4
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	st.w	$a5, $sp, 428
	ori	$a6, $zero, 6
	ld.w	$a7, $s5, 8
	mul.d	$a5, $a5, $a6
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 420
	add.w	$a1, $a1, $a7
	mul.d	$a3, $a1, $a4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	st.w	$a3, $sp, 432
	mul.d	$a3, $a3, $a6
	sub.d	$a1, $a1, $a3
	st.w	$a1, $sp, 424
.LBB15_10:                              # %if.end80
	lu12i.w	$fp, 7
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a0, $s6, -9
	ori	$a1, $zero, 5
	pcalau12i	$a2, %pc_hi20(active_pps)
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB15_13
# %bb.11:                               # %if.end80
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI15_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI15_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	ori	$a0, $zero, 6
	jr	$a1
.LBB15_12:                              # %if.else237
	ld.w	$a0, $s5, 300
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_13:                              # %lor.rhs92
	addi.d	$a0, $s6, -13
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 11
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 6
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB15_14:                              # %lor.end95
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a0, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a1, $a1, 12
	st.w	$a0, $sp, 568
	ori	$a0, $zero, 56
	mul.d	$a0, $a3, $a0
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_16
# %bb.15:                               # %lor.lhs.false105
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_19
.LBB15_16:                              # %if.then107
	pcalau12i	$a0, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_cbp_intra)
	ori	$a3, $zero, 9
	addi.d	$a0, $sp, 600
	beq	$s6, $a3, .LBB15_20
# %bb.17:                               # %if.then107
	ori	$a3, $zero, 12
	beq	$s6, $a3, .LBB15_20
# %bb.18:                               # %lor.rhs113
	pcalau12i	$a1, %got_pc_hi20(linfo_cbp_inter)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_cbp_inter)
	pcalau12i	$a3, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_cbp_intra)
	addi.d	$a4, $s6, -13
	sltui	$a4, $a4, 1
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	b	.LBB15_20
.LBB15_19:
	pcalau12i	$a0, %got_pc_hi20(readCBP_CABAC)
	ld.d	$a1, $a0, %got_pc_lo12(readCBP_CABAC)
	addi.d	$a0, $sp, 608
.LBB15_20:                              # %if.end119
	st.d	$a1, $a0, 0
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $s5, 40
	ld.w	$a3, $sp, 572
	addi.w	$a1, $a0, -1
	ori	$a2, $zero, 3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.w	$a3, $s5, 300
	bltu	$a1, $a2, .LBB15_25
# %bb.21:                               # %lor.lhs.false126
	bnez	$a0, .LBB15_24
# %bb.22:                               # %land.lhs.true129
	ld.w	$a1, $s1, 44
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB15_24
# %bb.23:                               # %land.lhs.true132
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a1, $a1, 2084
	bnez	$a1, .LBB15_32
.LBB15_24:                              # %lor.lhs.false134
	ld.w	$a1, $s5, 400
	beqz	$a1, .LBB15_26
.LBB15_25:                              # %land.lhs.true136
	ori	$a1, $a0, 4
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB15_32
.LBB15_26:                              # %if.end172
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_37
.LBB15_27:                              # %if.then174
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB15_29
# %bb.28:                               # %if.then174
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a2, $a1, $a2
	ori	$a1, $zero, 17
	bnez	$a2, .LBB15_30
.LBB15_29:                              # %land.rhs183
	addi.d	$a0, $a0, -14
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 16
.LBB15_30:                              # %land.end186
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a1, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 568
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a2, $a2, $a1
	beqz	$a0, .LBB15_38
# %bb.31:                               # %lor.lhs.false198
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_se)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_se)
	pcalau12i	$a5, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB15_39
.LBB15_32:                              # %land.lhs.true142
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 15
	beqz	$a1, .LBB15_26
# %bb.33:                               # %land.rhs145
	ldptr.w	$a1, $s1, 5908
	beqz	$a1, .LBB15_27
# %bb.34:                               # %if.then150
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ori	$a2, $zero, 56
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a4, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a0, $a2
	st.w	$zero, $sp, 568
	st.d	$a4, $sp, 608
	beqz	$a3, .LBB15_36
# %bb.35:                               # %lor.lhs.false159
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB15_305
.LBB15_36:                              # %if.then163
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 580
	addi.d	$a0, $sp, 568
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	b	.LBB15_306
.LBB15_37:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_38:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_39:                              # %if.end206
	addi.d	$a3, $sp, 568
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ldx.wu	$a0, $s1, $s0
	ld.w	$a1, $sp, 572
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s5, 16
	blt	$a1, $a3, .LBB15_41
# %bb.40:                               # %if.end206
	addi.d	$a2, $a2, 25
	bge	$a2, $a1, .LBB15_42
.LBB15_41:                              # %if.then222
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 16
	ldx.w	$a0, $s1, $s0
.LBB15_42:                              # %if.end223
	ld.w	$a2, $s1, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	addi.w	$a1, $a1, 52
	addi.w	$a2, $a0, 52
	mod.w	$a1, $a1, $a2
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s1, 28
.LBB15_43:                              # %if.end239
	ori	$s4, $fp, 1536
	addi.d	$fp, $s1, 2047
	addi.d	$a0, $fp, 361
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1129
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 1897
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 616
	st.d	$s1, $sp, 360                   # 8-byte Folded Spill
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 40
	ori	$a0, $a0, 4
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB15_61
# %bb.44:                               # %if.then263
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 17
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 68
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 568
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a2, $a2, $a1
	beqz	$a0, .LBB15_46
# %bb.45:                               # %lor.lhs.false273
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_se)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_se)
	pcalau12i	$a5, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB15_47
.LBB15_46:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_47:                              # %if.end281
	addi.d	$a3, $sp, 568
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ldx.wu	$a5, $fp, $s0
	ld.w	$a1, $sp, 572
	srli.d	$a2, $a5, 31
	add.w	$a2, $a5, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s5, 16
	blt	$a1, $a3, .LBB15_49
# %bb.48:                               # %if.end281
	addi.d	$a2, $a2, 25
	bge	$a2, $a1, .LBB15_50
.LBB15_49:                              # %if.then298
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 16
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a5, $a0, $s0
.LBB15_50:                              # %if.end299
	move	$s3, $s6
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a5, $a1, 1
	addi.w	$a1, $a1, 52
	ld.w	$a2, $a0, 76
	ldptr.d	$a3, $a0, 5544
	addi.w	$a4, $a5, 52
	mod.w	$a1, $a1, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a3, $a0, 92
	sub.d	$a1, $a1, $a5
	st.w	$a1, $a0, 28
	ori	$a4, $zero, 2
	stx.b	$a4, $a2, $a3
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 92
	stx.b	$a4, $a1, $a2
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a0, 92
	stx.b	$a4, $a1, $a2
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $a0, 92
	stx.b	$a4, $a1, $a2
	ld.w	$a1, $a0, 76
	ldptr.d	$a2, $a0, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 1
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 1
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 1
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 1
	ld.w	$a1, $a0, 76
	ldptr.d	$a2, $a0, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 2
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 2
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 2
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 2
	ld.w	$a1, $a0, 76
	ldptr.d	$a2, $a0, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 3
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 3
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 3
	ldptr.d	$a1, $a0, 5544
	ld.w	$a2, $a0, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $a0, 92
	add.d	$a1, $a1, $a2
	st.b	$a4, $a1, 3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	beqz	$a1, .LBB15_54
# %bb.51:                               # %lor.lhs.false381
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a3, $a1, 28
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ori	$a2, $zero, 56
	mul.d	$a2, $a3, $a2
	add.d	$s1, $a1, $a2
	st.w	$zero, $sp, 592
	ldx.d	$a2, $a1, $a2
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 568
	ori	$a1, $zero, 1
	ld.w	$a4, $a2, 24
	pcalau12i	$a2, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_levrun_inter)
	pcalau12i	$a3, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readRunLevel_CABAC)
	stptr.w	$a1, $a0, 5616
	sltui	$a0, $a4, 1
	masknez	$a1, $a2, $a0
	maskeqz	$a2, $a3, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 40
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	addi.d	$a2, $sp, 568
	stx.d	$a1, $a0, $a2
	addi.d	$fp, $zero, -1
	ori	$s6, $zero, 16
	addi.d	$s8, $zero, -1
	.p2align	4, , 16
.LBB15_52:                              # %for.body398
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_59
# %bb.53:                               # %for.inc424
                                        #   in Loop: Header=BB15_52 Depth=1
	ld.w	$a1, $sp, 576
	add.d	$a1, $s8, $a1
	addi.w	$s8, $a1, 1
	slli.d	$a1, $s8, 1
	ldx.bu	$a1, $s7, $a1
	alsl.d	$a2, $s8, $s7, 1
	ld.bu	$a2, $a2, 1
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 6
	addi.w	$fp, $fp, 1
	stx.w	$a0, $a1, $a2
	bltu	$fp, $s6, .LBB15_52
	b	.LBB15_59
.LBB15_54:                              # %if.then335
	ori	$s6, $zero, 1
	addi.d	$fp, $sp, 504
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	addi.d	$s1, $sp, 440
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 436
	blt	$a0, $s6, .LBB15_59
# %bb.55:                               # %for.body340.lr.ph
	addi.d	$a1, $zero, -1
	b	.LBB15_57
	.p2align	4, , 16
.LBB15_56:                              # %for.inc366
                                        #   in Loop: Header=BB15_57 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	beqz	$a0, .LBB15_59
.LBB15_57:                              # %for.body340
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 0
	beqz	$a2, .LBB15_56
# %bb.58:                               # %if.then344
                                        #   in Loop: Header=BB15_57 Depth=1
	ld.w	$a3, $s1, 0
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	slli.d	$a3, $a1, 1
	ldx.bu	$a3, $s7, $a3
	alsl.d	$a4, $a1, $s7, 1
	ld.bu	$a4, $a4, 1
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	slli.d	$a4, $a4, 6
	stx.w	$a2, $a3, $a4
	b	.LBB15_56
.LBB15_59:                              # %if.end427
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$s6, $s3
	lu12i.w	$s3, 174762
	bnez	$a0, .LBB15_61
# %bb.60:                               # %if.then429
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans_2)
	jirl	$ra, $ra, 0
.LBB15_61:                              # %if.end431
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 28
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	sltui	$a3, $s6, 15
	ld.d	$a4, $a0, 0
	st.w	$a2, $s5, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$a1, $a4, $a1
	ld.w	$a6, $a0, 32
	srl.d	$a5, $s4, $s6
	addi.d	$a7, $s5, 4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a1, $zero, $a1
	add.w	$a6, $a6, $a2
	slt	$a7, $a1, $a6
	masknez	$a1, $a1, $a7
	maskeqz	$a6, $a6, $a7
	or	$t0, $a6, $a1
	slti	$a1, $t0, 51
	maskeqz	$a7, $t0, $a1
	ori	$a6, $zero, 51
	masknez	$a1, $a6, $a1
	or	$a1, $a7, $a1
	pcalau12i	$a7, %pc_hi20(QP_SCALE_CR)
	addi.d	$a7, $a7, %pc_lo12(QP_SCALE_CR)
	bltz	$t0, .LBB15_63
# %bb.62:                               # %cond.false.i
	ldx.bu	$a1, $a7, $a1
.LBB15_63:                              # %cond.end.i
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $t0, 0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a4, $a4, $t0
	ld.w	$t0, $a0, 36
	and	$t1, $a3, $a5
	sub.w	$a3, $zero, $a4
	add.w	$a2, $t0, $a2
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slti	$a3, $a2, 51
	maskeqz	$a4, $a2, $a3
	masknez	$a3, $a6, $a3
	or	$a4, $a4, $a3
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	bltz	$a2, .LBB15_65
# %bb.64:                               # %cond.false.1.i
	ldx.bu	$a4, $a7, $a4
.LBB15_65:                              # %set_chroma_qp.exit
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.w	$a4, $s5, 8
	ld.w	$a2, $s4, 28
	ldx.w	$a3, $s4, $s0
	addi.w	$a5, $s2, -1
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	add.w	$a2, $a3, $a2
	ori	$t2, $s3, 2731
	mul.d	$a3, $a2, $t2
	srli.d	$a5, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$s0, $a3, $a5
	slli.d	$a3, $s0, 2
	alsl.d	$a3, $s0, $a3, 1
	sub.w	$a5, $a2, $a3
	slli.d	$a2, $a5, 6
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Luma_Intra)
	add.d	$a3, $a3, $a2
	pcalau12i	$a6, %pc_hi20(InvLevelScale4x4Luma_Inter)
	addi.d	$a6, $a6, %pc_lo12(InvLevelScale4x4Luma_Inter)
	add.d	$a2, $a6, $a2
	masknez	$a2, $a2, $t1
	maskeqz	$a3, $a3, $t1
	slli.d	$a5, $a5, 8
	pcalau12i	$a6, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a6, $a6, %pc_lo12(InvLevelScale8x8Luma_Intra)
	add.d	$a6, $a6, $a5
	pcalau12i	$a7, %pc_hi20(InvLevelScale8x8Luma_Inter)
	ld.w	$t0, $a0, 0
	addi.d	$a0, $a7, %pc_lo12(InvLevelScale8x8Luma_Inter)
	add.d	$a0, $a0, $a5
	masknez	$a0, $a0, $t1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	maskeqz	$a5, $a6, $t1
	beqz	$t0, .LBB15_67
# %bb.66:                               # %for.cond468.preheader
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a6, $s4, $a6
	add.w	$a1, $a6, $a1
	mul.d	$a7, $a1, $t2
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	st.w	$a7, $sp, 428
	ori	$t0, $zero, 6
	mul.d	$a7, $a7, $t0
	sub.d	$a1, $a1, $a7
	st.w	$a1, $sp, 420
	add.w	$a1, $a6, $a4
	mul.d	$a4, $a1, $t2
	srli.d	$a6, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a6
	st.w	$a4, $sp, 432
	mul.d	$a4, $a4, $t0
	sub.d	$a1, $a1, $a4
	st.w	$a1, $sp, 424
.LBB15_67:                              # %if.end491
	st.d	$t2, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $zero
	or	$a1, $a3, $a2
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	or	$a0, $a5, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 1384
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	b	.LBB15_69
	.p2align	4, , 16
.LBB15_68:                              # %for.inc1026
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s3, $zero, 2
	move	$a1, $zero
	beqz	$a0, .LBB15_157
.LBB15_69:                              # %for.cond496.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_72 Depth 2
                                        #       Child Loop BB15_78 Depth 3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
                                        #       Child Loop BB15_93 Depth 3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
                                        #       Child Loop BB15_110 Depth 3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	move	$a5, $zero
	slli.d	$s6, $s3, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	b	.LBB15_72
	.p2align	4, , 16
.LBB15_70:                              # %if.then778
                                        #   in Loop: Header=BB15_72 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(readLumaCoeff8x8_CABAC)
	jirl	$ra, $ra, 0
.LBB15_71:                              # %for.inc1023
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a5, $zero, 2
	move	$a4, $zero
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_68
.LBB15_72:                              # %for.body499
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_78 Depth 3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
                                        #       Child Loop BB15_93 Depth 3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
                                        #       Child Loop BB15_110 Depth 3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	srli.d	$a1, $a5, 1
	or	$a2, $a1, $s3
	alsl.d	$a1, $a5, $a5, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_107
# %bb.73:                               # %if.else775
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s5, 396
	bnez	$a0, .LBB15_70
# %bb.74:                               # %for.cond780.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_156
# %bb.75:                               # %for.cond780.preheader.split
                                        #   in Loop: Header=BB15_72 Depth=2
	addi.d	$a0, $a5, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_78
# %bb.76:                               # %for.cond785.preheader.us1038.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	b	.LBB15_93
	.p2align	4, , 16
.LBB15_77:                              # %for.inc1015.loopexit1008.1
                                        #   in Loop: Header=BB15_78 Depth=3
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB15_71
.LBB15_78:                              # %for.cond785.preheader
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
	slli.d	$a6, $s3, 2
	slli.d	$a0, $s3, 6
	ld.w	$a1, $s5, 40
	add.d	$a7, $s2, $a0
	addi.w	$s8, $zero, -5
	lu32i.d	$s8, 0
	and	$a0, $a1, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a2, $a0, 1
	sltu	$a0, $zero, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	stptr.w	$a5, $s4, 5608
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	stptr.w	$s3, $s4, 5612
	sub.d	$s3, $zero, $a0
	addi.w	$a0, $a1, -9
	sltui	$a3, $a0, 6
	ori	$a4, $zero, 51
	srl.d	$a0, $a4, $a0
	and	$a0, $a3, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	stptr.w	$a0, $s4, 5616
	st.d	$a6, $sp, 224                   # 8-byte Folded Spill
	or	$a0, $a5, $a6
	ori	$a1, $zero, 1
	sll.d	$s1, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	add.d	$s2, $a7, $a0
	addi.w	$fp, $a2, -1
	.p2align	4, , 16
.LBB15_79:                              # %for.body837
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $s4, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $fp, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 592
	st.w	$a1, $sp, 568
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_81
# %bb.80:                               # %lor.lhs.false871
                                        #   in Loop: Header=BB15_79 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_82
.LBB15_81:                              # %if.then875
                                        #   in Loop: Header=BB15_79 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_83
	.p2align	4, , 16
.LBB15_82:                              # %if.else877
                                        #   in Loop: Header=BB15_79 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_83:                              # %if.end879
                                        #   in Loop: Header=BB15_79 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	move	$a1, $s4
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_85
# %bb.84:                               # %for.inc921
                                        #   in Loop: Header=BB15_79 Depth=4
	ld.w	$a1, $sp, 576
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	slli.d	$a2, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	ld.d	$a3, $s5, 304
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s1
	st.d	$a3, $s5, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s0
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $s2, 4
	addi.w	$fp, $fp, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$fp, $a0, .LBB15_79
.LBB15_85:                              # %for.inc1015.loopexit1008
                                        #   in Loop: Header=BB15_78 Depth=3
	ld.w	$a0, $s5, 40
	and	$a1, $a0, $s8
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	stptr.w	$a5, $s4, 5608
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	stptr.w	$a3, $s4, 5612
	sub.d	$s3, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $s4, 5616
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 1
	sll.d	$s1, $a1, $a0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	addi.w	$fp, $a2, -1
	.p2align	4, , 16
.LBB15_86:                              # %for.body837.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $s4, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $fp, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 592
	st.w	$a1, $sp, 568
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_88
# %bb.87:                               # %lor.lhs.false871.1
                                        #   in Loop: Header=BB15_86 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_89
.LBB15_88:                              # %if.then875.1
                                        #   in Loop: Header=BB15_86 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_90
	.p2align	4, , 16
.LBB15_89:                              # %if.else877.1
                                        #   in Loop: Header=BB15_86 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_90:                              # %if.end879.1
                                        #   in Loop: Header=BB15_86 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	move	$a1, $s4
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_77
# %bb.91:                               # %for.inc921.1
                                        #   in Loop: Header=BB15_86 Depth=4
	ld.w	$a1, $sp, 576
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	slli.d	$a2, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	ld.d	$a3, $s5, 304
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s1
	st.d	$a3, $s5, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s0
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $s2, 4
	addi.w	$fp, $fp, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$fp, $a0, .LBB15_86
	b	.LBB15_77
	.p2align	4, , 16
.LBB15_92:                              # %for.inc1015.loopexit.us.us.1
                                        #   in Loop: Header=BB15_93 Depth=3
	addi.d	$fp, $fp, 1
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB15_71
.LBB15_93:                              # %for.cond785.preheader.us1038
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
	slli.d	$a6, $fp, 2
	slli.d	$a0, $fp, 6
	ld.w	$a1, $s5, 40
	add.d	$a7, $s2, $a0
	addi.w	$s8, $zero, -5
	lu32i.d	$s8, 0
	and	$a0, $a1, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a2, $a0, 1
	sltu	$a0, $zero, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	stptr.w	$a5, $s4, 5608
	stptr.w	$fp, $s4, 5612
	sub.d	$s1, $zero, $a0
	addi.w	$a0, $a1, -9
	sltui	$a3, $a0, 6
	ori	$a4, $zero, 51
	srl.d	$a0, $a4, $a0
	and	$a0, $a3, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	stptr.w	$a0, $s4, 5616
	st.d	$a6, $sp, 264                   # 8-byte Folded Spill
	or	$a0, $a5, $a6
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	add.d	$s3, $a7, $a0
	addi.w	$s4, $a2, -1
	.p2align	4, , 16
.LBB15_94:                              # %for.body933.us.us
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 592
	st.w	$a1, $sp, 568
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_96
# %bb.95:                               # %lor.lhs.false967.us.us
                                        #   in Loop: Header=BB15_94 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_97
.LBB15_96:                              # %if.then971.us.us
                                        #   in Loop: Header=BB15_94 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_98
	.p2align	4, , 16
.LBB15_97:                              # %if.else973.us.us
                                        #   in Loop: Header=BB15_94 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_98:                              # %if.end975.us.us
                                        #   in Loop: Header=BB15_94 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_100
# %bb.99:                               # %for.inc1010.us.us
                                        #   in Loop: Header=BB15_94 Depth=4
	ld.w	$a1, $sp, 576
	add.d	$a1, $s1, $a1
	addi.w	$s1, $a1, 1
	alsl.d	$a1, $s1, $s7, 1
	ld.d	$a2, $s5, 304
	slli.d	$a3, $s1, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s7, $a3
	or	$a2, $a2, $s2
	st.d	$a2, $s5, 304
	alsl.d	$a1, $a1, $s3, 4
	slli.d	$a2, $a3, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_94
.LBB15_100:                             # %for.inc1015.loopexit.us.us
                                        #   in Loop: Header=BB15_93 Depth=3
	ld.w	$a0, $s5, 40
	and	$a1, $a0, $s8
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	stptr.w	$a6, $a4, 5608
	stptr.w	$fp, $a4, 5612
	sub.d	$s1, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a5, $zero, 51
	srl.d	$a1, $a5, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $a4, 5616
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	or	$a0, $a6, $a0
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	addi.w	$s4, $a2, -1
	.p2align	4, , 16
.LBB15_101:                             # %for.body933.us.us.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 592
	st.w	$a1, $sp, 568
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_103
# %bb.102:                              # %lor.lhs.false967.us.us.1
                                        #   in Loop: Header=BB15_101 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_104
.LBB15_103:                             # %if.then971.us.us.1
                                        #   in Loop: Header=BB15_101 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_105
	.p2align	4, , 16
.LBB15_104:                             # %if.else973.us.us.1
                                        #   in Loop: Header=BB15_101 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_105:                             # %if.end975.us.us.1
                                        #   in Loop: Header=BB15_101 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_92
# %bb.106:                              # %for.inc1010.us.us.1
                                        #   in Loop: Header=BB15_101 Depth=4
	ld.w	$a1, $sp, 576
	add.d	$a1, $s1, $a1
	addi.w	$s1, $a1, 1
	alsl.d	$a1, $s1, $s7, 1
	ld.d	$a2, $s5, 304
	slli.d	$a3, $s1, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s7, $a3
	or	$a2, $a2, $s2
	st.d	$a2, $s5, 304
	alsl.d	$a1, $a1, $s3, 4
	slli.d	$a2, $a3, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_101
	b	.LBB15_92
	.p2align	4, , 16
.LBB15_107:                             # %for.cond507.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $a2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	or	$a0, $a5, $s6
	ori	$a1, $zero, 51
	sll.w	$s1, $a1, $a0
	slli.d	$s8, $a5, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a0, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $a5, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB15_110
	.p2align	4, , 16
.LBB15_108:                             # %for.cond512.preheader.split.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 3
	ldx.d	$a0, $a0, $a2
	stx.w	$zero, $a0, $a4
	ld.wu	$a0, $s4, 4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 8
	stx.w	$zero, $a0, $a4
.LBB15_109:                             # %for.inc772
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB15_71
.LBB15_110:                             # %for.cond512.preheader
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	slli.d	$a4, $s3, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_108
# %bb.111:                              # %for.cond512.preheader.split
                                        #   in Loop: Header=BB15_110 Depth=3
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	sub.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 6
	ld.wu	$a1, $s5, 40
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.w	$fp, $zero, -5
	lu32i.d	$fp, 0
	and	$a0, $a1, $fp
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_118
# %bb.112:                              # %for.body516.us1068.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	move	$a0, $s4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_124
# %bb.113:                              # %for.cond708.preheader.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_129
# %bb.114:                              # %for.body711.lr.ph.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 504
	addi.d	$a4, $sp, 440
	b	.LBB15_116
	.p2align	4, , 16
.LBB15_115:                             # %for.inc755.us
                                        #   in Loop: Header=BB15_116 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_129
.LBB15_116:                             # %for.body711.us
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_115
# %bb.117:                              # %if.then716.us
                                        #   in Loop: Header=BB15_116 Depth=4
	ld.w	$a6, $a4, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s1
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	add.d	$a7, $s6, $a7
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a6, $s8, $a6
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_115
	.p2align	4, , 16
.LBB15_118:                             # %for.body516.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	move	$a0, $s4
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_135
# %bb.119:                              # %for.cond601.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_140
# %bb.120:                              # %for.body604.lr.ph
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_122
	.p2align	4, , 16
.LBB15_121:                             # %for.inc654
                                        #   in Loop: Header=BB15_122 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_140
.LBB15_122:                             # %for.body604
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_121
# %bb.123:                              # %if.then609
                                        #   in Loop: Header=BB15_122 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s1
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t0, $t0, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s0
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	add.d	$a7, $s6, $a7
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a6, $s8, $a6
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_121
.LBB15_124:                             # %for.cond662.preheader.us
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_129
# %bb.125:                              # %for.body665.lr.ph.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 504
	addi.d	$a5, $sp, 440
	b	.LBB15_127
	.p2align	4, , 16
.LBB15_126:                             # %for.inc701.us
                                        #   in Loop: Header=BB15_127 Depth=4
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_129
.LBB15_127:                             # %for.body665.us
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a4, 0
	beqz	$a6, .LBB15_126
# %bb.128:                              # %if.then670.us
                                        #   in Loop: Header=BB15_127 Depth=4
	ld.w	$a7, $a5, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	ld.d	$t0, $s5, 304
	slli.d	$t1, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t1, $s7, $t1
	or	$t0, $t0, $a2
	st.d	$t0, $s5, 304
	alsl.d	$a7, $a7, $a3, 4
	slli.d	$t0, $t1, 2
	stx.w	$a6, $a7, $t0
	b	.LBB15_126
	.p2align	4, , 16
.LBB15_129:                             # %for.inc769.us1070
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	move	$a0, $s4
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_146
# %bb.130:                              # %for.cond708.preheader.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_109
# %bb.131:                              # %for.body711.lr.ph.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_133
	.p2align	4, , 16
.LBB15_132:                             # %for.inc755.us.1
                                        #   in Loop: Header=BB15_133 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_109
.LBB15_133:                             # %for.body711.us.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_132
# %bb.134:                              # %if.then716.us.1
                                        #   in Loop: Header=BB15_133 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s1
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	add.d	$a7, $s6, $a7
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a6, $s8, $a6
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_132
.LBB15_135:                             # %for.cond553.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_140
# %bb.136:                              # %for.body556.lr.ph
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 440
	addi.d	$a5, $sp, 504
	b	.LBB15_138
	.p2align	4, , 16
.LBB15_137:                             # %for.inc596
                                        #   in Loop: Header=BB15_138 Depth=4
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_140
.LBB15_138:                             # %for.body556
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	beqz	$a6, .LBB15_137
# %bb.139:                              # %if.then561
                                        #   in Loop: Header=BB15_138 Depth=4
	ld.w	$a7, $a4, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	slli.d	$t0, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $s7, $t0
	ld.d	$t1, $s5, 304
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t2, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $t2, $t0
	or	$t1, $t1, $a2
	st.d	$t1, $s5, 304
	mul.d	$a6, $t2, $a6
	sll.w	$a6, $a6, $s0
	addi.w	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	alsl.d	$a7, $a7, $a3, 4
	stx.w	$a6, $a7, $t0
	b	.LBB15_137
	.p2align	4, , 16
.LBB15_140:                             # %for.inc769
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	move	$a0, $s4
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $fp
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 436
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_151
# %bb.141:                              # %for.cond601.preheader.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_109
# %bb.142:                              # %for.body604.lr.ph.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_144
	.p2align	4, , 16
.LBB15_143:                             # %for.inc654.1
                                        #   in Loop: Header=BB15_144 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_109
.LBB15_144:                             # %for.body604.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_143
# %bb.145:                              # %if.then609.1
                                        #   in Loop: Header=BB15_144 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s1
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t0, $t0, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s0
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	add.d	$a7, $s6, $a7
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a6, $s8, $a6
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_143
.LBB15_146:                             # %for.cond662.preheader.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_109
# %bb.147:                              # %for.body665.lr.ph.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	or	$a2, $a4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	alsl.d	$a3, $a4, $a4, 1
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 440
	addi.d	$a5, $sp, 504
	b	.LBB15_149
	.p2align	4, , 16
.LBB15_148:                             # %for.inc701.us.1
                                        #   in Loop: Header=BB15_149 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_109
.LBB15_149:                             # %for.body665.us.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	beqz	$a6, .LBB15_148
# %bb.150:                              # %if.then670.us.1
                                        #   in Loop: Header=BB15_149 Depth=4
	ld.w	$a7, $a4, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	ld.d	$t0, $s5, 304
	slli.d	$t1, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t1, $s7, $t1
	or	$t0, $t0, $a2
	st.d	$t0, $s5, 304
	alsl.d	$a7, $a7, $a3, 4
	slli.d	$t0, $t1, 2
	stx.w	$a6, $a7, $t0
	b	.LBB15_148
.LBB15_151:                             # %for.cond553.preheader.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_109
# %bb.152:                              # %for.body556.lr.ph.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	or	$a2, $a4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	alsl.d	$a3, $a4, $a4, 1
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 440
	addi.d	$a5, $sp, 504
	b	.LBB15_154
	.p2align	4, , 16
.LBB15_153:                             # %for.inc596.1
                                        #   in Loop: Header=BB15_154 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_109
.LBB15_154:                             # %for.body556.1
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	beqz	$a6, .LBB15_153
# %bb.155:                              # %if.then561.1
                                        #   in Loop: Header=BB15_154 Depth=4
	ld.w	$a7, $a4, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	slli.d	$t0, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $s7, $t0
	ld.d	$t1, $s5, 304
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t2, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $t2, $t0
	or	$t1, $t1, $a2
	st.d	$t1, $s5, 304
	mul.d	$a6, $t2, $a6
	sll.w	$a6, $a6, $s0
	addi.w	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	alsl.d	$a7, $a7, $a3, 4
	stx.w	$a6, $a7, $t0
	b	.LBB15_153
.LBB15_156:                             # %for.cond785.preheader.us.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	stptr.w	$a0, $s4, 5612
	stptr.w	$a3, $s4, 5608
	b	.LBB15_71
.LBB15_157:                             # %for.end1028
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB15_272
# %bb.158:                              # %for.cond1033.preheader
	ldptr.w	$a1, $s4, 5924
	ori	$a2, $zero, 1
	xvrepli.b	$xr4, 0
	lu12i.w	$a0, -1
	blt	$a1, $a2, .LBB15_161
# %bb.159:                              # %for.cond1038.preheader.preheader
	lu12i.w	$a5, 1
	ori	$a1, $a5, 872
	add.d	$a1, $s4, $a1
	ori	$a2, $zero, 3
	ori	$a3, $a0, 1824
	ori	$a4, $a0, 1792
	ori	$a5, $a5, 1828
	.p2align	4, , 16
.LBB15_160:                             # %for.cond1038.preheader
                                        # =>This Inner Loop Header: Depth=1
	xvstx	$xr4, $a1, $a3
	xvstx	$xr4, $a1, $a4
	xvst	$xr4, $a1, -1536
	xvst	$xr4, $a1, -1504
	xvst	$xr4, $a1, -768
	xvst	$xr4, $a1, -736
	xvst	$xr4, $a1, 0
	xvst	$xr4, $a1, 32
	ldx.w	$a6, $s4, $a5
	addi.w	$a6, $a6, 3
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 64
	blt	$a2, $a6, .LBB15_160
.LBB15_161:                             # %for.end1054
	ori	$a3, $zero, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	blt	$a1, $a3, .LBB15_271
# %bb.162:                              # %for.cond1068.preheader
	move	$s0, $zero
	addi.d	$a1, $a2, -10
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -3
	sltui	$a2, $a2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1384
	add.d	$a3, $s4, $a3
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	and	$a1, $a2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Chroma_Inter)
	addi.d	$a2, $a2, %pc_lo12(InvLevelScale4x4Chroma_Inter)
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	masknez	$a2, $a2, $a4
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Chroma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Chroma_Intra)
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 617
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$s3, $zero, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	andi	$a1, $a1, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a1, -16
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$s2, $zero, 4
	xvst	$xr4, $sp, 304                  # 32-byte Folded Spill
	b	.LBB15_165
.LBB15_163:                             # %for.end1353
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$a0, $sp, 404
	ori	$a3, $zero, 768
	mul.d	$a1, $s0, $a3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.w	$a0, $a1, 256
	ld.w	$a0, $sp, 408
	addi.d	$a2, $s0, 1
	mul.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 412
	ld.w	$a4, $sp, 416
	add.d	$a2, $a5, $a2
	st.w	$a0, $a2, 256
	st.w	$a3, $a1, 320
	st.w	$a4, $a2, 320
	.p2align	4, , 16
.LBB15_164:                             # %for.inc2450
                                        #   in Loop: Header=BB15_165 Depth=1
	addi.d	$s2, $s2, 4
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s0, $zero, 2
	move	$a2, $zero
	beqz	$a0, .LBB15_270
.LBB15_165:                             # %for.body1071
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_186 Depth 2
                                        #     Child Loop BB15_216 Depth 2
                                        #     Child Loop BB15_223 Depth 2
                                        #     Child Loop BB15_170 Depth 2
                                        #     Child Loop BB15_195 Depth 2
                                        #     Child Loop BB15_262 Depth 2
                                        #     Child Loop BB15_266 Depth 2
                                        #     Child Loop BB15_269 Depth 2
                                        #     Child Loop BB15_253 Depth 2
                                        #     Child Loop BB15_257 Depth 2
                                        #     Child Loop BB15_260 Depth 2
                                        #     Child Loop BB15_178 Depth 2
                                        #     Child Loop BB15_206 Depth 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	srli.d	$s4, $s0, 1
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB15_176
# %bb.166:                              # %for.body1071
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_184
# %bb.167:                              # %if.then1076
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	slli.d	$fp, $s4, 2
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	vst	$vr0, $a1, 0
	ld.w	$a0, $a0, 12
	addi.d	$a1, $sp, 420
	ldx.w	$a1, $fp, $a1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_192
# %bb.168:                              # %for.cond1131.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 5928
	bltz	$a0, .LBB15_197
# %bb.169:                              # %for.body1140.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a0, $s0, 1
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	lu12i.w	$a1, 240
	sll.w	$s1, $a1, $a0
	addi.d	$s8, $zero, -1
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_170:                             # %for.body1140
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s3, $a0
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	stptr.w	$a0, $a2, 5616
	stptr.w	$s0, $a2, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 568
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 592
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_172
# %bb.171:                              # %lor.lhs.false1196
                                        #   in Loop: Header=BB15_170 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_173
.LBB15_172:                             # %if.then1200
                                        #   in Loop: Header=BB15_170 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 600
	b	.LBB15_174
	.p2align	4, , 16
.LBB15_173:                             # %if.else1202
                                        #   in Loop: Header=BB15_170 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_174:                             # %if.end1204
                                        #   in Loop: Header=BB15_170 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	beqz	$a0, .LBB15_197
# %bb.175:                              # %for.inc1224
                                        #   in Loop: Header=BB15_170 Depth=2
	ld.w	$a1, $sp, 576
	ld.d	$a2, $s5, 304
	add.d	$a1, $s6, $a1
	addi.w	$s6, $a1, 1
	slli.d	$a1, $s6, 2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	stx.w	$a0, $a3, $a1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 5928
	or	$a1, $a2, $s1
	addi.w	$s8, $s8, 1
	st.d	$a1, $s5, 304
	blt	$s8, $a0, .LBB15_170
	b	.LBB15_197
	.p2align	4, , 16
.LBB15_176:                             # %if.then1391
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	slli.d	$a1, $s4, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 12
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	xvst	$xr4, $sp, 368
	pcalau12i	$a1, %pc_hi20(SCAN_YUV422)
	addi.d	$s8, $a1, %pc_lo12(SCAN_YUV422)
	beqz	$a2, .LBB15_203
# %bb.177:                              # %for.cond1451.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a0, $s0, 2
	lu12i.w	$a1, 4080
	sll.d	$fp, $a1, $a0
	addi.d	$s1, $zero, -1
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_178:                             # %for.body1459
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s3, $a0
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	stptr.w	$a0, $a2, 5616
	stptr.w	$s0, $a2, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 568
	st.w	$s3, $sp, 592
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_180
# %bb.179:                              # %lor.lhs.false1516
                                        #   in Loop: Header=BB15_178 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_181
.LBB15_180:                             # %if.then1520
                                        #   in Loop: Header=BB15_178 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 600
	b	.LBB15_182
	.p2align	4, , 16
.LBB15_181:                             # %if.else1522
                                        #   in Loop: Header=BB15_178 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_182:                             # %if.end1524
                                        #   in Loop: Header=BB15_178 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	beqz	$a0, .LBB15_208
# %bb.183:                              # %for.inc1553
                                        #   in Loop: Header=BB15_178 Depth=2
	ld.d	$a1, $s5, 304
	ld.w	$a2, $sp, 576
	or	$a1, $a1, $fp
	st.d	$a1, $s5, 304
	add.d	$a1, $s6, $a2
	addi.w	$s6, $a1, 1
	alsl.d	$a1, $s6, $s8, 1
	slli.d	$a2, $s6, 1
	ldx.bu	$a2, $s8, $a2
	ld.bu	$a1, $a1, 1
	addi.d	$a3, $sp, 368
	alsl.d	$a2, $a2, $a3, 4
	slli.d	$a1, $a1, 2
	addi.w	$s1, $s1, 1
	stx.w	$a0, $a2, $a1
	bltu	$s1, $s3, .LBB15_178
	b	.LBB15_208
	.p2align	4, , 16
.LBB15_184:                             # %if.else1893
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	slli.d	$a1, $s0, 1
	addi.d	$fp, $a1, 4
	beqz	$a0, .LBB15_213
# %bb.185:                              # %for.cond1947.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sll.d	$s6, $a1, $a0
	addi.d	$s8, $zero, -1
	addi.d	$s1, $zero, -1
	.p2align	4, , 16
.LBB15_186:                             # %for.body1955
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s3, $a0
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	stptr.w	$a0, $a2, 5616
	stptr.w	$s0, $a2, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 568
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 592
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_188
# %bb.187:                              # %lor.lhs.false2012
                                        #   in Loop: Header=BB15_186 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_189
.LBB15_188:                             # %if.then2016
                                        #   in Loop: Header=BB15_186 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 600
	b	.LBB15_190
	.p2align	4, , 16
.LBB15_189:                             # %if.else2018
                                        #   in Loop: Header=BB15_186 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_190:                             # %if.end2020
                                        #   in Loop: Header=BB15_186 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	beqz	$a0, .LBB15_218
# %bb.191:                              # %for.inc2053
                                        #   in Loop: Header=BB15_186 Depth=2
	ld.d	$a1, $s5, 304
	ld.w	$a2, $sp, 576
	or	$a1, $a1, $s6
	st.d	$a1, $s5, 304
	add.d	$a1, $s1, $a2
	addi.w	$s1, $a1, 1
	slli.d	$a1, $s1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	alsl.d	$a2, $s1, $a2, 1
	ld.bu	$a2, $a2, 1
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	add.d	$a2, $fp, $a2
	slli.d	$a2, $a2, 6
	addi.w	$s8, $s8, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s8, $a0, .LBB15_186
	b	.LBB15_218
.LBB15_192:                             # %if.then1100
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_197
# %bb.193:                              # %for.body1106.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	lu12i.w	$a2, 240
	sll.w	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_195
	.p2align	4, , 16
.LBB15_194:                             # %for.inc1127
                                        #   in Loop: Header=BB15_195 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_197
.LBB15_195:                             # %for.body1106
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_194
# %bb.196:                              # %if.then1111
                                        #   in Loop: Header=BB15_195 Depth=2
	ld.d	$a6, $s5, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s5, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	stx.w	$a5, $a7, $a6
	b	.LBB15_194
	.p2align	4, , 16
.LBB15_197:                             # %if.end1227
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_199
# %bb.198:                              # %if.then1231
                                        #   in Loop: Header=BB15_165 Depth=1
	lu12i.w	$a5, 1
	ori	$a1, $a5, 1392
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	ori	$a6, $zero, 768
	mul.d	$a2, $s0, $a6
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	st.w	$a0, $a2, 256
	st.w	$a1, $a2, 320
	ori	$a0, $a5, 1388
	ldx.w	$a0, $a3, $a0
	addi.d	$a1, $s0, 1
	ori	$a2, $a5, 1396
	ldx.w	$a2, $a3, $a2
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a4, $a1
	st.w	$a0, $a1, 256
	st.w	$a2, $a1, 320
	b	.LBB15_164
.LBB15_199:                             # %if.else1268
                                        #   in Loop: Header=BB15_165 Depth=1
	lu12i.w	$a4, 1
	ori	$a1, $a4, 1388
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $t0, $a1
	ori	$a1, $a4, 1392
	ldx.w	$a3, $t0, $a1
	ori	$a1, $a4, 1396
	ldx.w	$a4, $t0, $a1
	add.d	$a1, $a2, $a0
	add.d	$a5, $a4, $a3
	add.d	$a6, $a5, $a1
	st.w	$a6, $sp, 404
	add.d	$a6, $a0, $a3
	add.d	$a7, $a2, $a4
	sub.d	$a6, $a6, $a7
	st.w	$a6, $sp, 408
	sub.d	$a1, $a1, $a5
	st.w	$a1, $sp, 412
	ldptr.w	$a1, $t0, 5928
	add.d	$a2, $a2, $a3
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a4
	st.w	$a0, $sp, 416
	ori	$a0, $zero, 1
	ori	$a3, $zero, 3
	blt	$a1, $a0, .LBB15_163
# %bb.200:                              # %for.body1321.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a0, $a0, 7
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 6
	add.d	$a0, $a0, $a2
	addi.d	$a2, $sp, 428
	ldx.w	$a2, $fp, $a2
	ld.w	$a0, $a0, 0
	ori	$a4, $zero, 5
	bge	$a2, $a4, .LBB15_232
# %bb.201:                              # %iter.check
                                        #   in Loop: Header=BB15_165 Depth=1
	sub.d	$a2, $a4, $a2
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB15_248
# %bb.202:                              #   in Loop: Header=BB15_165 Depth=1
	move	$a3, $zero
	b	.LBB15_259
.LBB15_203:                             # %if.then1411
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_208
# %bb.204:                              # %for.body1417.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a1, $s0, 2
	lu12i.w	$a2, 4080
	sll.d	$a1, $a2, $a1
	addi.d	$a2, $sp, 440
	addi.d	$a3, $sp, 504
	addi.d	$a4, $zero, -1
	b	.LBB15_206
	.p2align	4, , 16
.LBB15_205:                             # %for.inc1447
                                        #   in Loop: Header=BB15_206 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB15_208
.LBB15_206:                             # %for.body1417
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_205
# %bb.207:                              # %if.then1422
                                        #   in Loop: Header=BB15_206 Depth=2
	ld.d	$a6, $s5, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s5, 304
	add.d	$a4, $a4, $a7
	addi.w	$a4, $a4, 1
	alsl.d	$a6, $a4, $s8, 1
	slli.d	$a7, $a4, 1
	ldx.bu	$a7, $s8, $a7
	ld.bu	$a6, $a6, 1
	addi.d	$t0, $sp, 368
	alsl.d	$a7, $a7, $t0, 4
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_205
	.p2align	4, , 16
.LBB15_208:                             # %if.end1556
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_210
# %bb.209:                              # %if.end1643.thread
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a6, $zero, 768
	mul.d	$a0, $s0, $a6
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	ld.w	$a1, $sp, 368
	ld.w	$a2, $sp, 372
	ld.w	$a3, $sp, 376
	ld.w	$a4, $sp, 380
	st.w	$a1, $a0, 256
	st.w	$a2, $a0, 320
	st.w	$a3, $a0, 384
	st.w	$a4, $a0, 448
	addi.d	$a0, $s0, 1
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a5, $a0
	ld.w	$a1, $sp, 384
	ld.w	$a2, $sp, 388
	ld.w	$a3, $sp, 392
	ld.w	$a4, $sp, 396
	st.w	$a1, $a0, 256
	st.w	$a2, $a0, 320
	st.w	$a3, $a0, 384
	st.w	$a4, $a0, 448
	b	.LBB15_164
.LBB15_210:                             # %for.body1652.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.w	$a5, $a0, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a1, $a0, $a1
	slli.d	$a0, $a1, 2
	alsl.d	$a0, $a1, $a0, 1
	sub.w	$a0, $a5, $a0
	vld	$vr0, $sp, 368
	vld	$vr1, $sp, 384
	alsl.d	$a2, $s4, $s4, 1
	slli.d	$a2, $a2, 7
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	slli.d	$a6, $a0, 6
	add.d	$a0, $a3, $a6
	addi.d	$a4, $a1, -4
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	add.d	$a3, $a2, $a6
	ori	$a2, $zero, 3
	sub.d	$a2, $a2, $a1
	ori	$a6, $zero, 1
	sll.w	$a2, $a6, $a2
	ori	$a6, $zero, 4
	sub.d	$a1, $a6, $a1
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$a7, $vr2, 0
	vpickve2gr.w	$t2, $vr2, 1
	vpickve2gr.w	$t0, $vr2, 2
	vpickve2gr.w	$t3, $vr2, 3
	alsl.d	$a6, $s0, $s0, 1
	slli.d	$a6, $a6, 8
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	add.d	$t4, $t0, $a7
	sub.d	$t0, $a7, $t0
	sub.d	$t1, $t2, $t3
	add.d	$a7, $t3, $t2
	add.d	$t3, $a7, $t4
	sub.d	$t2, $t4, $a7
	add.d	$a7, $t1, $t0
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ori	$t4, $zero, 23
	blt	$t4, $a5, .LBB15_230
# %bb.211:                              # %for.end1670.split.us
                                        #   in Loop: Header=BB15_165 Depth=1
	beqz	$t5, .LBB15_234
# %bb.212:                              # %for.body1690.us.us.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$t4, $a3, 0
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $a6, 256
	ld.w	$t3, $a3, 0
	mul.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a2
	sra.w	$t2, $t2, $a1
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $a6, 448
	ld.w	$t2, $a3, 0
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a1
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a6, 320
	ld.w	$a7, $a3, 0
	b	.LBB15_235
.LBB15_213:                             # %if.then1903
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 304                  # 32-byte Folded Reload
	ld.w	$a0, $sp, 436
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_218
# %bb.214:                              # %for.body1909.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a1, $s0, 3
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sll.d	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_216
	.p2align	4, , 16
.LBB15_215:                             # %for.inc1943
                                        #   in Loop: Header=BB15_216 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_218
.LBB15_216:                             # %for.body1909
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_215
# %bb.217:                              # %if.then1914
                                        #   in Loop: Header=BB15_216 Depth=2
	ld.d	$a6, $s5, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s5, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	slli.d	$a6, $a3, 1
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ldx.bu	$a6, $a7, $a6
	alsl.d	$a7, $a3, $a7, 1
	ld.bu	$a7, $a7, 1
	alsl.d	$a6, $a6, $a6, 1
	slli.d	$a6, $a6, 8
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a6, $t0, $a6
	add.d	$a7, $fp, $a7
	slli.d	$a7, $a7, 6
	stx.w	$a5, $a6, $a7
	b	.LBB15_215
	.p2align	4, , 16
.LBB15_218:                             # %if.end2056
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ori	$t8, $zero, 3
	ori	$fp, $zero, 3072
	ori	$s1, $zero, 3136
	ori	$s6, $zero, 3200
	ori	$s8, $zero, 3264
	bnez	$a0, .LBB15_164
# %bb.219:                              # %for.cond2143.preheader.lr.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	slli.d	$a1, $s2, 6
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a7, $a1
	ldx.w	$a2, $a7, $a1
	ld.w	$a3, $a0, 1536
	ld.w	$a4, $a0, 768
	ori	$a5, $zero, 2304
	ldx.w	$a5, $a0, $a5
	add.d	$a6, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a6
	stx.w	$a5, $a7, $a1
	sub.d	$a1, $a6, $a4
	stptr.w	$a1, $a0, 2304
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 768
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 1600
	ld.w	$a4, $a0, 832
	ori	$a5, $zero, 2368
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1536
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 64
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2368
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 832
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 128
	ld.w	$a3, $a0, 1664
	ld.w	$a4, $a0, 896
	ori	$a5, $zero, 2432
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1600
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 128
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2432
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 896
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 192
	ld.w	$a3, $a0, 1728
	ld.w	$a4, $a0, 960
	ori	$a5, $zero, 2496
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1664
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 192
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2496
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 960
	sub.d	$a1, $a2, $a3
	st.w	$a1, $a0, 1728
	slli.d	$a2, $s4, 2
	addi.d	$a0, $sp, 428
	ldx.w	$a0, $a2, $a0
	alsl.d	$a1, $s4, $s4, 1
	slli.d	$a3, $a1, 7
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a3
	addi.d	$a1, $a0, -4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a3
	addi.d	$a3, $sp, 420
	ldx.w	$a6, $a2, $a3
	sub.d	$a2, $t8, $a0
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
	ori	$a3, $zero, 4
	sub.d	$a3, $a3, $a0
	slli.d	$a6, $a6, 6
	add.d	$a4, $a4, $a6
	add.d	$a5, $a5, $a6
	slli.d	$a6, $s0, 7
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	b	.LBB15_223
	.p2align	4, , 16
.LBB15_220:                             # %for.end2159.split.split
                                        #   in Loop: Header=BB15_223 Depth=2
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3264
	ld.w	$t3, $a4, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a4, 0
.LBB15_221:                             # %for.inc2445
                                        #   in Loop: Header=BB15_223 Depth=2
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a1
.LBB15_222:                             # %for.inc2445
                                        #   in Loop: Header=BB15_223 Depth=2
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	addi.d	$a7, $a7, 768
	stptr.w	$t1, $t0, 3200
	beqz	$a7, .LBB15_164
.LBB15_223:                             # %for.cond2143.preheader
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldx.w	$t1, $t0, $fp
	ldx.w	$t2, $t0, $s6
	ldx.w	$t4, $t0, $s1
	ldx.w	$t5, $t0, $s8
	add.d	$t6, $t2, $t1
	sub.d	$t2, $t1, $t2
	sub.d	$t3, $t4, $t5
	add.d	$t1, $t5, $t4
	add.d	$t5, $t1, $t6
	sub.d	$t4, $t6, $t1
	add.d	$t1, $t3, $t2
	blt	$t8, $a0, .LBB15_226
# %bb.224:                              # %for.end2159.split.us
                                        #   in Loop: Header=BB15_223 Depth=2
	beqz	$t7, .LBB15_228
# %bb.225:                              # %for.end2159.split.us.split.us
                                        #   in Loop: Header=BB15_223 Depth=2
	ld.w	$t6, $a5, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 3072
	ld.w	$t5, $a5, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3264
	ld.w	$t4, $a5, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a5, 0
	b	.LBB15_229
	.p2align	4, , 16
.LBB15_226:                             # %for.end2159.split
                                        #   in Loop: Header=BB15_223 Depth=2
	sub.d	$t2, $t2, $t3
	beqz	$t7, .LBB15_220
# %bb.227:                              # %for.end2159.split.split.us
                                        #   in Loop: Header=BB15_223 Depth=2
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3264
	ld.w	$t3, $a5, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a5, 0
	b	.LBB15_221
	.p2align	4, , 16
.LBB15_228:                             # %for.end2159.split.us.split
                                        #   in Loop: Header=BB15_223 Depth=2
	ld.w	$t6, $a4, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 3072
	ld.w	$t5, $a4, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3264
	ld.w	$t4, $a4, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a4, 0
.LBB15_229:                             # %for.inc2445
                                        #   in Loop: Header=BB15_223 Depth=2
	sub.d	$t2, $t2, $t3
	mul.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	b	.LBB15_222
.LBB15_230:                             # %for.end1670.split
                                        #   in Loop: Header=BB15_165 Depth=1
	sub.d	$t0, $t0, $t1
	beqz	$t5, .LBB15_236
# %bb.231:                              # %for.body1690.us1095.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$t1, $a3, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a4
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a6, 256
	ld.w	$t1, $a3, 0
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a4
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a6, 448
	ld.w	$t1, $a3, 0
	mul.d	$a7, $a7, $t1
	sll.w	$a7, $a7, $a4
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a6, 320
	ld.w	$a7, $a3, 0
	b	.LBB15_237
.LBB15_232:                             # %iter.check1630
                                        #   in Loop: Header=BB15_165 Depth=1
	addi.d	$a2, $a2, -5
	bltu	$a3, $a1, .LBB15_250
# %bb.233:                              #   in Loop: Header=BB15_165 Depth=1
	move	$a3, $zero
	b	.LBB15_268
.LBB15_234:                             # %for.body1690.us.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$t4, $a0, 0
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $a6, 256
	ld.w	$t3, $a0, 0
	mul.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a2
	sra.w	$t2, $t2, $a1
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $a6, 448
	ld.w	$t2, $a0, 0
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a1
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a6, 320
	ld.w	$a7, $a0, 0
.LBB15_235:                             # %for.end1889
                                        #   in Loop: Header=BB15_165 Depth=1
	sub.d	$t0, $t0, $t1
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a1
	b	.LBB15_238
.LBB15_236:                             # %for.body1690.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$t1, $a0, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a4
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a6, 256
	ld.w	$t1, $a0, 0
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a4
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a6, 448
	ld.w	$t1, $a0, 0
	mul.d	$a7, $a7, $t1
	sll.w	$a7, $a7, $a4
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a6, 320
	ld.w	$a7, $a0, 0
.LBB15_237:                             # %for.end1889
                                        #   in Loop: Header=BB15_165 Depth=1
	mul.d	$a7, $a7, $t0
	sll.w	$a7, $a7, $a4
.LBB15_238:                             # %for.end1889
                                        #   in Loop: Header=BB15_165 Depth=1
	vsub.w	$vr0, $vr0, $vr1
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a6, 384
	vpickve2gr.w	$a7, $vr0, 0
	vpickve2gr.w	$t2, $vr0, 1
	vpickve2gr.w	$t0, $vr0, 2
	vpickve2gr.w	$t3, $vr0, 3
	addi.d	$a6, $s0, 1
	alsl.d	$a6, $a6, $a6, 1
	slli.d	$a6, $a6, 8
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	add.d	$t4, $t0, $a7
	sub.d	$t0, $a7, $t0
	sub.d	$t1, $t2, $t3
	add.d	$a7, $t3, $t2
	add.d	$t3, $a7, $t4
	sub.d	$t2, $t4, $a7
	add.d	$a7, $t1, $t0
	ori	$t4, $zero, 24
	bge	$a5, $t4, .LBB15_241
# %bb.239:                              # %for.end1670.split.us.1
                                        #   in Loop: Header=BB15_165 Depth=1
	beqz	$t5, .LBB15_243
# %bb.240:                              # %for.body1690.us.us.preheader.1
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$a0, $a3, 0
	mul.d	$a0, $t3, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 256
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $t2
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 448
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a7, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 320
	ld.w	$a0, $a3, 0
	b	.LBB15_244
.LBB15_241:                             # %for.end1670.split.1
                                        #   in Loop: Header=BB15_165 Depth=1
	sub.d	$a1, $t0, $t1
	beqz	$t5, .LBB15_245
# %bb.242:                              # %for.body1690.us1095.preheader.1
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$a0, $a3, 0
	mul.d	$a0, $t3, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 256
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $t2
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 448
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a7, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 320
	ld.w	$a0, $a3, 0
	b	.LBB15_246
.LBB15_243:                             # %for.body1690.us.preheader.1
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$a3, $a0, 0
	mul.d	$a3, $t3, $a3
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 256
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $t2
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 448
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 320
	ld.w	$a0, $a0, 0
.LBB15_244:                             # %for.end1889.1
                                        #   in Loop: Header=BB15_165 Depth=1
	sub.d	$a3, $t0, $t1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	b	.LBB15_247
.LBB15_245:                             # %for.body1690.preheader.1
                                        #   in Loop: Header=BB15_165 Depth=1
	ld.w	$a2, $a0, 0
	mul.d	$a2, $t3, $a2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 256
	ld.w	$a2, $a0, 0
	mul.d	$a2, $a2, $t2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 448
	ld.w	$a2, $a0, 0
	mul.d	$a2, $a7, $a2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 320
	ld.w	$a0, $a0, 0
.LBB15_246:                             # %for.end1889.1
                                        #   in Loop: Header=BB15_165 Depth=1
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a4
.LBB15_247:                             # %for.end1889.1
                                        #   in Loop: Header=BB15_165 Depth=1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 384
	b	.LBB15_164
.LBB15_248:                             # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB15_252
# %bb.249:                              #   in Loop: Header=BB15_165 Depth=1
	move	$a3, $zero
	b	.LBB15_256
.LBB15_250:                             # %vector.main.loop.iter.check1632
                                        #   in Loop: Header=BB15_165 Depth=1
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB15_261
# %bb.251:                              #   in Loop: Header=BB15_165 Depth=1
	move	$a3, $zero
	b	.LBB15_265
.LBB15_252:                             # %vector.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $a2
	addi.d	$a4, $sp, 436
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_253:                             # %vector.body
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvmul.w	$xr2, $xr0, $xr2
	xvmul.w	$xr3, $xr0, $xr3
	xvsra.w	$xr2, $xr2, $xr1
	xvsra.w	$xr3, $xr3, $xr1
	xvst	$xr2, $a4, -32
	xvst	$xr3, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB15_253
# %bb.254:                              # %middle.block
                                        #   in Loop: Header=BB15_165 Depth=1
	beq	$a3, $a1, .LBB15_163
# %bb.255:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB15_165 Depth=1
	andi	$a4, $a1, 12
	beqz	$a4, .LBB15_259
.LBB15_256:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB15_165 Depth=1
	move	$a5, $a3
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	sub.d	$a4, $a5, $a3
	addi.d	$a6, $sp, 404
	alsl.d	$a5, $a5, $a6, 2
	.p2align	4, , 16
.LBB15_257:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a5, 0
	vmul.w	$vr2, $vr0, $vr2
	vsra.w	$vr2, $vr2, $vr1
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB15_257
# %bb.258:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB15_165 Depth=1
	beq	$a3, $a1, .LBB15_163
.LBB15_259:                             # %for.body1321.us.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	addi.d	$a4, $sp, 404
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_260:                             # %for.body1321.us
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sra.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_260
	b	.LBB15_163
.LBB15_261:                             # %vector.ph1633
                                        #   in Loop: Header=BB15_165 Depth=1
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $a2
	addi.d	$a4, $sp, 436
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_262:                             # %vector.body1640
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvmul.w	$xr2, $xr0, $xr2
	xvmul.w	$xr3, $xr0, $xr3
	xvsll.w	$xr2, $xr2, $xr1
	xvsll.w	$xr3, $xr3, $xr1
	xvst	$xr2, $a4, -32
	xvst	$xr3, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB15_262
# %bb.263:                              # %middle.block1645
                                        #   in Loop: Header=BB15_165 Depth=1
	beq	$a3, $a1, .LBB15_163
# %bb.264:                              # %vec.epilog.iter.check1650
                                        #   in Loop: Header=BB15_165 Depth=1
	andi	$a4, $a1, 12
	beqz	$a4, .LBB15_268
.LBB15_265:                             # %vec.epilog.ph1649
                                        #   in Loop: Header=BB15_165 Depth=1
	move	$a5, $a3
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	sub.d	$a4, $a5, $a3
	addi.d	$a6, $sp, 404
	alsl.d	$a5, $a5, $a6, 2
	.p2align	4, , 16
.LBB15_266:                             # %vec.epilog.vector.body1659
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a5, 0
	vmul.w	$vr2, $vr0, $vr2
	vsll.w	$vr2, $vr2, $vr1
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB15_266
# %bb.267:                              # %vec.epilog.middle.block1663
                                        #   in Loop: Header=BB15_165 Depth=1
	beq	$a3, $a1, .LBB15_163
.LBB15_268:                             # %for.body1321.preheader
                                        #   in Loop: Header=BB15_165 Depth=1
	addi.d	$a4, $sp, 404
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_269:                             # %for.body1321
                                        #   Parent Loop BB15_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_269
	b	.LBB15_163
.LBB15_270:                             # %if.end2453
	ori	$a0, $zero, 31
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB15_273
.LBB15_271:                             # %if.end2474
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $s4, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	ldptr.w	$a1, $s4, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
	ldptr.w	$a1, $s4, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ldptr.w	$a1, $s4, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_272:                             # %if.end2856
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB15_273:                             # %for.cond2478.preheader
	ldptr.w	$a0, $s4, 5924
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB15_272
# %bb.274:                              # %for.body2482.lr.ph
	move	$a5, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	pcalau12i	$a2, %pc_hi20(cofuv_blk_x)
	addi.d	$a2, $a2, %pc_lo12(cofuv_blk_x)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(cofuv_blk_y)
	addi.d	$a2, $a2, %pc_lo12(cofuv_blk_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cbp_blk_chroma)
	addi.d	$a1, $a1, %pc_lo12(cbp_blk_chroma)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	b	.LBB15_276
	.p2align	4, , 16
.LBB15_275:                             # %for.end2851
                                        #   in Loop: Header=BB15_276 Depth=1
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ldptr.w	$a0, $s4, 5924
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bge	$a5, $a0, .LBB15_272
.LBB15_276:                             # %for.body2482
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_278 Depth 2
                                        #       Child Loop BB15_294 Depth 3
                                        #       Child Loop BB15_281 Depth 3
                                        #       Child Loop BB15_303 Depth 3
                                        #       Child Loop BB15_291 Depth 3
	move	$s6, $zero
	srai.d	$a0, $a0, 1
	slt	$a0, $a5, $a0
	xori	$a0, $a0, 1
	move	$a3, $s4
	slli.d	$s4, $a0, 2
	addi.d	$a1, $sp, 420
	ldx.w	$a1, $s4, $a1
	alsl.d	$a2, $a0, $a0, 1
	slli.d	$a2, $a2, 7
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	slli.d	$a1, $a1, 6
	add.d	$s3, $a2, $a1
	stptr.w	$a0, $a3, 5620
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a0, 2
	b	.LBB15_278
	.p2align	4, , 16
.LBB15_277:                             # %for.inc2849
                                        #   in Loop: Header=BB15_278 Depth=2
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 4
	beq	$s6, $a0, .LBB15_275
.LBB15_278:                             # %for.body2512
                                        #   Parent Loop BB15_276 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_294 Depth 3
                                        #       Child Loop BB15_281 Depth 3
                                        #       Child Loop BB15_303 Depth 3
                                        #       Child Loop BB15_291 Depth 3
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ldx.bu	$s2, $a1, $s6
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ldx.bu	$s1, $a1, $s6
	beqz	$a0, .LBB15_287
# %bb.279:                              # %if.else2636
                                        #   in Loop: Header=BB15_278 Depth=2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s6
	srli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	stptr.w	$a0, $a3, 5612
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s6
	ld.w	$a1, $s5, 40
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $a3, 5608
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 592
	addi.w	$a0, $a1, -9
	sltui	$a2, $a0, 6
	ori	$a4, $zero, 51
	srl.d	$a0, $a4, $a0
	and	$a0, $a2, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 10
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	st.w	$a1, $sp, 568
	stptr.w	$a0, $a3, 5616
	alsl.d	$a0, $s2, $s2, 1
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s1, 6
	add.d	$fp, $a0, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_293
# %bb.280:                              # %for.body2788.preheader
                                        #   in Loop: Header=BB15_278 Depth=2
	move	$s2, $zero
	addi.d	$s1, $zero, -1
	.p2align	4, , 16
.LBB15_281:                             # %for.body2788
                                        #   Parent Loop BB15_276 Depth=1
                                        #     Parent Loop BB15_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 568
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_283
# %bb.282:                              # %lor.lhs.false2798
                                        #   in Loop: Header=BB15_281 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_284
.LBB15_283:                             # %if.then2802
                                        #   in Loop: Header=BB15_281 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_285
	.p2align	4, , 16
.LBB15_284:                             # %if.else2804
                                        #   in Loop: Header=BB15_281 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_285:                             # %if.end2806
                                        #   in Loop: Header=BB15_281 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_277
# %bb.286:                              # %for.inc2844
                                        #   in Loop: Header=BB15_281 Depth=3
	ldx.bu	$a1, $s8, $s6
	ld.d	$a2, $s5, 304
	ld.w	$a3, $sp, 576
	sll.d	$a1, $s0, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s5, 304
	add.d	$a1, $s2, $a3
	addi.w	$s2, $a1, 1
	alsl.d	$a1, $s2, $s7, 1
	slli.d	$a2, $s2, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	alsl.d	$a1, $a1, $fp, 4
	slli.d	$a2, $a2, 2
	addi.w	$s1, $s1, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s1, $a0, .LBB15_281
	b	.LBB15_277
	.p2align	4, , 16
.LBB15_287:                             # %if.then2530
                                        #   in Loop: Header=BB15_278 Depth=2
	ori	$a2, $zero, 7
	addi.d	$a5, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$a7, $sp, 436
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 436
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_300
# %bb.288:                              # %for.cond2590.preheader
                                        #   in Loop: Header=BB15_278 Depth=2
	blt	$a0, $s0, .LBB15_277
# %bb.289:                              # %for.body2593.lr.ph
                                        #   in Loop: Header=BB15_278 Depth=2
	move	$a1, $zero
	alsl.d	$a2, $s2, $s2, 1
	slli.d	$a2, $a2, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $s1, 6
	add.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_291
	.p2align	4, , 16
.LBB15_290:                             # %for.inc2632
                                        #   in Loop: Header=BB15_291 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_277
.LBB15_291:                             # %for.body2593
                                        #   Parent Loop BB15_276 Depth=1
                                        #     Parent Loop BB15_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_290
# %bb.292:                              # %if.then2598
                                        #   in Loop: Header=BB15_291 Depth=3
	ldx.bu	$a6, $s8, $s6
	ld.d	$a7, $s5, 304
	ld.w	$t0, $a3, 0
	sll.d	$a6, $s0, $a6
	or	$a6, $a6, $a7
	st.d	$a6, $s5, 304
	add.d	$a1, $a1, $t0
	addi.w	$a1, $a1, 1
	alsl.d	$a6, $a1, $s7, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $s7, $a7
	alsl.d	$a6, $a6, $a2, 4
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a6, $a7
	b	.LBB15_290
	.p2align	4, , 16
.LBB15_293:                             # %for.body2711.preheader
                                        #   in Loop: Header=BB15_278 Depth=2
	move	$s2, $zero
	addi.d	$s1, $zero, -1
	.p2align	4, , 16
.LBB15_294:                             # %for.body2711
                                        #   Parent Loop BB15_276 Depth=1
                                        #     Parent Loop BB15_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 568
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_296
# %bb.295:                              # %lor.lhs.false2721
                                        #   in Loop: Header=BB15_294 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_297
.LBB15_296:                             # %if.then2725
                                        #   in Loop: Header=BB15_294 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 600
	b	.LBB15_298
	.p2align	4, , 16
.LBB15_297:                             # %if.else2727
                                        #   in Loop: Header=BB15_294 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 608
.LBB15_298:                             # %if.end2729
                                        #   in Loop: Header=BB15_294 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 572
	beqz	$a0, .LBB15_277
# %bb.299:                              # %for.inc2776
                                        #   in Loop: Header=BB15_294 Depth=3
	ldx.bu	$a1, $s8, $s6
	ld.d	$a2, $s5, 304
	ld.w	$a3, $sp, 576
	sll.d	$a1, $s0, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s5, 304
	add.d	$a1, $s2, $a3
	addi.w	$s2, $a1, 1
	alsl.d	$a1, $s2, $s7, 1
	slli.d	$a2, $s2, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	alsl.d	$a3, $a1, $s3, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	addi.d	$a4, $sp, 428
	ldx.wu	$a4, $s4, $a4
	mul.d	$a0, $a3, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $fp, 4
	addi.w	$s1, $s1, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s1, $a0, .LBB15_294
	b	.LBB15_277
.LBB15_300:                             # %for.cond2535.preheader
                                        #   in Loop: Header=BB15_278 Depth=2
	blt	$a0, $s0, .LBB15_277
# %bb.301:                              # %for.body2538.lr.ph
                                        #   in Loop: Header=BB15_278 Depth=2
	move	$a1, $zero
	alsl.d	$a2, $s2, $s2, 1
	slli.d	$a2, $a2, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $s1, 6
	add.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 440
	addi.d	$a4, $sp, 504
	b	.LBB15_303
	.p2align	4, , 16
.LBB15_302:                             # %for.inc2586
                                        #   in Loop: Header=BB15_303 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_277
.LBB15_303:                             # %for.body2538
                                        #   Parent Loop BB15_276 Depth=1
                                        #     Parent Loop BB15_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_302
# %bb.304:                              # %if.then2543
                                        #   in Loop: Header=BB15_303 Depth=3
	ldx.bu	$a6, $s8, $s6
	ld.d	$a7, $s5, 304
	ld.w	$t0, $a3, 0
	sll.d	$a6, $s0, $a6
	or	$a6, $a6, $a7
	st.d	$a6, $s5, 304
	add.d	$a1, $a1, $t0
	addi.w	$a1, $a1, 1
	alsl.d	$a6, $a1, $s7, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $s7, $a7
	alsl.d	$t0, $a6, $s3, 4
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $t0, $a7
	addi.d	$t1, $sp, 428
	ldx.wu	$t1, $s4, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 8
	srli.d	$a5, $a5, 4
	alsl.d	$a6, $a6, $a2, 4
	stx.w	$a5, $a6, $a7
	b	.LBB15_302
.LBB15_305:                             # %if.else167
	add.d	$a2, $a0, $a2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 568
	move	$a1, $s1
	jirl	$ra, $a3, 0
.LBB15_306:                             # %if.end170
	ld.w	$a1, $sp, 572
	ld.w	$a0, $s5, 40
	st.w	$a1, $s5, 396
	b	.LBB15_27
.Lfunc_end15:
	.size	readCBPandCoeffsFromNAL, .Lfunc_end15-readCBPandCoeffsFromNAL
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_14-.LJTI15_0
	.word	.LBB15_12-.LJTI15_0
	.word	.LBB15_13-.LJTI15_0
	.word	.LBB15_14-.LJTI15_0
	.word	.LBB15_13-.LJTI15_0
	.word	.LBB15_12-.LJTI15_0
                                        # -- End function
	.text
	.globl	readIPCMcoeffsFromNAL           # -- Begin function readIPCMcoeffsFromNAL
	.p2align	5
	.type	readIPCMcoeffsFromNAL,@function
readIPCMcoeffsFromNAL:                  # @readIPCMcoeffsFromNAL
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
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 1
	move	$s0, $a2
	move	$fp, $a0
	bne	$a1, $a3, .LBB16_12
# %bb.1:                                # %if.then
	move	$s2, $zero
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 28
	addi.d	$a0, $fp, 2047
	addi.d	$s1, $a0, 361
	ori	$s3, $zero, 16
	.p2align	4, , 16
.LBB16_2:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s5, $s1, $a0
	ld.d	$a1, $s0, 0
	andi	$a0, $s2, 3
	alsl.d	$s4, $a0, $s5, 4
	slli.d	$s6, $a0, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	stx.w	$a0, $s5, $s6
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 12
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 64
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 68
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 72
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 76
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 128
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 132
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 136
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 140
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 192
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 196
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 200
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	addi.w	$s2, $s2, 1
	st.w	$a0, $s4, 204
	bne	$s2, $s3, .LBB16_2
# %bb.3:                                # %for.end15
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB16_33
# %bb.4:                                # %for.cond18.preheader
	ldptr.w	$a0, $fp, 5936
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB16_33
# %bb.5:                                # %for.cond21.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	blt	$a1, $a2, .LBB16_26
# %bb.6:                                # %for.cond21.preheader.preheader
	move	$s2, $zero
	ori	$s3, $zero, 1
	lu12i.w	$a2, 1
	ori	$s4, $a2, 1840
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_7:                               # %for.inc42.loopexit
                                        #   in Loop: Header=BB16_9 Depth=1
	ldx.w	$a0, $fp, $s4
.LBB16_8:                               # %for.inc42
                                        #   in Loop: Header=BB16_9 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_25
.LBB16_9:                               # %for.cond21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
	blt	$a1, $s3, .LBB16_8
# %bb.10:                               # %for.body23.lr.ph
                                        #   in Loop: Header=BB16_9 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s2, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$a0, $s1, $a0
	andi	$a1, $s2, 3
	alsl.d	$s6, $a1, $a0, 4
	.p2align	4, , 16
.LBB16_11:                              # %for.body23
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s6
	andi	$a2, $s5, 3
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_11
	b	.LBB16_7
.LBB16_12:                              # %if.else
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 8
	bstrpick.d	$a2, $a0, 62, 60
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 3
	slli.d	$a2, $a2, 3
	sub.w	$a0, $a0, $a2
	beqz	$a0, .LBB16_14
# %bb.13:                               # %if.then78
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	st.w	$a0, $sp, 28
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
.LBB16_14:                              # %if.end84
	lu12i.w	$s2, 1
	ori	$a0, $s2, 1780
	ldx.w	$a0, $fp, $a0
	move	$s3, $zero
	st.w	$a0, $sp, 28
	addi.d	$a0, $fp, 2047
	addi.d	$s1, $a0, 361
	ori	$s4, $zero, 16
	.p2align	4, , 16
.LBB16_15:                              # %for.cond89.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s6, $s1, $a0
	ld.d	$a1, $s0, 0
	andi	$a0, $s3, 3
	alsl.d	$s5, $a0, $s6, 4
	slli.d	$s7, $a0, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	stx.w	$a0, $s6, $s7
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 12
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 64
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 68
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 72
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 76
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 128
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 132
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 136
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 140
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 192
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 196
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 200
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	addi.w	$s3, $s3, 1
	st.w	$a0, $s5, 204
	bne	$s3, $s4, .LBB16_15
# %bb.16:                               # %for.end113
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ori	$a1, $s2, 1784
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $fp, $a1
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1652
	ldx.w	$a0, $a0, $a2
	st.w	$a1, $sp, 28
	beqz	$a0, .LBB16_38
# %bb.17:                               # %for.cond118.preheader
	ldptr.w	$a0, $fp, 5936
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB16_38
# %bb.18:                               # %for.cond122.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	blt	$a1, $a2, .LBB16_40
# %bb.19:                               # %for.cond122.preheader.preheader
	move	$s3, $zero
	ori	$s4, $zero, 1
	ori	$s5, $s2, 1840
	b	.LBB16_22
	.p2align	4, , 16
.LBB16_20:                              # %for.inc146.loopexit
                                        #   in Loop: Header=BB16_22 Depth=1
	ldx.w	$a0, $fp, $s5
.LBB16_21:                              # %for.inc146
                                        #   in Loop: Header=BB16_22 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB16_39
.LBB16_22:                              # %for.cond122.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_24 Depth 2
	blt	$a1, $s4, .LBB16_21
# %bb.23:                               # %for.body125.lr.ph
                                        #   in Loop: Header=BB16_22 Depth=1
	move	$s6, $zero
	bstrpick.d	$a0, $s3, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$a0, $s1, $a0
	andi	$a1, $s3, 3
	alsl.d	$s7, $a1, $a0, 4
	.p2align	4, , 16
.LBB16_24:                              # %for.body125
                                        #   Parent Loop BB16_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s6, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s7
	andi	$a2, $s6, 3
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s6, $s6, 1
	blt	$s6, $a1, .LBB16_24
	b	.LBB16_20
.LBB16_25:                              # %for.cond45.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_33
.LBB16_26:                              # %for.cond49.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	ori	$s2, $zero, 1
	blt	$a1, $s2, .LBB16_33
# %bb.27:                               # %for.cond49.preheader.preheader
	move	$s3, $zero
	lu12i.w	$a2, 1
	ori	$s4, $a2, 1840
	b	.LBB16_29
	.p2align	4, , 16
.LBB16_28:                              # %for.inc73
                                        #   in Loop: Header=BB16_29 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB16_33
.LBB16_29:                              # %for.cond49.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_31 Depth 2
	blt	$a1, $s2, .LBB16_28
# %bb.30:                               # %for.body52.lr.ph
                                        #   in Loop: Header=BB16_29 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s3, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$a0, $a0, $s1
	andi	$a1, $s3, 3
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$s6, $a0, 1536
	.p2align	4, , 16
.LBB16_31:                              # %for.body52
                                        #   Parent Loop BB16_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s6
	andi	$a2, $s5, 3
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_31
# %bb.32:                               # %for.inc73.loopexit
                                        #   in Loop: Header=BB16_29 Depth=1
	ldx.w	$a0, $fp, $s4
	b	.LBB16_28
.LBB16_33:                              # %if.end
	ldptr.d	$s0, $fp, 5592
	ld.w	$a1, $s0, 28
	ori	$a0, $zero, 1
	beqz	$a1, .LBB16_36
# %bb.34:                               # %if.end
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_47
# %bb.35:                               # %if.then3.i
	ori	$a0, $zero, 3
.LBB16_36:                              # %if.end5.i
	move	$s1, $zero
	ori	$a1, $zero, 56
	mul.d	$s2, $a0, $a1
	.p2align	4, , 16
.LBB16_37:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ldx.d	$a3, $a0, $s1
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	ld.w	$a4, $fp, 44
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(arideco_start_decoding)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 56
	bne	$s2, $s1, .LBB16_37
.LBB16_38:                              # %if.end182
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
.LBB16_39:                              # %for.cond149.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_38
.LBB16_40:                              # %for.cond153.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	ori	$s3, $zero, 1
	blt	$a1, $s3, .LBB16_38
# %bb.41:                               # %for.cond153.preheader.preheader
	move	$s4, $zero
	ori	$s2, $s2, 1840
	b	.LBB16_44
	.p2align	4, , 16
.LBB16_42:                              # %for.inc178.loopexit
                                        #   in Loop: Header=BB16_44 Depth=1
	ldx.w	$a0, $fp, $s2
.LBB16_43:                              # %for.inc178
                                        #   in Loop: Header=BB16_44 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB16_38
.LBB16_44:                              # %for.cond153.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_46 Depth 2
	blt	$a1, $s3, .LBB16_43
# %bb.45:                               # %for.body156.lr.ph
                                        #   in Loop: Header=BB16_44 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s4, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$a0, $a0, $s1
	andi	$a1, $s4, 3
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$s6, $a0, 1536
	.p2align	4, , 16
.LBB16_46:                              # %for.body156
                                        #   Parent Loop BB16_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s6
	andi	$a2, $s5, 3
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_46
	b	.LBB16_42
.LBB16_47:                              # %if.else4.i
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	readIPCMcoeffsFromNAL, .Lfunc_end16-readIPCMcoeffsFromNAL
                                        # -- End function
	.globl	init_decoding_engine_IPCM       # -- Begin function init_decoding_engine_IPCM
	.p2align	5
	.type	init_decoding_engine_IPCM,@function
init_decoding_engine_IPCM:              # @init_decoding_engine_IPCM
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s0, $a0, 5592
	ld.w	$a1, $s0, 28
	ori	$a0, $zero, 1
	beqz	$a1, .LBB17_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB17_6
# %bb.2:                                # %if.then3
	ori	$a0, $zero, 3
.LBB17_3:                               # %if.end5
	move	$s1, $zero
	ori	$a1, $zero, 56
	mul.d	$s2, $a0, $a1
	.p2align	4, , 16
.LBB17_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ldx.d	$a3, $a0, $s1
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	ld.w	$a4, $fp, 44
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(arideco_start_decoding)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 56
	bne	$s2, $s1, .LBB17_4
# %bb.5:                                # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB17_6:                               # %if.else4
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	init_decoding_engine_IPCM, .Lfunc_end17-init_decoding_engine_IPCM
                                        # -- End function
	.globl	BType2CtxRef                    # -- Begin function BType2CtxRef
	.p2align	5
	.type	BType2CtxRef,@function
BType2CtxRef:                           # @BType2CtxRef
# %bb.0:                                # %entry
	ori	$a1, $zero, 3
	slt	$a0, $a1, $a0
	ret
.Lfunc_end18:
	.size	BType2CtxRef, .Lfunc_end18-BType2CtxRef
                                        # -- End function
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	5
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s0, $a0, 4
	ldptr.d	$s3, $a0, 5600
	slli.w	$s1, $a1, 2
	addi.d	$a0, $zero, -1
	alsl.w	$a1, $a1, $a0, 2
	slli.w	$s2, $a2, 2
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 408
	mul.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	ld.w	$a1, $a0, 40
	addi.d	$s7, $a0, 40
	ori	$a0, $zero, 14
	lu12i.w	$s5, 6
	pcalau12i	$s4, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB19_8
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB19_8
# %bb.2:                                # %land.lhs.true
	ld.w	$a0, $sp, 8
	beqz	$a0, .LBB19_7
.LBB19_3:                               # %land.lhs.true13
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB19_6
# %bb.4:                                # %land.lhs.true15
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB19_6
# %bb.5:                                # %if.then
	ld.w	$a1, $sp, 12
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$s3, $a0, 1
	b	.LBB19_10
.LBB19_6:
	move	$s3, $zero
	b	.LBB19_11
.LBB19_7:
	move	$s3, $zero
	b	.LBB19_12
.LBB19_8:                               # %lor.lhs.false10
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB19_10
# %bb.9:                                # %lor.lhs.false10
	bnez	$a0, .LBB19_3
.LBB19_10:                              # %if.end23
	beqz	$a0, .LBB19_12
.LBB19_11:                              # %if.then26
	ld.w	$a0, $sp, 12
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$s6, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB19_13
.LBB19_12:
	move	$s6, $zero
.LBB19_13:                              # %if.end35
	addi.w	$a2, $s2, -1
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB19_19
# %bb.14:                               # %if.end35
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB19_19
# %bb.15:                               # %land.lhs.true53
	ld.w	$a0, $sp, 8
	beqz	$a0, .LBB19_23
.LBB19_16:                              # %land.lhs.true56
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB19_22
# %bb.17:                               # %land.lhs.true59
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB19_22
# %bb.18:                               # %if.then63
	ld.w	$a1, $sp, 12
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
	b	.LBB19_21
.LBB19_19:                              # %lor.lhs.false50
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB19_21
# %bb.20:                               # %lor.lhs.false50
	bnez	$a0, .LBB19_16
.LBB19_21:                              # %if.end75
	beqz	$a0, .LBB19_23
.LBB19_22:                              # %if.then78
	ld.w	$a0, $sp, 12
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$a0, $a0, $a1
	add.d	$s6, $a0, $s6
	addi.d	$s3, $s3, 1
.LBB19_23:                              # %if.end90
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s6, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s6, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end19:
	.size	predict_nnz, .Lfunc_end19-predict_nnz
                                        # -- End function
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	5
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.w	$s0, $fp, 4
	slli.d	$s6, $a2, 2
	ldptr.d	$a1, $fp, 5600
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 408
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1652
	ldx.w	$a0, $a0, $a4
	mul.d	$a3, $s0, $a3
	add.d	$s4, $a1, $a3
	ori	$a1, $zero, 3
	slli.w	$s1, $s2, 2
	bne	$a0, $a1, .LBB20_7
# %bb.1:                                # %if.else
	pcalau12i	$a0, %pc_hi20(predict_nnz_chroma.j_off_tab)
	addi.d	$a0, $a0, %pc_lo12(predict_nnz_chroma.j_off_tab)
	ldx.w	$s6, $a0, $s6
	addi.w	$a1, $s1, -1
	sub.d	$a0, $a2, $s6
	slli.w	$s2, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_17
# %bb.2:                                # %if.else
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_17
# %bb.3:                                # %land.lhs.true123
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB20_15
.LBB20_4:                               # %land.lhs.true126
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_13
# %bb.5:                                # %land.lhs.true129
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_13
# %bb.6:                                # %if.then133
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.w	$s3, $zero, -1
	b	.LBB20_19
.LBB20_7:                               # %if.then
	andi	$s1, $s1, 4
	addi.d	$a1, $s1, -1
	addi.d	$a0, $zero, -16
	alsl.w	$a2, $a2, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	lu12i.w	$s8, 6
	bstrpick.d	$s2, $s2, 31, 1
	pcalau12i	$s7, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB20_28
# %bb.8:                                # %if.then
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_28
# %bb.9:                                # %land.lhs.true
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB20_16
.LBB20_10:                              # %land.lhs.true17
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_14
# %bb.11:                               # %land.lhs.true19
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_14
# %bb.12:                               # %if.then21
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$s3, $a0, 1
	b	.LBB20_30
.LBB20_13:
	move	$s3, $zero
	b	.LBB20_20
.LBB20_14:
	move	$s3, $zero
	b	.LBB20_31
.LBB20_15:
	move	$s3, $zero
	b	.LBB20_21
.LBB20_16:
	move	$s3, $zero
	b	.LBB20_32
.LBB20_17:                              # %lor.lhs.false120
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_19
# %bb.18:                               # %lor.lhs.false120
	bnez	$a0, .LBB20_4
.LBB20_19:                              # %if.end140
	beqz	$a0, .LBB20_21
.LBB20_20:                              # %if.then143
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$s5, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB20_22
.LBB20_21:
	move	$s5, $zero
.LBB20_22:                              # %if.end156
	addi.w	$a2, $s2, -1
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_39
# %bb.23:                               # %if.end156
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_39
# %bb.24:                               # %land.lhs.true175
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB20_48
.LBB20_25:                              # %land.lhs.true178
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_42
# %bb.26:                               # %land.lhs.true181
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_42
# %bb.27:                               # %if.then185
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.d	$s3, $s3, -1
	b	.LBB20_41
.LBB20_28:                              # %lor.lhs.false14
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_30
# %bb.29:                               # %lor.lhs.false14
	bnez	$a0, .LBB20_10
.LBB20_30:                              # %if.end29
	beqz	$a0, .LBB20_32
.LBB20_31:                              # %if.then32
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s5, $a0, 16
	addi.d	$s3, $s3, 1
	b	.LBB20_33
.LBB20_32:
	move	$s5, $zero
.LBB20_33:                              # %if.end42
	addi.w	$a2, $s6, -17
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_43
# %bb.34:                               # %if.end42
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_43
# %bb.35:                               # %land.lhs.true62
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB20_48
.LBB20_36:                              # %land.lhs.true65
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_46
# %bb.37:                               # %land.lhs.true68
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_46
# %bb.38:                               # %if.then72
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
	b	.LBB20_45
.LBB20_39:                              # %lor.lhs.false172
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_41
# %bb.40:                               # %lor.lhs.false172
	bnez	$a0, .LBB20_25
.LBB20_41:                              # %if.end193
	beqz	$a0, .LBB20_48
.LBB20_42:                              # %if.then196
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB20_47
.LBB20_43:                              # %lor.lhs.false59
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_45
# %bb.44:                               # %lor.lhs.false59
	bnez	$a0, .LBB20_36
.LBB20_45:                              # %if.end84
	beqz	$a0, .LBB20_48
.LBB20_46:                              # %if.then87
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 16
.LBB20_47:                              # %if.end211
	add.d	$s5, $a0, $s5
	addi.d	$s3, $s3, 1
.LBB20_48:                              # %if.end211
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
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
.Lfunc_end20:
	.size	predict_nnz_chroma, .Lfunc_end20-predict_nnz_chroma
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function readCoeff4x4_CAVLC
.LCPI21_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967291                      # 0xfffffffb
	.word	4294967290                      # 0xfffffffa
	.word	4294967289                      # 0xfffffff9
	.text
	.globl	readCoeff4x4_CAVLC
	.p2align	5
	.type	readCoeff4x4_CAVLC,@function
readCoeff4x4_CAVLC:                     # @readCoeff4x4_CAVLC
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $a0
	ldptr.d	$s1, $a0, 5592
	ld.w	$a0, $s1, 28
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	move	$s2, $a7
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s4, $a4
	move	$s5, $a3
	slli.d	$a3, $a0, 6
	alsl.d	$a0, $a0, $a3, 4
	add.d	$s8, $a1, $a0
	ori	$a1, $zero, 7
	ori	$fp, $zero, 1
	bltu	$a1, $a2, .LBB21_5
# %bb.1:                                # %entry
	ld.w	$a0, $s3, 4
	ldptr.d	$a3, $s3, 5600
	ori	$a4, $zero, 408
	slli.d	$a2, $a2, 2
	pcalau12i	$a5, %pc_hi20(.LJTI21_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI21_0)
	ldx.w	$a6, $a5, $a2
	mul.d	$a2, $a0, $a4
	add.d	$a2, $a3, $a2
	ori	$s6, $zero, 16
	add.d	$a3, $a5, $a6
	ori	$s7, $zero, 1
	jr	$a3
.LBB21_2:                               # %sw.bb
	ld.w	$a3, $a2, 40
	ori	$a2, $zero, 14
	bltu	$a2, $a3, .LBB21_4
# %bb.3:                                # %sw.bb
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a3
	lu12i.w	$a4, 6
	ori	$a4, $a4, 1536
	and	$a4, $a1, $a4
	ori	$a1, $zero, 9
	bnez	$a4, .LBB21_16
.LBB21_4:                               # %lor.rhs
	addi.d	$a1, $a3, -12
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 9
	b	.LBB21_15
.LBB21_5:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	move	$a1, $zero
	move	$s6, $zero
	b	.LBB21_16
.LBB21_6:                               # %sw.bb14
	ori	$s6, $zero, 15
	ori	$a1, $zero, 9
	b	.LBB21_16
.LBB21_7:                               # %sw.bb15
	lu12i.w	$a1, 1
	ori	$a3, $a1, 1832
	ld.w	$a1, $a2, 40
	ldx.w	$s6, $s3, $a3
	ori	$a2, $zero, 14
	bltu	$a2, $a1, .LBB21_13
# %bb.8:                                # %sw.bb15
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	and	$a2, $a2, $a3
	beqz	$a2, .LBB21_13
# %bb.9:
	move	$s7, $zero
	ori	$a1, $zero, 8
	b	.LBB21_17
.LBB21_10:                              # %sw.bb32
	ld.w	$a1, $a2, 40
	ori	$a2, $zero, 14
	bltu	$a2, $a1, .LBB21_14
# %bb.11:                               # %sw.bb32
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	and	$a2, $a2, $a3
	beqz	$a2, .LBB21_14
# %bb.12:
	move	$fp, $zero
	ori	$s6, $zero, 15
	ori	$a1, $zero, 10
	b	.LBB21_16
.LBB21_13:                              # %lor.rhs27
	move	$s7, $zero
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 13
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 8
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB21_17
.LBB21_14:                              # %lor.rhs44
	move	$fp, $zero
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	ori	$s6, $zero, 15
	masknez	$a2, $s6, $a1
	ori	$a3, $zero, 10
.LBB21_15:                              # %sw.epilog
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
.LBB21_16:                              # %sw.epilog
	ori	$s7, $zero, 1
.LBB21_17:                              # %sw.epilog
	ldptr.d	$a2, $s3, 5560
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	st.w	$a1, $sp, 40
	ld.d	$a2, $s1, 40
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	slli.d	$a3, $s5, 3
	ldx.d	$a0, $a0, $a3
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$s1, $a2, $a1
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	beqz	$s7, .LBB21_22
# %bb.18:                               # %if.then
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s4
	beqz	$fp, .LBB21_23
# %bb.19:                               # %if.then62
	pcaddu18i	$ra, %call36(predict_nnz)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB21_24
.LBB21_20:                              # %if.else66
	ori	$a2, $zero, 4
	ori	$a1, $zero, 1
	bltu	$a0, $a2, .LBB21_25
# %bb.21:                               # %if.else69
	sltui	$a0, $a0, 8
	xori	$a1, $a0, 3
	b	.LBB21_25
.LBB21_22:                              # %if.else87
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnesChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 44
	ld.w	$s5, $sp, 48
	ori	$a0, $zero, 1
	bge	$s6, $a0, .LBB21_26
	b	.LBB21_39
.LBB21_23:                              # %if.else
	pcaddu18i	$ra, %call36(predict_nnz_chroma)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB21_20
.LBB21_24:
	move	$a1, $zero
.LBB21_25:                              # %if.end75
	st.w	$a1, $sp, 44
	addi.d	$a0, $sp, 40
	addi.d	$a2, $sp, 25
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnes)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 4
	ldptr.d	$a1, $s3, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s3, $sp, 44
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$s5, $sp, 48
	slli.d	$a1, $s4, 2
	stx.w	$s3, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB21_39
.LBB21_26:                              # %iter.check
	ori	$a1, $zero, 4
	move	$a0, $zero
	bltu	$s6, $a1, .LBB21_37
# %bb.27:                               # %iter.check
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB21_37
# %bb.28:                               # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$s6, $a0, .LBB21_30
# %bb.29:
	move	$a0, $zero
	b	.LBB21_34
.LBB21_30:                              # %vector.ph
	bstrpick.d	$a0, $s6, 30, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	addi.d	$a2, $s0, 32
	xvrepli.b	$xr0, 0
	move	$a3, $a0
	.p2align	4, , 16
.LBB21_31:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB21_31
# %bb.32:                               # %middle.block
	beq	$a0, $s6, .LBB21_39
# %bb.33:                               # %vec.epilog.iter.check
	andi	$a1, $s6, 12
	beqz	$a1, .LBB21_37
.LBB21_34:                              # %vec.epilog.ph
	move	$a3, $a0
	bstrpick.d	$a0, $s6, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a3, $a3, $s0, 2
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB21_35:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB21_35
# %bb.36:                               # %vec.epilog.middle.block
	beq	$a0, $s6, .LBB21_39
.LBB21_37:                              # %for.body.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a2, $a0, $s0, 2
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB21_38:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB21_38
.LBB21_39:                              # %for.end
	st.w	$s3, $s2, 0
	beqz	$s3, .LBB21_65
# %bb.40:                               # %if.then98
	beqz	$s5, .LBB21_49
# %bb.41:                               # %if.then100
	ld.d	$a1, $s1, 0
	st.w	$s5, $sp, 52
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s3, -1
	ori	$a0, $zero, 1
	sub.w	$fp, $s4, $s5
	blt	$s5, $a0, .LBB21_48
# %bb.42:                               # %for.body106.preheader
	ld.w	$a0, $sp, 56
	addi.d	$a1, $s4, -1
	slt	$a2, $fp, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $s4, $a1
	ori	$a4, $zero, 8
	move	$a1, $s4
	move	$a3, $s5
	bltu	$a2, $a4, .LBB21_46
# %bb.43:                               # %vector.ph135
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a1, $s4, $a4
	pcalau12i	$a3, %pc_hi20(.LCPI21_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI21_0)
	sub.d	$a3, $s5, $a4
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr2, $s5
	xvadd.w	$xr1, $xr2, $xr1
	alsl.d	$a5, $s4, $s0, 2
	addi.d	$a5, $a5, -28
	xvrepli.b	$xr2, -1
	xvrepli.w	$xr3, 1
	xvrepli.w	$xr4, -8
	move	$a6, $a4
	.p2align	4, , 16
.LBB21_44:                              # %vector.body140
                                        # =>This Inner Loop Header: Depth=1
	xvadd.w	$xr5, $xr1, $xr2
	xvsrl.w	$xr5, $xr0, $xr5
	xvand.v	$xr5, $xr5, $xr3
	xvseqi.w	$xr5, $xr5, 0
	xvxor.v	$xr5, $xr5, $xr2
	xvbitseti.w	$xr5, $xr5, 0
	xvpermi.d	$xr5, $xr5, 78
	xvshuf4i.w	$xr5, $xr5, 27
	xvst	$xr5, $a5, 0
	xvadd.w	$xr1, $xr1, $xr4
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB21_44
# %bb.45:                               # %middle.block143
	beq	$a2, $a4, .LBB21_48
.LBB21_46:                              # %for.body106.preheader148
	alsl.d	$a2, $a1, $s0, 2
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB21_47:                              # %for.body106
                                        # =>This Inner Loop Header: Depth=1
	srl.w	$a4, $a0, $a3
	andi	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -1
	blt	$fp, $a1, .LBB21_47
.LBB21_48:                              # %if.end114
	bgez	$fp, .LBB21_50
	b	.LBB21_60
.LBB21_49:                              # %if.then98.if.end114_crit_edge
	addi.w	$fp, $s3, -1
	move	$s4, $fp
	bltz	$fp, .LBB21_60
.LBB21_50:                              # %for.body127.lr.ph
	ori	$a0, $zero, 10
	slt	$a0, $a0, $s3
	slti	$a1, $s5, 3
	and	$s2, $a0, $a1
	ori	$a0, $zero, 3
	slt	$a0, $a0, $s3
	addi.d	$a1, $s5, -3
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1
	and	$s5, $a0, $a1
	addi.d	$a0, $sp, 40
	bne	$s2, $a2, .LBB21_52
# %bb.51:                               # %if.else131.peel
	ori	$a1, $zero, 1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	beqz	$s5, .LBB21_53
	b	.LBB21_54
.LBB21_52:                              # %if.then129.peel
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	bnez	$s5, .LBB21_54
.LBB21_53:                              # %if.then135.peel
	slti	$a1, $a0, 1
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	add.w	$a0, $a1, $a0
	st.w	$a0, $sp, 56
.LBB21_54:                              # %if.end140.peel
	slli.d	$a1, $fp, 2
	stx.w	$a0, $s0, $a1
	beqz	$fp, .LBB21_60
# %bb.55:                               # %for.body127.peel.next
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	slli.d	$a2, $s2, 2
	pcalau12i	$a3, %pc_hi20(readCoeff4x4_CAVLC.incVlc)
	addi.d	$s5, $a3, %pc_lo12(readCoeff4x4_CAVLC.incVlc)
	ldx.w	$a2, $s5, $a2
	sub.w	$a0, $a0, $a1
	ori	$a1, $zero, 3
	sltu	$a1, $a1, $a0
	slt	$a0, $a2, $a0
	add.w	$a0, $s2, $a0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	addi.d	$s8, $fp, 1
	alsl.d	$a0, $fp, $s0, 2
	addi.d	$fp, $a0, -4
	ori	$s0, $zero, 1
	b	.LBB21_58
	.p2align	4, , 16
.LBB21_56:                              # %if.else131
                                        #   in Loop: Header=BB21_58 Depth=1
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
.LBB21_57:                              # %if.end140
                                        #   in Loop: Header=BB21_58 Depth=1
	ld.w	$a0, $sp, 56
	st.w	$a0, $fp, 0
	slli.d	$a1, $s2, 2
	ldx.w	$a1, $s5, $a1
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	slt	$a0, $a1, $a0
	add.w	$s2, $s2, $a0
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, -4
	bgeu	$s0, $s8, .LBB21_60
.LBB21_58:                              # %for.body127
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 40
	bnez	$s2, .LBB21_56
# %bb.59:                               # %if.then129
                                        #   in Loop: Header=BB21_58 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	b	.LBB21_57
.LBB21_60:                              # %for.end165
	bge	$s3, $s6, .LBB21_63
# %bb.61:                               # %if.then167
	st.w	$s4, $sp, 44
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	beqz	$s7, .LBB21_66
# %bb.62:                               # %if.else173
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZeros)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 44
	ori	$a0, $zero, 1
	bge	$fp, $a0, .LBB21_67
	b	.LBB21_64
.LBB21_63:
	move	$fp, $zero
.LBB21_64:                              # %if.end201
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	stx.w	$fp, $a1, $a0
.LBB21_65:                              # %if.end204
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB21_66:                              # %if.then171
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZerosChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 44
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB21_64
.LBB21_67:                              # %if.end178
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB21_64
# %bb.68:                               # %do.body.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s0, $a0, -4
	slli.d	$a0, $s3, 2
	addi.d	$s4, $s3, -1
	ori	$s2, $zero, 7
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB21_69:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	slti	$a0, $fp, 7
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 44
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Run)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	stx.w	$a0, $s0, $s5
	sub.w	$fp, $fp, $a0
	addi.w	$s4, $s4, -1
	beqz	$fp, .LBB21_64
# %bb.70:                               # %do.body
                                        #   in Loop: Header=BB21_69 Depth=1
	addi.d	$a0, $s5, -4
	bne	$s5, $s3, .LBB21_69
	b	.LBB21_64
.Lfunc_end21:
	.size	readCoeff4x4_CAVLC, .Lfunc_end21-readCoeff4x4_CAVLC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI21_0:
	.word	.LBB21_2-.LJTI21_0
	.word	.LBB21_17-.LJTI21_0
	.word	.LBB21_6-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_7-.LJTI21_0
	.word	.LBB21_10-.LJTI21_0
                                        # -- End function
	.text
	.globl	CalculateQuant8Param            # -- Begin function CalculateQuant8Param
	.p2align	5
	.type	CalculateQuant8Param,@function
CalculateQuant8Param:                   # @CalculateQuant8Param
# %bb.0:                                # %entry
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(qmatrix)
	addi.d	$a2, $a1, %pc_lo12(qmatrix)
	ld.d	$a1, $a2, 48
	ld.d	$a2, $a2, 56
	pcalau12i	$a3, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale8x8Luma_Inter)
	pcalau12i	$a4, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a4, $a4, %pc_lo12(InvLevelScale8x8Luma_Intra)
	pcalau12i	$a5, %pc_hi20(dequant_coef8)
	addi.d	$a5, $a5, %pc_lo12(dequant_coef8)
	ori	$a6, $zero, 1536
	.p2align	4, , 16
.LBB22_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a5, $a0
	ld.w	$a7, $a1, 0
	mul.d	$a7, $a7, $t0
	stx.w	$a7, $a4, $a0
	ld.w	$t1, $a2, 0
	add.d	$a7, $a5, $a0
	mul.d	$t0, $t1, $t0
	stx.w	$t0, $a3, $a0
	ld.w	$t2, $a7, 4
	ld.w	$t0, $a1, 32
	add.d	$t1, $a4, $a0
	mul.d	$t0, $t0, $t2
	st.w	$t0, $t1, 32
	ld.w	$t3, $a2, 32
	add.d	$t0, $a3, $a0
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 32
	ld.w	$t2, $a7, 8
	ld.w	$t3, $a1, 64
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 64
	ld.w	$t3, $a2, 64
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 64
	ld.w	$t2, $a7, 12
	ld.w	$t3, $a1, 96
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 96
	ld.w	$t3, $a2, 96
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 96
	ld.w	$t2, $a7, 16
	ld.w	$t3, $a1, 128
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 128
	ld.w	$t3, $a2, 128
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 128
	ld.w	$t2, $a7, 20
	ld.w	$t3, $a1, 160
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 160
	ld.w	$t3, $a2, 160
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 160
	ld.w	$t2, $a7, 24
	ld.w	$t3, $a1, 192
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 192
	ld.w	$t3, $a2, 192
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 192
	ld.w	$t2, $a7, 28
	ld.w	$t3, $a1, 224
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 224
	ld.w	$t3, $a2, 224
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 224
	ld.w	$t2, $a7, 32
	ld.w	$t3, $a1, 4
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 4
	ld.w	$t3, $a2, 4
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 4
	ld.w	$t2, $a7, 36
	ld.w	$t3, $a1, 36
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 36
	ld.w	$t3, $a2, 36
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 36
	ld.w	$t2, $a7, 40
	ld.w	$t3, $a1, 68
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 68
	ld.w	$t3, $a2, 68
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 68
	ld.w	$t2, $a7, 44
	ld.w	$t3, $a1, 100
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 100
	ld.w	$t3, $a2, 100
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 100
	ld.w	$t2, $a7, 48
	ld.w	$t3, $a1, 132
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 132
	ld.w	$t3, $a2, 132
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 132
	ld.w	$t2, $a7, 52
	ld.w	$t3, $a1, 164
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 164
	ld.w	$t3, $a2, 164
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 164
	ld.w	$t2, $a7, 56
	ld.w	$t3, $a1, 196
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 196
	ld.w	$t3, $a2, 196
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 196
	ld.w	$t2, $a7, 60
	ld.w	$t3, $a1, 228
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 228
	ld.w	$t3, $a2, 228
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 228
	ld.w	$t2, $a7, 64
	ld.w	$t3, $a1, 8
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 8
	ld.w	$t3, $a2, 8
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 8
	ld.w	$t2, $a7, 68
	ld.w	$t3, $a1, 40
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 40
	ld.w	$t3, $a2, 40
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 40
	ld.w	$t2, $a7, 72
	ld.w	$t3, $a1, 72
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 72
	ld.w	$t3, $a2, 72
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 72
	ld.w	$t2, $a7, 76
	ld.w	$t3, $a1, 104
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 104
	ld.w	$t3, $a2, 104
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 104
	ld.w	$t2, $a7, 80
	ld.w	$t3, $a1, 136
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 136
	ld.w	$t3, $a2, 136
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 136
	ld.w	$t2, $a7, 84
	ld.w	$t3, $a1, 168
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 168
	ld.w	$t3, $a2, 168
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 168
	ld.w	$t2, $a7, 88
	ld.w	$t3, $a1, 200
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 200
	ld.w	$t3, $a2, 200
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 200
	ld.w	$t2, $a7, 92
	ld.w	$t3, $a1, 232
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 232
	ld.w	$t3, $a2, 232
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 232
	ld.w	$t2, $a7, 96
	ld.w	$t3, $a1, 12
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 12
	ld.w	$t3, $a2, 12
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 12
	ld.w	$t2, $a7, 100
	ld.w	$t3, $a1, 44
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 44
	ld.w	$t3, $a2, 44
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 44
	ld.w	$t2, $a7, 104
	ld.w	$t3, $a1, 76
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 76
	ld.w	$t3, $a2, 76
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 76
	ld.w	$t2, $a7, 108
	ld.w	$t3, $a1, 108
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 108
	ld.w	$t3, $a2, 108
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 108
	ld.w	$t2, $a7, 112
	ld.w	$t3, $a1, 140
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 140
	ld.w	$t3, $a2, 140
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 140
	ld.w	$t2, $a7, 116
	ld.w	$t3, $a1, 172
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 172
	ld.w	$t3, $a2, 172
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 172
	ld.w	$t2, $a7, 120
	ld.w	$t3, $a1, 204
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 204
	ld.w	$t3, $a2, 204
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 204
	ld.w	$t2, $a7, 124
	ld.w	$t3, $a1, 236
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 236
	ld.w	$t3, $a2, 236
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 236
	ld.w	$t2, $a7, 128
	ld.w	$t3, $a1, 16
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 16
	ld.w	$t3, $a2, 16
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 16
	ld.w	$t2, $a7, 132
	ld.w	$t3, $a1, 48
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 48
	ld.w	$t3, $a2, 48
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 48
	ld.w	$t2, $a7, 136
	ld.w	$t3, $a1, 80
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 80
	ld.w	$t3, $a2, 80
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 80
	ld.w	$t2, $a7, 140
	ld.w	$t3, $a1, 112
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 112
	ld.w	$t3, $a2, 112
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 112
	ld.w	$t2, $a7, 144
	ld.w	$t3, $a1, 144
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 144
	ld.w	$t3, $a2, 144
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 144
	ld.w	$t2, $a7, 148
	ld.w	$t3, $a1, 176
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 176
	ld.w	$t3, $a2, 176
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 176
	ld.w	$t2, $a7, 152
	ld.w	$t3, $a1, 208
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 208
	ld.w	$t3, $a2, 208
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 208
	ld.w	$t2, $a7, 156
	ld.w	$t3, $a1, 240
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 240
	ld.w	$t3, $a2, 240
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 240
	ld.w	$t2, $a7, 160
	ld.w	$t3, $a1, 20
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 20
	ld.w	$t3, $a2, 20
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 20
	ld.w	$t2, $a7, 164
	ld.w	$t3, $a1, 52
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 52
	ld.w	$t3, $a2, 52
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 52
	ld.w	$t2, $a7, 168
	ld.w	$t3, $a1, 84
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 84
	ld.w	$t3, $a2, 84
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 84
	ld.w	$t2, $a7, 172
	ld.w	$t3, $a1, 116
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 116
	ld.w	$t3, $a2, 116
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 116
	ld.w	$t2, $a7, 176
	ld.w	$t3, $a1, 148
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 148
	ld.w	$t3, $a2, 148
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 148
	ld.w	$t2, $a7, 180
	ld.w	$t3, $a1, 180
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 180
	ld.w	$t3, $a2, 180
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 180
	ld.w	$t2, $a7, 184
	ld.w	$t3, $a1, 212
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 212
	ld.w	$t3, $a2, 212
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 212
	ld.w	$t2, $a7, 188
	ld.w	$t3, $a1, 244
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 244
	ld.w	$t3, $a2, 244
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 244
	ld.w	$t2, $a7, 192
	ld.w	$t3, $a1, 24
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 24
	ld.w	$t3, $a2, 24
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 24
	ld.w	$t2, $a7, 196
	ld.w	$t3, $a1, 56
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 56
	ld.w	$t3, $a2, 56
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 56
	ld.w	$t2, $a7, 200
	ld.w	$t3, $a1, 88
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 88
	ld.w	$t3, $a2, 88
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 88
	ld.w	$t2, $a7, 204
	ld.w	$t3, $a1, 120
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 120
	ld.w	$t3, $a2, 120
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 120
	ld.w	$t2, $a7, 208
	ld.w	$t3, $a1, 152
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 152
	ld.w	$t3, $a2, 152
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 152
	ld.w	$t2, $a7, 212
	ld.w	$t3, $a1, 184
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 184
	ld.w	$t3, $a2, 184
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 184
	ld.w	$t2, $a7, 216
	ld.w	$t3, $a1, 216
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 216
	ld.w	$t3, $a2, 216
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 216
	ld.w	$t2, $a7, 220
	ld.w	$t3, $a1, 248
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 248
	ld.w	$t3, $a2, 248
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 248
	ld.w	$t2, $a7, 224
	ld.w	$t3, $a1, 28
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 28
	ld.w	$t3, $a2, 28
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 28
	ld.w	$t2, $a7, 228
	ld.w	$t3, $a1, 60
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 60
	ld.w	$t3, $a2, 60
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 60
	ld.w	$t2, $a7, 232
	ld.w	$t3, $a1, 92
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 92
	ld.w	$t3, $a2, 92
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 92
	ld.w	$t2, $a7, 236
	ld.w	$t3, $a1, 124
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 124
	ld.w	$t3, $a2, 124
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 124
	ld.w	$t2, $a7, 240
	ld.w	$t3, $a1, 156
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 156
	ld.w	$t3, $a2, 156
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 156
	ld.w	$t2, $a7, 244
	ld.w	$t3, $a1, 188
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 188
	ld.w	$t3, $a2, 188
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 188
	ld.w	$t2, $a7, 248
	ld.w	$t3, $a1, 220
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 220
	ld.w	$t3, $a2, 220
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 220
	ld.w	$a7, $a7, 252
	ld.w	$t2, $a1, 252
	mul.d	$t2, $t2, $a7
	st.w	$t2, $t1, 252
	ld.w	$t1, $a2, 252
	mul.d	$a7, $t1, $a7
	addi.d	$a0, $a0, 256
	st.w	$a7, $t0, 252
	bne	$a0, $a6, .LBB22_1
# %bb.2:                                # %for.end39
	ret
.Lfunc_end22:
	.size	CalculateQuant8Param, .Lfunc_end22-CalculateQuant8Param
                                        # -- End function
	.globl	readLumaCoeff8x8_CABAC          # -- Begin function readLumaCoeff8x8_CABAC
	.p2align	5
	.type	readLumaCoeff8x8_CABAC,@function
readLumaCoeff8x8_CABAC:                 # @readLumaCoeff8x8_CABAC
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $fp, 28
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1788
	ldx.w	$a3, $fp, $a3
	ldptr.d	$a4, $fp, 5600
	ori	$a5, $zero, 408
	mul.d	$a0, $a0, $a5
	add.w	$s1, $a3, $a1
	add.d	$s0, $a4, $a0
	beqz	$s1, .LBB23_3
# %bb.1:
	move	$s3, $zero
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bltu	$a3, $a1, .LBB23_4
.LBB23_2:                               # %switch.lookup
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.readLumaCoeff8x8_CABAC)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.readLumaCoeff8x8_CABAC)
	ldx.d	$s6, $a4, $a3
	b	.LBB23_5
.LBB23_3:                               # %land.rhs
	ldptr.w	$a0, $fp, 5920
	addi.d	$a0, $a0, -1
	sltui	$s3, $a0, 1
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bgeu	$a3, $a1, .LBB23_2
.LBB23_4:
	pcalau12i	$a3, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$s6, $a3, %pc_lo12(InvLevelScale8x8Luma_Inter)
.LBB23_5:                               # %cond.end
	ldptr.d	$a3, $fp, 5592
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ldptr.w	$a3, $fp, 5584
	ld.w	$a4, $s0, 300
	beqz	$a3, .LBB23_7
# %bb.6:
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$s2, $a3, %pc_lo12(FIELD_SCAN8x8)
	b	.LBB23_8
.LBB23_7:                               # %land.rhs32
	ld.w	$a3, $s0, 356
	sltui	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a5, $a5, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a5, $a5, $a3
	pcalau12i	$a6, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a6, $a6, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a3, $a6, $a3
	or	$s2, $a3, $a5
.LBB23_8:                               # %land.end33
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a5, $a3, 28
	sltui	$a6, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a6, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	srl.w	$a1, $a4, $a2
	andi	$a1, $a1, 1
	stptr.w	$a0, $fp, 5616
	beqz	$a1, .LBB23_18
# %bb.9:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	slli.d	$a4, $a5, 6
	alsl.d	$a4, $a5, $a4, 4
	add.d	$a5, $a1, $a4
	andi	$a1, $a2, 1
	slli.d	$a4, $a1, 3
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	slli.d	$s5, $a2, 2
	slli.d	$a1, $a1, 1
	sub.d	$a2, $s5, $a1
	bstrins.d	$s5, $zero, 2, 0
	addi.w	$a4, $s5, 0
	stptr.w	$a1, $fp, 5608
	srli.d	$a1, $a4, 2
	stptr.w	$a1, $fp, 5612
	bstrpick.d	$a1, $a2, 31, 1
	slli.d	$a1, $a1, 1
	sll.w	$a1, $a3, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 80
	ori	$a1, $zero, 12
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 7
	maskeqz	$a2, $a2, $a0
	ori	$a3, $zero, 48
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 28
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$a0, $a5, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	or	$a1, $a2, $a1
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a2, $a3, $a0
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$s7, $a0, %got_pc_lo12(readRunLevel_CABAC)
	ld.d	$a3, $a2, 48
	addi.d	$s8, $fp, 1384
	st.w	$a1, $sp, 56
	st.d	$s7, $sp, 96
	addi.d	$a0, $sp, 56
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 60
	beqz	$s3, .LBB23_14
# %bb.10:                               # %for.cond107.preheader
	beqz	$a0, .LBB23_18
# %bb.11:                               # %for.body115.peel.next
	ld.w	$s3, $sp, 64
	move	$s4, $zero
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s6, $zero, 56
	ori	$s1, $zero, 36
	.p2align	4, , 16
.LBB23_12:                              # %for.body115
                                        # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s6
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 80
	st.w	$a0, $sp, 56
	st.d	$s7, $sp, 96
	addi.d	$a0, $sp, 56
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 60
	beqz	$a0, .LBB23_18
# %bb.13:                               # %for.inc172
                                        #   in Loop: Header=BB23_12 Depth=1
	ld.w	$a1, $sp, 64
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s4, $a0, .LBB23_12
	b	.LBB23_18
.LBB23_14:                              # %for.cond.preheader
	beqz	$a0, .LBB23_18
# %bb.15:                               # %for.body.peel.next
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $s1, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$s4, $a1, $a2
	slli.d	$a1, $s4, 2
	alsl.d	$a1, $s4, $a1, 1
	ld.w	$s3, $sp, 64
	sub.w	$a1, $s1, $a1
	slli.d	$a1, $a1, 8
	add.d	$a5, $s6, $a1
	alsl.d	$a1, $s3, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s3, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	move	$s6, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s4
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s1, $zero, 56
	.p2align	4, , 16
.LBB23_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s1, $a0
	ori	$a3, $zero, 36
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s1
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 80
	st.w	$a0, $sp, 56
	st.d	$s7, $sp, 96
	addi.d	$a0, $sp, 56
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 60
	beqz	$a0, .LBB23_18
# %bb.17:                               # %for.inc
                                        #   in Loop: Header=BB23_16 Depth=1
	ld.w	$a1, $sp, 64
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s3, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s4
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s6, $a0, .LBB23_16
.LBB23_18:                              # %if.end176
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end23:
	.size	readLumaCoeff8x8_CABAC, .Lfunc_end23-readLumaCoeff8x8_CABAC
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function decode_ipcm_mb
.LCPI24_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	decode_ipcm_mb
	.p2align	5
	.type	decode_ipcm_mb,@function
decode_ipcm_mb:                         # @decode_ipcm_mb
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	move	$a6, $zero
	ldptr.d	$a4, $a0, 5600
	ld.d	$a2, $a1, 0
	ld.wu	$a5, $a0, 4
	lu12i.w	$a3, 77
	ori	$a7, $a3, 1528
	ldx.d	$t0, $a2, $a7
	ld.w	$t1, $a0, 80
	ld.w	$a7, $a0, 84
	addi.d	$a2, $a0, 2047
	addi.d	$a2, $a2, 361
	alsl.d	$t0, $t1, $t0, 3
	slli.d	$t1, $a7, 1
	ori	$t2, $zero, 16
	.p2align	4, , 16
.LBB24_1:                               # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a6, 31, 2
	alsl.d	$t3, $t3, $t3, 1
	slli.d	$t3, $t3, 8
	add.d	$t3, $a2, $t3
	andi	$t4, $a6, 3
	slli.d	$t5, $t4, 4
	ld.d	$t6, $t0, 0
	ldx.h	$t5, $t3, $t5
	alsl.d	$t3, $t4, $t3, 4
	stx.h	$t5, $t6, $t1
	ld.h	$t4, $t3, 4
	ld.h	$t5, $t3, 8
	ld.h	$t7, $t3, 12
	alsl.d	$t6, $a7, $t6, 1
	st.h	$t4, $t6, 2
	st.h	$t5, $t6, 4
	st.h	$t7, $t6, 6
	ld.h	$t4, $t3, 64
	ld.h	$t5, $t3, 68
	ld.h	$t7, $t3, 72
	ld.h	$t8, $t3, 76
	st.h	$t4, $t6, 8
	st.h	$t5, $t6, 10
	st.h	$t7, $t6, 12
	st.h	$t8, $t6, 14
	ld.h	$t4, $t3, 128
	ld.h	$t5, $t3, 132
	ld.h	$t7, $t3, 136
	ld.h	$t8, $t3, 140
	st.h	$t4, $t6, 16
	st.h	$t5, $t6, 18
	st.h	$t7, $t6, 20
	st.h	$t8, $t6, 22
	ld.h	$t4, $t3, 192
	ld.h	$t5, $t3, 196
	ld.h	$t7, $t3, 200
	ld.h	$t3, $t3, 204
	st.h	$t4, $t6, 24
	st.h	$t5, $t6, 26
	st.h	$t7, $t6, 28
	st.h	$t3, $t6, 30
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $t2, .LBB24_1
# %bb.2:                                # %for.end21
	ld.d	$a1, $a1, 0
	ori	$a3, $a3, 1536
	add.d	$a3, $a1, $a3
	ld.w	$a6, $a3, 116
	ori	$a1, $zero, 408
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a4, $a1
	beqz	$a6, .LBB24_24
# %bb.3:                                # %for.cond24.preheader
	ldptr.w	$a4, $a0, 5936
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB24_24
# %bb.4:                                # %for.cond28.preheader.lr.ph
	ldptr.w	$a6, $a0, 5932
	pcalau12i	$a5, %pc_hi20(.LCPI24_0)
	vrepli.d	$vr0, 3
	blt	$a6, $a7, .LBB24_14
# %bb.5:                                # %for.cond28.preheader.lr.ph.split.us
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a7, 0
	ld.w	$t1, $a0, 88
	move	$a7, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t0, $t1, $t0, 3
	bstrpick.d	$t1, $a6, 30, 2
	slli.d	$t1, $t1, 2
	slli.d	$t2, $t2, 1
	addi.d	$t3, $t2, 4
	ori	$t4, $zero, 4
	vld	$vr1, $a5, %pc_lo12(.LCPI24_0)
	ori	$t5, $zero, 0
	lu32i.d	$t5, 1
	vreplgr2vr.d	$vr2, $t5
	addi.w	$t5, $zero, -64
	lu32i.d	$t5, 31
	b	.LBB24_7
	.p2align	4, , 16
.LBB24_6:                               # %for.cond28.for.inc57_crit_edge.us
                                        #   in Loop: Header=BB24_7 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a4, .LBB24_14
.LBB24_7:                               # %for.cond28.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_10 Depth 2
                                        #     Child Loop BB24_13 Depth 2
	bstrpick.d	$t6, $a7, 31, 2
	alsl.d	$t6, $t6, $t6, 1
	slli.d	$t6, $t6, 8
	slli.d	$t7, $a7, 3
	ldx.d	$t7, $t0, $t7
	add.d	$t6, $a2, $t6
	andi	$t8, $a7, 3
	alsl.d	$t6, $t8, $t6, 4
	bgeu	$a6, $t4, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=1
	move	$t8, $zero
	b	.LBB24_12
	.p2align	4, , 16
.LBB24_9:                               # %vector.body.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	add.d	$t8, $t7, $t3
	move	$fp, $t1
	vori.b	$vr3, $vr1, 0
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB24_10:                              # %vector.body
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr5, $vr4, 2
	vsrli.w	$vr6, $vr4, 2
	vsrli.w	$vr5, $vr5, 2
	vaddi.wu	$vr6, $vr6, 4
	vaddi.wu	$vr5, $vr5, 4
	vpickve2gr.d	$s0, $vr6, 0
	bstrpick.d	$s1, $s0, 30, 0
	vpickve2gr.d	$s2, $vr5, 0
	bstrpick.d	$s3, $s2, 30, 0
	slli.d	$s1, $s1, 6
	add.d	$s1, $t6, $s1
	srli.d	$s0, $s0, 26
	and	$s0, $s0, $t5
	add.d	$s0, $t6, $s0
	slli.d	$s3, $s3, 6
	add.d	$s3, $t6, $s3
	srli.d	$s2, $s2, 26
	and	$s2, $s2, $t5
	add.d	$s2, $t6, $s2
	vand.v	$vr5, $vr3, $vr0
	vbitrevi.d	$vr6, $vr5, 1
	vpickve2gr.d	$s4, $vr5, 0
	slli.d	$s4, $s4, 2
	vpickve2gr.d	$s5, $vr5, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr6, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr6, 1
	slli.d	$s7, $s7, 2
	ldx.w	$s1, $s1, $s4
	ldx.w	$s0, $s0, $s5
	ldx.w	$s3, $s3, $s6
	ldx.w	$s2, $s2, $s7
	vinsgr2vr.w	$vr5, $s1, 0
	vinsgr2vr.w	$vr5, $s0, 1
	vinsgr2vr.w	$vr6, $s3, 0
	vinsgr2vr.w	$vr6, $s2, 1
	vshuf4i.h	$vr5, $vr5, 8
	vshuf4i.h	$vr6, $vr6, 8
	vstelm.w	$vr5, $t8, -4, 0
	vstelm.w	$vr6, $t8, 0, 0
	vaddi.du	$vr3, $vr3, 4
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB24_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB24_7 Depth=1
	move	$t8, $t1
	beq	$t1, $a6, .LBB24_6
.LBB24_12:                              # %for.body31.us.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	add.d	$t7, $t7, $t2
	alsl.d	$t7, $t8, $t7, 1
	move	$fp, $t8
	.p2align	4, , 16
.LBB24_13:                              # %for.body31.us
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s0, $t8, 31, 2
	slli.d	$s0, $s0, 6
	add.d	$s0, $s0, $t6
	andi	$s1, $fp, 3
	alsl.d	$s0, $s1, $s0, 2
	ld.h	$s0, $s0, 256
	st.h	$s0, $t7, 0
	addi.d	$fp, $fp, 1
	addi.d	$t7, $t7, 2
	addi.w	$t8, $t8, 1
	bne	$a6, $fp, .LBB24_13
	b	.LBB24_6
.LBB24_14:                              # %for.cond65.preheader.lr.ph
	ldptr.w	$a6, $a0, 5932
	ori	$a7, $zero, 1
	blt	$a6, $a7, .LBB24_24
# %bb.15:                               # %for.cond65.preheader.lr.ph.split.us
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a7, 8
	ld.w	$t1, $a0, 88
	move	$a7, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t0, $t1, $t0, 3
	bstrpick.d	$t1, $a6, 30, 2
	slli.d	$t1, $t1, 2
	slli.d	$t2, $t2, 1
	addi.d	$t3, $t2, 4
	ori	$t4, $zero, 4
	vld	$vr1, $a5, %pc_lo12(.LCPI24_0)
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	vreplgr2vr.d	$vr2, $a5
	addi.w	$a5, $zero, -64
	lu32i.d	$a5, 31
	b	.LBB24_17
	.p2align	4, , 16
.LBB24_16:                              # %for.cond65.for.inc99_crit_edge.us
                                        #   in Loop: Header=BB24_17 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a4, .LBB24_24
.LBB24_17:                              # %for.cond65.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_20 Depth 2
                                        #     Child Loop BB24_23 Depth 2
	bstrpick.d	$t5, $a7, 31, 2
	alsl.d	$t5, $t5, $t5, 1
	slli.d	$t5, $t5, 8
	add.d	$t5, $t5, $a2
	slli.d	$t6, $a7, 3
	ldx.d	$t6, $t0, $t6
	andi	$t7, $a7, 3
	alsl.d	$t5, $t7, $t5, 4
	addi.d	$t5, $t5, 1536
	bgeu	$a6, $t4, .LBB24_19
# %bb.18:                               #   in Loop: Header=BB24_17 Depth=1
	move	$t7, $zero
	b	.LBB24_22
	.p2align	4, , 16
.LBB24_19:                              # %vector.body131.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	add.d	$t7, $t6, $t3
	move	$t8, $t1
	vori.b	$vr3, $vr1, 0
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB24_20:                              # %vector.body131
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr5, $vr4, 2
	vsrli.w	$vr6, $vr4, 2
	vsrli.w	$vr5, $vr5, 2
	vaddi.wu	$vr6, $vr6, 4
	vaddi.wu	$vr5, $vr5, 4
	vpickve2gr.d	$fp, $vr6, 0
	bstrpick.d	$s0, $fp, 30, 0
	vpickve2gr.d	$s1, $vr5, 0
	bstrpick.d	$s2, $s1, 30, 0
	slli.d	$s0, $s0, 6
	add.d	$s0, $t5, $s0
	srli.d	$fp, $fp, 26
	and	$fp, $fp, $a5
	add.d	$fp, $t5, $fp
	slli.d	$s2, $s2, 6
	add.d	$s2, $t5, $s2
	srli.d	$s1, $s1, 26
	and	$s1, $s1, $a5
	add.d	$s1, $t5, $s1
	vand.v	$vr5, $vr3, $vr0
	vbitrevi.d	$vr6, $vr5, 1
	vpickve2gr.d	$s3, $vr5, 0
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s4, $vr5, 1
	slli.d	$s4, $s4, 2
	vpickve2gr.d	$s5, $vr6, 0
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr6, 1
	slli.d	$s6, $s6, 2
	ldx.w	$s0, $s0, $s3
	ldx.w	$fp, $fp, $s4
	ldx.w	$s2, $s2, $s5
	ldx.w	$s1, $s1, $s6
	vinsgr2vr.w	$vr5, $s0, 0
	vinsgr2vr.w	$vr5, $fp, 1
	vinsgr2vr.w	$vr6, $s2, 0
	vinsgr2vr.w	$vr6, $s1, 1
	vshuf4i.h	$vr5, $vr5, 8
	vshuf4i.h	$vr6, $vr6, 8
	vstelm.w	$vr5, $t7, -4, 0
	vstelm.w	$vr6, $t7, 0, 0
	vaddi.du	$vr3, $vr3, 4
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB24_20
# %bb.21:                               # %middle.block140
                                        #   in Loop: Header=BB24_17 Depth=1
	move	$t7, $t1
	beq	$t1, $a6, .LBB24_16
.LBB24_22:                              # %for.body69.us.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	add.d	$t6, $t6, $t2
	alsl.d	$t6, $t7, $t6, 1
	move	$t8, $t7
	.p2align	4, , 16
.LBB24_23:                              # %for.body69.us
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $t7, 31, 2
	slli.d	$fp, $fp, 6
	add.d	$fp, $fp, $t5
	andi	$s0, $t8, 3
	alsl.d	$fp, $s0, $fp, 2
	ld.h	$fp, $fp, 256
	st.h	$fp, $t6, 0
	addi.d	$t8, $t8, 1
	addi.d	$t6, $t6, 2
	addi.w	$t7, $t7, 1
	bne	$a6, $t8, .LBB24_23
	b	.LBB24_16
.LBB24_24:                              # %if.end
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a4, $a2, 0
	st.w	$zero, $a1, 0
	lu12i.w	$a2, 1
	ori	$a5, $a2, 1792
	ldx.w	$a6, $a4, $a5
	ld.w	$a7, $a3, 148
	sub.w	$a6, $zero, $a6
	slt	$t0, $a6, $a7
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$t1, $a7, $a6
	slti	$a7, $t1, 51
	maskeqz	$t0, $t1, $a7
	ori	$a6, $zero, 51
	masknez	$a7, $a6, $a7
	or	$t0, $t0, $a7
	pcalau12i	$a7, %pc_hi20(QP_SCALE_CR)
	addi.d	$a7, $a7, %pc_lo12(QP_SCALE_CR)
	bltz	$t1, .LBB24_26
# %bb.25:                               # %cond.false.i
	ldx.bu	$t0, $a7, $t0
.LBB24_26:                              # %cond.end.i
	st.w	$t0, $a1, 4
	ldx.w	$a4, $a4, $a5
	ld.w	$a3, $a3, 152
	sub.w	$a4, $zero, $a4
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	slti	$a3, $a4, 51
	maskeqz	$a5, $a4, $a3
	masknez	$a3, $a6, $a3
	or	$a3, $a5, $a3
	bltz	$a4, .LBB24_28
# %bb.27:                               # %cond.false.1.i
	ldx.bu	$a3, $a7, $a3
.LBB24_28:                              # %set_chroma_qp.exit
	st.w	$a3, $a1, 8
	ldptr.w	$a4, $a0, 5924
	addi.w	$a3, $zero, -3
	blt	$a4, $a3, .LBB24_40
# %bb.29:                               # %for.body110.lr.ph
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_30:                              # %for.body110
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 0
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_30
# %bb.31:                               # %for.inc121
	blt	$t0, $a3, .LBB24_40
# %bb.32:                               # %for.body110.lr.ph.1
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_33:                              # %for.body110.1
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 8
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_33
# %bb.34:                               # %for.inc121.1
	blt	$t0, $a3, .LBB24_40
# %bb.35:                               # %for.body110.lr.ph.2
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_36:                              # %for.body110.2
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 16
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_36
# %bb.37:                               # %for.inc121.2
	blt	$t0, $a3, .LBB24_40
# %bb.38:                               # %for.body110.lr.ph.3
	move	$a3, $zero
	ldptr.d	$a4, $a0, 5560
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 16
	ori	$a2, $a2, 1828
	.p2align	4, , 16
.LBB24_39:                              # %for.body110.3
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a7, $a0, 4
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a4, $a7
	ld.d	$a7, $a7, 24
	stx.w	$a6, $a7, $a3
	ldx.w	$a7, $a0, $a2
	addi.w	$a7, $a7, 3
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 4
	blt	$a5, $a7, .LBB24_39
.LBB24_40:                              # %for.end123
	st.w	$zero, $a1, 360
	pcalau12i	$a0, %got_pc_hi20(last_dquant)
	ld.d	$a0, $a0, %got_pc_lo12(last_dquant)
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	st.d	$a2, $a1, 304
	st.w	$zero, $a0, 0
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end24:
	.size	decode_ipcm_mb, .Lfunc_end24-decode_ipcm_mb
                                        # -- End function
	.globl	decode_one_macroblock           # -- Begin function decode_one_macroblock
	.p2align	5
	.type	decode_one_macroblock,@function
decode_one_macroblock:                  # @decode_one_macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -848
	st.d	$ra, $sp, 840                   # 8-byte Folded Spill
	st.d	$fp, $sp, 832                   # 8-byte Folded Spill
	st.d	$s0, $sp, 824                   # 8-byte Folded Spill
	st.d	$s1, $sp, 816                   # 8-byte Folded Spill
	st.d	$s2, $sp, 808                   # 8-byte Folded Spill
	st.d	$s3, $sp, 800                   # 8-byte Folded Spill
	st.d	$s4, $sp, 792                   # 8-byte Folded Spill
	st.d	$s5, $sp, 784                   # 8-byte Folded Spill
	st.d	$s6, $sp, 776                   # 8-byte Folded Spill
	st.d	$s7, $sp, 768                   # 8-byte Folded Spill
	st.d	$s8, $sp, 760                   # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a5, $a0, 4
	ldptr.d	$a0, $a0, 5600
	bstrpick.d	$a2, $a5, 31, 0
	ld.w	$a1, $s3, 44
	ori	$a3, $zero, 408
	mul.d	$a2, $a2, $a3
	ori	$a3, $zero, 3
	add.d	$s7, $a0, $a2
	bne	$a1, $a3, .LBB25_6
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $s7, 40
	addi.w	$a0, $a0, -9
	addi.w	$a2, $zero, -6
	and	$a0, $a0, $a2
	sltu	$s0, $zero, $a0
	ldptr.w	$a4, $s3, 5624
	st.w	$zero, $sp, 628
	st.w	$zero, $sp, 624
	beqz	$a4, .LBB25_9
.LBB25_2:                               # %land.rhs16
	ld.w	$a0, $s7, 356
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 40
	ori	$a2, $zero, 14
	bne	$a0, $a2, .LBB25_10
.LBB25_3:                               # %if.then27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(decode_ipcm_mb)
	jirl	$ra, $ra, 0
.LBB25_4:
	move	$a1, $zero
.LBB25_5:                               # %cleanup
	move	$a0, $a1
	ld.d	$s8, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 808                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 824                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 832                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 840                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 848
	ret
.LBB25_6:                               # %lor.rhs
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB25_8
# %bb.7:                                # %land.rhs
	ld.w	$a0, $s7, 40
	addi.d	$a0, $a0, -12
	sltui	$s0, $a0, 1
	ldptr.w	$a4, $s3, 5624
	st.w	$zero, $sp, 628
	st.w	$zero, $sp, 624
	bnez	$a4, .LBB25_2
	b	.LBB25_9
.LBB25_8:
	move	$s0, $zero
	ldptr.w	$a4, $s3, 5624
	st.w	$zero, $sp, 628
	st.w	$zero, $sp, 624
	bnez	$a4, .LBB25_2
.LBB25_9:
	st.d	$zero, $sp, 504                 # 8-byte Folded Spill
	ld.w	$a0, $s7, 40
	ori	$a2, $zero, 14
	beq	$a0, $a2, .LBB25_3
.LBB25_10:                              # %if.end28
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$s6, $a2, %got_pc_lo12(dec_picture)
	addi.d	$a1, $a1, -3
	ld.d	$a2, $s6, 0
	ld.w	$a3, $s7, 396
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	lu12i.w	$s4, 77
	ori	$a3, $s4, 1484
	add.d	$a6, $a2, $a3
	ld.w	$fp, $a6, 168
	addi.d	$a2, $a0, -10
	sltui	$a3, $a2, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	andi	$t6, $a5, 1
	lu12i.w	$s8, 1
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	st.d	$t6, $sp, 264                   # 8-byte Folded Spill
	beqz	$a5, .LBB25_19
# %bb.11:                               # %if.then30
	pcalau12i	$a5, %got_pc_hi20(Co_located)
	ld.d	$a5, $a5, %got_pc_lo12(Co_located)
	sltui	$a7, $t6, 1
	ld.d	$a5, $a5, 0
	ori	$t0, $s8, 760
	masknez	$t0, $t0, $a7
	ori	$t1, $zero, 3240
	maskeqz	$t1, $t1, $a7
	or	$t0, $t1, $t0
	ori	$t1, $s8, 752
	masknez	$t1, $t1, $a7
	ori	$t2, $zero, 3232
	maskeqz	$t2, $t2, $a7
	or	$t1, $t2, $t1
	ori	$t2, $s8, 736
	masknez	$t2, $t2, $a7
	ori	$t3, $zero, 3216
	maskeqz	$t3, $t3, $a7
	or	$t2, $t3, $t2
	ori	$t3, $s8, 744
	masknez	$t3, $t3, $a7
	ori	$t4, $zero, 3224
	maskeqz	$t4, $t4, $a7
	or	$t3, $t4, $t3
	ori	$t4, $zero, 4
	masknez	$t4, $t4, $a7
	ori	$t5, $zero, 2
	maskeqz	$a7, $t5, $a7
	ld.w	$a6, $a6, 0
	ldx.d	$t3, $a5, $t3
	st.d	$t3, $sp, 256                   # 8-byte Folded Spill
	ldx.d	$t2, $a5, $t2
	st.d	$t2, $sp, 368                   # 8-byte Folded Spill
	ldx.d	$t1, $a5, $t1
	st.d	$t1, $sp, 296                   # 8-byte Folded Spill
	ldx.d	$a5, $a5, $t0
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	or	$a7, $a7, $t4
	srai.d	$a5, $a6, 1
	addi.d	$a5, $a5, -1
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	beqz	$a4, .LBB25_28
# %bb.12:                               # %for.cond95.preheader
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	slli.d	$a5, $a7, 2
	ldx.w	$a6, $a4, $a5
	st.d	$a7, $sp, 352                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $a4, 2
	bnez	$t6, .LBB25_33
# %bb.13:                               # %for.cond99.preheader.us.preheader
	blez	$a6, .LBB25_16
# %bb.14:                               # %for.body103.lr.ph.us
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	move	$a7, $zero
	addi.d	$t0, $zero, -2
	ori	$t1, $s4, 1504
	.p2align	4, , 16
.LBB25_15:                              # %for.body103.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 0
	addi.d	$t3, $t3, -2
	sltui	$t3, $t3, 1
	maskeqz	$t3, $t0, $t3
	stx.w	$t3, $t2, $t1
	ld.w	$t2, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t2, .LBB25_15
.LBB25_16:                              # %for.inc145.us
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a7, $a5, 1
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a4, $a5
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_52
# %bb.17:                               # %for.body103.lr.ph.us.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a6, $a5, %got_pc_lo12(listX)
	move	$a5, $zero
	slli.d	$t0, $a7, 3
	ldx.d	$a6, $a6, $t0
	alsl.d	$a4, $a7, $a4, 2
	addi.d	$a7, $zero, -2
	ori	$t0, $s4, 1504
	.p2align	4, , 16
.LBB25_18:                              # %for.body103.us.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -2
	sltui	$t2, $t2, 1
	maskeqz	$t2, $a7, $t2
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a4, 0
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 8
	blt	$a5, $t1, .LBB25_18
	b	.LBB25_52
.LBB25_19:                              # %if.end40.thread
	pcalau12i	$a5, %got_pc_hi20(Co_located)
	ld.d	$a5, $a5, %got_pc_lo12(Co_located)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	ld.d	$a7, $a5, 1608
	st.d	$a7, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1600
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1616
	st.d	$a7, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a5, $a5, 1624
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	addi.w	$a5, $a6, -1
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	beqz	$a4, .LBB25_27
# %bb.20:                               # %for.cond150.preheader
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	ld.w	$a5, $a4, 0
	blez	$a5, .LBB25_23
# %bb.21:                               # %for.body158.lr.ph
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a4, 0
	move	$a7, $zero
	ori	$t0, $s4, 1504
	.p2align	4, , 16
.LBB25_22:                              # %for.body158
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	stx.w	$zero, $t1, $t0
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 8
	blt	$a7, $a6, .LBB25_22
.LBB25_23:                              # %for.inc167
	ld.w	$a5, $a4, 4
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_26
# %bb.24:                               # %for.body158.lr.ph.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 8
	ld.w	$a4, $a4, 4
	move	$a6, $zero
	ori	$a7, $s4, 1504
	.p2align	4, , 16
.LBB25_25:                              # %for.body158.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	stx.w	$zero, $t0, $a7
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $a4, .LBB25_25
.LBB25_26:
	st.d	$zero, $sp, 352                 # 8-byte Folded Spill
	b	.LBB25_52
.LBB25_27:
	move	$a7, $zero
.LBB25_28:                              # %for.cond.preheader
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	st.d	$a7, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a5, $a7, 2
	ldx.w	$a6, $a4, $a5
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB25_43
# %bb.29:                               # %for.body50.lr.ph
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$t1, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a7, $t1, 3
	ldptr.w	$t0, $s3, 5584
	ldx.d	$a6, $a6, $a7
	alsl.d	$a7, $t1, $a4, 2
	beq	$t0, $a5, .LBB25_39
# %bb.30:                               # %for.body50.lr.ph
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB25_41
# %bb.31:                               # %for.body50.us1634.preheader
	move	$t0, $zero
	ori	$t1, $s4, 1504
	.p2align	4, , 16
.LBB25_32:                              # %for.body50.us1634
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 0
	addi.d	$t3, $t3, -2
	sltu	$t3, $zero, $t3
	slli.d	$t3, $t3, 1
	stx.w	$t3, $t2, $t1
	ld.w	$t2, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB25_32
	b	.LBB25_43
.LBB25_33:                              # %for.cond99.preheader.preheader
	blez	$a6, .LBB25_36
# %bb.34:                               # %for.body103.lr.ph
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	move	$a7, $zero
	ori	$t0, $s4, 1504
	.p2align	4, , 16
.LBB25_35:                              # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	slli.d	$t2, $t2, 1
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t1, .LBB25_35
.LBB25_36:                              # %for.inc145
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a7, $a5, 1
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a4, $a5
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_52
# %bb.37:                               # %for.body103.lr.ph.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	slli.d	$a6, $a7, 3
	ldx.d	$a5, $a5, $a6
	move	$a6, $zero
	alsl.d	$a4, $a7, $a4, 2
	ori	$a7, $s4, 1504
	.p2align	4, , 16
.LBB25_38:                              # %for.body103.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	ld.w	$t1, $t0, 0
	addi.d	$t1, $t1, -1
	sltui	$t1, $t1, 1
	slli.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_38
	b	.LBB25_52
.LBB25_39:                              # %for.body50.us.preheader
	move	$t0, $zero
	addi.d	$t1, $zero, -2
	ori	$t2, $s4, 1504
	.p2align	4, , 16
.LBB25_40:                              # %for.body50.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a6, 0
	ld.w	$t4, $t3, 0
	addi.d	$t4, $t4, -1
	sltui	$t4, $t4, 1
	masknez	$t4, $t1, $t4
	stx.w	$t4, $t3, $t2
	ld.w	$t3, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t3, .LBB25_40
	b	.LBB25_43
.LBB25_41:                              # %for.body50.preheader
	move	$t0, $zero
	ori	$t1, $s4, 1504
	.p2align	4, , 16
.LBB25_42:                              # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	stx.w	$zero, $t2, $t1
	ld.w	$t2, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB25_42
.LBB25_43:                              # %for.inc88
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	blt	$a7, $a5, .LBB25_52
# %bb.44:                               # %for.body50.lr.ph.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	slli.d	$t0, $a6, 3
	ldptr.w	$a7, $s3, 5584
	ldx.d	$a5, $a5, $t0
	ori	$t0, $zero, 1
	alsl.d	$a4, $a6, $a4, 2
	beq	$a7, $t0, .LBB25_48
# %bb.45:                               # %for.body50.lr.ph.1
	ori	$a6, $zero, 2
	bne	$a7, $a6, .LBB25_50
# %bb.46:                               # %for.body50.us1634.1.preheader
	move	$a6, $zero
	ori	$a7, $s4, 1504
	.p2align	4, , 16
.LBB25_47:                              # %for.body50.us1634.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	ld.w	$t1, $t0, 0
	addi.d	$t1, $t1, -2
	sltu	$t1, $zero, $t1
	slli.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_47
	b	.LBB25_52
.LBB25_48:                              # %for.body50.us.1.preheader
	move	$a6, $zero
	addi.d	$a7, $zero, -2
	ori	$t0, $s4, 1504
	.p2align	4, , 16
.LBB25_49:                              # %for.body50.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	masknez	$t2, $a7, $t2
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t1, .LBB25_49
	b	.LBB25_52
.LBB25_50:                              # %for.body50.1.preheader
	move	$a6, $zero
	ori	$a7, $s4, 1504
	.p2align	4, , 16
.LBB25_51:                              # %for.body50.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	stx.w	$zero, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_51
.LBB25_52:                              # %if.end171
	sltui	$s1, $a1, 1
	ori	$a1, $zero, 10
	or	$s2, $a3, $a2
	bne	$a0, $a1, .LBB25_54
# %bb.53:                               # %if.then176
	ld.w	$a1, $s7, 324
	move	$a0, $s3
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
.LBB25_54:                              # %if.end177
	addi.w	$a2, $fp, -1
	ld.w	$a0, $s3, 44
	maskeqz	$fp, $s2, $s1
	masknez	$s1, $s0, $s1
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB25_62
# %bb.55:                               # %land.lhs.true180
	ld.w	$a0, $s3, 40
	beqz	$a0, .LBB25_62
# %bb.56:                               # %land.lhs.true182
	ld.w	$a0, $s7, 40
	beqz	$a0, .LBB25_312
# %bb.57:                               # %land.lhs.true182
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB25_62
# %bb.58:                               # %land.lhs.true191
	ld.bu	$a0, $s7, 328
	beqz	$a0, .LBB25_312
# %bb.59:                               # %land.lhs.true194
	ld.bu	$a0, $s7, 329
	beqz	$a0, .LBB25_312
# %bb.60:                               # %land.lhs.true199
	ld.bu	$a0, $s7, 330
	beqz	$a0, .LBB25_312
# %bb.61:                               # %land.lhs.true204
	ld.bu	$a0, $s7, 331
	beqz	$a0, .LBB25_312
.LBB25_62:
	st.d	$zero, $sp, 344                 # 8-byte Folded Spill
	st.d	$zero, $sp, 336                 # 8-byte Folded Spill
	st.d	$zero, $sp, 328                 # 8-byte Folded Spill
	st.d	$zero, $sp, 312                 # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
.LBB25_63:                              # %if.end1208
	move	$s0, $zero
	or	$a0, $fp, $s1
	move	$a5, $zero
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 328
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 332
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a2, $a0, %got_pc_lo12(listX)
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	addi.d	$a3, $s3, 104
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$a3, $a3, $a2, 3
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 7
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 616
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a2, 3
	move	$a2, $zero
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	addi.d	$a0, $s3, 1384
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a4, $a0, 4095
	ori	$a0, $s4, 1528
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ori	$a0, $s8, 1528
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$a4, $sp, 440                   # 8-byte Folded Spill
	st.d	$a4, $sp, 496                   # 8-byte Folded Spill
	st.d	$a4, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB25_64:                              # %for.body1212
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_69 Depth 2
                                        #       Child Loop BB25_136 Depth 3
                                        #       Child Loop BB25_124 Depth 3
	bstrpick.d	$a0, $s0, 62, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a5
	slli.d	$s5, $a0, 3
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	andi	$a0, $a2, 1
	slli.d	$s7, $a0, 3
	pcalau12i	$a0, %pc_hi20(active_pps)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ori	$a0, $zero, 13
	st.d	$a5, $sp, 488                   # 8-byte Folded Spill
	st.d	$s0, $sp, 480                   # 8-byte Folded Spill
	bne	$a1, $a0, .LBB25_66
# %bb.65:                               # %if.then1219
                                        #   in Loop: Header=BB25_64 Depth=1
	slli.d	$a0, $a5, 3
	andi	$s1, $a0, 8
	slli.d	$a0, $a5, 2
	andi	$s2, $a0, 8
	addi.w	$a1, $a5, 0
	move	$a0, $s3
	move	$fp, $a4
	pcaddu18i	$ra, %call36(intrapred8x8)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s3, 80
	alsl.d	$a1, $a1, $a0, 3
	ld.w	$a0, $s3, 84
	slli.d	$a2, $s5, 6
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a2
	slli.d	$a2, $s5, 3
	ldx.d	$a4, $a1, $a2
	slli.d	$a2, $s7, 2
	xvldx	$xr0, $a3, $a2
	alsl.d	$a3, $s7, $a4, 1
	slli.d	$a0, $a0, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 1
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 2
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 3
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $s0, 4
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $s0, 5
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $s0, 6
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s7, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $s0, 7
	slli.d	$a4, $a3, 6
	add.d	$a4, $a5, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	xvldx	$xr0, $a4, $a2
	move	$a4, $fp
	alsl.d	$a1, $s7, $a1, 1
	b	.LBB25_217
	.p2align	4, , 16
.LBB25_66:                              #   in Loop: Header=BB25_64 Depth=1
	move	$a5, $s0
	ori	$s0, $zero, 11
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s5, $sp, 536                   # 8-byte Folded Spill
	b	.LBB25_69
.LBB25_67:                              #   in Loop: Header=BB25_69 Depth=2
	move	$s1, $t8
	move	$s6, $t7
	move	$s2, $a6
	move	$s7, $t6
	move	$s8, $t1
	move	$s4, $ra
	move	$s5, $a5
	move	$fp, $a4
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_72
	.p2align	4, , 16
.LBB25_68:                              # %for.inc2830
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.d	$a5, $s5, 1
	move	$a4, $fp
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 536                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB25_215
.LBB25_69:                              # %for.body1259
                                        #   Parent Loop BB25_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_136 Depth 3
                                        #       Child Loop BB25_124 Depth 3
	pcalau12i	$a0, %pc_hi20(decode_one_macroblock.decode_block_scan)
	addi.d	$a0, $a0, %pc_lo12(decode_one_macroblock.decode_block_scan)
	ldx.bu	$a2, $a0, $a5
	andi	$a6, $a2, 3
	bstrpick.d	$t6, $a2, 3, 2
	ld.w	$a3, $s3, 92
	ld.w	$a1, $s3, 76
	bstrpick.d	$a0, $a2, 1, 1
	srli.d	$a2, $a2, 3
	bstrins.d	$a0, $a2, 1, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$fp, $a2, $a0
	slli.d	$t7, $a6, 2
	add.w	$ra, $a6, $a3
	slli.d	$t8, $t6, 2
	add.w	$t1, $t6, $a1
	bne	$fp, $s0, .LBB25_75
# %bb.70:                               # %if.then1289
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s2, $a6
	move	$s7, $t6
	move	$s5, $a5
	move	$fp, $a4
	move	$s1, $t8
	addi.w	$a2, $t8, 0
	move	$a0, $s3
	move	$s6, $t7
	move	$a1, $t7
	move	$s4, $ra
	move	$a3, $ra
	move	$s8, $t1
	move	$a4, $t1
	pcaddu18i	$ra, %call36(intrapred)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB25_5
# %bb.71:                               # %if.else2783
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_68
.LBB25_72:                              # %if.then2785
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 44
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB25_74
# %bb.73:                               # %land.lhs.true2789
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_85
.LBB25_74:                              # %if.else2794
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.w	$a2, $s1, 0
	move	$a0, $s3
	move	$a1, $s6
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	b	.LBB25_210
	.p2align	4, , 16
.LBB25_75:                              # %if.else1295
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 40
	ori	$a2, $a2, 4
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB25_77
# %bb.76:                               # %if.end2767
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_207
	b	.LBB25_67
.LBB25_77:                              # %if.then1303
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$a0, $a2, $a0
	andi	$a2, $a0, 255
	ori	$a3, $zero, 2
	st.d	$a6, $sp, 520                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB25_82
# %bb.78:                               # %if.else1473
                                        #   in Loop: Header=BB25_69 Depth=2
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	lu12i.w	$t0, 77
	ori	$s4, $t0, 1560
	add.d	$a0, $a2, $s4
	ld.d	$a3, $a0, 24
	ld.d	$s7, $a3, 0
	ld.d	$t2, $a3, 8
	st.d	$t1, $sp, 448                   # 8-byte Folded Spill
	st.d	$t6, $sp, 472                   # 8-byte Folded Spill
	beqz	$fp, .LBB25_87
# %bb.79:                               # %if.end2144.thread
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.b	$s1, $a1, $ra
	ldx.b	$a0, $a0, $ra
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_151
.LBB25_80:                              # %if.else2324
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 76
	slli.d	$a0, $a0, 3
	slli.d	$a1, $t6, 4
	lu12i.w	$s8, 1
	move	$s2, $t8
	move	$s5, $t7
	bnez	$a2, .LBB25_114
# %bb.81:                               # %if.then2328
                                        #   in Loop: Header=BB25_69 Depth=2
	add.d	$a0, $a0, $a1
	b	.LBB25_152
.LBB25_82:                              # %if.then1306
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	beqz	$a2, .LBB25_86
# %bb.83:                               # %if.else1344
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_103
# %bb.84:                               # %if.then1348
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s2, $t8
	move	$s6, $t7
	move	$s5, $a5
	move	$s0, $a4
	move	$s7, $t6
	slli.d	$a2, $t6, 4
	alsl.w	$a3, $a1, $a2, 3
	b	.LBB25_104
.LBB25_85:                              # %if.then2793
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.w	$a2, $s1, 0
	move	$a0, $s3
	move	$a1, $s6
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
	b	.LBB25_210
.LBB25_86:                              # %if.then1334
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s2, $t8
	move	$s6, $t7
	move	$s7, $t6
	move	$s5, $a5
	move	$s0, $a4
	slli.d	$a3, $t1, 4
	b	.LBB25_104
.LBB25_87:                              # %if.else1495
                                        #   in Loop: Header=BB25_69 Depth=2
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	ld.w	$a4, $s3, 40
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ldx.w	$a3, $s3, $a3
	beqz	$a4, .LBB25_115
# %bb.88:                               # %if.then1502
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB25_126
# %bb.89:                               # %land.lhs.true1505
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 356
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	beqz	$a2, .LBB25_93
# %bb.90:                               # %cond.true1508
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.bu	$a2, $s3, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB25_92
# %bb.91:                               # %cond.true1512
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_92:                              # %cond.false1516
                                        #   in Loop: Header=BB25_69 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_93:                              # %cond.end1523
                                        #   in Loop: Header=BB25_69 Depth=2
	ext.w.b	$a2, $a6
	add.w	$a1, $a1, $t6
	bltz	$a2, .LBB25_127
.LBB25_94:                              # %if.then1529
                                        #   in Loop: Header=BB25_69 Depth=2
	andi	$a3, $a6, 255
	bnez	$a3, .LBB25_97
# %bb.95:                               # %land.lhs.true1531
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a3, $a1, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	ldx.bu	$a3, $a3, $ra
	bnez	$a3, .LBB25_97
# %bb.96:                               # %land.lhs.true1537
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 0
	ori	$a4, $t0, 1452
	ldx.w	$a3, $a3, $a4
	beqz	$a3, .LBB25_213
.LBB25_97:                              # %if.else1564
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a3, $t1, 3
	ldx.d	$a4, $s7, $a3
	slli.d	$a5, $ra, 3
	ldx.d	$a4, $a4, $a5
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	st.h	$a5, $a4, 0
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	st.h	$a5, $a4, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$a6, $a0, $ra
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bltz	$a0, .LBB25_128
.LBB25_98:                              # %if.then1613
                                        #   in Loop: Header=BB25_69 Depth=2
	andi	$a0, $a3, 255
	bnez	$a0, .LBB25_101
# %bb.99:                               # %land.lhs.true1617
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB25_101
# %bb.100:                              # %land.lhs.true1623
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $t0, 1452
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_214
.LBB25_101:                             # %if.else1651
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a7, 0
	ori	$a1, $t0, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	st.h	$a2, $a1, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	move	$a1, $a3
.LBB25_102:                             # %if.end1717.sink.split
                                        #   in Loop: Header=BB25_69 Depth=2
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a0, $a0, $a2
	stx.b	$a1, $a0, $ra
	b	.LBB25_129
.LBB25_103:                             # %if.else1360
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s6, $t7
	move	$s7, $t6
	move	$s5, $a5
	move	$s0, $a4
	move	$s2, $t8
	alsl.d	$a1, $a1, $t8, 1
	addi.d	$a2, $zero, -32
	alsl.w	$a3, $a1, $a2, 2
.LBB25_104:                             # %if.end1374
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1560
	ldx.d	$a4, $a1, $a2
	add.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	slli.d	$fp, $a0, 3
	ldx.d	$a2, $a4, $fp
	ldx.d	$a1, $a1, $fp
	move	$s8, $t1
	slli.d	$a4, $t1, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a1, $a1, $a4
	ldx.b	$a4, $a2, $ra
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	st.d	$a4, $sp, 512                   # 8-byte Folded Spill
	andi	$a4, $a4, 255
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.h	$a2, $a1, 0
	ld.h	$a5, $a1, 2
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	move	$s4, $ra
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a3, $a5
	ext.w.b	$s1, $a4
	addi.d	$a5, $sp, 696
	move	$a0, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s3, 5800
	move	$t8, $s2
	addi.w	$a6, $s2, 0
	move	$t7, $s6
	slli.d	$a0, $s6, 1
	beqz	$a1, .LBB25_109
# %bb.105:                              # %if.then1378
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a2, $a1, 1120
	beqz	$a2, .LBB25_110
# %bb.106:                              # %land.lhs.true1380
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a2, $s3, 44
	beqz	$a2, .LBB25_108
# %bb.107:                              # %land.lhs.true1380
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB25_110
.LBB25_108:                             # %land.lhs.true1395
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	move	$ra, $s4
	move	$t6, $s7
	bnez	$a2, .LBB25_112
	b	.LBB25_113
.LBB25_109:                             # %for.body1448.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.h	$a1, $sp, 696
	slli.d	$a2, $a6, 5
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.h	$a3, $sp, 700
	stx.h	$a1, $a2, $a0
	addi.d	$a1, $a0, 2
	ld.h	$a4, $sp, 704
	stx.h	$a3, $a2, $a1
	ld.h	$a3, $sp, 708
	addi.d	$a5, $a0, 4
	stx.h	$a4, $a2, $a5
	addi.d	$a4, $a0, 6
	stx.h	$a3, $a2, $a4
	addi.d	$a3, $a2, 32
	ld.h	$a6, $sp, 712
	ld.h	$a7, $sp, 716
	ld.h	$t0, $sp, 720
	ld.h	$t1, $sp, 724
	stx.h	$a6, $a3, $a0
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a2, 64
	ld.h	$a6, $sp, 728
	ld.h	$a7, $sp, 732
	ld.h	$t0, $sp, 736
	ld.h	$t1, $sp, 740
	stx.h	$a6, $a3, $a0
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a2, $a2, 96
	ld.h	$a3, $sp, 744
	ld.h	$a6, $sp, 748
	ld.h	$a7, $sp, 752
	ld.h	$t0, $sp, 756
	stx.h	$a3, $a2, $a0
	stx.h	$a6, $a2, $a1
	stx.h	$a7, $a2, $a5
	stx.h	$t0, $a2, $a4
	move	$a4, $s0
	ori	$s0, $zero, 11
	move	$a5, $s5
	move	$ra, $s4
	move	$t1, $s8
	move	$t6, $s7
	b	.LBB25_206
.LBB25_110:                             # %lor.lhs.false1388
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a2, $a1, 1124
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	move	$ra, $s4
	move	$t6, $s7
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB25_113
# %bb.111:                              # %land.lhs.true1391
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a1, $s3, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	and	$a2, $a1, $a2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	beqz	$a2, .LBB25_113
.LBB25_112:                             # %if.then1397
                                        #   in Loop: Header=BB25_69 Depth=2
	srai.d	$a1, $s1, 1
.LBB25_113:                             # %if.end1401
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.d	$a2, $s3, 5768
	ldptr.d	$a3, $s3, 5776
	ldx.d	$a2, $a2, $fp
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $fp
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	sra.w	$a2, $s1, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a3, $a2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1664
	ldx.wu	$a2, $s3, $a2
	ld.w	$a4, $a1, 0
	ld.w	$a3, $a3, 0
	ldptr.w	$a1, $s3, 5900
	addi.d	$a5, $a2, -1
	ld.w	$a7, $sp, 696
	ori	$t0, $zero, 1
	sll.w	$a5, $t0, $a5
	slli.d	$a6, $a6, 5
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a6, $t0, $a6
	mul.d	$a7, $a7, $a4
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a2
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a1
	maskeqz	$a7, $a7, $t0
	ld.w	$t1, $sp, 700
	masknez	$t0, $a1, $t0
	or	$a7, $a7, $t0
	stx.h	$a7, $a6, $a0
	mul.d	$a7, $t1, $a4
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a2
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a1
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a1, $t0
	ld.w	$t1, $sp, 704
	or	$t0, $a7, $t0
	addi.d	$a7, $a0, 2
	stx.h	$t0, $a6, $a7
	mul.d	$t0, $t1, $a4
	add.d	$t0, $a5, $t0
	sra.w	$t0, $t0, $a2
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a1, $t1
	ld.w	$t2, $sp, 708
	or	$t1, $t0, $t1
	addi.d	$t0, $a0, 4
	stx.h	$t1, $a6, $t0
	mul.d	$t1, $t2, $a4
	add.d	$t1, $a5, $t1
	sra.w	$t1, $t1, $a2
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a1, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 712
	addi.d	$t1, $a0, 6
	stx.h	$t2, $a6, $t1
	addi.d	$t2, $a6, 32
	mul.d	$t3, $t3, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 716
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 720
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 724
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a1, $t4
	ld.w	$t5, $sp, 728
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a6, 64
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 732
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 736
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 740
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a1, $t4
	ld.w	$t5, $sp, 744
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$a6, $a6, 96
	mul.d	$t2, $t5, $a4
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a2
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a1
	maskeqz	$t2, $t2, $t3
	ld.w	$t4, $sp, 748
	masknez	$t3, $a1, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a6, $a0
	mul.d	$a0, $t4, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a1
	maskeqz	$a0, $a0, $t2
	ld.w	$t3, $sp, 752
	masknez	$t2, $a1, $t2
	or	$a0, $a0, $t2
	stx.h	$a0, $a6, $a7
	mul.d	$a0, $t3, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a1
	maskeqz	$a0, $a0, $a7
	ld.w	$t2, $sp, 756
	masknez	$a7, $a1, $a7
	or	$a0, $a0, $a7
	stx.h	$a0, $a6, $t0
	mul.d	$a0, $t2, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	stx.h	$a0, $a6, $t1
	move	$a4, $s0
	ori	$s0, $zero, 11
	move	$a5, $s5
	move	$t1, $s8
	b	.LBB25_206
.LBB25_114:                             # %if.else2351
                                        #   in Loop: Header=BB25_69 Depth=2
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
	b	.LBB25_152
.LBB25_115:                             # %if.else1784
                                        #   in Loop: Header=BB25_69 Depth=2
	beqz	$a3, .LBB25_120
# %bb.116:                              # %land.lhs.true1788
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 356
	beqz	$a3, .LBB25_120
# %bb.117:                              # %cond.true1791
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.bu	$a3, $s3, 4
	andi	$a3, $a3, 1
	beqz	$a3, .LBB25_119
# %bb.118:                              # %cond.true1795
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_119:                             # %cond.false1799
                                        #   in Loop: Header=BB25_69 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_120:                             # %cond.end1806
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a3, $a4, 0
	add.w	$a1, $a1, $t6
	slli.d	$s5, $a1, 3
	ldx.d	$a1, $a3, $s5
	ldx.bu	$a1, $a1, $ra
	addi.d	$a1, $a1, -255
	sltui	$a3, $a1, 1
	slli.d	$s6, $a3, 3
	ldx.d	$a1, $a4, $s6
	ldx.d	$a1, $a1, $s5
	ldx.bu	$a1, $a1, $ra
	ori	$a4, $zero, 255
	beq	$a1, $a4, .LBB25_132
# %bb.121:                              # %for.cond1866.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.w	$a0, $s3, 5640
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slt	$a4, $a0, $a1
	masknez	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a4
	or	$a1, $a0, $a1
	slli.d	$s1, $ra, 3
	blt	$a1, $a5, .LBB25_133
# %bb.122:                              # %for.body1873.lr.ph
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.w	$a0, $s3, 5584
	sltu	$a0, $zero, $a0
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	or	$a0, $a0, $a4
	andi	$a0, $a0, 1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 3
	beqz	$a0, .LBB25_135
# %bb.123:                              # %for.body1873.lr.ph.split.us
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$a0, $zero
	ld.d	$a3, $a3, 0
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 8
	ld.w	$a6, $s3, 12
	ldx.d	$a3, $a3, $s5
	or	$a4, $a5, $a4
	add.d	$a4, $a2, $a4
	ori	$a2, $zero, 1584
	mul.d	$a5, $a6, $a2
	ldx.d	$a2, $a3, $s1
	add.d	$a3, $a4, $a5
	addi.d	$a3, $a3, 24
	bstrpick.d	$a1, $a1, 31, 0
	.p2align	4, , 16
.LBB25_124:                             # %for.body1873.us
                                        #   Parent Loop BB25_64 Depth=1
                                        #     Parent Loop BB25_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB25_140
# %bb.125:                              # %for.inc1928.us
                                        #   in Loop: Header=BB25_124 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB25_124
	b	.LBB25_139
.LBB25_126:                             #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ext.w.b	$a2, $a6
	add.w	$a1, $a1, $t6
	bgez	$a2, .LBB25_94
.LBB25_127:                             # %if.else1588
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	slli.d	$a3, $t1, 3
	ldx.d	$a0, $a0, $a3
	ori	$a4, $zero, 255
	stx.b	$a4, $a0, $ra
	ld.d	$a0, $a7, 0
	ori	$a4, $t0, 1584
	ldx.d	$a0, $a0, $a4
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $ra, 3
	ldx.d	$a0, $a0, $a3
	st.w	$zero, $a0, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_98
.LBB25_128:                             # %if.end1696
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $a7, 0
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 24
	ld.d	$a3, $a0, 8
	slli.d	$a0, $t1, 3
	ldx.d	$a3, $a3, $a0
	slli.d	$a4, $ra, 3
	ldx.d	$a3, $a3, $a4
	st.w	$zero, $a3, 0
	ldx.d	$a1, $a1, $s4
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a0
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 255
	stx.b	$a4, $a1, $ra
	bge	$a3, $a2, .LBB25_134
.LBB25_129:                             # %if.end1717
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a7, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $a0, 0
	slli.d	$a2, $t1, 3
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.bu	$a2, $a1, $ra
	ldx.bu	$a0, $a0, $ra
	addi.d	$a1, $a2, -255
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	ext.w.b	$a3, $a2
	ori	$a2, $zero, 255
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB25_131
# %bb.130:                              # %if.else1770
                                        #   in Loop: Header=BB25_69 Depth=2
	ext.w.b	$a0, $a0
	ori	$a2, $zero, 2
	sub.w	$a1, $a2, $a1
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	b	.LBB25_145
.LBB25_131:                             #   in Loop: Header=BB25_69 Depth=2
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 360                 # 8-byte Folded Spill
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	b	.LBB25_145
.LBB25_132:                             # %for.cond1830.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a1, $t1, 3
	ldx.d	$a2, $s7, $a1
	ldx.d	$a3, $t2, $a1
	slli.d	$a4, $ra, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a3, $a3, $a4
	st.h	$zero, $a2, 0
	st.h	$zero, $a3, 0
	st.h	$zero, $a2, 2
	st.h	$zero, $a3, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a1
	stx.b	$zero, $a0, $ra
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a7, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 512                 # 8-byte Folded Spill
	stx.b	$zero, $a0, $ra
	b	.LBB25_145
.LBB25_133:                             #   in Loop: Header=BB25_69 Depth=2
	move	$a0, $zero
	b	.LBB25_140
.LBB25_134:                             # %if.then1704
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $a7, 0
	ldx.d	$a1, $a1, $s4
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a1, $a0
	stx.b	$zero, $a0, $ra
	ld.d	$a0, $a7, 0
	move	$a1, $zero
	b	.LBB25_102
.LBB25_135:                             # %for.body1873.lr.ph.split
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a3, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldx.d	$a3, $a0, $s1
	move	$a0, $zero
	bstrpick.d	$a1, $a1, 31, 0
	.p2align	4, , 16
.LBB25_136:                             # %for.body1873
                                        #   Parent Loop BB25_64 Depth=1
                                        #     Parent Loop BB25_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 8
	slli.w	$a5, $a5, 1
	beq	$a3, $a5, .LBB25_140
# %bb.137:                              # %lor.lhs.false1893
                                        #   in Loop: Header=BB25_136 Depth=3
	ld.w	$a4, $a4, 12
	slli.w	$a4, $a4, 1
	beq	$a3, $a4, .LBB25_140
# %bb.138:                              # %for.inc1928
                                        #   in Loop: Header=BB25_136 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB25_136
.LBB25_139:                             # %if.then1933
                                        #   in Loop: Header=BB25_69 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	st.d	$ra, $sp, 512                   # 8-byte Folded Spill
	move	$s0, $t1
	move	$s2, $t7
	st.d	$t8, $sp, 496                   # 8-byte Folded Spill
	move	$s8, $t2
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$t2, $s8
	ld.d	$t8, $sp, 496                   # 8-byte Folded Reload
	move	$t7, $s2
	ld.d	$t6, $sp, 472                   # 8-byte Folded Reload
	move	$t1, $s0
	ld.d	$ra, $sp, 512                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
.LBB25_140:                             # %if.end1934
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB25_142
# %bb.141:                              # %if.end1934.if.then1951_crit_edge
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	b	.LBB25_143
.LBB25_142:                             # %lor.lhs.false1943
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	lu12i.w	$a4, 77
	ori	$a3, $a4, 1452
	ldx.w	$a3, $a1, $a3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	beqz	$a3, .LBB25_212
.LBB25_143:                             # %if.then1951
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s6
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1584
	ldx.d	$a3, $a1, $a3
	ldx.d	$a2, $a2, $s5
	ld.d	$a4, $a3, 0
	ldx.d	$a2, $a2, $s1
	slli.d	$a5, $t1, 3
	ldx.d	$a4, $a4, $a5
	ld.h	$a6, $a2, 0
	ldx.d	$a4, $a4, $s1
	st.h	$a6, $a4, 0
	ld.h	$a2, $a2, 2
	st.h	$a2, $a4, 2
	ld.d	$a2, $a3, 8
	ldx.d	$a2, $a2, $a5
	ldx.d	$a2, $a2, $s1
	move	$a3, $zero
	st.h	$zero, $a2, 0
.LBB25_144:                             # %if.end2083
                                        #   in Loop: Header=BB25_69 Depth=2
	st.h	$a3, $a2, 2
	ldx.d	$a1, $a1, $s4
	ld.d	$a1, $a1, 0
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	stx.b	$a0, $a1, $ra
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a7, 0
	ldx.d	$a1, $a1, $s4
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a2
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 360                 # 8-byte Folded Spill
	ext.w.b	$a0, $a0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	stx.b	$zero, $a1, $ra
.LBB25_145:                             # %if.end2144
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $a7, 0
	ldx.d	$a2, $a1, $s4
	ld.w	$a0, $s3, 12
	ld.d	$a3, $a2, 0
	add.d	$a4, $a1, $s4
	ori	$a5, $zero, 1584
	mul.d	$a5, $a0, $a5
	slli.d	$s5, $t1, 3
	ldx.d	$a0, $a3, $s5
	add.d	$a1, $a1, $a5
	ld.d	$a3, $a4, 8
	addi.d	$a4, $a1, 24
	ldx.b	$a1, $a0, $ra
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	ori	$a7, $zero, 264
	mul.d	$a5, $a5, $a7
	ld.d	$a6, $a3, 0
	add.d	$a5, $a4, $a5
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a5, $a1
	ldx.d	$a5, $a6, $s5
	slli.d	$s6, $ra, 3
	stx.d	$a1, $a5, $s6
	ld.d	$a1, $a2, 8
	ldx.d	$a1, $a1, $s5
	ldx.b	$a2, $a1, $ra
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	mul.d	$a5, $a5, $a7
	ld.d	$a3, $a3, 8
	add.d	$a4, $a4, $a5
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ldx.d	$a3, $a3, $s5
	stx.d	$a2, $a3, $s6
	ld.w	$a2, $s3, 40
	beqz	$a2, .LBB25_150
# %bb.146:                              # %if.then2150
                                        #   in Loop: Header=BB25_69 Depth=2
	ldx.b	$a0, $a0, $ra
	bltz	$a0, .LBB25_169
# %bb.147:                              # %if.then2160
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_166
# %bb.148:                              # %if.else2181
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 76
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_167
# %bb.149:                              # %if.then2185
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s1, $t2
	move	$s8, $t8
	move	$s2, $t7
	move	$s0, $t1
	add.d	$a0, $a0, $a1
	b	.LBB25_168
.LBB25_150:                             #   in Loop: Header=BB25_69 Depth=2
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_80
.LBB25_151:                             # %if.then2305
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s2, $t8
	move	$s5, $t7
	slli.d	$a0, $t1, 4
	lu12i.w	$s8, 1
.LBB25_152:                             # %if.end2388
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a1, $t1, 3
	ldx.d	$a2, $s7, $a1
	slli.d	$a3, $ra, 3
	ldx.d	$a4, $a2, $a3
	ldx.d	$a1, $t2, $a1
	ld.h	$a2, $a4, 0
	ldx.d	$a1, $a1, $a3
	alsl.w	$a2, $ra, $a2, 4
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a4, 2
	ld.h	$a5, $a1, 2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s4, $ra
	alsl.w	$s0, $ra, $a3, 4
	add.w	$a3, $a0, $a4
	add.w	$s6, $a0, $a5
	addi.d	$a5, $sp, 696
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$a5, $sp, 632
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB25_159
# %bb.153:                              # %if.else2608.thread
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.w	$a0, $s3, 5800
	ori	$s0, $zero, 11
	move	$t7, $s5
	move	$t8, $s2
	beqz	$a0, .LBB25_165
# %bb.154:                              # %if.then2611.thread
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	move	$ra, $s4
.LBB25_155:                             # %if.end2626
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a2, $a2, 1120
	beqz	$a2, .LBB25_160
# %bb.156:                              # %land.lhs.true2629
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a2, $s3, 44
	beqz	$a2, .LBB25_158
# %bb.157:                              # %land.lhs.true2629
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB25_160
.LBB25_158:                             # %land.lhs.true2645
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	bnez	$a1, .LBB25_162
	b	.LBB25_163
.LBB25_159:                             #   in Loop: Header=BB25_69 Depth=2
	move	$t6, $s1
	ori	$s0, $zero, 11
	move	$t7, $s5
	move	$t8, $s2
	ld.w	$a3, $s3, 40
	bnez	$a3, .LBB25_177
	b	.LBB25_183
.LBB25_160:                             # %lor.lhs.false2637
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_163
# %bb.161:                              # %land.lhs.true2641
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a1, $s3, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	beqz	$a1, .LBB25_163
.LBB25_162:                             # %if.then2647
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	srai.d	$a3, $a1, 1
	ext.w.h	$a1, $s1
	srai.d	$fp, $a1, 1
	b	.LBB25_164
.LBB25_163:                             #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	move	$fp, $s1
.LBB25_164:                             # %if.end2654
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.d	$a1, $s3, 5784
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ldptr.d	$a4, $s3, 5776
	ext.w.h	$a5, $fp
	addi.d	$a6, $a0, 8
	ldx.d	$a1, $a1, $a6
	ldx.d	$a0, $a4, $a0
	ldx.d	$a4, $a4, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a5
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a0, 0
	ld.w	$a3, $a3, 0
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a1, 0
	add.d	$a2, $a4, $a3
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1664
	ldx.wu	$a5, $s3, $a3
	addi.w	$a2, $a2, 1
	srai.d	$a3, $a2, 1
	ldptr.w	$a2, $s3, 5900
	addi.d	$a4, $a5, 1
	ori	$a6, $zero, 1
	sll.w	$a5, $a6, $a5
	ld.w	$a7, $sp, 696
	ld.w	$t0, $sp, 632
	addi.w	$t1, $t8, 0
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a6, $t7, $a6, 1
	mul.d	$a7, $a7, $a0
	mul.d	$t0, $t0, $a1
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	or	$t0, $a7, $t0
	ld.w	$t2, $sp, 712
	ld.w	$t3, $sp, 648
	slli.d	$a7, $t1, 5
	stx.h	$t0, $a6, $a7
	mul.d	$t0, $t2, $a0
	mul.d	$t1, $t3, $a1
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a5
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a2, $t1
	or	$t1, $t0, $t1
	ld.w	$t2, $sp, 728
	ld.w	$t3, $sp, 664
	addi.d	$t0, $a7, 32
	stx.h	$t1, $a6, $t0
	mul.d	$t1, $t2, $a0
	mul.d	$t2, $t3, $a1
	add.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a5
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 744
	ld.w	$t4, $sp, 680
	addi.d	$t1, $a7, 64
	stx.h	$t2, $a6, $t1
	mul.d	$t2, $t3, $a0
	mul.d	$t3, $t4, $a1
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a5
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t3, $t2, $t3
	ld.w	$t5, $sp, 700
	ld.w	$t6, $sp, 636
	addi.d	$t2, $a7, 96
	addi.d	$t4, $a6, 2
	mul.d	$t5, $t5, $a0
	mul.d	$t6, $t6, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	move	$s1, $t7
	ld.w	$t7, $sp, 716
	move	$s2, $t8
	ld.w	$t8, $sp, 652
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a7
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 732
	ld.w	$t8, $sp, 668
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t0
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 748
	ld.w	$t8, $sp, 684
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	ld.w	$t6, $sp, 704
	ld.w	$t7, $sp, 640
	stx.h	$t5, $t4, $t2
	addi.d	$t4, $a6, 4
	mul.d	$t5, $t6, $a0
	mul.d	$t6, $t7, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 720
	ld.w	$t8, $sp, 656
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a7
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 736
	ld.w	$t8, $sp, 672
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t0
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 752
	ld.w	$t8, $sp, 688
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	mul.d	$t5, $t7, $a0
	move	$t7, $s1
	mul.d	$t6, $t8, $a1
	move	$t8, $s2
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	slt	$t6, $t3, $a2
	maskeqz	$t3, $t3, $t6
	masknez	$t6, $a2, $t6
	stx.h	$t5, $t4, $t2
	ld.w	$t4, $sp, 708
	ld.w	$t5, $sp, 644
	or	$t3, $t3, $t6
	stx.h	$t3, $a6, $t2
	mul.d	$t3, $t4, $a0
	mul.d	$t4, $t5, $a1
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a5
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	ld.w	$t4, $sp, 724
	ld.w	$t5, $sp, 660
	addi.d	$a6, $a6, 6
	stx.h	$t3, $a6, $a7
	mul.d	$a7, $t4, $a0
	mul.d	$t3, $t5, $a1
	add.d	$a7, $t3, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t3, $a7, 63
	andn	$a7, $a7, $t3
	slt	$t3, $a7, $a2
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 740
	ld.w	$t5, $sp, 676
	or	$a7, $a7, $t3
	stx.h	$a7, $a6, $t0
	mul.d	$a7, $t4, $a0
	mul.d	$t0, $t5, $a1
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	ld.w	$t3, $sp, 756
	ld.w	$t4, $sp, 692
	or	$a7, $a7, $t0
	stx.h	$a7, $a6, $t1
	mul.d	$a0, $t3, $a0
	mul.d	$a1, $t4, $a1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	stx.h	$a0, $a6, $t2
	move	$a4, $fp
	b	.LBB25_205
.LBB25_165:                             #   in Loop: Header=BB25_69 Depth=2
	move	$t2, $s1
	move	$ra, $s4
	b	.LBB25_193
.LBB25_166:                             # %if.then2171
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s1, $t2
	move	$s8, $t8
	move	$s2, $t7
	move	$s0, $t1
	slli.d	$a0, $t1, 4
	b	.LBB25_168
.LBB25_167:                             # %if.else2197
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s1, $t2
	move	$s8, $t8
	move	$s2, $t7
	move	$s0, $t1
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_168:                             # %if.end2211
                                        #   in Loop: Header=BB25_69 Depth=2
	ldx.d	$a1, $s7, $s5
	ldx.d	$a1, $a1, $s6
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 696
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$s7, $ra
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	move	$ra, $s7
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s5
	move	$t1, $s0
	move	$t7, $s2
	move	$t8, $s8
	move	$t2, $s1
.LBB25_169:                             # %if.end2217
                                        #   in Loop: Header=BB25_69 Depth=2
	ldx.b	$a0, $a1, $ra
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	bltz	$a0, .LBB25_173
# %bb.170:                              # %if.then2227
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_174
# %bb.171:                              # %if.else2248
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 76
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 4
	lu12i.w	$s8, 1
	move	$s2, $t8
	move	$s7, $t7
	bnez	$a2, .LBB25_175
# %bb.172:                              # %if.then2252
                                        #   in Loop: Header=BB25_69 Depth=2
	add.d	$a0, $a0, $a1
	b	.LBB25_176
.LBB25_173:                             #   in Loop: Header=BB25_69 Depth=2
	move	$s4, $ra
	lu12i.w	$s8, 1
	ori	$s0, $zero, 11
	ld.w	$a3, $s3, 40
	bnez	$a3, .LBB25_177
	b	.LBB25_183
.LBB25_174:                             # %if.then2238
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s2, $t8
	move	$s7, $t7
	slli.d	$a0, $t1, 4
	lu12i.w	$s8, 1
	b	.LBB25_176
.LBB25_175:                             # %if.else2264
                                        #   in Loop: Header=BB25_69 Depth=2
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_176:                             # %if.end2278
                                        #   in Loop: Header=BB25_69 Depth=2
	ldx.d	$a1, $t2, $s5
	ldx.d	$a1, $a1, $s6
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s4, $ra
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 632
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	ori	$s0, $zero, 11
	move	$t7, $s7
	move	$t8, $s2
	ld.w	$a3, $s3, 40
	beqz	$a3, .LBB25_183
.LBB25_177:                             # %land.lhs.true2391
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_183
# %bb.178:                              # %if.then2397
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.w	$a0, $s3, 5800
	move	$ra, $s4
	beqz	$a0, .LBB25_194
# %bb.179:                              # %if.then2400
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	beqz	$a1, .LBB25_195
# %bb.180:                              # %land.lhs.true2403
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a1, $s3, 44
	beqz	$a1, .LBB25_182
# %bb.181:                              # %land.lhs.true2403
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_195
.LBB25_182:                             # %land.lhs.true2419
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	move	$a2, $a3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_197
	b	.LBB25_198
.LBB25_183:                             # %land.lhs.true2501
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a0, $s8, 1704
	ldx.w	$a0, $s3, $a0
	move	$ra, $s4
	beqz	$a3, .LBB25_190
# %bb.184:                              # %land.lhs.true2501
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_190
# %bb.185:                              # %if.then2507
                                        #   in Loop: Header=BB25_69 Depth=2
	beqz	$a0, .LBB25_199
# %bb.186:                              # %if.then2510
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	beqz	$a1, .LBB25_200
# %bb.187:                              # %land.lhs.true2513
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a1, $s3, 44
	beqz	$a1, .LBB25_189
# %bb.188:                              # %land.lhs.true2513
                                        #   in Loop: Header=BB25_69 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_200
.LBB25_189:                             # %land.lhs.true2529
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_202
	b	.LBB25_203
.LBB25_190:                             # %if.else2608
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$t2, $t6
	beqz	$a0, .LBB25_193
# %bb.191:                              # %if.then2611
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	beqz	$fp, .LBB25_211
# %bb.192:                              #   in Loop: Header=BB25_69 Depth=2
	move	$s1, $t2
	b	.LBB25_155
.LBB25_193:                             # %for.cond2729.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$t6, $sp, 472                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 696
	ld.w	$a2, $sp, 632
	addi.w	$a1, $t8, 0
	slli.d	$a1, $a1, 5
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	ld.w	$a3, $sp, 700
	ld.w	$a4, $sp, 636
	srli.d	$a0, $a0, 1
	slli.d	$a2, $t7, 1
	stx.h	$a0, $a1, $a2
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	ld.w	$a4, $sp, 704
	ld.w	$a5, $sp, 640
	srli.d	$a0, $a0, 1
	addi.d	$a3, $a2, 2
	stx.h	$a0, $a1, $a3
	add.d	$a0, $a4, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a4, $a0, 1
	addi.d	$a0, $a2, 4
	ld.w	$a5, $sp, 708
	ld.w	$a6, $sp, 644
	stx.h	$a4, $a1, $a0
	ld.w	$a7, $sp, 712
	ld.w	$t0, $sp, 648
	add.d	$a5, $a5, $a6
	addi.d	$a4, $a2, 6
	addi.d	$a6, $a1, 32
	add.d	$a7, $a7, $t0
	ld.w	$t0, $sp, 716
	ld.w	$t1, $sp, 652
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a2
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 720
	ld.w	$t1, $sp, 656
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 724
	ld.w	$t1, $sp, 660
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	add.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	ld.w	$t0, $sp, 728
	ld.w	$t1, $sp, 664
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a4
	addi.d	$a6, $a1, 64
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 732
	ld.w	$t1, $sp, 668
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a2
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 736
	ld.w	$t1, $sp, 672
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 740
	ld.w	$t1, $sp, 676
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	add.d	$a7, $t0, $t1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a4
	ld.w	$a6, $sp, 744
	ld.w	$a7, $sp, 680
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a4
	addi.d	$a1, $a1, 96
	add.d	$a5, $a6, $a7
	ld.w	$a6, $sp, 748
	ld.w	$a7, $sp, 684
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a2
	add.d	$a2, $a6, $a7
	ld.w	$a5, $sp, 752
	ld.w	$a6, $sp, 688
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a3
	add.d	$a2, $a5, $a6
	ld.w	$a3, $sp, 756
	ld.w	$a5, $sp, 692
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a0
	add.d	$a0, $a3, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a1, $a4
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	move	$a4, $t2
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	b	.LBB25_206
.LBB25_194:                             # %for.cond2475.preheader.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	addi.w	$a0, $t8, 0
	slli.d	$a0, $a0, 5
	ld.h	$a1, $sp, 696
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 700
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 704
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 708
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	addi.d	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	addi.d	$a3, $a0, 32
	ld.h	$a6, $sp, 712
	ld.h	$a7, $sp, 716
	ld.h	$t0, $sp, 720
	ld.h	$t1, $sp, 724
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a0, 64
	ld.h	$a6, $sp, 728
	ld.h	$a7, $sp, 732
	ld.h	$t0, $sp, 736
	ld.h	$t1, $sp, 740
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a0, $a0, 96
	ld.h	$a3, $sp, 744
	ld.h	$a6, $sp, 748
	ld.h	$a7, $sp, 752
	ld.h	$t0, $sp, 756
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	stx.h	$t0, $a0, $a4
	move	$a4, $t6
	b	.LBB25_204
.LBB25_195:                             # %lor.lhs.false2411
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $a0, 1124
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	move	$a2, $a3
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_198
# %bb.196:                              # %land.lhs.true2415
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	move	$a2, $a3
	beqz	$a0, .LBB25_198
.LBB25_197:                             # %if.then2421
                                        #   in Loop: Header=BB25_69 Depth=2
	srai.d	$a2, $a3, 1
.LBB25_198:                             # %if.end2425
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.d	$a0, $s3, 5768
	ldptr.d	$a1, $s3, 5776
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	sra.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1664
	ldx.wu	$a1, $s3, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $s3, 5900
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 1
	sll.w	$a4, $a5, $a4
	ld.w	$a6, $sp, 696
	addi.w	$a5, $t8, 0
	slli.d	$a5, $a5, 5
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a0, $a7
	ld.w	$t0, $sp, 700
	or	$a7, $a6, $a7
	slli.d	$a6, $t7, 1
	stx.h	$a7, $a5, $a6
	mul.d	$a7, $t0, $a3
	add.d	$a7, $a4, $a7
	sra.w	$a7, $a7, $a1
	add.w	$a7, $a7, $a2
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	ld.w	$t1, $sp, 704
	or	$t0, $a7, $t0
	addi.d	$a7, $a6, 2
	stx.h	$t0, $a5, $a7
	mul.d	$t0, $t1, $a3
	add.d	$t0, $a4, $t0
	sra.w	$t0, $t0, $a1
	add.w	$t0, $t0, $a2
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ld.w	$t2, $sp, 708
	or	$t1, $t0, $t1
	addi.d	$t0, $a6, 4
	stx.h	$t1, $a5, $t0
	mul.d	$t1, $t2, $a3
	add.d	$t1, $a4, $t1
	sra.w	$t1, $t1, $a1
	add.w	$t1, $t1, $a2
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 712
	addi.d	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	addi.d	$t2, $a5, 32
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 716
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 720
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 724
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 728
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a5, 64
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 732
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 736
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 740
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 744
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 748
	or	$t2, $t2, $t3
	addi.d	$a5, $a5, 96
	stx.h	$t2, $a5, $a6
	mul.d	$a6, $t4, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.w	$t3, $sp, 752
	masknez	$t2, $a0, $t2
	or	$a6, $a6, $t2
	stx.h	$a6, $a5, $a7
	mul.d	$a6, $t3, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	ld.w	$t2, $sp, 756
	masknez	$a7, $a0, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $a5, $t0
	mul.d	$a3, $t2, $a3
	add.d	$a3, $a4, $a3
	sra.w	$a1, $a3, $a1
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	stx.h	$a0, $a5, $t1
	move	$a4, $t6
	b	.LBB25_205
.LBB25_199:                             # %for.cond2585.preheader.preheader
                                        #   in Loop: Header=BB25_69 Depth=2
	addi.w	$a0, $t8, 0
	slli.d	$a0, $a0, 5
	ld.h	$a1, $sp, 632
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 636
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 640
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 644
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	addi.d	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	addi.d	$a3, $a0, 32
	ld.h	$a6, $sp, 648
	ld.h	$a7, $sp, 652
	ld.h	$t0, $sp, 656
	ld.h	$t1, $sp, 660
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a0, 64
	ld.h	$a6, $sp, 664
	ld.h	$a7, $sp, 668
	ld.h	$t0, $sp, 672
	ld.h	$t1, $sp, 676
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a0, $a0, 96
	ld.h	$a3, $sp, 680
	ld.h	$a6, $sp, 684
	ld.h	$a7, $sp, 688
	ld.h	$t0, $sp, 692
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	stx.h	$t0, $a0, $a4
	move	$a4, $t6
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	b	.LBB25_204
.LBB25_200:                             # %lor.lhs.false2521
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $a0, 1124
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_203
# %bb.201:                              # %land.lhs.true2525
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.w	$a0, $s3, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB25_203
.LBB25_202:                             # %if.then2531
                                        #   in Loop: Header=BB25_69 Depth=2
	ext.w.h	$a0, $t6
	srai.d	$t6, $a0, 1
.LBB25_203:                             # %if.end2535
                                        #   in Loop: Header=BB25_69 Depth=2
	ldptr.d	$a0, $s3, 5768
	ldptr.d	$a1, $s3, 5776
	ld.d	$a0, $a0, 8
	ext.w.h	$a2, $t6
	slli.d	$a2, $a2, 3
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	sra.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	ori	$a1, $s8, 1664
	ldx.wu	$a1, $s3, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $s3, 5900
	addi.d	$a4, $a1, -1
	ori	$a6, $zero, 1
	ori	$a5, $zero, 1
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	sll.w	$a4, $a6, $a4
	ld.w	$a6, $sp, 632
	addi.w	$a5, $t8, 0
	slli.d	$a5, $a5, 5
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a0, $a7
	ld.w	$t0, $sp, 636
	or	$a7, $a6, $a7
	slli.d	$a6, $t7, 1
	stx.h	$a7, $a5, $a6
	mul.d	$a7, $t0, $a3
	add.d	$a7, $a4, $a7
	sra.w	$a7, $a7, $a1
	add.w	$a7, $a7, $a2
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	ld.w	$t1, $sp, 640
	or	$t0, $a7, $t0
	addi.d	$a7, $a6, 2
	stx.h	$t0, $a5, $a7
	mul.d	$t0, $t1, $a3
	add.d	$t0, $a4, $t0
	sra.w	$t0, $t0, $a1
	add.w	$t0, $t0, $a2
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ld.w	$t2, $sp, 644
	or	$t1, $t0, $t1
	addi.d	$t0, $a6, 4
	stx.h	$t1, $a5, $t0
	mul.d	$t1, $t2, $a3
	add.d	$t1, $a4, $t1
	sra.w	$t1, $t1, $a1
	add.w	$t1, $t1, $a2
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 648
	addi.d	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	addi.d	$t2, $a5, 32
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 652
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 656
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 660
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 664
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a5, 64
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 668
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 672
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 676
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 680
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$a5, $a5, 96
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	ld.w	$t4, $sp, 684
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a5, $a6
	mul.d	$a6, $t4, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.w	$t3, $sp, 688
	masknez	$t2, $a0, $t2
	or	$a6, $a6, $t2
	stx.h	$a6, $a5, $a7
	mul.d	$a6, $t3, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	ld.w	$t2, $sp, 692
	masknez	$a7, $a0, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $a5, $t0
	mul.d	$a3, $t2, $a3
	add.d	$a3, $a4, $a3
	move	$a4, $t6
	sra.w	$a1, $a3, $a1
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	stx.h	$a0, $a5, $t1
.LBB25_204:                             # %if.end2767
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
.LBB25_205:                             # %if.end2767
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 472                   # 8-byte Folded Reload
.LBB25_206:                             # %if.end2767
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_67
.LBB25_207:                             # %if.then2772
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$s8, $t1
	move	$s4, $ra
	move	$s5, $a5
	move	$fp, $a4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a0, $a0, 4
	addi.w	$a2, $t8, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB25_209
# %bb.208:                              # %if.else2781
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$a0, $s3
	move	$a1, $t7
	move	$a3, $a6
	move	$a4, $t6
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_68
	b	.LBB25_210
.LBB25_209:                             # %if.then2780
                                        #   in Loop: Header=BB25_69 Depth=2
	move	$a0, $s3
	move	$a1, $t7
	move	$a3, $a6
	move	$a4, $t6
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_68
	.p2align	4, , 16
.LBB25_210:                             # %for.inc2830.thread
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $s8, 2
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.h	$a3, $s3, 1384
	slli.w	$a4, $s4, 2
	slli.d	$a4, $a4, 1
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s3, 1388
	addi.d	$a5, $a4, 2
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s3, 1392
	addi.d	$a6, $a4, 4
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s3, 1396
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a4, 6
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 8
	ld.h	$a3, $s3, 1448
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s3, 1452
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s3, 1456
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s3, 1460
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 16
	ld.h	$a3, $s3, 1512
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s3, 1516
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s3, 1520
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s3, 1524
	stx.h	$a3, $a2, $a1
	ld.d	$a0, $a0, 24
	ld.h	$a2, $s3, 1576
	stx.h	$a2, $a0, $a4
	ld.h	$a2, $s3, 1580
	stx.h	$a2, $a0, $a5
	ld.h	$a2, $s3, 1584
	stx.h	$a2, $a0, $a6
	ld.h	$a2, $s3, 1588
	addi.d	$a5, $s5, 1
	stx.h	$a2, $a0, $a1
	move	$a4, $fp
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	bne	$a5, $a0, .LBB25_69
	b	.LBB25_218
.LBB25_211:                             # %land.lhs.true2621
                                        #   in Loop: Header=BB25_69 Depth=2
	sltui	$a3, $a3, 1
	masknez	$s1, $t2, $a3
	b	.LBB25_155
.LBB25_212:                             # %if.else1994
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $s6
	ori	$a4, $a4, 1584
	ldx.d	$a4, $a1, $a4
	ldx.d	$a3, $a3, $s5
	ld.d	$a5, $a4, 0
	ldx.d	$a3, $a3, $s1
	slli.d	$a6, $t1, 3
	ldx.d	$a5, $a5, $a6
	ld.h	$a7, $a3, 0
	ldx.d	$a5, $a5, $s1
	mul.d	$a7, $a2, $a7
	addi.d	$a7, $a7, 128
	bstrpick.d	$a7, $a7, 31, 8
	st.h	$a7, $a5, 0
	ld.h	$t0, $a3, 2
	mul.d	$a2, $a2, $t0
	addi.d	$a2, $a2, 128
	srli.d	$a2, $a2, 8
	st.h	$a2, $a5, 2
	ld.d	$a2, $a4, 8
	ldx.d	$a2, $a2, $a6
	ld.h	$a4, $a3, 0
	ldx.d	$a2, $a2, $s1
	sub.d	$a4, $a7, $a4
	st.h	$a4, $a2, 0
	ld.h	$a4, $a5, 2
	ld.h	$a3, $a3, 2
	sub.d	$a3, $a4, $a3
	b	.LBB25_144
.LBB25_213:                             # %if.then1543
                                        #   in Loop: Header=BB25_69 Depth=2
	slli.d	$a3, $t1, 3
	ldx.d	$a4, $s7, $a3
	slli.d	$a5, $ra, 3
	ldx.d	$a4, $a4, $a5
	st.w	$zero, $a4, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$zero, $a0, $ra
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_98
	b	.LBB25_128
.LBB25_214:                             # %if.then1630
                                        #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a0, $a7, 0
	ori	$a1, $t0, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a1, $a2
	move	$a1, $zero
	st.w	$zero, $a2, 0
	b	.LBB25_102
	.p2align	4, , 16
.LBB25_215:                             # %for.end2832
                                        #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_218
# %bb.216:                              # %if.then2834
                                        #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 3
	andi	$a1, $a0, 8
	slli.d	$a0, $a2, 2
	andi	$a2, $a0, 8
	move	$a0, $s3
	move	$s0, $a3
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s3, 80
	alsl.d	$a1, $a1, $a0, 3
	ld.w	$a0, $s3, 84
	slli.d	$a2, $s5, 6
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a2
	slli.d	$a2, $s5, 3
	ldx.d	$a4, $a1, $a2
	slli.d	$a2, $s0, 2
	xvldx	$xr0, $a3, $a2
	alsl.d	$a3, $s0, $a4, 1
	slli.d	$a0, $a0, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 1
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 2
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	addi.d	$a3, $s5, 3
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	ori	$a3, $a5, 4
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $a5, 5
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $a5, 6
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	xvldx	$xr0, $a4, $a2
	alsl.d	$a3, $s0, $a3, 1
	xvpickve2gr.w	$a4, $xr0, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr0, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr0, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr0, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr0, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr0, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr0, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr0, 7
	vinsgr2vr.h	$vr1, $a4, 7
	vstx	$vr1, $a3, $a0
	ori	$a3, $a5, 7
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	xvldx	$xr0, $a4, $a2
	move	$a4, $fp
	alsl.d	$a1, $s0, $a1, 1
.LBB25_217:                             # %for.inc2871
                                        #   in Loop: Header=BB25_64 Depth=1
	xvpickve2gr.w	$a2, $xr0, 0
	vinsgr2vr.h	$vr1, $a2, 0
	xvpickve2gr.w	$a2, $xr0, 1
	vinsgr2vr.h	$vr1, $a2, 1
	xvpickve2gr.w	$a2, $xr0, 2
	vinsgr2vr.h	$vr1, $a2, 2
	xvpickve2gr.w	$a2, $xr0, 3
	vinsgr2vr.h	$vr1, $a2, 3
	xvpickve2gr.w	$a2, $xr0, 4
	vinsgr2vr.h	$vr1, $a2, 4
	xvpickve2gr.w	$a2, $xr0, 5
	vinsgr2vr.h	$vr1, $a2, 5
	xvpickve2gr.w	$a2, $xr0, 6
	vinsgr2vr.h	$vr1, $a2, 6
	xvpickve2gr.w	$a2, $xr0, 7
	vinsgr2vr.h	$vr1, $a2, 7
	vstx	$vr1, $a1, $a0
.LBB25_218:                             # %for.inc2871
                                        #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$s0, $sp, 480                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 4
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	xori	$a2, $a2, 1
	ori	$a0, $zero, 4
	bne	$a5, $a0, .LBB25_64
# %bb.219:                              # %for.end2873
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
	lu12i.w	$a3, 77
	ori	$a1, $a3, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_4
# %bb.220:                              # %if.then2877
	ldptr.w	$a0, $s3, 5932
	move	$s8, $zero
	move	$s1, $zero
	move	$ra, $zero
	ldptr.w	$a1, $s3, 5936
	ori	$a2, $zero, 64
	div.w	$s4, $a2, $a0
	addi.d	$a0, $s4, -1
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	div.w	$s5, $a2, $a1
	addi.d	$a0, $s5, -1
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	mul.w	$a0, $s5, $s4
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 5
	pcalau12i	$a1, %pc_hi20(subblk_offset_y)
	addi.d	$a1, $a1, %pc_lo12(subblk_offset_y)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(subblk_offset_x)
	addi.d	$a1, $a1, %pc_lo12(subblk_offset_x)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a2, 6
	pcalau12i	$a2, %pc_hi20(block8x8_idx)
	addi.d	$a2, $a2, %pc_lo12(block8x8_idx)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cofuv_blk_x)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_x)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cofuv_blk_y)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_y)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ori	$a0, $a3, 1536
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 1536
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 512                   # 8-byte Folded Reload
	b	.LBB25_222
	.p2align	4, , 16
.LBB25_221:                             # %for.inc4070
                                        #   in Loop: Header=BB25_222 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s8, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB25_4
.LBB25_222:                             # %for.body2886
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_228 Depth 2
                                        #       Child Loop BB25_232 Depth 3
                                        #         Child Loop BB25_289 Depth 4
                                        #           Child Loop BB25_298 Depth 5
                                        #         Child Loop BB25_236 Depth 4
                                        #           Child Loop BB25_245 Depth 5
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ldptr.w	$s1, $s3, 5924
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB25_311
# %bb.223:                              # %for.body2886
                                        #   in Loop: Header=BB25_222 Depth=1
	sll.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	move	$a0, $s1
	beqz	$a1, .LBB25_225
# %bb.224:                              # %if.then2911
                                        #   in Loop: Header=BB25_222 Depth=1
	move	$a0, $s3
	move	$a1, $s8
	move	$fp, $a4
	move	$s0, $ra
	pcaddu18i	$ra, %call36(intrapred_chroma)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	move	$a4, $fp
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1828
	ldx.w	$a0, $s3, $a0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
.LBB25_225:                             # %if.end2912
                                        #   in Loop: Header=BB25_222 Depth=1
	slli.d	$a1, $s8, 3
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	blt	$a0, $a1, .LBB25_308
# %bb.226:                              # %for.cond2919.preheader.lr.ph
                                        #   in Loop: Header=BB25_222 Depth=1
	move	$a1, $zero
	srai.d	$a0, $s1, 1
	mul.w	$a0, $a0, $s8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	b	.LBB25_228
	.p2align	4, , 16
.LBB25_227:                             # %for.inc4010
                                        #   in Loop: Header=BB25_228 Depth=2
	ldptr.w	$a0, $s3, 5924
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	srai.d	$a0, $a0, 1
	bge	$a1, $a0, .LBB25_309
.LBB25_228:                             # %for.cond2919.preheader
                                        #   Parent Loop BB25_222 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_232 Depth 3
                                        #         Child Loop BB25_289 Depth 4
                                        #           Child Loop BB25_298 Depth 5
                                        #         Child Loop BB25_236 Depth 4
                                        #           Child Loop BB25_245 Depth 5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB25_232
	.p2align	4, , 16
.LBB25_229:                             #   in Loop: Header=BB25_232 Depth=3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
.LBB25_230:                             # %if.end3957
                                        #   in Loop: Header=BB25_232 Depth=3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_286
# %bb.231:                              # %for.inc4007
                                        #   in Loop: Header=BB25_232 Depth=3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB25_227
.LBB25_232:                             # %for.body2922
                                        #   Parent Loop BB25_222 Depth=1
                                        #     Parent Loop BB25_228 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_289 Depth 4
                                        #           Child Loop BB25_298 Depth 5
                                        #         Child Loop BB25_236 Depth 4
                                        #           Child Loop BB25_245 Depth 5
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $a1
	ld.w	$a3, $s3, 88
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ldx.bu	$a5, $a0, $a1
	ld.w	$a0, $s3, 96
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	add.w	$a3, $a3, $a2
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	add.w	$fp, $a0, $a5
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	bnez	$a0, .LBB25_230
# %bb.233:                              # %if.then2960
                                        #   in Loop: Header=BB25_232 Depth=3
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$t0, $a0, $a2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$t1, $t0, 255
	lu12i.w	$a3, 77
	ori	$a1, $a3, 1560
	add.d	$t4, $a0, $a1
	ld.d	$a6, $t4, 24
	lu12i.w	$a7, 1
	ori	$a5, $a7, 1888
	ori	$a1, $a7, 1884
	ori	$a0, $a7, 1704
	mul.d	$t2, $s4, $fp
	st.d	$t2, $sp, 528                   # 8-byte Folded Spill
	pcalau12i	$t3, %pc_hi20(active_sps)
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	slli.d	$t2, $t2, 2
	st.d	$t2, $sp, 496                   # 8-byte Folded Spill
	ori	$t2, $a7, 1668
	st.d	$t2, $sp, 488                   # 8-byte Folded Spill
	ori	$t2, $a7, 1700
	st.d	$t2, $sp, 472                   # 8-byte Folded Spill
	ori	$a3, $a3, 1504
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	ori	$a3, $a7, 1840
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ori	$a3, $zero, 2
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	bne	$t1, $a3, .LBB25_287
# %bb.234:                              # %if.else3212
                                        #   in Loop: Header=BB25_232 Depth=3
	move	$t0, $zero
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 0
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 8
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ldx.w	$a2, $s3, $a5
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	move	$a5, $zero
	ldx.w	$a1, $s3, $a1
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ldx.w	$a0, $s3, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 1
	mul.d	$a1, $s4, $a1
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	st.d	$t4, $sp, 448                   # 8-byte Folded Spill
	st.d	$t3, $sp, 296                   # 8-byte Folded Spill
	b	.LBB25_236
	.p2align	4, , 16
.LBB25_235:                             # %for.end3952
                                        #   in Loop: Header=BB25_236 Depth=4
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ori	$a1, $zero, 4
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 296                   # 8-byte Folded Reload
	beq	$a5, $a1, .LBB25_230
.LBB25_236:                             # %for.body3220
                                        #   Parent Loop BB25_222 Depth=1
                                        #     Parent Loop BB25_228 Depth=2
                                        #       Parent Loop BB25_232 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_245 Depth 5
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	beqz	$a1, .LBB25_239
# %bb.237:                              # %if.else3231
                                        #   in Loop: Header=BB25_236 Depth=4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	bnez	$a1, .LBB25_240
# %bb.238:                              # %if.then3235
                                        #   in Loop: Header=BB25_236 Depth=4
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a5
	b	.LBB25_241
	.p2align	4, , 16
.LBB25_239:                             #   in Loop: Header=BB25_236 Depth=4
	add.d	$a1, $t0, $a3
	b	.LBB25_241
	.p2align	4, , 16
.LBB25_240:                             # %if.else3241
                                        #   in Loop: Header=BB25_236 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a1, $s3, $a1
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a1, $a2, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	add.d	$a1, $a1, $a2
.LBB25_241:                             # %if.end3250
                                        #   in Loop: Header=BB25_236 Depth=4
	move	$a2, $zero
	move	$t6, $zero
	move	$t7, $zero
	st.d	$a5, $sp, 312                   # 8-byte Folded Spill
	add.w	$a3, $a3, $a5
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	div.w	$a7, $a3, $a5
	mul.d	$a1, $a1, $s5
	bstrpick.d	$a3, $a7, 31, 1
	slli.w	$a3, $a3, 1
	ld.d	$a5, $t3, %pc_lo12(active_sps)
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t3, $a5, %pc_lo12(active_pps)
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a5, 3
	st.d	$a5, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $a5, 3
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	move	$a5, $fp
	b	.LBB25_245
.LBB25_242:                             # %if.else3831
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $t3, 1124
	addi.d	$a3, $a3, -2
	ldptr.d	$a7, $s3, 5784
	sltui	$a3, $a3, 1
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a3, $t0, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$t0, $a7, $a3
	addi.d	$t1, $a3, 8
	ldx.d	$a7, $a7, $t1
	slli.d	$a6, $a6, 3
	ldx.d	$t0, $t0, $a6
	ext.w.h	$t2, $a4
	ldx.d	$a7, $a7, $a6
	slli.d	$t2, $t2, 3
	ldx.d	$t0, $t0, $t2
	ldx.d	$a7, $a7, $t2
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $t4
	ldptr.d	$t5, $s3, 5776
	ldx.w	$a7, $a7, $t4
	ldptr.w	$t8, $s3, 5904
	mul.d	$t0, $t0, $ra
	ldx.d	$a3, $t5, $a3
	ldx.d	$t1, $t5, $t1
	mul.d	$a7, $a7, $s1
	ld.d	$t5, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$t5, $s3, $t5
	ldx.d	$a3, $a3, $a6
	ldx.d	$a6, $t1, $t2
	add.d	$a7, $a7, $t0
	sll.w	$t0, $s2, $t5
	ldx.w	$a3, $a3, $t4
	ldx.w	$a6, $a6, $t4
	add.d	$a7, $a7, $t0
	addi.d	$t0, $t5, 1
	sra.w	$a7, $a7, $t0
	add.d	$a3, $a3, $a6
	addi.w	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	add.w	$a3, $a3, $a7
	srai.d	$a6, $a3, 63
	andn	$a3, $a3, $a6
	slt	$a6, $a3, $t8
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t8, $a6
.LBB25_243:                             # %for.inc3950
                                        #   in Loop: Header=BB25_245 Depth=5
	or	$a6, $a3, $a6
.LBB25_244:                             # %for.inc3950
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	stx.h	$a6, $a3, $t6
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 2
	add.d	$a2, $a2, $s4
	addi.w	$a5, $a5, 1
	ori	$a3, $zero, 8
	ld.d	$t4, $sp, 448                   # 8-byte Folded Reload
	beq	$t6, $a3, .LBB25_235
.LBB25_245:                             # %for.body3254
                                        #   Parent Loop BB25_222 Depth=1
                                        #     Parent Loop BB25_228 Depth=2
                                        #       Parent Loop BB25_232 Depth=3
                                        #         Parent Loop BB25_236 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	div.w	$t5, $a5, $a3
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	beqz	$a3, .LBB25_257
# %bb.246:                              # %for.body3254.if.else3535_crit_edge
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a6, $t4, 0
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ld.w	$t1, $a3, 32
.LBB25_247:                             # %if.else3535
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $a6, 0
	ld.d	$a6, $a6, 8
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	slli.d	$a7, $a4, 3
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t0, $a4, 0
	ldx.d	$a3, $a3, $a7
	ldx.d	$a7, $a6, $a7
	slli.d	$a6, $t5, 3
	ldx.d	$t0, $t0, $a6
	ldx.b	$a4, $a3, $t5
	ldx.b	$s7, $a7, $t5
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.h	$ra, $t0, 0
	ld.h	$a7, $t0, 2
	slli.d	$t0, $a4, 3
	ldx.d	$a3, $a3, $t0
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a2
	add.w	$t8, $t0, $ra
	add.w	$t2, $a1, $a7
	ld.d	$a7, $sp, 512                   # 8-byte Folded Reload
	add.d	$s1, $a3, $a7
	bne	$t1, $s2, .LBB25_249
# %bb.248:                              # %if.then3569
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $s1, 0
	add.w	$t2, $a3, $t2
.LBB25_249:                             # %if.end3577
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$t5, $s3, 60
	div.w	$a3, $t8, $s4
	srai.d	$a7, $a3, 63
	andn	$a3, $a3, $a7
	slt	$a7, $a3, $t5
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t5, $a7
	or	$a3, $a3, $a7
	div.w	$a7, $t2, $s5
	srai.d	$fp, $a7, 63
	andn	$a7, $a7, $fp
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	slt	$fp, $a7, $s6
	maskeqz	$a7, $a7, $fp
	masknez	$fp, $s6, $fp
	or	$a7, $a7, $fp
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	add.d	$fp, $t4, $a2
	add.w	$fp, $fp, $ra
	div.w	$fp, $fp, $s4
	srai.d	$s0, $fp, 63
	andn	$fp, $fp, $s0
	slt	$s0, $fp, $t5
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t5, $s0
	or	$fp, $fp, $s0
	ld.d	$t4, $sp, 552                   # 8-byte Folded Reload
	add.w	$s0, $t2, $t4
	div.w	$s0, $s0, $s5
	srai.d	$s2, $s0, 63
	andn	$s0, $s0, $s2
	ld.d	$s1, $s1, 32
	slt	$s2, $s0, $s6
	maskeqz	$s0, $s0, $s2
	masknez	$s2, $s6, $s2
	ldx.d	$s1, $s1, $a0
	or	$s0, $s0, $s2
	ld.d	$s2, $sp, 560                   # 8-byte Folded Reload
	and	$t8, $t8, $s2
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s1, $a7
	slli.d	$a3, $a3, 1
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s1, $s0
	ldx.hu	$s1, $a7, $a3
	slli.d	$fp, $fp, 1
	ldx.hu	$a7, $a7, $fp
	ldx.hu	$a3, $s0, $a3
	ldx.hu	$fp, $s0, $fp
	sub.d	$s0, $s4, $t8
	mul.d	$s1, $s0, $s1
	mul.d	$a3, $s0, $a3
	mul.d	$a7, $t8, $a7
	mul.d	$t8, $t8, $fp
	add.d	$a3, $t8, $a3
	and	$t2, $t2, $t4
	add.d	$a7, $a7, $s1
	ld.d	$t4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t8, $t4, 0
	mul.d	$a3, $a3, $t2
	sub.d	$t2, $s5, $t2
	mul.d	$a7, $a7, $t2
	ldx.d	$a6, $t8, $a6
	ld.d	$t2, $sp, 536                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t2
	add.w	$a3, $a7, $a3
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a7, $a7, 0
	ld.h	$t2, $a6, 0
	ld.h	$t8, $a6, 2
	slli.d	$a6, $s7, 3
	ldx.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 544                   # 8-byte Folded Reload
	div.w	$ra, $a3, $a7
	add.w	$t0, $t0, $t2
	add.w	$t2, $a1, $t8
	ori	$t8, $zero, 2
	ori	$s2, $zero, 1
	bne	$t1, $s2, .LBB25_251
# %bb.250:                              # %if.then3655
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$a3, $a6, $a3
	add.w	$t2, $a3, $t2
.LBB25_251:                             # %if.end3722.sink.split
                                        #   in Loop: Header=BB25_245 Depth=5
	move	$s6, $a4
	move	$s8, $a4
	move	$a4, $s7
.LBB25_252:                             # %if.end3722.sink.split
                                        #   in Loop: Header=BB25_245 Depth=5
	div.w	$a3, $t0, $s4
	srai.d	$a7, $a3, 63
	andn	$a3, $a3, $a7
	slt	$a7, $a3, $t5
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t5, $a7
	or	$a3, $a3, $a7
	div.w	$a7, $t2, $s5
	srai.d	$t1, $a7, 63
	andn	$a7, $a7, $t1
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	slt	$t1, $a7, $s0
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $s0, $t1
	or	$a7, $a7, $t1
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	add.w	$t1, $t0, $s1
	div.w	$t1, $t1, $s4
	srai.d	$fp, $t1, 63
	andn	$t1, $t1, $fp
	slt	$fp, $t1, $t5
	maskeqz	$t1, $t1, $fp
	masknez	$t5, $t5, $fp
	or	$t1, $t1, $t5
	ld.d	$t4, $sp, 552                   # 8-byte Folded Reload
	add.w	$t5, $t2, $t4
	div.w	$t5, $t5, $s5
	srai.d	$fp, $t5, 63
	andn	$t5, $t5, $fp
	slt	$fp, $t5, $s0
	maskeqz	$t5, $t5, $fp
	masknez	$fp, $s0, $fp
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $s0
	or	$t5, $t5, $fp
	and	$t0, $t0, $s1
	and	$t2, $t2, $t4
	ldx.d	$a6, $a6, $a0
	sub.d	$fp, $s4, $t0
	sub.d	$s0, $s5, $t2
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a6, $a7
	slli.d	$a3, $a3, 1
	slli.d	$t5, $t5, 3
	ldx.d	$a6, $a6, $t5
	ldx.hu	$t5, $a7, $a3
	slli.d	$t1, $t1, 1
	ldx.hu	$a7, $a7, $t1
	ldx.hu	$a3, $a6, $a3
	ldx.hu	$a6, $a6, $t1
	mul.d	$t1, $fp, $t5
	mul.d	$a7, $t0, $a7
	mul.d	$a3, $fp, $a3
	mul.d	$a6, $t0, $a6
	add.d	$a3, $a6, $a3
	mul.d	$a3, $a3, $t2
	add.d	$a6, $a7, $t1
	mul.d	$a6, $a6, $s0
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	add.w	$a3, $a6, $a3
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	div.w	$s1, $a3, $a6
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	beqz	$a3, .LBB25_279
.LBB25_253:                             # %if.then3725
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $t3, 1120
	beqz	$a3, .LBB25_261
# %bb.254:                              # %land.lhs.true3728
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a6, $s3, 44
	beqz	$a6, .LBB25_256
# %bb.255:                              # %land.lhs.true3728
                                        #   in Loop: Header=BB25_245 Depth=5
	ori	$a3, $zero, 3
	bne	$a6, $a3, .LBB25_261
.LBB25_256:                             # %land.lhs.true3744
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	bnez	$a3, .LBB25_263
	b	.LBB25_264
	.p2align	4, , 16
.LBB25_257:                             # %land.lhs.true3262
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $s3, 40
	ld.d	$a6, $t4, 0
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.w	$t1, $a7, 32
	beqz	$a3, .LBB25_247
# %bb.258:                              # %if.then3265
                                        #   in Loop: Header=BB25_245 Depth=5
	move	$t4, $ra
	ld.d	$a3, $a6, 0
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $t2
	move	$a7, $t5
	bstrins.d	$a7, $zero, 0, 0
	ldx.b	$a3, $a3, $a7
	ld.d	$t0, $a6, 8
	andi	$a6, $a3, 255
	ldx.d	$t0, $t0, $t2
	addi.d	$t2, $a6, -255
	sltui	$t2, $t2, 1
	masknez	$a3, $a3, $t2
	ldx.b	$ra, $t0, $a7
	maskeqz	$a7, $s6, $t2
	or	$s6, $a7, $a3
	maskeqz	$a7, $s8, $t2
	andi	$t0, $ra, 255
	or	$s8, $a7, $a3
	ori	$a3, $zero, 255
	beq	$t0, $a3, .LBB25_271
# %bb.259:                              # %if.then3265
                                        #   in Loop: Header=BB25_245 Depth=5
	bne	$a6, $a3, .LBB25_271
# %bb.260:                              # %if.then3265.if.then3447_crit_edge
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	ori	$t8, $zero, 1
	b	.LBB25_275
	.p2align	4, , 16
.LBB25_261:                             # %lor.lhs.false3736
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $t3, 1124
	bne	$a3, $s2, .LBB25_264
# %bb.262:                              # %land.lhs.true3740
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $s3, 44
	addi.d	$a3, $a3, -1
	sltui	$a3, $a3, 1
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	and	$a3, $a3, $a6
	beqz	$a3, .LBB25_264
.LBB25_263:                             # %if.then3746
                                        #   in Loop: Header=BB25_245 Depth=5
	ext.w.h	$a3, $s8
	srai.d	$s8, $a3, 1
	ext.w.h	$a3, $a4
	srai.d	$a4, $a3, 1
.LBB25_264:                             # %if.end3753
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$t0, $s3, 40
	bne	$t8, $s2, .LBB25_267
# %bb.265:                              # %if.end3753
                                        #   in Loop: Header=BB25_245 Depth=5
	beqz	$t0, .LBB25_267
# %bb.266:                              # %if.then3759
                                        #   in Loop: Header=BB25_245 Depth=5
	ldptr.d	$a3, $s3, 5768
	ld.d	$a3, $a3, 8
	ext.w.h	$a6, $a4
	slli.d	$a6, $a6, 3
	ldx.d	$a3, $a3, $a6
	ldptr.d	$a6, $s3, 5776
	ld.d	$t1, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $t1
	ld.d	$a6, $a6, 8
	ext.w.h	$a7, $s7
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	sra.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	ldx.w	$a7, $s3, $a7
	mul.d	$a3, $a3, $s1
	b	.LBB25_270
	.p2align	4, , 16
.LBB25_267:                             # %if.else3792
                                        #   in Loop: Header=BB25_245 Depth=5
	ext.w.h	$a6, $s8
	bnez	$t8, .LBB25_242
# %bb.268:                              # %if.else3792
                                        #   in Loop: Header=BB25_245 Depth=5
	beqz	$t0, .LBB25_242
# %bb.269:                              # %if.then3798
                                        #   in Loop: Header=BB25_245 Depth=5
	ldptr.d	$a3, $s3, 5768
	ld.d	$a3, $a3, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a3, $a3, $a6
	ldptr.d	$a6, $s3, 5776
	ld.d	$t1, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $t1
	ld.d	$a6, $a6, 0
	ext.w.h	$a7, $s6
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	sra.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	ldx.w	$a7, $s3, $a7
	mul.d	$a3, $a3, $ra
.LBB25_270:                             # %for.inc3950
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$t0, $s3, $t0
	ldx.w	$a6, $a6, $t1
	add.d	$a3, $a3, $a7
	ldptr.w	$a7, $s3, 5904
	sra.w	$a3, $a3, $t0
	add.w	$a3, $a6, $a3
	srai.d	$a6, $a3, 63
	andn	$a3, $a3, $a6
	slt	$a6, $a3, $a7
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a7, $a6
	b	.LBB25_243
.LBB25_271:                             # %if.then3354
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	slli.d	$a6, $t5, 3
	ldx.d	$t8, $a3, $a6
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.h	$a6, $t8, 2
	ext.w.h	$a7, $s6
	slli.d	$a7, $a7, 3
	ldx.d	$a3, $a3, $a7
	add.w	$a6, $a1, $a6
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	add.d	$t2, $a3, $a0
	move	$a0, $s1
	bne	$t1, $s2, .LBB25_273
# %bb.272:                              # %if.then3374
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a3, $t2, 0
	add.w	$a6, $a3, $a6
.LBB25_273:                             # %if.end3441
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.h	$a3, $t8, 0
	ld.d	$a7, $sp, 528                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a2
	add.w	$a7, $a7, $a3
	ld.w	$t8, $s3, 60
	div.w	$fp, $a7, $s4
	srai.d	$s0, $fp, 63
	andn	$fp, $fp, $s0
	slt	$s0, $fp, $t8
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t8, $s0
	or	$fp, $fp, $s0
	div.w	$s0, $a6, $s5
	srai.d	$s1, $s0, 63
	andn	$s0, $s0, $s1
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	slt	$s1, $s0, $s2
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $s2, $s1
	or	$s0, $s0, $s1
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	add.d	$s1, $t4, $a2
	add.w	$a3, $s1, $a3
	div.w	$a3, $a3, $s4
	srai.d	$s1, $a3, 63
	andn	$a3, $a3, $s1
	slt	$s1, $a3, $t8
	maskeqz	$a3, $a3, $s1
	masknez	$t8, $t8, $s1
	or	$a3, $a3, $t8
	ld.d	$t4, $sp, 552                   # 8-byte Folded Reload
	add.w	$t8, $a6, $t4
	div.w	$t8, $t8, $s5
	srai.d	$s1, $t8, 63
	andn	$t8, $t8, $s1
	slt	$s1, $t8, $s2
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $s2, $s1
	ld.d	$t2, $t2, 32
	or	$t8, $t8, $s1
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	and	$a7, $a7, $s1
	and	$a6, $a6, $t4
	ld.d	$t4, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t4
	sub.d	$s1, $s4, $a7
	sub.d	$s2, $s5, $a6
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $t2, $s0
	slli.d	$fp, $fp, 1
	slli.d	$t8, $t8, 3
	ldx.d	$t2, $t2, $t8
	ldx.hu	$t8, $s0, $fp
	slli.d	$a3, $a3, 1
	ldx.hu	$s0, $s0, $a3
	ldx.hu	$fp, $t2, $fp
	ldx.hu	$a3, $t2, $a3
	mul.d	$t2, $s1, $t8
	mul.d	$t8, $a7, $s0
	mul.d	$fp, $s1, $fp
	mul.d	$a3, $a7, $a3
	add.d	$a3, $a3, $fp
	mul.d	$a3, $a3, $a6
	add.d	$a6, $t8, $t2
	mul.d	$a6, $a6, $s2
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	add.w	$a3, $a6, $a3
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	div.w	$t4, $a3, $a6
	ori	$a3, $zero, 255
	beq	$t0, $a3, .LBB25_278
# %bb.274:                              #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $t7, $a0
	mul.d	$s1, $s4, $a3
	ori	$t8, $zero, 2
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
.LBB25_275:                             # %if.then3447
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a6, $t5, 3
	ldx.d	$t5, $a3, $a6
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.h	$a7, $t5, 2
	slli.d	$a6, $ra, 3
	ldx.d	$a6, $a3, $a6
	add.w	$t2, $a1, $a7
	bne	$t1, $s2, .LBB25_277
# %bb.276:                              # %if.then3467
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$a3, $a6, $a3
	add.w	$t2, $a3, $t2
.LBB25_277:                             # %if.end3475
                                        #   in Loop: Header=BB25_245 Depth=5
	addi.d	$a3, $t0, -255
	sltu	$a3, $zero, $a3
	maskeqz	$a7, $ra, $a3
	masknez	$t0, $s7, $a3
	or	$s7, $a7, $t0
	ld.h	$t0, $t5, 0
	ld.w	$t5, $s3, 60
	masknez	$a3, $a4, $a3
	or	$a4, $a7, $a3
	add.w	$t0, $s1, $t0
	move	$ra, $t4
	b	.LBB25_252
.LBB25_278:                             #   in Loop: Header=BB25_245 Depth=5
	move	$t8, $zero
	ori	$s2, $zero, 1
	move	$ra, $t4
	move	$s1, $a0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bnez	$a3, .LBB25_253
	.p2align	4, , 16
.LBB25_279:                             # %if.else3905
                                        #   in Loop: Header=BB25_245 Depth=5
	ld.w	$a6, $s3, 40
	bne	$t8, $s2, .LBB25_282
# %bb.280:                              # %if.else3905
                                        #   in Loop: Header=BB25_245 Depth=5
	beqz	$a6, .LBB25_282
# %bb.281:                              #   in Loop: Header=BB25_245 Depth=5
	move	$a6, $s1
	b	.LBB25_244
.LBB25_282:                             # %if.else3920
                                        #   in Loop: Header=BB25_245 Depth=5
	bnez	$t8, .LBB25_285
# %bb.283:                              # %if.else3920
                                        #   in Loop: Header=BB25_245 Depth=5
	beqz	$a6, .LBB25_285
# %bb.284:                              #   in Loop: Header=BB25_245 Depth=5
	move	$a6, $ra
	b	.LBB25_244
.LBB25_285:                             # %if.else3935
                                        #   in Loop: Header=BB25_245 Depth=5
	add.d	$a3, $ra, $s1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a6, $a3, 31, 1
	b	.LBB25_244
	.p2align	4, , 16
.LBB25_286:                             # %if.then3959
                                        #   in Loop: Header=BB25_232 Depth=3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	ldx.bu	$a3, $a1, $a0
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a4, $a1, $a0
	ori	$a5, $zero, 1
	move	$a0, $s3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s0, $s1
	move	$s1, $ra
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	move	$ra, $s1
	move	$s1, $s0
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	slli.d	$a0, $a6, 3
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	ldx.d	$a0, $a5, $a0
	ld.h	$a1, $s3, 1384
	slli.d	$a2, $fp, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1396
	alsl.d	$a5, $a6, $a5, 3
	addi.d	$a6, $a2, 6
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 8
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 16
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 24
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a6
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB25_232
	b	.LBB25_227
	.p2align	4, , 16
.LBB25_287:                             # %if.then2963
                                        #   in Loop: Header=BB25_232 Depth=3
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a2, $t0, 3
	ldx.d	$a3, $a6, $a2
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a6, $a3, $t0
	slli.d	$a6, $a6, 3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a6
	ld.d	$t0, $t4, 0
	ld.d	$t2, $t3, %pc_lo12(active_sps)
	ldx.w	$a3, $s3, $a5
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	move	$a5, $zero
	ldx.w	$a1, $s3, $a1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ldx.d	$a1, $t0, $a2
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.w	$t3, $t2, 32
	ld.w	$t4, $s3, 60
	ldx.w	$t5, $s3, $a0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$t7, $a1, $a0
	move	$a1, $zero
	addi.d	$a0, $fp, 1
	mul.d	$a0, $s4, $a0
	addi.d	$t8, $a0, -1
	move	$a4, $s7
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	b	.LBB25_289
	.p2align	4, , 16
.LBB25_288:                             # %for.inc3209
                                        #   in Loop: Header=BB25_289 Depth=4
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.d	$t7, $t7, 32
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB25_229
.LBB25_289:                             # %for.body2976
                                        #   Parent Loop BB25_222 Depth=1
                                        #     Parent Loop BB25_228 Depth=2
                                        #       Parent Loop BB25_232 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_298 Depth 5
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_292
# %bb.290:                              # %if.else2985
                                        #   in Loop: Header=BB25_289 Depth=4
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_293
# %bb.291:                              # %if.then2989
                                        #   in Loop: Header=BB25_289 Depth=4
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	b	.LBB25_294
	.p2align	4, , 16
.LBB25_292:                             #   in Loop: Header=BB25_289 Depth=4
	add.d	$a0, $a1, $a3
	b	.LBB25_294
	.p2align	4, , 16
.LBB25_293:                             # %if.else2995
                                        #   in Loop: Header=BB25_289 Depth=4
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a0, $s3, $a0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	add.d	$a0, $a0, $a1
.LBB25_294:                             # %if.end3004
                                        #   in Loop: Header=BB25_289 Depth=4
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	add.w	$a1, $a3, $a5
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ldx.d	$ra, $a3, $a1
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ldx.d	$t6, $a3, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a5, $a1, %pc_lo12(active_pps)
	move	$t0, $zero
	move	$t2, $zero
	mul.d	$a1, $a0, $s5
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	b	.LBB25_298
	.p2align	4, , 16
.LBB25_295:                             # %if.then3123
                                        #   in Loop: Header=BB25_298 Depth=5
	andi	$a3, $s6, 255
	ext.w.b	$a3, $a3
	srai.d	$s0, $a3, 1
.LBB25_296:                             # %if.end3127
                                        #   in Loop: Header=BB25_298 Depth=5
	ldptr.d	$a3, $s3, 5768
	ldx.d	$a3, $a3, $a2
	ldptr.d	$a7, $s3, 5776
	slli.d	$fp, $s0, 3
	ldx.d	$a3, $a3, $fp
	ldx.d	$a7, $a7, $a2
	ld.d	$t1, $sp, 496                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $t1
	ldx.d	$a7, $a7, $fp
	ld.d	$fp, $sp, 472                   # 8-byte Folded Reload
	ldx.w	$fp, $s3, $fp
	mul.d	$a3, $a3, $s1
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$s0, $s3, $s0
	ldx.w	$a7, $a7, $t1
	add.d	$a3, $a3, $fp
	ldptr.w	$fp, $s3, 5904
	sra.w	$a3, $a3, $s0
	add.w	$a3, $a7, $a3
	srai.d	$a7, $a3, 63
	andn	$a3, $a3, $a7
	slt	$a7, $a3, $fp
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $fp, $a7
	or	$s1, $a3, $a7
.LBB25_297:                             # %for.inc3206
                                        #   in Loop: Header=BB25_298 Depth=5
	stx.h	$s1, $t7, $t2
	addi.d	$t2, $t2, 2
	add.d	$t0, $t0, $s4
	addi.w	$a0, $a0, 1
	ori	$a3, $zero, 8
	beq	$t2, $a3, .LBB25_288
.LBB25_298:                             # %for.body3008
                                        #   Parent Loop BB25_222 Depth=1
                                        #     Parent Loop BB25_228 Depth=2
                                        #       Parent Loop BB25_232 Depth=3
                                        #         Parent Loop BB25_289 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	div.w	$s1, $a0, $a3
	slli.d	$s0, $s1, 3
	ldx.d	$s0, $t6, $s0
	ld.h	$a7, $s0, 2
	ldx.b	$fp, $ra, $s1
	add.w	$s1, $a1, $a7
	bne	$t3, $s2, .LBB25_300
# %bb.299:                              # %if.then3042
                                        #   in Loop: Header=BB25_298 Depth=5
	slli.d	$a7, $fp, 3
	ldx.d	$a7, $a6, $a7
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $a3
	add.w	$s1, $a7, $s1
.LBB25_300:                             # %if.end3047
                                        #   in Loop: Header=BB25_298 Depth=5
	ld.h	$a7, $s0, 0
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	add.d	$s0, $a3, $t0
	add.w	$s0, $s0, $a7
	div.w	$s3, $s0, $s4
	srai.d	$s7, $s3, 63
	andn	$s3, $s3, $s7
	slt	$s7, $s3, $t4
	maskeqz	$s3, $s3, $s7
	masknez	$s7, $t4, $s7
	or	$s3, $s3, $s7
	div.w	$s7, $s1, $s5
	srai.d	$s6, $s7, 63
	andn	$s6, $s7, $s6
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	slt	$s7, $s6, $s2
	maskeqz	$s6, $s6, $s7
	masknez	$s7, $s2, $s7
	or	$s6, $s6, $s7
	add.d	$s7, $t8, $t0
	add.w	$a7, $s7, $a7
	div.w	$a7, $a7, $s4
	srai.d	$s7, $a7, 63
	andn	$a7, $a7, $s7
	slt	$s7, $a7, $t4
	maskeqz	$a7, $a7, $s7
	masknez	$s7, $t4, $s7
	or	$a7, $a7, $s7
	ld.d	$t1, $sp, 552                   # 8-byte Folded Reload
	add.w	$s7, $s1, $t1
	div.w	$s7, $s7, $s5
	srai.d	$a3, $s7, 63
	andn	$a3, $s7, $a3
	move	$s8, $fp
	slli.d	$s7, $fp, 3
	ldx.d	$s7, $a6, $s7
	slt	$fp, $a3, $s2
	maskeqz	$a3, $a3, $fp
	masknez	$fp, $s2, $fp
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$s7, $s7, $s2
	or	$a3, $a3, $fp
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	and	$fp, $s0, $fp
	and	$s0, $s1, $t1
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$s1, $s7, $t1
	sub.d	$s7, $s4, $fp
	sub.d	$s2, $s5, $s0
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $s1, $s6
	slli.d	$s3, $s3, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	ldx.hu	$s1, $s6, $s3
	slli.d	$a7, $a7, 1
	ldx.hu	$s6, $s6, $a7
	ldx.hu	$s3, $a3, $s3
	ldx.hu	$a3, $a3, $a7
	mul.d	$a7, $s7, $s1
	mul.d	$s1, $fp, $s6
	mul.d	$s3, $s7, $s3
	mul.d	$a3, $fp, $a3
	add.d	$a3, $a3, $s3
	mul.d	$a3, $a3, $s0
	add.d	$a7, $s1, $a7
	mul.d	$a7, $a7, $s2
	ld.d	$t1, $sp, 536                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t1
	add.w	$a3, $a7, $a3
	ld.d	$a7, $sp, 544                   # 8-byte Folded Reload
	div.w	$s1, $a3, $a7
	beqz	$t5, .LBB25_305
# %bb.301:                              # %if.then3065
                                        #   in Loop: Header=BB25_298 Depth=5
	ld.w	$a3, $a5, 1120
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	move	$s7, $a4
	ori	$s2, $zero, 1
	beqz	$a3, .LBB25_306
# %bb.302:                              # %land.lhs.true3105
                                        #   in Loop: Header=BB25_298 Depth=5
	ld.w	$s0, $s3, 44
	beqz	$s0, .LBB25_304
# %bb.303:                              # %land.lhs.true3105
                                        #   in Loop: Header=BB25_298 Depth=5
	ori	$a3, $zero, 3
	bne	$s0, $a3, .LBB25_306
.LBB25_304:                             # %land.lhs.true3121
                                        #   in Loop: Header=BB25_298 Depth=5
	move	$s6, $s8
	move	$s0, $s8
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	bnez	$a3, .LBB25_295
	b	.LBB25_296
	.p2align	4, , 16
.LBB25_305:                             #   in Loop: Header=BB25_298 Depth=5
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	move	$s7, $a4
	move	$s6, $s8
	ori	$s2, $zero, 1
	b	.LBB25_297
	.p2align	4, , 16
.LBB25_306:                             # %lor.lhs.false3113
                                        #   in Loop: Header=BB25_298 Depth=5
	ld.w	$a3, $a5, 1124
	move	$s6, $s8
	move	$s0, $s8
	bne	$a3, $s2, .LBB25_296
# %bb.307:                              # %land.lhs.true3117
                                        #   in Loop: Header=BB25_298 Depth=5
	ld.w	$a3, $s3, 44
	addi.d	$a3, $a3, -1
	sltui	$a3, $a3, 1
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	and	$a3, $a3, $a7
	move	$s0, $s6
	bnez	$a3, .LBB25_295
	b	.LBB25_296
	.p2align	4, , 16
.LBB25_308:                             #   in Loop: Header=BB25_222 Depth=1
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
.LBB25_309:                             # %for.end4012
                                        #   in Loop: Header=BB25_222 Depth=1
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_221
# %bb.310:                              # %if.then4014
                                        #   in Loop: Header=BB25_222 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$s8, $a0, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$s2, $a0, 1
	move	$a0, $s3
	move	$a1, $s2
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(itrans_sp_chroma)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, 88
	ld.w	$s0, $s3, 96
	addi.w	$a0, $s2, 1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 512                   # 8-byte Folded Spill
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	slli.d	$s1, $fp, 3
	ldx.d	$a0, $s8, $s1
	ld.h	$a1, $s3, 1384
	slli.d	$a2, $s0, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1396
	alsl.d	$fp, $fp, $s8, 3
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 8
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 16
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 24
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$s0, $s3, 96
	ori	$a1, $zero, 4
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s3
	move	$a2, $zero
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s8, $s1
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.h	$a1, $s3, 1384
	slli.d	$a2, $s0, 1
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 8
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 16
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 24
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a2
	ld.w	$a0, $s3, 88
	ld.w	$s0, $s3, 96
	alsl.d	$fp, $a0, $s8, 3
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s3
	move	$a1, $zero
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.h	$a1, $s3, 1384
	slli.d	$a2, $s0, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1396
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 40
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 48
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $fp, 56
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$s0, $s3, 96
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s3
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 32
	ld.h	$a1, $s3, 1384
	slli.d	$a2, $s0, 1
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 40
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 48
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $fp, 56
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a2
	b	.LBB25_221
.LBB25_311:                             #   in Loop: Header=BB25_222 Depth=1
	move	$a0, $s1
	b	.LBB25_225
.LBB25_312:                             # %if.then209
	ld.w	$a0, $s3, 4
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 696
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	addi.d	$a3, $sp, 632
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 576
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	addi.d	$a3, $sp, 600
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s3, 5624
	beqz	$a0, .LBB25_320
# %bb.313:                              # %if.else340
	ld.wu	$a0, $s3, 4
	ldptr.d	$a2, $s3, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a6, $sp, 696
	beqz	$a0, .LBB25_326
# %bb.314:                              # %if.then347
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_316
# %bb.315:                              # %cond.true350
	ld.d	$a1, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 700
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 712
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a1
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a1, $a1, $a3
.LBB25_316:                             # %cond.end391
	ld.w	$a7, $sp, 632
	beqz	$a7, .LBB25_318
# %bb.317:                              # %cond.true396
	ld.d	$a0, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 652
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 636
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 648
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a0
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a0, $a0, $a3
.LBB25_318:                             # %cond.end439
	ld.w	$t0, $sp, 600
	beqz	$t0, .LBB25_332
# %bb.319:                              # %cond.true444
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 620
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 604
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 616
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
	b	.LBB25_333
.LBB25_320:                             # %if.then216
	ld.w	$a2, $sp, 696
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a2, .LBB25_322
# %bb.321:                              # %cond.true
	ld.d	$a1, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 712
	ldx.bu	$a1, $a1, $a3
.LBB25_322:                             # %cond.end
	ld.w	$a6, $sp, 632
	beqz	$a6, .LBB25_324
# %bb.323:                              # %cond.true228
	ld.d	$a0, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 652
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 648
	ldx.bu	$a0, $a0, $a3
.LBB25_324:                             # %cond.end239
	ld.w	$a7, $sp, 600
	beqz	$a7, .LBB25_344
# %bb.325:                              # %cond.true244
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 620
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 616
	ldx.bu	$a3, $a3, $a4
	b	.LBB25_345
.LBB25_326:                             # %if.else732
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_328
# %bb.327:                              # %cond.true735
	ld.d	$a1, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 700
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 712
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a1, $a1
	slti	$a4, $a1, 0
	or	$a3, $a3, $a4
	sra.d	$a1, $a1, $a3
.LBB25_328:                             # %cond.end778
	ld.w	$a7, $sp, 632
	beqz	$a7, .LBB25_330
# %bb.329:                              # %cond.true783
	ld.d	$a0, $s6, 0
	ori	$a3, $s4, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 652
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 636
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 648
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a0, $a0
	slti	$a4, $a0, 0
	or	$a3, $a3, $a4
	sra.d	$a0, $a0, $a3
.LBB25_330:                             # %cond.end826
	ld.w	$t0, $sp, 600
	beqz	$t0, .LBB25_356
# %bb.331:                              # %cond.true831
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 620
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 604
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 616
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
	b	.LBB25_357
.LBB25_332:
	ori	$a3, $zero, 255
.LBB25_333:                             # %cond.end487
	ld.w	$t1, $sp, 576
	beqz	$t1, .LBB25_335
# %bb.334:                              # %cond.true492
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 596
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 580
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 592
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
.LBB25_335:                             # %cond.end536
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_337
# %bb.336:                              # %cond.true541
	ld.d	$a5, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 716
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 700
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 712
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltui	$a6, $t2, 1
	ext.w.b	$t2, $a5
	slt	$t2, $s0, $t2
	and	$a6, $a6, $t2
	sll.d	$a5, $a5, $a6
.LBB25_337:                             # %cond.end584
	beqz	$a7, .LBB25_339
# %bb.338:                              # %cond.true589
	ld.d	$a4, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 652
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 636
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 648
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltui	$a6, $a7, 1
	ext.w.b	$a7, $a4
	slt	$a7, $s0, $a7
	and	$a6, $a6, $a7
	sll.d	$a4, $a4, $a6
.LBB25_339:                             # %cond.end632
	beqz	$t0, .LBB25_341
# %bb.340:                              # %cond.true637
	ld.d	$a6, $s6, 0
	ori	$a7, $s4, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 620
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 604
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 616
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a7, $t0, 1
	ext.w.b	$t0, $a6
	slt	$t0, $s0, $t0
	and	$a7, $a7, $t0
	sll.d	$a6, $a6, $a7
	b	.LBB25_342
.LBB25_341:
	ori	$a6, $zero, 255
.LBB25_342:                             # %cond.end680
	beqz	$t1, .LBB25_368
# %bb.343:                              # %cond.true685
	ld.d	$a6, $s6, 0
	ori	$a7, $s4, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 596
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 580
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 592
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a2, $a2, 1
	ext.w.b	$a7, $a6
	slt	$a7, $s0, $a7
	and	$a2, $a2, $a7
	sll.d	$a6, $a6, $a2
	b	.LBB25_368
.LBB25_344:
	ori	$a3, $zero, 255
.LBB25_345:                             # %cond.end255
	ld.w	$t0, $sp, 576
	beqz	$t0, .LBB25_347
# %bb.346:                              # %cond.true260
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 596
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 592
	ldx.bu	$a3, $a3, $a4
.LBB25_347:                             # %cond.end272
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a2, .LBB25_349
# %bb.348:                              # %cond.true277
	ld.d	$a2, $s6, 0
	ori	$a5, $s4, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 716
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 712
	ldx.bu	$a5, $a2, $a5
.LBB25_349:                             # %cond.end288
	beqz	$a6, .LBB25_351
# %bb.350:                              # %cond.true293
	ld.d	$a2, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 652
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 648
	ldx.bu	$a4, $a2, $a4
.LBB25_351:                             # %cond.end304
	beqz	$a7, .LBB25_353
# %bb.352:                              # %cond.true309
	ld.d	$a2, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 620
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 616
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_354
.LBB25_353:
	ori	$a6, $zero, 255
.LBB25_354:                             # %cond.end320
	beqz	$t0, .LBB25_368
# %bb.355:                              # %cond.true325
	ld.d	$a2, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 596
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 592
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_368
.LBB25_356:
	ori	$a3, $zero, 255
.LBB25_357:                             # %cond.end874
	ld.w	$t1, $sp, 576
	beqz	$t1, .LBB25_359
# %bb.358:                              # %cond.true879
	ld.d	$a3, $s6, 0
	ori	$a4, $s4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 596
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 580
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 592
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
.LBB25_359:                             # %cond.end923
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_361
# %bb.360:                              # %cond.true928
	ld.d	$a5, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 716
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 700
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 712
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltu	$a6, $zero, $t2
	ext.w.b	$a5, $a5
	slti	$t2, $a5, 0
	or	$a6, $a6, $t2
	sra.d	$a5, $a5, $a6
.LBB25_361:                             # %cond.end971
	beqz	$a7, .LBB25_363
# %bb.362:                              # %cond.true976
	ld.d	$a4, $s6, 0
	ori	$a6, $s4, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 652
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 636
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 648
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltu	$a6, $zero, $a7
	ext.w.b	$a4, $a4
	slti	$a7, $a4, 0
	or	$a6, $a6, $a7
	sra.d	$a4, $a4, $a6
.LBB25_363:                             # %cond.end1019
	beqz	$t0, .LBB25_365
# %bb.364:                              # %cond.true1024
	ld.d	$a6, $s6, 0
	ori	$a7, $s4, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 620
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 604
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 616
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a7, $zero, $t0
	ext.w.b	$a6, $a6
	slti	$t0, $a6, 0
	or	$a7, $a7, $t0
	sra.d	$a6, $a6, $a7
	b	.LBB25_366
.LBB25_365:
	ori	$a6, $zero, 255
.LBB25_366:                             # %cond.end1067
	beqz	$t1, .LBB25_368
# %bb.367:                              # %cond.true1072
	ld.d	$a6, $s6, 0
	ori	$a7, $s4, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 596
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 580
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 592
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a2, $zero, $a2
	ext.w.b	$a6, $a6
	slti	$a7, $a6, 0
	or	$a2, $a2, $a7
	sra.d	$a6, $a6, $a2
.LBB25_368:                             # %if.end1120
	ext.w.b	$a2, $a1
	or	$a1, $a1, $a0
	ext.w.b	$a1, $a1
	ext.w.b	$a0, $a0
	slt	$a1, $s0, $a1
	slt	$a7, $a2, $a0
	masknez	$t0, $a0, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $t0
	slt	$t0, $a0, $a2
	masknez	$a0, $a0, $t0
	maskeqz	$a2, $a2, $t0
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a7, $a1
	or	$a0, $a1, $a0
	slt	$a1, $s0, $a0
	ext.w.b	$a2, $a3
	slt	$a3, $s0, $a2
	slt	$a7, $a0, $a2
	maskeqz	$t0, $a0, $a7
	masknez	$a7, $a2, $a7
	or	$a7, $t0, $a7
	slt	$t0, $a2, $a0
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $a2, $t0
	or	$a0, $a0, $a2
	masknez	$a2, $a0, $a3
	maskeqz	$a3, $a7, $a3
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a7, $a2, $a0
	ext.w.b	$a0, $a5
	or	$a1, $a5, $a4
	ext.w.b	$a1, $a1
	ext.w.b	$a2, $a4
	slt	$a1, $s0, $a1
	slt	$a3, $a0, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a2, $a0
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slt	$a1, $s0, $a0
	ext.w.b	$a2, $a6
	slt	$a3, $s0, $a2
	slt	$a4, $a0, $a2
	maskeqz	$a5, $a0, $a4
	masknez	$a4, $a2, $a4
	or	$a4, $a5, $a4
	slt	$a5, $a2, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a2, $a2, $a5
	or	$a0, $a0, $a2
	masknez	$a2, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	st.d	$a7, $sp, 392                   # 8-byte Folded Spill
	andi	$a1, $a7, 128
	or	$a3, $a2, $a0
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_370
# %bb.369:                              # %if.then1196
	ld.d	$a0, $s6, 0
	ori	$a1, $s4, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 628
	st.d	$a0, $sp, 0
	move	$a0, $s3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
.LBB25_370:                             # %if.end1199
	andi	$a0, $a3, 128
	bnez	$a0, .LBB25_372
# %bb.371:                              # %if.then1203
	ld.d	$a0, $s6, 0
	ori	$a1, $s4, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 624
	move	$a2, $a3
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 624
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 626
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	b	.LBB25_373
.LBB25_372:
	st.d	$zero, $sp, 344                 # 8-byte Folded Spill
	st.d	$zero, $sp, 336                 # 8-byte Folded Spill
.LBB25_373:                             # %if.end1207
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.hu	$a0, $sp, 628
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 630
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	b	.LBB25_63
.Lfunc_end25:
	.size	decode_one_macroblock, .Lfunc_end25-decode_one_macroblock
                                        # -- End function
	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.section	.rodata,"a",@progbits
	.globl	SNGL_SCAN
SNGL_SCAN:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.space	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.globl	FIELD_SCAN
FIELD_SCAN:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.space	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.space	2,3
	.size	FIELD_SCAN, 32

	.type	NCBP,@object                    # @NCBP
	.globl	NCBP
NCBP:
	.asciz	"\017"
	.ascii	"\000\001"
	.ascii	"\007\002"
	.ascii	"\013\004"
	.ascii	"\r\b"
	.ascii	"\016\003"
	.ascii	"\003\005"
	.ascii	"\005\n"
	.ascii	"\n\f"
	.ascii	"\f\017"
	.ascii	"\001\007"
	.ascii	"\002\013"
	.ascii	"\004\r"
	.ascii	"\b\016"
	.space	2,6
	.space	2,9
	.space	64
	.asciz	"/"
	.ascii	"\037\020"
	.ascii	"\017\001"
	.ascii	"\000\002"
	.ascii	"\027\004"
	.ascii	"\033\b"
	.ascii	"\035 "
	.ascii	"\036\003"
	.ascii	"\007\005"
	.ascii	"\013\n"
	.ascii	"\r\f"
	.ascii	"\016\017"
	.ascii	"'/"
	.ascii	"+\007"
	.ascii	"-\013"
	.ascii	".\r"
	.ascii	"\020\016"
	.ascii	"\003\006"
	.ascii	"\005\t"
	.ascii	"\n\037"
	.ascii	"\f#"
	.ascii	"\023%"
	.ascii	"\025*"
	.ascii	"\032,"
	.ascii	"\034!"
	.ascii	"#\""
	.ascii	"%$"
	.ascii	"*("
	.ascii	",'"
	.ascii	"\001+"
	.ascii	"\002-"
	.ascii	"\004."
	.ascii	"\b\021"
	.ascii	"\021\022"
	.ascii	"\022\024"
	.ascii	"\024\030"
	.ascii	"\030\023"
	.ascii	"\006\025"
	.ascii	"\t\032"
	.ascii	"\026\034"
	.ascii	"\031\027"
	.ascii	" \033"
	.ascii	"!\035"
	.ascii	"\"\036"
	.ascii	"$\026"
	.ascii	"(\031"
	.space	2,38
	.space	2,41
	.size	NCBP, 192

	.type	BLOCK_STEP,@object              # @BLOCK_STEP
	.globl	BLOCK_STEP
	.p2align	2, 0x0
BLOCK_STEP:
	.space	8
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	BLOCK_STEP, 64

	.type	dequant_coef,@object            # @dequant_coef
	.globl	dequant_coef
	.p2align	2, 0x0
dequant_coef:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.size	dequant_coef, 384

	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.globl	QP_SCALE_CR
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	SNGL_SCAN8x8,@object            # @SNGL_SCAN8x8
	.globl	SNGL_SCAN8x8
SNGL_SCAN8x8:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.space	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.space	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.space	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.space	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.space	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object           # @FIELD_SCAN8x8
	.globl	FIELD_SCAN8x8
FIELD_SCAN8x8:
	.space	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.space	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.space	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.space	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.space	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.space	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.space	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.space	2,7
	.size	FIELD_SCAN8x8, 128

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.globl	SCAN_YUV422
SCAN_YUV422:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	subblk_offset_x,@object         # @subblk_offset_x
	.globl	subblk_offset_x
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	subblk_offset_y,@object         # @subblk_offset_y
	.globl	subblk_offset_y
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	block8x8_idx,@object            # @block8x8_idx
	.data
	.globl	block8x8_idx
	.p2align	2, 0x0
block8x8_idx:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
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
	.word	3                               # 0x3
	.size	block8x8_idx, 192

	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maximum number of supported slices exceeded, please recompile with increased value for MAX_NUM_SLICES"
	.size	.L.str, 102

	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	interpret_mb_mode_B.offset2pdir16x16,@object # @interpret_mb_mode_B.offset2pdir16x16
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir16x16:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	32
	.size	interpret_mb_mode_B.offset2pdir16x16, 48

	.type	interpret_mb_mode_B.offset2pdir16x8,@object # @interpret_mb_mode_B.offset2pdir16x8
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir16x8:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	1                               # 0x1
	.word	1                               # 0x1
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.space	8
	.word	0                               # 0x0
	.word	2                               # 0x2
	.space	8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	8
	.word	2                               # 0x2
	.word	0                               # 0x0
	.space	8
	.word	2                               # 0x2
	.word	1                               # 0x1
	.space	8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.space	8
	.size	interpret_mb_mode_B.offset2pdir16x8, 176

	.type	interpret_mb_mode_B.offset2pdir8x16,@object # @interpret_mb_mode_B.offset2pdir8x16
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir8x16:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	1                               # 0x1
	.word	1                               # 0x1
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.space	8
	.word	0                               # 0x0
	.word	2                               # 0x2
	.space	8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	8
	.word	2                               # 0x2
	.word	0                               # 0x0
	.space	8
	.word	2                               # 0x2
	.word	1                               # 0x1
	.space	8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	interpret_mb_mode_B.offset2pdir8x16, 176

	.type	.L__const.interpret_mb_mode_SI.ICBPTAB,@object # @__const.interpret_mb_mode_SI.ICBPTAB
	.p2align	2, 0x0
.L__const.interpret_mb_mode_SI.ICBPTAB:
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	47                              # 0x2f
	.size	.L__const.interpret_mb_mode_SI.ICBPTAB, 24

	.type	SetB8Mode.p_v2b8,@object        # @SetB8Mode.p_v2b8
	.p2align	2, 0x0
SetB8Mode.p_v2b8:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	11                              # 0xb
	.size	SetB8Mode.p_v2b8, 20

	.type	SetB8Mode.p_v2pd,@object        # @SetB8Mode.p_v2pd
	.p2align	2, 0x0
SetB8Mode.p_v2pd:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.size	SetB8Mode.p_v2pd, 20

	.type	SetB8Mode.b_v2b8,@object        # @SetB8Mode.b_v2b8
	.p2align	2, 0x0
SetB8Mode.b_v2b8:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	11                              # 0xb
	.size	SetB8Mode.b_v2b8, 56

	.type	SetB8Mode.b_v2pd,@object        # @SetB8Mode.b_v2pd
	.p2align	2, 0x0
SetB8Mode.b_v2pd:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4294967295                      # 0xffffffff
	.size	SetB8Mode.b_v2pd, 56

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"illegal chroma intra pred mode!\n"
	.size	.L.str.2, 33

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"temporal direct error\ncolocated block has ref that is unavailable"
	.size	.L.str.3, 66

	.type	predict_nnz_chroma.j_off_tab,@object # @predict_nnz_chroma.j_off_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
predict_nnz_chroma.j_off_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	predict_nnz_chroma.j_off_tab, 48

	.type	readCoeff4x4_CAVLC.incVlc,@object # @readCoeff4x4_CAVLC.incVlc
	.p2align	2, 0x0
readCoeff4x4_CAVLC.incVlc:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	48                              # 0x30
	.word	32768                           # 0x8000
	.size	readCoeff4x4_CAVLC.incVlc, 28

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"readCoeff4x4_CAVLC: invalid block type"
	.size	.L.str.4, 39

	.type	dequant_coef8,@object           # @dequant_coef8
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"mb_qp_delta is out of range"
	.size	.L.str.5, 28

	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	cofuv_blk_x,@object             # @cofuv_blk_x
	.section	.rodata,"a",@progbits
cofuv_blk_x:
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\002\003\002\003"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.size	cofuv_blk_x, 96

	.type	cofuv_blk_y,@object             # @cofuv_blk_y
cofuv_blk_y:
	.ascii	"\004\004\005\005"
	.ascii	"\004\004\005\005"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\004\005\005"
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.ascii	"\006\006\007\007"
	.ascii	"\b\b\t\t"
	.ascii	"\b\b\t\t"
	.ascii	"\n\n\013\013"
	.ascii	"\n\n\013\013"
	.size	cofuv_blk_y, 96

	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
	.section	.rodata.cst32,"aM",@progbits,32
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	decode_one_macroblock.decode_block_scan,@object # @decode_one_macroblock.decode_block_scan
	.section	.rodata.cst16,"aM",@progbits,16
decode_one_macroblock.decode_block_scan:
	.ascii	"\000\001\004\005\002\003\006\007\b\t\f\r\n\013\016\017"
	.size	decode_one_macroblock.decode_block_scan, 16

	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	cofAC8x8_intra,@object          # @cofAC8x8_intra
	.comm	cofAC8x8_intra,8,8
	.type	cofAC8x8_iintra,@object         # @cofAC8x8_iintra
	.comm	cofAC8x8_iintra,8,8
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Partition Mode is not supported"
	.size	.Lstr, 32

	.type	.Lswitch.table.read_one_macroblock,@object # @switch.table.read_one_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.read_one_macroblock:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.space	4
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.size	.Lswitch.table.read_one_macroblock, 24

	.type	.Lswitch.table.readLumaCoeff8x8_CABAC,@object # @switch.table.readLumaCoeff8x8_CABAC
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.readLumaCoeff8x8_CABAC:
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Inter
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.size	.Lswitch.table.readLumaCoeff8x8_CABAC, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linfo_ue
	.addrsig_sym readFieldModeInfo_CABAC
	.addrsig_sym readMB_typeInfo_CABAC
	.addrsig_sym readMB_skip_flagInfo_CABAC
	.addrsig_sym readB8_typeInfo_CABAC
	.addrsig_sym readMB_transform_size_flag_CABAC
	.addrsig_sym readIntraPredMode_CABAC
	.addrsig_sym readCIPredMode_CABAC
	.addrsig_sym readRefFrame_CABAC
	.addrsig_sym linfo_se
	.addrsig_sym readMVD_CABAC
	.addrsig_sym readRunLevel_CABAC
	.addrsig_sym linfo_cbp_intra
	.addrsig_sym linfo_cbp_inter
	.addrsig_sym readCBP_CABAC
	.addrsig_sym readDquant_CABAC
	.addrsig_sym linfo_levrun_inter
	.addrsig_sym linfo_levrun_c2x2
