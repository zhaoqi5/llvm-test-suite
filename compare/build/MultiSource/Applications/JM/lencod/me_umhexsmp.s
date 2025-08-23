	.file	"me_umhexsmp.c"
	.text
	.globl	smpUMHEX_init                   # -- Begin function smpUMHEX_init
	.p2align	5
	.type	smpUMHEX_init,@function
smpUMHEX_init:                          # @smpUMHEX_init
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ori	$a1, $zero, 800
	st.h	$a1, $a0, %pc_lo12(SymmetricalCrossSearchThreshold1)
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold2)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2904
	st.h	$a1, $a0, %pc_lo12(SymmetricalCrossSearchThreshold2)
	pcalau12i	$a0, %pc_hi20(ConvergeThreshold)
	ori	$a1, $zero, 1000
	st.h	$a1, $a0, %pc_lo12(ConvergeThreshold)
	pcalau12i	$a0, %pc_hi20(SubPelThreshold1)
	st.h	$a1, $a0, %pc_lo12(SubPelThreshold1)
	pcalau12i	$a0, %pc_hi20(SubPelThreshold3)
	ori	$a1, $zero, 400
	st.h	$a1, $a0, %pc_lo12(SubPelThreshold3)
	ret
.Lfunc_end0:
	.size	smpUMHEX_init, .Lfunc_end0-smpUMHEX_init
                                        # -- End function
	.globl	smpUMHEX_get_mem                # -- Begin function smpUMHEX_get_mem
	.p2align	5
	.type	smpUMHEX_get_mem,@function
smpUMHEX_get_mem:                       # @smpUMHEX_get_mem
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$s1, $fp, 0
	ld.w	$s0, $s1, 52
	srai.d	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra)
	st.d	$a0, $a1, %pc_lo12(smpUMHEX_flag_intra)
	bnez	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	ld.w	$s0, $s1, 52
.LBB1_2:                                # %if.end
	ld.w	$a0, $s1, 68
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 2
	bstrpick.d	$a0, $s0, 62, 61
	add.w	$a0, $s0, $a0
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 68
	move	$fp, $a0
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 61
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l1_cost)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	pcalau12i	$a0, %pc_hi20(smpUMHEX_SearchState)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_SearchState)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	add.w	$a0, $fp, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	smpUMHEX_get_mem, .Lfunc_end1-smpUMHEX_get_mem
                                        # -- End function
	.globl	smpUMHEX_free_mem               # -- Begin function smpUMHEX_free_mem
	.p2align	5
	.type	smpUMHEX_free_mem,@function
smpUMHEX_free_mem:                      # @smpUMHEX_free_mem
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l1_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_SearchState)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_SearchState)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_flag_intra)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	smpUMHEX_free_mem, .Lfunc_end2-smpUMHEX_free_mem
                                        # -- End function
	.globl	smpUMHEXIntegerPelBlockMotionSearch # -- Begin function smpUMHEXIntegerPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXIntegerPelBlockMotionSearch,@function
smpUMHEXIntegerPelBlockMotionSearch:    # @smpUMHEXIntegerPelBlockMotionSearch
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 15268
	ld.d	$fp, $sp, 384
	move	$s8, $a7
	move	$t6, $a6
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	move	$s1, $a4
	move	$s2, $a3
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	beqz	$t1, .LBB3_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $t0, 12
	ldptr.d	$a3, $t0, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $a0, $a4
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 424
	beqz	$a3, .LBB3_3
# %bb.2:                                # %cond.true
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a4, $a0, $a3
	b	.LBB3_4
.LBB3_3:
	move	$a4, $zero
.LBB3_4:                                # %cond.end
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	pcalau12i	$a3, %pc_hi20(active_pps)
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	ld.d	$s3, $sp, 392
	ld.d	$a0, $a0, 0
	ld.w	$a6, $a3, 192
	ld.h	$t7, $fp, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a0, 3
	beqz	$a6, .LBB3_7
# %bb.5:                                # %land.lhs.true20
	ld.w	$a6, $t0, 20
	beqz	$a6, .LBB3_9
# %bb.6:                                # %land.lhs.true20
	ori	$a7, $zero, 3
	beq	$a6, $a7, .LBB3_9
.LBB3_7:                                # %lor.lhs.false25
	ld.w	$a3, $a3, 196
	beqz	$a3, .LBB3_10
# %bb.8:                                # %land.lhs.true27
	ld.w	$a3, $t0, 20
	ori	$a6, $zero, 1
	bne	$a3, $a6, .LBB3_10
.LBB3_9:                                # %land.end
	ldptr.w	$a0, $a0, 2936
	sltu	$a3, $zero, $a0
	ori	$a0, $zero, 3
	maskeqz	$a0, $a0, $a3
	b	.LBB3_11
.LBB3_10:
	move	$a3, $zero
	move	$a0, $zero
.LBB3_11:                               # %land.end.thread
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	add.w	$a2, $a4, $a2
	slli.d	$a4, $a2, 3
	ldx.d	$a2, $a6, $a4
	ld.h	$t8, $s3, 0
	add.w	$t5, $s2, $t7
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a2, $a6
	ld.w	$a2, $a5, 76
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a2, $a5, 72
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$t3, %pc_hi20(dist_method)
	ldptr.d	$a5, $a6, 6448
	pcalau12i	$a2, %got_pc_hi20(ref_pic_sub)
	ld.d	$t0, $a2, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$a7, 1
	ori	$a2, $a7, 2296
	ldx.w	$a2, $a6, $a2
	pcalau12i	$t1, %got_pc_hi20(img_width)
	ld.d	$t1, $t1, %got_pc_lo12(img_width)
	pcalau12i	$t2, %pc_hi20(ref_pic_ptr)
	st.d	$a6, $t2, %pc_lo12(ref_pic_ptr)
	st.d	$a5, $t0, 0
	st.h	$a2, $t1, 0
	ori	$a5, $a7, 2312
	ldx.w	$t1, $a6, $a5
	ori	$a5, $a7, 2300
	ldx.w	$a5, $a6, $a5
	pcalau12i	$t2, %pc_hi20(width_pad)
	st.w	$t1, $t2, %pc_lo12(width_pad)
	pcalau12i	$t1, %got_pc_hi20(img_height)
	ld.d	$t1, $t1, %got_pc_lo12(img_height)
	ori	$t2, $a7, 2316
	ldx.w	$t2, $a6, $t2
	st.d	$t3, $sp, 232                   # 8-byte Folded Spill
	st.w	$a0, $t3, %pc_lo12(dist_method)
	st.h	$a5, $t1, 0
	pcalau12i	$t1, %pc_hi20(height_pad)
	st.w	$t2, $t1, %pc_lo12(height_pad)
	beqz	$a3, .LBB3_13
# %bb.12:                               # %if.then
	pcalau12i	$t1, %pc_hi20(wp_weight)
	ld.d	$t1, $t1, %pc_lo12(wp_weight)
	ldx.d	$t1, $t1, $a4
	slli.d	$t2, $a1, 3
	pcalau12i	$t3, %pc_hi20(wp_offset)
	ld.d	$t3, $t3, %pc_lo12(wp_offset)
	ldx.d	$t1, $t1, $t2
	ldx.d	$t3, $t3, $a4
	ld.w	$t1, $t1, 0
	pcalau12i	$t4, %got_pc_hi20(weight_luma)
	ld.d	$t4, $t4, %got_pc_lo12(weight_luma)
	ldx.d	$t2, $t3, $t2
	st.w	$t1, $t4, 0
	ld.w	$t1, $t2, 0
	pcalau12i	$t2, %got_pc_hi20(offset_luma)
	ld.d	$t2, $t2, %got_pc_lo12(offset_luma)
	st.w	$t1, $t2, 0
.LBB3_13:                               # %if.end
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$t1, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t1, $t1, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t1, $t1, 0
	ld.d	$s7, $sp, 400
	add.w	$t2, $s1, $t8
	st.d	$t2, $sp, 288                   # 8-byte Folded Spill
	beqz	$t1, .LBB3_16
# %bb.14:                               # %if.then54
	ldptr.d	$t1, $a6, 6464
	ld.d	$t2, $t1, 0
	st.d	$t2, $t0, 8
	ld.d	$t1, $t1, 8
	st.d	$t1, $t0, 16
	ori	$t0, $a7, 2320
	ldx.w	$t0, $a6, $t0
	ori	$a7, $a7, 2324
	ldx.w	$a6, $a6, $a7
	pcalau12i	$a7, %pc_hi20(width_pad_cr)
	st.w	$t0, $a7, %pc_lo12(width_pad_cr)
	pcalau12i	$a7, %pc_hi20(height_pad_cr)
	st.w	$a6, $a7, %pc_lo12(height_pad_cr)
	beqz	$a3, .LBB3_16
# %bb.15:                               # %if.then59
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a4
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a6, %got_pc_hi20(weight_cr)
	ld.d	$a6, $a6, %got_pc_lo12(weight_cr)
	pcalau12i	$a7, %pc_hi20(wp_offset)
	ld.d	$a7, $a7, %pc_lo12(wp_offset)
	st.d	$a3, $a6, 0
	ldx.d	$a3, $a7, $a4
	ldx.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 4
	pcalau12i	$a4, %got_pc_hi20(offset_cr)
	ld.d	$a4, $a4, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a4, 0
	st.w	$a1, $a4, 4
.LBB3_16:                               # %if.end85
	ld.d	$a1, $sp, 416
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 408
	alsl.w	$a1, $s2, $t6, 2
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.w	$a1, $s1, $s8, 2
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	bge	$s7, $t5, .LBB3_21
# %bb.17:                               # %land.lhs.true88
	ext.w.h	$a2, $a2
	nor	$a1, $s7, $zero
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a3
	add.w	$a2, $a3, $a2
	bge	$t5, $a2, .LBB3_21
# %bb.18:                               # %land.lhs.true88
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	bge	$s7, $a2, .LBB3_21
# %bb.19:                               # %land.lhs.true97
	ext.w.h	$a2, $a5
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_21
# %bb.20:
	move	$a1, $zero
	b	.LBB3_22
.LBB3_21:                               # %if.else
	ori	$a1, $zero, 1
.LBB3_22:                               # %if.end105
	pcalau12i	$a2, %got_pc_hi20(ref_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(ref_access_method)
	pcalau12i	$a3, %got_pc_hi20(mvbits)
	ld.d	$a3, $a3, %got_pc_lo12(mvbits)
	st.w	$a1, $a2, 0
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	slli.d	$a2, $t5, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a3, $s4, 2
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	slli.d	$a3, $s2, 2
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a3, $s1, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a3, $a2, %got_pc_lo12(computeUniPred)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$s0, $a1, 16
	slli.d	$a0, $a0, 3
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	ldx.d	$a6, $a3, $a0
	sub.w	$a3, $fp, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $t5, $a0, 2
	alsl.w	$a5, $s4, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$t5, $sp, 240                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $fp
	maskeqz	$s6, $a4, $a1
	maskeqz	$t0, $s4, $a1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a5, $a0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $s8, $a3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	srai.d	$a1, $a2, 31
	xor	$a2, $a2, $a1
	sub.w	$a6, $a2, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	srai.d	$a1, $a2, 31
	xor	$a2, $a2, $a1
	sub.w	$a1, $a2, $a1
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_27
# %bb.23:                               # %if.end105
	blt	$s7, $a6, .LBB3_27
# %bb.24:                               # %if.end105
	bltu	$s7, $a1, .LBB3_27
# %bb.25:                               # %if.then145
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a3, 2
	sub.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 0
	slli.d	$a2, $s8, 2
	sub.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 80
	move	$s0, $a5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s3
	move	$a5, $s0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	move	$s4, $s6
	move	$a7, $s3
	bge	$a0, $s0, .LBB3_28
# %bb.26:                               # %if.then168
	move	$s4, $s2
	move	$a7, $s1
	move	$a5, $a0
	b	.LBB3_28
.LBB3_27:
	move	$s4, $s6
	move	$a7, $t0
.LBB3_28:                               # %if.end171
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ConvergeThreshold)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.hu	$a0, $a0, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$a2, $a2, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a3, $a2, $a1
	srl.w	$a1, $a0, $a3
	addi.w	$fp, $s6, -1
	sub.w	$a0, $fp, $a4
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	move	$a2, $s6
	addi.w	$s6, $s6, 1
	addi.w	$s5, $t0, -1
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	sub.w	$s3, $a2, $a4
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	bge	$a5, $a1, .LBB3_40
# %bb.29:                               # %for.body.preheader
	blt	$s7, $a0, .LBB3_33
# %bb.30:                               # %land.lhs.true195
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $t0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_33
# %bb.31:                               # %if.then200
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $t0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	move	$s1, $a5
	alsl.w	$a5, $t0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	move	$s8, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s8
	move	$a7, $s2
	move	$a5, $s1
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	bge	$a0, $s1, .LBB3_33
# %bb.32:                               # %if.then223
	move	$s4, $fp
	move	$a7, $t0
	move	$a5, $a0
.LBB3_33:                               # %for.inc
	sub.w	$a0, $s6, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_37
# %bb.34:                               # %land.lhs.true195.1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $t0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_37
# %bb.35:                               # %if.then200.1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $t0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	move	$s0, $a5
	alsl.w	$a5, $t0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $a7
	move	$s2, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s2
	move	$a7, $s1
	move	$a5, $s0
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_37
# %bb.36:                               # %if.then223.1
	move	$s4, $s6
	move	$a7, $t0
	move	$a5, $a0
.LBB3_37:                               # %for.inc.1
	srai.d	$a0, $s3, 31
	xor	$a1, $s3, $a0
	sub.w	$a0, $a1, $a0
	blt	$s7, $a0, .LBB3_182
# %bb.38:                               # %land.lhs.true195.2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_51
# %bb.39:
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	b	.LBB3_53
.LBB3_40:                               # %for.body235.preheader
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	blt	$s7, $a0, .LBB3_44
# %bb.41:                               # %land.lhs.true248
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $t0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_44
# %bb.42:                               # %if.then253
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $t0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	alsl.w	$a5, $t0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	move	$s1, $s8
	move	$s8, $s5
	move	$s5, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s5
	move	$s5, $s8
	move	$s8, $s1
	move	$a7, $s2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bge	$a0, $a5, .LBB3_44
# %bb.43:                               # %if.then276
	move	$s4, $fp
	move	$a7, $t0
	move	$a5, $a0
.LBB3_44:                               # %for.inc279
	sub.w	$a0, $s6, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_48
# %bb.45:                               # %land.lhs.true248.1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $t0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_48
# %bb.46:                               # %if.then253.1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $t0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	move	$s0, $a5
	alsl.w	$a5, $t0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $a7
	move	$s2, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s2
	move	$a7, $s1
	move	$a5, $s0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_48
# %bb.47:                               # %if.then276.1
	move	$s4, $s6
	move	$a7, $t0
	move	$a5, $a0
.LBB3_48:                               # %for.inc279.1
	srai.d	$a0, $s3, 31
	xor	$a1, $s3, $a0
	sub.w	$a0, $a1, $a0
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	blt	$s7, $a0, .LBB3_62
# %bb.49:                               # %land.lhs.true248.2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_56
# %bb.50:
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	b	.LBB3_58
.LBB3_51:                               # %if.then200.2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s3, $s5
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s3, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s5, $a0, 2
	move	$s0, $a5
	alsl.w	$a5, $s3, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $a7
	move	$s2, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s2
	move	$a7, $s1
	move	$a5, $s0
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_53
# %bb.52:                               # %if.then223.2
	move	$s4, $s5
	move	$a7, $s3
	move	$a5, $a0
.LBB3_53:                               # %land.lhs.true195.3
	addi.d	$fp, $t0, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_182
# %bb.54:                               # %if.then200.3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s5, $a0, 2
	move	$s1, $a5
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	move	$a5, $s1
	add.w	$a0, $s0, $a0
	bge	$a0, $s1, .LBB3_182
# %bb.55:                               # %if.then223.3
	move	$s4, $s5
	move	$a7, $fp
	b	.LBB3_181
.LBB3_56:                               # %if.then253.2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s3, $s5
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s3, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s5, $a0, 2
	move	$s0, $a5
	alsl.w	$a5, $s3, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $a7
	move	$s2, $t0
	jirl	$ra, $a6, 0
	move	$t0, $s2
	move	$a7, $s1
	move	$a5, $s0
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_58
# %bb.57:                               # %if.then276.2
	move	$s4, $s5
	move	$a7, $s3
	move	$a5, $a0
.LBB3_58:                               # %land.lhs.true248.3
	addi.w	$fp, $t0, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_60
# %bb.59:
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB3_62
.LBB3_60:                               # %if.then253.3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s5, $a0, 2
	move	$s1, $a5
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	move	$a5, $s1
	add.w	$a0, $s0, $a0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bge	$a0, $s1, .LBB3_62
# %bb.61:                               # %if.then276.3
	move	$s4, $s5
	move	$a7, $fp
	move	$a5, $a0
.LBB3_62:                               # %for.inc279.3
	ori	$a0, $zero, 1
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_64
# %bb.63:                               # %land.lhs.true284
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ld.hu	$a0, $a0, %pc_lo12(SymmetricalCrossSearchThreshold1)
	srl.w	$a0, $a0, $a3
	blt	$a0, $a5, .LBB3_65
.LBB3_64:                               # %lor.lhs.false292
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold2)
	ld.hu	$a0, $a0, %pc_lo12(SymmetricalCrossSearchThreshold2)
	srl.w	$a0, $a0, $a3
	bge	$a0, $a5, .LBB3_75
.LBB3_65:                               # %if.then300
	ori	$a0, $zero, 2
	bge	$s7, $a0, .LBB3_91
# %bb.66:
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
.LBB3_67:                               # %for.cond456.preheader
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s1, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s2, $a0, %pc_lo12(Hexagon_Y)
	ori	$s5, $zero, 12
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$s3, $a2
	b	.LBB3_69
	.p2align	4, , 16
.LBB3_68:                               # %for.inc504
                                        #   in Loop: Header=BB3_69 Depth=1
	addi.d	$fp, $fp, 2
	beq	$fp, $s5, .LBB3_73
.LBB3_69:                               # %for.body460
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $s1, $fp
	add.w	$s0, $a2, $a0
	sub.w	$a0, $s0, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_68
# %bb.70:                               # %land.lhs.true473
                                        #   in Loop: Header=BB3_69 Depth=1
	ldx.h	$a0, $s2, $fp
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_68
# %bb.71:                               # %if.then478
                                        #   in Loop: Header=BB3_69 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s8, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s7
	addi.w	$s4, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	move	$s6, $a5
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a5, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB3_68
# %bb.72:                               # %if.then501
                                        #   in Loop: Header=BB3_69 Depth=1
	move	$s3, $s0
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$a5, $a0
	b	.LBB3_68
.LBB3_73:                               # %for.cond507.preheader
	ori	$a0, $zero, 4
	bge	$s7, $a0, .LBB3_110
# %bb.74:
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	b	.LBB3_76
.LBB3_75:
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
.LBB3_76:                               # %if.end571
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$fp, $a2, 15, 0
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s1, $a3, 15, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_83
# %bb.77:                               # %if.then574
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 2
	sub.w	$a1, $a0, $a2
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	blt	$s7, $a1, .LBB3_81
# %bb.78:                               # %land.lhs.true585
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.h	$a1, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	bstrpick.d	$a2, $a1, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 2
	sub.w	$a2, $a1, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	bltu	$s7, $a2, .LBB3_81
# %bb.79:                               # %if.then590
	add.w	$s0, $s3, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.w	$s2, $a0, $a1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s2, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s3, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s3
	addi.w	$s5, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	move	$s6, $a5
	alsl.w	$a5, $s2, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s4, $t0
	move	$s8, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s8
	move	$t0, $s4
	move	$a5, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $s5, .LBB3_81
# %bb.80:                               # %if.then613
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$a7, $s2
	move	$a5, $a0
.LBB3_81:                               # %if.end616
	or	$a0, $fp, $s1
	bstrpick.d	$a0, $a0, 15, 0
	bnez	$a0, .LBB3_84
.LBB3_82:
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB3_123
.LBB3_83:
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	or	$a0, $fp, $s1
	bstrpick.d	$a0, $a0, 15, 0
	beqz	$a0, .LBB3_82
.LBB3_84:                               # %if.then622
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$s7, $a0, .LBB3_88
# %bb.85:                               # %if.then622
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bltu	$s7, $a0, .LBB3_88
# %bb.86:                               # %if.then632
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 0
	slli.d	$a2, $t0, 2
	sub.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	addi.w	$s0, $a5, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 80
	move	$s2, $a5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s6, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s6
	move	$a5, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_88
# %bb.87:                               # %if.then655
	move	$s4, $s3
	move	$a7, $s1
	move	$a5, $a0
.LBB3_88:                               # %if.end657
	addi.w	$fp, $s4, -1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_90
# %bb.89:                               # %land.lhs.true675
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_118
.LBB3_90:
	move	$s8, $s4
	b	.LBB3_119
.LBB3_91:                               # %for.body305.lr.ph
	bstrpick.d	$a0, $s7, 31, 31
	add.w	$a0, $s7, $a0
	srai.d	$s5, $a0, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$s8, $a0, $a1
	slli.d	$a0, $a7, 2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a2, $zero, 80
	alsl.w	$a0, $a7, $a2, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	sub.w	$a0, $s4, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	alsl.w	$a0, $s4, $a2, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$s6, $zero, 1
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	b	.LBB3_94
	.p2align	4, , 16
.LBB3_92:                               #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$s4, $s5
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
.LBB3_93:                               # %for.inc453
                                        #   in Loop: Header=BB3_94 Depth=1
	addi.d	$s6, $s6, 1
	bstrpick.d	$fp, $s6, 15, 0
	blt	$s5, $fp, .LBB3_67
.LBB3_94:                               # %for.body305
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $fp, 1
	addi.d	$a0, $a0, -1
	add.w	$s0, $a0, $s4
	sub.w	$a0, $s0, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_98
# %bb.95:                               # %for.body305
                                        #   in Loop: Header=BB3_94 Depth=1
	bltu	$s7, $s8, .LBB3_98
# %bb.96:                               # %if.then319
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s1
	addi.w	$s2, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $a5
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	bge	$a0, $s2, .LBB3_98
# %bb.97:                               # %if.then342
                                        #   in Loop: Header=BB3_94 Depth=1
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a0
.LBB3_98:                               # %if.end344
                                        #   in Loop: Header=BB3_94 Depth=1
	addi.d	$a0, $zero, -1
	alsl.w	$s1, $fp, $a0, 1
	sub.w	$fp, $s4, $s1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_102
# %bb.99:                               # %if.end344
                                        #   in Loop: Header=BB3_94 Depth=1
	bltu	$s7, $s8, .LBB3_102
# %bb.100:                              # %if.then355
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s2, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $a5
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	bge	$a0, $s2, .LBB3_102
# %bb.101:                              # %if.then378
                                        #   in Loop: Header=BB3_94 Depth=1
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a0
.LBB3_102:                              # %if.end380
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bltu	$s7, $a0, .LBB3_93
# %bb.103:                              # %land.lhs.true386
                                        #   in Loop: Header=BB3_94 Depth=1
	move	$s5, $s4
	add.w	$s0, $s1, $a7
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slli.d	$fp, $a1, 2
	bgeu	$s7, $a0, .LBB3_105
# %bb.104:                              #   in Loop: Header=BB3_94 Depth=1
	move	$s4, $a5
	b	.LBB3_107
	.p2align	4, , 16
.LBB3_105:                              # %if.then391
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $a0, $fp
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s2
	move	$s4, $a5
	addi.w	$s3, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.w	$a0, $s2, $a0
	bge	$a0, $s3, .LBB3_107
# %bb.106:                              # %if.then414
                                        #   in Loop: Header=BB3_94 Depth=1
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$s4, $a0
.LBB3_107:                              # %land.lhs.true422
                                        #   in Loop: Header=BB3_94 Depth=1
	sub.w	$s0, $a7, $s1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_92
# %bb.108:                              # %if.then427
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $a0, $fp
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s4, $fp
	addi.w	$s1, $s4, 0
	ori	$a0, $zero, 80
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	move	$a5, $s4
	add.w	$a0, $fp, $a0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	move	$s4, $s5
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB3_93
# %bb.109:                              # %if.then450
                                        #   in Loop: Header=BB3_94 Depth=1
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a0
	b	.LBB3_93
.LBB3_110:                              # %for.cond513.preheader.preheader
	bstrpick.d	$a0, $s7, 62, 61
	add.w	$a0, $s7, $a0
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_X)
	addi.d	$s4, $a0, %pc_lo12(Big_Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_Y)
	addi.d	$a2, $a0, %pc_lo12(Big_Hexagon_Y)
	ori	$a6, $zero, 32
	ori	$a1, $zero, 1
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	b	.LBB3_112
	.p2align	4, , 16
.LBB3_111:                              # %for.inc568
                                        #   in Loop: Header=BB3_112 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$s1, $a1, 15, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB3_76
.LBB3_112:                              # %for.cond513.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_114 Depth 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	b	.LBB3_114
	.p2align	4, , 16
.LBB3_113:                              # %for.inc565
                                        #   in Loop: Header=BB3_114 Depth=2
	addi.d	$s8, $s8, 2
	beq	$s8, $a6, .LBB3_111
.LBB3_114:                              # %for.body517
                                        #   Parent Loop BB3_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s4, $s8
	mul.d	$a0, $s1, $a0
	add.w	$s0, $a0, $s3
	sub.w	$a0, $s0, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_113
# %bb.115:                              # %land.lhs.true534
                                        #   in Loop: Header=BB3_114 Depth=2
	ldx.h	$a0, $a2, $s8
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_113
# %bb.116:                              # %if.then539
                                        #   in Loop: Header=BB3_114 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	move	$s3, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s7
	addi.w	$s6, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	move	$s2, $a5
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s5, $a7
	jirl	$ra, $a6, 0
	ori	$a6, $zero, 32
	move	$a2, $s3
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $s5
	move	$a5, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB3_113
# %bb.117:                              # %if.then562
                                        #   in Loop: Header=BB3_114 Depth=2
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$a7, $fp
	move	$a5, $a0
	b	.LBB3_113
.LBB3_118:                              # %if.then680
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a7, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s1, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $a7, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a5, $a0, $a1
.LBB3_119:                              # %for.inc706
	addi.w	$fp, $s4, 1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_122
# %bb.120:                              # %land.lhs.true675.1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_122
# %bb.121:                              # %if.then680.1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a7, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s1, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $a7, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a5, $a0, $a1
.LBB3_122:                              # %for.inc706.1
	sub.w	$a0, $s4, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$s7, $a0, .LBB3_161
.LBB3_123:
	move	$s5, $a7
.LBB3_124:                              # %if.end709
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB3_125:                              # %if.end709
	ld.hu	$a0, $a1, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a1
	addi.w	$fp, $a5, 0
	bge	$fp, $a0, .LBB3_129
# %bb.126:                              # %for.body722.preheader
	addi.d	$s0, $s8, -1
	sub.w	$a0, $s0, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_128
# %bb.127:                              # %land.lhs.true735
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_164
.LBB3_128:
	move	$a6, $s8
	move	$s4, $s8
	b	.LBB3_165
.LBB3_129:                              # %for.cond774.preheader
	ori	$a0, $zero, 1
	move	$a1, $s8
	blt	$s7, $a0, .LBB3_163
# %bb.130:                              # %for.cond779.preheader.preheader
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s3, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s6, $a0, %pc_lo12(Hexagon_Y)
	ori	$t0, $zero, 12
	b	.LBB3_132
	.p2align	4, , 16
.LBB3_131:                              # %for.cond774
                                        #   in Loop: Header=BB3_132 Depth=1
	addi.d	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 15, 0
	move	$a7, $s5
	move	$s4, $a1
	bge	$a0, $s7, .LBB3_140
.LBB3_132:                              # %for.cond779.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_134 Depth 2
	move	$fp, $zero
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$s4, $a1
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$a7, $s5
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	b	.LBB3_134
	.p2align	4, , 16
.LBB3_133:                              # %for.inc827
                                        #   in Loop: Header=BB3_134 Depth=2
	addi.d	$fp, $fp, 2
	beq	$fp, $t0, .LBB3_138
.LBB3_134:                              # %for.body783
                                        #   Parent Loop BB3_132 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s3, $fp
	add.w	$s0, $s4, $a0
	sub.w	$a0, $s0, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_133
# %bb.135:                              # %land.lhs.true796
                                        #   in Loop: Header=BB3_134 Depth=2
	ldx.h	$a0, $s6, $fp
	add.w	$s5, $a7, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_133
# %bb.136:                              # %if.then801
                                        #   in Loop: Header=BB3_134 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s7
	addi.w	$s8, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	move	$s2, $s4
	move	$s4, $a5
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	ori	$t0, $zero, 12
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	move	$a7, $s1
	move	$a5, $s4
	move	$s4, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $s8, .LBB3_133
# %bb.137:                              # %if.then824
                                        #   in Loop: Header=BB3_134 Depth=2
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a0
	b	.LBB3_133
	.p2align	4, , 16
.LBB3_138:                              # %for.end829
                                        #   in Loop: Header=BB3_132 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	bne	$a1, $s4, .LBB3_131
# %bb.139:                              # %for.end829
                                        #   in Loop: Header=BB3_132 Depth=1
	bne	$s5, $a7, .LBB3_131
.LBB3_140:                              # %for.cond845.preheader.preheader
	move	$s3, $zero
	ori	$s5, $zero, 80
	b	.LBB3_143
.LBB3_141:                              #   in Loop: Header=BB3_143 Depth=1
	move	$a5, $a0
	move	$fp, $s0
	move	$s6, $s8
	.p2align	4, , 16
.LBB3_142:                              # %for.cond840
                                        #   in Loop: Header=BB3_143 Depth=1
	addi.d	$s3, $s3, 1
	bstrpick.d	$a0, $s3, 15, 0
	move	$a7, $fp
	move	$s4, $s6
	bge	$a0, $s7, .LBB3_182
.LBB3_143:                              # %for.cond845.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $s4, -1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_145
# %bb.144:                              # %land.lhs.true862
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_146
.LBB3_145:                              #   in Loop: Header=BB3_143 Depth=1
	move	$s6, $s4
	b	.LBB3_147
	.p2align	4, , 16
.LBB3_146:                              # %if.then867
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a7, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s1, $a5, 0
	alsl.w	$a4, $fp, $s5, 2
	alsl.w	$a5, $a7, $s5, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s6, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a5, $a0, $a1
.LBB3_147:                              # %for.inc893
                                        #   in Loop: Header=BB3_143 Depth=1
	addi.w	$fp, $s4, 1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_150
# %bb.148:                              # %land.lhs.true862.1
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a7, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_150
# %bb.149:                              # %if.then867.1
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a7, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s1, $a5, 0
	alsl.w	$a4, $fp, $s5, 2
	alsl.w	$a5, $a7, $s5, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s6, $a1
	maskeqz	$a3, $fp, $a1
	or	$s6, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a5, $a0, $a1
.LBB3_150:                              # %for.inc893.1
                                        #   in Loop: Header=BB3_143 Depth=1
	sub.w	$a0, $s4, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_152
# %bb.151:                              #   in Loop: Header=BB3_143 Depth=1
	move	$s8, $s4
	move	$s4, $a5
	move	$fp, $a7
	b	.LBB3_159
	.p2align	4, , 16
.LBB3_152:                              # %land.lhs.true862.2
                                        #   in Loop: Header=BB3_143 Depth=1
	addi.w	$s0, $a7, -1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$s1, $s4, 2
	move	$s8, $s4
	alsl.w	$a4, $s4, $s5, 2
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	bgeu	$s7, $a0, .LBB3_154
# %bb.153:                              #   in Loop: Header=BB3_143 Depth=1
	move	$s4, $a5
	move	$fp, $a7
	b	.LBB3_156
	.p2align	4, , 16
.LBB3_154:                              # %if.then867.2
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $s1, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	move	$s4, $a5
	addi.w	$s2, $a5, 0
	alsl.w	$a5, $s0, $s5, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s5, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s5
	add.w	$a0, $fp, $a0
	move	$fp, $s5
	bge	$a0, $s2, .LBB3_156
# %bb.155:                              # %if.then890.2
                                        #   in Loop: Header=BB3_143 Depth=1
	move	$s6, $s8
	move	$fp, $s0
	move	$s4, $a0
.LBB3_156:                              # %land.lhs.true862.3
                                        #   in Loop: Header=BB3_143 Depth=1
	addi.w	$s0, $a7, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_158
# %bb.157:                              #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ori	$s5, $zero, 80
	b	.LBB3_159
	.p2align	4, , 16
.LBB3_158:                              # %if.then867.3
                                        #   in Loop: Header=BB3_143 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $s1, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s4, $s1
	addi.w	$s2, $s4, 0
	ori	$a0, $zero, 80
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	move	$s5, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s5
	ori	$s5, $zero, 80
	add.w	$a0, $s1, $a0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $s2, .LBB3_141
	.p2align	4, , 16
.LBB3_159:                              # %for.inc893.3
                                        #   in Loop: Header=BB3_143 Depth=1
	move	$a5, $s4
	bne	$s6, $s8, .LBB3_142
# %bb.160:                              # %for.inc893.3
                                        #   in Loop: Header=BB3_143 Depth=1
	move	$s4, $s8
	bne	$fp, $a7, .LBB3_142
	b	.LBB3_182
.LBB3_161:                              # %land.lhs.true675.2
	addi.w	$s0, $a7, -1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $s4, 2
	bgeu	$s7, $a0, .LBB3_172
# %bb.162:
	move	$s5, $a7
	b	.LBB3_174
.LBB3_163:
	move	$s4, $a1
	move	$a7, $s5
	b	.LBB3_182
.LBB3_164:                              # %if.then740
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s1
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	slt	$a1, $a0, $fp
	move	$a6, $s8
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $s0, $a1
	or	$s4, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a5, $a0, $a1
.LBB3_165:                              # %for.inc766
	addi.d	$fp, $a6, 1
	sub.w	$a0, $fp, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$s7, $a0, .LBB3_168
# %bb.166:                              # %land.lhs.true735.1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_168
# %bb.167:                              # %if.then740.1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s0
	addi.w	$s1, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	move	$a6, $s8
	slt	$a1, $a0, $s1
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s4, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a5, $a0, $a1
.LBB3_168:                              # %for.inc766.1
	sub.w	$a0, $a6, $a4
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$s7, $a0, .LBB3_170
# %bb.169:
	move	$a7, $s5
	b	.LBB3_182
.LBB3_170:                              # %land.lhs.true735.2
	addi.d	$s0, $s5, -1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $a6, 2
	bgeu	$s7, $a0, .LBB3_176
# %bb.171:
	move	$a7, $s5
	b	.LBB3_178
.LBB3_172:                              # %if.then680.2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s1
	addi.w	$s2, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s4, $a0, 2
	move	$s3, $a5
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s5, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s5
	move	$a5, $s3
	add.w	$a0, $s1, $a0
	bge	$a0, $s2, .LBB3_174
# %bb.173:                              # %if.then703.2
	move	$s8, $s4
	move	$s5, $s0
	move	$a5, $a0
.LBB3_174:                              # %land.lhs.true675.3
	addi.w	$s0, $a7, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$s7, $a0, .LBB3_183
# %bb.175:
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	b	.LBB3_124
.LBB3_176:                              # %if.then740.2
	move	$a4, $a6
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $s1
	addi.w	$s2, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $a4, $a0, 2
	move	$s3, $a5
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	move	$a5, $s3
	add.w	$a0, $s1, $a0
	move	$a7, $s5
	bge	$a0, $s2, .LBB3_178
# %bb.177:                              # %if.then763.2
	move	$s4, $s8
	move	$a7, $s0
	move	$a5, $a0
.LBB3_178:                              # %land.lhs.true735.3
	addi.d	$s0, $s5, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$s7, $a0, .LBB3_182
# %bb.179:                              # %if.then740.3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	addi.w	$s1, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s8, $a0, 2
	move	$s2, $a5
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s3
	move	$a5, $s2
	add.w	$a0, $fp, $a0
	bge	$a0, $s1, .LBB3_182
# %bb.180:                              # %if.then763.3
	move	$s4, $s8
	move	$a7, $s0
.LBB3_181:                              # %cleanup
	move	$a5, $a0
.LBB3_182:                              # %cleanup
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $a7, $a0
	addi.w	$a0, $a5, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.h	$a1, $a2, 0
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
.LBB3_183:                              # %if.then680.3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a5, $fp
	addi.w	$s1, $a5, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s4, $a0, 2
	move	$s2, $a5
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	move	$a5, $s2
	add.w	$a0, $fp, $a0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s1, .LBB3_125
# %bb.184:                              # %if.then703.3
	move	$s8, $s4
	move	$s5, $s0
	move	$a5, $a0
	b	.LBB3_125
.Lfunc_end3:
	.size	smpUMHEXIntegerPelBlockMotionSearch, .Lfunc_end3-smpUMHEXIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXFullSubPelBlockMotionSearch # -- Begin function smpUMHEXFullSubPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXFullSubPelBlockMotionSearch,@function
smpUMHEXFullSubPelBlockMotionSearch:    # @smpUMHEXFullSubPelBlockMotionSearch
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
	pcalau12i	$t0, %got_pc_hi20(input)
	ld.d	$t1, $t0, %got_pc_lo12(input)
	ld.d	$t0, $sp, 272
	ld.d	$t1, $t1, 0
	pcalau12i	$t2, %got_pc_hi20(img)
	ld.d	$t2, $t2, %got_pc_lo12(img)
	ld.d	$ra, $sp, 264
	ld.d	$t6, $sp, 256
	ldptr.w	$t3, $t1, 4168
	ld.d	$t2, $t2, 0
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	move	$s6, $a5
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beqz	$t3, .LBB4_27
.LBB4_1:
	move	$a0, $zero
.LBB4_2:                                # %land.end
	alsl.d	$a6, $s6, $t1, 3
	pcalau12i	$a5, %pc_hi20(start_me_refinement_hp)
	ld.w	$s2, $a5, %pc_lo12(start_me_refinement_hp)
	ori	$a7, $zero, 1
	ldptr.d	$t3, $t2, 14224
	ld.w	$t4, $t2, 12
	pcalau12i	$a5, %pc_hi20(active_pps)
	ld.d	$a5, $a5, %pc_lo12(active_pps)
	ori	$t5, $zero, 536
	mul.d	$t4, $t4, $t5
	add.d	$t3, $t3, $t4
	ld.w	$t5, $a5, 192
	ld.w	$t4, $t3, 432
	slt	$t3, $a7, $t0
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $t0, $t3
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	beqz	$t5, .LBB4_5
# %bb.3:                                # %land.lhs.true26
	ld.w	$t5, $t2, 20
	beqz	$t5, .LBB4_7
# %bb.4:                                # %land.lhs.true26
	ori	$t6, $zero, 3
	beq	$t5, $t6, .LBB4_7
.LBB4_5:                                # %lor.lhs.false33
	ld.w	$a5, $a5, 196
	beqz	$a5, .LBB4_8
# %bb.6:                                # %land.lhs.true35
	ld.w	$a5, $t2, 20
	ori	$t2, $zero, 1
	bne	$a5, $t2, .LBB4_8
.LBB4_7:                                # %land.rhs39
	ori	$a5, $zero, 2936
	ldx.w	$a5, $t1, $a5
	sltu	$a5, $zero, $a5
	b	.LBB4_9
.LBB4_8:
	move	$a5, $zero
.LBB4_9:                                # %land.end41
	pcalau12i	$t1, %got_pc_hi20(listX)
	ld.d	$t1, $t1, %got_pc_lo12(listX)
	ld.w	$t2, $a6, 72
	st.d	$t2, $sp, 128                   # 8-byte Folded Spill
	add.w	$a2, $t4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$t1, $t1, $a2
	ld.w	$a6, $a6, 76
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	sltui	$t2, $s2, 1
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $t1, $a6
	or	$t3, $t3, $a7
	lu12i.w	$t1, 1
	ori	$a7, $t1, 2296
	ldx.w	$t5, $a6, $a7
	ori	$a7, $t1, 2300
	ldx.w	$t6, $a6, $a7
	ori	$a7, $zero, 2
	masknez	$a7, $a7, $a5
	ori	$t4, $zero, 5
	maskeqz	$t4, $t4, $a5
	or	$a7, $t4, $a7
	ldptr.d	$t7, $a6, 6448
	pcalau12i	$t4, %got_pc_hi20(ref_pic_sub)
	ld.d	$t4, $t4, %got_pc_lo12(ref_pic_sub)
	pcalau12i	$t8, %got_pc_hi20(img_width)
	ld.d	$t8, $t8, %got_pc_lo12(img_width)
	pcalau12i	$fp, %pc_hi20(dist_method)
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.w	$a7, $fp, %pc_lo12(dist_method)
	st.d	$t7, $t4, 0
	st.h	$t5, $t8, 0
	ori	$a7, $t1, 2312
	ldx.w	$a7, $a6, $a7
	pcalau12i	$t7, %got_pc_hi20(img_height)
	ld.d	$t7, $t7, %got_pc_lo12(img_height)
	pcalau12i	$t8, %pc_hi20(width_pad)
	st.w	$a7, $t8, %pc_lo12(width_pad)
	ori	$a7, $t1, 2316
	ldx.w	$t8, $a6, $a7
	ori	$a7, $zero, 80
	st.h	$t6, $t7, 0
	pcalau12i	$t7, %pc_hi20(height_pad)
	st.w	$t8, $t7, %pc_lo12(height_pad)
	beqz	$a5, .LBB4_11
# %bb.10:                               # %if.then
	pcalau12i	$t7, %pc_hi20(wp_weight)
	ld.d	$t7, $t7, %pc_lo12(wp_weight)
	ldx.d	$t7, $t7, $a2
	slli.d	$t8, $a1, 3
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	ldx.d	$t7, $t7, $t8
	ldx.d	$fp, $fp, $a2
	ld.w	$t7, $t7, 0
	pcalau12i	$s0, %got_pc_hi20(weight_luma)
	ld.d	$s0, $s0, %got_pc_lo12(weight_luma)
	ldx.d	$t8, $fp, $t8
	st.w	$t7, $s0, 0
	ld.w	$t7, $t8, 0
	pcalau12i	$t8, %got_pc_hi20(offset_luma)
	ld.d	$t8, $t8, %got_pc_lo12(offset_luma)
	st.w	$t7, $t8, 0
.LBB4_11:                               # %if.end
	pcalau12i	$t7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t7, $t7, %got_pc_lo12(ChromaMEEnable)
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	sub.d	$t8, $t5, $t8
	ld.w	$t5, $t7, 0
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	sub.d	$t6, $t6, $t7
	maskeqz	$t3, $t3, $t2
	masknez	$t0, $t0, $t2
	alsl.w	$a3, $a3, $a7, 2
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	beqz	$t5, .LBB4_14
# %bb.12:                               # %if.then72
	ldptr.d	$a3, $a6, 6464
	ld.d	$t2, $a3, 0
	st.d	$t2, $t4, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t4, 16
	ori	$a3, $t1, 2320
	ldx.w	$a3, $a6, $a3
	ori	$t1, $t1, 2324
	ldx.w	$a6, $a6, $t1
	pcalau12i	$t1, %pc_hi20(width_pad_cr)
	st.w	$a3, $t1, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a6, $a3, %pc_lo12(height_pad_cr)
	beqz	$a5, .LBB4_14
# %bb.13:                               # %if.then77
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a5, %got_pc_hi20(weight_cr)
	ld.d	$a5, $a5, %got_pc_lo12(weight_cr)
	pcalau12i	$a6, %pc_hi20(wp_offset)
	ld.d	$a6, $a6, %pc_lo12(wp_offset)
	st.d	$a3, $a5, 0
	ldx.d	$a2, $a6, $a2
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 4
	pcalau12i	$a3, %got_pc_hi20(offset_cr)
	ld.d	$a3, $a3, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a2, $a3, 0
	st.w	$a1, $a3, 4
.LBB4_14:                               # %if.end103
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.h	$a1, $t1, 0
	alsl.w	$a2, $a4, $a7, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	ori	$a3, $zero, 2
	or	$s8, $t3, $t0
	blt	$a2, $a3, .LBB4_19
# %bb.15:                               # %if.end103
	slli.d	$a3, $t8, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB4_19
# %bb.16:                               # %land.lhs.true114
	ld.h	$a2, $ra, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB4_19
# %bb.17:                               # %land.lhs.true114
	slli.d	$a3, $t6, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB4_19
# %bb.18:
	move	$a2, $zero
	b	.LBB4_20
.LBB4_19:                               # %if.else
	ori	$a2, $zero, 1
.LBB4_20:                               # %if.end126
	ld.d	$s3, $sp, 296
	pcalau12i	$a3, %got_pc_hi20(ref_access_method)
	ld.d	$a6, $a3, %got_pc_lo12(ref_access_method)
	ld.w	$s5, $sp, 288
	st.w	$a2, $a6, 0
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	bge	$s2, $s8, .LBB4_26
# %bb.21:                               # %for.body.lr.ph
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $zero
	srai.d	$a4, $s3, 12
	pcalau12i	$a1, %pc_hi20(block_type_shift_factor)
	addi.d	$a1, $a1, %pc_lo12(block_type_shift_factor)
	pcalau12i	$a2, %got_pc_hi20(spiral_hpel_search_x)
	ld.d	$a5, $a2, %got_pc_lo12(spiral_hpel_search_x)
	pcalau12i	$a2, %got_pc_hi20(spiral_hpel_search_y)
	ld.d	$a3, $a2, %got_pc_lo12(spiral_hpel_search_y)
	pcalau12i	$a2, %got_pc_hi20(mvbits)
	ld.d	$a6, $a2, %got_pc_lo12(mvbits)
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a1, $s6, $a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $a5, 0
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 0
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $a6, 0
	slli.d	$s7, $s2, 1
	pcalau12i	$a5, %got_pc_hi20(computeUniPred)
	ld.d	$a5, $a5, %got_pc_lo12(computeUniPred)
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	maskeqz	$fp, $a4, $a0
	pcalau12i	$s6, %pc_hi20(SubPelThreshold3)
	move	$s4, $s2
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_23 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$s2, $s2, 1
	addi.d	$s7, $s7, 2
	beq	$s8, $s2, .LBB4_33
.LBB4_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $t1, 0
	ldx.h	$a4, $a1, $s7
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a2, $s7
	add.d	$a0, $a4, $a0
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	add.d	$a4, $a6, $a4
	mul.w	$a4, $a4, $s3
	srai.d	$s0, $a4, 16
	bge	$s0, $s5, .LBB4_22
# %bb.24:                               # %if.end152
                                        #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a6, $a2, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s5, $s0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	sltui	$a1, $s4, 1
	maskeqz	$a1, $fp, $a1
	sub.d	$a1, $s0, $a1
	add.w	$a0, $a1, $a0
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $s5, $a1
	ld.hu	$a3, $s6, %pc_lo12(SubPelThreshold3)
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.hu	$a4, $a4, 0
	or	$s5, $a0, $a2
	masknez	$a0, $s1, $a1
	maskeqz	$a1, $s2, $a1
	srl.w	$a2, $a3, $a4
	or	$s1, $a1, $a0
	blt	$s5, $a2, .LBB4_32
# %bb.25:                               #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB4_22
.LBB4_26:
	bstrpick.d	$a0, $a1, 15, 0
	bstrpick.d	$a1, $a0, 15, 0
	bnez	$a1, .LBB4_38
	b	.LBB4_36
.LBB4_27:                               # %land.lhs.true
	ori	$a5, $zero, 1
	move	$a0, $zero
	bne	$s6, $a5, .LBB4_2
# %bb.28:                               # %land.lhs.true
	bnez	$a1, .LBB4_2
# %bb.29:                               # %land.lhs.true
	ld.w	$a5, $t2, 20
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB4_2
# %bb.30:                               # %land.lhs.true7
	ld.hu	$a0, $t6, 0
	bnez	$a0, .LBB4_1
# %bb.31:                               # %land.rhs
	ld.hu	$a0, $ra, 0
	sltui	$a0, $a0, 1
	b	.LBB4_2
.LBB4_32:
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
.LBB4_33:                               # %for.end
	ld.hu	$a0, $t1, 0
	beqz	$s1, .LBB4_35
# %bb.34:                               # %if.then183
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s1, 1
	ldx.h	$a1, $a1, $a2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a0, $a1
	st.h	$a0, $t1, 0
	ldx.h	$a0, $a3, $a2
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
	ld.hu	$a0, $t1, 0
.LBB4_35:                               # %if.end196
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 15, 0
	bnez	$a1, .LBB4_38
.LBB4_36:                               # %land.lhs.true200
	ld.h	$a1, $ra, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bnez	$a1, .LBB4_38
# %bb.37:                               # %land.lhs.true212
	pcalau12i	$a1, %pc_hi20(SubPelThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SubPelThreshold1)
	slli.d	$a2, $s6, 1
	pcalau12i	$a3, %pc_hi20(block_type_shift_factor)
	addi.d	$a3, $a3, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a2, $a3, $a2
	srl.w	$a1, $a1, $a2
	blt	$s5, $a1, .LBB4_52
.LBB4_38:                               # %if.end221
	pcalau12i	$a1, %pc_hi20(start_me_refinement_qp)
	ld.w	$s4, $a1, %pc_lo12(start_me_refinement_qp)
	ld.d	$s8, $sp, 280
	sltui	$a3, $s4, 1
	masknez	$a1, $s5, $a3
	lu12i.w	$a2, 524287
	ori	$a5, $a2, 4095
	ext.w.h	$a0, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a5, $a3
	blt	$a4, $a2, .LBB4_43
# %bb.39:                               # %if.end221
	ori	$a3, $zero, 160
	alsl.w	$a5, $t8, $a3, 2
	bge	$a4, $a5, .LBB4_43
# %bb.40:                               # %land.lhs.true234
	ld.h	$a4, $ra, 0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $a5, $a4
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB4_43
# %bb.41:                               # %land.lhs.true234
	alsl.w	$a3, $t6, $a3, 2
	bge	$a4, $a3, .LBB4_43
# %bb.42:
	move	$a2, $zero
.LBB4_43:                               # %if.end246
	or	$s5, $a0, $a1
	st.w	$a2, $a6, 0
	bge	$s4, $s8, .LBB4_52
# %bb.44:                               # %for.body250.lr.ph
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(block_type_shift_factor)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_x)
	ld.d	$a4, $a1, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_y)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$s2, $a1, %got_pc_lo12(mvbits)
	addi.d	$a3, $a0, %pc_lo12(block_type_shift_factor)
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a4, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a4, %got_pc_hi20(computeUniPred)
	ld.d	$a4, $a4, %got_pc_lo12(computeUniPred)
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$s7, $s6, $a3, 1
	slli.d	$fp, $s4, 1
	pcalau12i	$s1, %pc_hi20(SubPelThreshold3)
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_45:                               # %for.inc296
                                        #   in Loop: Header=BB4_46 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$fp, $fp, 2
	beq	$s8, $s4, .LBB4_50
.LBB4_46:                               # %for.body250
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $t1, 0
	ldx.h	$a4, $a0, $fp
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a1, $fp
	add.d	$a3, $a4, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a4, $a6, $a4
	mul.w	$a4, $a4, $s3
	srai.d	$s6, $a4, 16
	bge	$s6, $s5, .LBB4_45
# %bb.47:                               # %if.end275
                                        #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s5, $s6
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	add.w	$a0, $a0, $s6
	slt	$a1, $a0, $s5
	masknez	$a2, $s0, $a1
	maskeqz	$a3, $s4, $a1
	ld.hu	$a4, $s1, %pc_lo12(SubPelThreshold3)
	ld.hu	$a5, $s7, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s5, $a0, $a1
	srl.w	$a0, $a4, $a5
	or	$s0, $a3, $a2
	blt	$s5, $a0, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB4_45
.LBB4_49:
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
.LBB4_50:                               # %for.end298
	beqz	$s0, .LBB4_52
# %bb.51:                               # %if.then300
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.h	$a0, $a0, $a1
	ld.h	$a2, $t1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a2, $a0
	st.h	$a0, $t1, 0
	ldx.h	$a0, $a3, $a1
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
.LBB4_52:                               # %cleanup
	move	$a0, $s5
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
.Lfunc_end4:
	.size	smpUMHEXFullSubPelBlockMotionSearch, .Lfunc_end4-smpUMHEXFullSubPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXSubPelBlockMotionSearch # -- Begin function smpUMHEXSubPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXSubPelBlockMotionSearch,@function
smpUMHEXSubPelBlockMotionSearch:        # @smpUMHEXSubPelBlockMotionSearch
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 15268
	move	$s0, $a7
	move	$ra, $a5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	beqz	$t1, .LBB5_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $t0, 12
	ldptr.d	$a5, $t0, 14224
	ori	$a7, $zero, 536
	mul.d	$a7, $a0, $a7
	add.d	$a5, $a5, $a7
	ld.w	$a5, $a5, 424
	beqz	$a5, .LBB5_3
# %bb.2:                                # %cond.true
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a0
	ori	$a7, $zero, 2
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a5
	b	.LBB5_4
.LBB5_3:
	move	$a0, $zero
.LBB5_4:                                # %cond.end
	add.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	slli.d	$s1, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a5, $a0, %got_pc_lo12(input)
	ldx.d	$a7, $a2, $s1
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a2, $a5, 0
	slli.d	$a5, $a1, 3
	ldx.d	$t2, $a7, $a5
	ld.w	$t1, $a0, 192
	alsl.d	$a5, $ra, $a2, 3
	lu12i.w	$a7, 1
	ori	$t6, $a7, 2296
	ori	$t5, $a7, 2300
	beqz	$t1, .LBB5_7
# %bb.5:                                # %land.lhs.true30
	ld.w	$t1, $t0, 20
	beqz	$t1, .LBB5_9
# %bb.6:                                # %land.lhs.true30
	ori	$t3, $zero, 3
	beq	$t1, $t3, .LBB5_9
.LBB5_7:                                # %lor.lhs.false35
	ld.w	$t1, $a0, 196
	ori	$a0, $zero, 2
	beqz	$t1, .LBB5_10
# %bb.8:                                # %land.lhs.true37
	ld.w	$t0, $t0, 20
	ori	$t1, $zero, 1
	bne	$t0, $t1, .LBB5_10
.LBB5_9:                                # %land.end
	ldptr.w	$a0, $a2, 2936
	sltu	$t3, $zero, $a0
	ori	$a0, $zero, 2
	masknez	$a0, $a0, $t3
	ori	$a2, $zero, 5
	maskeqz	$a2, $a2, $t3
	or	$a0, $a2, $a0
	b	.LBB5_11
.LBB5_10:
	move	$t3, $zero
.LBB5_11:                               # %land.end.thread
	ld.w	$a2, $a5, 72
	ld.w	$a5, $a5, 76
	pcalau12i	$t0, %pc_hi20(ref_pic_ptr)
	ld.d	$t4, $t0, %pc_lo12(ref_pic_ptr)
	ldx.w	$t1, $t2, $t6
	ldx.w	$t0, $t2, $t5
	ori	$t2, $zero, 80
	ldx.h	$t7, $t4, $t6
	pcalau12i	$t6, %got_pc_hi20(img_width)
	ld.d	$t8, $t6, %got_pc_lo12(img_width)
	ldptr.d	$fp, $t4, 6448
	pcalau12i	$t6, %got_pc_hi20(ref_pic_sub)
	ld.d	$t6, $t6, %got_pc_lo12(ref_pic_sub)
	st.h	$t7, $t8, 0
	ldx.h	$t5, $t4, $t5
	pcalau12i	$t7, %got_pc_hi20(img_height)
	ld.d	$t7, $t7, %got_pc_lo12(img_height)
	pcalau12i	$t8, %pc_hi20(dist_method)
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $t8, %pc_lo12(dist_method)
	st.d	$fp, $t6, 0
	st.h	$t5, $t7, 0
	ori	$t5, $a7, 2312
	ldx.w	$t5, $t4, $t5
	ori	$t7, $a7, 2316
	ldx.w	$t7, $t4, $t7
	pcalau12i	$t8, %pc_hi20(width_pad)
	st.w	$t5, $t8, %pc_lo12(width_pad)
	pcalau12i	$t5, %pc_hi20(height_pad)
	st.w	$t7, $t5, %pc_lo12(height_pad)
	beqz	$t3, .LBB5_13
# %bb.12:                               # %if.then
	pcalau12i	$t5, %pc_hi20(wp_weight)
	ld.d	$t5, $t5, %pc_lo12(wp_weight)
	ldx.d	$t5, $t5, $s1
	slli.d	$t7, $a1, 3
	pcalau12i	$t8, %pc_hi20(wp_offset)
	ld.d	$t8, $t8, %pc_lo12(wp_offset)
	ldx.d	$t5, $t5, $t7
	ldx.d	$t8, $t8, $s1
	ld.w	$t5, $t5, 0
	pcalau12i	$fp, %got_pc_hi20(weight_luma)
	ld.d	$fp, $fp, %got_pc_lo12(weight_luma)
	ldx.d	$t7, $t8, $t7
	st.w	$t5, $fp, 0
	ld.w	$t5, $t7, 0
	pcalau12i	$t7, %got_pc_hi20(offset_luma)
	ld.d	$t7, $t7, %got_pc_lo12(offset_luma)
	st.w	$t5, $t7, 0
.LBB5_13:                               # %if.end
	pcalau12i	$t5, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t5, $t5, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t5, $t5, 0
	ld.d	$t7, $sp, 224
	alsl.w	$a3, $a3, $t2, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	beqz	$t5, .LBB5_16
# %bb.14:                               # %if.then61
	ldptr.d	$a3, $t4, 6464
	ld.d	$t5, $a3, 0
	st.d	$t5, $t6, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t6, 16
	ori	$a3, $a7, 2320
	ldx.w	$a3, $t4, $a3
	ori	$a7, $a7, 2324
	ldx.w	$a7, $t4, $a7
	pcalau12i	$t4, %pc_hi20(width_pad_cr)
	st.w	$a3, $t4, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a7, $a3, %pc_lo12(height_pad_cr)
	beqz	$t3, .LBB5_16
# %bb.15:                               # %if.then66
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $s1
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a7, %got_pc_hi20(weight_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight_cr)
	pcalau12i	$t3, %pc_hi20(wp_offset)
	ld.d	$t3, $t3, %pc_lo12(wp_offset)
	st.d	$a3, $a7, 0
	ldx.d	$a3, $t3, $s1
	ldx.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 4
	pcalau12i	$a7, %got_pc_hi20(offset_cr)
	ld.d	$a7, $a7, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a7, 0
	st.w	$a1, $a7, 4
.LBB5_16:                               # %if.end92
	ld.h	$s4, $t7, 0
	ld.d	$s8, $sp, 232
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$a3, $a1, $s4
	ori	$a1, $zero, 1
	alsl.w	$a4, $a4, $t2, 2
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	bge	$a1, $a3, .LBB5_21
# %bb.17:                               # %land.lhs.true97
	sub.d	$a1, $t1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$a4, $a1, 160
	ld.hu	$a1, $s8, 0
	ext.w.h	$a4, $a4
	addi.d	$a4, $a4, -1
	bge	$a3, $a4, .LBB5_22
# %bb.18:                               # %land.lhs.true104
	ext.w.h	$s1, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $a3, $s1
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB5_22
# %bb.19:                               # %land.lhs.true109
	sub.d	$a4, $t0, $a5
	slli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 160
	ext.w.h	$a4, $a4
	addi.d	$a4, $a4, -1
	bge	$a3, $a4, .LBB5_22
# %bb.20:
	move	$a1, $zero
	b	.LBB5_23
.LBB5_21:                               # %if.end92.if.else_crit_edge
	ld.hu	$a1, $s8, 0
.LBB5_22:                               # %if.else
	ext.w.h	$s1, $a1
	ori	$a1, $zero, 1
.LBB5_23:                               # %if.end117
	pcalau12i	$a3, %got_pc_hi20(ref_access_method)
	ld.d	$a3, $a3, %got_pc_lo12(ref_access_method)
	ld.d	$t0, $sp, 264
	ld.d	$t3, $sp, 256
	st.w	$a1, $a3, 0
	sub.d	$a1, $a6, $s4
	bstrpick.d	$a3, $a1, 31, 30
	add.d	$a3, $a1, $a3
	bstrpick.d	$a3, $a3, 31, 2
	pcalau12i	$t1, %pc_hi20(smpUMHEX_SearchState)
	ld.d	$a4, $t1, %pc_lo12(smpUMHEX_SearchState)
	slli.d	$a3, $a3, 2
	sub.w	$s7, $a1, $a3
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.d	$a3, $a4, 0
	ld.hu	$fp, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.hu	$t8, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	st.b	$zero, $a3, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a3, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a3, 0
	ld.d	$a1, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.d	$a3, $s0, $s1
	bstrpick.d	$a4, $a3, 31, 30
	add.d	$a4, $a3, $a4
	ld.d	$a1, $a1, 24
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	ori	$a7, $zero, 1
	st.b	$a7, $a1, 3
	pcalau12i	$a1, %pc_hi20(start_me_refinement_hp)
	ld.w	$a1, $a1, %pc_lo12(start_me_refinement_hp)
	ld.h	$s2, $t7, 0
	ld.h	$s6, $s8, 0
	sub.w	$a3, $a3, $a4
	ext.w.h	$a7, $a2
	ext.w.h	$t2, $a5
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_25
# %bb.24:
	bstrpick.d	$a0, $s2, 15, 0
	bstrpick.d	$a1, $a0, 15, 0
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$s5, $a2, %pc_lo12(block_type_shift_factor)
	bnez	$a1, .LBB5_32
	b	.LBB5_26
.LBB5_25:                               # %if.then148
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.d	$a1, $a1, 0
	sub.d	$a2, $s2, $a6
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a3, $s6, $s0
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a1, $a1, $t0
	srai.d	$a1, $a1, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $t3, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s5, $t3
	move	$s3, $ra
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $t8
	jirl	$ra, $a6, 0
	move	$t8, $fp
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	move	$ra, $s3
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	slt	$a2, $a1, $s5
	maskeqz	$s2, $s2, $a2
	maskeqz	$s6, $s6, $a2
	ld.hu	$a0, $t7, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	or	$t3, $a1, $a2
	bstrpick.d	$a1, $a0, 15, 0
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$s5, $a2, %pc_lo12(block_type_shift_factor)
	bnez	$a1, .LBB5_32
.LBB5_26:                               # %land.lhs.true184
	ld.hu	$a1, $s8, 0
	bnez	$a1, .LBB5_32
# %bb.27:                               # %land.lhs.true184
	bnez	$s7, .LBB5_32
# %bb.28:                               # %land.lhs.true184
	sub.d	$a1, $fp, $s4
	andi	$a1, $a1, 3
	bnez	$a1, .LBB5_32
# %bb.29:                               # %land.lhs.true184
	bnez	$a3, .LBB5_32
# %bb.30:                               # %land.lhs.true184
	sub.d	$a1, $t8, $s1
	andi	$a1, $a1, 3
	bnez	$a1, .LBB5_32
# %bb.31:                               # %land.lhs.true200
	pcalau12i	$a1, %pc_hi20(SubPelThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SubPelThreshold1)
	slli.d	$a2, $ra, 1
	ldx.hu	$a2, $s5, $a2
	srl.w	$a1, $a1, $a2
	blt	$t3, $a1, .LBB5_64
.LBB5_32:                               # %if.end211
	or	$a1, $s7, $a3
	beqz	$a1, .LBB5_35
# %bb.33:                               # %if.then215
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.h	$a2, $s8, 0
	ext.w.h	$a0, $a0
	add.d	$fp, $s7, $a0
	ld.d	$a0, $a1, 0
	add.d	$s1, $a3, $a2
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s1, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a0, $a0, $t0
	srai.d	$s3, $a0, 16
	slli.d	$a0, $a1, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $t3, $s3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s4, $t3
	move	$s7, $ra
	jirl	$ra, $a6, 0
	move	$ra, $s7
	move	$t3, $s4
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s1, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s3, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s4, .LBB5_35
# %bb.34:                               # %if.then258
	move	$s2, $fp
	move	$s6, $s1
	move	$t3, $a0
.LBB5_35:                               # %if.end260
	move	$a1, $zero
	alsl.d	$a0, $ra, $s5, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(SubPelThreshold3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $zero, 2
	move	$s3, $s6
	move	$s5, $s2
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_36:                               # %for.cond265.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $t7, 0
	addi.d	$fp, $s5, -1
	sub.w	$a2, $fp, $a0
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.w	$a3, $a4, $a3
	move	$s1, $a1
	bltu	$s7, $a3, .LBB5_39
# %bb.37:                               # %land.lhs.true284
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	sub.w	$a1, $s3, $a1
	srai.d	$a3, $a1, 31
	xor	$a4, $a1, $a3
	sub.w	$a3, $a4, $a3
	bltu	$s7, $a3, .LBB5_39
# %bb.38:                               # %if.then291
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a3, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a1, $a1, 24
	add.d	$a1, $a1, $a2
	ld.bu	$a1, $a1, 3
	beqz	$a1, .LBB5_57
	.p2align	4, , 16
.LBB5_39:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s2, $s5
	ori	$s4, $zero, 1
.LBB5_40:                               # %for.inc
                                        #   in Loop: Header=BB5_36 Depth=1
	addi.d	$fp, $s5, 1
	sub.w	$a1, $fp, $a0
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_45
# %bb.41:                               # %land.lhs.true284.1
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a2, $s8, 0
	sub.w	$a2, $s3, $a2
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.w	$a3, $a4, $a3
	bltu	$s7, $a3, .LBB5_45
# %bb.42:                               # %if.then291.1
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a3, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a2, $a2, 24
	add.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 3
	bnez	$a1, .LBB5_45
# %bb.43:                               # %if.then305.1
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s3, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s6, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s6
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	jirl	$ra, $a6, 0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s3, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s6, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $s0, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, %pc_lo12(SubPelThreshold3)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a4, $a4, 0
	or	$t3, $a0, $a2
	masknez	$a0, $s2, $a1
	maskeqz	$a2, $fp, $a1
	srl.w	$a3, $a3, $a4
	or	$s2, $a2, $a0
	blt	$t3, $a3, .LBB5_63
# %bb.44:                               # %if.end345.1.for.inc.1_crit_edge
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	masknez	$s4, $s4, $a1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB5_45:                               # %for.inc.1
                                        #   in Loop: Header=BB5_36 Depth=1
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s7, $a1, .LBB5_54
# %bb.46:                               # %land.lhs.true284.2
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	addi.d	$fp, $s3, -1
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_48
# %bb.47:                               # %if.then291.2
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a1, $a1, $a0
	ld.bu	$a1, $a1, 3
	beqz	$a1, .LBB5_59
.LBB5_48:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s6, $s3
.LBB5_49:                               # %land.lhs.true284.3
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	addi.d	$fp, $s3, 1
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_55
# %bb.50:                               # %if.then291.3
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	bnez	$a0, .LBB5_55
# %bb.51:                               # %if.then305.3
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $s5, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $fp, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s0
	addi.w	$s3, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s8, $t3
	jirl	$ra, $a6, 0
	move	$t3, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s0, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s3, .LBB5_53
# %bb.52:                               # %if.then344.3
                                        #   in Loop: Header=BB5_36 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	move	$s6, $fp
	move	$t3, $a0
.LBB5_53:                               # %if.end345.3
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(SubPelThreshold3)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	srl.w	$a0, $a0, $a1
	addi.w	$a1, $t3, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	bge	$a1, $a0, .LBB5_55
	b	.LBB5_64
	.p2align	4, , 16
.LBB5_54:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s6, $s3
.LBB5_55:                               # %for.inc.3
                                        #   in Loop: Header=BB5_36 Depth=1
	bnez	$s4, .LBB5_64
# %bb.56:                               # %for.inc.3
                                        #   in Loop: Header=BB5_36 Depth=1
	addi.d	$a1, $s1, 1
	move	$s3, $s6
	move	$s5, $s2
	bltu	$s1, $a5, .LBB5_36
	b	.LBB5_64
.LBB5_57:                               # %if.then305
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s3, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s2
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	jirl	$ra, $a6, 0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s3, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s2, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	slt	$a1, $a0, $s0
	xori	$s4, $a1, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a2, $a2, %pc_lo12(SubPelThreshold3)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	masknez	$a4, $fp, $s4
	or	$t3, $a0, $a1
	maskeqz	$a0, $s5, $s4
	srl.w	$a1, $a2, $a3
	or	$s2, $a0, $a4
	blt	$t3, $a1, .LBB5_63
# %bb.58:                               # %if.end345.for.inc_crit_edge
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	b	.LBB5_40
.LBB5_59:                               # %if.then305.2
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $s5, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $fp, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s6, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s6
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s8, $t3
	jirl	$ra, $a6, 0
	move	$t3, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s6, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	move	$s6, $s3
	bge	$a0, $s0, .LBB5_61
# %bb.60:                               # %if.then344.2
                                        #   in Loop: Header=BB5_36 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	move	$s6, $fp
	move	$t3, $a0
.LBB5_61:                               # %if.end345.2
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(SubPelThreshold3)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	srl.w	$a0, $a0, $a1
	addi.w	$a1, $t3, 0
	ori	$a5, $zero, 2
	blt	$a1, $a0, .LBB5_64
# %bb.62:                               # %for.inc.2
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	bgeu	$s7, $a1, .LBB5_49
	b	.LBB5_55
.LBB5_63:
	move	$s6, $s3
.LBB5_64:                               # %cleanup
	st.h	$s2, $t7, 0
	addi.w	$a0, $t3, 0
	st.h	$s6, $s8, 0
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
.Lfunc_end5:
	.size	smpUMHEXSubPelBlockMotionSearch, .Lfunc_end5-smpUMHEXSubPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXBipredIntegerPelBlockMotionSearch # -- Begin function smpUMHEXBipredIntegerPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXBipredIntegerPelBlockMotionSearch,@function
smpUMHEXBipredIntegerPelBlockMotionSearch: # @smpUMHEXBipredIntegerPelBlockMotionSearch
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ld.d	$t8, $sp, 488
	ld.d	$t4, $sp, 480
	ld.d	$t7, $sp, 504
	ld.w	$t1, $t0, 12
	ld.d	$s0, $sp, 496
	ldptr.d	$t0, $t0, 14224
	ori	$t2, $zero, 536
	mul.d	$t1, $t1, $t2
	pcalau12i	$t2, %got_pc_hi20(input)
	ld.d	$t2, $t2, %got_pc_lo12(input)
	pcalau12i	$t3, %pc_hi20(active_pps)
	ld.d	$t3, $t3, %pc_lo12(active_pps)
	add.d	$t0, $t0, $t1
	ld.w	$t1, $t0, 432
	ld.d	$t0, $t2, 0
	ld.w	$t2, $t3, 196
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	ld.h	$t6, $t4, 0
	st.d	$a7, $sp, 296                   # 8-byte Folded Spill
	move	$s6, $a6
	move	$s7, $a4
	move	$s5, $a3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$s2, $a5, $t0, 3
	slli.d	$a6, $a1, 3
	beqz	$t2, .LBB6_3
# %bb.1:                                # %cond.true
	pcalau12i	$a0, %pc_hi20(wp_offset)
	ld.d	$a0, $a0, %pc_lo12(wp_offset)
	alsl.d	$a0, $t1, $a0, 3
	beqz	$a2, .LBB6_4
# %bb.2:                                # %cond.false65
	ld.d	$a3, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a4, $a1, 2
	ldx.w	$t0, $a3, $a4
	ldx.w	$s1, $a0, $a4
	b	.LBB6_5
.LBB6_3:                                # %entry.cond.end74_crit_edge
	move	$t0, $zero
	move	$s1, $zero
	b	.LBB6_5
.LBB6_4:                                # %cond.true58
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a0, $a0, $a6
	ld.w	$t0, $a3, 0
	ld.w	$s1, $a0, 0
.LBB6_5:                                # %cond.end74
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	add.w	$a3, $t1, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$t4, $a0, $a3
	sltui	$a3, $a2, 1
	addi.w	$a7, $t1, 1
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$t5, $a0, $a3
	ldx.d	$s3, $t4, $a6
	st.d	$t8, $sp, 72                    # 8-byte Folded Spill
	ld.h	$t3, $t8, 0
	add.d	$fp, $t6, $s5
	ld.d	$a0, $t5, 0
	ldptr.d	$a3, $s3, 6448
	pcalau12i	$a4, %got_pc_hi20(ref_pic1_sub)
	ld.d	$t8, $a4, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$a4, $a0, 6448
	pcalau12i	$a0, %got_pc_hi20(ref_pic2_sub)
	ld.d	$t6, $a0, %got_pc_lo12(ref_pic2_sub)
	ld.h	$a0, $s0, 0
	ld.h	$a5, $t7, 0
	st.d	$a3, $t8, 0
	st.d	$a4, $t6, 0
	lu12i.w	$t7, 1
	ori	$a3, $t7, 2296
	ldx.w	$a4, $s3, $a3
	pcalau12i	$a3, %got_pc_hi20(img_width)
	ld.d	$s0, $a3, %got_pc_lo12(img_width)
	ori	$a3, $t7, 2300
	ldx.w	$a3, $s3, $a3
	pcalau12i	$s4, %got_pc_hi20(img_height)
	ld.d	$s4, $s4, %got_pc_lo12(img_height)
	ld.w	$s8, $s2, 76
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	ld.w	$s2, $s2, 72
	st.d	$s2, $sp, 320                   # 8-byte Folded Spill
	st.h	$a4, $s0, 0
	st.h	$a3, $s4, 0
	ori	$s0, $t7, 2312
	ldx.w	$s0, $s3, $s0
	ori	$s2, $t7, 2316
	ldx.w	$s2, $s3, $s2
	pcalau12i	$s3, %pc_hi20(width_pad)
	st.w	$s0, $s3, %pc_lo12(width_pad)
	pcalau12i	$s0, %pc_hi20(height_pad)
	st.w	$s2, $s0, %pc_lo12(height_pad)
	pcalau12i	$s0, %pc_hi20(wbp_weight)
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	beqz	$t2, .LBB6_8
# %bb.6:                                # %if.then
	ld.d	$s2, $s0, %pc_lo12(wbp_weight)
	slli.d	$s3, $a7, 3
	beqz	$a2, .LBB6_9
# %bb.7:                                # %cond.false146
	ldx.d	$s3, $s2, $s3
	slli.d	$s4, $t1, 3
	ldx.d	$s2, $s2, $s4
	ld.d	$s3, $s3, 0
	ld.d	$s2, $s2, 0
	alsl.d	$s3, $a1, $s3, 3
	alsl.d	$s2, $a1, $s2, 3
	b	.LBB6_10
.LBB6_8:                                # %if.else
	move	$s1, $zero
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.wu	$s2, $t0, %pc_lo12(luma_log_weight_denom)
	ori	$s3, $zero, 1
	pcalau12i	$t0, %got_pc_hi20(weight1)
	ld.d	$s4, $t0, %got_pc_lo12(weight1)
	pcalau12i	$t0, %got_pc_hi20(weight2)
	ld.d	$s5, $t0, %got_pc_lo12(weight2)
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSAD1)
	sll.w	$s2, $s3, $s2
	st.h	$s2, $s4, 0
	st.h	$s2, $s5, 0
	b	.LBB6_11
.LBB6_9:                                # %cond.true138
	slli.d	$s4, $t1, 3
	ldx.d	$s4, $s2, $s4
	ldx.d	$s2, $s2, $s3
	ldx.d	$s3, $s4, $a6
	ldx.d	$s2, $s2, $a6
.LBB6_10:                               # %cond.end153
	ld.d	$s3, $s3, 0
	ld.d	$s2, $s2, 0
	ld.h	$s3, $s3, 0
	pcalau12i	$s4, %got_pc_hi20(weight1)
	ld.d	$s4, $s4, %got_pc_lo12(weight1)
	ld.h	$s2, $s2, 0
	pcalau12i	$s5, %got_pc_hi20(weight2)
	ld.d	$s5, $s5, %got_pc_lo12(weight2)
	st.h	$s3, $s4, 0
	st.h	$s2, $s5, 0
	ext.w.h	$s2, $t0
	ext.w.h	$s1, $s1
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSAD2)
	add.d	$s1, $s2, $s1
	addi.d	$s1, $s1, 1
	bstrpick.d	$s1, $s1, 31, 1
.LBB6_11:                               # %if.end
	add.d	$t3, $t3, $s7
	pcalau12i	$s2, %got_pc_hi20(offsetBi)
	pcalau12i	$s3, %got_pc_hi20(ChromaMEEnable)
	ld.d	$s3, $s3, %got_pc_lo12(ChromaMEEnable)
	ld.d	$s2, $s2, %got_pc_lo12(offsetBi)
	pcalau12i	$s4, %got_pc_hi20(computeBiPred)
	ld.d	$s4, $s4, %got_pc_lo12(computeBiPred)
	ld.w	$s3, $s3, 0
	ld.d	$ra, $sp, 512
	ext.w.h	$s8, $fp
	st.h	$s1, $s2, 0
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$t0, $s4, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	beqz	$s3, .LBB6_19
# %bb.12:                               # %if.then166
	alsl.d	$t4, $a1, $t4, 3
	ld.d	$t4, $t4, 0
	ldptr.d	$fp, $t4, 6464
	ld.d	$s1, $fp, 0
	ld.d	$t5, $t5, 0
	st.d	$s1, $t8, 8
	ld.d	$fp, $fp, 8
	ldptr.d	$t5, $t5, 6464
	st.d	$fp, $t8, 16
	ld.d	$t8, $t5, 0
	st.d	$t8, $t6, 8
	ld.d	$t5, $t5, 8
	st.d	$t5, $t6, 16
	ori	$t5, $t7, 2320
	ldx.w	$t5, $t4, $t5
	ori	$t6, $t7, 2324
	ldx.w	$t4, $t4, $t6
	pcalau12i	$t6, %pc_hi20(width_pad_cr)
	st.w	$t5, $t6, %pc_lo12(width_pad_cr)
	pcalau12i	$t5, %pc_hi20(height_pad_cr)
	st.w	$t4, $t5, %pc_lo12(height_pad_cr)
	beqz	$t2, .LBB6_15
# %bb.13:                               # %if.then215
	ld.d	$t2, $s0, %pc_lo12(wbp_weight)
	beqz	$a2, .LBB6_16
# %bb.14:                               # %cond.false346
	slli.d	$a2, $a7, 3
	ldx.d	$a7, $t2, $a2
	ld.d	$a7, $a7, 0
	ldx.d	$a6, $a7, $a6
	ld.h	$t4, $a6, 4
	pcalau12i	$a7, %got_pc_hi20(weight1_cr)
	slli.d	$t1, $t1, 3
	ldx.d	$t2, $t2, $t1
	pcalau12i	$t5, %pc_hi20(wp_offset)
	ld.d	$t5, $t5, %pc_lo12(wp_offset)
	ld.d	$t6, $a7, %got_pc_lo12(weight1_cr)
	ld.h	$t7, $a6, 8
	ld.d	$t2, $t2, 0
	ldx.d	$a7, $t5, $a2
	ldx.d	$a6, $t5, $t1
	st.h	$t4, $t6, 0
	st.h	$t7, $t6, 2
	alsl.d	$a2, $a1, $t2, 3
	b	.LBB6_17
.LBB6_15:                               # %if.else362
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(weight1_cr)
	ld.d	$a6, $a1, %got_pc_lo12(weight1_cr)
	move	$a1, $zero
	ori	$a7, $zero, 1
	sll.w	$a2, $a7, $a2
	st.h	$a2, $a6, 0
	pcalau12i	$a7, %got_pc_hi20(weight2_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight2_cr)
	pcalau12i	$t1, %got_pc_hi20(offsetBi_cr)
	ld.d	$t1, $t1, %got_pc_lo12(offsetBi_cr)
	st.h	$a2, $a6, 2
	st.h	$a2, $a7, 0
	st.h	$a2, $a7, 2
	st.h	$zero, $t1, 0
	b	.LBB6_18
.LBB6_16:                               # %cond.true331
	slli.d	$a2, $t1, 3
	ldx.d	$t1, $t2, $a2
	ldx.d	$t1, $t1, $a6
	ld.d	$t1, $t1, 0
	ld.h	$t4, $t1, 4
	pcalau12i	$t5, %got_pc_hi20(weight1_cr)
	ld.d	$t5, $t5, %got_pc_lo12(weight1_cr)
	st.h	$t4, $t5, 0
	pcalau12i	$t4, %pc_hi20(wp_offset)
	ld.d	$t4, $t4, %pc_lo12(wp_offset)
	slli.d	$a7, $a7, 3
	ldx.d	$t2, $t2, $a7
	ld.h	$t1, $t1, 8
	ldx.d	$t6, $t4, $a2
	ldx.d	$t4, $t4, $a7
	ldx.d	$a2, $t2, $a6
	st.h	$t1, $t5, 2
	alsl.d	$a7, $a1, $t6, 3
	alsl.d	$a6, $a1, $t4, 3
.LBB6_17:                               # %cond.end359
	ld.d	$a1, $a7, 0
	ld.d	$a6, $a6, 0
	ld.w	$a7, $a1, 4
	ld.d	$a2, $a2, 0
	ld.w	$t1, $a6, 4
	ld.w	$a1, $a1, 8
	ld.w	$a6, $a6, 8
	ld.h	$t2, $a2, 4
	pcalau12i	$t4, %got_pc_hi20(weight2_cr)
	ld.d	$t4, $t4, %got_pc_lo12(weight2_cr)
	add.d	$a7, $a7, $t1
	add.d	$a1, $a6, $a1
	ld.h	$a2, $a2, 8
	st.h	$t2, $t4, 0
	pcalau12i	$a6, %got_pc_hi20(offsetBi_cr)
	ld.d	$a6, $a6, %got_pc_lo12(offsetBi_cr)
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a2, $t4, 2
	st.h	$a7, $a6, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB6_18:                               # %if.end372.sink.split
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a2, 2
.LBB6_19:                               # %if.end372
	ld.d	$a1, $sp, 472
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a2, $a5, $s7
	ext.w.h	$t3, $t3
	nor	$a1, $ra, $zero
	bge	$ra, $s8, .LBB6_24
# %bb.20:                               # %land.lhs.true
	ext.w.h	$a4, $a4
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a5
	add.w	$a4, $a5, $a4
	bge	$s8, $a4, .LBB6_24
# %bb.21:                               # %land.lhs.true
	bge	$ra, $t3, .LBB6_24
# %bb.22:                               # %land.lhs.true386
	ext.w.h	$a4, $a3
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a5
	add.w	$a4, $a5, $a4
	bge	$t3, $a4, .LBB6_24
# %bb.23:
	move	$a5, $zero
	b	.LBB6_25
.LBB6_24:                               # %if.else395
	ori	$a5, $zero, 1
.LBB6_25:                               # %if.end396
	ld.d	$t2, $sp, 528
	ld.d	$s0, $sp, 520
	slli.d	$a7, $s4, 2
	slli.d	$t1, $s7, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	alsl.w	$a4, $s4, $a4, 2
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a4, %got_pc_lo12(bipred2_access_method)
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	alsl.w	$a4, $s7, $a4, 2
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	add.d	$a4, $a0, $s4
	ext.w.h	$a0, $a2
	st.w	$a5, $a6, 0
	st.d	$ra, $sp, 288                   # 8-byte Folded Spill
	bge	$ra, $a0, .LBB6_28
# %bb.26:                               # %land.lhs.true400
	ext.w.h	$a2, $a3
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	bge	$a0, $a1, .LBB6_28
# %bb.27:
	move	$a1, $zero
	b	.LBB6_29
.LBB6_28:                               # %if.else409
	ori	$a1, $zero, 1
.LBB6_29:                               # %if.end410
	pcalau12i	$a2, %got_pc_hi20(bipred1_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(bipred1_access_method)
	pcalau12i	$a3, %got_pc_hi20(mvbits)
	ld.d	$a3, $a3, %got_pc_lo12(mvbits)
	st.w	$a1, $a2, 0
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	ext.w.h	$a2, $a4
	slli.d	$a2, $a2, 2
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $s6
	add.d	$a3, $a7, $s6
	sub.w	$a3, $a2, $a3
	slli.d	$a3, $a3, 2
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	ldx.w	$a3, $a1, $a3
	slli.d	$a0, $a0, 2
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	add.d	$a4, $t1, $s6
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	ldx.w	$a4, $a1, $a4
	slli.d	$t4, $s8, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $t4, $a5
	slli.d	$a5, $a6, 2
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	ldx.w	$a6, $a1, $a5
	slli.d	$a7, $t3, 2
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	sub.w	$t1, $a7, $t1
	slli.d	$fp, $t1, 2
	ldx.w	$a1, $a1, $fp
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t2
	srli.d	$s1, $a3, 16
	add.d	$a1, $a1, $a6
	st.d	$t2, $sp, 304                   # 8-byte Folded Spill
	mul.w	$a1, $a1, $t2
	srli.d	$s2, $a1, 16
	addi.d	$a4, $a2, 80
	addi.d	$a5, $a0, 80
	addi.d	$a6, $t4, 80
	addi.d	$a7, $a7, 80
	lu12i.w	$a0, 524287
	ori	$a3, $a0, 4095
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	st.d	$a6, $sp, 232                   # 8-byte Folded Spill
	st.d	$a7, $sp, 240                   # 8-byte Folded Spill
	move	$s3, $t3
	jirl	$ra, $t0, 0
	add.d	$a0, $a0, $s1
	add.w	$a0, $a0, $s2
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a2, $s6, $s5
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	or	$a3, $a0, $a1
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	beqz	$a2, .LBB6_32
# %bb.30:                               # %if.then466
	move	$s5, $s4
	sub.w	$a0, $s4, $s8
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	move	$a7, $s8
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	bge	$t0, $a0, .LBB6_33
# %bb.31:
	move	$s6, $a7
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	move	$s0, $t2
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	move	$s8, $a3
	b	.LBB6_38
.LBB6_32:
	move	$s6, $s8
	move	$s0, $s3
	move	$a7, $s8
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	move	$t2, $s3
	move	$s5, $s4
	move	$s8, $a3
	b	.LBB6_38
.LBB6_33:                               # %land.lhs.true472
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	move	$s8, $a3
	bltu	$t0, $a0, .LBB6_37
# %bb.34:                               # %if.then478
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	ld.w	$a3, $a3, 0
	ld.w	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s0, $a0, $a1
	bge	$s0, $s8, .LBB6_37
# %bb.35:                               # %if.then506
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $s8, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 80
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	move	$s6, $a7
	move	$s0, $t2
	bge	$a0, $s8, .LBB6_38
# %bb.36:                               # %if.then522
	move	$s6, $s5
	move	$s0, $s7
	move	$s8, $a0
	b	.LBB6_38
.LBB6_37:
	move	$s6, $a7
	move	$s0, $t2
.LBB6_38:                               # %if.end526
	pcalau12i	$a5, %pc_hi20(ConvergeThreshold)
	ld.hu	$a0, $a5, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$a2, $a2, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a2, $a2, $a1
	slli.w	$a1, $s8, 3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	srl.w	$a0, $a0, $a2
	addi.d	$s3, $a7, -1
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB6_46
# %bb.39:                               # %for.body.preheader
	ori	$a0, $zero, 1
	blt	$t0, $a0, .LBB6_53
# %bb.40:                               # %if.then557
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s1, $a1, $a2
	bge	$s1, $s8, .LBB6_43
# %bb.41:                               # %if.then585
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $s1
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s8, .LBB6_43
# %bb.42:                               # %if.then601
	move	$s6, $s3
	move	$s0, $t2
	move	$s8, $a0
.LBB6_43:                               # %if.then557.1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a7, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s8, .LBB6_55
# %bb.44:                               # %if.then585.1
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $fp
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_56
# %bb.45:                               # %if.then601.1
	move	$s6, $s1
	move	$s0, $t2
	move	$s8, $a0
	b	.LBB6_56
.LBB6_46:                               # %for.body613.preheader
	move	$s7, $s6
	ori	$s2, $zero, 1
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	blt	$t0, $s2, .LBB6_54
# %bb.47:                               # %if.then633
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s1, $a1, $a2
	bge	$s1, $s8, .LBB6_50
# %bb.48:                               # %if.then661
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $s1
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s8, .LBB6_50
# %bb.49:                               # %if.then677
	move	$s7, $s3
	move	$s0, $t2
	move	$s8, $a0
.LBB6_50:                               # %if.then633.1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a7, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s8, .LBB6_63
# %bb.51:                               # %if.then661.1
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $fp
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_64
# %bb.52:                               # %if.then677.1
	move	$s7, $s1
	move	$s0, $t2
	move	$s8, $a0
	b	.LBB6_64
.LBB6_53:
	move	$s7, $s6
	move	$s4, $s0
	move	$t3, $s8
	b	.LBB6_210
.LBB6_54:
	move	$s4, $s7
	move	$s3, $s0
	move	$t3, $s8
	slli.w	$a0, $t3, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	beq	$a1, $s2, .LBB6_72
	b	.LBB6_73
.LBB6_55:
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
.LBB6_56:                               # %if.then557.2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s4, $t2, -1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a4, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s8, .LBB6_58
# %bb.57:                               # %if.then585.2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $fp
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $s2
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.w	$t3, $a0, $fp
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	blt	$t3, $s8, .LBB6_59
.LBB6_58:                               # %for.inc.2
	move	$t3, $s8
	move	$s4, $s0
	move	$s7, $s6
.LBB6_59:                               # %if.then557.3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$fp, $t2, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a1, $s1
	slli.d	$a0, $fp, 2
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s0, $a1, $a2
	bge	$s0, $t3, .LBB6_210
# %bb.60:                               # %if.then585.3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s0
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $s2
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB6_210
# %bb.61:                               # %if.then601.3
	move	$s7, $a1
	move	$s4, $fp
.LBB6_62:                               # %cleanup
	move	$t3, $a0
	b	.LBB6_210
.LBB6_63:
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
.LBB6_64:                               # %if.then633.2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s3, $t2, -1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a4, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s8, .LBB6_66
# %bb.65:                               # %if.then661.2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s8, $fp
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $s5
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.w	$t3, $a0, $fp
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	blt	$t3, $s8, .LBB6_67
.LBB6_66:                               # %for.inc681.2
	move	$t3, $s8
	move	$s3, $s0
	move	$s4, $s7
.LBB6_67:                               # %if.then633.3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$fp, $t2, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a1, $s1
	slli.d	$a0, $fp, 2
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s0, $a1, $a2
	bge	$s0, $t3, .LBB6_71
# %bb.68:                               # %if.then661.3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s0
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $s5
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB6_70
# %bb.69:                               # %if.then677.3
	move	$s4, $a7
	move	$s3, $fp
	move	$t3, $a0
.LBB6_70:                               # %for.inc681.3
	slli.w	$a0, $t3, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	beq	$a1, $s2, .LBB6_72
	b	.LBB6_73
.LBB6_71:
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	slli.w	$a0, $t3, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	bne	$a1, $s2, .LBB6_73
.LBB6_72:                               # %land.lhs.true686
	pcalau12i	$a1, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SymmetricalCrossSearchThreshold1)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a2
	blt	$a1, $a0, .LBB6_74
.LBB6_73:                               # %lor.lhs.false695
	pcalau12i	$a1, %pc_hi20(SymmetricalCrossSearchThreshold2)
	ld.hu	$a1, $a1, %pc_lo12(SymmetricalCrossSearchThreshold2)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a2
	bge	$a1, $a0, .LBB6_85
.LBB6_74:                               # %if.then704
	ori	$a0, $zero, 2
	bge	$t0, $a0, .LBB6_112
# %bb.75:
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
.LBB6_76:                               # %for.cond954.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s3, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s4, $a0, %pc_lo12(Hexagon_Y)
	ori	$s5, $zero, 12
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	st.d	$t5, $sp, 248                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	move	$s0, $t4
	b	.LBB6_78
	.p2align	4, , 16
.LBB6_77:                               # %for.inc1025
                                        #   in Loop: Header=BB6_78 Depth=1
	addi.d	$s2, $s2, 2
	beq	$s2, $s5, .LBB6_83
.LBB6_78:                               # %for.body957
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $s3, $s2
	add.d	$s6, $t4, $a0
	sub.w	$a0, $s6, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_77
# %bb.79:                               # %land.lhs.true971
                                        #   in Loop: Header=BB6_78 Depth=1
	ldx.h	$a0, $s4, $s2
	add.d	$s7, $t5, $a0
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_77
# %bb.80:                               # %if.then977
                                        #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s8, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_77
# %bb.81:                               # %if.then1005
                                        #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s8
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $t3
	jirl	$ra, $t0, 0
	move	$t3, $fp
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_77
# %bb.82:                               # %if.then1021
                                        #   in Loop: Header=BB6_78 Depth=1
	move	$s0, $s6
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_77
.LBB6_83:                               # %for.cond1028.preheader
	ori	$a0, $zero, 4
	bge	$t0, $a0, .LBB6_133
# %bb.84:
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB6_86
.LBB6_85:
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
.LBB6_86:                               # %if.end1112
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_92
# %bb.87:                               # %if.then1115
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	add.d	$fp, $s5, $a0
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	blt	$t0, $a0, .LBB6_93
# %bb.88:                               # %land.lhs.true1127
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	add.d	$s0, $s3, $a0
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_93
# %bb.89:                               # %if.then1133
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s0, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_93
# %bb.90:                               # %if.then1161
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	bge	$a0, $s1, .LBB6_93
# %bb.91:                               # %if.then1177
	move	$s4, $fp
	move	$s7, $s0
	move	$t3, $a0
	b	.LBB6_93
.LBB6_92:
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
.LBB6_93:                               # %if.end1181
	bne	$s5, $a7, .LBB6_96
# %bb.94:                               # %if.end1181
	bne	$s3, $t2, .LBB6_96
# %bb.95:
	move	$s8, $s4
	move	$s6, $s7
	b	.LBB6_151
.LBB6_96:                               # %if.then1189
	sub.w	$a0, $s5, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_101
# %bb.97:                               # %land.lhs.true1195
	sub.w	$a0, $s3, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_101
# %bb.98:                               # %if.then1201
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	ld.w	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s0, $a0, $a1
	addi.w	$fp, $t3, 0
	bge	$s0, $fp, .LBB6_101
# %bb.99:                               # %if.then1229
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 80
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	bge	$a0, $fp, .LBB6_101
# %bb.100:                              # %if.then1245
	move	$s4, $s5
	move	$s7, $s3
	move	$t3, $a0
.LBB6_101:                              # %if.end1248
	addi.d	$fp, $s4, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_105
# %bb.102:                              # %land.lhs.true1266
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_105
# %bb.103:                              # %if.then1272
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_105
# %bb.104:                              # %if.then1300
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
	b	.LBB6_106
.LBB6_105:
	move	$s8, $s4
.LBB6_106:                              # %for.inc1320
	addi.d	$fp, $s4, 1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_110
# %bb.107:                              # %land.lhs.true1266.1
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_110
# %bb.108:                              # %if.then1272.1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_110
# %bb.109:                              # %if.then1300.1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
.LBB6_110:                              # %for.inc1320.1
	sub.w	$a0, $s4, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_142
# %bb.111:
	move	$s6, $s7
	b	.LBB6_151
.LBB6_112:                              # %for.body708.lr.ph
	move	$a4, $s3
	move	$s7, $zero
	sub.w	$a0, $s3, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a5, $a0, $a1
	slli.d	$a6, $s3, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a0, $a6, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 80
	alsl.w	$a1, $s3, $a0, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.w	$a1, $s4, $a7
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$t4, $s4, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $t4, $a1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	alsl.w	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	nor	$t5, $t2, $zero
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a0, $a6, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$t6, $zero, 1
	sub.d	$t7, $t6, $t2
	add.d	$a0, $a1, $a2
	ori	$a1, $zero, 4
	sub.d	$t8, $a1, $a0
	nor	$s0, $a7, $zero
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $t4, $a2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sub.d	$fp, $t6, $a7
	add.d	$a0, $a2, $a3
	sub.d	$s3, $a1, $a0
	bstrpick.d	$s2, $t0, 31, 1
	addi.d	$s5, $zero, -1
	ori	$s6, $zero, 84
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	b	.LBB6_114
	.p2align	4, , 16
.LBB6_113:                              # %for.inc951
                                        #   in Loop: Header=BB6_114 Depth=1
	addi.d	$t5, $t5, -2
	addi.d	$s5, $s5, -2
	addi.d	$s7, $s7, -8
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	addi.d	$s6, $s6, 8
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, -2
	addi.d	$fp, $fp, 2
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB6_76
.LBB6_114:                              # %for.body708
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a0, $s4, $fp
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_119
# %bb.115:                              # %for.body708
                                        #   in Loop: Header=BB6_114 Depth=1
	bltu	$t0, $a5, .LBB6_119
# %bb.116:                              # %if.then723
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	add.w	$a3, $t4, $s3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_119
# %bb.117:                              # %if.then751
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.w	$a6, $t4, $s6
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 248                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_119
# %bb.118:                              # %if.then767
                                        #   in Loop: Header=BB6_114 Depth=1
	add.d	$a1, $s4, $t6
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_119:                              # %if.end770
                                        #   in Loop: Header=BB6_114 Depth=1
	add.w	$a0, $s4, $s0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_124
# %bb.120:                              # %if.end770
                                        #   in Loop: Header=BB6_114 Depth=1
	bltu	$t0, $a5, .LBB6_124
# %bb.121:                              # %if.then783
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a3, $s7
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_124
# %bb.122:                              # %if.then811
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.d	$a0, $t4, $s7
	addi.w	$a6, $a0, 76
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 248                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_124
# %bb.123:                              # %if.then827
                                        #   in Loop: Header=BB6_114 Depth=1
	add.d	$a1, $s4, $s5
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_124:                              # %if.end830
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bltu	$t0, $a0, .LBB6_113
# %bb.125:                              # %land.lhs.true837
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a4, $a1, 2
	bltu	$t0, $a0, .LBB6_129
# %bb.126:                              # %if.then843
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	add.w	$a3, $a6, $t8
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a3, $a0
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_129
# %bb.127:                              # %if.then871
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.w	$a7, $a6, $s6
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 248                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	move	$t8, $s3
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_129
# %bb.128:                              # %if.then887
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_129:                              # %land.lhs.true897
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_113
# %bb.130:                              # %if.then903
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ldx.w	$a3, $a0, $a4
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s7
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_113
# %bb.131:                              # %if.then931
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.d	$a0, $a6, $s7
	addi.w	$a7, $a0, 76
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 248                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_113
# %bb.132:                              # %if.then947
                                        #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s5
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_113
.LBB6_133:                              # %for.cond1033.preheader.preheader
	bstrpick.d	$a1, $t0, 31, 2
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(Big_Hexagon_X)
	addi.d	$s2, $a2, %pc_lo12(Big_Hexagon_X)
	pcalau12i	$a2, %pc_hi20(Big_Hexagon_Y)
	addi.d	$s4, $a2, %pc_lo12(Big_Hexagon_Y)
	ori	$t6, $zero, 32
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	st.d	$t4, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB6_135
	.p2align	4, , 16
.LBB6_134:                              # %for.inc1109
                                        #   in Loop: Header=BB6_135 Depth=1
	addi.w	$a0, $s6, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	beq	$s6, $a1, .LBB6_86
.LBB6_135:                              # %for.cond1033.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_137 Depth 2
	move	$s7, $zero
	move	$s6, $a0
	b	.LBB6_137
	.p2align	4, , 16
.LBB6_136:                              # %for.inc1106
                                        #   in Loop: Header=BB6_137 Depth=2
	addi.d	$s7, $s7, 2
	beq	$s7, $t6, .LBB6_134
.LBB6_137:                              # %for.body1036
                                        #   Parent Loop BB6_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s2, $s7
	mul.d	$a0, $s6, $a0
	add.d	$s5, $a0, $s0
	sub.w	$a0, $s5, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_136
# %bb.138:                              # %land.lhs.true1052
                                        #   in Loop: Header=BB6_137 Depth=2
	ldx.h	$a0, $s4, $s7
	mul.d	$a0, $s6, $a0
	add.d	$s1, $a0, $t4
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_136
# %bb.139:                              # %if.then1058
                                        #   in Loop: Header=BB6_137 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$fp, $a2, $a3
	addi.w	$s8, $t3, 0
	bge	$fp, $s8, .LBB6_136
# %bb.140:                              # %if.then1086
                                        #   in Loop: Header=BB6_137 Depth=2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $fp
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $t3
	jirl	$ra, $t0, 0
	ori	$t6, $zero, 32
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_136
# %bb.141:                              # %if.then1102
                                        #   in Loop: Header=BB6_137 Depth=2
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_136
.LBB6_142:                              # %land.lhs.true1266.2
	addi.d	$fp, $s7, -1
	sub.w	$a0, $fp, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_146
# %bb.143:                              # %if.then1272.2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_146
# %bb.144:                              # %if.then1300.2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s2
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	move	$s6, $s7
	bge	$a0, $s0, .LBB6_147
# %bb.145:                              # %if.then1316.2
	move	$s8, $s4
	move	$s6, $fp
	move	$t3, $a0
	b	.LBB6_147
.LBB6_146:
	move	$s6, $s7
.LBB6_147:                              # %land.lhs.true1266.3
	addi.d	$fp, $s7, 1
	sub.w	$a0, $fp, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_151
# %bb.148:                              # %if.then1272.3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_151
# %bb.149:                              # %if.then1300.3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s2
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s0, .LBB6_151
# %bb.150:                              # %if.then1316.3
	move	$s8, $s4
	move	$s6, $fp
	move	$t3, $a0
.LBB6_151:                              # %if.end1323
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(ConvergeThreshold)
	slli.w	$a1, $t3, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB6_156
# %bb.152:                              # %for.body1336.preheader
	addi.d	$fp, $s8, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_169
# %bb.153:                              # %land.lhs.true1350
	sub.w	$a0, $s6, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_169
# %bb.154:                              # %if.then1356
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s6, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_169
# %bb.155:                              # %if.then1384
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$s7, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
	b	.LBB6_170
.LBB6_156:                              # %for.cond1412.preheader
	ori	$a0, $zero, 1
	blt	$t0, $a0, .LBB6_204
# %bb.157:                              # %for.cond1416.preheader.preheader
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s2, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s0, $a0, %pc_lo12(Hexagon_Y)
	ori	$t7, $zero, 12
	b	.LBB6_159
	.p2align	4, , 16
.LBB6_158:                              # %for.cond1412
                                        #   in Loop: Header=BB6_159 Depth=1
	addi.w	$s3, $s3, 1
	move	$s4, $s6
	move	$s7, $s8
	beq	$s3, $t0, .LBB6_168
.LBB6_159:                              # %for.cond1416.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_161 Depth 2
	move	$s5, $zero
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	move	$s7, $s8
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	move	$s4, $s6
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	b	.LBB6_161
	.p2align	4, , 16
.LBB6_160:                              # %for.inc1487
                                        #   in Loop: Header=BB6_161 Depth=2
	addi.d	$s5, $s5, 2
	beq	$s5, $t7, .LBB6_166
.LBB6_161:                              # %for.body1419
                                        #   Parent Loop BB6_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s2, $s5
	add.d	$s6, $s7, $a0
	sub.w	$a0, $s6, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_160
# %bb.162:                              # %land.lhs.true1433
                                        #   in Loop: Header=BB6_161 Depth=2
	ldx.h	$a0, $s0, $s5
	add.d	$s1, $s4, $a0
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_160
# %bb.163:                              # %if.then1439
                                        #   in Loop: Header=BB6_161 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$fp, $a2, $a3
	addi.w	$s8, $t3, 0
	bge	$fp, $s8, .LBB6_160
# %bb.164:                              # %if.then1467
                                        #   in Loop: Header=BB6_161 Depth=2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $fp
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	ori	$t7, $zero, 12
	move	$t3, $s4
	move	$s4, $s7
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_160
# %bb.165:                              # %if.then1483
                                        #   in Loop: Header=BB6_161 Depth=2
	st.d	$s6, $sp, 240                   # 8-byte Folded Spill
	st.d	$s1, $sp, 232                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_160
	.p2align	4, , 16
.LBB6_166:                              # %for.end1489
                                        #   in Loop: Header=BB6_159 Depth=1
	addi.w	$a0, $s7, 0
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a1, $s8, 0
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB6_158
# %bb.167:                              # %for.end1489
                                        #   in Loop: Header=BB6_159 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $s6, 0
	bne	$a1, $a0, .LBB6_158
.LBB6_168:                              # %for.cond1504.preheader.preheader
	move	$s0, $t0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB6_178
.LBB6_169:
	move	$s7, $s8
.LBB6_170:                              # %for.inc1404
	addi.d	$fp, $s8, 1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_174
# %bb.171:                              # %land.lhs.true1350.1
	sub.w	$a0, $s6, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_174
# %bb.172:                              # %if.then1356.1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s6, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_174
# %bb.173:                              # %if.then1384.1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $fp, $a1
	or	$s7, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
.LBB6_174:                              # %for.inc1404.1
	sub.w	$a0, $s8, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_200
# %bb.175:
	move	$s4, $s6
	b	.LBB6_210
.LBB6_176:                              #   in Loop: Header=BB6_178 Depth=1
	move	$t3, $a0
	move	$s2, $s1
	move	$fp, $s7
	.p2align	4, , 16
.LBB6_177:                              # %for.cond1500
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.w	$s0, $s0, -1
	move	$s4, $s2
	move	$s7, $fp
	beqz	$s0, .LBB6_210
.LBB6_178:                              # %for.cond1504.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $s7, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_182
# %bb.179:                              # %land.lhs.true1521
                                        #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s4, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_182
# %bb.180:                              # %if.then1527
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_182
# %bb.181:                              # %if.then1555
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	slt	$a1, $a0, $s1
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $fp, $a1
	or	$fp, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$t3, $a0, $a1
	b	.LBB6_183
	.p2align	4, , 16
.LBB6_182:                              #   in Loop: Header=BB6_178 Depth=1
	move	$fp, $s7
.LBB6_183:                              # %for.inc1575
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s2, $s7, 1
	sub.w	$a0, $s2, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_187
# %bb.184:                              # %land.lhs.true1521.1
                                        #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s4, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_187
# %bb.185:                              # %if.then1527.1
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s3, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s3, $s1, .LBB6_187
# %bb.186:                              # %if.then1555.1
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s3
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s3
	slt	$a1, $a0, $s1
	masknez	$a2, $fp, $a1
	maskeqz	$a3, $s2, $a1
	or	$fp, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$t3, $a0, $a1
	.p2align	4, , 16
.LBB6_187:                              # %for.inc1575.1
                                        #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s7, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_189
# %bb.188:                              #   in Loop: Header=BB6_178 Depth=1
	move	$s2, $s4
	b	.LBB6_198
	.p2align	4, , 16
.LBB6_189:                              # %land.lhs.true1521.2
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s1, $s4, -1
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_193
# %bb.190:                              # %if.then1527.2
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s3, $t3, 0
	bge	$s2, $s3, .LBB6_193
# %bb.191:                              # %if.then1555.2
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	move	$s4, $s7
	move	$s7, $s8
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	move	$s2, $s4
	bge	$a0, $s3, .LBB6_194
# %bb.192:                              # %if.then1571.2
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$fp, $s7
	move	$s2, $s1
	move	$t3, $a0
	b	.LBB6_194
	.p2align	4, , 16
.LBB6_193:                              #   in Loop: Header=BB6_178 Depth=1
	move	$s2, $s4
.LBB6_194:                              # %land.lhs.true1521.3
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s1, $s4, 1
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_198
# %bb.195:                              # %if.then1527.3
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s5, $a2, $a3
	addi.w	$s3, $t3, 0
	bge	$s5, $s3, .LBB6_197
# %bb.196:                              # %if.then1555.3
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s5
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	move	$s4, $s7
	move	$s7, $s8
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s5
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB6_176
	b	.LBB6_198
.LBB6_197:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_198:                              # %for.inc1575.3
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.w	$a0, $s7, 0
	addi.w	$a1, $fp, 0
	bne	$a1, $a0, .LBB6_177
# %bb.199:                              # %for.inc1575.3
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $s2, 0
	bne	$a1, $a0, .LBB6_177
	b	.LBB6_210
.LBB6_200:                              # %land.lhs.true1350.2
	addi.d	$s0, $s6, -1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $s8, 2
	bltu	$t0, $a0, .LBB6_205
# %bb.201:                              # %if.then1356.2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s2, $a1, $a2
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_205
# %bb.202:                              # %if.then1384.2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $fp, 80
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s3
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	move	$s4, $s6
	bge	$a0, $s1, .LBB6_206
# %bb.203:                              # %if.then1400.2
	move	$s7, $s8
	move	$s4, $s0
	move	$t3, $a0
	b	.LBB6_206
.LBB6_204:
	move	$s7, $s8
	move	$s4, $s6
	b	.LBB6_210
.LBB6_205:
	move	$s4, $s6
.LBB6_206:                              # %land.lhs.true1350.3
	addi.d	$s0, $s6, 1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_210
# %bb.207:                              # %if.then1356.3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s2, $a1, $a2
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_210
# %bb.208:                              # %if.then1384.3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $fp, 80
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $t3
	jirl	$ra, $t0, 0
	move	$t3, $fp
	add.w	$a0, $a0, $s2
	bge	$a0, $s1, .LBB6_210
# %bb.209:                              # %if.then1400.3
	move	$s7, $s8
	move	$s4, $s0
	b	.LBB6_62
.LBB6_210:                              # %cleanup
	sub.d	$a0, $s7, $s5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $s4, $a0
	addi.w	$a0, $t3, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.h	$a1, $a2, 0
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end6:
	.size	smpUMHEXBipredIntegerPelBlockMotionSearch, .Lfunc_end6-smpUMHEXBipredIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEX_decide_intrabk_SAD     # -- Begin function smpUMHEX_decide_intrabk_SAD
	.p2align	5
	.type	smpUMHEX_decide_intrabk_SAD,@function
smpUMHEX_decide_intrabk_SAD:            # @smpUMHEX_decide_intrabk_SAD
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB7_11
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 176
	ld.w	$a0, $a0, 180
	beqz	$a1, .LBB7_6
# %bb.2:                                # %if.else8
	pcalau12i	$a2, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a2, $a2, %pc_lo12(smpUMHEX_flag_intra)
	srai.d	$a1, $a1, 4
	add.d	$a1, $a2, $a1
	beqz	$a0, .LBB7_8
# %bb.3:                                # %if.else18
	ld.bu	$a2, $a1, 0
	ori	$a0, $zero, 1
	bnez	$a2, .LBB7_10
# %bb.4:                                # %lor.lhs.false
	ld.bu	$a2, $a1, -1
	bnez	$a2, .LBB7_10
# %bb.5:                                # %lor.rhs
	ld.bu	$a0, $a1, 1
	sltu	$a0, $zero, $a0
	b	.LBB7_10
.LBB7_6:                                # %land.lhs.true
	beqz	$a0, .LBB7_9
# %bb.7:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_flag_intra)
	ld.bu	$a0, $a0, 0
	b	.LBB7_10
.LBB7_8:                                # %if.then12
	ld.bu	$a0, $a1, -1
	b	.LBB7_10
.LBB7_9:
	move	$a0, $zero
.LBB7_10:                               # %if.end39.sink.split
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra_SAD)
	st.w	$a0, $a1, %pc_lo12(smpUMHEX_flag_intra_SAD)
.LBB7_11:                               # %if.end39
	ret
.Lfunc_end7:
	.size	smpUMHEX_decide_intrabk_SAD, .Lfunc_end7-smpUMHEX_decide_intrabk_SAD
                                        # -- End function
	.globl	smpUMHEX_skip_intrabk_SAD       # -- Begin function smpUMHEX_skip_intrabk_SAD
	.p2align	5
	.type	smpUMHEX_skip_intrabk_SAD,@function
smpUMHEX_skip_intrabk_SAD:              # @smpUMHEX_skip_intrabk_SAD
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a3, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a3, 0
	ld.w	$a4, $a1, 0
	ori	$a2, $zero, 1
	addi.w	$a0, $a0, -9
	blt	$a4, $a2, .LBB8_2
# %bb.1:                                # %if.then
	pcalau12i	$a4, %pc_hi20(smpUMHEX_flag_intra)
	ld.w	$a1, $a1, 176
	ld.d	$a4, $a4, %pc_lo12(smpUMHEX_flag_intra)
	sltui	$a5, $a0, 2
	srai.d	$a1, $a1, 4
	stx.b	$a5, $a4, $a1
	ld.d	$a1, $a3, 0
.LBB8_2:                                # %if.end
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
	bltu	$a2, $a0, .LBB8_6
# %bb.3:                                # %if.end
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB8_6
# %bb.4:                                # %for.cond.preheader
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	pcalau12i	$a1, %pc_hi20(smpUMHEX_l1_cost)
	ld.d	$a1, $a1, %pc_lo12(smpUMHEX_l1_cost)
	ld.d	$s4, $a0, 8
	ld.d	$t2, $a1, 8
	ld.d	$t1, $a0, 16
	ld.d	$a5, $a1, 16
	ld.d	$t5, $a0, 24
	ld.d	$t3, $a1, 24
	ld.d	$a7, $a0, 32
	ld.d	$t0, $a1, 32
	ld.d	$s5, $a0, 40
	ld.d	$s6, $a1, 40
	ld.d	$s7, $a0, 48
	ld.d	$s8, $a1, 48
	ld.d	$ra, $a0, 56
	ld.d	$s3, $a1, 56
	ld.d	$a4, $a0, 0
	ld.d	$a6, $a1, 0
	ld.d	$a2, $a0, 64
	ld.d	$a3, $a1, 64
	ld.d	$t4, $a4, 0
	st.d	$t4, $sp, 96                    # 8-byte Folded Spill
	ld.d	$t4, $a6, 0
	st.d	$t4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a4, $a4, 8
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a4, $a6, 8
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a4, $t2, 8
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a4, $t1, 8
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a4, $a5, 8
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a4, $t5, 8
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a4, $t3, 8
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a4, $a7, 8
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a4, $t0, 8
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $t3
	move	$a6, $t3
	move	$s0, $t5
	move	$fp, $a5
	move	$a4, $a5
	move	$t3, $t1
	move	$t8, $t2
	.p2align	4, , 16
.LBB8_5:                                # %for.cond13.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$t4, $s4, 0
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$t2, $t2, 0
	ld.d	$t1, $t1, 0
	stx.w	$zero, $t4, $s2
	ld.d	$a4, $a4, 0
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $t1, $s2
	ld.d	$t1, $t5, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $a6, 0
	ld.d	$a6, $a7, 0
	stx.w	$zero, $t1, $s2
	ld.d	$a7, $t0, 0
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$a4, $s5, 0
	stx.w	$zero, $a7, $s2
	ld.d	$a6, $s6, 0
	ld.d	$a7, $s7, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $s8, 0
	stx.w	$zero, $a6, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$a6, $ra, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $s3, 0
	ld.d	$a2, $a2, 0
	stx.w	$zero, $a6, $s2
	ld.d	$a3, $a3, 0
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $s4, 8
	stx.w	$zero, $a3, $s2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a3, $a0, 40
	ld.d	$a4, $a1, 40
	ld.d	$a2, $a0, 48
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$a7, $a3, 8
	ld.d	$t0, $a4, 8
	ld.d	$t1, $a2, 8
	ld.d	$a6, $a1, 48
	stx.w	$zero, $a7, $s2
	stx.w	$zero, $t0, $s2
	stx.w	$zero, $t1, $s2
	ld.d	$t2, $a6, 8
	ld.d	$t0, $a0, 56
	ld.d	$t1, $a1, 56
	ld.d	$a7, $a0, 64
	stx.w	$zero, $t2, $s2
	ld.d	$t4, $t0, 8
	ld.d	$t5, $t1, 8
	ld.d	$s3, $a7, 8
	ld.d	$t2, $a1, 64
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $t5, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$t4, $t2, 8
	ld.d	$t5, $a0, 0
	ld.d	$s3, $a1, 0
	ld.d	$s4, $a0, 8
	stx.w	$zero, $t4, $s2
	ld.d	$t4, $t5, 16
	ld.d	$s5, $s3, 16
	ld.d	$s6, $s4, 16
	ld.d	$s7, $t8, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$t4, $t3, 16
	ld.d	$s5, $fp, 16
	ld.d	$s6, $s0, 16
	ld.d	$s7, $s1, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t4, $a5, 16
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $a5, 16
	ld.d	$a3, $a3, 16
	ld.d	$a4, $a4, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	ld.d	$a2, $a2, 16
	ld.d	$a3, $a6, 16
	ld.d	$a4, $t0, 16
	ld.d	$a6, $t1, 16
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$a2, $a7, 16
	ld.d	$a3, $t2, 16
	ld.d	$a4, $t5, 24
	ld.d	$a6, $s3, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$t2, $a1, 8
	ld.d	$t1, $a0, 16
	ld.d	$a4, $a1, 16
	ld.d	$a2, $s4, 24
	ld.d	$a3, $t2, 24
	ld.d	$a6, $t1, 24
	ld.d	$a7, $a4, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a6, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$t5, $a0, 24
	ld.d	$a6, $a1, 24
	ld.d	$a7, $a0, 32
	ld.d	$t0, $a1, 32
	ld.d	$a2, $t5, 24
	ld.d	$a3, $a6, 24
	ld.d	$t4, $a7, 24
	ld.d	$s3, $t0, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$s5, $a0, 40
	ld.d	$s6, $a1, 40
	ld.d	$s7, $a0, 48
	ld.d	$s8, $a1, 48
	ld.d	$a2, $s5, 24
	ld.d	$a3, $s6, 24
	ld.d	$t4, $s7, 24
	ld.d	$s3, $s8, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$ra, $a0, 56
	ld.d	$s3, $a1, 56
	ld.d	$a2, $a0, 64
	ld.d	$a3, $a1, 64
	ld.d	$t4, $ra, 24
	ld.d	$t6, $s3, 24
	ld.d	$a5, $a2, 24
	ld.d	$t7, $a3, 24
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $t6, $s2
	stx.w	$zero, $a5, $s2
	stx.w	$zero, $t7, $s2
	addi.d	$s2, $s2, 4
	ori	$a5, $zero, 16
	bne	$s2, $a5, .LBB8_5
.LBB8_6:                                # %if.end41
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
.Lfunc_end8:
	.size	smpUMHEX_skip_intrabk_SAD, .Lfunc_end8-smpUMHEX_skip_intrabk_SAD
                                        # -- End function
	.globl	smpUMHEX_setup                  # -- Begin function smpUMHEX_setup
	.p2align	5
	.type	smpUMHEX_setup,@function
smpUMHEX_setup:                         # @smpUMHEX_setup
# %bb.0:                                # %entry
	ori	$a7, $zero, 6
	ori	$a6, $zero, 40
	blt	$a7, $a4, .LBB9_4
# %bb.1:                                # %if.else
	ori	$a7, $zero, 4
	ori	$a6, $zero, 32
	blt	$a7, $a4, .LBB9_4
# %bb.2:                                # %if.else41
	ori	$a6, $zero, 16
	beq	$a4, $a7, .LBB9_4
# %bb.3:                                # %if.else64
	ori	$a7, $zero, 2
	ori	$a6, $zero, 8
	blt	$a4, $a7, .LBB9_5
.LBB9_4:                                # %if.end206
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a5, $a4
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	slli.d	$a5, $a1, 3
	ldx.d	$a4, $a4, $a5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a4, $a0
	ldx.d	$a0, $a0, $a6
	ld.h	$a4, $a0, 0
	pcalau12i	$a5, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	st.h	$a4, $a5, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, 2
	pcalau12i	$a4, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	st.h	$a0, $a4, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $a5, 0
	pcalau12i	$a4, %pc_hi20(smpUMHEX_l1_cost)
	addi.d	$a4, $a4, %pc_lo12(smpUMHEX_l1_cost)
	pcalau12i	$a5, %pc_hi20(smpUMHEX_l0_cost)
	addi.d	$a5, $a5, %pc_lo12(smpUMHEX_l0_cost)
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $a4, $a0
	ld.w	$a4, $a1, 180
	or	$a0, $a0, $a5
	ld.d	$a0, $a0, 0
	srli.d	$a4, $a4, 2
	ldx.d	$a0, $a0, $a6
	ld.w	$a1, $a1, 176
	add.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	srli.d	$a1, $a1, 2
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.wu	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra_SAD)
	ld.w	$a1, $a1, %pc_lo12(smpUMHEX_flag_intra_SAD)
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	sltui	$a1, $a1, 1
	maskeqz	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_SAD_uplayer)
	st.w	$a0, $a1, %pc_lo12(smpUMHEX_pred_SAD_uplayer)
.LBB9_5:                                # %if.end211
	ret
.Lfunc_end9:
	.size	smpUMHEX_setup, .Lfunc_end9-smpUMHEX_setup
                                        # -- End function
	.type	block_type_shift_factor,@object # @block_type_shift_factor
	.section	.rodata,"a",@progbits
	.globl	block_type_shift_factor
	.p2align	1, 0x0
block_type_shift_factor:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	1                               # 0x1
	.size	block_type_shift_factor, 16

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
	.type	smpUMHEX_flag_intra,@object     # @smpUMHEX_flag_intra
	.comm	smpUMHEX_flag_intra,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"smpUMHEX_get_mem: smpUMHEX_flag_intra"
	.size	.L.str, 38

	.type	smpUMHEX_l0_cost,@object        # @smpUMHEX_l0_cost
	.comm	smpUMHEX_l0_cost,8,8
	.type	smpUMHEX_l1_cost,@object        # @smpUMHEX_l1_cost
	.comm	smpUMHEX_l1_cost,8,8
	.type	smpUMHEX_SearchState,@object    # @smpUMHEX_SearchState
	.comm	smpUMHEX_SearchState,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	dist_method,@object             # @dist_method
	.local	dist_method
	.comm	dist_method,4,4
	.type	ref_pic_ptr,@object             # @ref_pic_ptr
	.local	ref_pic_ptr
	.comm	ref_pic_ptr,8,8
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	Hexagon_X,@object               # @Hexagon_X
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
Hexagon_X:
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.size	Hexagon_X, 12

	.type	Hexagon_Y,@object               # @Hexagon_Y
	.p2align	1, 0x0
Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.size	Hexagon_Y, 12

	.type	Big_Hexagon_X,@object           # @Big_Hexagon_X
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	1, 0x0
Big_Hexagon_X:
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.size	Big_Hexagon_X, 32

	.type	Big_Hexagon_Y,@object           # @Big_Hexagon_Y
	.p2align	1, 0x0
Big_Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	65533                           # 0xfffd
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	65533                           # 0xfffd
	.size	Big_Hexagon_Y, 32

	.type	smpUMHEX_pred_MV_uplayer_X,@object # @smpUMHEX_pred_MV_uplayer_X
	.comm	smpUMHEX_pred_MV_uplayer_X,2,2
	.type	smpUMHEX_pred_MV_uplayer_Y,@object # @smpUMHEX_pred_MV_uplayer_Y
	.comm	smpUMHEX_pred_MV_uplayer_Y,2,2
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	smpUMHEX_flag_intra_SAD,@object # @smpUMHEX_flag_intra_SAD
	.comm	smpUMHEX_flag_intra_SAD,4,4
	.type	smpUMHEX_pred_SAD_uplayer,@object # @smpUMHEX_pred_SAD_uplayer
	.comm	smpUMHEX_pred_SAD_uplayer,4,4
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
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
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
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
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
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym computeBiPredSAD2
	.addrsig_sym computeBiPredSAD1
	.addrsig_sym smpUMHEX_l0_cost
	.addrsig_sym smpUMHEX_l1_cost
	.addrsig_sym smpUMHEX_SearchState
