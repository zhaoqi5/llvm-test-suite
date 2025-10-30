	.file	"block.c"
	.text
	.globl	split_blocks                    # -- Begin function split_blocks
	.p2align	5
	.type	split_blocks,@function
split_blocks:                           # @split_blocks
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cur_max_level)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(cur_max_level)
	bltz	$a0, .LBB0_90
# %bb.1:                                # %for.cond1.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(max_active_block)
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(max_active_block)
	blez	$a1, .LBB0_90
# %bb.2:                                # %for.cond1.preheader.preheader
	move	$a2, $zero
	move	$t2, $zero
	pcalau12i	$a3, %pc_hi20(blocks)
	ld.d	$t7, $a3, %pc_lo12(blocks)
	ori	$a3, $zero, 4
	ori	$a4, $zero, 1
	pcalau12i	$a5, %pc_hi20(block_start)
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(p2)
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(sorted_index)
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(sorted_list)
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(num_blocks)
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(parents)
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t8, $sp, 424
	vldi	$vr0, -960
	ori	$a6, $zero, 8
	ori	$a5, $zero, 1
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	st.d	$t7, $sp, 208                   # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %for.inc654.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(cur_max_level)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
.LBB0_4:                                # %for.inc654
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a2, $s0, 1
	addi.d	$a3, $a3, 4
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 4
	bge	$s0, $a0, .LBB0_90
.LBB0_5:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_59 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #           Child Loop BB0_66 Depth 5
                                        #             Child Loop BB0_67 Depth 6
                                        #               Child Loop BB0_68 Depth 7
                                        #       Child Loop BB0_75 Depth 3
	move	$s0, $a2
	blez	$a1, .LBB0_4
# %bb.6:                                # %for.body3.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(block_start)
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $a2, %pc_lo12(p2)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a2, %pc_lo12(sorted_index)
	move	$t1, $zero
	alsl.d	$a2, $s0, $a0, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a2, $s0, $a7, 2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$t0, $s0, $s3, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(num_blocks)
	addi.d	$s4, $s0, 1
	alsl.d	$a5, $s4, $s3, 2
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	alsl.d	$t3, $s0, $a2, 2
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a2, $s4, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(parents)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a2, $s4, $a7, 2
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $t0, 8
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	nor	$a0, $s0, $zero
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a0, $s0, -1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $s3, $a3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a5, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a0, $a5, -8
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $s3, $a6
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a6, $zero, 52
	ori	$a7, $zero, 76
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	b	.LBB0_9
.LBB0_7:                                # %for.end644
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s5, 0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $t1, 0
	slt	$a2, $a0, $t2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(max_active_block)
	masknez	$a3, $t2, $a2
	maskeqz	$a0, $a0, $a2
	or	$t2, $a0, $a3
	ori	$a4, $zero, 1
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_8:                                # %for.inc651
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$a6, $a6, 192
	addi.d	$a7, $a7, 192
	bge	$t1, $a1, .LBB0_3
.LBB0_9:                                # %for.body3
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_59 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #           Child Loop BB0_66 Depth 5
                                        #             Child Loop BB0_67 Depth 6
                                        #               Child Loop BB0_68 Depth 7
                                        #       Child Loop BB0_75 Depth 3
	alsl.d	$a0, $t1, $t1, 1
	slli.d	$a0, $a0, 6
	ldx.w	$t0, $t7, $a0
	bltz	$t0, .LBB0_8
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_9 Depth=2
	add.d	$s5, $t7, $a0
	ld.wu	$a0, $s5, 4
	bne	$s0, $a0, .LBB0_8
# %bb.11:                               # %if.then
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s5, 8
	bne	$a0, $a4, .LBB0_8
# %bb.12:                               # %if.then12
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %pc_hi20(num_active)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a1, $a0, %pc_lo12(num_active)
	pcalau12i	$a0, %pc_hi20(max_num_blocks)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a5, $a0, %pc_lo12(max_num_blocks)
	addi.w	$a0, $a1, 8
	pcalau12i	$a2, %pc_hi20(my_pe)
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	blt	$a5, $a0, .LBB0_94
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$fp, $a1, 0
	pcalau12i	$a2, %pc_hi20(local_max_b)
	ld.w	$a4, $a2, %pc_lo12(local_max_b)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$a3, $t0
	bge	$a4, $a0, .LBB0_15
# %bb.14:                               # %if.then47
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a0, $a2, %pc_lo12(local_max_b)
	ld.w	$a3, $s5, 0
.LBB0_15:                               # %if.end49
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bge	$a2, $a0, .LBB0_20
# %bb.16:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	.p2align	4, , 16
.LBB0_17:                               # %for.body.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	beq	$a3, $a5, .LBB0_20
# %bb.18:                               # %for.inc.i
                                        #   in Loop: Header=BB0_17 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	bne	$a0, $a2, .LBB0_17
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a2, $a0
.LBB0_20:                               # %for.end.i
                                        #   in Loop: Header=BB0_9 Depth=2
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	bne	$a3, $a0, .LBB0_95
# %bb.21:                               # %for.cond14.preheader.i
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %pc_hi20(npx)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.w	$t6, $a0, %pc_lo12(npx)
	pcalau12i	$a0, %pc_hi20(init_block_x)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.w	$a7, $a0, %pc_lo12(init_block_x)
	pcalau12i	$a0, %pc_hi20(npy)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.w	$s1, $a0, %pc_lo12(npy)
	pcalau12i	$a0, %pc_hi20(init_block_y)
	pcalau12i	$t4, %pc_hi20(num_refine)
	ld.w	$a3, $t4, %pc_lo12(num_refine)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.w	$s2, $a0, %pc_lo12(init_block_y)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s0
	blt	$a3, $s0, .LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.body17.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a0, 0
	addi.d	$a3, $a3, -1
	st.w	$a3, $a0, 0
	ld.w	$a3, $t4, %pc_lo12(num_refine)
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 4
	bge	$a3, $a4, .LBB0_22
.LBB0_23:                               # %for.cond23.preheader.i
                                        #   in Loop: Header=BB0_9 Depth=2
	alsl.d	$a0, $a3, $s3, 2
	ld.w	$a0, $a0, 4
	bge	$a2, $a0, .LBB0_26
# %bb.24:                               # %for.body28.i.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_25:                               # %for.body28.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a0, 0
	st.d	$a3, $a0, -8
	ld.w	$a3, $t4, %pc_lo12(num_refine)
	alsl.d	$a3, $a3, $s3, 2
	ld.w	$a3, $a3, 4
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a2, $a3, .LBB0_25
.LBB0_26:                               # %del_sorted_list.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(num_active)
	addi.d	$a0, $a0, 7
	st.w	$a0, $a2, %pc_lo12(num_active)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $a3, 0
	addi.d	$a0, $a2, 8
	st.w	$a0, $a4, 0
	pcalau12i	$a0, %pc_hi20(max_active_parent)
	ld.w	$a2, $a0, %pc_lo12(max_active_parent)
	blez	$a2, .LBB0_31
# %bb.27:                               # %for.body60.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$t1, $zero
	move	$a3, $a2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_28:                               # %for.body60
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	bltz	$a5, .LBB0_32
# %bb.29:                               # %for.inc
                                        #   in Loop: Header=BB0_28 Depth=3
	addi.w	$t1, $t1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 100
	bnez	$a3, .LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t1, $a2
	b	.LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t1, $zero
.LBB0_32:                               # %for.end
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a3, %pc_hi20(max_num_parents)
	ld.w	$a3, $a3, %pc_lo12(max_num_parents)
	beq	$t1, $a3, .LBB0_96
# %bb.33:                               # %if.end70
                                        #   in Loop: Header=BB0_9 Depth=2
	bne	$t1, $a2, .LBB0_35
# %bb.34:                               # %if.then72
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, %pc_lo12(max_active_parent)
.LBB0_35:                               # %if.end74
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %pc_hi20(num_parents)
	ld.w	$a2, $a0, %pc_lo12(num_parents)
	pcalau12i	$a3, %pc_hi20(num_refined)
	ld.w	$a4, $a3, %pc_lo12(num_refined)
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, %pc_lo12(num_parents)
	addi.d	$a0, $a4, 1
	st.w	$a0, $a3, %pc_lo12(num_refined)
	ld.d	$a0, $s5, 0
	st.d	$zero, $sp, 416                 # 8-byte Folded Spill
	move	$t3, $zero
	ori	$a5, $zero, 100
	mul.d	$a2, $t1, $a5
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	stx.d	$a0, $a6, $a2
	ld.w	$a0, $s5, 20
	ld.w	$a3, $s5, 16
	ld.w	$a4, $s5, 24
	add.d	$a2, $a6, $a2
	st.w	$a0, $a2, 12
	st.w	$a3, $a2, 8
	st.w	$a4, $a2, 16
	mul.d	$a0, $a3, $a5
	add.d	$a0, $a6, $a0
	alsl.d	$a0, $a4, $a0, 2
	nor	$a3, $t1, $zero
	st.w	$a3, $a0, 24
	sub.w	$a0, $t0, $fp
	mul.d	$a3, $t6, $a1
	st.w	$zero, $a2, 20
	ld.w	$a4, $s5, 172
	mul.w	$a3, $a3, $a7
	mul.d	$a1, $s1, $a1
	mul.d	$a1, $a1, $a3
	st.w	$a4, $a2, 88
	ld.w	$a4, $s5, 176
	mul.w	$a1, $a1, $s2
	div.w	$a5, $a0, $a1
	mul.d	$a1, $a5, $a1
	st.w	$a4, $a2, 92
	ld.w	$a4, $s5, 180
	sub.w	$a1, $a0, $a1
	div.w	$a1, $a1, $a3
	mod.w	$a0, $a0, $a3
	st.w	$a4, $a2, 96
	addi.d	$a3, $a2, 24
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 56
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a2, $a5, 1
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 1
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$t1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %for.inc341
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$t3, $sp, 408                   # 8-byte Folded Reload
	addi.d	$t3, $t3, 1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	addi.d	$t8, $sp, 424
	ori	$fp, $zero, 192
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	beq	$t3, $a0, .LBB0_72
.LBB0_37:                               # %for.cond108.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_53 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_59 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #           Child Loop BB0_66 Depth 5
                                        #             Child Loop BB0_67 Depth 6
                                        #               Child Loop BB0_68 Depth 7
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(max_num_blocks)
	bge	$t2, $a1, .LBB0_41
# %bb.38:                               # %for.body110.preheader
                                        #   in Loop: Header=BB0_37 Depth=3
	alsl.d	$a0, $t2, $t2, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $t7, $a0
	sub.d	$a2, $a1, $t2
	.p2align	4, , 16
.LBB0_39:                               # %for.body110
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a0, 0
	bltz	$a3, .LBB0_41
# %bb.40:                               # %for.inc117
                                        #   in Loop: Header=BB0_39 Depth=4
	addi.w	$t2, $t2, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 192
	bnez	$a2, .LBB0_39
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_41:                               # %for.end119
                                        #   in Loop: Header=BB0_37 Depth=3
	beq	$t2, $a1, .LBB0_91
# %bb.42:                               # %if.end123
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(max_active_block)
	blt	$t2, $a0, .LBB0_44
# %bb.43:                               # %if.then126
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a0, $t2, 1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(max_active_block)
.LBB0_44:                               # %if.end128
                                        #   in Loop: Header=BB0_37 Depth=3
	slli.d	$a5, $t3, 2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	stx.w	$t2, $a0, $a5
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a2, %pc_lo12(my_pe)
	alsl.d	$a1, $t2, $t2, 1
	slli.d	$a4, $a1, 6
	add.d	$a1, $t7, $a4
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	stx.w	$a0, $a3, $a5
	st.w	$zero, $a1, 8
	st.w	$s4, $a1, 4
	st.w	$t1, $a1, 16
	ld.w	$a0, $a2, %pc_lo12(my_pe)
	st.w	$a0, $a1, 20
	st.w	$t3, $a1, 24
	bstrpick.d	$t6, $t3, 1, 1
	bstrpick.d	$a2, $t3, 31, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(npy)
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a6, $a6, %pc_lo12(init_block_y)
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	add.d	$a7, $a2, $a7
	mul.d	$a7, $a0, $a7
	mul.d	$a3, $a7, $a3
	mul.d	$a3, $a3, $a6
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.w	$a6, $a6, %pc_lo12(npx)
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a7, $a7, %pc_lo12(init_block_x)
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	or	$t0, $t6, $t0
	add.d	$a3, $t0, $a3
	mul.d	$a0, $a6, $a0
	mul.d	$a0, $a0, $a7
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a6, $a6, 0
	andi	$a7, $t3, 1
	mul.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	or	$a3, $a7, $a3
	add.d	$a3, $a3, $a6
	add.w	$a3, $a3, $a0
	stx.w	$a3, $t7, $a4
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a4, $a0, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	stx.w	$t2, $a5, $t8
	bge	$a4, $a0, .LBB0_49
# %bb.45:                               # %for.body.lr.ph.i287
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	.p2align	4, , 16
.LBB0_46:                               # %for.body.i288
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	blt	$a6, $a3, .LBB0_49
# %bb.47:                               # %for.inc.i292
                                        #   in Loop: Header=BB0_46 Depth=4
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	bne	$a0, $a4, .LBB0_46
# %bb.48:                               #   in Loop: Header=BB0_37 Depth=3
	move	$a4, $a0
.LBB0_49:                               # %for.end.i284
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.w	$a0, $t4, %pc_lo12(num_refine)
	alsl.d	$a0, $a0, $s3, 2
	ld.w	$t0, $a0, 4
	st.d	$t3, $sp, 408                   # 8-byte Folded Spill
	bge	$a4, $t0, .LBB0_57
# %bb.50:                               # %for.body12.lr.ph.i
                                        #   in Loop: Header=BB0_37 Depth=3
	sub.d	$a5, $t0, $a4
	ori	$a0, $zero, 2
	bgeu	$a5, $a0, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $t0
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_52:                               # %vector.ph
                                        #   in Loop: Header=BB0_37 Depth=3
	move	$a6, $a5
	bstrins.d	$a6, $zero, 0, 0
	sub.d	$a0, $t0, $a6
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t0, $t0, $t1, 3
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_53:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr1, $t0, -8
	vst	$vr1, $t0, 0
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_53
# %bb.54:                               # %middle.block
                                        #   in Loop: Header=BB0_37 Depth=3
	beq	$a5, $a6, .LBB0_57
.LBB0_55:                               # %for.body12.i.preheader
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a5, 3
	.p2align	4, , 16
.LBB0_56:                               # %for.body12.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a5, -8
	addi.d	$a0, $a0, -1
	addi.d	$t0, $a5, -8
	st.d	$a6, $a5, 0
	move	$a5, $t0
	blt	$a4, $a0, .LBB0_56
.LBB0_57:                               # %for.end27.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a5, 3
	slli.d	$a4, $a4, 3
	stx.w	$a3, $a5, $a4
	st.w	$t2, $a0, 4
	ld.w	$a0, $t4, %pc_lo12(num_refine)
	bge	$s0, $a0, .LBB0_60
# %bb.58:                               # %for.body38.i.preheader
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_59:                               # %for.body38.i
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $a3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 0
	ld.w	$a0, $t4, %pc_lo12(num_refine)
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	bge	$a0, $a4, .LBB0_59
.LBB0_60:                               # %add_sorted_list.exit
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a0, $a5, $a0
	ld.w	$a3, $s5, 172
	slli.d	$a4, $a7, 1
	addi.d	$a4, $a4, -1
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a3
	st.w	$a0, $a1, 172
	ld.w	$a0, $t4, %pc_lo12(num_refine)
	add.w	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a5, $a0
	ld.w	$a3, $s5, 176
	slli.d	$a4, $t6, 1
	addi.d	$a4, $a4, -1
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a3
	st.w	$a0, $a1, 176
	ld.w	$a0, $t4, %pc_lo12(num_refine)
	add.w	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a5, $a0
	ld.w	$a3, $s5, 180
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, -1
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	st.w	$a0, $a1, 180
	pcalau12i	$a0, %pc_hi20(num_vars)
	ld.w	$a2, $a0, %pc_lo12(num_vars)
	blez	$a2, .LBB0_36
# %bb.61:                               # %for.cond221.preheader.lr.ph
                                        #   in Loop: Header=BB0_37 Depth=3
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a0, $a0, %pc_lo12(x_block_half)
	blez	$a0, .LBB0_36
# %bb.62:                               # %for.cond221.preheader.lr.ph
                                        #   in Loop: Header=BB0_37 Depth=3
	pcalau12i	$a3, %pc_hi20(y_block_half)
	ld.w	$a4, $a3, %pc_lo12(y_block_half)
	blez	$a4, .LBB0_36
# %bb.63:                               # %for.cond221.preheader.lr.ph
                                        #   in Loop: Header=BB0_37 Depth=3
	pcalau12i	$a3, %pc_hi20(z_block_half)
	ld.w	$a6, $a3, %pc_lo12(z_block_half)
	blez	$a6, .LBB0_36
# %bb.64:                               # %for.cond221.preheader.lr.ph.split.split.split
                                        #   in Loop: Header=BB0_37 Depth=3
	move	$a3, $zero
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	bstrpick.d	$t0, $a5, 31, 2
	mul.w	$a7, $a0, $a7
	mul.w	$t6, $a4, $t6
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 184
	ld.d	$a1, $a1, 184
	mul.d	$t0, $a6, $t0
	addi.d	$t1, $a6, 1
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a6, $a0, 31, 0
	bstrpick.d	$t3, $a4, 31, 0
	bstrpick.d	$a0, $t1, 31, 0
	addi.d	$s8, $a0, -1
	bstrpick.d	$a0, $t0, 31, 0
	slli.d	$a4, $a0, 3
	.p2align	4, , 16
.LBB0_65:                               # %for.cond221.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_66 Depth 5
                                        #             Child Loop BB0_67 Depth 6
                                        #               Child Loop BB0_68 Depth 7
	slli.d	$a0, $a3, 3
	ldx.d	$t0, $a5, $a0
	ldx.d	$fp, $a1, $a0
	alsl.d	$s1, $a7, $t0, 3
	ori	$s2, $zero, 1
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB0_66:                               # %for.cond224.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        #         Parent Loop BB0_65 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_67 Depth 6
                                        #               Child Loop BB0_68 Depth 7
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s1, $a0
	alsl.d	$t0, $s2, $fp, 3
	slli.d	$t1, $s2, 3
	ld.d	$t0, $t0, 8
	ldx.d	$ra, $fp, $t1
	alsl.d	$s0, $t6, $a0, 3
	ori	$a0, $zero, 1
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_67:                               # %for.cond227.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        #         Parent Loop BB0_65 Depth=4
                                        #           Parent Loop BB0_66 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB0_68 Depth 7
	slli.d	$t1, $s7, 3
	ldx.d	$t1, $s0, $t1
	slli.d	$t5, $a0, 3
	addi.d	$t7, $t5, 8
	ldx.d	$s3, $t0, $t7
	ldx.d	$t7, $ra, $t7
	ldx.d	$s6, $t0, $t5
	ldx.d	$t8, $ra, $t5
	add.d	$t1, $t1, $a4
	addi.d	$s5, $t1, 8
	addi.d	$t5, $t7, 16
	addi.d	$s3, $s3, 16
	addi.d	$t7, $t8, 16
	addi.d	$t1, $s6, 16
	move	$s6, $s8
	.p2align	4, , 16
.LBB0_68:                               # %for.body229
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        #         Parent Loop BB0_65 Depth=4
                                        #           Parent Loop BB0_66 Depth=5
                                        #             Parent Loop BB0_67 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fld.d	$fa1, $s5, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s3, 0
	fst.d	$fa1, $t5, 0
	fst.d	$fa1, $t1, 0
	fst.d	$fa1, $t7, 0
	fst.d	$fa1, $s3, -8
	fst.d	$fa1, $t5, -8
	fst.d	$fa1, $t1, -8
	fst.d	$fa1, $t7, -8
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	addi.d	$t5, $t5, 16
	addi.d	$s3, $s3, 16
	addi.d	$t7, $t7, 16
	addi.d	$t1, $t1, 16
	bnez	$s6, .LBB0_68
# %bb.69:                               # %for.cond227.for.inc330_crit_edge
                                        #   in Loop: Header=BB0_67 Depth=6
	addi.d	$s7, $s7, 1
	addi.d	$a0, $a0, 2
	bne	$s7, $t3, .LBB0_67
# %bb.70:                               # %for.cond224.for.inc334_crit_edge.split
                                        #   in Loop: Header=BB0_66 Depth=5
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 2
	bne	$s4, $a6, .LBB0_66
# %bb.71:                               # %for.cond221.for.inc338_crit_edge.split.split
                                        #   in Loop: Header=BB0_65 Depth=4
	addi.d	$a3, $a3, 1
	bne	$a3, $a2, .LBB0_65
	b	.LBB0_36
.LBB0_72:                               # %for.cond344.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a1, $zero
	move	$a7, $zero
	move	$a3, $zero
	ori	$t0, $zero, 52
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_73:                               # %for.cond405.preheader
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$a4, $a4, $fp
	add.d	$a4, $t7, $a4
	lu32i.d	$a0, 0
	stx.w	$a0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$zero, $a4, 76
	mul.d	$a4, $t6, $fp
	add.d	$a4, $t7, $a4
	stx.w	$a0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$zero, $a4, 76
	mul.d	$a4, $a5, $fp
	add.d	$a4, $t7, $a4
	stx.w	$a0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$zero, $a4, 76
	mul.d	$a2, $a2, $fp
	add.d	$a2, $t7, $a2
	stx.w	$a0, $a2, $t0
	add.d	$a0, $a2, $a1
	st.w	$zero, $a0, 76
.LBB0_74:                               # %for.inc642
                                        #   in Loop: Header=BB0_75 Depth=3
	addi.d	$a3, $a3, 1
	addi.w	$a7, $a7, 1
	addi.d	$t4, $t4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, 16
	ori	$a0, $zero, 76
	beq	$t0, $a0, .LBB0_7
.LBB0_75:                               # %for.cond347.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a0, %pc_hi20(consolidate_blocks.side)
	addi.d	$a0, $a0, %pc_lo12(consolidate_blocks.side)
	add.d	$a2, $a0, $a1
	pcalau12i	$a4, %pc_hi20(split_blocks.off)
	addi.d	$a4, $a4, %pc_lo12(split_blocks.off)
	add.d	$a4, $a4, $t0
	ld.w	$a6, $a4, -52
	ldx.w	$a0, $a0, $a1
	add.w	$a4, $a6, $a0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $t8
	mul.d	$a5, $a4, $fp
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a0, $t8
	add.d	$a0, $t7, $a5
	stx.w	$s4, $a0, $t0
	add.d	$a0, $a0, $a1
	st.w	$a4, $a0, 76
	ld.w	$a0, $a2, 4
	add.w	$a5, $a6, $a0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $t8
	mul.d	$a5, $a5, $fp
	slli.d	$a0, $a0, 2
	ldx.w	$t6, $a0, $t8
	add.d	$a0, $t7, $a5
	stx.w	$s4, $a0, $t0
	add.d	$a0, $a0, $a1
	st.w	$t6, $a0, 76
	ld.w	$a0, $a2, 8
	add.w	$a5, $a6, $a0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $t8
	mul.d	$t1, $a5, $fp
	slli.d	$a0, $a0, 2
	ldx.w	$a5, $a0, $t8
	add.d	$a0, $t7, $t1
	stx.w	$s4, $a0, $t0
	add.d	$a0, $a0, $a1
	st.w	$a5, $a0, 76
	ld.w	$a0, $a2, 12
	add.w	$a2, $a6, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $t8
	mul.d	$a6, $a2, $fp
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a0, $t8
	add.d	$a0, $t7, $a6
	stx.w	$s4, $a0, $t0
	add.d	$a0, $a0, $a1
	st.w	$a2, $a0, 76
	ldx.wu	$t1, $t7, $t4
	addi.w	$a6, $t1, 0
	addi.w	$a0, $zero, -2
	beq	$a6, $a0, .LBB0_73
# %bb.76:                               # %if.else
                                        #   in Loop: Header=BB0_75 Depth=3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$a6, $a0, .LBB0_78
# %bb.77:                               # %if.then450
                                        #   in Loop: Header=BB0_75 Depth=3
	ldx.w	$a5, $t7, $t3
	bltz	$a5, .LBB0_74
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_78:                               # %if.else466
                                        #   in Loop: Header=BB0_75 Depth=3
	bne	$s0, $t1, .LBB0_81
# %bb.79:                               # %if.then471
                                        #   in Loop: Header=BB0_75 Depth=3
	ldx.w	$a0, $t7, $t3
	bltz	$a0, .LBB0_74
# %bb.80:                               # %if.then478
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$a6, $a0, $fp
	add.d	$a6, $t7, $a6
	xori	$t1, $a3, 1
	alsl.d	$t5, $t1, $a6, 2
	st.w	$s4, $t5, 52
	alsl.d	$a6, $t1, $a6, 4
	mul.d	$t1, $a4, $fp
	add.d	$t1, $t7, $t1
	stx.w	$s0, $t1, $t0
	add.d	$t1, $t1, $a1
	st.w	$a0, $t1, 76
	st.w	$a4, $a6, 76
	mul.d	$a4, $t6, $fp
	add.d	$a4, $t7, $a4
	stx.w	$s0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$a0, $a4, 76
	st.w	$t6, $a6, 80
	mul.d	$a4, $a5, $fp
	add.d	$a4, $t7, $a4
	stx.w	$s0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$a0, $a4, 76
	st.w	$a5, $a6, 84
	mul.d	$a4, $a2, $fp
	add.d	$a4, $t7, $a4
	stx.w	$s0, $a4, $t0
	add.d	$a4, $a4, $a1
	st.w	$a0, $a4, 76
	st.w	$a2, $a6, 88
	b	.LBB0_74
.LBB0_81:                               # %if.else543
                                        #   in Loop: Header=BB0_75 Depth=3
	bne	$s4, $t1, .LBB0_93
# %bb.82:                               # %if.then549
                                        #   in Loop: Header=BB0_75 Depth=3
	ldx.w	$a6, $t7, $t3
	xori	$a0, $a3, 1
	bltz	$a6, .LBB0_84
# %bb.83:                               # %if.then576
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$t1, $a4, $fp
	add.d	$t1, $t7, $t1
	stx.w	$s4, $t1, $t0
	add.d	$t1, $t1, $a1
	st.w	$a6, $t1, 76
	mul.d	$a6, $a6, $fp
	add.d	$a6, $t7, $a6
	alsl.d	$t1, $a0, $a6, 2
	st.w	$s4, $t1, 52
	alsl.d	$a6, $a0, $a6, 4
	st.w	$a4, $a6, 76
.LBB0_84:                               # %for.inc625
                                        #   in Loop: Header=BB0_75 Depth=3
	add.d	$a4, $t7, $t3
	ld.w	$a6, $a4, 4
	bltz	$a6, .LBB0_86
# %bb.85:                               # %if.then576.1
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$t1, $t6, $fp
	add.d	$t1, $t7, $t1
	stx.w	$s4, $t1, $t0
	add.d	$t1, $t1, $a1
	st.w	$a6, $t1, 76
	mul.d	$a6, $a6, $fp
	add.d	$a6, $t7, $a6
	alsl.d	$t1, $a0, $a6, 2
	st.w	$s4, $t1, 52
	alsl.d	$a6, $a0, $a6, 4
	st.w	$t6, $a6, 76
.LBB0_86:                               # %for.inc625.1
                                        #   in Loop: Header=BB0_75 Depth=3
	ld.w	$a6, $a4, 8
	bltz	$a6, .LBB0_88
# %bb.87:                               # %if.then576.1525
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$t1, $a5, $fp
	add.d	$t1, $t7, $t1
	stx.w	$s4, $t1, $t0
	add.d	$t1, $t1, $a1
	st.w	$a6, $t1, 76
	mul.d	$a6, $a6, $fp
	add.d	$a6, $t7, $a6
	alsl.d	$t1, $a0, $a6, 2
	st.w	$s4, $t1, 52
	alsl.d	$a6, $a0, $a6, 4
	st.w	$a5, $a6, 76
.LBB0_88:                               # %for.inc625.1526
                                        #   in Loop: Header=BB0_75 Depth=3
	ld.w	$a4, $a4, 12
	bltz	$a4, .LBB0_74
# %bb.89:                               # %if.then576.1.1
                                        #   in Loop: Header=BB0_75 Depth=3
	mul.d	$a5, $a2, $fp
	add.d	$a5, $t7, $a5
	stx.w	$s4, $a5, $t0
	add.d	$a5, $a5, $a1
	st.w	$a4, $a5, 76
	mul.d	$a4, $a4, $fp
	add.d	$a4, $t7, $a4
	alsl.d	$a5, $a0, $a4, 2
	st.w	$s4, $a5, 52
	alsl.d	$a0, $a0, $a4, 4
	st.w	$a2, $a0, 76
	b	.LBB0_74
.LBB0_90:                               # %for.end656
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB0_91:                               # %if.then121
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(num_active)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a3, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_92:                               # %if.then457
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	ld.w	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $a7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_93:                               # %if.else632
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	ld.w	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $a7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_94:                               # %if.then44
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a3, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a2, $a5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_95:                               # %if.then11.i
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a2, $a3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_96:                               # %if.then68
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	split_blocks, .Lfunc_end0-split_blocks
                                        # -- End function
	.globl	del_sorted_list                 # -- Begin function del_sorted_list
	.p2align	5
	.type	del_sorted_list,@function
del_sorted_list:                        # @del_sorted_list
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(sorted_index)
	ld.d	$a3, $a2, %pc_lo12(sorted_index)
	alsl.d	$a6, $a1, $a3, 2
	slli.d	$a2, $a1, 2
	ldx.w	$a4, $a3, $a2
	ld.w	$a7, $a6, 4
	pcalau12i	$a2, %pc_hi20(sorted_list)
	ld.d	$a5, $a2, %pc_lo12(sorted_list)
	move	$a2, $a0
	bge	$a4, $a7, .LBB1_5
# %bb.1:                                # %for.body.lr.ph
	alsl.d	$a0, $a4, $a5, 3
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	beq	$a2, $t0, .LBB1_5
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a4, $a4, 1
	addi.d	$a0, $a0, 8
	bne	$a7, $a4, .LBB1_2
# %bb.4:
	move	$a4, $a7
.LBB1_5:                                # %for.end
	slli.d	$a0, $a4, 3
	ldx.w	$a0, $a5, $a0
	bne	$a2, $a0, .LBB1_13
# %bb.6:                                # %for.cond14.preheader
	pcalau12i	$a0, %pc_hi20(num_refine)
	ld.w	$a7, $a0, %pc_lo12(num_refine)
	blt	$a7, $a1, .LBB1_9
# %bb.7:                                # %for.body17.preheader
	addi.d	$a2, $a6, 4
	.p2align	4, , 16
.LBB1_8:                                # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	addi.d	$a6, $a6, -1
	st.w	$a6, $a2, 0
	ld.w	$a7, $a0, %pc_lo12(num_refine)
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bge	$a7, $a1, .LBB1_8
.LBB1_9:                                # %for.cond23.preheader
	alsl.d	$a1, $a7, $a3, 2
	ld.w	$a1, $a1, 4
	bge	$a4, $a1, .LBB1_12
# %bb.10:                               # %for.body28.preheader
	alsl.d	$a1, $a4, $a5, 3
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB1_11:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a1, -8
	ld.w	$a2, $a0, %pc_lo12(num_refine)
	alsl.d	$a2, $a2, $a3, 2
	ld.w	$a2, $a2, 4
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 8
	blt	$a4, $a2, .LBB1_11
.LBB1_12:                               # %for.end44
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_13:                               # %if.then11
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	del_sorted_list, .Lfunc_end1-del_sorted_list
                                        # -- End function
	.globl	add_sorted_list                 # -- Begin function add_sorted_list
	.p2align	5
	.type	add_sorted_list,@function
add_sorted_list:                        # @add_sorted_list
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(sorted_index)
	ld.d	$a7, $a3, %pc_lo12(sorted_index)
	alsl.d	$a3, $a2, $a7, 2
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a7, $a4
	ld.w	$a6, $a3, 4
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a5, $a5, %pc_lo12(sorted_list)
	bge	$a4, $a6, .LBB2_5
# %bb.1:                                # %for.body.lr.ph
	alsl.d	$t0, $a4, $a5, 3
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	blt	$t1, $a1, .LBB2_5
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a4, $a4, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a4, .LBB2_2
# %bb.4:
	move	$a4, $a6
.LBB2_5:                                # %for.end
	pcalau12i	$a6, %pc_hi20(num_refine)
	ld.w	$t0, $a6, %pc_lo12(num_refine)
	alsl.d	$a7, $t0, $a7, 2
	ld.w	$t2, $a7, 4
	bge	$a4, $t2, .LBB2_13
# %bb.6:                                # %for.body12.lr.ph
	sub.d	$t0, $t2, $a4
	ori	$a7, $zero, 2
	bgeu	$t0, $a7, .LBB2_8
# %bb.7:
	move	$a7, $t2
	b	.LBB2_11
.LBB2_8:                                # %vector.ph
	move	$t1, $t0
	bstrins.d	$t1, $zero, 0, 0
	sub.d	$a7, $t2, $t1
	alsl.d	$t2, $t2, $a5, 3
	addi.d	$t2, $t2, -8
	move	$t3, $t1
	.p2align	4, , 16
.LBB2_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t2, -8
	vst	$vr0, $t2, 0
	addi.d	$t3, $t3, -2
	addi.d	$t2, $t2, -16
	bnez	$t3, .LBB2_9
# %bb.10:                               # %middle.block
	beq	$t0, $t1, .LBB2_13
.LBB2_11:                               # %for.body12.preheader
	alsl.d	$t0, $a7, $a5, 3
	.p2align	4, , 16
.LBB2_12:                               # %for.body12
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $t0, -8
	addi.d	$a7, $a7, -1
	addi.d	$t2, $t0, -8
	st.d	$t1, $t0, 0
	move	$t0, $t2
	blt	$a4, $a7, .LBB2_12
.LBB2_13:                               # %for.end27
	alsl.d	$a7, $a4, $a5, 3
	slli.d	$a4, $a4, 3
	stx.w	$a1, $a5, $a4
	st.w	$a0, $a7, 4
	ld.w	$a0, $a6, %pc_lo12(num_refine)
	blt	$a0, $a2, .LBB2_16
# %bb.14:                               # %for.body38.preheader
	addi.d	$a0, $a3, 4
	.p2align	4, , 16
.LBB2_15:                               # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	ld.w	$a1, $a6, %pc_lo12(num_refine)
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	bge	$a1, $a2, .LBB2_15
.LBB2_16:                               # %for.end44
	ret
.Lfunc_end2:
	.size	add_sorted_list, .Lfunc_end2-add_sorted_list
                                        # -- End function
	.globl	consolidate_blocks              # -- Begin function consolidate_blocks
	.p2align	5
	.type	consolidate_blocks,@function
consolidate_blocks:                     # @consolidate_blocks
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
	pcalau12i	$a0, %pc_hi20(cur_max_level)
	ld.w	$a1, $a0, %pc_lo12(cur_max_level)
	bltz	$a1, .LBB3_82
# %bb.1:                                # %for.cond2.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(max_active_parent)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(max_active_parent)
	blez	$a0, .LBB3_82
# %bb.2:                                # %for.cond2.preheader.preheader
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a2, %pc_hi20(parents)
	ld.d	$a5, $a2, %pc_lo12(parents)
	slli.d	$a2, $a1, 2
	addi.d	$a3, $a2, 4
	addi.d	$a4, $a1, 1
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	pcalau12i	$a4, %pc_hi20(blocks)
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(num_blocks)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(sorted_index)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(sorted_list)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ori	$a7, $zero, 100
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.inc440
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $a6, -1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a3, $a3, -4
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a2, $a2, -1
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -4
	blez	$a6, .LBB3_82
.LBB3_4:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #       Child Loop BB3_30 Depth 3
                                        #       Child Loop BB3_33 Depth 3
                                        #       Child Loop BB3_36 Depth 3
                                        #       Child Loop BB3_39 Depth 3
                                        #         Child Loop BB3_41 Depth 4
                                        #         Child Loop BB3_46 Depth 4
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_55 Depth 4
                                        #           Child Loop BB3_56 Depth 5
                                        #             Child Loop BB3_57 Depth 6
                                        #               Child Loop BB3_58 Depth 7
                                        #       Child Loop BB3_66 Depth 3
	move	$a6, $a1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	blez	$a0, .LBB3_3
# %bb.5:                                # %for.body4.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(num_blocks)
	move	$t0, $zero
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t2, $a4, %pc_lo12(blocks)
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t3, $a4, %pc_lo12(sorted_index)
	alsl.d	$a4, $a6, $a1, 2
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a4, $a6, 1
	alsl.d	$a1, $a4, $a1, 2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $t3, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(sorted_list)
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $t3, 2
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a4, $a6, 2
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $t3, 2
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a4, $a1, -8
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$a3, $t3, $a3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	add.d	$a2, $t3, $a2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	st.d	$t2, $sp, 184                   # 8-byte Folded Spill
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	b	.LBB3_8
.LBB3_6:                                # %for.inc437.loopexit
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(max_active_parent)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ori	$a7, $zero, 100
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_7:                                # %for.inc437
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.d	$t0, $t0, 1
	bge	$t0, $a0, .LBB3_3
.LBB3_8:                                # %for.body4
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #       Child Loop BB3_30 Depth 3
                                        #       Child Loop BB3_33 Depth 3
                                        #       Child Loop BB3_36 Depth 3
                                        #       Child Loop BB3_39 Depth 3
                                        #         Child Loop BB3_41 Depth 4
                                        #         Child Loop BB3_46 Depth 4
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_55 Depth 4
                                        #           Child Loop BB3_56 Depth 5
                                        #             Child Loop BB3_57 Depth 6
                                        #               Child Loop BB3_58 Depth 7
                                        #       Child Loop BB3_66 Depth 3
	mul.d	$a1, $t0, $a7
	ldx.w	$a2, $a5, $a1
	bltz	$a2, .LBB3_7
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_8 Depth=2
	add.d	$a4, $a5, $a1
	ld.wu	$a1, $a4, 4
	bne	$a6, $a1, .LBB3_7
# %bb.10:                               # %land.lhs.true8
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.w	$a1, $a4, 20
	addi.w	$t5, $zero, -1
	bne	$a1, $t5, .LBB3_7
# %bb.11:                               # %for.cond11.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$a0, %pc_hi20(max_num_blocks)
	ld.w	$a0, $a0, %pc_lo12(max_num_blocks)
	blez	$a0, .LBB3_15
# %bb.12:                               # %for.body13.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	move	$t4, $zero
	move	$a1, $a0
	move	$a2, $t2
	.p2align	4, , 16
.LBB3_13:                               # %for.body13
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	bltz	$a3, .LBB3_16
# %bb.14:                               # %for.inc
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$t4, $t4, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 192
	bnez	$a1, .LBB3_13
	b	.LBB3_84
.LBB3_15:                               #   in Loop: Header=BB3_8 Depth=2
	move	$t4, $zero
.LBB3_16:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=2
	beq	$t4, $a0, .LBB3_84
# %bb.17:                               # %if.else22
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$a0, %pc_hi20(max_active_block)
	ld.w	$a1, $a0, %pc_lo12(max_active_block)
	blt	$t4, $a1, .LBB3_19
# %bb.18:                               # %if.then27
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.d	$a1, $t4, 1
	st.w	$a1, $a0, %pc_lo12(max_active_block)
.LBB3_19:                               # %if.end29
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$a0, %pc_hi20(num_active)
	ld.w	$a1, $a0, %pc_lo12(num_active)
	pcalau12i	$a2, %pc_hi20(local_max_b)
	ld.w	$a3, $a2, %pc_lo12(local_max_b)
	blt	$a1, $a3, .LBB3_21
# %bb.20:                               # %if.then32
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.d	$a3, $a1, 1
	st.w	$a3, $a2, %pc_lo12(local_max_b)
.LBB3_21:                               # %if.end34
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$a2, %pc_hi20(num_reformed)
	ld.w	$a3, $a2, %pc_lo12(num_reformed)
	addi.d	$a1, $a1, -7
	st.w	$a1, $a0, %pc_lo12(num_active)
	addi.d	$a0, $a3, 1
	st.w	$a0, $a2, %pc_lo12(num_reformed)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $t1, 0
	bstrpick.d	$a2, $t4, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 0
	addi.d	$a0, $a1, -8
	st.w	$a0, $t1, 0
	ld.d	$a0, $a4, 0
	alsl.d	$a1, $a2, $a2, 1
	slli.d	$t6, $a1, 6
	add.d	$a3, $t2, $t6
	st.d	$a0, $a3, 0
	lu32i.d	$t5, 0
	ld.w	$a0, $a4, 8
	ld.w	$a1, $a4, 12
	ld.w	$a2, $a4, 16
	st.w	$t5, $a4, 0
	st.w	$a0, $a3, 16
	st.w	$a1, $a3, 20
	st.w	$a2, $a3, 24
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a5, $a0
	alsl.d	$a0, $a2, $a0, 2
	st.w	$t4, $a0, 24
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a7, $a3, 0
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB3_26
# %bb.22:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	.p2align	4, , 16
.LBB3_23:                               # %for.body.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	blt	$a3, $a7, .LBB3_26
# %bb.24:                               # %for.inc.i
                                        #   in Loop: Header=BB3_23 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB3_23
# %bb.25:                               #   in Loop: Header=BB3_8 Depth=2
	move	$a1, $a0
.LBB3_26:                               # %for.end.i
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$s6, %pc_hi20(num_refine)
	ld.w	$a0, $s6, %pc_lo12(num_refine)
	alsl.d	$a0, $a0, $t3, 2
	ld.w	$a5, $a0, 4
	bge	$a1, $a5, .LBB3_34
# %bb.27:                               # %for.body12.lr.ph.i
                                        #   in Loop: Header=BB3_8 Depth=2
	sub.d	$a2, $a5, $a1
	ori	$a0, $zero, 2
	bgeu	$a2, $a0, .LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_8 Depth=2
	move	$a0, $a5
	b	.LBB3_32
.LBB3_29:                               # %vector.ph
                                        #   in Loop: Header=BB3_8 Depth=2
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	sub.d	$a0, $a5, $a3
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $t0, 3
	move	$t0, $a3
	.p2align	4, , 16
.LBB3_30:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, -8
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, -2
	addi.d	$a5, $a5, -16
	bnez	$t0, .LBB3_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB3_8 Depth=2
	beq	$a2, $a3, .LBB3_34
.LBB3_32:                               # %for.body12.i.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	.p2align	4, , 16
.LBB3_33:                               # %for.body12.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, -8
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a2, -8
	st.d	$a3, $a2, 0
	move	$a2, $a5
	blt	$a1, $a0, .LBB3_33
.LBB3_34:                               # %for.end27.i
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a2, 3
	slli.d	$a1, $a1, 3
	stx.w	$a7, $a2, $a1
	st.d	$t4, $sp, 160                   # 8-byte Folded Spill
	st.w	$t4, $a0, 4
	ld.w	$a0, $s6, %pc_lo12(num_refine)
	blt	$a0, $a6, .LBB3_37
# %bb.35:                               # %for.body38.i.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $a6
	.p2align	4, , 16
.LBB3_36:                               # %for.body38.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	ld.w	$a2, $s6, %pc_lo12(num_refine)
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bge	$a2, $a1, .LBB3_36
.LBB3_37:                               # %add_sorted_list.exit
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$zero, $a1, 8
	ld.w	$a0, $a4, 88
	st.w	$a0, $a1, 172
	ld.w	$a0, $a4, 92
	st.w	$a0, $a1, 176
	ld.w	$a0, $a4, 96
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	move	$s5, $zero
	st.w	$a0, $a1, 180
	addi.d	$t7, $a4, 24
	st.d	$t6, $sp, 232                   # 8-byte Folded Spill
	st.d	$t5, $sp, 224                   # 8-byte Folded Spill
	st.d	$t7, $sp, 216                   # 8-byte Folded Spill
	b	.LBB3_39
	.p2align	4, , 16
.LBB3_38:                               # %for.inc214
                                        #   in Loop: Header=BB3_39 Depth=3
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB3_62
.LBB3_39:                               # %for.body72
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_41 Depth 4
                                        #         Child Loop BB3_46 Depth 4
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_55 Depth 4
                                        #           Child Loop BB3_56 Depth 5
                                        #             Child Loop BB3_57 Depth 6
                                        #               Child Loop BB3_58 Depth 7
	slli.d	$a0, $s5, 2
	ldx.w	$a0, $t7, $a0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a1, $a0, 6
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a7, $a0, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ldx.w	$a4, $t2, $a1
	bge	$a7, $a0, .LBB3_44
# %bb.40:                               # %for.body.lr.ph.i190
                                        #   in Loop: Header=BB3_39 Depth=3
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a7, $a2, 3
	.p2align	4, , 16
.LBB3_41:                               # %for.body.i191
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a2, 0
	beq	$a4, $a3, .LBB3_44
# %bb.42:                               # %for.inc.i195
                                        #   in Loop: Header=BB3_41 Depth=4
	addi.w	$a7, $a7, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a7, .LBB3_41
# %bb.43:                               #   in Loop: Header=BB3_39 Depth=3
	move	$a7, $a0
.LBB3_44:                               # %for.end.i188
                                        #   in Loop: Header=BB3_39 Depth=3
	slli.d	$a0, $a7, 3
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	bne	$a4, $a0, .LBB3_83
# %bb.45:                               # %for.cond14.preheader.i
                                        #   in Loop: Header=BB3_39 Depth=3
	ld.w	$a3, $s6, %pc_lo12(num_refine)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	bge	$a6, $a3, .LBB3_47
	.p2align	4, , 16
.LBB3_46:                               # %for.body17.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a0, 0
	addi.d	$a3, $a3, -1
	st.w	$a3, $a0, 0
	ld.w	$a3, $s6, %pc_lo12(num_refine)
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	bge	$a3, $a2, .LBB3_46
.LBB3_47:                               # %for.cond23.preheader.i
                                        #   in Loop: Header=BB3_39 Depth=3
	alsl.d	$a0, $a3, $t3, 2
	ld.w	$a0, $a0, 4
	bge	$a7, $a0, .LBB3_50
# %bb.48:                               # %for.body28.i.preheader
                                        #   in Loop: Header=BB3_39 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	.p2align	4, , 16
.LBB3_49:                               # %for.body28.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a0, 0
	st.d	$a2, $a0, -8
	ld.w	$a2, $s6, %pc_lo12(num_refine)
	alsl.d	$a2, $a2, $t3, 2
	ld.w	$a2, $a2, 4
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 8
	blt	$a7, $a2, .LBB3_49
.LBB3_50:                               # %del_sorted_list.exit
                                        #   in Loop: Header=BB3_39 Depth=3
	add.d	$a0, $t2, $a1
	st.w	$t5, $a0, 0
	pcalau12i	$a1, %pc_hi20(num_vars)
	ld.w	$a4, $a1, %pc_lo12(num_vars)
	blez	$a4, .LBB3_38
# %bb.51:                               # %for.cond88.preheader.lr.ph
                                        #   in Loop: Header=BB3_39 Depth=3
	pcalau12i	$a1, %pc_hi20(x_block_half)
	ld.w	$a1, $a1, %pc_lo12(x_block_half)
	blez	$a1, .LBB3_38
# %bb.52:                               # %for.cond88.preheader.lr.ph
                                        #   in Loop: Header=BB3_39 Depth=3
	pcalau12i	$a2, %pc_hi20(y_block_half)
	ld.w	$a2, $a2, %pc_lo12(y_block_half)
	blez	$a2, .LBB3_38
# %bb.53:                               # %for.cond88.preheader.lr.ph
                                        #   in Loop: Header=BB3_39 Depth=3
	pcalau12i	$a3, %pc_hi20(z_block_half)
	ld.w	$a3, $a3, %pc_lo12(z_block_half)
	blez	$a3, .LBB3_38
# %bb.54:                               # %for.cond88.preheader.lr.ph.split.split.split
                                        #   in Loop: Header=BB3_39 Depth=3
	move	$a7, $zero
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 2
	slli.w	$a6, $s5, 30
	srai.d	$a6, $a6, 31
	and	$t1, $a6, $a2
	andi	$a6, $s5, 1
	ld.d	$t6, $a0, 184
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $a0, 184
	mul.d	$a0, $a3, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	maskeqz	$ra, $a1, $a6
	addi.d	$a1, $a1, 1
	bstrpick.d	$s4, $a1, 31, 0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$s3, $a2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$fp, $a0, 3
	.p2align	4, , 16
.LBB3_55:                               # %for.cond88.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_56 Depth 5
                                        #             Child Loop BB3_57 Depth 6
                                        #               Child Loop BB3_58 Depth 7
	slli.d	$a0, $a7, 3
	ldx.d	$a2, $t5, $a0
	ldx.d	$t0, $t6, $a0
	alsl.d	$t7, $ra, $a2, 3
	ori	$t4, $zero, 1
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB3_56:                               # %for.cond91.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        #         Parent Loop BB3_55 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_57 Depth 6
                                        #               Child Loop BB3_58 Depth 7
	alsl.d	$a0, $t4, $t0, 3
	slli.d	$a2, $s8, 3
	ldx.d	$a2, $t7, $a2
	slli.d	$a3, $t4, 3
	ldx.d	$s0, $t0, $a3
	ld.d	$a0, $a0, 8
	alsl.d	$s7, $t1, $a2, 3
	ori	$a5, $zero, 1
	ori	$t3, $zero, 1
	.p2align	4, , 16
.LBB3_57:                               # %for.cond94.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        #         Parent Loop BB3_55 Depth=4
                                        #           Parent Loop BB3_56 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB3_58 Depth 7
	slli.d	$a2, $a5, 3
	ldx.d	$a3, $s0, $a2
	ldx.d	$a6, $a0, $a2
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $s7, $t2
	addi.d	$a2, $a2, 8
	ldx.d	$t8, $s0, $a2
	ldx.d	$s2, $a0, $a2
	add.d	$a2, $t2, $fp
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, 16
	addi.d	$s1, $a3, 16
	addi.d	$a3, $s2, 16
	addi.d	$t2, $t8, 16
	move	$t8, $s3
	.p2align	4, , 16
.LBB3_58:                               # %for.body96
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_39 Depth=3
                                        #         Parent Loop BB3_55 Depth=4
                                        #           Parent Loop BB3_56 Depth=5
                                        #             Parent Loop BB3_57 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fld.d	$fa0, $s1, -8
	fld.d	$fa1, $a6, -8
	fld.d	$fa2, $t2, -8
	fld.d	$fa3, $a3, -8
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa1, $s1, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $t2, 0
	fld.d	$fa4, $a3, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 0
	addi.d	$t8, $t8, -1
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, 16
	addi.d	$s1, $s1, 16
	addi.d	$a3, $a3, 16
	addi.d	$t2, $t2, 16
	bnez	$t8, .LBB3_58
# %bb.59:                               # %for.cond94.for.inc203_crit_edge
                                        #   in Loop: Header=BB3_57 Depth=6
	addi.d	$t3, $t3, 1
	addi.d	$a5, $a5, 2
	bne	$t3, $a1, .LBB3_57
# %bb.60:                               # %for.cond91.for.inc207_crit_edge.split
                                        #   in Loop: Header=BB3_56 Depth=5
	addi.d	$s8, $s8, 1
	addi.d	$t4, $t4, 2
	bne	$s8, $s4, .LBB3_56
# %bb.61:                               # %for.cond88.for.inc211_crit_edge.split.split
                                        #   in Loop: Header=BB3_55 Depth=4
	addi.d	$a7, $a7, 1
	bne	$a7, $a4, .LBB3_55
	b	.LBB3_38
.LBB3_62:                               # %for.cond217.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	move	$a0, $zero
	move	$a5, $zero
	move	$s3, $zero
	ori	$s5, $zero, 52
	move	$s6, $t6
	b	.LBB3_66
	.p2align	4, , 16
.LBB3_63:                               # %if.then232
                                        #   in Loop: Header=BB3_66 Depth=3
	add.d	$a1, $t2, $t6
	st.w	$a7, $a1, 52
.LBB3_64:                               # %for.inc433
                                        #   in Loop: Header=BB3_66 Depth=3
	st.w	$zero, $a1, 28
.LBB3_65:                               # %for.inc433
                                        #   in Loop: Header=BB3_66 Depth=3
	addi.d	$s3, $s3, 1
	addi.w	$a5, $a5, 1
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 16
	addi.d	$t6, $t6, 4
	ori	$a1, $zero, 96
	beq	$a0, $a1, .LBB3_6
.LBB3_66:                               # %for.body219
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a1, %pc_hi20(consolidate_blocks.side)
	addi.d	$a1, $a1, %pc_lo12(consolidate_blocks.side)
	ldx.w	$a2, $a1, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $t7, $a2
	alsl.d	$a2, $a4, $a4, 1
	slli.d	$a2, $a2, 6
	add.d	$a2, $t2, $a2
	ldx.wu	$a3, $a2, $s5
	addi.w	$a7, $zero, -2
	lu32i.d	$a7, 0
	beq	$a3, $a7, .LBB3_63
# %bb.67:                               # %if.else238
                                        #   in Loop: Header=BB3_66 Depth=3
	bne	$a6, $a3, .LBB3_70
# %bb.68:                               # %if.then245
                                        #   in Loop: Header=BB3_66 Depth=3
	add.d	$a1, $a2, $a0
	ld.w	$a2, $a1, 76
	bltz	$a2, .LBB3_65
# %bb.69:                               # %if.then253
                                        #   in Loop: Header=BB3_66 Depth=3
	add.d	$a3, $t2, $s6
	st.w	$a2, $a3, 76
	add.d	$a2, $t2, $t6
	st.w	$a6, $a2, 52
	st.w	$zero, $a2, 28
	ld.w	$a2, $a1, 76
	ori	$a4, $zero, 192
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t2, $a2
	xori	$a3, $s3, 1
	alsl.d	$a2, $a3, $a2, 4
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	st.w	$a7, $a2, 76
	ld.w	$a2, $a1, 76
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a3, $a2, 2
	st.w	$a6, $a2, 52
	ld.w	$a1, $a1, 76
	mul.d	$a1, $a1, $a4
	add.d	$a1, $t2, $a1
	alsl.d	$a1, $a3, $a1, 2
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_70:                               # %if.else316
                                        #   in Loop: Header=BB3_66 Depth=3
	add.d	$a2, $a2, $a0
	ld.w	$t0, $a2, 76
	add.d	$t5, $t2, $s6
	add.d	$t1, $t2, $t6
	xori	$a7, $s3, 1
	bltz	$t0, .LBB3_73
# %bb.71:                               # %if.then348
                                        #   in Loop: Header=BB3_66 Depth=3
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	beq	$t4, $a3, .LBB3_85
# %bb.72:                               # %if.end358
                                        #   in Loop: Header=BB3_66 Depth=3
	st.w	$t0, $t5, 76
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	st.w	$a3, $t1, 52
	st.w	$zero, $t1, 28
	ld.w	$a3, $a2, 76
	ori	$a4, $zero, 192
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 4
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	st.w	$t0, $a3, 76
	ld.w	$a3, $a2, 76
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 2
	st.w	$a6, $a3, 52
	ld.w	$a2, $a2, 76
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 2
	st.w	$zero, $a2, 28
.LBB3_73:                               # %for.inc424
                                        #   in Loop: Header=BB3_66 Depth=3
	add.d	$a1, $a1, $a0
	ld.w	$a2, $a1, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $t7, $a2
	alsl.d	$a2, $a4, $a4, 1
	slli.d	$a2, $a2, 6
	add.d	$t0, $t2, $a2
	add.d	$a2, $t0, $a0
	ld.w	$a3, $a2, 76
	bltz	$a3, .LBB3_76
# %bb.74:                               # %if.then348.1
                                        #   in Loop: Header=BB3_66 Depth=3
	ldx.wu	$t0, $t0, $s5
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	beq	$t4, $t0, .LBB3_85
# %bb.75:                               # %if.end358.1
                                        #   in Loop: Header=BB3_66 Depth=3
	st.w	$a3, $t5, 80
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	st.w	$a3, $t1, 52
	st.w	$zero, $t1, 28
	ld.w	$a3, $a2, 76
	ori	$a4, $zero, 192
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 4
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	st.w	$t0, $a3, 76
	ld.w	$a3, $a2, 76
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 2
	st.w	$a6, $a3, 52
	ld.w	$a2, $a2, 76
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 2
	st.w	$zero, $a2, 28
.LBB3_76:                               # %for.inc424.1
                                        #   in Loop: Header=BB3_66 Depth=3
	ld.w	$a2, $a1, 8
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $t7, $a2
	alsl.d	$a2, $a4, $a4, 1
	slli.d	$a2, $a2, 6
	add.d	$t0, $t2, $a2
	add.d	$a2, $t0, $a0
	ld.w	$a3, $a2, 76
	bltz	$a3, .LBB3_79
# %bb.77:                               # %if.then348.1319
                                        #   in Loop: Header=BB3_66 Depth=3
	ldx.wu	$t0, $t0, $s5
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	beq	$t4, $t0, .LBB3_85
# %bb.78:                               # %if.end358.1332
                                        #   in Loop: Header=BB3_66 Depth=3
	st.w	$a3, $t5, 84
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	st.w	$a3, $t1, 52
	st.w	$zero, $t1, 28
	ld.w	$a3, $a2, 76
	ori	$a4, $zero, 192
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 4
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	st.w	$t0, $a3, 76
	ld.w	$a3, $a2, 76
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t2, $a3
	alsl.d	$a3, $a7, $a3, 2
	st.w	$a6, $a3, 52
	ld.w	$a2, $a2, 76
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 2
	st.w	$zero, $a2, 28
.LBB3_79:                               # %for.inc424.1333
                                        #   in Loop: Header=BB3_66 Depth=3
	ld.w	$a1, $a1, 12
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $t7, $a1
	alsl.d	$a1, $a4, $a4, 1
	slli.d	$a1, $a1, 6
	add.d	$a3, $t2, $a1
	add.d	$a1, $a3, $a0
	ld.w	$a2, $a1, 76
	bltz	$a2, .LBB3_65
# %bb.80:                               # %if.then348.1.1
                                        #   in Loop: Header=BB3_66 Depth=3
	ldx.wu	$a3, $a3, $s5
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	beq	$t0, $a3, .LBB3_85
# %bb.81:                               # %if.end358.1.1
                                        #   in Loop: Header=BB3_66 Depth=3
	st.w	$a2, $t5, 88
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.w	$a2, $t1, 52
	st.w	$zero, $t1, 28
	ld.w	$a2, $a1, 76
	ori	$a3, $zero, 192
	mul.d	$a2, $a2, $a3
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	st.w	$a4, $a2, 76
	ld.w	$a2, $a1, 76
	mul.d	$a2, $a2, $a3
	add.d	$a2, $t2, $a2
	alsl.d	$a2, $a7, $a2, 2
	st.w	$a6, $a2, 52
	ld.w	$a1, $a1, 76
	mul.d	$a1, $a1, $a3
	add.d	$a1, $t2, $a1
	alsl.d	$a1, $a7, $a1, 2
	b	.LBB3_64
.LBB3_82:                               # %for.end441
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
.LBB3_83:                               # %if.then11.i
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a2, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_84:                               # %if.then21
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_85:                               # %if.then356
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	consolidate_blocks, .Lfunc_end3-consolidate_blocks
                                        # -- End function
	.globl	find_sorted_list                # -- Begin function find_sorted_list
	.p2align	5
	.type	find_sorted_list,@function
find_sorted_list:                       # @find_sorted_list
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(sorted_index)
	ld.d	$a2, $a2, %pc_lo12(sorted_index)
	alsl.d	$a3, $a1, $a2, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	ld.w	$a3, $a3, 4
	move	$a2, $a0
	bge	$a1, $a3, .LBB4_4
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(sorted_list)
	ld.d	$a0, $a0, %pc_lo12(sorted_list)
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a0, $a0, 4
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, -4
	beq	$a2, $a3, .LBB4_5
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB4_2
.LBB4_4:                                # %for.end
	pcalau12i	$a0, %pc_hi20(my_pe)
	ld.w	$a1, $a0, %pc_lo12(my_pe)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %if.then
	ld.w	$a0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	find_sorted_list, .Lfunc_end4-find_sorted_list
                                        # -- End function
	.type	split_blocks.off,@object        # @split_blocks.off
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
split_blocks.off:
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	2                               # 0x2
	.word	4294967294                      # 0xfffffffe
	.word	4                               # 0x4
	.word	4294967292                      # 0xfffffffc
	.size	split_blocks.off, 24

	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: Need more blocks %d %d on %d\n"
	.size	.L.str, 37

	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	num_refined,@object             # @num_refined
	.comm	num_refined,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Error: No inactive blocks available %d %d %d\n"
	.size	.L.str.2, 46

	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d ERROR: internal misconnect block %d num %d c %d %d\n"
	.size	.L.str.3, 55

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d ERROR: misconnected b %d %d l %d nei[%d] %d\n"
	.size	.L.str.4, 48

	.type	consolidate_blocks.side,@object # @consolidate_blocks.side
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
consolidate_blocks.side:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	consolidate_blocks.side, 96

	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Out of free blocks in consolidate_blocks %d\n"
	.size	.L.str.5, 45

	.type	num_reformed,@object            # @num_reformed
	.comm	num_reformed,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d ERROR: %d con %d block %d c %d wrong level %d\n"
	.size	.L.str.6, 50

	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ERROR: del_sorted_list on %d - number %d not found\n"
	.size	.L.str.7, 52

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ERROR: find_sorted_list on %d - number %d not found\n"
	.size	.L.str.8, 53

	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.type	average,@object                 # @average
	.comm	average,1024,8
	.type	stddev,@object                  # @stddev
	.comm	stddev,1024,8
	.type	minimum,@object                 # @minimum
	.comm	minimum,1024,8
	.type	maximum,@object                 # @maximum
	.comm	maximum,1024,8
	.type	timer_all,@object               # @timer_all
	.comm	timer_all,8,8
	.type	timer_comm_all,@object          # @timer_comm_all
	.comm	timer_comm_all,8,8
	.type	timer_comm_dir,@object          # @timer_comm_dir
	.comm	timer_comm_dir,24,8
	.type	timer_comm_same,@object         # @timer_comm_same
	.comm	timer_comm_same,24,8
	.type	timer_comm_diff,@object         # @timer_comm_diff
	.comm	timer_comm_diff,24,8
	.type	timer_comm_bc,@object           # @timer_comm_bc
	.comm	timer_comm_bc,24,8
	.type	timer_calc_all,@object          # @timer_calc_all
	.comm	timer_calc_all,8,8
	.type	timer_cs_all,@object            # @timer_cs_all
	.comm	timer_cs_all,8,8
	.type	timer_cs_calc,@object           # @timer_cs_calc
	.comm	timer_cs_calc,8,8
	.type	timer_refine_all,@object        # @timer_refine_all
	.comm	timer_refine_all,8,8
	.type	timer_refine_co,@object         # @timer_refine_co
	.comm	timer_refine_co,8,8
	.type	timer_refine_mr,@object         # @timer_refine_mr
	.comm	timer_refine_mr,8,8
	.type	timer_refine_sb,@object         # @timer_refine_sb
	.comm	timer_refine_sb,8,8
	.type	timer_refine_cc,@object         # @timer_refine_cc
	.comm	timer_refine_cc,8,8
	.type	timer_cb_all,@object            # @timer_cb_all
	.comm	timer_cb_all,8,8
	.type	timer_target_all,@object        # @timer_target_all
	.comm	timer_target_all,8,8
	.type	timer_target_rb,@object         # @timer_target_rb
	.comm	timer_target_rb,8,8
	.type	timer_target_dc,@object         # @timer_target_dc
	.comm	timer_target_dc,8,8
	.type	timer_target_cb,@object         # @timer_target_cb
	.comm	timer_target_cb,8,8
	.type	timer_target_ab,@object         # @timer_target_ab
	.comm	timer_target_ab,8,8
	.type	timer_target_da,@object         # @timer_target_da
	.comm	timer_target_da,8,8
	.type	timer_target_sb,@object         # @timer_target_sb
	.comm	timer_target_sb,8,8
	.type	timer_plot,@object              # @timer_plot
	.comm	timer_plot,8,8
	.type	total_blocks,@object            # @total_blocks
	.comm	total_blocks,8,8
	.type	nb_min,@object                  # @nb_min
	.comm	nb_min,4,4
	.type	nb_max,@object                  # @nb_max
	.comm	nb_max,4,4
	.type	nrs,@object                     # @nrs
	.comm	nrs,4,4
	.type	nps,@object                     # @nps
	.comm	nps,4,4
	.type	counter_bc,@object              # @counter_bc
	.comm	counter_bc,12,4
	.type	counter_same,@object            # @counter_same
	.comm	counter_same,12,4
	.type	counter_diff,@object            # @counter_diff
	.comm	counter_diff,12,4
	.type	counter_malloc,@object          # @counter_malloc
	.comm	counter_malloc,4,4
	.type	size_malloc,@object             # @size_malloc
	.comm	size_malloc,8,8
	.type	counter_malloc_init,@object     # @counter_malloc_init
	.comm	counter_malloc_init,4,4
	.type	size_malloc_init,@object        # @size_malloc_init
	.comm	size_malloc_init,8,8
	.type	total_red,@object               # @total_red
	.comm	total_red,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"ERROR: Need more parents"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
