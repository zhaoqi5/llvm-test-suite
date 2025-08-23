	.file	"me_fullsearch.c"
	.text
	.globl	FullPelBlockMotionSearch        # -- Begin function FullPelBlockMotionSearch
	.p2align	5
	.type	FullPelBlockMotionSearch,@function
FullPelBlockMotionSearch:               # @FullPelBlockMotionSearch
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
	ld.w	$t1, $t0, 12
	ldptr.d	$t2, $t0, 14224
	ld.d	$t8, $sp, 224
	ori	$t3, $zero, 536
	mul.d	$t1, $t1, $t3
	add.d	$t1, $t2, $t1
	ld.w	$t1, $t1, 432
	pcalau12i	$t2, %got_pc_hi20(listX)
	ld.d	$t2, $t2, %got_pc_lo12(listX)
	pcalau12i	$t3, %got_pc_hi20(input)
	ld.d	$t4, $t3, %got_pc_lo12(input)
	add.w	$a2, $t1, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$t3, $t2, $a2
	ld.d	$t1, $t4, 0
	move	$ra, $a4
	move	$s7, $a3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	slli.d	$a3, $a1, 3
	bne	$a5, $a0, .LBB0_2
# %bb.1:                                # %land.lhs.true
	ldptr.w	$a0, $t1, 4168
	beqz	$a0, .LBB0_28
.LBB0_2:
	move	$s0, $zero
.LBB0_3:                                # %land.end
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 240
	ld.d	$fp, $sp, 232
	ld.h	$t2, $t8, 0
	ld.w	$t4, $a0, 192
	ldx.d	$a4, $t3, $a3
	alsl.d	$t6, $a5, $t1, 3
	beqz	$t4, .LBB0_6
# %bb.4:                                # %land.lhs.true33
	ld.w	$a5, $t0, 20
	beqz	$a5, .LBB0_8
# %bb.5:                                # %land.lhs.true33
	ori	$t3, $zero, 3
	beq	$a5, $t3, .LBB0_8
.LBB0_6:                                # %lor.lhs.false40
	ld.w	$a0, $a0, 196
	beqz	$a0, .LBB0_9
# %bb.7:                                # %land.lhs.true42
	ld.w	$a0, $t0, 20
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB0_9
.LBB0_8:                                # %land.rhs46
	ldptr.w	$a0, $t1, 2936
	sltu	$a0, $zero, $a0
	b	.LBB0_10
.LBB0_9:
	move	$a0, $zero
.LBB0_10:                               # %land.end48
	slli.d	$t4, $a1, 1
	ld.h	$t5, $fp, 0
	ldptr.d	$t0, $a4, 6448
	pcalau12i	$a5, %got_pc_hi20(ref_pic_sub)
	ld.d	$t3, $a5, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$t1, 1
	ori	$a5, $t1, 2296
	ldx.w	$a5, $a4, $a5
	pcalau12i	$t7, %got_pc_hi20(img_width)
	ld.d	$t7, $t7, %got_pc_lo12(img_width)
	ld.w	$s1, $t6, 76
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$t6, $t6, 72
	st.d	$t6, $sp, 120                   # 8-byte Folded Spill
	st.d	$t0, $t3, 0
	st.h	$a5, $t7, 0
	ori	$t0, $t1, 2312
	ldx.w	$t6, $a4, $t0
	ori	$t0, $t1, 2300
	ldx.w	$t0, $a4, $t0
	pcalau12i	$t7, %pc_hi20(width_pad)
	st.w	$t6, $t7, %pc_lo12(width_pad)
	pcalau12i	$t6, %got_pc_hi20(img_height)
	ld.d	$t6, $t6, %got_pc_lo12(img_height)
	ori	$t7, $t1, 2316
	ldx.w	$t7, $a4, $t7
	add.w	$s4, $s7, $t2
	st.h	$t0, $t6, 0
	pcalau12i	$t2, %pc_hi20(height_pad)
	st.w	$t7, $t2, %pc_lo12(height_pad)
	beqz	$a0, .LBB0_12
# %bb.11:                               # %if.then
	pcalau12i	$t2, %pc_hi20(wp_weight)
	ld.d	$t2, $t2, %pc_lo12(wp_weight)
	ldx.d	$t2, $t2, $a2
	pcalau12i	$t6, %pc_hi20(wp_offset)
	ld.d	$t6, $t6, %pc_lo12(wp_offset)
	ldx.d	$t2, $t2, $a3
	ldx.d	$t6, $t6, $a2
	ld.w	$t2, $t2, 0
	pcalau12i	$t7, %got_pc_hi20(weight_luma)
	ld.d	$t7, $t7, %got_pc_lo12(weight_luma)
	ldx.d	$t6, $t6, $a3
	st.w	$t2, $t7, 0
	ld.w	$t2, $t6, 0
	pcalau12i	$t6, %got_pc_hi20(offset_luma)
	ld.d	$t6, $t6, %got_pc_lo12(offset_luma)
	st.w	$t2, $t6, 0
.LBB0_12:                               # %if.end
	pcalau12i	$t2, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t2, $t2, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t6, $t2, 0
	addi.d	$t2, $t4, 1
	add.w	$s5, $ra, $t5
	beqz	$t6, .LBB0_15
# %bb.13:                               # %if.then68
	ldptr.d	$t4, $a4, 6464
	ld.d	$t5, $t4, 0
	st.d	$t5, $t3, 8
	ld.d	$t4, $t4, 8
	st.d	$t4, $t3, 16
	ori	$t3, $t1, 2320
	ldx.w	$t3, $a4, $t3
	ori	$t1, $t1, 2324
	ldx.w	$a4, $a4, $t1
	pcalau12i	$t1, %pc_hi20(width_pad_cr)
	st.w	$t3, $t1, %pc_lo12(width_pad_cr)
	pcalau12i	$t1, %pc_hi20(height_pad_cr)
	st.w	$a4, $t1, %pc_lo12(height_pad_cr)
	beqz	$a0, .LBB0_15
# %bb.14:                               # %if.then73
	pcalau12i	$a4, %pc_hi20(wp_weight)
	ld.d	$a4, $a4, %pc_lo12(wp_weight)
	ldx.d	$a4, $a4, $a2
	ldx.d	$a4, $a4, $a3
	ld.d	$a4, $a4, 4
	pcalau12i	$t1, %got_pc_hi20(weight_cr)
	ld.d	$t1, $t1, %got_pc_lo12(weight_cr)
	pcalau12i	$t3, %pc_hi20(wp_offset)
	ld.d	$t3, $t3, %pc_lo12(wp_offset)
	st.d	$a4, $t1, 0
	ldx.d	$a2, $t3, $a2
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $a2, 4
	pcalau12i	$a4, %got_pc_hi20(offset_cr)
	ld.d	$a4, $a4, %got_pc_lo12(offset_cr)
	ld.w	$a2, $a2, 8
	st.w	$a3, $a4, 0
	st.w	$a2, $a4, 4
.LBB0_15:                               # %if.end99
	ld.d	$t1, $sp, 256
	mul.w	$s8, $t2, $t2
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	bge	$a1, $s4, .LBB0_20
# %bb.16:                               # %land.lhs.true102
	ext.w.h	$a3, $a5
	nor	$a2, $a1, $zero
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a4, $a2, $a4
	add.w	$a3, $a4, $a3
	bge	$s4, $a3, .LBB0_20
# %bb.17:                               # %land.lhs.true102
	bge	$a1, $s5, .LBB0_20
# %bb.18:                               # %land.lhs.true111
	ext.w.h	$a1, $t0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	add.w	$a1, $a2, $a1
	bge	$s5, $a1, .LBB0_20
# %bb.19:
	move	$a1, $zero
	b	.LBB0_21
.LBB0_20:                               # %if.else
	ori	$a1, $zero, 1
.LBB0_21:                               # %if.end119
	pcalau12i	$a2, %got_pc_hi20(ref_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(ref_access_method)
	move	$s2, $zero
	move	$s3, $zero
	move	$fp, $zero
	move	$t3, $zero
	ld.w	$s6, $sp, 248
	st.w	$a1, $a2, 0
	alsl.d	$a1, $s7, $a6, 2
	sub.d	$t4, $zero, $a1
	alsl.d	$a3, $ra, $a7, 2
	ori	$a1, $zero, 24
	maskeqz	$a4, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_x)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_y)
	ld.d	$a6, $a1, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a7, $a1, %got_pc_lo12(mvbits)
	ld.d	$a5, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a6, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $a7, 0
	sub.d	$t5, $zero, $a3
	add.d	$a3, $a5, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	srai.d	$t6, $t1, 12
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.inc
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 2
	addi.w	$s2, $s2, 1
	bgeu	$fp, $s8, .LBB0_25
.LBB0_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a3, $a1, $s3
	ldx.h	$a4, $a0, $s3
	add.d	$a3, $s4, $a3
	add.d	$a5, $s5, $a4
	alsl.w	$a4, $a3, $t4, 2
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $a2, $a4
	alsl.w	$a4, $a5, $t5, 2
	slli.d	$a4, $a4, 2
	ldx.w	$a7, $a2, $a4
	slli.w	$a4, $a3, 2
	slli.w	$a5, $a5, 2
	add.d	$a3, $a7, $a6
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	xor	$a6, $a4, $s7
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $ra
	sltui	$a7, $a7, 1
	maskeqz	$a7, $t6, $a7
	maskeqz	$a6, $a7, $a6
	maskeqz	$a6, $a6, $s0
	sub.d	$s1, $a3, $a6
	bge	$s1, $s6, .LBB0_22
# %bb.24:                               # %if.end155
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $a0, 0
	sub.w	$a3, $s6, $s1
	addi.w	$a4, $a4, 80
	addi.w	$a5, $a5, 80
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$s7, $ra
	move	$s4, $t1
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $t5
	jirl	$ra, $a6, 0
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	move	$t5, $s0
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	move	$t1, $s4
	move	$ra, $s7
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a0, $s1
	slt	$a4, $a3, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a4
	maskeqz	$a1, $s2, $a4
	or	$t3, $a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s6, $a4
	or	$s6, $a3, $a4
	b	.LBB0_22
.LBB0_25:                               # %for.end
	beqz	$t3, .LBB0_27
# %bb.26:                               # %if.then167
	slli.d	$a2, $t3, 1
	ldx.h	$a1, $a1, $a2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.h	$a3, $a4, 0
	add.d	$a1, $a3, $a1
	st.h	$a1, $a4, 0
	ldx.h	$a0, $a0, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.h	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $a2, 0
.LBB0_27:                               # %if.end180
	move	$a0, $s6
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
.LBB0_28:                               # %land.lhs.true26
	ld.w	$a0, $t0, 20
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	sltui	$a1, $a1, 1
	and	$s0, $a1, $a0
	b	.LBB0_3
.Lfunc_end0:
	.size	FullPelBlockMotionSearch, .Lfunc_end0-FullPelBlockMotionSearch
                                        # -- End function
	.globl	FullPelBlockMotionBiPred        # -- Begin function FullPelBlockMotionBiPred
	.p2align	5
	.type	FullPelBlockMotionBiPred,@function
FullPelBlockMotionBiPred:               # @FullPelBlockMotionBiPred
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
	ld.d	$t1, $t0, 0
	ld.d	$fp, $sp, 248
	ld.d	$s0, $sp, 240
	ld.w	$t2, $t1, 12
	ld.d	$t0, $sp, 264
	ldptr.d	$t1, $t1, 14224
	ori	$t3, $zero, 536
	mul.d	$t2, $t2, $t3
	pcalau12i	$t3, %got_pc_hi20(input)
	ld.d	$t3, $t3, %got_pc_lo12(input)
	pcalau12i	$t4, %pc_hi20(active_pps)
	ld.d	$t4, $t4, %pc_lo12(active_pps)
	add.d	$t2, $t1, $t2
	ld.d	$t1, $sp, 256
	ld.d	$t6, $t3, 0
	ld.w	$t5, $t4, 196
	ld.w	$t3, $t2, 432
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $t6, 3
	slli.d	$t4, $a1, 3
	beqz	$t5, .LBB1_3
# %bb.1:                                # %cond.true
	pcalau12i	$a5, %pc_hi20(wp_offset)
	ld.d	$a5, $a5, %pc_lo12(wp_offset)
	alsl.d	$a5, $t3, $a5, 3
	beqz	$a2, .LBB1_4
# %bb.2:                                # %cond.false67
	ld.d	$a6, $a5, 8
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	ld.d	$a5, $a5, 0
	slli.d	$a7, $a1, 2
	ldx.w	$t6, $a6, $a7
	ldx.w	$t7, $a5, $a7
	b	.LBB1_5
.LBB1_3:                                # %entry.cond.end76_crit_edge
	move	$t6, $zero
	move	$t7, $zero
	b	.LBB1_5
.LBB1_4:                                # %cond.true60
	ld.d	$a6, $a5, 0
	ld.d	$a5, $a5, 8
	ldx.d	$a6, $a6, $t4
	ldx.d	$a5, $a5, $t4
	ld.w	$t6, $a6, 0
	ld.w	$t7, $a5, 0
.LBB1_5:                                # %cond.end76
	ld.h	$t8, $s0, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.h	$s5, $fp, 0
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.h	$t1, $t1, 0
	add.w	$a6, $t3, $a2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a5, $a6
	xori	$a7, $a2, 1
	add.w	$a7, $t3, $a7
	slli.d	$a7, $a7, 3
	ldx.d	$a5, $a5, $a7
	ldx.d	$s4, $a6, $t4
	ld.h	$a6, $t0, 0
	ld.w	$a7, $a0, 76
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s8, $a5, 0
	ldptr.d	$a7, $s4, 6448
	pcalau12i	$a5, %got_pc_hi20(ref_pic1_sub)
	ld.d	$ra, $a5, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$t0, $s8, 6448
	pcalau12i	$a5, %got_pc_hi20(ref_pic2_sub)
	ld.d	$a5, $a5, %got_pc_lo12(ref_pic2_sub)
	lu12i.w	$s6, 1
	ori	$t2, $s6, 2296
	ldx.w	$t2, $s4, $t2
	pcalau12i	$fp, %got_pc_hi20(img_width)
	ld.d	$fp, $fp, %got_pc_lo12(img_width)
	ld.w	$a0, $a0, 72
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a7, $ra, 0
	st.d	$t0, $a5, 0
	st.h	$t2, $fp, 0
	ori	$a0, $s6, 2300
	ldx.w	$a0, $s4, $a0
	ori	$a7, $s6, 2312
	ldx.w	$a7, $s4, $a7
	pcalau12i	$t0, %got_pc_hi20(img_height)
	ld.d	$fp, $t0, %got_pc_lo12(img_height)
	pcalau12i	$t0, %pc_hi20(width_pad)
	st.w	$a7, $t0, %pc_lo12(width_pad)
	ori	$a7, $s6, 2316
	ldx.w	$a7, $s4, $a7
	ld.d	$t0, $sp, 272
	st.h	$a0, $fp, 0
	pcalau12i	$fp, %pc_hi20(height_pad)
	st.w	$a7, $fp, %pc_lo12(height_pad)
	pcalau12i	$a7, %pc_hi20(wbp_weight)
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	beqz	$t5, .LBB1_8
# %bb.6:                                # %if.then
	ld.d	$fp, $a7, %pc_lo12(wbp_weight)
	alsl.d	$fp, $t3, $fp, 3
	beqz	$a2, .LBB1_9
# %bb.7:                                # %cond.false122
	ld.d	$s0, $fp, 8
	ld.d	$fp, $fp, 0
	ld.d	$s0, $s0, 0
	ld.d	$fp, $fp, 0
	alsl.d	$s0, $a1, $s0, 3
	alsl.d	$fp, $a1, $fp, 3
	b	.LBB1_10
.LBB1_8:                                # %if.else
	move	$s0, $zero
	pcalau12i	$t6, %pc_hi20(luma_log_weight_denom)
	ld.wu	$t6, $t6, %pc_lo12(luma_log_weight_denom)
	ori	$t7, $zero, 1
	pcalau12i	$fp, %got_pc_hi20(weight1)
	ld.d	$s1, $fp, %got_pc_lo12(weight1)
	pcalau12i	$fp, %got_pc_hi20(weight2)
	ld.d	$s2, $fp, %got_pc_lo12(weight2)
	pcalau12i	$fp, %got_pc_hi20(computeBiPred1)
	ld.d	$fp, $fp, %got_pc_lo12(computeBiPred1)
	sll.w	$t6, $t7, $t6
	st.h	$t6, $s1, 0
	st.h	$t6, $s2, 0
	b	.LBB1_11
.LBB1_9:                                # %cond.true114
	ld.d	$s0, $fp, 0
	ld.d	$fp, $fp, 8
	ldx.d	$s0, $s0, $t4
	ldx.d	$fp, $fp, $t4
.LBB1_10:                               # %cond.end129
	ld.d	$s0, $s0, 0
	ld.d	$fp, $fp, 0
	ld.h	$s0, $s0, 0
	pcalau12i	$s1, %got_pc_hi20(weight1)
	ld.d	$s1, $s1, %got_pc_lo12(weight1)
	ld.h	$fp, $fp, 0
	pcalau12i	$s2, %got_pc_hi20(weight2)
	ld.d	$s2, $s2, %got_pc_lo12(weight2)
	st.h	$s0, $s1, 0
	st.h	$fp, $s2, 0
	ext.w.h	$t6, $t6
	ext.w.h	$t7, $t7
	pcalau12i	$fp, %got_pc_hi20(computeBiPred2)
	ld.d	$fp, $fp, %got_pc_lo12(computeBiPred2)
	add.d	$t6, $t6, $t7
	addi.d	$t6, $t6, 1
	bstrpick.d	$s0, $t6, 31, 1
.LBB1_11:                               # %if.end
	pcalau12i	$t6, %got_pc_hi20(offsetBi)
	ld.d	$s1, $t6, %got_pc_lo12(offsetBi)
	slli.d	$t6, $t0, 1
	slli.d	$t7, $a3, 2
	st.h	$s0, $s1, 0
	pcalau12i	$s0, %got_pc_hi20(ChromaMEEnable)
	ld.d	$s0, $s0, %got_pc_lo12(ChromaMEEnable)
	ld.d	$fp, $fp, 0
	pcalau12i	$s1, %got_pc_hi20(computeBiPred)
	ld.d	$s1, $s1, %got_pc_lo12(computeBiPred)
	ld.w	$s0, $s0, 0
	slli.d	$s3, $a4, 2
	add.d	$s2, $t8, $a3
	add.d	$t8, $s5, $a4
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $s1, 0
	beqz	$s0, .LBB1_19
# %bb.12:                               # %if.then142
	ldptr.d	$fp, $s4, 6464
	ld.d	$s0, $fp, 0
	st.d	$s0, $ra, 8
	ld.d	$fp, $fp, 8
	ldptr.d	$s0, $s8, 6464
	st.d	$fp, $ra, 16
	ld.d	$fp, $s0, 0
	st.d	$fp, $a5, 8
	ld.d	$fp, $s0, 8
	st.d	$fp, $a5, 16
	ori	$a5, $s6, 2320
	ldx.w	$a5, $s4, $a5
	ori	$fp, $s6, 2324
	ldx.w	$fp, $s4, $fp
	pcalau12i	$s0, %pc_hi20(width_pad_cr)
	st.w	$a5, $s0, %pc_lo12(width_pad_cr)
	pcalau12i	$a5, %pc_hi20(height_pad_cr)
	st.w	$fp, $a5, %pc_lo12(height_pad_cr)
	beqz	$t5, .LBB1_15
# %bb.13:                               # %if.then151
	ld.d	$a5, $a7, %pc_lo12(wbp_weight)
	alsl.d	$a5, $t3, $a5, 3
	beqz	$a2, .LBB1_16
# %bb.14:                               # %cond.false282
	ld.d	$a2, $a5, 8
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $t4
	pcalau12i	$a7, %pc_hi20(wp_offset)
	ld.d	$a7, $a7, %pc_lo12(wp_offset)
	ld.h	$t4, $a2, 4
	ld.d	$t5, $a5, 0
	alsl.d	$fp, $t3, $a7, 3
	slli.d	$a5, $t3, 3
	ldx.d	$a5, $a7, $a5
	pcalau12i	$a7, %got_pc_hi20(weight1_cr)
	ld.d	$t3, $a7, %got_pc_lo12(weight1_cr)
	ld.h	$a2, $a2, 8
	ld.d	$t5, $t5, 0
	ld.d	$a7, $fp, 8
	st.h	$t4, $t3, 0
	st.h	$a2, $t3, 2
	alsl.d	$a2, $a1, $t5, 3
	b	.LBB1_17
.LBB1_15:                               # %if.else298
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(weight1_cr)
	ld.d	$a5, $a1, %got_pc_lo12(weight1_cr)
	move	$a1, $zero
	ori	$a7, $zero, 1
	sll.w	$a2, $a7, $a2
	st.h	$a2, $a5, 0
	pcalau12i	$a7, %got_pc_hi20(weight2_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight2_cr)
	pcalau12i	$t3, %got_pc_hi20(offsetBi_cr)
	ld.d	$t3, $t3, %got_pc_lo12(offsetBi_cr)
	st.h	$a2, $a5, 2
	st.h	$a2, $a7, 0
	st.h	$a2, $a7, 2
	st.h	$zero, $t3, 0
	b	.LBB1_18
.LBB1_16:                               # %cond.true267
	ld.d	$a2, $a5, 0
	ldx.d	$a2, $a2, $t4
	ld.d	$a2, $a2, 0
	ld.h	$a7, $a2, 4
	pcalau12i	$t5, %got_pc_hi20(weight1_cr)
	ld.d	$t5, $t5, %got_pc_lo12(weight1_cr)
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	st.h	$a7, $t5, 0
	ld.h	$a7, $a2, 8
	ld.d	$a2, $a5, 8
	alsl.d	$a5, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $fp, $t3
	ld.d	$a5, $a5, 8
	ldx.d	$a2, $a2, $t4
	st.h	$a7, $t5, 2
	alsl.d	$a7, $a1, $t3, 3
	alsl.d	$a5, $a1, $a5, 3
.LBB1_17:                               # %cond.end295
	ld.d	$a1, $a7, 0
	ld.d	$a5, $a5, 0
	ld.w	$a7, $a1, 4
	ld.d	$a2, $a2, 0
	ld.w	$t3, $a5, 4
	ld.w	$a1, $a1, 8
	ld.w	$a5, $a5, 8
	ld.h	$t4, $a2, 4
	pcalau12i	$t5, %got_pc_hi20(weight2_cr)
	ld.d	$t5, $t5, %got_pc_lo12(weight2_cr)
	add.d	$a7, $a7, $t3
	add.d	$a1, $a5, $a1
	ld.h	$a2, $a2, 8
	st.h	$t4, $t5, 0
	pcalau12i	$a5, %got_pc_hi20(offsetBi_cr)
	ld.d	$a5, $a5, %got_pc_lo12(offsetBi_cr)
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a2, $t5, 2
	st.h	$a7, $a5, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB1_18:                               # %if.end308.sink.split
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a2, 2
.LBB1_19:                               # %if.end308
	addi.d	$a5, $t6, 1
	sub.d	$a1, $zero, $t7
	sub.d	$a2, $zero, $s3
	add.d	$t3, $t1, $a3
	ext.w.h	$s5, $s2
	ext.w.h	$t1, $t2
	nor	$a7, $t0, $zero
	ext.w.h	$s8, $t8
	bge	$t0, $s5, .LBB1_24
# %bb.20:                               # %land.lhs.true
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a3, $a7, $a3
	add.w	$a3, $a3, $t1
	bge	$s5, $a3, .LBB1_24
# %bb.21:                               # %land.lhs.true318
	bge	$t0, $s8, .LBB1_24
# %bb.22:                               # %land.lhs.true322
	ext.w.h	$a3, $a0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	sub.d	$t2, $a7, $t2
	add.w	$a3, $t2, $a3
	bge	$s8, $a3, .LBB1_24
# %bb.23:
	move	$t4, $zero
	b	.LBB1_25
.LBB1_24:                               # %if.else331
	ori	$t4, $zero, 1
.LBB1_25:                               # %if.end332
	add.d	$t2, $a6, $a4
	ld.d	$a3, $sp, 224
	pcalau12i	$a4, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a4, %got_pc_lo12(bipred2_access_method)
	ld.d	$a4, $sp, 232
	mul.w	$s4, $a5, $a5
	ext.w.h	$a5, $t3
	st.w	$t4, $a6, 0
	bge	$t0, $a5, .LBB1_30
# %bb.26:                               # %land.lhs.true336
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a6, $a7, $a6
	add.w	$a6, $a6, $t1
	bge	$a5, $a6, .LBB1_30
# %bb.27:                               # %land.lhs.true344
	ext.w.h	$a6, $t2
	bge	$t0, $a6, .LBB1_30
# %bb.28:                               # %land.lhs.true348
	ext.w.h	$a0, $a0
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $t0
	add.w	$a0, $a7, $a0
	bge	$a6, $a0, .LBB1_30
# %bb.29:
	move	$a0, $zero
	b	.LBB1_31
.LBB1_30:                               # %if.else357
	ext.w.h	$a6, $t2
	ori	$a0, $zero, 1
.LBB1_31:                               # %if.end358
	pcalau12i	$a7, %got_pc_hi20(bipred1_access_method)
	ld.d	$a7, $a7, %got_pc_lo12(bipred1_access_method)
	move	$fp, $zero
	move	$s0, $zero
	move	$s7, $zero
	move	$t1, $zero
	ld.d	$t3, $sp, 288
	ld.w	$s6, $sp, 280
	st.w	$a0, $a7, 0
	slli.d	$a0, $a5, 2
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a7, $a1, $a7
	alsl.w	$a5, $a5, $a7, 2
	slli.d	$a7, $a6, 2
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	sub.d	$t0, $a2, $t0
	alsl.w	$a6, $a6, $t0, 2
	sub.d	$t2, $a1, $a3
	sub.d	$t8, $a2, $a4
	pcalau12i	$a1, %got_pc_hi20(spiral_search_x)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_y)
	ld.d	$a3, $a1, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a4, $a1, %got_pc_lo12(mvbits)
	addi.d	$a0, $a0, 80
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $a4, 0
	addi.d	$a3, $a7, 80
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	slli.d	$s2, $a5, 2
	slli.d	$s3, $a6, 2
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %for.inc
                                        #   in Loop: Header=BB1_33 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 2
	addi.w	$fp, $fp, 1
	bgeu	$s7, $s4, .LBB1_35
.LBB1_33:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a3, $a1, $s0
	ldx.h	$a4, $a0, $s0
	add.d	$a3, $a3, $s5
	add.d	$a4, $a4, $s8
	ldx.w	$a5, $a2, $s2
	ldx.w	$a6, $a2, $s3
	alsl.w	$a7, $a3, $t2, 2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	alsl.w	$t0, $a4, $t8, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	add.d	$a5, $a6, $a5
	mul.w	$a5, $a5, $t3
	srai.d	$a5, $a5, 16
	add.d	$a6, $t0, $a7
	mul.w	$a6, $a6, $t3
	srai.d	$a6, $a6, 16
	add.d	$s1, $a6, $a5
	bge	$s1, $s6, .LBB1_32
# %bb.34:                               # %if.end399
                                        #   in Loop: Header=BB1_33 Depth=1
	slli.d	$a0, $a3, 2
	slli.d	$a1, $a4, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $s6, $s1
	addi.d	$a6, $a0, 80
	addi.d	$a7, $a1, 80
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	move	$s2, $t3
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$t3, $s2
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	add.w	$a3, $a0, $s1
	slt	$a4, $a3, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a4
	maskeqz	$a1, $fp, $a4
	or	$t1, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s6, $a4
	or	$s6, $a3, $a4
	b	.LBB1_32
.LBB1_35:                               # %for.end
	beqz	$t1, .LBB1_37
# %bb.36:                               # %if.then415
	slli.d	$a2, $t1, 1
	ldx.h	$a1, $a1, $a2
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.h	$a3, $a4, 0
	add.d	$a1, $a3, $a1
	st.h	$a1, $a4, 0
	ldx.h	$a0, $a0, $a2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.h	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $a2, 0
.LBB1_37:                               # %if.end428
	move	$a0, $s6
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
.Lfunc_end1:
	.size	FullPelBlockMotionBiPred, .Lfunc_end1-FullPelBlockMotionBiPred
                                        # -- End function
	.globl	SubPelBlockMotionSearch         # -- Begin function SubPelBlockMotionSearch
	.p2align	5
	.type	SubPelBlockMotionSearch,@function
SubPelBlockMotionSearch:                # @SubPelBlockMotionSearch
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
	pcalau12i	$t0, %got_pc_hi20(input)
	ld.d	$t1, $t0, %got_pc_lo12(input)
	ld.d	$t0, $sp, 256
	ld.d	$t1, $t1, 0
	pcalau12i	$t2, %got_pc_hi20(img)
	ld.d	$t2, $t2, %got_pc_lo12(img)
	ld.d	$ra, $sp, 248
	ld.d	$t6, $sp, 240
	ldptr.w	$t3, $t1, 4168
	ld.d	$t2, $t2, 0
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$t3, .LBB2_42
.LBB2_1:
	move	$a0, $zero
.LBB2_2:                                # %land.end
	ld.d	$s5, $sp, 280
	alsl.d	$a6, $a5, $t1, 3
	pcalau12i	$a5, %pc_hi20(start_me_refinement_hp)
	ld.w	$s0, $a5, %pc_lo12(start_me_refinement_hp)
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
	st.d	$t6, $sp, 120                   # 8-byte Folded Spill
	beqz	$t5, .LBB2_5
# %bb.3:                                # %land.lhs.true26
	ld.w	$t5, $t2, 20
	beqz	$t5, .LBB2_7
# %bb.4:                                # %land.lhs.true26
	ori	$t6, $zero, 3
	beq	$t5, $t6, .LBB2_7
.LBB2_5:                                # %lor.lhs.false33
	ld.w	$a5, $a5, 196
	beqz	$a5, .LBB2_8
# %bb.6:                                # %land.lhs.true35
	ld.w	$a5, $t2, 20
	ori	$t2, $zero, 1
	bne	$a5, $t2, .LBB2_8
.LBB2_7:                                # %land.end41
	ldptr.w	$a5, $t1, 2936
	sltu	$a5, $zero, $a5
	ori	$t1, $zero, 3
	maskeqz	$s6, $t1, $a5
	b	.LBB2_9
.LBB2_8:
	move	$a5, $zero
	move	$s6, $zero
.LBB2_9:                                # %land.end41.thread
	ld.w	$t1, $a6, 72
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$t1, %got_pc_hi20(listX)
	ld.d	$t1, $t1, %got_pc_lo12(listX)
	ld.w	$a6, $a6, 76
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	add.w	$a2, $t4, $a2
	slli.d	$a6, $a2, 3
	ldx.d	$a2, $t1, $a6
	sltui	$t2, $s0, 1
	or	$t3, $t3, $a7
	slli.d	$a7, $a1, 3
	ldx.d	$a7, $a2, $a7
	ori	$a2, $zero, 80
	lu12i.w	$t1, 1
	ori	$t4, $t1, 2296
	ldx.w	$t5, $a7, $t4
	ori	$t4, $t1, 2300
	ldx.w	$t6, $a7, $t4
	ldptr.d	$t7, $a7, 6448
	ori	$t4, $t1, 2312
	ldx.w	$t8, $a7, $t4
	pcalau12i	$t4, %got_pc_hi20(ref_pic_sub)
	ld.d	$t4, $t4, %got_pc_lo12(ref_pic_sub)
	pcalau12i	$fp, %pc_hi20(width_pad)
	st.w	$t8, $fp, %pc_lo12(width_pad)
	ori	$t8, $t1, 2316
	ldx.w	$t8, $a7, $t8
	ld.w	$fp, $s5, 4
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $t4, 0
	pcalau12i	$t7, %pc_hi20(height_pad)
	st.w	$t8, $t7, %pc_lo12(height_pad)
	beqz	$a5, .LBB2_11
# %bb.10:                               # %if.then
	pcalau12i	$t7, %pc_hi20(wp_weight)
	ld.d	$t7, $t7, %pc_lo12(wp_weight)
	ldx.d	$t7, $t7, $a6
	slli.d	$t8, $a1, 3
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	ldx.d	$t7, $t7, $t8
	ldx.d	$fp, $fp, $a6
	ld.w	$t7, $t7, 0
	pcalau12i	$s1, %got_pc_hi20(weight_luma)
	ld.d	$s1, $s1, %got_pc_lo12(weight_luma)
	ldx.d	$t8, $fp, $t8
	st.w	$t7, $s1, 0
	ld.w	$t7, $t8, 0
	pcalau12i	$t8, %got_pc_hi20(offset_luma)
	ld.d	$t8, $t8, %got_pc_lo12(offset_luma)
	st.w	$t7, $t8, 0
.LBB2_11:                               # %if.end
	pcalau12i	$t7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t7, $t7, %got_pc_lo12(ChromaMEEnable)
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	sub.d	$t8, $t5, $t8
	ld.w	$t5, $t7, 0
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	sub.d	$t6, $t6, $t7
	maskeqz	$t3, $t3, $t2
	masknez	$t0, $t0, $t2
	alsl.w	$a3, $a3, $a2, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	beqz	$t5, .LBB2_14
# %bb.12:                               # %if.then69
	ldptr.d	$a3, $a7, 6464
	ld.d	$t2, $a3, 0
	st.d	$t2, $t4, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t4, 16
	ori	$a3, $t1, 2320
	ldx.w	$a3, $a7, $a3
	ori	$t1, $t1, 2324
	ldx.w	$a7, $a7, $t1
	pcalau12i	$t1, %pc_hi20(width_pad_cr)
	st.w	$a3, $t1, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a7, $a3, %pc_lo12(height_pad_cr)
	beqz	$a5, .LBB2_14
# %bb.13:                               # %if.then74
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a6
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a5, %got_pc_hi20(weight_cr)
	ld.d	$a5, $a5, %got_pc_lo12(weight_cr)
	pcalau12i	$a7, %pc_hi20(wp_offset)
	ld.d	$a7, $a7, %pc_lo12(wp_offset)
	st.d	$a3, $a5, 0
	ldx.d	$a3, $a7, $a6
	ldx.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 4
	pcalau12i	$a5, %got_pc_hi20(offset_cr)
	ld.d	$a5, $a5, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a5, 0
	st.w	$a1, $a5, 4
.LBB2_14:                               # %if.end100
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.h	$a1, $a7, 0
	alsl.w	$a2, $a4, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	ori	$a3, $zero, 2
	or	$s3, $t3, $t0
	blt	$a2, $a3, .LBB2_19
# %bb.15:                               # %if.end100
	slli.d	$a3, $t8, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB2_19
# %bb.16:                               # %land.lhs.true111
	ld.h	$a2, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_19
# %bb.17:                               # %land.lhs.true111
	slli.d	$a3, $t6, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB2_19
# %bb.18:
	move	$a2, $zero
	b	.LBB2_20
.LBB2_19:                               # %if.else
	ori	$a2, $zero, 1
.LBB2_20:                               # %if.end123
	pcalau12i	$a3, %got_pc_hi20(ref_access_method)
	ld.d	$a6, $a3, %got_pc_lo12(ref_access_method)
	ld.w	$s2, $sp, 272
	st.w	$a2, $a6, 0
	st.d	$ra, $sp, 80                    # 8-byte Folded Spill
	bge	$s0, $s3, .LBB2_25
# %bb.21:                               # %for.body.lr.ph
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(computeUniPred)
	ld.d	$a1, $a1, %got_pc_lo12(computeUniPred)
	move	$s7, $zero
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $s6, 1
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(spiral_hpel_search_x)
	ld.d	$fp, $a1, %got_pc_lo12(spiral_hpel_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_hpel_search_y)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_hpel_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$s5, $a1, %got_pc_lo12(mvbits)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	srai.d	$a4, $a1, 12
	ld.d	$a1, $fp, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ld.d	$a3, $s5, 0
	slli.d	$s6, $s0, 1
	andi	$a0, $a0, 1
	maskeqz	$s1, $a4, $a0
	move	$s4, $s0
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               # %for.inc
                                        #   in Loop: Header=BB2_23 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s6, $s6, 2
	beq	$s3, $s0, .LBB2_26
.LBB2_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $a7, 0
	ldx.h	$a4, $a1, $s6
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a2, $s6
	add.d	$a0, $a4, $a0
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	mul.w	$a4, $a4, $a6
	srai.d	$s8, $a4, 16
	bge	$s8, $s2, .LBB2_22
# %bb.24:                               # %if.end149
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $a1, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s2, $s8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	sltui	$a1, $s4, 1
	maskeqz	$a1, $s1, $a1
	sub.d	$a1, $s8, $a1
	add.w	$a0, $a1, $a0
	slt	$a4, $a0, $s2
	masknez	$a1, $s7, $a4
	maskeqz	$a2, $s0, $a4
	or	$s7, $a2, $a1
	ld.d	$a1, $fp, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $s5, 0
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $s2, $a4
	or	$s2, $a0, $a4
	b	.LBB2_22
.LBB2_25:
	bstrpick.d	$a1, $a1, 15, 0
	b	.LBB2_29
.LBB2_26:                               # %for.end
	ld.hu	$a1, $a7, 0
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	beqz	$s7, .LBB2_28
# %bb.27:                               # %if.then171
	ld.d	$a0, $fp, 0
	slli.d	$a2, $s7, 1
	ldx.h	$a0, $a0, $a2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $a7, 0
	ldx.h	$a0, $a3, $a2
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
	ld.hu	$a1, $a7, 0
.LBB2_28:                               # %if.end184
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
.LBB2_29:                               # %if.end184
	pcalau12i	$a0, %pc_hi20(start_me_refinement_qp)
	ld.w	$s1, $a0, %pc_lo12(start_me_refinement_qp)
	ld.d	$s3, $sp, 264
	sltui	$a3, $s1, 1
	masknez	$a0, $s2, $a3
	lu12i.w	$a2, 524287
	ori	$a5, $a2, 4095
	ext.w.h	$a1, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a5, $a3
	blt	$a4, $a2, .LBB2_34
# %bb.30:                               # %if.end184
	ori	$a3, $zero, 160
	alsl.w	$a5, $t8, $a3, 2
	bge	$a4, $a5, .LBB2_34
# %bb.31:                               # %land.lhs.true197
	ld.h	$a4, $ra, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	add.w	$a4, $a5, $a4
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB2_34
# %bb.32:                               # %land.lhs.true197
	alsl.w	$a3, $t6, $a3, 2
	bge	$a4, $a3, .LBB2_34
# %bb.33:
	move	$a2, $zero
.LBB2_34:                               # %if.end209
	or	$s4, $a1, $a0
	st.w	$a2, $a6, 0
	bge	$s1, $s3, .LBB2_41
# %bb.35:                               # %for.body216.lr.ph
	move	$s0, $zero
	ld.w	$s7, $s5, 8
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_x)
	ld.d	$s2, $a1, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_y)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$s5, $a1, %got_pc_lo12(mvbits)
	ld.d	$a3, $a0, %got_pc_lo12(computeUniPred)
	ld.d	$a0, $s2, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	ld.d	$a2, $s5, 0
	alsl.d	$a3, $s6, $a3, 3
	addi.d	$s6, $a3, 16
	slli.d	$s8, $s1, 1
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_36:                               # %for.inc253
                                        #   in Loop: Header=BB2_37 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$s8, $s8, 2
	beq	$s3, $s1, .LBB2_39
.LBB2_37:                               # %for.body216
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a7, 0
	ldx.h	$a4, $a0, $s8
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a1, $s8
	add.d	$a3, $a4, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a4, $a6, $a4
	mul.w	$a4, $a4, $s7
	srai.d	$fp, $a4, 16
	bge	$fp, $s4, .LBB2_36
# %bb.38:                               # %if.end241
                                        #   in Loop: Header=BB2_37 Depth=1
	ld.d	$a6, $s6, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s4, $fp
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	add.w	$a3, $a0, $fp
	slt	$a4, $a3, $s4
	masknez	$a0, $s0, $a4
	maskeqz	$a1, $s1, $a4
	or	$s0, $a1, $a0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s5, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s4, $a4
	or	$s4, $a3, $a4
	b	.LBB2_36
.LBB2_39:                               # %for.end255
	beqz	$s0, .LBB2_41
# %bb.40:                               # %if.then257
	ld.d	$a0, $s2, 0
	slli.d	$a1, $s0, 1
	ldx.h	$a0, $a0, $a1
	ld.h	$a2, $a7, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a2, $a0
	st.h	$a0, $a7, 0
	ldx.h	$a0, $a3, $a1
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
.LBB2_41:                               # %if.end270
	move	$a0, $s4
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
.LBB2_42:                               # %land.lhs.true
	ori	$a6, $zero, 1
	move	$a0, $zero
	bne	$a5, $a6, .LBB2_2
# %bb.43:                               # %land.lhs.true
	bnez	$a1, .LBB2_2
# %bb.44:                               # %land.lhs.true
	ld.w	$a6, $t2, 20
	ori	$a7, $zero, 1
	beq	$a6, $a7, .LBB2_2
# %bb.45:                               # %land.lhs.true7
	ld.hu	$a0, $t6, 0
	bnez	$a0, .LBB2_1
# %bb.46:                               # %land.rhs
	ld.hu	$a0, $ra, 0
	sltui	$a0, $a0, 1
	b	.LBB2_2
.Lfunc_end2:
	.size	SubPelBlockMotionSearch, .Lfunc_end2-SubPelBlockMotionSearch
                                        # -- End function
	.globl	SubPelBlockSearchBiPred         # -- Begin function SubPelBlockSearchBiPred
	.p2align	5
	.type	SubPelBlockSearchBiPred,@function
SubPelBlockSearchBiPred:                # @SubPelBlockSearchBiPred
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t1, $t0, %got_pc_lo12(img)
	ld.d	$s5, $sp, 312
	ld.d	$t0, $sp, 288
	ld.d	$s7, $sp, 280
	ld.d	$t1, $t1, 0
	pcalau12i	$t2, %pc_hi20(active_pps)
	ld.d	$t2, $t2, %pc_lo12(active_pps)
	ld.d	$s8, $sp, 272
	ld.w	$t3, $t1, 12
	ldptr.d	$t1, $t1, 14224
	ld.w	$s4, $t2, 196
	ori	$t2, $zero, 536
	mul.d	$t2, $t3, $t2
	add.d	$t1, $t1, $t2
	ld.w	$t1, $t1, 432
	move	$ra, $a7
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	beqz	$s4, .LBB3_3
# %bb.1:                                # %cond.true
	pcalau12i	$a6, %pc_hi20(wp_offset)
	ld.d	$a6, $a6, %pc_lo12(wp_offset)
	alsl.d	$a6, $t1, $a6, 3
	beqz	$a2, .LBB3_4
# %bb.2:                                # %cond.false29
	ld.d	$a7, $a6, 8
	ld.d	$a6, $a6, 0
	b	.LBB3_5
.LBB3_3:
	move	$a7, $zero
	ori	$t2, $zero, 1
	b	.LBB3_6
.LBB3_4:                                # %cond.true22
	ld.d	$a7, $a6, 0
	ld.d	$a6, $a6, 8
	alsl.d	$a7, $a1, $a7, 3
	alsl.d	$a6, $a1, $a6, 3
.LBB3_5:                                # %cond.end37.sink.split
	ld.d	$a7, $a7, 0
	ld.d	$a6, $a6, 0
	ld.h	$t2, $a7, 0
	ld.h	$a7, $a6, 0
	addi.d	$t2, $t2, 1
.LBB3_6:                                # %cond.end37
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$a6, $a6, %got_pc_lo12(input)
	ld.d	$a6, $a6, 0
	alsl.d	$a5, $a5, $a6, 3
	ld.w	$s1, $a5, 72
	ld.w	$s2, $a5, 76
	ori	$a5, $zero, 80
	pcalau12i	$a6, %pc_hi20(start_me_refinement_hp)
	ld.w	$s6, $a6, %pc_lo12(start_me_refinement_hp)
	slt	$a6, $a0, $t0
	pcalau12i	$t3, %got_pc_hi20(listX)
	ld.d	$t3, $t3, %got_pc_lo12(listX)
	masknez	$t5, $a0, $a6
	add.w	$a0, $t1, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$t4, $t3, $a0
	maskeqz	$t8, $t0, $a6
	ld.h	$a0, $s8, 0
	slli.d	$a6, $a1, 3
	ldx.d	$t4, $t4, $a6
	xori	$a6, $a2, 1
	add.w	$a6, $t1, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$t3, $t3, $a6
	lu12i.w	$t6, 1
	ori	$a6, $t6, 2296
	ldx.w	$fp, $t4, $a6
	ori	$a6, $t6, 2300
	ldx.w	$s0, $t4, $a6
	ld.h	$a6, $s7, 0
	ld.d	$t7, $t3, 0
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	sub.d	$t3, $fp, $s1
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	sub.d	$t3, $s0, $s2
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	ldptr.d	$t3, $t4, 6448
	pcalau12i	$s1, %got_pc_hi20(img_width)
	ld.d	$s2, $s1, %got_pc_lo12(img_width)
	pcalau12i	$s1, %got_pc_hi20(ref_pic1_sub)
	ld.d	$s1, $s1, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$s3, $t7, 6448
	st.h	$fp, $s2, 0
	pcalau12i	$fp, %got_pc_hi20(ref_pic2_sub)
	ld.d	$s2, $fp, %got_pc_lo12(ref_pic2_sub)
	pcalau12i	$fp, %got_pc_hi20(img_height)
	ld.d	$fp, $fp, %got_pc_lo12(img_height)
	st.d	$t3, $s1, 0
	ld.w	$t3, $s5, 4
	st.d	$t3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $s2, 0
	st.h	$s0, $fp, 0
	ori	$t3, $t6, 2312
	ldx.w	$t3, $t4, $t3
	ori	$fp, $t6, 2316
	ldx.w	$fp, $t4, $fp
	pcalau12i	$s0, %pc_hi20(width_pad)
	st.w	$t3, $s0, %pc_lo12(width_pad)
	pcalau12i	$t3, %pc_hi20(height_pad)
	st.w	$fp, $t3, %pc_lo12(height_pad)
	pcalau12i	$s3, %pc_hi20(wbp_weight)
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	beqz	$s4, .LBB3_9
# %bb.7:                                # %if.then
	ld.d	$t3, $s3, %pc_lo12(wbp_weight)
	alsl.d	$t3, $t1, $t3, 3
	beqz	$a2, .LBB3_10
# %bb.8:                                # %cond.false110
	ld.d	$fp, $t3, 8
	ld.d	$t3, $t3, 0
	ld.d	$fp, $fp, 0
	ld.d	$t3, $t3, 0
	alsl.d	$fp, $a1, $fp, 3
	alsl.d	$t3, $a1, $t3, 3
	b	.LBB3_11
.LBB3_9:                                # %if.else
	move	$fp, $zero
	pcalau12i	$a7, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a7, $a7, %pc_lo12(luma_log_weight_denom)
	ori	$t2, $zero, 1
	pcalau12i	$t3, %got_pc_hi20(weight1)
	ld.d	$t3, $t3, %got_pc_lo12(weight1)
	pcalau12i	$s0, %got_pc_hi20(weight2)
	ld.d	$s0, $s0, %got_pc_lo12(weight2)
	pcalau12i	$s4, %got_pc_hi20(computeBiPred1)
	ld.d	$s4, $s4, %got_pc_lo12(computeBiPred1)
	sll.w	$a7, $t2, $a7
	st.h	$a7, $t3, 0
	st.h	$a7, $s0, 0
	addi.d	$s0, $s4, 8
	b	.LBB3_12
.LBB3_10:                               # %cond.true102
	ld.d	$fp, $t3, 0
	ld.d	$t3, $t3, 8
	slli.d	$s0, $a1, 3
	ldx.d	$fp, $fp, $s0
	ldx.d	$t3, $t3, $s0
.LBB3_11:                               # %cond.end117
	ld.d	$fp, $fp, 0
	ld.d	$t3, $t3, 0
	ld.h	$fp, $fp, 0
	pcalau12i	$s0, %got_pc_hi20(weight1)
	ld.d	$s0, $s0, %got_pc_lo12(weight1)
	ld.h	$t3, $t3, 0
	pcalau12i	$s4, %got_pc_hi20(weight2)
	ld.d	$s4, $s4, %got_pc_lo12(weight2)
	st.h	$fp, $s0, 0
	pcalau12i	$fp, %got_pc_hi20(computeBiPred2)
	ld.d	$s0, $fp, %got_pc_lo12(computeBiPred2)
	st.h	$t3, $s4, 0
	add.d	$a7, $t2, $a7
	bstrpick.d	$fp, $a7, 31, 1
	addi.d	$s0, $s0, 8
.LBB3_12:                               # %if.end
	slli.d	$a7, $a3, 2
	pcalau12i	$t2, %got_pc_hi20(offsetBi)
	ld.d	$s4, $t2, %got_pc_lo12(offsetBi)
	slli.d	$t3, $a4, 2
	sltui	$t2, $s6, 1
	or	$t5, $t8, $t5
	st.h	$fp, $s4, 0
	pcalau12i	$t8, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t8, $t8, %got_pc_lo12(ChromaMEEnable)
	ld.d	$fp, $s0, 0
	pcalau12i	$s0, %got_pc_hi20(computeBiPred)
	ld.d	$s4, $s0, %got_pc_lo12(computeBiPred)
	ld.w	$t8, $t8, 0
	ld.d	$s0, $sp, 256
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	alsl.w	$a3, $a3, $a5, 2
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$fp, $s4, 0
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	beqz	$t8, .LBB3_20
# %bb.13:                               # %if.then130
	ldptr.d	$t8, $t4, 6464
	ld.d	$fp, $t8, 0
	st.d	$fp, $s1, 8
	ld.d	$t8, $t8, 8
	ldptr.d	$t7, $t7, 6464
	st.d	$t8, $s1, 16
	ld.d	$t8, $t7, 0
	st.d	$t8, $s2, 8
	ld.d	$t7, $t7, 8
	st.d	$t7, $s2, 16
	ori	$t7, $t6, 2320
	ldx.w	$t7, $t4, $t7
	ori	$t6, $t6, 2324
	ldx.w	$t4, $t4, $t6
	pcalau12i	$t6, %pc_hi20(width_pad_cr)
	st.w	$t7, $t6, %pc_lo12(width_pad_cr)
	pcalau12i	$t6, %pc_hi20(height_pad_cr)
	st.w	$t4, $t6, %pc_lo12(height_pad_cr)
	beqz	$s4, .LBB3_16
# %bb.14:                               # %if.then139
	ld.d	$t4, $s3, %pc_lo12(wbp_weight)
	alsl.d	$t4, $t1, $t4, 3
	beqz	$a2, .LBB3_17
# %bb.15:                               # %cond.false270
	ld.d	$a2, $t4, 8
	ld.d	$a2, $a2, 0
	slli.d	$t6, $a1, 3
	ldx.d	$a2, $a2, $t6
	pcalau12i	$t6, %pc_hi20(wp_offset)
	ld.d	$t6, $t6, %pc_lo12(wp_offset)
	ld.h	$t7, $a2, 4
	ld.d	$t4, $t4, 0
	alsl.d	$t8, $t1, $t6, 3
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t6, $t1
	pcalau12i	$t6, %got_pc_hi20(weight1_cr)
	ld.d	$t6, $t6, %got_pc_lo12(weight1_cr)
	ld.h	$a2, $a2, 8
	ld.d	$fp, $t4, 0
	ld.d	$t4, $t8, 8
	st.h	$t7, $t6, 0
	st.h	$a2, $t6, 2
	alsl.d	$a2, $a1, $fp, 3
	b	.LBB3_18
.LBB3_16:                               # %if.else286
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(weight1_cr)
	ld.d	$t1, $a1, %got_pc_lo12(weight1_cr)
	move	$a1, $zero
	ori	$t4, $zero, 1
	sll.w	$a2, $t4, $a2
	st.h	$a2, $t1, 0
	pcalau12i	$t4, %got_pc_hi20(weight2_cr)
	ld.d	$t4, $t4, %got_pc_lo12(weight2_cr)
	pcalau12i	$t6, %got_pc_hi20(offsetBi_cr)
	ld.d	$t6, $t6, %got_pc_lo12(offsetBi_cr)
	st.h	$a2, $t1, 2
	st.h	$a2, $t4, 0
	st.h	$a2, $t4, 2
	st.h	$zero, $t6, 0
	b	.LBB3_19
.LBB3_17:                               # %cond.true255
	ld.d	$a2, $t4, 0
	slli.d	$t6, $a1, 3
	ldx.d	$a2, $a2, $t6
	ld.d	$a2, $a2, 0
	ld.h	$t7, $a2, 4
	pcalau12i	$t8, %got_pc_hi20(weight1_cr)
	ld.d	$t8, $t8, %got_pc_lo12(weight1_cr)
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	st.h	$t7, $t8, 0
	ld.h	$t7, $a2, 8
	ld.d	$a2, $t4, 8
	alsl.d	$t4, $t1, $fp, 3
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $fp, $t1
	ld.d	$fp, $t4, 8
	ldx.d	$a2, $a2, $t6
	st.h	$t7, $t8, 2
	alsl.d	$t4, $a1, $t1, 3
	alsl.d	$t1, $a1, $fp, 3
.LBB3_18:                               # %cond.end283
	ld.d	$a1, $t4, 0
	ld.d	$t1, $t1, 0
	ld.w	$t4, $a1, 4
	ld.d	$a2, $a2, 0
	ld.w	$t6, $t1, 4
	ld.w	$a1, $a1, 8
	ld.w	$t1, $t1, 8
	ld.h	$t7, $a2, 4
	pcalau12i	$t8, %got_pc_hi20(weight2_cr)
	ld.d	$t8, $t8, %got_pc_lo12(weight2_cr)
	add.d	$t4, $t4, $t6
	add.d	$a1, $t1, $a1
	ld.h	$a2, $a2, 8
	st.h	$t7, $t8, 0
	pcalau12i	$t1, %got_pc_hi20(offsetBi_cr)
	ld.d	$t1, $t1, %got_pc_lo12(offsetBi_cr)
	addi.d	$t4, $t4, 1
	srli.d	$t4, $t4, 1
	st.h	$a2, $t8, 2
	st.h	$t4, $t1, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB3_19:                               # %if.end296.sink.split
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a2, 2
.LBB3_20:                               # %if.end296
	addi.d	$t1, $a7, 80
	addi.d	$t3, $t3, 80
	maskeqz	$a7, $t5, $t2
	masknez	$t0, $t0, $t2
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.h	$a1, $t2, 0
	ld.d	$s3, $sp, 264
	alsl.w	$a2, $a4, $a5, 2
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a1
	ori	$a5, $zero, 2
	addi.w	$a3, $a3, 159
	blt	$a4, $a5, .LBB3_25
# %bb.21:                               # %if.end296
	bge	$a4, $a3, .LBB3_25
# %bb.22:                               # %land.lhs.true306
	ld.h	$a4, $s3, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.w	$a4, $a5, $a4
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB3_25
# %bb.23:                               # %land.lhs.true306
	addi.w	$a5, $a2, 159
	bge	$a4, $a5, .LBB3_25
# %bb.24:
	move	$a4, $zero
	b	.LBB3_26
.LBB3_25:                               # %if.else318
	ori	$a4, $zero, 1
.LBB3_26:                               # %if.end319
	add.w	$a0, $t1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	add.w	$a0, $t3, $a6
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.h	$a0, $s8, 0
	pcalau12i	$a5, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a5, %got_pc_lo12(bipred2_access_method)
	or	$s1, $a7, $t0
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a5, $a0
	ori	$a5, $zero, 2
	st.w	$a4, $a6, 0
	blt	$a0, $a5, .LBB3_31
# %bb.27:                               # %if.end319
	bge	$a0, $a3, .LBB3_31
# %bb.28:                               # %land.lhs.true330
	ld.h	$a0, $s7, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a0, $a3, $a0
	ori	$a3, $zero, 2
	blt	$a0, $a3, .LBB3_31
# %bb.29:                               # %land.lhs.true330
	addi.w	$a2, $a2, 159
	bge	$a0, $a2, .LBB3_31
# %bb.30:
	move	$a0, $zero
	b	.LBB3_32
.LBB3_31:                               # %if.else342
	ori	$a0, $zero, 1
.LBB3_32:                               # %if.end343
	pcalau12i	$a2, %got_pc_hi20(bipred1_access_method)
	ld.d	$a7, $a2, %got_pc_lo12(bipred1_access_method)
	ld.w	$s2, $sp, 304
	ori	$a5, $zero, 160
	st.w	$a0, $a7, 0
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	bge	$s6, $s1, .LBB3_37
# %bb.33:                               # %for.body.lr.ph
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(spiral_hpel_search_x)
	ld.d	$s0, $a0, %got_pc_lo12(spiral_hpel_search_x)
	pcalau12i	$a0, %got_pc_hi20(spiral_hpel_search_y)
	ld.d	$fp, $a0, %got_pc_lo12(spiral_hpel_search_y)
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s4, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	move	$s5, $zero
	slli.d	$s7, $s6, 1
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %for.inc
                                        #   in Loop: Header=BB3_35 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, 2
	beq	$s1, $s6, .LBB3_38
.LBB3_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $t2, 0
	ldx.h	$a4, $a0, $s7
	ld.h	$a5, $s3, 0
	ldx.h	$a6, $a1, $s7
	add.d	$a3, $a4, $a3
	add.d	$a4, $a6, $a5
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a5, $a3, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	sub.d	$a6, $a4, $ra
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	mul.w	$a5, $a5, $a6
	srai.d	$s8, $a5, 16
	bge	$s8, $s2, .LBB3_34
# %bb.36:                               # %if.end369
                                        #   in Loop: Header=BB3_35 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$a6, $a3, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a7, $a4, $a0
	sub.w	$a3, $s2, $s8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $a0, $s8
	slt	$a4, $a3, $s2
	masknez	$a0, $s5, $a4
	maskeqz	$a1, $s6, $a4
	or	$s5, $a1, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s2, $a4
	or	$s2, $a3, $a4
	b	.LBB3_34
.LBB3_37:
	bstrpick.d	$a2, $a1, 15, 0
	b	.LBB3_41
.LBB3_38:                               # %for.end
	ld.hu	$a2, $t2, 0
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	beqz	$s5, .LBB3_40
# %bb.39:                               # %if.then380
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s5, 1
	ldx.h	$a0, $a0, $a1
	ld.d	$a3, $fp, 0
	add.d	$a0, $a2, $a0
	st.h	$a0, $t2, 0
	ldx.h	$a0, $a3, $a1
	ld.h	$a1, $s3, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $s3, 0
	ld.hu	$a2, $t2, 0
.LBB3_40:                               # %if.end393
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	ori	$a5, $zero, 160
.LBB3_41:                               # %if.end393
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.w	$a1, $a0, $a5, 2
	pcalau12i	$a0, %got_pc_hi20(computeBiPred2)
	ld.d	$a3, $a0, %got_pc_lo12(computeBiPred2)
	pcalau12i	$a0, %got_pc_hi20(computeBiPred1)
	ld.d	$a4, $a0, %got_pc_lo12(computeBiPred1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.w	$a0, $a0, $a5, 2
	sltui	$a5, $s4, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	ld.d	$a4, $a3, 16
	ext.w.h	$a2, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a2
	ori	$a2, $zero, 1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	st.d	$a4, $a5, 0
	blt	$a3, $a2, .LBB3_46
# %bb.42:                               # %if.end393
	bge	$a3, $a1, .LBB3_46
# %bb.43:                               # %land.lhs.true408
	ld.h	$a3, $s3, 0
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB3_46
# %bb.44:                               # %land.lhs.true408
	bge	$a3, $a0, .LBB3_46
# %bb.45:
	move	$a2, $zero
.LBB3_46:                               # %if.end420
	ld.h	$a3, $s8, 0
	ld.d	$s1, $sp, 296
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a3
	ori	$a3, $zero, 1
	st.w	$a2, $a6, 0
	blt	$a4, $a3, .LBB3_51
# %bb.47:                               # %if.end420
	bge	$a4, $a1, .LBB3_51
# %bb.48:                               # %land.lhs.true430
	ld.h	$a1, $s7, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_51
# %bb.49:                               # %land.lhs.true430
	bge	$a1, $a0, .LBB3_51
# %bb.50:
	move	$a3, $zero
.LBB3_51:                               # %if.end442
	pcalau12i	$a0, %pc_hi20(start_me_refinement_qp)
	ld.w	$fp, $a0, %pc_lo12(start_me_refinement_qp)
	st.w	$a3, $a7, 0
	sltui	$a0, $fp, 1
	masknez	$a1, $s2, $a0
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	bge	$fp, $s1, .LBB3_58
# %bb.52:                               # %for.body450.lr.ph
	pcalau12i	$a0, %got_pc_hi20(spiral_search_x)
	ld.d	$s0, $a0, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a0, %got_pc_hi20(spiral_search_y)
	ld.d	$a1, $a0, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$s4, $a0, %got_pc_lo12(mvbits)
	ld.w	$s5, $s5, 8
	ld.d	$a0, $s0, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s4, 0
	move	$s7, $zero
	slli.d	$s8, $fp, 1
	b	.LBB3_54
	.p2align	4, , 16
.LBB3_53:                               # %for.inc485
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s8, $s8, 2
	beq	$s1, $fp, .LBB3_56
.LBB3_54:                               # %for.body450
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $t2, 0
	ldx.h	$a4, $a0, $s8
	ld.h	$a5, $s3, 0
	ldx.h	$a6, $a1, $s8
	add.d	$a3, $a4, $a3
	add.d	$a4, $a6, $a5
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a5, $a3, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	sub.d	$a6, $a4, $ra
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a5, $a6, $a5
	mul.w	$a5, $a5, $s5
	srai.d	$s2, $a5, 16
	bge	$s2, $s6, .LBB3_53
# %bb.55:                               # %if.end475
                                        #   in Loop: Header=BB3_54 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$a6, $a3, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a7, $a4, $a0
	sub.w	$a3, $s6, $s2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $a0, $s2
	slt	$a4, $a3, $s6
	masknez	$a0, $s7, $a4
	maskeqz	$a1, $fp, $a4
	or	$s7, $a1, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s4, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $s6, $a4
	or	$s6, $a3, $a4
	b	.LBB3_53
.LBB3_56:                               # %for.end487
	beqz	$s7, .LBB3_58
# %bb.57:                               # %if.then489
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s7, 1
	ldx.h	$a0, $a0, $a1
	ld.h	$a2, $t2, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a2, $a0
	st.h	$a0, $t2, 0
	ldx.h	$a0, $a3, $a1
	ld.h	$a1, $s3, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $s3, 0
.LBB3_58:                               # %if.end502
	move	$a0, $s6
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
.Lfunc_end3:
	.size	SubPelBlockSearchBiPred, .Lfunc_end3-SubPelBlockSearchBiPred
                                        # -- End function
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
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
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
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
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
