	.file	"comm.c"
	.text
	.globl	comm                            # -- Begin function comm
	.p2align	5
	.type	comm,@function
comm:                                   # @comm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	move	$s7, $a1
	move	$s3, $a0
	move	$s0, $zero
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a0, $a0, $a1, 1
	sub.w	$a0, $a2, $a0
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.L__const.comm.permutations)
	addi.d	$a1, $a1, %pc_lo12(.L__const.comm.permutations)
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(permute)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(sorted_index)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(num_refine)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_bc)
	addi.d	$a0, $a0, %pc_lo12(counter_bc)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_bc)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_bc)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_diff)
	addi.d	$a0, $a0, %pc_lo12(counter_diff)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_diff)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_diff)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(counter_same)
	addi.d	$a0, $a0, %pc_lo12(counter_same)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(timer_comm_same)
	addi.d	$a0, $a0, %pc_lo12(timer_comm_same)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(sorted_list)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(blocks)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$s4, $zero, 2
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB0_2:                                # %for.end155
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	slli.d	$a0, $fp, 3
	pcalau12i	$a1, %pc_hi20(timer_comm_dir)
	addi.d	$a1, $a1, %pc_lo12(timer_comm_dir)
	fldx.d	$fa1, $a1, $a0
	fsub.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa1, $fa0
	addi.d	$s0, $s0, 1
	fstx.d	$fa0, $a1, $a0
	ori	$a0, $zero, 3
	beq	$s0, $a0, .LBB0_42
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(permute)
	beqz	$a0, .LBB0_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$fp, $a1, $a0
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	move	$fp, $s0
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_refine)
	alsl.d	$a2, $a1, $a0, 2
	ld.w	$a2, $a2, 4
	fmov.d	$fs0, $fa0
	blez	$a2, .LBB0_41
# %bb.7:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	move	$a5, $zero
	slli.d	$a4, $fp, 1
	addi.w	$a3, $fp, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a2, $a4, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s5, $a3, $a2, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$s8, $a3, $a2, 3
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a2, $a4, 0
	slli.d	$a3, $a2, 2
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %for.inc153.loopexit
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(num_refine)
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
.LBB0_9:                                # %for.inc153
                                        #   in Loop: Header=BB0_10 Depth=2
	alsl.d	$a2, $a1, $a0, 2
	ld.w	$a2, $a2, 4
	addi.d	$a5, $a5, 1
	bge	$a5, $a2, .LBB0_1
.LBB0_10:                               # %for.body7
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(sorted_list)
	alsl.d	$a2, $a5, $a2, 3
	ld.w	$s1, $a2, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(blocks)
	alsl.d	$a3, $s1, $s1, 1
	slli.d	$a3, $a3, 6
	ldx.w	$a4, $a2, $a3
	bltz	$a4, .LBB0_9
# %bb.11:                               # %if.then14
                                        #   in Loop: Header=BB0_10 Depth=2
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $zero
	add.d	$s2, $a2, $a3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	addi.d	$s0, $a0, 52
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a3
	addi.d	$s6, $a0, 76
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               # %if.end34
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s8, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s8, 0
.LBB0_13:                               # %for.inc149
                                        #   in Loop: Header=BB0_14 Depth=3
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	addi.d	$s6, $s6, 16
	beq	$fp, $s4, .LBB0_8
.LBB0_14:                               # %for.body19
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 4
	bne	$a0, $a1, .LBB0_17
# %bb.15:                               # %if.then23
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	fmov.d	$fs1, $fa0
	bge	$s1, $a1, .LBB0_12
# %bb.16:                               # %if.then30
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $fp
	move	$a0, $s1
	move	$a3, $s3
	move	$a4, $s7
	pcaddu18i	$ra, %call36(on_proc_comm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $a1, 0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_17:                               # %if.else39
                                        #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a2, $a1, 1
	bne	$a0, $a2, .LBB0_24
# %bb.18:                               # %if.then46
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	fmov.d	$fs1, $fa0
	blt	$s1, $a1, .LBB0_33
# %bb.19:                               # %for.inc
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s6, 4
	blt	$s1, $a1, .LBB0_34
.LBB0_20:                               # %for.inc.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s6, 8
	blt	$s1, $a1, .LBB0_35
.LBB0_21:                               # %for.inc.1100
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a1, $s6, 12
	bge	$s1, $a1, .LBB0_23
.LBB0_22:                               # %if.then62.1.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $fp
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
.LBB0_23:                               # %for.inc.1.1
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_24:                               # %if.else75
                                        #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a1, $a1, -1
	bne	$a0, $a1, .LBB0_36
# %bb.25:                               # %if.then82
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s6, 0
	fmov.d	$fs1, $fa0
	bge	$s1, $s3, .LBB0_32
# %bb.26:                               # %if.then90
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	bstrpick.d	$a1, $a0, 31, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$s4, $a2, $a1
	alsl.d	$a1, $s3, $s3, 1
	slli.d	$s7, $a1, 6
	add.d	$a1, $a0, $s7
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 76
	beq	$a1, $s1, .LBB0_39
# %bb.27:                               # %for.inc116
                                        #   in Loop: Header=BB0_14 Depth=3
	add.d	$a1, $a0, $s7
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 80
	beq	$a1, $s1, .LBB0_40
.LBB0_28:                               # %for.inc116.1
                                        #   in Loop: Header=BB0_14 Depth=3
	add.d	$a1, $a0, $s7
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 84
	bne	$a1, $s1, .LBB0_30
.LBB0_29:                               # %if.then111.195
                                        #   in Loop: Header=BB0_14 Depth=3
	ori	$a3, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a4, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
.LBB0_30:                               # %for.inc116.196
                                        #   in Loop: Header=BB0_14 Depth=3
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $s4, $a0, 4
	ld.w	$a0, $a0, 88
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_32
# %bb.31:                               # %if.then111.1.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$a6, $s7
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
.LBB0_32:                               # %if.end122
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ori	$s4, $zero, 2
	b	.LBB0_13
.LBB0_33:                               # %if.then62
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $fp
	move	$a0, $s1
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s6, 4
	bge	$s1, $a1, .LBB0_20
.LBB0_34:                               # %if.then62.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $fp
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a3, $zero
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s6, 8
	bge	$s1, $a1, .LBB0_21
.LBB0_35:                               # %if.then62.199
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a2, $a0, $fp
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $s3
	move	$a6, $s7
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.w	$a1, $s6, 12
	blt	$s1, $a1, .LBB0_22
	b	.LBB0_23
.LBB0_36:                               # %if.else128
                                        #   in Loop: Header=BB0_14 Depth=3
	addi.w	$a1, $zero, -2
	bne	$a0, $a1, .LBB0_43
# %bb.37:                               # %if.then133
                                        #   in Loop: Header=BB0_14 Depth=3
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(apply_bc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB0_38:                               # %for.inc149
                                        #   in Loop: Header=BB0_14 Depth=3
	fld.d	$fa1, $a0, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, 0
	b	.LBB0_13
.LBB0_39:                               # %if.then111
                                        #   in Loop: Header=BB0_14 Depth=3
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
	add.d	$a1, $a0, $s7
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 80
	bne	$a1, $s1, .LBB0_28
.LBB0_40:                               # %if.then111.1
                                        #   in Loop: Header=BB0_14 Depth=3
	ori	$a4, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(on_proc_comm_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(blocks)
	addi.d	$a1, $a1, 2
	st.w	$a1, $s5, 0
	add.d	$a1, $a0, $s7
	alsl.d	$a1, $s4, $a1, 4
	ld.w	$a1, $a1, 84
	beq	$a1, $s1, .LBB0_29
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_41:                               # %if.end.for.end155_crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.w	$fp, $fp, 0
	b	.LBB0_2
.LBB0_42:                               # %for.end163
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_43:                               # %if.else143
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	comm, .Lfunc_end0-comm
                                        # -- End function
	.globl	on_proc_comm                    # -- Begin function on_proc_comm
	.p2align	5
	.type	on_proc_comm,@function
on_proc_comm:                           # @on_proc_comm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(code)
	ld.w	$a6, $a5, %pc_lo12(code)
	addi.w	$a5, $a2, 1
	beqz	$a6, .LBB1_21
# %bb.1:                                # %if.else213
	ori	$a6, $zero, 2
	bltu	$a6, $a5, .LBB1_40
# %bb.2:                                # %if.then216
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.3:                                # %for.cond234.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(y_block_size)
	ld.w	$a5, $a5, %pc_lo12(y_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.4:                                # %for.cond234.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.5:                                # %for.cond234.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.w	$a2, $a6, 2
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a7, $a2, 31, 3
	slli.d	$a7, $a7, 3
	pcalau12i	$t0, %pc_hi20(x_block_size)
	ori	$t1, $zero, 12
	ori	$t2, $zero, 64
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %for.cond234.for.inc283_crit_edge.split
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_7:                                # %for.cond234.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_12 Depth 3
	ld.w	$t4, $t0, %pc_lo12(x_block_size)
	slli.d	$t3, $a3, 3
	ldx.d	$t6, $a0, $t3
	ldx.d	$t5, $a1, $t3
	ld.d	$t3, $t6, 8
	alsl.d	$t7, $t4, $t5, 3
	slli.d	$t8, $t4, 3
	ld.d	$t4, $t7, 8
	ldx.d	$t5, $t5, $t8
	ld.d	$t6, $t6, 0
	move	$t7, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                # %for.cond238.for.inc280_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$t7, $t7, 1
	beq	$t7, $a5, .LBB1_6
.LBB1_9:                                # %for.cond238.preheader
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_12 Depth 3
	slli.d	$s1, $t7, 3
	ldx.d	$t8, $t3, $s1
	ldx.d	$fp, $t4, $s1
	ldx.d	$s0, $t5, $s1
	ldx.d	$s1, $t6, $s1
	bgeu	$a2, $t1, .LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	move	$s2, $zero
.LBB1_11:                               # %for.body241.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	alsl.d	$s1, $s2, $s1, 3
	alsl.d	$s0, $s2, $s0, 3
	alsl.d	$fp, $s2, $fp, 3
	alsl.d	$t8, $s2, $t8, 3
	sub.d	$s2, $a6, $s2
	.p2align	4, , 16
.LBB1_12:                               # %for.body241
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t8, 0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 8
	bnez	$s2, .LBB1_12
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_13:                               # %vector.memcheck354
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $fp
	move	$s2, $zero
	bltu	$s3, $t2, .LBB1_11
# %bb.14:                               # %vector.memcheck354
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $fp, $t8
	bltu	$s3, $t2, .LBB1_11
# %bb.15:                               # %vector.memcheck354
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s0, $fp
	bltu	$s3, $t2, .LBB1_11
# %bb.16:                               # %vector.memcheck354
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $t8
	bltu	$s3, $t2, .LBB1_11
# %bb.17:                               # %vector.memcheck354
                                        #   in Loop: Header=BB1_9 Depth=2
	sub.d	$s3, $s1, $s0
	bltu	$s3, $t2, .LBB1_11
# %bb.18:                               # %vector.body369.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.d	$s2, $t8, 32
	addi.d	$s3, $s1, 32
	addi.d	$s4, $fp, 32
	addi.d	$s5, $s0, 32
	move	$s6, $a7
	.p2align	4, , 16
.LBB1_19:                               # %vector.body369
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s5, -32
	xvld	$xr1, $s5, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s6, $s6, -8
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	bnez	$s6, .LBB1_19
# %bb.20:                               # %middle.block376
                                        #   in Loop: Header=BB1_9 Depth=2
	move	$s2, $a7
	beq	$a7, $a6, .LBB1_8
	b	.LBB1_11
.LBB1_21:                               # %if.then
	ori	$a6, $zero, 2
	bltu	$a6, $a5, .LBB1_61
# %bb.22:                               # %if.then1
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.23:                               # %for.cond11.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(y_block_size)
	ld.w	$a7, $a6, %pc_lo12(y_block_size)
	blt	$a7, $a5, .LBB1_99
# %bb.24:                               # %for.cond11.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(z_block_size)
	ld.w	$a5, $a5, %pc_lo12(z_block_size)
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB1_99
# %bb.25:                               # %for.cond11.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$t0, %pc_hi20(blocks)
	ld.d	$t0, $t0, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t1, $zero, 192
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t0, $a1
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t0, $a0
	masknez	$t0, $a0, $a2
	maskeqz	$t1, $a1, $a2
	or	$t0, $t1, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $t0, 184
	addi.d	$t0, $a5, 1
	addi.d	$a2, $a7, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a7, $t0, 31, 0
	bstrpick.d	$t0, $a5, 30, 3
	slli.d	$t0, $t0, 3
	srli.d	$t1, $a5, 3
	bstrins.d	$a6, $t1, 30, 3
	pcalau12i	$t1, %pc_hi20(x_block_size)
	ori	$t2, $zero, 12
	ori	$t3, $zero, 64
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               # %for.cond11.for.inc54_crit_edge.split
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_27:                               # %for.cond11.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
                                        #       Child Loop BB1_38 Depth 3
                                        #       Child Loop BB1_31 Depth 3
	ld.w	$t5, $t1, %pc_lo12(x_block_size)
	slli.d	$t4, $a3, 3
	ldx.d	$t7, $a0, $t4
	ldx.d	$t6, $a1, $t4
	ld.d	$t4, $t7, 8
	alsl.d	$t8, $t5, $t6, 3
	slli.d	$fp, $t5, 3
	ld.d	$t5, $t8, 8
	ldx.d	$t6, $t6, $fp
	ld.d	$t7, $t7, 0
	ori	$t8, $zero, 1
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %for.cond14.for.inc51_crit_edge
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$t8, $t8, 1
	beq	$t8, $a2, .LBB1_26
.LBB1_29:                               # %for.cond14.preheader
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_38 Depth 3
                                        #       Child Loop BB1_31 Depth 3
	slli.d	$s2, $t8, 3
	ldx.d	$fp, $t4, $s2
	ldx.d	$s0, $t5, $s2
	ldx.d	$s1, $t6, $s2
	ldx.d	$s2, $t7, $s2
	ori	$s3, $zero, 1
	bgeu	$a5, $t2, .LBB1_32
.LBB1_30:                               # %for.body16.preheader
                                        #   in Loop: Header=BB1_29 Depth=2
	alsl.d	$s2, $s3, $s2, 3
	alsl.d	$s1, $s3, $s1, 3
	alsl.d	$s0, $s3, $s0, 3
	alsl.d	$fp, $s3, $fp, 3
	sub.d	$s3, $a7, $s3
	.p2align	4, , 16
.LBB1_31:                               # %for.body16
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $fp, 0
	fst.d	$fa0, $s0, 0
	fld.d	$fa0, $s1, 0
	fst.d	$fa0, $s2, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB1_31
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_32:                               # %vector.memcheck404
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $s0
	ori	$s3, $zero, 1
	bltu	$s4, $t3, .LBB1_30
# %bb.33:                               # %vector.memcheck404
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s0, $fp
	ori	$s3, $zero, 1
	bltu	$s4, $t3, .LBB1_30
# %bb.34:                               # %vector.memcheck404
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s1, $s0
	ori	$s3, $zero, 1
	bltu	$s4, $t3, .LBB1_30
# %bb.35:                               # %vector.memcheck404
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $fp
	ori	$s3, $zero, 1
	bltu	$s4, $t3, .LBB1_30
# %bb.36:                               # %vector.memcheck404
                                        #   in Loop: Header=BB1_29 Depth=2
	sub.d	$s4, $s2, $s1
	ori	$s3, $zero, 1
	bltu	$s4, $t3, .LBB1_30
# %bb.37:                               # %vector.body419.preheader
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$s3, $fp, 40
	addi.d	$s4, $s0, 40
	addi.d	$s5, $s2, 40
	addi.d	$s6, $s1, 40
	move	$s7, $t0
	.p2align	4, , 16
.LBB1_38:                               # %vector.body419
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s3, -32
	xvld	$xr1, $s3, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s6, -32
	xvld	$xr1, $s6, 0
	xvst	$xr0, $s5, -32
	xvst	$xr1, $s5, 0
	addi.d	$s3, $s3, 64
	addi.d	$s7, $s7, -8
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	addi.d	$s6, $s6, 64
	bnez	$s7, .LBB1_38
# %bb.39:                               # %middle.block427
                                        #   in Loop: Header=BB1_29 Depth=2
	move	$s3, $a6
	beq	$t0, $a5, .LBB1_28
	b	.LBB1_30
.LBB1_40:                               # %if.else286
	move	$a5, $a2
	bstrins.d	$a5, $zero, 0, 0
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_81
# %bb.41:                               # %if.else286
	ori	$a6, $zero, 2
	bne	$a5, $a6, .LBB1_99
# %bb.42:                               # %if.then289
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.43:                               # %for.cond307.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(x_block_size)
	ld.w	$a5, $a5, %pc_lo12(x_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.44:                               # %for.cond307.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.45:                               # %for.cond307.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.w	$a2, $a6, 2
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a7, $a2, 31, 3
	slli.d	$a7, $a7, 3
	pcalau12i	$t0, %pc_hi20(y_block_size)
	ori	$t1, $zero, 12
	ori	$t2, $zero, 64
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %for.cond307.for.inc356_crit_edge.split
                                        #   in Loop: Header=BB1_47 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_47:                               # %for.cond307.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_49 Depth 2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	ld.w	$t3, $t0, %pc_lo12(y_block_size)
	slli.d	$t5, $a3, 3
	ldx.d	$t4, $a0, $t5
	ldx.d	$t5, $a1, $t5
	move	$t6, $zero
	slli.d	$t7, $t3, 3
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_48:                               # %for.cond311.for.inc353_crit_edge
                                        #   in Loop: Header=BB1_49 Depth=2
	addi.d	$t6, $t6, 1
	beq	$t6, $a5, .LBB1_46
.LBB1_49:                               # %for.cond311.preheader
                                        #   Parent Loop BB1_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	slli.d	$t8, $t6, 3
	ldx.d	$s1, $t4, $t8
	ldx.d	$s0, $t5, $t8
	ld.d	$t8, $s1, 8
	alsl.d	$fp, $t3, $s0, 3
	ld.d	$fp, $fp, 8
	ldx.d	$s0, $s0, $t7
	ld.d	$s1, $s1, 0
	bgeu	$a2, $t1, .LBB1_53
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=2
	move	$s2, $zero
.LBB1_51:                               # %for.body314.preheader
                                        #   in Loop: Header=BB1_49 Depth=2
	alsl.d	$s1, $s2, $s1, 3
	alsl.d	$s0, $s2, $s0, 3
	alsl.d	$fp, $s2, $fp, 3
	alsl.d	$t8, $s2, $t8, 3
	sub.d	$s2, $a6, $s2
	.p2align	4, , 16
.LBB1_52:                               # %for.body314
                                        #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t8, 0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 8
	bnez	$s2, .LBB1_52
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_53:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $fp
	move	$s2, $zero
	bltu	$s3, $t2, .LBB1_51
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $fp, $t8
	bltu	$s3, $t2, .LBB1_51
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s0, $fp
	bltu	$s3, $t2, .LBB1_51
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $t8
	bltu	$s3, $t2, .LBB1_51
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_49 Depth=2
	sub.d	$s3, $s1, $s0
	bltu	$s3, $t2, .LBB1_51
# %bb.58:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_49 Depth=2
	addi.d	$s2, $t8, 32
	addi.d	$s3, $s1, 32
	addi.d	$s4, $fp, 32
	addi.d	$s5, $s0, 32
	move	$s6, $a7
	.p2align	4, , 16
.LBB1_59:                               # %vector.body
                                        #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	xvld	$xr0, $s5, -32
	xvld	$xr1, $s5, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s6, $s6, -8
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	addi.d	$s4, $s4, 64
	addi.d	$s5, $s5, 64
	bnez	$s6, .LBB1_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB1_49 Depth=2
	move	$s2, $a7
	beq	$a7, $a6, .LBB1_48
	b	.LBB1_51
.LBB1_61:                               # %if.else57
	move	$a5, $a2
	bstrins.d	$a5, $zero, 0, 0
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_90
# %bb.62:                               # %if.else57
	ori	$a6, $zero, 2
	bne	$a5, $a6, .LBB1_99
# %bb.63:                               # %if.then60
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.64:                               # %for.cond83.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(stencil)
	ld.w	$a5, $a5, %pc_lo12(stencil)
	pcalau12i	$a6, %pc_hi20(x_block_size)
	ld.w	$a6, $a6, %pc_lo12(x_block_size)
	addi.d	$a5, $a5, -7
	sltu	$a7, $zero, $a5
	add.w	$t0, $a6, $a7
	sltui	$a5, $a5, 1
	blt	$t0, $a5, .LBB1_99
# %bb.65:                               # %for.cond83.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	ori	$a7, $zero, 1
	blt	$a6, $a7, .LBB1_99
# %bb.66:                               # %for.cond83.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$t1, %pc_hi20(blocks)
	ld.d	$t1, $t1, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t2, $zero, 192
	mul.d	$a1, $a1, $t2
	add.d	$a1, $t1, $a1
	mul.d	$a0, $a0, $t2
	add.d	$a0, $t1, $a0
	masknez	$t1, $a0, $a2
	maskeqz	$t2, $a1, $a2
	or	$t1, $t2, $t1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $t1, 184
	addi.d	$t1, $a6, 1
	addi.d	$a2, $t0, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$t0, $t1, 31, 0
	bstrpick.d	$t1, $a6, 30, 3
	slli.d	$t1, $t1, 3
	srli.d	$t2, $a6, 3
	bstrins.d	$a7, $t2, 30, 3
	pcalau12i	$t2, %pc_hi20(y_block_size)
	ori	$t3, $zero, 12
	ori	$t4, $zero, 64
	b	.LBB1_68
	.p2align	4, , 16
.LBB1_67:                               # %for.cond83.for.inc130_crit_edge.split
                                        #   in Loop: Header=BB1_68 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB1_99
.LBB1_68:                               # %for.cond83.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #       Child Loop BB1_79 Depth 3
                                        #       Child Loop BB1_72 Depth 3
	ld.w	$t5, $t2, %pc_lo12(y_block_size)
	slli.d	$t7, $a3, 3
	ldx.d	$t6, $a0, $t7
	ldx.d	$t7, $a1, $t7
	slli.d	$t8, $t5, 3
	move	$fp, $a5
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %for.cond86.for.inc127_crit_edge
                                        #   in Loop: Header=BB1_70 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $a2, .LBB1_67
.LBB1_70:                               # %for.cond86.preheader
                                        #   Parent Loop BB1_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_79 Depth 3
                                        #       Child Loop BB1_72 Depth 3
	slli.d	$s0, $fp, 3
	ldx.d	$s3, $t6, $s0
	ldx.d	$s2, $t7, $s0
	ld.d	$s0, $s3, 8
	alsl.d	$s1, $t5, $s2, 3
	ld.d	$s1, $s1, 8
	ldx.d	$s2, $s2, $t8
	ld.d	$s3, $s3, 0
	ori	$s4, $zero, 1
	bgeu	$a6, $t3, .LBB1_73
.LBB1_71:                               # %for.body88.preheader
                                        #   in Loop: Header=BB1_70 Depth=2
	alsl.d	$s3, $s4, $s3, 3
	alsl.d	$s2, $s4, $s2, 3
	alsl.d	$s1, $s4, $s1, 3
	alsl.d	$s0, $s4, $s0, 3
	sub.d	$s4, $t0, $s4
	.p2align	4, , 16
.LBB1_72:                               # %for.body88
                                        #   Parent Loop BB1_68 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $s3, 0
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 8
	bnez	$s4, .LBB1_72
	b	.LBB1_69
	.p2align	4, , 16
.LBB1_73:                               # %vector.memcheck379
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s1
	bltu	$s5, $t4, .LBB1_71
# %bb.74:                               # %vector.memcheck379
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s1, $s0
	bltu	$s5, $t4, .LBB1_71
# %bb.75:                               # %vector.memcheck379
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s2, $s1
	bltu	$s5, $t4, .LBB1_71
# %bb.76:                               # %vector.memcheck379
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s0
	bltu	$s5, $t4, .LBB1_71
# %bb.77:                               # %vector.memcheck379
                                        #   in Loop: Header=BB1_70 Depth=2
	sub.d	$s5, $s3, $s2
	bltu	$s5, $t4, .LBB1_71
# %bb.78:                               # %vector.body394.preheader
                                        #   in Loop: Header=BB1_70 Depth=2
	addi.d	$s4, $s0, 40
	addi.d	$s5, $s1, 40
	addi.d	$s6, $s3, 40
	addi.d	$s7, $s2, 40
	move	$s8, $t1
	.p2align	4, , 16
.LBB1_79:                               # %vector.body394
                                        #   Parent Loop BB1_68 Depth=1
                                        #     Parent Loop BB1_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $s4, -32
	xvld	$xr1, $s4, 0
	xvst	$xr0, $s5, -32
	xvst	$xr1, $s5, 0
	xvld	$xr0, $s7, -32
	xvld	$xr1, $s7, 0
	xvst	$xr0, $s6, -32
	xvst	$xr1, $s6, 0
	addi.d	$s4, $s4, 64
	addi.d	$s8, $s8, -8
	addi.d	$s5, $s5, 64
	addi.d	$s6, $s6, 64
	addi.d	$s7, $s7, 64
	bnez	$s8, .LBB1_79
# %bb.80:                               # %middle.block401
                                        #   in Loop: Header=BB1_70 Depth=2
	move	$s4, $a7
	beq	$t1, $a6, .LBB1_69
	b	.LBB1_71
.LBB1_81:                               # %if.then362
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.82:                               # %for.cond380.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(x_block_size)
	ld.w	$a5, $a5, %pc_lo12(x_block_size)
	addi.w	$a7, $zero, -1
	blt	$a5, $a7, .LBB1_99
# %bb.83:                               # %for.cond380.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(y_block_size)
	ld.w	$a6, $a6, %pc_lo12(y_block_size)
	blt	$a6, $a7, .LBB1_99
# %bb.84:                               # %for.cond380.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$a7, %pc_hi20(blocks)
	ld.d	$a7, $a7, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t0, $zero, 192
	mul.d	$a1, $a1, $t0
	add.d	$a1, $a7, $a1
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a7, $a0
	masknez	$a7, $a0, $a2
	maskeqz	$t0, $a1, $a2
	or	$a7, $t0, $a7
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a7, 184
	addi.d	$a6, $a6, 2
	addi.d	$a2, $a5, 2
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a5, $a6, 31, 0
	pcalau12i	$a6, %pc_hi20(z_block_size)
	.p2align	4, , 16
.LBB1_85:                               # %for.cond380.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
                                        #       Child Loop BB1_87 Depth 3
	ld.w	$a7, $a6, %pc_lo12(z_block_size)
	slli.d	$t1, $a3, 3
	ldx.d	$t0, $a0, $t1
	ldx.d	$t1, $a1, $t1
	move	$t2, $zero
	slli.d	$t3, $a7, 3
	.p2align	4, , 16
.LBB1_86:                               # %for.cond384.preheader
                                        #   Parent Loop BB1_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_87 Depth 3
	slli.d	$t5, $t2, 3
	ldx.d	$t4, $t0, $t5
	ldx.d	$t5, $t1, $t5
	move	$t6, $a5
	.p2align	4, , 16
.LBB1_87:                               # %for.body387
                                        #   Parent Loop BB1_85 Depth=1
                                        #     Parent Loop BB1_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	fld.d	$fa0, $t7, 8
	fldx.d	$fa1, $t8, $t3
	alsl.d	$t8, $a7, $t8, 3
	fst.d	$fa0, $t8, 8
	fst.d	$fa1, $t7, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, -1
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB1_87
# %bb.88:                               # %for.cond384.for.inc426_crit_edge
                                        #   in Loop: Header=BB1_86 Depth=2
	addi.d	$t2, $t2, 1
	bne	$t2, $a2, .LBB1_86
# %bb.89:                               # %for.cond380.for.inc429_crit_edge.split
                                        #   in Loop: Header=BB1_85 Depth=1
	addi.d	$a3, $a3, 1
	blt	$a3, $a4, .LBB1_85
	b	.LBB1_99
.LBB1_90:                               # %if.then136
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB1_99
# %bb.91:                               # %for.cond160.preheader.lr.ph
	pcalau12i	$a5, %pc_hi20(stencil)
	ld.w	$a5, $a5, %pc_lo12(stencil)
	pcalau12i	$a6, %pc_hi20(x_block_size)
	ld.w	$a6, $a6, %pc_lo12(x_block_size)
	addi.d	$a7, $a5, -7
	sltui	$a5, $a7, 1
	sltu	$a7, $zero, $a7
	add.w	$a6, $a6, $a7
	blt	$a6, $a5, .LBB1_99
# %bb.92:                               # %for.cond160.preheader.lr.ph
	pcalau12i	$t0, %pc_hi20(y_block_size)
	ld.w	$t0, $t0, %pc_lo12(y_block_size)
	add.w	$a7, $t0, $a7
	blt	$a7, $a5, .LBB1_99
# %bb.93:                               # %for.cond160.preheader.lr.ph.split.split
	add.w	$a4, $a4, $a3
	andi	$a2, $a2, 1
	pcalau12i	$t0, %pc_hi20(blocks)
	ld.d	$t0, $t0, %pc_lo12(blocks)
	sltui	$a2, $a2, 1
	ori	$t1, $zero, 192
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t0, $a1
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t0, $a0
	masknez	$t0, $a0, $a2
	maskeqz	$t1, $a1, $a2
	or	$t0, $t1, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 184
	ld.d	$a1, $t0, 184
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a6, 1
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a6, $a5, 3
	sub.d	$a7, $a7, $a5
	pcalau12i	$t0, %pc_hi20(z_block_size)
	.p2align	4, , 16
.LBB1_94:                               # %for.cond160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_95 Depth 2
                                        #       Child Loop BB1_96 Depth 3
	ld.w	$t1, $t0, %pc_lo12(z_block_size)
	slli.d	$t3, $a3, 3
	ldx.d	$t2, $a0, $t3
	ldx.d	$t3, $a1, $t3
	slli.d	$t4, $t1, 3
	move	$t5, $a5
	.p2align	4, , 16
.LBB1_95:                               # %for.cond163.preheader
                                        #   Parent Loop BB1_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_96 Depth 3
	slli.d	$t6, $t5, 3
	ldx.d	$t7, $t3, $t6
	ldx.d	$t8, $t2, $t6
	add.d	$t6, $t7, $a6
	add.d	$t7, $t8, $a6
	move	$t8, $a7
	.p2align	4, , 16
.LBB1_96:                               # %for.body165
                                        #   Parent Loop BB1_94 Depth=1
                                        #     Parent Loop BB1_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t7, 0
	ld.d	$s0, $t6, 0
	fld.d	$fa0, $fp, 8
	fldx.d	$fa1, $s0, $t4
	alsl.d	$s0, $t1, $s0, 3
	fst.d	$fa0, $s0, 8
	fst.d	$fa1, $fp, 0
	addi.d	$t6, $t6, 8
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB1_96
# %bb.97:                               # %for.cond163.for.inc204_crit_edge
                                        #   in Loop: Header=BB1_95 Depth=2
	addi.d	$t5, $t5, 1
	bne	$t5, $a2, .LBB1_95
# %bb.98:                               # %for.cond160.for.inc207_crit_edge.split
                                        #   in Loop: Header=BB1_94 Depth=1
	addi.d	$a3, $a3, 1
	blt	$a3, $a4, .LBB1_94
.LBB1_99:                               # %if.end435
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	on_proc_comm, .Lfunc_end1-on_proc_comm
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function on_proc_comm_diff
.LCPI2_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	on_proc_comm_diff
	.p2align	5
	.type	on_proc_comm_diff,@function
on_proc_comm_diff:                      # @on_proc_comm_diff
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	ori	$a7, $zero, 192
	mul.d	$a0, $a0, $a7
	pcalau12i	$t0, %pc_hi20(code)
	ld.w	$t0, $t0, %pc_lo12(code)
	mul.d	$a1, $a1, $a7
	move	$a7, $a2
	add.d	$t6, $a4, $a0
	add.d	$fp, $a4, $a1
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 2
	beqz	$t0, .LBB2_4
# %bb.1:                                # %if.else451
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB2_7
# %bb.2:                                # %if.then454
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$s8, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $s8, 1
	beqz	$a7, .LBB2_15
# %bb.3:                                # %if.else458
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$t1, $s8
	ori	$s8, $zero, 1
	move	$a0, $zero
	ori	$a7, $zero, 1
	bge	$a6, $a7, .LBB2_16
	b	.LBB2_181
.LBB2_4:                                # %if.then
	bltu	$a1, $a0, .LBB2_11
# %bb.5:                                # %if.then3
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$t2, $a0, %pc_lo12(x_block_size)
	addi.w	$t1, $t2, 1
	beqz	$a7, .LBB2_70
# %bb.6:                                # %if.else
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
	ori	$a0, $zero, 1
	bge	$a6, $a0, .LBB2_71
	b	.LBB2_181
.LBB2_7:                                # %if.else1038
	bstrins.d	$a2, $zero, 0, 0
	ori	$a0, $zero, 4
	beq	$a2, $a0, .LBB2_68
# %bb.8:                                # %if.else1038
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB2_181
# %bb.9:                                # %if.then1041
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$s0, $a1, %pc_lo12(y_block_size)
	addi.w	$a4, $s0, 1
	bne	$a7, $a0, .LBB2_81
# %bb.10:                               # %if.then1043
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB2_82
.LBB2_11:                               # %if.else142
	bstrins.d	$a2, $zero, 0, 0
	ori	$a0, $zero, 4
	beq	$a2, $a0, .LBB2_79
# %bb.12:                               # %if.else142
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB2_181
# %bb.13:                               # %if.then145
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$t2, $a1, %pc_lo12(y_block_size)
	addi.w	$t1, $t2, 1
	bne	$a7, $a0, .LBB2_161
# %bb.14:                               # %if.then147
	move	$t3, $zero
	ori	$t0, $zero, 1
	b	.LBB2_162
.LBB2_15:                               # %if.then456
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ori	$t1, $zero, 1
	ori	$a7, $zero, 1
	blt	$a6, $a7, .LBB2_181
.LBB2_16:                               # %for.body470.lr.ph
	pcalau12i	$a1, %pc_hi20(z_block_half)
	ld.w	$t0, $a1, %pc_lo12(z_block_half)
	pcalau12i	$a1, %pc_hi20(y_block_half)
	ld.w	$t3, $a1, %pc_lo12(y_block_half)
	add.w	$a1, $a6, $a5
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	mul.w	$a1, $t0, $a3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	mul.w	$t2, $t3, $a2
	pcalau12i	$a2, %pc_hi20(z_block_size)
	ld.w	$a2, $a2, %pc_lo12(z_block_size)
	pcalau12i	$a4, %pc_hi20(y_block_size)
	ld.w	$a4, $a4, %pc_lo12(y_block_size)
	addi.w	$a6, $t0, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $t3, 1
	addi.w	$a4, $a4, 1
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a4, $t6, 184
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a4, $fp, 184
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	add.w	$a4, $a6, $a1
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	add.w	$a4, $a2, $t2
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $a1, 3
	add.d	$a1, $a1, $a6
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s4, $a6, -1
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $a6, 4
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s4
	bstrins.d	$a1, $zero, 1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $s4
	bstrins.d	$a1, $a7, 1, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $s1, 8
	slli.d	$a1, $t1, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vldi	$vr0, -944
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 1021
	xvreplgr2vr.d	$xr1, $a0
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %for.inc1035
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB2_181
.LBB2_18:                               # %for.body470
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_35 Depth 2
                                        #     Child Loop BB2_38 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_46 Depth 3
                                        #     Child Loop BB2_52 Depth 2
                                        #     Child Loop BB2_55 Depth 2
                                        #     Child Loop BB2_64 Depth 2
                                        #     Child Loop BB2_67 Depth 2
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ldx.d	$a6, $a2, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s2, $a1, $a0
	slli.d	$a0, $t2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $s2, $a1
	fldx.d	$fa2, $a0, $s1
	ld.d	$t1, $s5, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t1, 0
	blt	$t0, $a7, .LBB2_27
# %bb.19:                               # %for.body490.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_25
# %bb.20:                               # %vector.memcheck1446
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a2, $t1, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
	bgeu	$a2, $a4, .LBB2_22
# %bb.21:                               # %vector.memcheck1446
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $a0, $s1
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_25
.LBB2_22:                               # %vector.body1459.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $a0, $s7
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               # %vector.body1459
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $t1, $a4
	xvpickve2gr.d	$t3, $xr4, 1
	add.d	$t3, $t1, $t3
	xvpickve2gr.d	$t4, $xr4, 2
	add.d	$t4, $t1, $t4
	xvpickve2gr.d	$t5, $xr4, 3
	add.d	$t5, $t1, $t5
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t3, 0, 1
	xvstelm.d	$xr3, $t4, 0, 2
	xvstelm.d	$xr3, $t5, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t3, -8, 1
	xvstelm.d	$xr3, $t4, -8, 2
	xvstelm.d	$xr3, $t5, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_23
# %bb.24:                               # %middle.block1466
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %for.body490.preheader1472
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $a0, $s1
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t1, 4
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_26:                               # %for.body490
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_26
.LBB2_27:                               # %for.end523
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t5, $a1, 3
	fldx.d	$fa2, $a0, $t5
	fmul.d	$fa2, $fa2, $fa0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	fstx.d	$fa2, $t1, $a0
	slli.d	$a1, $s8, 3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_39
# %bb.28:                               # %if.then544
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $s2, $a1
	ld.d	$t6, $a1, 0
	beqz	$a3, .LBB2_30
# %bb.29:                               # %if.else561
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	fldx.d	$fa2, $t6, $a0
	ld.d	$t1, $a1, 0
	fstx.d	$fa2, $t1, $a0
	bge	$t0, $a7, .LBB2_31
	b	.LBB2_39
.LBB2_30:                               # %if.then546
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	fld.d	$fa2, $t6, 0
	ld.d	$t1, $a1, 0
	fst.d	$fa2, $t1, 0
	blt	$t0, $a7, .LBB2_39
.LBB2_31:                               # %for.body581.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_37
# %bb.32:                               # %vector.memcheck1424
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t1, $s1
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $t6, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_34
# %bb.33:                               # %vector.memcheck1424
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $t1, $a2
	addi.d	$a4, $t6, 8
	bltu	$a4, $a2, .LBB2_37
.LBB2_34:                               # %vector.body1437.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$t7, $t1, $s7
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_35:                               # %vector.body1437
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a2, $t6, $a1
	xvpickve2gr.d	$a4, $xr3, 1
	add.d	$t3, $t6, $a4
	xvpickve2gr.d	$fp, $xr3, 2
	add.d	$s3, $t6, $fp
	xvpickve2gr.d	$s6, $xr3, 3
	fld.d	$fa3, $a2, -8
	fld.d	$fa4, $t3, -8
	fld.d	$fa5, $s3, -8
	add.d	$a2, $t6, $s6
	fld.d	$fa6, $a2, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $t6, $a1
	fldx.d	$fa5, $t6, $a4
	fldx.d	$fa7, $t6, $fp
	fldx.d	$ft0, $t6, $s6
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $t7, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB2_35
# %bb.36:                               # %middle.block1443
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB2_39
	.p2align	4, , 16
.LBB2_37:                               # %for.body581.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t1, $s1
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t6, 4
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $t1, $a1
	.p2align	4, , 16
.LBB2_38:                               # %for.body581
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_38
.LBB2_39:                               # %if.end614
                                        #   in Loop: Header=BB2_18 Depth=1
	move	$t4, $s8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a7, .LBB2_47
# %bb.40:                               # %for.body617.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$t6, $s2, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $a2, 3
	ori	$t8, $zero, 1
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               # %for.end840
                                        #   in Loop: Header=BB2_42 Depth=2
	fldx.d	$fa2, $s8, $t5
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $ra, $a0
	addi.d	$t8, $t8, 1
	fstx.d	$fa2, $t1, $a0
	beq	$t8, $s0, .LBB2_47
.LBB2_42:                               # %for.body617
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_46 Depth 3
	add.d	$a1, $t8, $t2
	slli.d	$a1, $a1, 3
	ldx.d	$s8, $a6, $a1
	fldx.d	$fa2, $s8, $s1
	fmul.d	$fa2, $fa2, $fa0
	slli.d	$a2, $t8, 4
	ldx.d	$ra, $s5, $a2
	addi.d	$a2, $a2, -8
	ldx.d	$t1, $s5, $a2
	slli.d	$a4, $t8, 1
	ldx.d	$t3, $t6, $a2
	fst.d	$fa2, $ra, 0
	fst.d	$fa2, $t1, 0
	slli.d	$a2, $a4, 3
	beqz	$a3, .LBB2_44
# %bb.43:                               # %if.else679
                                        #   in Loop: Header=BB2_42 Depth=2
	ldx.d	$s3, $t6, $a2
	ld.d	$a2, $t7, 0
	fldx.d	$fa2, $t3, $a0
	fldx.d	$fa3, $s3, $a0
	ldx.d	$a1, $a2, $a1
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $a1, $a0
	bge	$t0, $a7, .LBB2_45
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_44:                               # %if.then649
                                        #   in Loop: Header=BB2_42 Depth=2
	ldx.d	$s3, $t6, $a2
	ld.d	$a2, $t7, 0
	fld.d	$fa2, $t3, 0
	fld.d	$fa3, $s3, 0
	ldx.d	$a1, $a2, $a1
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a1, 0
	blt	$t0, $a7, .LBB2_41
.LBB2_45:                               # %for.body715.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	add.d	$s6, $s8, $s7
	add.d	$a1, $a1, $s7
	addi.d	$a2, $ra, 16
	addi.d	$a4, $t1, 16
	addi.d	$fp, $t3, 16
	addi.d	$t3, $s3, 16
	move	$s3, $s4
	.p2align	4, , 16
.LBB2_46:                               # %for.body715
                                        #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $s6, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a2, 0
	fst.d	$fa2, $a2, -8
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	fld.d	$fa2, $fp, -8
	fld.d	$fa3, $fp, 0
	fld.d	$fa4, $t3, -8
	fld.d	$fa5, $t3, 0
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fst.d	$fa2, $a1, 0
	addi.d	$s6, $s6, 8
	addi.d	$a1, $a1, 8
	addi.d	$s3, $s3, -1
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	addi.d	$fp, $fp, 16
	addi.d	$t3, $t3, 16
	bnez	$s3, .LBB2_46
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_47:                               # %for.end876
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$t1, $a6, $a1
	fldx.d	$fa2, $t1, $s1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a6, $a1, 3
	ldx.d	$t6, $s5, $a6
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t6, 0
	blt	$t0, $a7, .LBB2_56
# %bb.48:                               # %for.body898.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_54
# %bb.49:                               # %vector.memcheck1401
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a2, $t6, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $t1, $a4
	bgeu	$a2, $a4, .LBB2_51
# %bb.50:                               # %vector.memcheck1401
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $t6, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $t1, $s1
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_54
.LBB2_51:                               # %vector.body1414.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t1, $s7
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_52:                               # %vector.body1414
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $t6, $a4
	xvpickve2gr.d	$t3, $xr4, 1
	add.d	$t3, $t6, $t3
	xvpickve2gr.d	$t7, $xr4, 2
	add.d	$t7, $t6, $t7
	xvpickve2gr.d	$t8, $xr4, 3
	add.d	$t8, $t6, $t8
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t3, 0, 1
	xvstelm.d	$xr3, $t7, 0, 2
	xvstelm.d	$xr3, $t8, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t3, -8, 1
	xvstelm.d	$xr3, $t7, -8, 2
	xvstelm.d	$xr3, $t8, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_52
# %bb.53:                               # %middle.block1421
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB2_56
	.p2align	4, , 16
.LBB2_54:                               # %for.body898.preheader1471
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a2, $t1, $s1
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t6, 4
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_55:                               # %for.body898
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_55
.LBB2_56:                               # %for.end934
                                        #   in Loop: Header=BB2_18 Depth=1
	fldx.d	$fa2, $t1, $t5
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t6, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$s8, $t4
	bne	$a1, $a7, .LBB2_17
# %bb.57:                               # %if.then957
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $s2, $a1
	ldx.d	$t4, $a1, $a6
	beqz	$a3, .LBB2_59
# %bb.58:                               # %if.else976
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	fldx.d	$fa2, $t4, $a0
	ldx.d	$a6, $a1, $a6
	fstx.d	$fa2, $a6, $a0
	bge	$t0, $a7, .LBB2_60
	b	.LBB2_17
.LBB2_59:                               # %if.then959
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	fld.d	$fa2, $t4, 0
	ldx.d	$a6, $a0, $a6
	fst.d	$fa2, $a6, 0
	blt	$t0, $a7, .LBB2_17
.LBB2_60:                               # %for.body998.lr.ph
                                        #   in Loop: Header=BB2_18 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ori	$a2, $zero, 5
	bltu	$a1, $a2, .LBB2_66
# %bb.61:                               # %vector.memcheck1379
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a1, $a6, $s1
	addi.d	$a1, $a1, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $t4, $a2
	addi.d	$a2, $a2, -8
	bgeu	$a1, $a2, .LBB2_63
# %bb.62:                               # %vector.memcheck1379
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
	addi.d	$a2, $t4, 8
	bltu	$a2, $a1, .LBB2_66
.LBB2_63:                               # %vector.body1392.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a6, $s7
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_64:                               # %vector.body1392
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a2, $t4, $a1
	xvpickve2gr.d	$a4, $xr3, 1
	add.d	$t3, $t4, $a4
	xvpickve2gr.d	$t5, $xr3, 2
	add.d	$t6, $t4, $t5
	xvpickve2gr.d	$t7, $xr3, 3
	fld.d	$fa3, $a2, -8
	fld.d	$fa4, $t3, -8
	fld.d	$fa5, $t6, -8
	add.d	$a2, $t4, $t7
	fld.d	$fa6, $a2, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $t4, $a1
	fldx.d	$fa5, $t4, $a4
	fldx.d	$fa7, $t4, $t5
	fldx.d	$ft0, $t4, $t7
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $a0, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t1, $t1, -4
	addi.d	$a0, $a0, 32
	bnez	$t1, .LBB2_64
# %bb.65:                               # %middle.block1398
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$s4, $a1, .LBB2_17
	.p2align	4, , 16
.LBB2_66:                               # %for.body998.preheader
                                        #   in Loop: Header=BB2_18 Depth=1
	add.d	$a1, $a6, $s1
	alsl.d	$a1, $a0, $a1, 3
	alsl.d	$a2, $a0, $t4, 4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB2_67:                               # %for.body998
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $a2, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 16
	bnez	$a0, .LBB2_67
	b	.LBB2_17
.LBB2_68:                               # %if.then1628
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$t0, $a1, %pc_lo12(z_block_size)
	addi.w	$t2, $t0, 1
	bne	$a7, $a0, .LBB2_135
# %bb.69:                               # %if.then1630
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB2_136
.LBB2_70:                               # %if.then5
	move	$t3, $zero
	ori	$t0, $zero, 1
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB2_181
.LBB2_71:                               # %for.cond10.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(y_block_half)
	ld.w	$a4, $a1, %pc_lo12(y_block_half)
	blt	$a4, $a0, .LBB2_181
# %bb.72:                               # %for.cond10.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$a7, $a0, %pc_lo12(z_block_half)
	ori	$a0, $zero, 1
	blt	$a7, $a0, .LBB2_181
# %bb.73:                               # %for.cond10.preheader.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t6, 184
	ld.d	$a3, $fp, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	vldi	$vr0, -944
	.p2align	4, , 16
.LBB2_74:                               # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #       Child Loop BB2_76 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t7, $a2, $t4
	ldx.d	$t6, $a3, $t4
	ldx.d	$t4, $t7, $t0
	ldx.d	$t5, $t6, $t1
	ldx.d	$t6, $t6, $t2
	ldx.d	$t7, $t7, $t3
	ori	$t8, $zero, 1
	.p2align	4, , 16
.LBB2_75:                               # %for.cond13.preheader
                                        #   Parent Loop BB2_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_76 Depth 3
	add.d	$fp, $t8, $a0
	slli.d	$fp, $fp, 3
	ldx.d	$s0, $t4, $fp
	slli.d	$s1, $t8, 4
	ldx.d	$s2, $t5, $s1
	addi.d	$s3, $s1, -8
	ldx.d	$s4, $t5, $s3
	ldx.d	$s5, $t7, $fp
	ldx.d	$s3, $t6, $s3
	ldx.d	$s6, $t6, $s1
	add.d	$fp, $s0, $a6
	add.d	$s0, $s5, $a6
	addi.d	$s1, $s2, 16
	addi.d	$s2, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s6, 16
	move	$s5, $a7
	.p2align	4, , 16
.LBB2_76:                               # %for.body15
                                        #   Parent Loop BB2_74 Depth=1
                                        #     Parent Loop BB2_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s1, 0
	fst.d	$fa1, $s1, -8
	fst.d	$fa1, $s2, 0
	fst.d	$fa1, $s2, -8
	fld.d	$fa1, $s3, -8
	fld.d	$fa2, $s3, 0
	fld.d	$fa3, $s4, -8
	fld.d	$fa4, $s4, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $s0, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, -1
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	bnez	$s5, .LBB2_76
# %bb.77:                               # %for.cond13.for.inc136_crit_edge
                                        #   in Loop: Header=BB2_75 Depth=2
	addi.d	$t8, $t8, 1
	bne	$t8, $a4, .LBB2_75
# %bb.78:                               # %for.cond10.for.inc139_crit_edge.split
                                        #   in Loop: Header=BB2_74 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_74
	b	.LBB2_181
.LBB2_79:                               # %if.then298
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$t2, $a1, %pc_lo12(z_block_size)
	addi.w	$t1, $t2, 1
	bne	$a7, $a0, .LBB2_171
# %bb.80:                               # %if.then300
	move	$t3, $zero
	ori	$t0, $zero, 1
	b	.LBB2_172
.LBB2_81:                               # %if.else1045
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	move	$a4, $zero
.LBB2_82:                               # %if.end1047
	ori	$t1, $zero, 1
	blt	$a6, $t1, .LBB2_181
# %bb.83:                               # %for.body1057.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$t2, $a0, %pc_lo12(z_block_half)
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a7, $a0, %pc_lo12(x_block_half)
	add.w	$a0, $a6, $a5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$a0, $t2, $a3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a6, $a7, $a1
	pcalau12i	$a1, %pc_hi20(z_block_size)
	ld.w	$a1, $a1, %pc_lo12(z_block_size)
	pcalau12i	$a2, %pc_hi20(x_block_size)
	ld.w	$a2, $a2, %pc_lo12(x_block_size)
	addi.w	$t0, $t2, 1
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $t6, 184
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $fp, 184
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	add.w	$a2, $t0, $a0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	add.w	$a2, $a1, $a6
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a6, $t0, 31, 0
	bstrpick.d	$s2, $a1, 31, 0
	slli.d	$s3, $a0, 3
	add.d	$a0, $a0, $a6
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$t5, $a6, -1
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $t5
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $t5
	bstrins.d	$a0, $t1, 1, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 8
	vldi	$vr0, -944
	slli.d	$a1, $a2, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu52i.d	$a1, $zero, 1021
	xvreplgr2vr.d	$xr1, $a1
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_84:                               # %for.inc1622
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bge	$a5, $a1, .LBB2_181
.LBB2_85:                               # %for.body1057
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_90 Depth 2
                                        #     Child Loop BB2_93 Depth 2
                                        #     Child Loop BB2_102 Depth 2
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_109 Depth 2
                                        #       Child Loop BB2_113 Depth 3
                                        #     Child Loop BB2_119 Depth 2
                                        #     Child Loop BB2_122 Depth 2
                                        #     Child Loop BB2_131 Depth 2
                                        #     Child Loop BB2_134 Depth 2
	slli.d	$a1, $a5, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s6, $a2, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s6, $a2
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a7, $a6, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	slli.d	$t6, $a1, 3
	ldx.d	$a6, $a2, $t6
	ld.d	$t7, $a7, 0
	fldx.d	$fa2, $a6, $s3
	slli.d	$t0, $a4, 3
	ldx.d	$t8, $t7, $t0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t8, 0
	blt	$t2, $t1, .LBB2_94
# %bb.86:                               # %for.body1077.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_92
# %bb.87:                               # %vector.memcheck1356
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$a2, $t8, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	bgeu	$a2, $a4, .LBB2_89
# %bb.88:                               # %vector.memcheck1356
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $t8, $a2
	addi.d	$a2, $a2, -8
	add.d	$a4, $a6, $s3
	addi.d	$a4, $a4, 8
	bltu	$a4, $a2, .LBB2_92
.LBB2_89:                               # %vector.body1369.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $a6, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_90:                               # %vector.body1369
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$a4, $xr4, 0
	add.d	$a4, $t8, $a4
	xvpickve2gr.d	$t3, $xr4, 1
	add.d	$t3, $t8, $t3
	xvpickve2gr.d	$t4, $xr4, 2
	add.d	$t4, $t8, $t4
	xvpickve2gr.d	$fp, $xr4, 3
	add.d	$fp, $t8, $fp
	xvstelm.d	$xr3, $a4, 0, 0
	xvstelm.d	$xr3, $t3, 0, 1
	xvstelm.d	$xr3, $t4, 0, 2
	xvstelm.d	$xr3, $fp, 0, 3
	xvstelm.d	$xr3, $a4, -8, 0
	xvstelm.d	$xr3, $t3, -8, 1
	xvstelm.d	$xr3, $t4, -8, 2
	xvstelm.d	$xr3, $fp, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_90
# %bb.91:                               # %middle.block1376
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$t5, $a2, .LBB2_94
	.p2align	4, , 16
.LBB2_92:                               # %for.body1077.preheader1475
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $a6, $s3
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t8, 4
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_93:                               # %for.body1077
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_93
.LBB2_94:                               # %for.end1110
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$s7, $a1, 3
	fldx.d	$fa2, $a6, $s7
	fmul.d	$fa2, $fa2, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$ra, $a1, 3
	fstx.d	$fa2, $t8, $ra
	slli.d	$a6, $s0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s4, $a1, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_106
# %bb.95:                               # %if.then1131
                                        #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$t7, $t7, $a6
	beqz	$a3, .LBB2_97
# %bb.96:                               # %if.else1148
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $s6, 0
	fldx.d	$fa2, $t7, $ra
	ldx.d	$t8, $a1, $s4
	fstx.d	$fa2, $t8, $ra
	bge	$t2, $t1, .LBB2_98
	b	.LBB2_106
.LBB2_97:                               # %if.then1133
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $s6, 0
	fld.d	$fa2, $t7, 0
	ldx.d	$t8, $a1, $s4
	fst.d	$fa2, $t8, 0
	blt	$t2, $t1, .LBB2_106
.LBB2_98:                               # %for.body1168.lr.ph
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_104
# %bb.99:                               # %vector.memcheck1334
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t8, $s3
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $t7, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_101
# %bb.100:                              # %vector.memcheck1334
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $t8, $a2
	addi.d	$a4, $t7, 8
	bltu	$a4, $a2, .LBB2_104
.LBB2_101:                              # %vector.body1347.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a2, $t8, $a0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_102:                              # %vector.body1347
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a4, $t7, $a1
	xvpickve2gr.d	$t3, $xr3, 1
	add.d	$t4, $t7, $t3
	xvpickve2gr.d	$s0, $xr3, 2
	add.d	$s1, $t7, $s0
	xvpickve2gr.d	$s5, $xr3, 3
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $t4, -8
	fld.d	$fa5, $s1, -8
	add.d	$a4, $t7, $s5
	fld.d	$fa6, $a4, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $t7, $a1
	fldx.d	$fa5, $t7, $t3
	fldx.d	$fa7, $t7, $s0
	fldx.d	$ft0, $t7, $s5
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$fp, $fp, -4
	addi.d	$a2, $a2, 32
	bnez	$fp, .LBB2_102
# %bb.103:                              # %middle.block1353
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$t5, $a2, .LBB2_106
	.p2align	4, , 16
.LBB2_104:                              # %for.body1168.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $t8, $s3
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $t7, 4
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_105:                              # %for.body1168
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_105
.LBB2_106:                              # %if.end1201
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	blt	$a1, $t1, .LBB2_114
# %bb.107:                              # %for.body1204.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $s6, 3
	ori	$t8, $zero, 1
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_108:                              # %for.end1427
                                        #   in Loop: Header=BB2_109 Depth=2
	fldx.d	$fa2, $fp, $s7
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s0, $ra
	addi.d	$t8, $t8, 1
	fstx.d	$fa2, $a2, $ra
	beq	$t8, $s2, .LBB2_114
.LBB2_109:                              # %for.body1204
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_113 Depth 3
	slli.d	$a1, $t8, 3
	ldx.d	$a1, $t7, $a1
	ldx.d	$fp, $a1, $t6
	slli.d	$a2, $t8, 4
	alsl.d	$t3, $t8, $a7, 4
	ldx.d	$a4, $a7, $a2
	ld.d	$t3, $t3, -8
	fldx.d	$fa2, $fp, $s3
	ldx.d	$s0, $a4, $t0
	ldx.d	$a2, $t3, $t0
	ldx.d	$t4, $t3, $a6
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $s0, 0
	fst.d	$fa2, $a2, 0
	beqz	$a3, .LBB2_111
# %bb.110:                              # %if.else1266
                                        #   in Loop: Header=BB2_109 Depth=2
	ldx.d	$s1, $a4, $a6
	fldx.d	$fa2, $t4, $ra
	fldx.d	$fa3, $s1, $ra
	ldx.d	$a1, $a1, $s4
	fadd.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $a1, $ra
	bge	$t2, $t1, .LBB2_112
	b	.LBB2_108
	.p2align	4, , 16
.LBB2_111:                              # %if.then1236
                                        #   in Loop: Header=BB2_109 Depth=2
	ldx.d	$s1, $a4, $a6
	fld.d	$fa2, $t4, 0
	fld.d	$fa3, $s1, 0
	ldx.d	$a1, $a1, $s4
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a1, 0
	blt	$t2, $t1, .LBB2_108
.LBB2_112:                              # %for.body1302.preheader
                                        #   in Loop: Header=BB2_109 Depth=2
	add.d	$s8, $fp, $a0
	add.d	$t3, $a1, $a0
	addi.d	$a4, $s0, 16
	addi.d	$a1, $a2, 16
	addi.d	$t4, $t4, 16
	addi.d	$s1, $s1, 16
	move	$s5, $t5
	.p2align	4, , 16
.LBB2_113:                              # %for.body1302
                                        #   Parent Loop BB2_85 Depth=1
                                        #     Parent Loop BB2_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $s8, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a4, 0
	fst.d	$fa2, $a4, -8
	fst.d	$fa2, $a1, 0
	fst.d	$fa2, $a1, -8
	fld.d	$fa2, $t4, -8
	fld.d	$fa3, $t4, 0
	fld.d	$fa4, $s1, -8
	fld.d	$fa5, $s1, 0
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fst.d	$fa2, $t3, 0
	addi.d	$s8, $s8, 8
	addi.d	$t3, $t3, 8
	addi.d	$s5, $s5, -1
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 16
	addi.d	$t4, $t4, 16
	addi.d	$s1, $s1, 16
	bnez	$s5, .LBB2_113
	b	.LBB2_108
	.p2align	4, , 16
.LBB2_114:                              # %for.end1463
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $s6, $a1
	ldx.d	$t7, $a1, $t6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t6, $a1, 3
	ldx.d	$a7, $a7, $t6
	fldx.d	$fa2, $t7, $s3
	ldx.d	$a2, $a7, $t0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a2, 0
	blt	$t2, $t1, .LBB2_123
# %bb.115:                              # %for.body1485.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ori	$t0, $zero, 5
	bltu	$a4, $t0, .LBB2_121
# %bb.116:                              # %vector.memcheck1312
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$a4, $a2, 8
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $t7, $t0
	bgeu	$a4, $t0, .LBB2_118
# %bb.117:                              # %vector.memcheck1312
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $a2, $a4
	addi.d	$a4, $a4, -8
	add.d	$t0, $t7, $s3
	addi.d	$t0, $t0, 8
	bltu	$t0, $a4, .LBB2_121
.LBB2_118:                              # %vector.body1325.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a1, $t7, $a0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_119:                              # %vector.body1325
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, 0
	xvfmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr2, 4
	xvpickve2gr.d	$t0, $xr4, 0
	add.d	$t0, $a2, $t0
	xvpickve2gr.d	$t3, $xr4, 1
	add.d	$t3, $a2, $t3
	xvpickve2gr.d	$t4, $xr4, 2
	add.d	$t4, $a2, $t4
	xvpickve2gr.d	$t8, $xr4, 3
	add.d	$t8, $a2, $t8
	xvstelm.d	$xr3, $t0, 0, 0
	xvstelm.d	$xr3, $t3, 0, 1
	xvstelm.d	$xr3, $t4, 0, 2
	xvstelm.d	$xr3, $t8, 0, 3
	xvstelm.d	$xr3, $t0, -8, 0
	xvstelm.d	$xr3, $t3, -8, 1
	xvstelm.d	$xr3, $t4, -8, 2
	xvstelm.d	$xr3, $t8, -8, 3
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 32
	bnez	$a4, .LBB2_119
# %bb.120:                              # %middle.block1331
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	beq	$t5, $a4, .LBB2_123
	.p2align	4, , 16
.LBB2_121:                              # %for.body1485.preheader1474
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a4, $t7, $s3
	alsl.d	$a4, $a1, $a4, 3
	alsl.d	$t0, $a1, $a2, 4
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $t3, $a1
	.p2align	4, , 16
.LBB2_122:                              # %for.body1485
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, 0
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t0, 0
	fst.d	$fa2, $t0, -8
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$t0, $t0, 16
	bnez	$a1, .LBB2_122
.LBB2_123:                              # %for.end1521
                                        #   in Loop: Header=BB2_85 Depth=1
	fldx.d	$fa2, $t7, $s7
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $a2, $ra
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bne	$a1, $t1, .LBB2_84
# %bb.124:                              # %if.then1544
                                        #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a6, $a7, $a6
	beqz	$a3, .LBB2_126
# %bb.125:                              # %if.else1563
                                        #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a1, $s6, $t6
	fldx.d	$fa2, $a6, $ra
	ldx.d	$a7, $a1, $s4
	fstx.d	$fa2, $a7, $ra
	bge	$t2, $t1, .LBB2_127
	b	.LBB2_84
.LBB2_126:                              # %if.then1546
                                        #   in Loop: Header=BB2_85 Depth=1
	ldx.d	$a1, $s6, $t6
	fld.d	$fa2, $a6, 0
	ldx.d	$a7, $a1, $s4
	fst.d	$fa2, $a7, 0
	blt	$t2, $t1, .LBB2_84
.LBB2_127:                              # %for.body1585.lr.ph
                                        #   in Loop: Header=BB2_85 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	bltu	$a2, $a4, .LBB2_133
# %bb.128:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $a7, $s3
	addi.d	$a2, $a2, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	addi.d	$a4, $a4, -8
	bgeu	$a2, $a4, .LBB2_130
# %bb.129:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a7, $a2
	addi.d	$a4, $a6, 8
	bltu	$a4, $a2, .LBB2_133
.LBB2_130:                              # %vector.body.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvld	$xr2, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a2, $a7, $a0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_131:                              # %vector.body
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr3, $xr2, 4
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a4, $a6, $a1
	xvpickve2gr.d	$t3, $xr3, 1
	add.d	$t4, $a6, $t3
	xvpickve2gr.d	$t6, $xr3, 2
	add.d	$t7, $a6, $t6
	xvpickve2gr.d	$t8, $xr3, 3
	fld.d	$fa3, $a4, -8
	fld.d	$fa4, $t4, -8
	fld.d	$fa5, $t7, -8
	add.d	$a4, $a6, $t8
	fld.d	$fa6, $a4, -8
	xvinsve0.d	$xr3, $xr4, 1
	xvinsve0.d	$xr3, $xr5, 2
	fldx.d	$fa4, $a6, $a1
	fldx.d	$fa5, $a6, $t3
	fldx.d	$fa7, $a6, $t6
	fldx.d	$ft0, $a6, $t8
	xvinsve0.d	$xr3, $xr6, 3
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr7, 2
	xvinsve0.d	$xr4, $xr8, 3
	xvfadd.d	$xr3, $xr3, $xr4
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$t0, $t0, -4
	addi.d	$a2, $a2, 32
	bnez	$t0, .LBB2_131
# %bb.132:                              # %middle.block
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$t5, $a2, .LBB2_84
	.p2align	4, , 16
.LBB2_133:                              # %for.body1585.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	add.d	$a2, $a7, $s3
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a4, $a1, $a6, 4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $a6, $a1
	.p2align	4, , 16
.LBB2_134:                              # %for.body1585
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a4, -8
	fld.d	$fa3, $a4, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_134
	b	.LBB2_84
.LBB2_135:                              # %if.else1632
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	ori	$t0, $zero, 1
	move	$t2, $zero
.LBB2_136:                              # %if.end1634
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB2_181
# %bb.137:                              # %for.body1644.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_half)
	ld.w	$t1, $a0, %pc_lo12(y_block_half)
	pcalau12i	$a0, %pc_hi20(x_block_half)
	ld.w	$a7, $a0, %pc_lo12(x_block_half)
	add.w	$a0, $a6, $a5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$a0, $t1, $a3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a6, $a7, $a1
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.w	$a1, $a1, %pc_lo12(y_block_size)
	pcalau12i	$a2, %pc_hi20(x_block_size)
	ld.w	$a2, $a2, %pc_lo12(x_block_size)
	addi.d	$a4, $t1, 1
	addi.w	$t4, $a1, 1
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 1
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $t6, 184
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $fp, 184
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	add.w	$a2, $a4, $a0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	sltui	$a7, $a3, 1
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	add.w	$a2, $a1, $a6
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$s0, $a1, 31, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	masknez	$a1, $t4, $a7
	slli.d	$s1, $a0, 3
	addi.d	$s2, $s1, 8
	addi.d	$s5, $a4, -1
	vldi	$vr0, -944
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	b	.LBB2_139
	.p2align	4, , 16
.LBB2_138:                              # %for.inc2209
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB2_181
.LBB2_139:                              # %for.body1644
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_141 Depth 2
                                        #     Child Loop BB2_145 Depth 2
                                        #     Child Loop BB2_149 Depth 2
                                        #       Child Loop BB2_153 Depth 3
                                        #     Child Loop BB2_156 Depth 2
                                        #     Child Loop BB2_160 Depth 2
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$t7, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $t7, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a0
	ldx.d	$a4, $a1, $s1
	ld.d	$a0, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	slli.d	$s7, $a6, 3
	fldx.d	$fa1, $a4, $s7
	ld.d	$a4, $a0, 0
	fmul.d	$fa1, $fa1, $fa0
	slli.d	$s8, $t2, 3
	fstx.d	$fa1, $a4, $s8
	ori	$a6, $zero, 1
	blt	$t1, $a6, .LBB2_142
# %bb.140:                              # %for.body1664.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a6, $a1, $s2
	addi.d	$a7, $a0, 16
	move	$t2, $s5
	.p2align	4, , 16
.LBB2_141:                              # %for.body1664
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $a6, 0
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $a7, 0
	ld.d	$t6, $a7, -8
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t5, $s8
	fstx.d	$fa1, $t6, $s8
	addi.d	$a6, $a6, 8
	addi.d	$t2, $t2, -1
	addi.d	$a7, $a7, 16
	bnez	$t2, .LBB2_141
.LBB2_142:                              # %for.end1697
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a7, $a6, 3
	ldx.d	$a1, $a1, $a7
	fldx.d	$fa1, $a1, $s7
	slli.d	$a1, $t4, 3
	ldx.d	$t2, $a0, $a1
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t2, $s8
	slli.d	$ra, $t0, 3
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s4, $a6, 3
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	bnez	$a6, .LBB2_146
# %bb.143:                              # %if.then1718
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a6, $t7, 0
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	masknez	$t2, $t2, $t3
	maskeqz	$a4, $a4, $t3
	or	$a4, $a4, $t2
	fldx.d	$fa1, $a4, $ra
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a4, $a6, $a4
	fstx.d	$fa1, $a4, $s4
	ori	$a4, $zero, 1
	blt	$t1, $a4, .LBB2_146
# %bb.144:                              # %for.body1755.lr.ph
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a4, $a6, $s2
	addi.d	$a0, $a0, 16
	move	$a6, $s5
	.p2align	4, , 16
.LBB2_145:                              # %for.body1755
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a0, -8
	ld.d	$t5, $a0, 0
	fldx.d	$fa1, $t2, $ra
	fldx.d	$fa2, $t5, $ra
	ld.d	$t2, $a4, 0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t2, $s4
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a0, $a0, 16
	bnez	$a6, .LBB2_145
.LBB2_146:                              # %if.end1788
                                        #   in Loop: Header=BB2_139 Depth=1
	st.d	$t7, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	blt	$a4, $a0, .LBB2_154
# %bb.147:                              # %for.body1791.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $a4, 3
	ori	$a0, $zero, 1
	b	.LBB2_149
	.p2align	4, , 16
.LBB2_148:                              # %for.end2014
                                        #   in Loop: Header=BB2_149 Depth=2
	ldx.d	$a4, $t5, $a7
	fldx.d	$fa1, $a4, $s7
	ldx.d	$a4, $t6, $a1
	ldx.d	$a5, $t7, $a1
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a4, $s8
	addi.d	$a0, $a0, 1
	fstx.d	$fa1, $a5, $s8
	beq	$a0, $s0, .LBB2_154
.LBB2_149:                              # %for.body1791
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_153 Depth 3
	slli.d	$a4, $a0, 3
	ldx.d	$t5, $a6, $a4
	ldx.d	$a4, $t5, $s1
	slli.d	$t2, $a0, 4
	alsl.d	$t7, $a0, $a2, 4
	ldx.d	$t6, $a2, $t2
	ld.d	$t7, $t7, -8
	fldx.d	$fa1, $a4, $s7
	ld.d	$a4, $t6, 0
	ld.d	$t2, $t7, 0
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a4, $s8
	fstx.d	$fa1, $t2, $s8
	beqz	$a3, .LBB2_151
# %bb.150:                              # %if.else1853
                                        #   in Loop: Header=BB2_149 Depth=2
	ldx.d	$a4, $t7, $a1
	ldx.d	$t2, $t6, $a1
	fldx.d	$fa1, $a4, $ra
	fldx.d	$fa2, $t2, $ra
	fadd.d	$fa1, $fa1, $fa2
	alsl.d	$a4, $t4, $t5, 3
	ld.d	$a4, $a4, 0
	fstx.d	$fa1, $a4, $s4
	ori	$a4, $zero, 1
	bge	$t1, $a4, .LBB2_152
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_151:                              # %if.then1823
                                        #   in Loop: Header=BB2_149 Depth=2
	fldx.d	$fa1, $t2, $ra
	fldx.d	$fa2, $a4, $ra
	fadd.d	$fa1, $fa1, $fa2
	move	$a4, $t5
	ld.d	$a4, $a4, 0
	fstx.d	$fa1, $a4, $s4
	ori	$a4, $zero, 1
	blt	$t1, $a4, .LBB2_148
.LBB2_152:                              # %for.body1889.preheader
                                        #   in Loop: Header=BB2_149 Depth=2
	add.d	$a4, $t5, $s2
	addi.d	$t8, $t6, 16
	addi.d	$t2, $t7, 16
	move	$s3, $s5
	.p2align	4, , 16
.LBB2_153:                              # %for.body1889
                                        #   Parent Loop BB2_139 Depth=1
                                        #     Parent Loop BB2_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $a4, 0
	fldx.d	$fa1, $t3, $s7
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$fp, $t8, 0
	ld.d	$s6, $t8, -8
	ld.d	$t0, $t2, 0
	ld.d	$a5, $t2, -8
	fstx.d	$fa1, $fp, $s8
	fstx.d	$fa1, $s6, $s8
	fstx.d	$fa1, $t0, $s8
	fstx.d	$fa1, $a5, $s8
	fldx.d	$fa1, $a5, $ra
	fldx.d	$fa2, $t0, $ra
	fldx.d	$fa3, $s6, $ra
	fldx.d	$fa4, $fp, $ra
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fstx.d	$fa1, $t3, $s4
	addi.d	$a4, $a4, 8
	addi.d	$t8, $t8, 16
	addi.d	$s3, $s3, -1
	addi.d	$t2, $t2, 16
	bnez	$s3, .LBB2_153
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_154:                              # %for.end2050
                                        #   in Loop: Header=BB2_139 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a6, $t3, $a0
	ldx.d	$a5, $a6, $s1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a4, $a0, 3
	ldx.d	$a0, $a2, $a4
	fldx.d	$fa1, $a5, $s7
	ld.d	$a2, $a0, 0
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a2, $s8
	ori	$a5, $zero, 1
	blt	$t1, $a5, .LBB2_157
# %bb.155:                              # %for.body2072.preheader
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$t2, $a6, $s2
	addi.d	$t5, $a0, 16
	move	$t6, $s5
	.p2align	4, , 16
.LBB2_156:                              # %for.body2072
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $t2, 0
	fldx.d	$fa1, $a5, $s7
	ld.d	$a5, $t5, 0
	ld.d	$t0, $t5, -8
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a5, $s8
	fstx.d	$fa1, $t0, $s8
	addi.d	$t2, $t2, 8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB2_156
.LBB2_157:                              # %for.end2108
                                        #   in Loop: Header=BB2_139 Depth=1
	ldx.d	$a5, $a6, $a7
	fldx.d	$fa1, $a5, $s7
	ldx.d	$a6, $a0, $a1
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $s8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	bne	$a1, $a5, .LBB2_138
# %bb.158:                              # %if.then2131
                                        #   in Loop: Header=BB2_139 Depth=1
	ldx.d	$a1, $t3, $a4
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	masknez	$a4, $a6, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	fldx.d	$fa1, $a2, $ra
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	fstx.d	$fa1, $a2, $s4
	ori	$a2, $zero, 1
	blt	$t1, $a2, .LBB2_138
# %bb.159:                              # %for.body2172.lr.ph
                                        #   in Loop: Header=BB2_139 Depth=1
	add.d	$a1, $a1, $s2
	addi.d	$a0, $a0, 16
	move	$a2, $s5
	.p2align	4, , 16
.LBB2_160:                              # %for.body2172
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a0, -8
	ld.d	$a5, $a0, 0
	fldx.d	$fa1, $a4, $ra
	fldx.d	$fa2, $a5, $ra
	ld.d	$a4, $a1, 0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a4, $s4
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB2_160
	b	.LBB2_138
.LBB2_161:                              # %if.else149
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
.LBB2_162:                              # %if.end151
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB2_181
# %bb.163:                              # %for.cond158.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(x_block_half)
	ld.w	$a4, $a1, %pc_lo12(x_block_half)
	blt	$a4, $a0, .LBB2_181
# %bb.164:                              # %for.cond158.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_half)
	ld.w	$a7, $a0, %pc_lo12(z_block_half)
	ori	$a0, $zero, 1
	blt	$a7, $a0, .LBB2_181
# %bb.165:                              # %for.cond158.preheader.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t6, 184
	ld.d	$a3, $fp, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	vldi	$vr0, -944
	.p2align	4, , 16
.LBB2_166:                              # %for.cond158.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_167 Depth 2
                                        #       Child Loop BB2_168 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t5, $a2, $t4
	ldx.d	$t4, $a3, $t4
	alsl.d	$t5, $a0, $t5, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB2_167:                              # %for.cond161.preheader
                                        #   Parent Loop BB2_166 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_168 Depth 3
	slli.d	$t7, $t6, 3
	ldx.d	$t7, $t5, $t7
	slli.d	$t8, $t6, 4
	alsl.d	$fp, $t6, $t4, 4
	ldx.d	$t8, $t4, $t8
	ld.d	$fp, $fp, -8
	ldx.d	$s0, $t7, $t0
	ldx.d	$s1, $t8, $t1
	ldx.d	$s2, $fp, $t1
	ldx.d	$s3, $t7, $t3
	ldx.d	$s4, $fp, $t2
	ldx.d	$s5, $t8, $t2
	add.d	$t7, $s0, $a6
	add.d	$t8, $s3, $a6
	addi.d	$fp, $s1, 16
	addi.d	$s0, $s2, 16
	addi.d	$s1, $s4, 16
	addi.d	$s2, $s5, 16
	move	$s3, $a7
	.p2align	4, , 16
.LBB2_168:                              # %for.body163
                                        #   Parent Loop BB2_166 Depth=1
                                        #     Parent Loop BB2_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t7, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $fp, 0
	fst.d	$fa1, $fp, -8
	fst.d	$fa1, $s0, 0
	fst.d	$fa1, $s0, -8
	fld.d	$fa1, $s1, -8
	fld.d	$fa2, $s1, 0
	fld.d	$fa3, $s2, -8
	fld.d	$fa4, $s2, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $t8, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	bnez	$s3, .LBB2_168
# %bb.169:                              # %for.cond161.for.inc289_crit_edge
                                        #   in Loop: Header=BB2_167 Depth=2
	addi.d	$t6, $t6, 1
	bne	$t6, $a4, .LBB2_167
# %bb.170:                              # %for.cond158.for.inc292_crit_edge.split
                                        #   in Loop: Header=BB2_166 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_166
	b	.LBB2_181
.LBB2_171:                              # %if.else302
	move	$t3, $t1
	move	$t0, $t2
	ori	$t2, $zero, 1
	move	$t1, $zero
.LBB2_172:                              # %if.end304
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB2_181
# %bb.173:                              # %for.cond311.preheader.lr.ph
	pcalau12i	$a1, %pc_hi20(x_block_half)
	ld.w	$a4, $a1, %pc_lo12(x_block_half)
	blt	$a4, $a0, .LBB2_181
# %bb.174:                              # %for.cond311.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_half)
	ld.w	$a7, $a0, %pc_lo12(y_block_half)
	ori	$a0, $zero, 1
	blt	$a7, $a0, .LBB2_181
# %bb.175:                              # %for.cond311.preheader.lr.ph.split.split
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a4, $a0
	mul.w	$t4, $a7, $a3
	add.w	$a1, $a6, $a5
	ld.d	$a2, $t6, 184
	ld.d	$a3, $fp, 184
	addi.d	$a6, $a7, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $t4, 3
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	slli.d	$t0, $t0, 3
	vldi	$vr0, -944
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	.p2align	4, , 16
.LBB2_176:                              # %for.cond311.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_177 Depth 2
                                        #       Child Loop BB2_178 Depth 3
	slli.d	$t4, $a5, 3
	ldx.d	$t5, $a2, $t4
	ldx.d	$t4, $a3, $t4
	alsl.d	$t5, $a0, $t5, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB2_177:                              # %for.cond314.preheader
                                        #   Parent Loop BB2_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_178 Depth 3
	slli.d	$t7, $t6, 3
	ldx.d	$t7, $t5, $t7
	slli.d	$t8, $t6, 4
	alsl.d	$fp, $t6, $t4, 4
	ldx.d	$t8, $t4, $t8
	ld.d	$fp, $fp, -8
	add.d	$t7, $t7, $a6
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	move	$s0, $a7
	.p2align	4, , 16
.LBB2_178:                              # %for.body316
                                        #   Parent Loop BB2_176 Depth=1
                                        #     Parent Loop BB2_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t7, 0
	fldx.d	$fa1, $s1, $t0
	fmul.d	$fa1, $fa1, $fa0
	ld.d	$s2, $t8, 0
	ld.d	$s3, $t8, -8
	ld.d	$s4, $fp, 0
	ld.d	$s5, $fp, -8
	fstx.d	$fa1, $s2, $t1
	fstx.d	$fa1, $s3, $t1
	fstx.d	$fa1, $s4, $t1
	fstx.d	$fa1, $s5, $t1
	fldx.d	$fa1, $s5, $t2
	fldx.d	$fa2, $s4, $t2
	fldx.d	$fa3, $s3, $t2
	fldx.d	$fa4, $s2, $t2
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fstx.d	$fa1, $s1, $t3
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 16
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 16
	bnez	$s0, .LBB2_178
# %bb.179:                              # %for.cond314.for.inc442_crit_edge
                                        #   in Loop: Header=BB2_177 Depth=2
	addi.d	$t6, $t6, 1
	bne	$t6, $a4, .LBB2_177
# %bb.180:                              # %for.cond311.for.inc445_crit_edge.split
                                        #   in Loop: Header=BB2_176 Depth=1
	addi.d	$a5, $a5, 1
	blt	$a5, $a1, .LBB2_176
.LBB2_181:                              # %if.end2215
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end2:
	.size	on_proc_comm_diff, .Lfunc_end2-on_proc_comm_diff
                                        # -- End function
	.globl	apply_bc                        # -- Begin function apply_bc
	.p2align	5
	.type	apply_bc,@function
apply_bc:                               # @apply_bc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(code)
	ld.w	$a4, $a4, %pc_lo12(code)
	bnez	$a4, .LBB3_19
# %bb.1:                                # %entry
	pcalau12i	$a4, %pc_hi20(stencil)
	ld.w	$a4, $a4, %pc_lo12(stencil)
	ori	$a5, $zero, 7
	bne	$a4, $a5, .LBB3_19
# %bb.2:                                # %if.then
	ori	$a4, $zero, 5
	bltu	$a4, $a0, .LBB3_86
# %bb.3:                                # %if.then
	slli.d	$a4, $a0, 2
	pcalau12i	$a5, %pc_hi20(.LJTI3_1)
	addi.d	$a5, $a5, %pc_lo12(.LJTI3_1)
	ldx.w	$a4, $a5, $a4
	move	$t1, $zero
	move	$a6, $zero
	add.d	$a4, $a5, $a4
	ori	$a5, $zero, 1
	jr	$a4
.LBB3_4:                                # %sw.bb
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $a5, 1
.LBB3_5:                                # %sw.bb1
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB3_86
# %bb.6:                                # %for.cond4.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(y_block_size)
	ld.w	$a7, $a6, %pc_lo12(y_block_size)
	blt	$a7, $a4, .LBB3_86
# %bb.7:                                # %for.cond4.preheader.lr.ph
	pcalau12i	$a4, %pc_hi20(z_block_size)
	ld.w	$a4, $a4, %pc_lo12(z_block_size)
	ori	$a6, $zero, 1
	blt	$a4, $a6, .LBB3_86
# %bb.8:                                # %for.cond4.preheader.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$t0, $a4, 1
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t0, $t0, 31, 0
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	srli.d	$t2, $a4, 3
	bstrins.d	$a6, $t2, 30, 3
	slli.d	$a5, $a5, 3
	slli.d	$a0, $a0, 3
	ori	$t2, $zero, 8
	ori	$t3, $zero, 64
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %for.cond4.for.inc28_crit_edge.split
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_10:                               # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_15 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	slli.d	$t4, $a2, 3
	ldx.d	$t5, $a1, $t4
	ldx.d	$t4, $t5, $a5
	ldx.d	$t5, $t5, $a0
	ori	$t6, $zero, 1
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %for.cond7.for.inc25_crit_edge
                                        #   in Loop: Header=BB3_12 Depth=2
	addi.d	$t6, $t6, 1
	beq	$t6, $a7, .LBB3_9
.LBB3_12:                               # %for.cond7.preheader
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_15 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	slli.d	$t8, $t6, 3
	ldx.d	$t7, $t4, $t8
	ldx.d	$t8, $t5, $t8
	ori	$fp, $zero, 1
	bltu	$a4, $t2, .LBB3_17
# %bb.13:                               # %for.cond7.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	sub.d	$s0, $t8, $t7
	ori	$fp, $zero, 1
	bltu	$s0, $t3, .LBB3_17
# %bb.14:                               # %vector.body312.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	addi.d	$fp, $t7, 40
	addi.d	$s0, $t8, 40
	move	$s1, $t1
	.p2align	4, , 16
.LBB3_15:                               # %vector.body312
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $fp, -32
	xvld	$xr1, $fp, 0
	xvst	$xr0, $s0, -32
	xvst	$xr1, $s0, 0
	addi.d	$fp, $fp, 64
	addi.d	$s1, $s1, -8
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB3_15
# %bb.16:                               # %middle.block318
                                        #   in Loop: Header=BB3_12 Depth=2
	move	$fp, $a6
	beq	$t1, $a4, .LBB3_11
.LBB3_17:                               # %for.body9.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	alsl.d	$t8, $fp, $t8, 3
	alsl.d	$t7, $fp, $t7, 3
	sub.d	$fp, $t0, $fp
	.p2align	4, , 16
.LBB3_18:                               # %for.body9
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t7, 0
	fst.d	$fa0, $t8, 0
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, -1
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB3_18
	b	.LBB3_11
.LBB3_19:                               # %if.else
	ori	$a4, $zero, 5
	bltu	$a4, $a0, .LBB3_86
# %bb.20:                               # %if.else
	slli.d	$a4, $a0, 2
	pcalau12i	$a5, %pc_hi20(.LJTI3_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI3_0)
	ldx.w	$a4, $a5, $a4
	move	$t0, $zero
	move	$a6, $zero
	add.d	$a4, $a5, $a4
	ori	$a5, $zero, 1
	jr	$a4
.LBB3_21:                               # %sw.bb111
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a5, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $a5, 1
.LBB3_22:                               # %sw.bb113
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB3_86
# %bb.23:                               # %for.cond118.preheader.lr.ph
	pcalau12i	$a4, %pc_hi20(y_block_size)
	ld.w	$a6, $a4, %pc_lo12(y_block_size)
	addi.w	$a7, $zero, -1
	blt	$a6, $a7, .LBB3_86
# %bb.24:                               # %for.cond118.preheader.lr.ph
	pcalau12i	$a4, %pc_hi20(z_block_size)
	ld.w	$a4, $a4, %pc_lo12(z_block_size)
	blt	$a4, $a7, .LBB3_86
# %bb.25:                               # %for.cond118.preheader.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.w	$a4, $a4, 2
	addi.d	$a6, $a6, 2
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a7, $a4, 31, 0
	bstrpick.d	$t0, $a4, 31, 3
	slli.d	$t0, $t0, 3
	slli.d	$a5, $a5, 3
	slli.d	$a0, $a0, 3
	ori	$t1, $zero, 8
	ori	$t2, $zero, 64
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_26:                               # %for.cond118.for.inc150_crit_edge.split
                                        #   in Loop: Header=BB3_27 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_27:                               # %for.cond118.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_35 Depth 3
	slli.d	$t3, $a2, 3
	ldx.d	$t4, $a1, $t3
	ldx.d	$t3, $t4, $a5
	ldx.d	$t4, $t4, $a0
	move	$t5, $zero
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %for.cond122.for.inc147_crit_edge
                                        #   in Loop: Header=BB3_29 Depth=2
	addi.d	$t5, $t5, 1
	beq	$t5, $a6, .LBB3_26
.LBB3_29:                               # %for.cond122.preheader
                                        #   Parent Loop BB3_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_35 Depth 3
	slli.d	$t7, $t5, 3
	ldx.d	$t6, $t3, $t7
	ldx.d	$t7, $t4, $t7
	move	$t8, $zero
	bltu	$a4, $t1, .LBB3_34
# %bb.30:                               # %for.cond122.preheader
                                        #   in Loop: Header=BB3_29 Depth=2
	sub.d	$fp, $t7, $t6
	bltu	$fp, $t2, .LBB3_34
# %bb.31:                               # %vector.body282.preheader
                                        #   in Loop: Header=BB3_29 Depth=2
	addi.d	$t8, $t7, 32
	addi.d	$fp, $t6, 32
	move	$s0, $t0
	.p2align	4, , 16
.LBB3_32:                               # %vector.body282
                                        #   Parent Loop BB3_27 Depth=1
                                        #     Parent Loop BB3_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $fp, -32
	xvld	$xr1, $fp, 0
	xvst	$xr0, $t8, -32
	xvst	$xr1, $t8, 0
	addi.d	$s0, $s0, -8
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB3_32
# %bb.33:                               # %middle.block287
                                        #   in Loop: Header=BB3_29 Depth=2
	move	$t8, $t0
	beq	$t0, $a7, .LBB3_28
.LBB3_34:                               # %for.body125.preheader
                                        #   in Loop: Header=BB3_29 Depth=2
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$t6, $t8, $t6, 3
	sub.d	$t8, $a7, $t8
	.p2align	4, , 16
.LBB3_35:                               # %for.body125
                                        #   Parent Loop BB3_27 Depth=1
                                        #     Parent Loop BB3_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t6, 0
	fst.d	$fa0, $t7, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB3_35
	b	.LBB3_28
.LBB3_36:                               # %sw.bb153
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a5, $a0, %pc_lo12(y_block_size)
	addi.w	$t0, $a5, 1
.LBB3_37:                               # %sw.bb155
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB3_86
# %bb.38:                               # %for.cond160.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a4, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $zero, -1
	blt	$a4, $a0, .LBB3_86
# %bb.39:                               # %for.cond160.preheader.lr.ph
	pcalau12i	$a6, %pc_hi20(z_block_size)
	ld.w	$a6, $a6, %pc_lo12(z_block_size)
	blt	$a6, $a0, .LBB3_86
# %bb.40:                               # %for.cond160.preheader.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.w	$a3, $a6, 2
	addi.d	$a4, $a4, 2
	bstrpick.d	$a4, $a4, 31, 0
	bstrpick.d	$a6, $a3, 31, 0
	bstrpick.d	$a7, $a3, 31, 3
	slli.d	$a7, $a7, 3
	slli.d	$a5, $a5, 3
	slli.d	$t0, $t0, 3
	ori	$t1, $zero, 8
	ori	$t2, $zero, 64
	b	.LBB3_42
	.p2align	4, , 16
.LBB3_41:                               # %for.cond160.for.inc192_crit_edge.split
                                        #   in Loop: Header=BB3_42 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB3_86
.LBB3_42:                               # %for.cond160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
	slli.d	$t3, $a2, 3
	ldx.d	$t3, $a1, $t3
	move	$t4, $zero
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %for.cond164.for.inc189_crit_edge
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.d	$t4, $t4, 1
	beq	$t4, $a4, .LBB3_41
.LBB3_44:                               # %for.cond164.preheader
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_47 Depth 3
                                        #       Child Loop BB3_50 Depth 3
	slli.d	$t5, $t4, 3
	ldx.d	$t6, $t3, $t5
	ldx.d	$t5, $t6, $a5
	ldx.d	$t6, $t6, $t0
	move	$t7, $zero
	bltu	$a3, $t1, .LBB3_49
# %bb.45:                               # %for.cond164.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	sub.d	$t8, $t6, $t5
	bltu	$t8, $t2, .LBB3_49
# %bb.46:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.d	$t7, $t6, 32
	addi.d	$t8, $t5, 32
	move	$fp, $a7
	.p2align	4, , 16
.LBB3_47:                               # %vector.body
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$fp, $fp, -8
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	bnez	$fp, .LBB3_47
# %bb.48:                               # %middle.block
                                        #   in Loop: Header=BB3_44 Depth=2
	move	$t7, $a7
	beq	$a7, $a6, .LBB3_43
.LBB3_49:                               # %for.body167.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	alsl.d	$t6, $t7, $t6, 3
	alsl.d	$t5, $t7, $t5, 3
	sub.d	$t7, $a6, $t7
	.p2align	4, , 16
.LBB3_50:                               # %for.body167
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t5, 0
	fst.d	$fa0, $t6, 0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 8
	bnez	$t7, .LBB3_50
	b	.LBB3_43
.LBB3_51:                               # %sw.bb31
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a5, $a0, %pc_lo12(y_block_size)
	addi.w	$t1, $a5, 1
.LBB3_52:                               # %sw.bb33
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB3_86
# %bb.53:                               # %for.cond38.preheader.lr.ph
	pcalau12i	$a4, %pc_hi20(x_block_size)
	ld.w	$a6, $a4, %pc_lo12(x_block_size)
	blt	$a6, $a0, .LBB3_86
# %bb.54:                               # %for.cond38.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a0, $a0, %pc_lo12(z_block_size)
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB3_86
# %bb.55:                               # %for.cond38.preheader.lr.ph.split.split
	add.w	$a3, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a0, 1
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	srli.d	$t2, $a0, 3
	bstrins.d	$a4, $t2, 30, 3
	slli.d	$a5, $a5, 3
	slli.d	$t1, $t1, 3
	ori	$t2, $zero, 8
	ori	$t3, $zero, 64
	b	.LBB3_57
	.p2align	4, , 16
.LBB3_56:                               # %for.cond38.for.inc68_crit_edge.split
                                        #   in Loop: Header=BB3_57 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB3_86
.LBB3_57:                               # %for.cond38.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_59 Depth 2
                                        #       Child Loop BB3_62 Depth 3
                                        #       Child Loop BB3_65 Depth 3
	slli.d	$t4, $a2, 3
	ldx.d	$t4, $a1, $t4
	ori	$t5, $zero, 1
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %for.cond41.for.inc65_crit_edge
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.d	$t5, $t5, 1
	beq	$t5, $a6, .LBB3_56
.LBB3_59:                               # %for.cond41.preheader
                                        #   Parent Loop BB3_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_62 Depth 3
                                        #       Child Loop BB3_65 Depth 3
	slli.d	$t6, $t5, 3
	ldx.d	$t7, $t4, $t6
	ldx.d	$t6, $t7, $a5
	ldx.d	$t7, $t7, $t1
	ori	$t8, $zero, 1
	bltu	$a0, $t2, .LBB3_64
# %bb.60:                               # %for.cond41.preheader
                                        #   in Loop: Header=BB3_59 Depth=2
	sub.d	$fp, $t7, $t6
	ori	$t8, $zero, 1
	bltu	$fp, $t3, .LBB3_64
# %bb.61:                               # %vector.body297.preheader
                                        #   in Loop: Header=BB3_59 Depth=2
	addi.d	$t8, $t6, 40
	addi.d	$fp, $t7, 40
	move	$s0, $t0
	.p2align	4, , 16
.LBB3_62:                               # %vector.body297
                                        #   Parent Loop BB3_57 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $fp, -32
	xvst	$xr1, $fp, 0
	addi.d	$t8, $t8, 64
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB3_62
# %bb.63:                               # %middle.block302
                                        #   in Loop: Header=BB3_59 Depth=2
	move	$t8, $a4
	beq	$t0, $a0, .LBB3_58
.LBB3_64:                               # %for.body43.preheader
                                        #   in Loop: Header=BB3_59 Depth=2
	alsl.d	$t7, $t8, $t7, 3
	alsl.d	$t6, $t8, $t6, 3
	sub.d	$t8, $a7, $t8
	.p2align	4, , 16
.LBB3_65:                               # %for.body43
                                        #   Parent Loop BB3_57 Depth=1
                                        #     Parent Loop BB3_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t6, 0
	fst.d	$fa0, $t7, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB3_65
	b	.LBB3_58
.LBB3_66:                               # %sw.bb195
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a5, $a0, %pc_lo12(z_block_size)
	addi.w	$a6, $a5, 1
.LBB3_67:                               # %sw.bb197
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB3_86
# %bb.68:                               # %for.cond202.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(x_block_size)
	ld.w	$a4, $a0, %pc_lo12(x_block_size)
	addi.w	$a0, $zero, -1
	blt	$a4, $a0, .LBB3_86
# %bb.69:                               # %for.cond202.preheader.lr.ph
	pcalau12i	$a7, %pc_hi20(y_block_size)
	ld.w	$a7, $a7, %pc_lo12(y_block_size)
	blt	$a7, $a0, .LBB3_86
# %bb.70:                               # %for.cond202.preheader.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a7, 2
	addi.d	$a3, $a4, 2
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a4, $a7, 31, 0
	slli.d	$a5, $a5, 3
	slli.d	$a6, $a6, 3
	.p2align	4, , 16
.LBB3_71:                               # %for.cond202.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
                                        #       Child Loop BB3_73 Depth 3
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $a1, $a7
	move	$t0, $zero
	.p2align	4, , 16
.LBB3_72:                               # %for.cond206.preheader
                                        #   Parent Loop BB3_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_73 Depth 3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a7, $t1
	move	$t2, $a4
	.p2align	4, , 16
.LBB3_73:                               # %for.body209
                                        #   Parent Loop BB3_71 Depth=1
                                        #     Parent Loop BB3_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $t1, 0
	fldx.d	$fa0, $t3, $a5
	fstx.d	$fa0, $t3, $a6
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB3_73
# %bb.74:                               # %for.cond206.for.inc231_crit_edge
                                        #   in Loop: Header=BB3_72 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $a3, .LBB3_72
# %bb.75:                               # %for.cond202.for.inc234_crit_edge.split
                                        #   in Loop: Header=BB3_71 Depth=1
	addi.d	$a2, $a2, 1
	blt	$a2, $a0, .LBB3_71
	b	.LBB3_86
.LBB3_76:                               # %sw.bb71
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.w	$a5, $a0, %pc_lo12(z_block_size)
	addi.w	$a6, $a5, 1
.LBB3_77:                               # %sw.bb73
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB3_86
# %bb.78:                               # %for.cond78.preheader.lr.ph
	pcalau12i	$a4, %pc_hi20(x_block_size)
	ld.w	$a4, $a4, %pc_lo12(x_block_size)
	blt	$a4, $a0, .LBB3_86
# %bb.79:                               # %for.cond78.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(y_block_size)
	ld.w	$a7, $a0, %pc_lo12(y_block_size)
	ori	$a0, $zero, 1
	blt	$a7, $a0, .LBB3_86
# %bb.80:                               # %for.cond78.preheader.lr.ph.split.split
	add.w	$a0, $a3, $a2
	ld.d	$a1, $a1, 184
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a4, 1
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a4, $a7, 31, 0
	addi.d	$a4, $a4, -1
	slli.d	$a5, $a5, 3
	slli.d	$a6, $a6, 3
	.p2align	4, , 16
.LBB3_81:                               # %for.cond78.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_82 Depth 2
                                        #       Child Loop BB3_83 Depth 3
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $a1, $a7
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB3_82:                               # %for.cond81.preheader
                                        #   Parent Loop BB3_81 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_83 Depth 3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a7, $t1
	addi.d	$t1, $t1, 8
	move	$t2, $a4
	.p2align	4, , 16
.LBB3_83:                               # %for.body83
                                        #   Parent Loop BB3_81 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $t1, 0
	fldx.d	$fa0, $t3, $a5
	fstx.d	$fa0, $t3, $a6
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB3_83
# %bb.84:                               # %for.cond81.for.inc105_crit_edge
                                        #   in Loop: Header=BB3_82 Depth=2
	addi.d	$t0, $t0, 1
	bne	$t0, $a3, .LBB3_82
# %bb.85:                               # %for.cond78.for.inc108_crit_edge.split
                                        #   in Loop: Header=BB3_81 Depth=1
	addi.d	$a2, $a2, 1
	blt	$a2, $a0, .LBB3_81
.LBB3_86:                               # %if.end
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	apply_bc, .Lfunc_end3-apply_bc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_21-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_36-.LJTI3_0
	.word	.LBB3_67-.LJTI3_0
	.word	.LBB3_66-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_5-.LJTI3_1
	.word	.LBB3_4-.LJTI3_1
	.word	.LBB3_52-.LJTI3_1
	.word	.LBB3_51-.LJTI3_1
	.word	.LBB3_77-.LJTI3_1
	.word	.LBB3_76-.LJTI3_1
                                        # -- End function
	.type	.L__const.comm.permutations,@object # @__const.comm.permutations
	.p2align	2, 0x0
.L__const.comm.permutations:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.comm.permutations, 72

	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	counter_same,@object            # @counter_same
	.comm	counter_same,12,4
	.type	timer_comm_same,@object         # @timer_comm_same
	.comm	timer_comm_same,24,8
	.type	counter_diff,@object            # @counter_diff
	.comm	counter_diff,12,4
	.type	timer_comm_diff,@object         # @timer_comm_diff
	.comm	timer_comm_diff,24,8
	.type	counter_bc,@object              # @counter_bc
	.comm	counter_bc,12,4
	.type	timer_comm_bc,@object           # @timer_comm_bc
	.comm	timer_comm_bc,24,8
	.type	timer_comm_dir,@object          # @timer_comm_dir
	.comm	timer_comm_dir,24,8
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
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
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
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
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
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
	.type	num_refined,@object             # @num_refined
	.comm	num_refined,4,4
	.type	num_reformed,@object            # @num_reformed
	.comm	num_reformed,4,4
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: misconnected block"
	.size	.Lstr, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
