	.file	"z10.c"
	.text
	.globl	CrossInit                       # -- Begin function CrossInit
	.p2align	5
	.type	CrossInit,@function
CrossInit:                              # @CrossInit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 140
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s1, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s3, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$fp, $s1, $a1
	move	$s0, $a0
	st.w	$a2, $s3, 0
	beqz	$fp, .LBB0_2
# %bb.1:                                # %if.else7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$fp, $a0, 0
	ld.d	$a0, $fp, 0
	alsl.d	$a1, $a2, $s1, 3
	b	.LBB0_3
.LBB0_2:                                # %if.then5
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$fp, $a0
.LBB0_3:                                # %if.end13
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 140
	st.h	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	st.w	$zero, $fp, 48
	st.w	$zero, $fp, 60
	pcalau12i	$s4, %pc_hi20(RootCross)
	ld.d	$a1, $s4, %pc_lo12(RootCross)
	st.d	$zero, $fp, 72
	st.h	$zero, $fp, 80
	st.d	$s0, $fp, 64
	st.d	$fp, $s0, 88
	bnez	$a1, .LBB0_8
# %bb.4:                                # %if.then27
	ld.bu	$a0, $s2, 141
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	st.w	$a0, $s3, 0
	beqz	$a1, .LBB0_6
# %bb.5:                                # %if.else41
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a2, $a0, 0
	b	.LBB0_7
.LBB0_6:                                # %if.then39
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
	st.d	$a0, $a2, 0
.LBB0_7:                                # %if.end50
	ori	$a0, $zero, 141
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s4, %pc_lo12(RootCross)
.LBB0_8:                                # %if.end65
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB0_10
# %bb.9:                                # %if.else79
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a3, $a2, 0
	b	.LBB0_11
.LBB0_10:                               # %if.then77
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(RootCross)
.LBB0_11:                               # %if.end88
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a2, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	pcalau12i	$a4, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a4, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$a1, $a4, 0
	beqz	$a1, .LBB0_14
# %bb.12:                               # %cond.end130
	ld.d	$a5, $a1, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a3, 0
	ld.d	$a1, $a4, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a1, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a1, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a1, $a3, 0
	st.d	$fp, $a4, 0
	beqz	$a1, .LBB0_16
# %bb.13:                               # %cond.end130.cond.false139_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB0_15
.LBB0_14:                               # %cond.end130.thread
	st.d	$fp, $a4, 0
	move	$a1, $a0
.LBB0_15:                               # %cond.false139
	ld.d	$a2, $fp, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_16:                               # %cond.end163
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	CrossInit, .Lfunc_end0-CrossInit
                                        # -- End function
	.globl	CrossMake                       # -- Begin function CrossMake
	.p2align	5
	.type	CrossMake,@function
CrossMake:                              # @CrossMake
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a3, %got_pc_lo12(zz_lengths)
	ld.bu	$a3, $s4, 6
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$s3, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$s5, $a4, %got_pc_lo12(zz_size)
	slli.d	$a4, $a3, 3
	ldx.d	$s0, $s3, $a4
	move	$s1, $a2
	move	$fp, $a1
	move	$s2, $a0
	st.w	$a3, $s5, 0
	beqz	$s0, .LBB1_2
# %bb.1:                                # %if.else7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
	ld.d	$a0, $s0, 0
	alsl.d	$a1, $a3, $s3, 3
	b	.LBB1_3
.LBB1_2:                                # %if.then5
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
.LBB1_3:                                # %if.end13
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 6
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 0
	ld.hu	$a0, $s0, 42
	st.b	$s1, $s0, 41
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4091
	and	$a1, $a0, $a1
	ld.bu	$a0, $s4, 2
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.h	$a1, $s0, 42
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s3, $a1
	st.w	$a0, $s5, 0
	beqz	$s1, .LBB1_5
# %bb.4:                                # %if.else40
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a1, $a0, 0
	b	.LBB1_6
.LBB1_5:                                # %if.then38
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s1, $a0
	st.d	$a0, $a1, 0
.LBB1_6:                                # %if.end49
	ori	$a0, $zero, 2
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 0
	ld.bu	$a2, $s4, 0
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s2, $s1, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.else77
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB1_9
.LBB1_8:                                # %if.then75
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_9:                                # %cond.end128
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s8, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s6, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s6, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s8, 0
	beqz	$a0, .LBB1_11
# %bb.10:                               # %cond.false137
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_11:                               # %cond.end161
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB1_13
# %bb.12:                               # %if.else176
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB1_14
.LBB1_13:                               # %if.then174
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %cond.end231
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s8, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s6, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s8, 0
	beqz	$fp, .LBB1_17
# %bb.15:                               # %cond.end231
	beqz	$a0, .LBB1_17
# %bb.16:                               # %cond.false240
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_17:                               # %cond.end264
	move	$a0, $s0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	CrossMake, .Lfunc_end1-CrossMake
                                        # -- End function
	.globl	GallTargEval                    # -- Begin function GallTargEval
	.p2align	5
	.type	GallTargEval,@function
GallTargEval:                           # @GallTargEval
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 88
	move	$s0, $a1
	beqz	$s3, .LBB2_6
# %bb.1:                                # %if.end
	ld.hu	$a0, $s0, 2
	ld.hu	$a1, $s3, 80
	beq	$a0, $a1, .LBB2_3
.LBB2_2:                                # %if.then5
	st.h	$a0, $s3, 80
	st.w	$zero, $s3, 60
.LBB2_3:                                # %if.end8
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 60
	move	$s2, $a0
	addi.w	$s1, $a1, 1
	st.w	$s1, $s3, 60
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -506
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB2_5
# %bb.4:                                # %if.then14
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $s0
	move	$a5, $s2
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s3, 60
.LBB2_5:                                # %if.end17
	addi.d	$a0, $sp, 16
	addi.d	$s3, $sp, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 38
	stx.h	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a2, $zero, 132
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CrossMake)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB2_6:                                # %if.then
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 88
	ld.hu	$a0, $s0, 2
	ld.hu	$a1, $s3, 80
	bne	$a0, $a1, .LBB2_2
	b	.LBB2_3
.Lfunc_end2:
	.size	GallTargEval, .Lfunc_end2-GallTargEval
                                        # -- End function
	.globl	CrossAddTag                     # -- Begin function CrossAddTag
	.p2align	5
	.type	CrossAddTag,@function
CrossAddTag:                            # @CrossAddTag
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB3_18
# %bb.1:                                # %for.cond3.preheader.preheader
	ori	$a2, $zero, 10
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %for.inc140
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $a1, 8
	beq	$a1, $a0, .LBB3_18
.LBB3_3:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_4:                                # %for.cond3
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB3_4
# %bb.5:                                # %for.cond3
                                        #   in Loop: Header=BB3_3 Depth=1
	bne	$a4, $a2, .LBB3_2
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a4, $a3, 80
	ld.hu	$a4, $a4, 41
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_2
# %bb.7:                                # %if.then
	ld.d	$a2, $a3, 8
	.p2align	4, , 16
.LBB3_8:                                # %for.cond21
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB3_8
# %bb.9:                                # %for.cond21
	addi.d	$a3, $a3, -11
	ori	$a4, $zero, 1
	bltu	$a4, $a3, .LBB3_62
# %bb.10:                               # %land.lhs.true43
	ld.bu	$a2, $a2, 64
	bnez	$a2, .LBB3_62
# %bb.11:                               # %if.then46
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a4, $a2, %got_pc_lo12(xx_link)
	ld.d	$a5, $a1, 24
	st.d	$a1, $a4, 0
	beq	$a5, $a1, .LBB3_13
# %bb.12:                               # %cond.false
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a1, 16
	st.d	$a5, $a2, 0
	st.d	$a3, $a5, 16
	st.d	$a5, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	b	.LBB3_14
.LBB3_13:
	move	$a5, $zero
.LBB3_14:                               # %cond.end
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	ld.d	$a6, $a1, 8
	st.d	$a5, $a2, 0
	st.d	$a1, $a3, 0
	beq	$a6, $a1, .LBB3_16
# %bb.15:                               # %cond.false79
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a6, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a6, 0
	ld.d	$a6, $a3, 0
	ld.d	$a1, $a5, 0
	ld.d	$a5, $a6, 0
	st.d	$a1, $a5, 8
	st.d	$a6, $a6, 0
	ld.d	$a1, $a4, 0
	st.d	$a6, $a6, 8
.LBB3_16:                               # %cond.end101
	ld.bu	$a4, $a1, 32
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	addi.d	$a6, $a4, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a1, 33
	add.d	$a4, $a5, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a7, $a6
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_size)
	ld.d	$a6, $a6, %got_pc_lo12(zz_size)
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $a5, $a7
	st.d	$a1, $a3, 0
	st.w	$a4, $a6, 0
	st.d	$a7, $a1, 0
	ld.w	$a4, $a6, 0
	ld.d	$a3, $a3, 0
	ld.d	$a1, $a2, 0
	slli.d	$a2, $a4, 3
	stx.d	$a3, $a5, $a2
	ld.d	$a2, $a1, 24
	bne	$a2, $a1, .LBB3_18
# %bb.17:                               # %if.then136
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_18:                               # %if.then147
	ld.d	$a1, $a0, 80
	ld.d	$s4, $a1, 8
	beq	$s4, $a1, .LBB3_62
# %bb.19:                               # %for.cond160.preheader.preheader
	ori	$a2, $zero, 2
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               # %for.inc192
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.d	$s4, $s4, 8
	beq	$s4, $a1, .LBB3_62
.LBB3_21:                               # %for.cond160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	move	$s8, $s4
	.p2align	4, , 16
.LBB3_22:                               # %for.cond160
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a3, $s8, 32
	beqz	$a3, .LBB3_22
# %bb.23:                               # %for.end171
                                        #   in Loop: Header=BB3_21 Depth=1
	addi.d	$a3, $a3, -144
	bltu	$a2, $a3, .LBB3_20
# %bb.24:                               # %land.lhs.true183
                                        #   in Loop: Header=BB3_21 Depth=1
	ld.hu	$a3, $s8, 41
	andi	$a3, $a3, 1
	beqz	$a3, .LBB3_20
# %bb.25:                               # %if.then199
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s6, 10
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s5, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s7, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$fp, $s5, $a1
	st.w	$a2, $s7, 0
	beqz	$fp, .LBB3_27
# %bb.26:                               # %if.else212
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB3_28
.LBB3_27:                               # %if.then210
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$fp, $a0
	move	$a0, $s0
	st.d	$fp, $a1, 0
.LBB3_28:                               # %if.end221
	ori	$a1, $zero, 10
	st.b	$a1, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	st.d	$s8, $fp, 80
	ld.d	$s1, $a0, 80
	ld.d	$a1, $s1, 88
	bnez	$a1, .LBB3_30
# %bb.29:                               # %if.then.i
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB3_30:                               # %if.end.i
	ld.hu	$s3, $a0, 34
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s0, $a0, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(crtab_getnext)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -492
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB3_32
# %bb.31:                               # %if.then4.i
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_32:                               # %CrossGenTag.exit
	ld.hu	$a2, $s1, 34
	ld.wu	$a0, $s1, 36
	bstrpick.d	$a3, $a0, 19, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	addi.d	$a0, $sp, 24
	move	$a4, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	addi.d	$a1, $sp, 24
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s6, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s5, $a1
	move	$s0, $a0
	st.w	$a2, $s7, 0
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB3_34
# %bb.33:                               # %if.else251
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a0, $a2, 0
	b	.LBB3_35
.LBB3_34:                               # %if.then249
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB3_35:                               # %cond.end306
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s2, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s3, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	st.d	$a1, $s3, 0
	st.d	$fp, $s6, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s3, 0
	st.d	$s0, $s6, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_38
# %bb.36:                               # %cond.end306
	beqz	$a1, .LBB3_38
# %bb.37:                               # %cond.false315
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_38:                               # %cond.end339
	ld.bu	$a1, $s8, 32
	ori	$a2, $zero, 144
	beq	$a1, $a2, .LBB3_53
# %bb.39:                               # %cond.end339
	ori	$a2, $zero, 145
	beq	$a1, $a2, .LBB3_47
# %bb.40:                               # %cond.end339
	ori	$a2, $zero, 146
	bne	$a1, $a2, .LBB3_54
# %bb.41:                               # %for.cond397.preheader
	ld.d	$s4, $a0, 8
	beq	$s4, $a0, .LBB3_54
# %bb.42:
	ori	$a1, $zero, 10
.LBB3_43:                               # %for.cond404.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
	move	$a2, $s4
	.p2align	4, , 16
.LBB3_44:                               # %for.cond404
                                        #   Parent Loop BB3_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB3_44
# %bb.45:                               # %for.cond404
                                        #   in Loop: Header=BB3_43 Depth=1
	bne	$a3, $a1, .LBB3_54
# %bb.46:                               # %for.inc423
                                        #   in Loop: Header=BB3_43 Depth=1
	ld.d	$s4, $s4, 8
	bne	$s4, $a0, .LBB3_43
	b	.LBB3_54
.LBB3_47:                               # %sw.bb347
	ld.d	$s4, $a0, 8
	beq	$s4, $a0, .LBB3_54
# %bb.48:                               # %for.cond363.preheader
	move	$a0, $s4
	.p2align	4, , 16
.LBB3_49:                               # %for.cond363
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB3_49
# %bb.50:                               # %for.cond363
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB3_54
# %bb.51:                               # %land.lhs.true380
	ld.d	$a0, $a0, 80
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 144
	bne	$a0, $a1, .LBB3_54
# %bb.52:                               # %if.then387
	ld.d	$s4, $s4, 8
	b	.LBB3_54
.LBB3_53:                               # %sw.bb
	ld.d	$s4, $a0, 8
.LBB3_54:                               # %sw.epilog
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB3_56
# %bb.55:                               # %if.else441
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB3_57
.LBB3_56:                               # %if.then439
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_57:                               # %if.end450
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s3, 0
	st.d	$s4, $s6, 0
	beqz	$s4, .LBB3_60
# %bb.58:                               # %cond.end496
	ld.d	$a1, $s4, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s3, 0
	st.d	$fp, $s6, 0
	beqz	$a1, .LBB3_62
# %bb.59:                               # %cond.end496.cond.false505_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB3_61
.LBB3_60:                               # %cond.end496.thread
	st.d	$fp, $s6, 0
	move	$a1, $a0
.LBB3_61:                               # %cond.false505
	ld.d	$a2, $fp, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_62:                               # %if.end532
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.Lfunc_end3:
	.size	CrossAddTag, .Lfunc_end3-CrossAddTag
                                        # -- End function
	.globl	CrossExpand                     # -- Begin function CrossExpand
	.p2align	5
	.type	CrossExpand,@function
CrossExpand:                            # @CrossExpand
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1216
	st.d	$ra, $sp, 1208                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1128                  # 8-byte Folded Spill
	move	$s3, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 254
	ori	$a5, $zero, 6
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $a3
	move	$s1, $a2
	move	$s5, $a1
	beq	$a0, $a5, .LBB4_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %if.end
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 8
	ld.d	$a0, $s3, 0
	beq	$a1, $a0, .LBB4_4
# %bb.3:                                # %if.then14
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
.LBB4_4:                                # %for.cond.preheader
	addi.d	$s0, $s3, 32
	.p2align	4, , 16
.LBB4_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_5
# %bb.6:                                # %for.end
	st.d	$zero, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	st.d	$zero, $sp, 0
	move	$a1, $s5
	move	$a2, $s1
	move	$a6, $s4
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, 8
	move	$s8, $a0
	.p2align	4, , 16
.LBB4_7:                                # %for.cond39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB4_7
# %bb.8:                                # %for.cond39
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_10
# %bb.9:                                # %if.then56
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_10:                               # %if.end58
	ld.bu	$a0, $s8, 32
	ld.d	$s1, $fp, 80
	addi.d	$a0, $a0, -13
	addi.w	$a1, $zero, -2
	addi.d	$a4, $s8, 32
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB4_12
# %bb.11:                               # %if.then547.thread175
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_28
.LBB4_12:                               # %cond.false
	ld.bu	$a0, $s8, 64
	addi.d	$fp, $s8, 64
	beqz	$a0, .LBB4_22
# %bb.13:                               # %cond.false74
	move	$s7, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_26
# %bb.14:                               # %cond.false81
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.15:                               # %cond.end99
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_63
# %bb.16:                               # %sw.bb106
	ld.d	$s2, $s1, 88
	bnez	$s2, .LBB4_18
# %bb.17:                               # %if.then109
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 88
.LBB4_18:                               # %if.end110
	pcalau12i	$a0, %got_pc_hi20(MomentSym)
	ld.d	$a0, $a0, %got_pc_lo12(MomentSym)
	ld.d	$a0, $a0, 0
	bne	$s1, $a0, .LBB4_20
# %bb.19:                               # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_104
.LBB4_20:                               # %if.else
	ld.hu	$a0, $s1, 41
	andi	$a1, $a0, 2
	move	$a0, $s1
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	bnez	$a1, .LBB4_74
# %bb.21:                               # %if.then121
	move	$s1, $a0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a6, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_75
.LBB4_22:                               # %sw.bb103
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %if.then547
	move	$a0, $zero
.LBB4_24:                               # %if.then547
	bnez	$a0, .LBB4_28
# %bb.25:                               # %if.then552
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a6, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_28
.LBB4_26:
	ori	$s6, $zero, 134
	ld.hu	$a0, $s1, 41
	andi	$a0, $a0, 2
	bnez	$a0, .LBB4_55
.LBB4_27:                               # %if.then547.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a6, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %if.end558
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 2
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s5, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s6, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s5, $a1
	st.w	$a0, $s6, 0
	beqz	$s2, .LBB4_30
# %bb.29:                               # %if.else572
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
	b	.LBB4_31
.LBB4_30:                               # %if.then570
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB4_31:                               # %if.end581
	ori	$s7, $zero, 2
	st.b	$s7, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$s8, $a0, %got_pc_lo12(StartSym)
	st.d	$s2, $s2, 0
	st.d	$s1, $s2, 80
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s8, 0
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB4_37
# %bb.32:                               # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s4, $s3, 80
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_33:                               # %if.else613
                                        #   in Loop: Header=BB4_35 Depth=1
	st.d	$s2, $fp, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
.LBB4_34:                               # %if.end622
                                        #   in Loop: Header=BB4_35 Depth=1
	st.b	$s7, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, 48
	addi.d	$s4, $s2, 80
	st.d	$a0, $s2, 80
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	ld.d	$a0, $a0, 48
	ld.d	$a1, $s8, 0
	move	$s3, $s2
	beq	$a0, $a1, .LBB4_37
.LBB4_35:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 2
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s5, $a1
	st.w	$a0, $s6, 0
	bnez	$s2, .LBB4_33
# %bb.36:                               # %if.then611
                                        #   in Loop: Header=BB4_35 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
	b	.LBB4_34
.LBB4_37:                               # %while.end
	ld.bu	$a0, $s0, 82
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s5, $a1
	st.w	$a0, $s6, 0
	beqz	$s3, .LBB4_39
# %bb.38:                               # %if.else654
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
	b	.LBB4_40
.LBB4_39:                               # %if.then652
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB4_40:                               # %if.end663
	ori	$a0, $zero, 82
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 0
	ld.bu	$a2, $s0, 0
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB4_42
# %bb.41:                               # %if.else691
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB4_43
.LBB4_42:                               # %if.then689
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %cond.end746
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s3, $a4, 0
	beqz	$a0, .LBB4_45
# %bb.44:                               # %cond.false755
	ld.d	$a2, $s3, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s3, 16
	st.d	$s3, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB4_45:                               # %if.end781
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
.LBB4_46:                               # %if.end781
	move	$a0, $s4
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB4_48
# %bb.47:                               # %cond.false820
	ld.d	$a1, $s3, 16
	st.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 24
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $s4, 16
	st.d	$s4, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a3, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a3, $s4, 16
	st.d	$s4, $a3, 24
	b	.LBB4_49
.LBB4_48:                               # %cond.end811.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	st.d	$s4, $a1, 0
	st.d	$zero, $a2, 0
.LBB4_49:                               # %cond.end844
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_51
# %bb.50:                               # %if.then852
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %if.end854
	ld.d	$a0, $s4, 80
	beq	$a0, $s1, .LBB4_53
# %bb.52:                               # %if.then858
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_53:                               # %if.end860
	move	$a0, $s4
	ld.d	$s8, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1208                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1216
	ret
.LBB4_54:
	ori	$s6, $zero, 128
	ld.hu	$a0, $s1, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB4_27
.LBB4_55:                               # %if.then202
	ld.d	$a0, $s1, 88
	bnez	$a0, .LBB4_57
# %bb.56:                               # %if.end207
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 88
	beqz	$a0, .LBB4_105
.LBB4_57:                               # %if.end213
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 140
	beq	$a0, $a1, .LBB4_59
# %bb.58:                               # %if.then219
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_59:                               # %if.end221
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.hu	$s8, $s8, 34
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(crtab_getnext)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -507
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB4_61
# %bb.60:                               # %if.then228
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	move	$a4, $s0
	move	$a5, $s8
	move	$a6, $s5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_61:                               # %if.end231
	addi.d	$a0, $sp, 616
	addi.d	$fp, $sp, 616
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 95
	stx.h	$a1, $a0, $fp
	move	$a0, $s5
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 616
	move	$a2, $s7
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(CrossMake)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a1, %got_pc_lo12(zz_lengths)
	ldx.bu	$a2, $a4, $s6
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s8, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $s8, $a1
	move	$s7, $a0
	st.w	$a2, $a5, 0
	beqz	$s5, .LBB4_64
# %bb.62:                               # %if.else257
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s5, $a0, 0
	ld.d	$a0, $s5, 0
	alsl.d	$a1, $a2, $s8, 3
	b	.LBB4_65
.LBB4_63:
	ori	$s6, $zero, 127
	ld.hu	$a0, $s1, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB4_27
	b	.LBB4_55
.LBB4_64:                               # %if.then255
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$fp, $a4
	move	$s2, $a5
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a5, $s2
	move	$a4, $fp
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s5, $a0
.LBB4_65:                               # %if.end266
	st.d	$a0, $a1, 0
	st.b	$s6, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 0
	ld.bu	$a2, $a4, 0
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s7, $s5, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a5, 0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_67
# %bb.66:                               # %if.else296
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB4_68
.LBB4_67:                               # %if.then294
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s0, $a4
	move	$s2, $a5
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a5, $s2
	move	$a4, $s0
.LBB4_68:                               # %cond.end351
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s0, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s2, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s2, 0
	st.d	$s5, $s3, 0
	ld.d	$a1, $s5, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s6, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s6, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s2, 0
	st.d	$s7, $s3, 0
	beqz	$s7, .LBB4_71
# %bb.69:                               # %cond.end351
	beqz	$a0, .LBB4_71
# %bb.70:                               # %cond.false360
	ld.d	$a1, $s7, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $s7, 16
	st.d	$s7, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_71:                               # %cond.end384
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB4_93
# %bb.72:                               # %if.then388
	ld.bu	$a2, $a4, 148
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB4_91
# %bb.73:                               # %if.else402
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB4_92
.LBB4_74:
	move	$s1, $a0
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB4_75:                               # %if.end125
	ld.d	$s3, $s2, 24
	ori	$s8, $zero, 2
	addi.d	$s0, $sp, 88
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s4, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s7, $a0, %pc_lo12(.L.str.17)
	b	.LBB4_77
	.p2align	4, , 16
.LBB4_76:                               # %if.end164
                                        #   in Loop: Header=BB4_77 Depth=1
	addi.d	$a4, $sp, 104
	addi.d	$a5, $sp, 102
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 76
	st.d	$s0, $sp, 0
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_83
.LBB4_77:                               # %for.cond132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_79 Depth 2
	ld.d	$s3, $s3, 24
	beq	$s3, $s2, .LBB4_82
# %bb.78:                               # %for.cond139.preheader
                                        #   in Loop: Header=BB4_77 Depth=1
	move	$s6, $s3
	.p2align	4, , 16
.LBB4_79:                               # %for.cond139
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB4_79
# %bb.80:                               # %for.cond139
                                        #   in Loop: Header=BB4_77 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s8, .LBB4_76
# %bb.81:                               # %if.then162
                                        #   in Loop: Header=BB4_77 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s4
	move	$a3, $zero
	move	$a5, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_76
.LBB4_82:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB4_24
.LBB4_83:                               # %if.then170
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$s2, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $s2, 0
	st.w	$zero, $sp, 616
	beq	$s6, $a0, .LBB4_85
# %bb.84:                               # %if.then173
	addi.d	$a1, $sp, 616
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(SetScope)
	jirl	$ra, $ra, 0
.LBB4_85:                               # %if.end175
	ld.hu	$a0, $sp, 102
	ld.d	$a1, $sp, 80
	ld.w	$a2, $sp, 76
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 616
	ori	$a2, $zero, 1
	move	$s4, $a0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	blt	$a1, $a2, .LBB4_88
# %bb.86:                               # %for.body180.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_87:                               # %for.body180
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 616
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB4_87
.LBB4_88:                               # %for.end182
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$s6, $a0, .LBB4_90
# %bb.89:                               # %if.then185
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
.LBB4_90:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$s4, .LBB4_46
	b	.LBB4_24
.LBB4_91:                               # %if.then400
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s7, $a4
	move	$fp, $a5
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a5, $fp
	move	$a4, $s7
	st.d	$a0, $s3, 0
.LBB4_92:                               # %if.end411
	ori	$a1, $zero, 148
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
.LBB4_93:                               # %if.end426
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB4_95
# %bb.94:                               # %if.else440
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB4_96
.LBB4_95:                               # %if.then438
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
.LBB4_96:                               # %if.end449
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s2, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s3, 0
	beqz	$a1, .LBB4_99
# %bb.97:                               # %cond.end495
	ld.d	$a2, $a1, 0
	st.d	$a2, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s6, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s2, 0
	st.d	$s5, $s3, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB4_101
# %bb.98:                               # %cond.end495.cond.false504_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB4_100
.LBB4_99:                               # %cond.end495.thread
	st.d	$a0, $s2, 0
	st.d	$s5, $s3, 0
	move	$a1, $a0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
.LBB4_100:                              # %cond.false504
	ld.d	$a2, $s5, 16
	st.d	$a0, $s5, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$s5, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB4_101:                              # %cond.end528
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_23
# %bb.102:                              # %land.lhs.true531
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $sp, 88
	addi.d	$a3, $sp, 616
	addi.d	$a4, $sp, 104
	addi.d	$a5, $sp, 102
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 76
	st.d	$a1, $sp, 0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_23
# %bb.103:                              # %if.then536
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 102
	ld.d	$a1, $sp, 80
	ld.w	$a2, $sp, 76
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	bnez	$s4, .LBB4_46
	b	.LBB4_24
.LBB4_104:                              # %if.then119
	pcaddu18i	$ra, %call36(StartMoment)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $zero
	bnez	$s4, .LBB4_46
	b	.LBB4_24
.LBB4_105:                              # %if.then211
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	CrossExpand, .Lfunc_end4-CrossExpand
                                        # -- End function
	.p2align	5                               # -- Begin function crtab_getnext
	.type	crtab_getnext,@function
crtab_getnext:                          # @crtab_getnext
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(crossref_tab)
	ld.d	$s1, $s4, %pc_lo12(crossref_tab)
	move	$fp, $a1
	move	$s0, $a0
	beqz	$s1, .LBB5_2
# %bb.1:                                # %entry.if.end_crit_edge
	ld.w	$s5, $s1, 0
	b	.LBB5_5
.LBB5_2:                                # %if.then
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB5_4
# %bb.3:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %crtab_new.exit
	ori	$s5, $zero, 100
	st.w	$s5, $s1, 0
	addi.d	$a0, $s1, 4
	ori	$a2, $zero, 804
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s1, $s4, %pc_lo12(crossref_tab)
.LBB5_5:                                # %if.end
	add.d	$s6, $fp, $s0
	mod.du	$s3, $s6, $s5
	addi.d	$s7, $s1, 8
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s7, $a0
	bnez	$a0, .LBB5_14
.LBB5_6:                                # %for.end
	ld.w	$a0, $s1, 4
	bne	$a0, $s5, .LBB5_21
# %bb.7:                                # %if.then15
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	slli.w	$s8, $s5, 1
	slli.d	$s4, $s8, 3
	addi.d	$a0, $s4, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB5_9
# %bb.8:                                # %if.then.i.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_9:                                # %if.end.i.i
	st.w	$s8, $s2, 0
	st.w	$zero, $s2, 4
	ori	$a1, $zero, 1
	addi.d	$s3, $s2, 8
	blt	$s5, $a1, .LBB5_11
# %bb.10:                               # %for.body.lr.ph.i.i
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
.LBB5_11:                               # %crtab_new.exit.i
	ld.w	$a0, $s1, 0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB5_22
# %bb.12:                               # %for.body.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_13:                               # %for.inc
                                        #   in Loop: Header=BB5_14 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_6
.LBB5_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	bne	$a1, $s0, .LBB5_13
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_14 Depth=1
	ld.hu	$a1, $a0, 16
	bne	$a1, $fp, .LBB5_13
# %bb.16:                               # %if.then10
	ld.w	$a1, $a0, 20
	addi.w	$a1, $a1, 1
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_17:                               # %for.inc.i
                                        #   in Loop: Header=BB5_18 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB5_22
.LBB5_18:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s7, $a3
	beqz	$a3, .LBB5_17
	.p2align	4, , 16
.LBB5_19:                               # %while.body.i
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 8
	ld.hu	$a5, $a3, 16
	add.d	$a4, $a5, $a4
	mod.du	$a4, $a4, $s8
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $s3, $a4
	ld.d	$a6, $a3, 0
	st.d	$a5, $a3, 0
	stx.d	$a3, $s3, $a4
	addi.d	$a1, $a1, 1
	move	$a3, $a6
	bnez	$a6, .LBB5_19
# %bb.20:                               # %while.cond.for.inc_crit_edge.i
                                        #   in Loop: Header=BB5_18 Depth=1
	st.w	$a1, $s2, 4
	b	.LBB5_17
.LBB5_21:
	move	$s2, $s1
	b	.LBB5_23
.LBB5_22:                               # %crtab_rehash.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s2, $s4, %pc_lo12(crossref_tab)
	mod.du	$s3, $s6, $s8
.LBB5_23:                               # %if.end23
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a2, $a0, %got_pc_lo12(zz_size)
	ld.d	$a0, $a1, 192
	ori	$a3, $zero, 24
	st.w	$a3, $a2, 0
	beqz	$a0, .LBB5_25
# %bb.24:                               # %if.else31
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 192
	b	.LBB5_26
.LBB5_25:                               # %if.then29
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, %pc_lo12(crossref_tab)
.LBB5_26:                               # %if.end38
	alsl.d	$a1, $s3, $s2, 3
	ld.d	$a1, $a1, 8
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, %pc_lo12(crossref_tab)
	st.d	$s0, $a0, 8
	ld.w	$a2, $a1, 4
	st.h	$fp, $a0, 16
	alsl.d	$a3, $s3, $a1, 3
	st.d	$a0, $a3, 8
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 4
	ori	$a1, $zero, 1
.LBB5_27:                               # %cleanup
	st.w	$a1, $a0, 20
	move	$a0, $a1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end5:
	.size	crtab_getnext, .Lfunc_end5-crtab_getnext
                                        # -- End function
	.globl	CrossSequence                   # -- Begin function CrossSequence
	.p2align	5
	.type	CrossSequence,@function
CrossSequence:                          # @CrossSequence
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(AllowCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(AllowCrossDb)
	ld.w	$a1, $a1, 0
	move	$s2, $a0
	beqz	$a1, .LBB6_60
# %bb.1:                                # %if.end2
	ld.bu	$a0, $s2, 32
	andi	$a0, $a0, 254
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB6_3
# %bb.2:                                # %if.then10
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %if.end12
	ld.bu	$s3, $s2, 41
	ld.d	$fp, $s2, 8
	.p2align	4, , 16
.LBB6_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB6_4
# %bb.5:                                # %for.cond
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_62
# %bb.6:                                # %if.end34
	ld.d	$a0, $fp, 80
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB6_63
.LBB6_7:                                # %if.end38
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 140
	beq	$a0, $a1, .LBB6_9
.LBB6_8:                                # %if.then45
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_9:                                # %if.end47
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 8
	move	$s0, $a0
	.p2align	4, , 16
.LBB6_10:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB6_10
# %bb.11:                               # %for.end68
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $s6, 0
	beq	$a1, $a0, .LBB6_13
# %bb.12:                               # %cond.false
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB6_13:                               # %cond.end
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s8, 0
	beq	$a1, $a0, .LBB6_15
# %bb.14:                               # %cond.false107
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a1, 8
.LBB6_15:                               # %cond.end129
	ld.bu	$a1, $a0, 32
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$s7, $a2, %got_pc_lo12(zz_lengths)
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s7, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a3, $a2, %got_pc_lo12(zz_size)
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s1, $a2
	st.w	$a1, $a3, 0
	st.d	$a0, $s8, 0
	st.d	$a2, $a0, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	ld.d	$a0, $s2, 24
	bne	$a0, $s2, .LBB6_17
# %bb.16:                               # %if.then164
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %if.end166
	addi.d	$a0, $s3, -127
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB6_161
# %bb.18:                               # %if.end166
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.d	$s2, $s0, 32
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	jr	$a0
.LBB6_19:                               # %sw.bb
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB6_21
# %bb.20:                               # %if.then172
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_21:                               # %if.end174
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 80
	ld.hu	$a1, $a0, 41
	lu12i.w	$a2, 4
	and	$a1, $a1, $a2
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB6_64
# %bb.22:                               # %for.cond183.preheader
	ld.d	$s2, $a0, 8
	beq	$s2, $a0, .LBB6_64
# %bb.23:                               # %for.cond191.preheader.lr.ph
	move	$s3, $zero
	move	$s5, $zero
	addi.d	$a1, $s0, 64
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$s4, 2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	b	.LBB6_26
	.p2align	4, , 16
.LBB6_24:                               # %cond.end735
                                        #   in Loop: Header=BB6_26 Depth=1
	lu12i.w	$s4, 2
	ld.bu	$a0, $a1, 32
	addi.d	$a2, $a0, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a1, 33
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a2, $a0, 3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.d	$a1, $s8, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
	st.d	$a2, $a1, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	move	$a0, $s7
	move	$s7, $s1
	move	$s1, $a3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
.LBB6_25:                               # %for.inc769
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $a0, .LBB6_65
.LBB6_26:                               # %for.cond191.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
	move	$fp, $s2
	.p2align	4, , 16
.LBB6_27:                               # %for.cond191
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB6_27
# %bb.28:                               # %for.end202
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.hu	$a1, $fp, 41
	and	$a1, $a1, $s4
	beqz	$a1, .LBB6_25
# %bb.29:                               # %if.then209
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.bu	$a0, $s7, 2
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vst	$vr0, $sp, 176
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $s1, $a1
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 144
	st.d	$zero, $sp, 152
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s5, .LBB6_31
# %bb.30:                               # %if.else226
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$s5, $s8, 0
	ld.d	$a1, $s5, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB6_32
.LBB6_31:                               # %if.then224
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s8, 0
.LBB6_32:                               # %if.end235
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.bu	$a0, $s7, 17
	ori	$a1, $zero, 2
	st.b	$a1, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$fp, $s5, 80
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s1, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s3, .LBB6_34
# %bb.33:                               # %if.else264
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$s3, $s8, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB6_35
.LBB6_34:                               # %if.then262
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s8, 0
.LBB6_35:                               # %if.end273
                                        #   in Loop: Header=BB6_26 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 0
	ld.bu	$a2, $s7, 0
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB6_37
# %bb.36:                               # %if.else301
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB6_38
.LBB6_37:                               # %if.then299
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_38:                               # %cond.end356
                                        #   in Loop: Header=BB6_26 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s4, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s4, 0
	st.d	$s3, $s8, 0
	ld.d	$a1, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$s5, $s8, 0
	beqz	$a0, .LBB6_40
# %bb.39:                               # %cond.false365
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_40:                               # %cond.end389
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.bu	$a0, $s7, 82
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $s1, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s6, .LBB6_42
# %bb.41:                               # %if.else404
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$s6, $s8, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB6_43
.LBB6_42:                               # %if.then402
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s8, 0
.LBB6_43:                               # %if.end413
                                        #   in Loop: Header=BB6_26 Depth=1
	ori	$a0, $zero, 82
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 0
	ld.bu	$a2, $s7, 0
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB6_45
# %bb.44:                               # %if.else441
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB6_46
.LBB6_45:                               # %if.then439
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_46:                               # %cond.end496
                                        #   in Loop: Header=BB6_26 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s4, 0
	st.d	$s6, $s8, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	move	$s1, $s8
	st.d	$s0, $s8, 0
	beqz	$a0, .LBB6_48
# %bb.47:                               # %cond.false505
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_48:                               # %cond.end529
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.bu	$a0, $s7, 17
	slli.d	$a1, $a0, 3
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s7, $s8, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s7, .LBB6_50
# %bb.49:                               # %if.else544
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$s7, $s1, 0
	ld.d	$a1, $s7, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a1, $a0, 0
	b	.LBB6_51
.LBB6_50:                               # %if.then542
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s1, 0
.LBB6_51:                               # %if.end553
                                        #   in Loop: Header=BB6_26 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $s7, 32
	st.d	$s7, $s7, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	st.d	$s7, $s7, 24
	st.d	$s7, $s7, 16
	st.d	$s7, $s7, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB6_53
# %bb.52:                               # %if.else581
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB6_54
.LBB6_53:                               # %if.then579
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_54:                               # %cond.end636
                                        #   in Loop: Header=BB6_26 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s4, 0
	st.d	$s7, $s1, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$s6, $s1, 0
	move	$s8, $s1
	beqz	$a0, .LBB6_56
# %bb.55:                               # %cond.false645
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s6, 16
	st.d	$s6, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_56:                               # %cond.end669
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 8
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 160
	addi.d	$a5, $sp, 144
	addi.d	$a6, $sp, 152
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a1, $s6
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	ld.d	$a2, $a1, 24
	move	$s5, $a0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $s6, 0
	beq	$a2, $a1, .LBB6_58
# %bb.57:                               # %cond.false683
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a0, $a1, 16
	st.d	$a2, $s4, 0
	st.d	$a0, $a2, 16
	st.d	$a2, $a0, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB6_58:                               # %cond.end705
                                        #   in Loop: Header=BB6_26 Depth=1
	ld.d	$a0, $a1, 8
	st.d	$a1, $s8, 0
	beq	$a0, $a1, .LBB6_24
# %bb.59:                               # %cond.false713
                                        #   in Loop: Header=BB6_26 Depth=1
	st.d	$a0, $s4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $a0, 8
	b	.LBB6_24
.LBB6_60:                               # %if.then
	ld.d	$a0, $s2, 24
	bne	$a0, $s2, .LBB6_189
# %bb.61:                               # %if.then1
	move	$a0, $s2
	b	.LBB6_184
.LBB6_62:                               # %if.then32
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 88
	bnez	$a0, .LBB6_7
.LBB6_63:                               # %if.then37
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 140
	bne	$a0, $a1, .LBB6_8
	b	.LBB6_9
.LBB6_64:
	move	$s5, $zero
	move	$s3, $zero
.LBB6_65:                               # %if.end774
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DatabaseFileNum)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 152
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AppendToFile)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB6_73
# %bb.66:                               # %if.else785
	ld.bu	$a0, $s5, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	addi.d	$a4, $s5, 32
	bgeu	$a0, $a1, .LBB6_162
# %bb.67:                               # %if.else800
	ld.bu	$a0, $s5, 64
	beqz	$a0, .LBB6_169
# %bb.68:
	addi.d	$s5, $s5, 64
	ori	$a0, $zero, 133
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB6_74
	b	.LBB6_171
.LBB6_69:                               # %sw.bb1256
	ld.bu	$a0, $s2, 0
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB6_76
# %bb.70:                               # %if.else1272
	ld.bu	$a0, $s0, 64
	beqz	$a0, .LBB6_189
# %bb.71:                               # %if.else1279
	ld.bu	$a2, $s7, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB6_185
# %bb.72:                               # %if.else1293
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB6_186
.LBB6_73:                               # %if.then779
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, 1
	st.w	$a0, $a1, 60
	pcaddu18i	$ra, %call36(StringFiveInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 176
	addi.d	$s5, $sp, 176
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 133
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB6_171
.LBB6_74:                               # %if.else863
	ori	$a0, $zero, 11
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.b	$fp, $a0, 48
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 152
	ld.bu	$a2, $s7, 0
	st.h	$s4, $s2, 50
	st.w	$a0, $s2, 52
	st.w	$a1, $s2, 56
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB6_164
# %bb.75:                               # %if.else883
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB6_165
.LBB6_76:                               # %if.then1268
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a4, $s2
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB6_77:                               # %sw.bb1207
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a2, 33
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB6_179
# %bb.78:                               # %sw.bb1207
	bnez	$a0, .LBB6_180
# %bb.79:                               # %if.then1211
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a4, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a7, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	st.d	$a4, $sp, 0
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB6_189
.LBB6_80:                               # %sw.bb1391
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a2, 33
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_82
# %bb.81:                               # %if.then1396
	ld.d	$a0, $a2, 40
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB6_82:                               # %if.end1399
	st.d	$s0, $a2, 40
	ld.d	$a0, $s0, 24
	beq	$a0, $s0, .LBB6_84
# %bb.83:                               # %if.then1406
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a5, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_84:                               # %if.end1408
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DatabaseFileNum)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 40
	st.h	$a1, $a2, 34
	ori	$a1, $zero, 1
	st.b	$a1, $a2, 33
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB6_86
# %bb.85:                               # %if.then1419
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a5, $a0, %pc_lo12(.L.str.44)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
.LBB6_86:                               # %if.end1421
	ld.d	$s5, $a0, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB6_116
# %bb.87:                               # %for.cond1434.preheader.preheader
	ori	$s6, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s2, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s0, $a0, %got_pc_lo12(zz_tmp)
	pcalau12i	$a0, %pc_hi20(.LJTI6_1)
	addi.d	$s4, $a0, %pc_lo12(.LJTI6_1)
	b	.LBB6_90
.LBB6_88:                               # %if.then1497
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $fp, 40
	ld.d	$a1, $a1, 80
	addi.d	$s3, $a0, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 15
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	.p2align	4, , 16
.LBB6_89:                               # %for.inc1723
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$s5, $s5, 8
	ld.d	$a0, $a2, 40
	beq	$s5, $a0, .LBB6_116
.LBB6_90:                               # %for.cond1434.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_91 Depth 2
                                        #     Child Loop BB6_105 Depth 2
                                        #     Child Loop BB6_97 Depth 2
	move	$fp, $s5
	.p2align	4, , 16
.LBB6_91:                               # %for.cond1434
                                        #   Parent Loop BB6_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB6_91
# %bb.92:                               # %for.cond1434
                                        #   in Loop: Header=BB6_90 Depth=1
	bne	$a0, $s6, .LBB6_89
# %bb.93:                               # %if.then1451
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB6_103
# %bb.94:                               # %if.end1459
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a0, $fp, 80
	ld.hu	$a1, $a0, 41
	andi	$a1, $a1, 1
	bnez	$a1, .LBB6_104
.LBB6_95:                               # %if.else1622
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 146
	bne	$a0, $a1, .LBB6_89
# %bb.96:                               # %if.then1629
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$s3, $fp, 8
.LBB6_97:                               # %for.cond1636
                                        #   Parent Loop BB6_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB6_97
# %bb.98:                               # %for.cond1636
                                        #   in Loop: Header=BB6_90 Depth=1
	addi.d	$a0, $a0, -5
	ori	$a1, $zero, 88
	bltu	$a1, $a0, .LBB6_100
# %bb.99:                               # %for.cond1636
                                        #   in Loop: Header=BB6_90 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB6_100:                              # %sw.default1652
                                        #   in Loop: Header=BB6_90 Depth=1
	addi.d	$a2, $s3, 32
	ori	$a0, $zero, 11
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	beq	$a1, $s3, .LBB6_114
# %bb.101:                              # %cond.end1683
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a2, $s3, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	st.d	$a0, $s2, 0
	st.d	$a1, $s8, 0
	beqz	$a0, .LBB6_115
# %bb.102:                              # %cond.false1692
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s0, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB6_115
.LBB6_103:                              # %if.then1457
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 80
	ld.hu	$a1, $a0, 41
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_95
.LBB6_104:                              # %if.then1466
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB6_105:                              # %for.cond1473
                                        #   Parent Loop BB6_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB6_105
# %bb.106:                              # %for.end1484
                                        #   in Loop: Header=BB6_90 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB6_88
# %bb.107:                              # %if.else1503
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.bu	$a1, $a0, 64
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_89
# %bb.108:                              # %if.else1510
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.h	$a1, $a0, 34
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	st.h	$a1, $a0, 50
	ori	$a1, $zero, 126
	st.b	$a1, $a0, 48
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a1, .LBB6_110
# %bb.109:                              # %if.else1530
                                        #   in Loop: Header=BB6_90 Depth=1
	st.d	$a1, $s8, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a3, $a2, 0
	b	.LBB6_111
.LBB6_110:                              # %if.then1528
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a1, $s7, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB6_111:                              # %cond.end1585
                                        #   in Loop: Header=BB6_90 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a6, 0
	st.d	$a1, $s2, 0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.d	$a5, $s8, 0
	ld.d	$a2, $a5, 0
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a5, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s8, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s0, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $a6, 0
	st.d	$a2, $a4, 8
	move	$a2, $a5
	st.d	$a1, $s2, 0
	st.d	$a0, $s8, 0
	beqz	$a1, .LBB6_89
# %bb.112:                              # %cond.false1594
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s0, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB6_113:                              # %for.inc1723
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_89
.LBB6_114:                              # %cond.end1683.thread
                                        #   in Loop: Header=BB6_90 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$zero, $a1, 0
	st.d	$a0, $s2, 0
	st.d	$zero, $s8, 0
.LBB6_115:                              # %cond.end1716
                                        #   in Loop: Header=BB6_90 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB6_113
.LBB6_116:                              # %for.end1727
	ld.d	$a1, $a2, 8
	beq	$a1, $a2, .LBB6_189
# %bb.117:                              # %if.then1733
	ld.hu	$a1, $a2, 34
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 52
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 56
	pcaddu18i	$ra, %call36(AppendToFile)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $a2, 8
	st.d	$zero, $a2, 40
	beq	$s5, $a2, .LBB6_163
# %bb.118:                              # %for.cond1751.preheader.preheader
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	pcalau12i	$a1, %got_pc_hi20(NewCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(NewCrossDb)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$s3, $a1, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s2, $a1, %got_pc_lo12(zz_res)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB6_122
.LBB6_119:                              # %sw.default1899
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_120:                              # %for.inc1902
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB6_121:                              # %for.inc1902
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $a2, .LBB6_163
.LBB6_122:                              # %for.cond1751.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_123 Depth 2
	move	$fp, $s5
	.p2align	4, , 16
.LBB6_123:                              # %for.cond1751
                                        #   Parent Loop BB6_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB6_123
# %bb.124:                              # %for.cond1751
                                        #   in Loop: Header=BB6_122 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$s6, $a0, .LBB6_127
# %bb.125:                              # %land.lhs.true1774
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.bu	$a0, $fp, 64
	addi.d	$s4, $fp, 32
	beqz	$a0, .LBB6_128
# %bb.126:                              # %if.end1782
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.bu	$a0, $fp, 48
	addi.d	$a0, $a0, -126
	ori	$a1, $zero, 7
	bgeu	$a1, $a0, .LBB6_129
	b	.LBB6_119
	.p2align	4, , 16
.LBB6_127:                              # %if.then1780.loopexit
                                        #   in Loop: Header=BB6_122 Depth=1
	addi.d	$s4, $fp, 32
.LBB6_128:                              # %if.then1780
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $fp, 48
	addi.d	$a0, $a0, -126
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB6_119
.LBB6_129:                              # %if.end1782
                                        #   in Loop: Header=BB6_122 Depth=1
	sll.d	$a0, $s6, $a0
	andi	$a1, $a0, 7
	bnez	$a1, .LBB6_131
# %bb.130:                              # %if.end1782
                                        #   in Loop: Header=BB6_122 Depth=1
	andi	$a0, $a0, 152
	bnez	$a0, .LBB6_121
	b	.LBB6_119
	.p2align	4, , 16
.LBB6_131:                              # %sw.bb1786
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.hu	$a6, $a2, 34
	ld.w	$a7, $a2, 52
	ld.w	$a1, $a2, 56
	addi.d	$a3, $fp, 64
	st.d	$s6, $sp, 8
	st.d	$a1, $sp, 0
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB6_136
# %bb.132:                              # %cond.false1806
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB6_134
.LBB6_133:                              # %cond.false1836
                                        #   in Loop: Header=BB6_122 Depth=1
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB6_134:                              # %cond.end1858
                                        #   in Loop: Header=BB6_122 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s1, $a2
	st.d	$a0, $s8, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB6_120
# %bb.135:                              # %if.then1895
                                        #   in Loop: Header=BB6_122 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB6_120
.LBB6_136:                              #   in Loop: Header=BB6_122 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s8, 0
	bne	$a2, $a0, .LBB6_133
	b	.LBB6_134
.LBB6_137:                              # %sw.bb980
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 72
	beqz	$a0, .LBB6_139
# %bb.138:                              # %if.then984
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB6_139:                              # %if.end987
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	ld.bu	$a0, $s2, 0
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB6_141
# %bb.140:                              # %lor.lhs.false999
	ld.bu	$a0, $s0, 64
	bnez	$a0, .LBB6_142
.LBB6_141:                              # %if.then1005
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$s0, $a0
.LBB6_142:                              # %if.end1011
	ld.d	$s6, $a2, 8
	st.d	$s0, $a2, 72
	beq	$s6, $a2, .LBB6_189
# %bb.143:                              # %for.cond1022.preheader.preheader
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s5, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s3, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s7, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s2, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB6_147
.LBB6_144:                              # %sw.default
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$a4, $s5, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_145:                              # %for.inc1202
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB6_146:                              # %for.inc1202
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $a2, .LBB6_189
.LBB6_147:                              # %for.cond1022.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_148 Depth 2
	move	$fp, $s6
	.p2align	4, , 16
.LBB6_148:                              # %for.cond1022
                                        #   Parent Loop BB6_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB6_148
# %bb.149:                              # %for.cond1022
                                        #   in Loop: Header=BB6_147 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$s4, $a0, .LBB6_151
# %bb.150:                              # %land.lhs.true1045
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.bu	$a0, $fp, 64
	bnez	$a0, .LBB6_152
.LBB6_151:                              # %if.then1051
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$a4, $s5, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB6_152:                              # %if.end1053
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.bu	$a0, $fp, 48
	addi.d	$a0, $a0, -126
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB6_144
# %bb.153:                              # %if.end1053
                                        #   in Loop: Header=BB6_147 Depth=1
	sll.d	$a0, $s4, $a0
	andi	$a1, $a0, 263
	bnez	$a1, .LBB6_146
# %bb.154:                              # %if.end1053
                                        #   in Loop: Header=BB6_147 Depth=1
	andi	$a0, $a0, 152
	beqz	$a0, .LBB6_144
# %bb.155:                              # %if.end1083
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a2, 72
	ld.d	$a4, $s5, 0
	ld.hu	$a6, $fp, 50
	ld.w	$a7, $fp, 52
	ld.w	$a2, $fp, 56
	addi.d	$a3, $a1, 64
	addi.d	$a5, $fp, 64
	st.d	$zero, $sp, 8
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	ld.d	$a0, $s6, 8
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB6_160
# %bb.156:                              # %cond.false1108
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s7, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB6_158
.LBB6_157:                              # %cond.false1138
                                        #   in Loop: Header=BB6_147 Depth=1
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB6_158:                              # %cond.end1160
                                        #   in Loop: Header=BB6_147 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s1, $a2
	st.d	$a0, $s8, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s7, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB6_145
# %bb.159:                              # %if.then1197
                                        #   in Loop: Header=BB6_147 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB6_145
.LBB6_160:                              #   in Loop: Header=BB6_147 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s7, 0
	st.d	$a0, $s8, 0
	bne	$a2, $a0, .LBB6_157
	b	.LBB6_158
.LBB6_161:                              # %sw.default1909
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$fp, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a2, $a0, %pc_lo12(.L.str.48)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a5, $a0, %pc_lo12(.L.str.49)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $fp
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB6_162:                              # %if.then797
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a5, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 10
	b	.LBB6_170
.LBB6_163:                              # %for.end1906
	ori	$a0, $zero, 2
	st.b	$a0, $a2, 33
	b	.LBB6_189
.LBB6_164:                              # %if.then881
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_165:                              # %if.end892
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s8, 0
	beqz	$a2, .LBB6_167
# %bb.166:                              # %cond.end938
	move	$a4, $a2
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $s8, 0
	ld.d	$a4, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a2, $a4, 8
	st.d	$a3, $a0, 0
	ld.d	$a2, $a1, 0
	ld.d	$a0, $s6, 0
	st.d	$a2, $a3, 8
	st.d	$a0, $a1, 0
	st.d	$s2, $s8, 0
	bnez	$a0, .LBB6_168
	b	.LBB6_177
.LBB6_167:                              # %cond.end938.thread
	st.d	$s2, $s8, 0
.LBB6_168:                              # %cond.false947
	ld.d	$a1, $s2, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB6_177
.LBB6_169:                              # %if.then805
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a2, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a5, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 11
.LBB6_170:                              # %if.end813
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s5, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 133
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB6_74
.LBB6_171:                              # %if.then816
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB6_173
# %bb.172:                              # %if.end836
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 1
	bgeu	$a2, $a1, .LBB6_174
	b	.LBB6_175
.LBB6_173:                              # %if.then822
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a4, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a7, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 12
	ori	$a3, $zero, 2
	st.d	$a4, $sp, 0
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, 72
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB6_175
.LBB6_174:                              # %land.lhs.true
	ld.bu	$a1, $a0, 64
	bnez	$a1, .LBB6_176
.LBB6_175:                              # %if.then856
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a5, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 72
.LBB6_176:                              # %if.end858
	pcalau12i	$a1, %got_pc_hi20(NewCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(NewCrossDb)
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a3, $a2, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a1, 0
	ld.d	$a4, $a3, 0
	ld.w	$a7, $sp, 160
	ld.w	$a5, $sp, 152
	addi.d	$a3, $a0, 64
	st.d	$zero, $sp, 8
	ori	$a1, $zero, 1
	st.d	$a5, $sp, 0
	move	$a0, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
.LBB6_177:                              # %if.end973
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB6_189
# %bb.178:                              # %if.then977
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB6_189
.LBB6_179:                              # %if.then1221
	ld.d	$a0, $a2, 40
	ld.hu	$a1, $a2, 34
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 52
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 56
	pcaddu18i	$ra, %call36(AppendToFile)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$zero, $a2, 40
	ori	$a0, $zero, 2
	st.b	$a0, $a2, 33
.LBB6_180:                              # %if.end1226
	ld.bu	$a0, $s2, 0
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB6_182
# %bb.181:                              # %lor.lhs.false1238
	ld.bu	$a0, $s0, 64
	bnez	$a0, .LBB6_183
.LBB6_182:                              # %if.then1244
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$s0, $a0
.LBB6_183:                              # %if.end1247
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	ld.d	$a0, $a0, 0
	ld.hu	$a6, $a2, 34
	ld.w	$a7, $a2, 52
	ld.w	$a1, $a2, 56
	addi.d	$a3, $s0, 64
	addi.d	$a4, $s0, 32
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a5, $a2, %pc_lo12(.L.str.41)
	st.d	$a1, $sp, 0
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB6_184:                              # %if.then1
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	pcaddu18i	$t8, %call36(DisposeObject)
	jr	$t8
.LBB6_185:                              # %if.then1291
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB6_186:                              # %cond.end1348
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	st.d	$a0, $a2, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$a4, $s8, 0
	ld.d	$a3, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $a6, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$s0, $s8, 0
	beqz	$a0, .LBB6_188
# %bb.187:                              # %cond.false1357
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB6_188:                              # %cond.end1381
	ld.h	$a0, $s0, 34
	st.h	$a0, $s0, 50
	st.b	$s3, $s0, 48
.LBB6_189:                              # %cleanup
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.Lfunc_end6:
	.size	CrossSequence, .Lfunc_end6-CrossSequence
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_69-.LJTI6_0
	.word	.LBB6_69-.LJTI6_0
	.word	.LBB6_19-.LJTI6_0
	.word	.LBB6_19-.LJTI6_0
	.word	.LBB6_80-.LJTI6_0
	.word	.LBB6_137-.LJTI6_0
	.word	.LBB6_19-.LJTI6_0
	.word	.LBB6_77-.LJTI6_0
.LJTI6_1:
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_100-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
	.word	.LBB6_89-.LJTI6_1
                                        # -- End function
	.text
	.globl	CrossClose                      # -- Begin function CrossClose
	.p2align	5
	.type	CrossClose,@function
CrossClose:                             # @CrossClose
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB7_52
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -1776
	st.d	$ra, $sp, 1768                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1760                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1752                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1744                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1736                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1728                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1720                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1712                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1704                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1688                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(RootCross)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(RootCross)
	beqz	$a0, .LBB7_45
# %bb.2:                                # %for.cond.preheader
	ld.d	$s1, $a0, 8
	beq	$s1, $a0, .LBB7_45
# %bb.3:
	ori	$s2, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI7_0)
	addi.d	$s3, $a0, %pc_lo12(.LJTI7_0)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $s1, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(RootCross)
	beq	$s1, $a0, .LBB7_45
.LBB7_5:                                # %for.cond5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_13 Depth 2
                                        #       Child Loop BB7_14 Depth 3
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_6:                                # %for.cond5
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB7_6
# %bb.7:                                # %for.end
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s5, $s1, 64
	st.d	$s5, $sp, 1680
	ori	$a1, $zero, 140
	beq	$a0, $a1, .LBB7_9
# %bb.8:                                # %if.then17
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a4, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a5, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %if.end18
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s0, $s1, 8
	beq	$s0, $s1, .LBB7_4
# %bb.10:                               # %for.cond29.preheader.lr.ph
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$s6, $zero
	addi.d	$a0, $s1, 52
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 56
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB7_13
.LBB7_11:                               # %sw.default
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB7_12:                               # %for.inc166
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s0, $s0, 8
	beq	$s0, $s1, .LBB7_4
.LBB7_13:                               # %for.cond29.preheader
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_14 Depth 3
	move	$s8, $s0
	.p2align	4, , 16
.LBB7_14:                               # %for.cond29
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB7_14
# %bb.15:                               # %for.cond29
                                        #   in Loop: Header=BB7_13 Depth=2
	addi.d	$a0, $a0, -11
	bltu	$s2, $a0, .LBB7_18
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s8, 64
	addi.d	$s4, $s8, 32
	beqz	$a0, .LBB7_19
# %bb.17:                               # %if.end56
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s8, 48
	addi.d	$a0, $a0, -127
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB7_20
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_18:                               # %if.then54.loopexit
                                        #   in Loop: Header=BB7_13 Depth=2
	addi.d	$s4, $s8, 32
.LBB7_19:                               # %if.then54
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 48
	addi.d	$a0, $a0, -127
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB7_11
.LBB7_20:                               # %if.end56
                                        #   in Loop: Header=BB7_13 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	add.d	$a0, $s3, $a0
	jr	$a0
.LBB7_21:                               # %sw.bb
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 4
	blt	$a0, $s6, .LBB7_35
# %bb.22:                               # %if.then60
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ori	$a0, $zero, 10
	ori	$a1, $zero, 16
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s8
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_23:                               # %sw.bb119
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 4
	blt	$a0, $s6, .LBB7_31
# %bb.24:                               # %if.then122
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a2, $a0, %pc_lo12(.L.str.52)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a7, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 19
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.d	$a4, $sp, 0
	move	$a4, $s4
	move	$a5, $s2
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_25:                               # %sw.bb142
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s1, 72
	bnez	$a0, .LBB7_27
# %bb.26:                               # %if.then145
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a4, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a7, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 21
	ori	$a3, $zero, 2
	st.d	$a4, $sp, 0
	move	$a4, $s4
	move	$a5, $s2
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
.LBB7_27:                               # %if.end152
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a1, %got_pc_hi20(NewCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(NewCrossDb)
	ld.d	$a2, $a1, 0
	ld.d	$a4, $s7, 0
	ld.hu	$a6, $s8, 50
	ld.w	$a7, $s8, 52
	ld.w	$t0, $s8, 56
	addi.d	$a3, $a0, 64
	addi.d	$a5, $s8, 64
	st.d	$zero, $sp, 8
	ori	$a1, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $a2
	b	.LBB7_44
.LBB7_28:                               # %sw.bb72
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s1, 33
	beq	$a0, $s2, .LBB7_39
# %bb.29:                               # %sw.bb72
                                        #   in Loop: Header=BB7_13 Depth=2
	bnez	$a0, .LBB7_40
# %bb.30:                               # %if.then76
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a4, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a2, $a0, %pc_lo12(.L.str.54)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a7, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 18
	ori	$a3, $zero, 2
	st.d	$a4, $sp, 0
	move	$a4, $s4
	move	$a5, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB7_12
.LBB7_31:                               # %if.else127
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 5
	bne	$s6, $a0, .LBB7_34
# %bb.32:                               # %if.then130
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s2, $s7, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a2, $a0, %pc_lo12(.L.str.53)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a6, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a7, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 20
	ori	$a3, $zero, 2
	move	$a4, $s2
.LBB7_33:                               # %if.end134
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_34:                               # %if.end134
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	ld.d	$a0, $a0, 0
	ld.d	$a4, $s7, 0
	ld.hu	$a6, $s8, 50
	ld.w	$a7, $s8, 52
	ld.w	$a2, $s8, 56
	addi.d	$a5, $s8, 64
	st.d	$zero, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a3, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	b	.LBB7_12
.LBB7_35:                               # %if.else
                                        #   in Loop: Header=BB7_13 Depth=2
	ori	$a0, $zero, 5
	bne	$s6, $a0, .LBB7_38
# %bb.36:                               # %if.then67
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$s4, $s7, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a6, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a7, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 10
	ori	$a1, $zero, 17
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s4
.LBB7_37:                               # %if.end71
                                        #   in Loop: Header=BB7_13 Depth=2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_38:                               # %if.end71
                                        #   in Loop: Header=BB7_13 Depth=2
	addi.w	$s6, $s6, 1
	b	.LBB7_12
.LBB7_39:                               # %if.then86
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a0, $s1, 40
	ld.hu	$a1, $s1, 34
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AppendToFile)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 40
	ori	$a0, $zero, 2
	st.b	$a0, $s1, 33
.LBB7_40:                               # %if.end91
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s4, 0
	addi.d	$a0, $a0, -11
	bltu	$s2, $a0, .LBB7_42
# %bb.41:                               # %lor.lhs.false103
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.bu	$a0, $s8, 64
	bnez	$a0, .LBB7_43
.LBB7_42:                               # %if.then109
                                        #   in Loop: Header=BB7_13 Depth=2
	ld.d	$a2, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s8, $a0
.LBB7_43:                               # %if.end111
                                        #   in Loop: Header=BB7_13 Depth=2
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	ld.d	$a0, $a0, 0
	ld.hu	$a6, $s1, 34
	ld.w	$a7, $s1, 52
	ld.w	$a1, $s1, 56
	addi.d	$a3, $s8, 64
	addi.d	$a4, $s8, 32
	st.d	$s2, $sp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a5, $a2, %pc_lo12(.L.str.41)
	st.d	$a1, $sp, 0
	move	$a1, $zero
.LBB7_44:                               # %for.inc166
                                        #   in Loop: Header=BB7_13 Depth=2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	b	.LBB7_12
.LBB7_45:                               # %if.end176
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$s0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $s0, 0
	st.d	$zero, $sp, 1656
	addi.d	$s1, $sp, 1656
	addi.d	$a1, $sp, 1676
	addi.d	$a2, $sp, 1680
	addi.d	$a3, $sp, 116
	addi.d	$a4, $sp, 628
	addi.d	$a5, $sp, 1674
	addi.d	$a6, $sp, 1664
	addi.d	$a7, $sp, 1652
	st.d	$s1, $sp, 0
	pcaddu18i	$ra, %call36(DbRetrieveNext)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_51
# %bb.46:                               # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$s2, $a0, %got_pc_lo12(NewCrossDb)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s3, $a0, %got_pc_lo12(no_fpos)
	addi.d	$s4, $sp, 1140
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_47:                               # %while.cond.backedge
                                        #   in Loop: Header=BB7_48 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a1, $sp, 1676
	addi.d	$a2, $sp, 1680
	addi.d	$a3, $sp, 116
	addi.d	$a4, $sp, 628
	addi.d	$a5, $sp, 1674
	addi.d	$a6, $sp, 1664
	addi.d	$a7, $sp, 1652
	st.d	$s1, $sp, 0
	pcaddu18i	$ra, %call36(DbRetrieveNext)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_51
.LBB7_48:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 1676
	bnez	$a0, .LBB7_47
# %bb.49:                               # %if.end183
                                        #   in Loop: Header=BB7_48 Depth=1
	ld.hu	$a0, $sp, 1674
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 1140
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1140
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s4
	st.b	$zero, $a0, -3
	addi.d	$a0, $sp, 1140
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FileNum)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_47
# %bb.50:                               # %if.then197
                                        #   in Loop: Header=BB7_48 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $sp, 1680
	ld.d	$a4, $s3, 0
	ld.hu	$a6, $sp, 1674
	ld.d	$a7, $sp, 1664
	ld.w	$a1, $sp, 1652
	st.d	$zero, $sp, 8
	addi.d	$a3, $sp, 116
	addi.d	$a5, $sp, 628
	st.d	$a1, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	b	.LBB7_47
.LBB7_51:                               # %while.end
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(DbClose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(DbConvert)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1704                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1712                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1720                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1728                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1736                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1744                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1752                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1760                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1768                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1776
.LBB7_52:                               # %cleanup
	ret
.Lfunc_end7:
	.size	CrossClose, .Lfunc_end7-CrossClose
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_21-.LJTI7_0
	.word	.LBB7_28-.LJTI7_0
	.word	.LBB7_23-.LJTI7_0
	.word	.LBB7_25-.LJTI7_0
                                        # -- End function
	.type	RootCross,@object               # @RootCross
	.local	RootCross
	.comm	RootCross,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"automatically generated tag %s&%d is too long"
	.size	.L.str.1, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"assert failed in %s"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"CrossExpand: x!"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"CrossExpand: #args!"
	.size	.L.str.6, 20

	.type	nbt,@object                     # @nbt
	.local	nbt
	.comm	nbt,16,8
	.type	nft,@object                     # @nft
	.local	nft
	.comm	nft,16,8
	.type	ntarget,@object                 # @ntarget
	.local	ntarget
	.comm	ntarget,8,8
	.type	nenclose,@object                # @nenclose
	.local	nenclose
	.comm	nenclose,8,8
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ClosureExpand: type(y) != CLOSURE!"
	.size	.L.str.7, 35

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"preceding"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"foll_or_prec"
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"following"
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"value of right parameter of %s is not a simple word"
	.size	.L.str.11, 52

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"&&"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"value of right parameter of %s is an empty word"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"now"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"symbol %s used in cross reference has no %s parameter"
	.size	.L.str.15, 54

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"@Tag"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"CrossExpand: db!"
	.size	.L.str.17, 17

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"CrossExpand/CROSS_FOLL: cs == nilobj!"
	.size	.L.str.18, 38

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"CrossExpand/CROSS_FOLL: type(cs)!"
	.size	.L.str.19, 34

	.type	crossref_tab,@object            # @crossref_tab
	.local	crossref_tab
	.comm	crossref_tab,8,8
	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"automatically generated tag %s_%d is too long"
	.size	.L.str.20, 46

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"unresolved cross reference %s%s%s"
	.size	.L.str.23, 34

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"CrossExpand: type(res) != CLOSURE!"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"CrossExpand: actual(res) != sym!"
	.size	.L.str.25, 33

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"CrossSequence: type(x)!"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"CrossSequence: type(tmp)!"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"CrossSequence: cs!"
	.size	.L.str.28, 19

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"CrossSequence/GALL_FOLL: type(val)!"
	.size	.L.str.29, 36

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%s parameter is not a word"
	.size	.L.str.30, 27

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"@Key"
	.size	.L.str.31, 5

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"badkey"
	.size	.L.str.32, 7

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s parameter is an empty word"
	.size	.L.str.33, 30

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"no %s galley target precedes this %s%s%s"
	.size	.L.str.34, 41

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"none"
	.size	.L.str.36, 5

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"CrossSequence: gall_tag!"
	.size	.L.str.37, 25

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"CrossSequence: GALL_TARG y!"
	.size	.L.str.38, 28

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"CrossSequence: cs_type!"
	.size	.L.str.39, 24

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"no %s precedes this %s%s%s"
	.size	.L.str.40, 27

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"0"
	.size	.L.str.41, 2

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"tag of %s is not a simple word"
	.size	.L.str.42, 31

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"CrossSeq: Up(tag)!"
	.size	.L.str.43, 19

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"CrossSequence: target_val!"
	.size	.L.str.44, 27

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"CrossSequence: Down(PAR)!"
	.size	.L.str.45, 26

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"???"
	.size	.L.str.46, 4

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"CrossSeq: non-WORD or empty tag!"
	.size	.L.str.47, 33

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"assert failed in %s %s"
	.size	.L.str.48, 23

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"CrossSequence:"
	.size	.L.str.49, 15

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"CrossClose: type(cs)!"
	.size	.L.str.50, 22

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"CrossClose: GALL_TARG y!"
	.size	.L.str.51, 25

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"no %s follows this %s%s%s"
	.size	.L.str.52, 26

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"and more undefined %s%s%s"
	.size	.L.str.53, 26

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"no %s follows or precedes this %s%s%s"
	.size	.L.str.54, 38

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"no %s precedes or follows this %s%s%s"
	.size	.L.str.55, 38

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"CrossClose: unknown cs_type!"
	.size	.L.str.56, 29

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"automatically generated tag is too long (contains %s)"
	.size	.L.str.57, 54

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"%d.%d.%s.%d"
	.size	.L.str.58, 12

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"run out of memory enlarging crossref table"
	.size	.L.str.59, 43

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nbt
	.addrsig_sym nft
	.addrsig_sym ntarget
	.addrsig_sym nenclose
