	.file	"opo.c"
	.text
	.globl	phase_assignment                # -- Begin function phase_assignment
	.p2align	5
	.type	phase_assignment,@function
phase_assignment:                       # @phase_assignment
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	bstrpick.d	$a0, $a1, 31, 31
	add.d	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(skip_make_sparse)
	ld.d	$s1, $a0, %got_pc_lo12(skip_make_sparse)
	bstrpick.d	$a0, $a2, 31, 1
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	bstrpick.d	$a0, $a1, 62, 61
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 2
	bstrpick.d	$a0, $a0, 31, 31
	add.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	sub.d	$a1, $a1, $a0
	ld.d	$a0, $fp, 40
	pcalau12i	$s2, %pc_hi20(opo_exact)
	st.w	$a1, $s2, %pc_lo12(opo_exact)
	addi.w	$a1, $a2, 0
	srai.d	$s0, $a1, 1
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB0_2:                                # %if.end8
	andi	$a0, $s0, 1
	bnez	$a0, .LBB0_4
# %bb.3:                                # %if.else
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(find_phase)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	b	.LBB0_7
.LBB0_4:                                # %if.then10
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$s0, $a0, 88
	ld.w	$a0, $s0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB0_6
# %bb.5:                                # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_6:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(repeated_phase_assignment)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %if.end21
	st.w	$zero, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_phase)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s2, %pc_lo12(opo_exact)
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	beqz	$s1, .LBB0_10
# %bb.8:                                # %if.then.i
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(summary)
	ld.d	$a1, $a1, %got_pc_lo12(summary)
	ld.w	$a1, $a1, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB0_13
# %bb.9:                                # %if.then4.i
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	b	.LBB0_12
.LBB0_10:                               # %if.else.i
	move	$a0, $a4
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(summary)
	ld.d	$a1, $a1, %got_pc_lo12(summary)
	ld.w	$a1, $a1, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB0_13
# %bb.11:                               # %if.then15.i
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
.LBB0_12:                               # %if.then4.i
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(print_trace)
	jr	$t8
.LBB0_13:                               # %minimize.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	phase_assignment, .Lfunc_end0-phase_assignment
                                        # -- End function
	.globl	repeated_phase_assignment       # -- Begin function repeated_phase_assignment
	.p2align	5
	.type	repeated_phase_assignment,@function
repeated_phase_assignment:              # @repeated_phase_assignment
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
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s5, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s5, 124
	ld.d	$a2, $s5, 32
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	ori	$s6, $zero, 1
	blt	$a1, $s6, .LBB1_7
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a0
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(trace)
	ld.d	$s7, $a0, %got_pc_lo12(trace)
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$s8, $a0, %got_pc_lo12(summary)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s3, $a0, %pc_lo12(.L.str.2)
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 124
	ld.d	$a1, $s5, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB1_7
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 40
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(find_phase)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 124
	ld.d	$a2, $s5, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	move	$s4, $a0
	add.w	$a1, $s0, $a1
	srai.d	$a0, $a1, 5
	addi.d	$a0, $a0, 1
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $s4, $a0
	sll.w	$a1, $s6, $a1
	and	$a2, $a1, $a2
	beqz	$a2, .LBB1_5
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s8, 0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB1_2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $fp, 40
	ldx.w	$a3, $a2, $a0
	andn	$a1, $a3, $a1
	stx.w	$a1, $a2, $a0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s8, 0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB1_2
.LBB1_6:                                # %if.then27
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_7:                                # %for.end
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
	.size	repeated_phase_assignment, .Lfunc_end1-repeated_phase_assignment
                                        # -- End function
	.globl	find_phase                      # -- Begin function find_phase
	.p2align	5
	.type	find_phase,@function
find_phase:                             # @find_phase
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
	pcalau12i	$a3, %got_pc_hi20(cube)
	ld.d	$s4, $a3, %got_pc_lo12(cube)
	ld.d	$s0, $s4, 88
	ld.w	$a3, $s0, 0
	move	$s2, $a2
	move	$fp, $a1
	move	$s3, $a0
	slli.d	$a0, $a3, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB2_2
# %bb.1:                                # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_2:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(new_PLA)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 16
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	st.d	$a0, $s1, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	beqz	$s2, .LBB2_6
# %bb.3:                                # %if.then
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB2_5
# %bb.4:                                # %cond.false22
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_5:                                # %cond.end30
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_phase)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %if.end
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(output_phase_setup)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$s5, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $s5, 0
	beqz	$a0, .LBB2_8
# %bb.7:                                # %if.then40
	ld.d	$s3, $s1, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %if.end44
	pcalau12i	$a0, %pc_hi20(opo_exact)
	ld.w	$s3, $a0, %pc_lo12(opo_exact)
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 16
	move	$s2, $a0
	beqz	$s3, .LBB2_11
# %bb.9:                                # %if.then.i
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	st.d	$a0, $s1, 0
	beqz	$a1, .LBB2_14
# %bb.10:                               # %if.then4.i
	move	$s3, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	b	.LBB2_13
.LBB2_11:                               # %if.else.i
	move	$a0, $a4
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	st.d	$a0, $s1, 0
	beqz	$a1, .LBB2_14
# %bb.12:                               # %if.then15.i
	move	$s3, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
.LBB2_13:                               # %minimize.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %minimize.exit
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	move	$s2, $a0
	move	$a0, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(opo)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	st.d	$a0, $s1, 0
	beqz	$a1, .LBB2_16
# %bb.15:                               # %if.then53
	move	$s3, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %if.end57
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free_PLA)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 124
	ld.d	$a1, $s4, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a1, $a0
	sub.d	$a3, $a2, $fp
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	sub.d	$a2, $a2, $a3
	stx.w	$a2, $a1, $a0
	pcaddu18i	$ra, %call36(cube_setup)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	find_phase, .Lfunc_end2-find_phase
                                        # -- End function
	.globl	opo                             # -- Begin function opo
	.p2align	5
	.type	opo,@function
opo:                                    # @opo
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
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a1
	ld.w	$s2, $a1, 12
	move	$fp, $a4
	move	$s3, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ori	$a1, $zero, 33
	lu12i.w	$s8, 131071
	blt	$s2, $a1, .LBB3_2
# %bb.1:                                # %cond.false
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s8, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB3_2:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	move	$s4, $a0
	blt	$fp, $s6, .LBB3_11
# %bb.3:                                # %for.body.lr.ph
	ld.w	$a3, $s1, 12
	blt	$a3, $s6, .LBB3_11
# %bb.4:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s1, 24
	move	$a4, $zero
	ori	$a5, $zero, 1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                # %for.inc25
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.w	$a4, $a4, 1
	beq	$a4, $fp, .LBB3_11
.LBB3_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	blt	$a3, $a5, .LBB3_5
# %bb.7:                                # %for.body12.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.w	$a6, $a0, 124
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a1, $a6
	move	$a6, $zero
	add.w	$t0, $a7, $a4
	srai.d	$a7, $t0, 5
	sll.w	$t0, $a5, $t0
	move	$t1, $a2
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_9 Depth=2
	ld.w	$t2, $s1, 0
	addi.w	$a6, $a6, 1
	alsl.d	$t1, $t2, $t1, 2
	bge	$a6, $a3, .LBB3_5
.LBB3_9:                                # %for.body12
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t2, $a7, $t1, 2
	ld.w	$t2, $t2, 4
	and	$t2, $t2, $t0
	beqz	$t2, .LBB3_8
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB3_9 Depth=2
	bstrpick.d	$a3, $a6, 31, 5
	slli.d	$a3, $a3, 2
	bstrpick.d	$a3, $a3, 60, 2
	alsl.d	$a3, $a3, $s4, 2
	ld.w	$t2, $a3, 4
	sll.w	$t3, $a5, $a6
	andn	$t2, $t2, $t3
	st.w	$t2, $a3, 4
	ld.w	$a3, $s1, 12
	b	.LBB3_8
.LBB3_11:                               # %for.end27
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s7, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $s7, 124
	ld.d	$a1, $s7, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	sub.w	$a1, $a0, $fp
	bstrpick.d	$a0, $a1, 31, 31
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.w	$a0, $a1, $a0
	srai.d	$a3, $a0, 1
	add.w	$a0, $a3, $fp
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a5, $a0, -1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $fp
	pcaddu18i	$ra, %call36(opo_recur)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$s2, $a0, 24
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s7, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	move	$s0, $a0
	blt	$a1, $s6, .LBB3_16
# %bb.12:                               # %for.body42.preheader
	ld.d	$s6, $s1, 24
	move	$s3, $zero
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               # %for.inc54
                                        #   in Loop: Header=BB3_14 Depth=1
	ld.w	$a0, $s1, 0
	addi.w	$s3, $s3, 1
	alsl.d	$s6, $a0, $s6, 2
	bge	$s3, $a1, .LBB3_16
.LBB3_14:                               # %for.body42
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s3, 31, 5
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$a0, $a0, $s2, 2
	ld.w	$a0, $a0, 4
	srl.w	$a0, $a0, $s3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_13
# %bb.15:                               # %if.then51
                                        #   in Loop: Header=BB3_14 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	move	$s0, $a0
	b	.LBB3_13
.LBB3_16:                               # %for.end59
	beqz	$s4, .LBB3_18
# %bb.17:                               # %if.then61
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_18:                               # %if.end62
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cube1list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s7, 0
	move	$s5, $a0
	ori	$s6, $zero, 8
	ori	$s0, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $s0, .LBB3_20
# %bb.19:                               # %cond.false68
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s8, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB3_20:                               # %cond.end73
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s7, $s7, 0
	move	$s4, $a0
	blt	$s7, $s0, .LBB3_22
# %bb.21:                               # %cond.false82
	addi.d	$a0, $s7, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s8, 4092
	and	$a0, $a0, $a1
	addi.d	$s6, $a0, 8
.LBB3_22:                               # %cond.end87
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a2, $a1, $a2
	ori	$s2, $zero, 1
	move	$s6, $a0
	blt	$a2, $s2, .LBB3_31
# %bb.23:                               # %for.body102.lr.ph
	ld.d	$s7, $s1, 24
	ld.w	$a0, $s5, 0
	alsl.d	$s3, $a2, $s7, 2
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_24:                               # %for.inc124.loopexit
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.w	$a1, $s1, 0
.LBB3_25:                               # %for.inc124
                                        #   in Loop: Header=BB3_26 Depth=1
	alsl.d	$s7, $a1, $s7, 2
	bgeu	$s7, $s3, .LBB3_31
.LBB3_26:                               # %for.body102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	ld.w	$a2, $s5, 12
	mul.w	$a2, $a0, $a2
	blt	$a2, $s2, .LBB3_25
# %bb.27:                               # %for.body112.preheader
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.d	$s8, $s5, 24
	alsl.d	$s0, $a2, $s8, 2
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %for.inc119
                                        #   in Loop: Header=BB3_29 Depth=2
	ld.w	$a0, $s5, 0
	alsl.d	$s8, $a0, $s8, 2
	bgeu	$s8, $s0, .LBB3_24
.LBB3_29:                               # %for.body112
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_28
# %bb.30:                               # %if.then115
                                        #   in Loop: Header=BB3_29 Depth=2
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s4
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB3_28
.LBB3_31:                               # %for.end128
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB3_33
# %bb.32:                               # %if.then130
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_33:                               # %if.end131
	ori	$a0, $zero, 2
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_40
# %bb.34:                               # %for.body135.preheader
	ld.d	$a0, $s3, 16
	ori	$s2, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_37
	.p2align	4, , 16
.LBB3_35:                               # %if.then158
                                        #   in Loop: Header=BB3_37 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
.LBB3_36:                               # %for.inc169
                                        #   in Loop: Header=BB3_37 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $s6, .LBB3_41
.LBB3_37:                               # %for.body135
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, 124
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a0, $a1
	add.w	$a2, $fp, $a3
	srai.d	$a1, $a2, 5
	addi.d	$a1, $a1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $s4, $a1
	sll.w	$a2, $s2, $a2
	and	$a4, $a2, $a4
	beqz	$a4, .LBB3_36
# %bb.38:                               # %if.then147
                                        #   in Loop: Header=BB3_37 Depth=1
	add.d	$a4, $s5, $fp
	add.w	$a3, $a4, $a3
	srai.d	$a4, $a3, 5
	alsl.d	$a4, $a4, $s4, 2
	ld.w	$a4, $a4, 4
	srl.w	$a3, $a4, $a3
	andi	$a3, $a3, 1
	bnez	$a3, .LBB3_35
# %bb.39:                               # %if.else
                                        #   in Loop: Header=BB3_37 Depth=1
	ldx.w	$a3, $s0, $a1
	andn	$a2, $a3, $a2
	stx.w	$a2, $s0, $a1
	b	.LBB3_36
.LBB3_40:                               # %for.end171
	beqz	$s4, .LBB3_42
.LBB3_41:                               # %if.then173
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_42:                               # %if.end174
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	opo, .Lfunc_end3-opo
                                        # -- End function
	.globl	opo_recur                       # -- Begin function opo_recur
	.p2align	5
	.type	opo_recur,@function
opo_recur:                              # @opo_recur
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(opo_recur.level)
	ld.w	$a6, $s6, %pc_lo12(opo_recur.level)
	addi.d	$a6, $a6, 1
	st.w	$a6, $s6, %pc_lo12(opo_recur.level)
	bne	$a4, $a5, .LBB4_2
# %bb.1:                                # %if.then
	add.w	$a3, $a4, $a3
	move	$a1, $a2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(opo_leaf)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB4_5
.LBB4_2:                                # %if.else
	add.d	$a6, $a5, $a4
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srai.d	$s0, $a6, 1
	move	$s1, $a0
	move	$s2, $a1
	move	$s3, $a2
	move	$s4, $a3
	move	$s5, $a5
	move	$a5, $s0
	pcaddu18i	$ra, %call36(opo_recur)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a4, $s0, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(opo_recur)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(opo_recur.level)
	move	$s0, $a0
	addi.d	$a0, $a1, -1
	sltui	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(unate_intersect)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(trace)
	ld.d	$a1, $a1, %got_pc_lo12(trace)
	ld.w	$a1, $a1, 0
	move	$s1, $a0
	beqz	$a1, .LBB4_4
# %bb.3:                                # %if.then7
	ld.w	$a0, $s6, %pc_lo12(opo_recur.level)
	ld.w	$s2, $s1, 12
	ld.w	$s3, $fp, 12
	ld.w	$s4, $s0, 12
	addi.w	$s5, $a0, -1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s5
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %if.end14
	ld.w	$a0, $s6, %pc_lo12(opo_recur.level)
	addi.d	$a0, $a0, -1
	st.w	$a0, $s6, %pc_lo12(opo_recur.level)
	move	$a0, $s1
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
	ret
.Lfunc_end4:
	.size	opo_recur, .Lfunc_end4-opo_recur
                                        # -- End function
	.globl	opo_leaf                        # -- Begin function opo_leaf
	.p2align	5
	.type	opo_leaf,@function
opo_leaf:                               # @opo_leaf
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(cube)
	ld.d	$a4, $a4, %got_pc_lo12(cube)
	ld.w	$a5, $a4, 124
	ld.d	$a4, $a4, 16
	move	$fp, $a0
	slli.d	$a0, $a5, 2
	ldx.w	$s5, $a4, $a0
	ld.w	$a4, $fp, 12
	move	$s1, $a3
	move	$s4, $a2
	move	$s2, $a1
	ori	$a0, $zero, 2
	move	$a1, $a4
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s0, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$s3, $a0, $a2, 2
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB5_5
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	ld.d	$a2, $fp, 24
	add.w	$a4, $s5, $s4
	srai.d	$a3, $a4, 5
	sll.w	$a4, $s6, $a4
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a5, $fp, 0
	addi.w	$a1, $a1, 1
	alsl.d	$a2, $a5, $a2, 2
	bge	$a1, $a0, .LBB5_5
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a5, $a3, $a2, 2
	ld.w	$a5, $a5, 4
	and	$a5, $a5, $a4
	beqz	$a5, .LBB5_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	bstrpick.d	$a0, $a1, 31, 5
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$a0, $a0, $s3, 2
	ld.w	$a5, $a0, 4
	sll.w	$a6, $s6, $a1
	andn	$a5, $a5, $a6
	st.w	$a5, $a0, 4
	ld.w	$a0, $fp, 12
	b	.LBB5_2
.LBB5_5:                                # %for.end
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s0, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$s3, $a0, $a2, 2
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	blt	$a0, $s6, .LBB5_10
# %bb.6:                                # %for.body35.lr.ph
	move	$a1, $zero
	add.w	$a5, $s5, $s1
	ld.d	$a2, $fp, 24
	srai.d	$a3, $a5, 5
	ori	$a4, $zero, 1
	sll.w	$a5, $a4, $a5
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %for.inc54
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.w	$a6, $fp, 0
	addi.w	$a1, $a1, 1
	alsl.d	$a2, $a6, $a2, 2
	bge	$a1, $a0, .LBB5_10
.LBB5_8:                                # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a6, $a3, $a2, 2
	ld.w	$a6, $a6, 4
	and	$a6, $a6, $a5
	beqz	$a6, .LBB5_7
# %bb.9:                                # %if.then44
                                        #   in Loop: Header=BB5_8 Depth=1
	bstrpick.d	$a0, $a1, 31, 5
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$a0, $a0, $s3, 2
	ld.w	$a6, $a0, 4
	sll.w	$a7, $a4, $a1
	andn	$a6, $a6, $a7
	st.w	$a6, $a0, 4
	ld.w	$a0, $fp, 12
	b	.LBB5_7
.LBB5_10:                               # %for.end59
	move	$a0, $s0
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
	ret
.Lfunc_end5:
	.size	opo_leaf, .Lfunc_end5-opo_leaf
                                        # -- End function
	.globl	output_phase_setup              # -- Begin function output_phase_setup
	.p2align	5
	.type	output_phase_setup,@function
output_phase_setup:                     # @output_phase_setup
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
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s8, $a2, %got_pc_lo12(cube)
	ld.w	$a2, $s8, 124
	addi.w	$a3, $zero, -1
	move	$s2, $a1
	move	$fp, $a0
	bne	$a2, $a3, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 124
.LBB6_2:                                # %if.end
	ld.d	$s1, $fp, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s8, 32
	ld.d	$a3, $s8, 24
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ldx.w	$a1, $a1, $a2
	ldx.w	$s5, $a3, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.w	$s6, $a0, $s2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s7, $a1, $s2
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 124
	ld.d	$a1, $s8, 32
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a1, $a0
	add.d	$a2, $a2, $s7
	stx.w	$a2, $a1, $a0
	pcaddu18i	$ra, %call36(cube_setup)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s8, 88
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a0, $zero, 8
	ori	$a2, $zero, 33
	lu12i.w	$s3, 131071
	bltu	$a1, $a2, .LBB6_4
# %bb.3:                                # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s3, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB6_4:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	move	$s2, $a0
	bge	$s6, $a1, .LBB6_7
# %bb.5:                                # %for.body.preheader
	ori	$a0, $zero, 1
	move	$a1, $s6
	.p2align	4, , 16
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a2, $a1, 5
	alsl.d	$a2, $a2, $s2, 2
	ld.w	$a3, $a2, 4
	sll.w	$a4, $a0, $a1
	andn	$a3, $a3, $a4
	st.w	$a3, $a2, 4
	ld.w	$a2, $s8, 0
	addi.w	$a1, $a1, 1
	blt	$a1, $a2, .LBB6_6
.LBB6_7:                                # %for.end
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB6_9
# %bb.8:                                # %cond.false35
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s3, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB6_9:                                # %cond.end43
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 124
	ld.d	$a2, $s8, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	move	$s3, $a0
	bge	$a1, $s6, .LBB6_12
# %bb.10:                               # %for.body54.preheader
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB6_11:                               # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a2, $a1, 5
	alsl.d	$a2, $a2, $s3, 2
	ld.w	$a3, $a2, 4
	sll.w	$a4, $a0, $a1
	andn	$a3, $a3, $a4
	addi.w	$a1, $a1, 1
	st.w	$a3, $a2, 4
	bne	$s6, $a1, .LBB6_11
.LBB6_12:                               # %for.end65
	ld.w	$a0, $s1, 12
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $fp, 12
	ld.w	$a1, $s8, 0
	add.w	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 12
	ld.w	$a3, $fp, 12
	ld.w	$a1, $s8, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	add.w	$a0, $a3, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 12
	ld.w	$a1, $s8, 0
	st.d	$a0, $fp, 16
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s1, 0
	st.d	$a0, $fp, 8
	mul.w	$a1, $a2, $a1
	ori	$a4, $zero, 1
	addi.d	$a2, $s2, -28
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $s3, -28
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a2, $s5, 1
	blt	$a1, $a4, .LBB6_44
# %bb.13:                               # %for.body83.lr.ph
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a3, 16
	ld.d	$a7, $s1, 24
	ld.d	$t0, $a5, 24
	ld.d	$t1, $a6, 24
	alsl.d	$t2, $a1, $a7, 2
	addi.d	$a1, $t0, -28
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $t1, -28
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$t5, $zero, 8
	ori	$t6, $zero, 32
	b	.LBB6_16
	.p2align	4, , 16
.LBB6_14:                               # %if.then188
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a1, $a6, 12
	addi.d	$a1, $a1, -1
	st.w	$a1, $a6, 12
.LBB6_15:                               # %for.inc193
                                        #   in Loop: Header=BB6_16 Depth=1
	ld.w	$a1, $s1, 0
	alsl.d	$a7, $a1, $a7, 2
	bgeu	$a7, $t2, .LBB6_44
.LBB6_16:                               # %for.body83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
                                        #     Child Loop BB6_19 Depth 2
                                        #     Child Loop BB6_36 Depth 2
                                        #     Child Loop BB6_23 Depth 2
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_39 Depth 2
                                        #       Child Loop BB6_40 Depth 3
	ld.w	$a1, $a5, 12
	ld.w	$a3, $a5, 0
	addi.d	$t3, $a1, 1
	st.w	$t3, $a5, 12
	ld.w	$t8, $a6, 12
	mul.w	$ra, $a1, $a3
	slli.d	$s4, $ra, 2
	addi.d	$a1, $t8, 1
	st.w	$a1, $a6, 12
	ldx.wu	$a1, $t0, $s4
	ld.wu	$t4, $s2, 0
	alsl.d	$t7, $ra, $t0, 2
	ld.w	$s8, $a6, 0
	srli.d	$a1, $a1, 10
	andi	$a3, $t4, 1023
	bstrins.d	$t4, $a1, 63, 10
	sltu	$a1, $zero, $a3
	sub.d	$a1, $a3, $a1
	addi.d	$t3, $a1, 1
	stx.w	$t4, $t0, $s4
	bgeu	$t3, $t5, .LBB6_28
.LBB6_17:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a1, $a3
.LBB6_18:                               # %do.body.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.d	$t3, $a1, 1
	slli.d	$a3, $a1, 2
	alsl.d	$a3, $ra, $a3, 2
	add.d	$a3, $t0, $a3
	alsl.d	$t4, $a1, $a7, 2
	alsl.d	$a1, $a1, $s2, 2
	.p2align	4, , 16
.LBB6_19:                               # %do.body
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $a1, 0
	ld.w	$s0, $t4, 0
	and	$fp, $s0, $fp
	st.w	$fp, $a3, 0
	addi.d	$t3, $t3, -1
	addi.d	$a3, $a3, -4
	addi.d	$t4, $t4, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $t3, .LBB6_19
.LBB6_20:                               # %do.end
                                        #   in Loop: Header=BB6_16 Depth=1
	mul.w	$s8, $t8, $s8
	slli.d	$s4, $s8, 2
	ldx.wu	$a1, $t1, $s4
	ld.wu	$a3, $s3, 0
	alsl.d	$t8, $s8, $t1, 2
	srli.d	$t3, $a1, 10
	andi	$a1, $a3, 1023
	bstrins.d	$a3, $t3, 63, 10
	sltu	$t3, $zero, $a1
	sub.d	$t3, $a1, $t3
	addi.d	$t3, $t3, 1
	stx.w	$a3, $t1, $s4
	bgeu	$t3, $t5, .LBB6_33
.LBB6_21:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a3, $a1
.LBB6_22:                               # %do.body125.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	addi.d	$t3, $a3, 1
	slli.d	$a1, $a3, 2
	alsl.d	$a1, $s8, $a1, 2
	add.d	$a1, $t1, $a1
	alsl.d	$t4, $a3, $a7, 2
	alsl.d	$a3, $a3, $s3, 2
	.p2align	4, , 16
.LBB6_23:                               # %do.body125
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $a3, 0
	ld.w	$s0, $t4, 0
	and	$fp, $s0, $fp
	st.w	$fp, $a1, 0
	addi.d	$t3, $t3, -1
	addi.d	$a1, $a1, -4
	addi.d	$t4, $t4, -4
	addi.d	$a3, $a3, -4
	bltu	$a4, $t3, .LBB6_23
.LBB6_24:                               # %for.cond138.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a1, $s6
	bge	$s5, $s6, .LBB6_26
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_25:                               # %for.inc158
                                        #   in Loop: Header=BB6_26 Depth=2
	addi.w	$a1, $a1, 1
	beq	$a2, $a1, .LBB6_38
.LBB6_26:                               # %for.body141
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a3, $a1, 5
	addi.d	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$t4, $a7, $a3
	sll.w	$t3, $a4, $a1
	and	$t4, $t4, $t3
	beqz	$t4, .LBB6_25
# %bb.27:                               # %if.then149
                                        #   in Loop: Header=BB6_26 Depth=2
	ldx.w	$t4, $t7, $a3
	or	$t3, $t4, $t3
	stx.w	$t3, $t7, $a3
	b	.LBB6_25
	.p2align	4, , 16
.LBB6_28:                               # %vector.memcheck237
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.d	$a1, $s2, $t7
	bltu	$a1, $t6, .LBB6_17
# %bb.29:                               # %vector.memcheck237
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.d	$a1, $a7, $t7
	bltu	$a1, $t6, .LBB6_17
# %bb.30:                               # %vector.ph245
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$fp, $t3
	bstrins.d	$fp, $zero, 2, 0
	sub.d	$a1, $a3, $fp
	alsl.d	$t4, $a3, $s4, 2
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	add.d	$s4, $s0, $t4
	alsl.d	$t4, $a3, $a7, 2
	addi.d	$s0, $t4, -28
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t4, 2
	move	$t4, $fp
	.p2align	4, , 16
.LBB6_31:                               # %vector.body248
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, 0
	xvld	$xr1, $s0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $s4, 0
	addi.d	$t4, $t4, -8
	addi.d	$s4, $s4, -32
	addi.d	$s0, $s0, -32
	addi.d	$a3, $a3, -32
	bnez	$t4, .LBB6_31
# %bb.32:                               # %middle.block257
                                        #   in Loop: Header=BB6_16 Depth=1
	bne	$t3, $fp, .LBB6_18
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_33:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.d	$a3, $s3, $t8
	bltu	$a3, $t6, .LBB6_21
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_16 Depth=1
	sub.d	$a3, $a7, $t8
	bltu	$a3, $t6, .LBB6_21
# %bb.35:                               # %vector.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$t4, $t3
	bstrins.d	$t4, $zero, 2, 0
	sub.d	$a3, $a1, $t4
	alsl.d	$fp, $a1, $s4, 2
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s4, $s0, $fp
	alsl.d	$fp, $a1, $a7, 2
	addi.d	$s0, $fp, -28
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 2
	move	$fp, $t4
	.p2align	4, , 16
.LBB6_36:                               # %vector.body
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvld	$xr1, $s0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $s4, 0
	addi.d	$fp, $fp, -8
	addi.d	$s4, $s4, -32
	addi.d	$s0, $s0, -32
	addi.d	$a1, $a1, -32
	bnez	$fp, .LBB6_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB6_16 Depth=1
	bne	$t3, $t4, .LBB6_22
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_38:                               # %for.body164.outer.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	ori	$t3, $zero, 1
	move	$a1, $s6
.LBB6_39:                               # %for.body164.outer
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_40 Depth 3
	move	$a3, $a1
	.p2align	4, , 16
.LBB6_40:                               # %for.body164
                                        #   Parent Loop BB6_16 Depth=1
                                        #     Parent Loop BB6_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srai.d	$a1, $a3, 5
	alsl.d	$a1, $a1, $a7, 2
	ld.w	$a1, $a1, 4
	srl.w	$a1, $a1, $a3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB6_42
# %bb.41:                               # %for.inc184
                                        #   in Loop: Header=BB6_40 Depth=3
	addi.w	$a3, $a3, 1
	bne	$a2, $a3, .LBB6_40
	b	.LBB6_43
	.p2align	4, , 16
.LBB6_42:                               # %for.inc184.thread
                                        #   in Loop: Header=BB6_39 Depth=2
	add.w	$a1, $s7, $a3
	srai.d	$t3, $a1, 5
	alsl.d	$t4, $t3, $t8, 2
	ld.w	$t7, $t4, 4
	move	$t3, $zero
	sll.w	$a1, $a4, $a1
	or	$a1, $t7, $a1
	st.w	$a1, $t4, 4
	addi.w	$a1, $a3, 1
	bne	$s5, $a3, .LBB6_39
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_43:                               # %for.end186
                                        #   in Loop: Header=BB6_16 Depth=1
	andi	$a1, $t3, 1
	bnez	$a1, .LBB6_14
	b	.LBB6_15
.LBB6_44:                               # %for.end197
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a3, 12
	ld.w	$a3, $a3, 0
	mul.w	$a1, $a3, $a1
	blt	$a1, $a4, .LBB6_78
# %bb.45:                               # %for.body207.lr.ph
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a3, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $a3, 24
	ld.d	$a7, $a4, 24
	ld.d	$t0, $a5, 24
	alsl.d	$t1, $a1, $a6, 2
	addi.d	$a1, $a7, -28
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $t0, -28
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$t4, $zero, 8
	ori	$t5, $zero, 1
	ori	$t6, $zero, 32
	b	.LBB6_47
	.p2align	4, , 16
.LBB6_46:                               # %for.inc324
                                        #   in Loop: Header=BB6_47 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	alsl.d	$a6, $a1, $a6, 2
	bgeu	$a6, $t1, .LBB6_78
.LBB6_47:                               # %for.body207
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_64 Depth 2
                                        #     Child Loop BB6_50 Depth 2
                                        #     Child Loop BB6_69 Depth 2
                                        #     Child Loop BB6_54 Depth 2
                                        #     Child Loop BB6_57 Depth 2
                                        #       Child Loop BB6_58 Depth 3
                                        #     Child Loop BB6_76 Depth 2
	ld.w	$a1, $a4, 12
	ld.w	$a3, $a4, 0
	addi.d	$t2, $a1, 1
	st.w	$t2, $a4, 12
	ld.w	$t8, $a5, 12
	mul.w	$s8, $a1, $a3
	slli.d	$t3, $s8, 2
	addi.d	$a1, $t8, 1
	st.w	$a1, $a5, 12
	ldx.wu	$a1, $a7, $t3
	ld.wu	$a3, $s3, 0
	alsl.d	$t7, $s8, $a7, 2
	ld.w	$s4, $a5, 0
	srli.d	$t2, $a1, 10
	andi	$a1, $a3, 1023
	bstrins.d	$a3, $t2, 63, 10
	sltu	$t2, $zero, $a1
	sub.d	$t2, $a1, $t2
	addi.d	$ra, $t2, 1
	stx.w	$a3, $a7, $t3
	bgeu	$ra, $t4, .LBB6_61
.LBB6_48:                               #   in Loop: Header=BB6_47 Depth=1
	move	$a3, $a1
.LBB6_49:                               # %do.body235.preheader
                                        #   in Loop: Header=BB6_47 Depth=1
	addi.d	$t2, $a3, 1
	slli.d	$a1, $a3, 2
	alsl.d	$a1, $s8, $a1, 2
	add.d	$a1, $a7, $a1
	alsl.d	$t3, $a3, $a6, 2
	alsl.d	$a3, $a3, $s3, 2
	.p2align	4, , 16
.LBB6_50:                               # %do.body235
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $a3, 0
	ld.w	$s0, $t3, 0
	and	$fp, $s0, $fp
	st.w	$fp, $a1, 0
	addi.d	$t2, $t2, -1
	addi.d	$a1, $a1, -4
	addi.d	$t3, $t3, -4
	addi.d	$a3, $a3, -4
	bltu	$t5, $t2, .LBB6_50
.LBB6_51:                               # %do.end247
                                        #   in Loop: Header=BB6_47 Depth=1
	mul.w	$s4, $t8, $s4
	slli.d	$t3, $s4, 2
	ldx.wu	$a1, $t0, $t3
	ld.wu	$a3, $s2, 0
	alsl.d	$t8, $s4, $t0, 2
	srli.d	$t2, $a1, 10
	andi	$a1, $a3, 1023
	bstrins.d	$a3, $t2, 63, 10
	sltu	$t2, $zero, $a1
	sub.d	$t2, $a1, $t2
	addi.d	$s8, $t2, 1
	stx.w	$a3, $t0, $t3
	bgeu	$s8, $t4, .LBB6_66
.LBB6_52:                               #   in Loop: Header=BB6_47 Depth=1
	move	$a3, $a1
.LBB6_53:                               # %do.body255.preheader
                                        #   in Loop: Header=BB6_47 Depth=1
	addi.d	$t2, $a3, 1
	slli.d	$a1, $a3, 2
	alsl.d	$a1, $s4, $a1, 2
	add.d	$a1, $t0, $a1
	alsl.d	$t3, $a3, $a6, 2
	alsl.d	$a3, $a3, $s2, 2
	.p2align	4, , 16
.LBB6_54:                               # %do.body255
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $a3, 0
	ld.w	$s0, $t3, 0
	and	$fp, $s0, $fp
	st.w	$fp, $a1, 0
	addi.d	$t2, $t2, -1
	addi.d	$a1, $a1, -4
	addi.d	$t3, $t3, -4
	addi.d	$a3, $a3, -4
	bltu	$t5, $t2, .LBB6_54
.LBB6_55:                               # %for.cond268.preheader
                                        #   in Loop: Header=BB6_47 Depth=1
	blt	$s5, $s6, .LBB6_72
# %bb.56:                               # %for.body271.outer.preheader
                                        #   in Loop: Header=BB6_47 Depth=1
	ori	$t2, $zero, 1
	move	$a1, $s6
.LBB6_57:                               # %for.body271.outer
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_58 Depth 3
	move	$a3, $a1
	.p2align	4, , 16
.LBB6_58:                               # %for.body271
                                        #   Parent Loop BB6_47 Depth=1
                                        #     Parent Loop BB6_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srai.d	$a1, $a3, 5
	alsl.d	$a1, $a1, $a6, 2
	ld.w	$a1, $a1, 4
	srl.w	$a1, $a1, $a3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB6_60
# %bb.59:                               # %for.inc291
                                        #   in Loop: Header=BB6_58 Depth=3
	addi.w	$a3, $a3, 1
	bne	$a2, $a3, .LBB6_58
	b	.LBB6_71
	.p2align	4, , 16
.LBB6_60:                               # %for.inc291.thread
                                        #   in Loop: Header=BB6_57 Depth=2
	add.w	$a1, $s7, $a3
	srai.d	$t2, $a1, 5
	alsl.d	$t3, $t2, $t7, 2
	ld.w	$fp, $t3, 4
	move	$t2, $zero
	sll.w	$a1, $t5, $a1
	or	$a1, $fp, $a1
	st.w	$a1, $t3, 4
	addi.w	$a1, $a3, 1
	bne	$s5, $a3, .LBB6_57
	b	.LBB6_73
	.p2align	4, , 16
.LBB6_61:                               # %vector.memcheck283
                                        #   in Loop: Header=BB6_47 Depth=1
	sub.d	$a3, $s3, $t7
	bltu	$a3, $t6, .LBB6_48
# %bb.62:                               # %vector.memcheck283
                                        #   in Loop: Header=BB6_47 Depth=1
	sub.d	$a3, $a6, $t7
	bltu	$a3, $t6, .LBB6_48
# %bb.63:                               # %vector.ph290
                                        #   in Loop: Header=BB6_47 Depth=1
	move	$t2, $ra
	bstrins.d	$t2, $zero, 2, 0
	sub.d	$a3, $a1, $t2
	alsl.d	$t3, $a1, $t3, 2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	add.d	$t3, $fp, $t3
	alsl.d	$fp, $a1, $a6, 2
	addi.d	$s0, $fp, -28
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 2
	move	$fp, $t2
	.p2align	4, , 16
.LBB6_64:                               # %vector.body293
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvld	$xr1, $s0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t3, 0
	addi.d	$fp, $fp, -8
	addi.d	$t3, $t3, -32
	addi.d	$s0, $s0, -32
	addi.d	$a1, $a1, -32
	bnez	$fp, .LBB6_64
# %bb.65:                               # %middle.block302
                                        #   in Loop: Header=BB6_47 Depth=1
	bne	$ra, $t2, .LBB6_49
	b	.LBB6_51
	.p2align	4, , 16
.LBB6_66:                               # %vector.memcheck260
                                        #   in Loop: Header=BB6_47 Depth=1
	sub.d	$a3, $s2, $t8
	bltu	$a3, $t6, .LBB6_52
# %bb.67:                               # %vector.memcheck260
                                        #   in Loop: Header=BB6_47 Depth=1
	sub.d	$a3, $a6, $t8
	bltu	$a3, $t6, .LBB6_52
# %bb.68:                               # %vector.ph268
                                        #   in Loop: Header=BB6_47 Depth=1
	move	$t2, $s8
	bstrins.d	$t2, $zero, 2, 0
	sub.d	$a3, $a1, $t2
	alsl.d	$t3, $a1, $t3, 2
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	add.d	$t3, $fp, $t3
	alsl.d	$fp, $a1, $a6, 2
	addi.d	$s0, $fp, -28
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 2
	move	$fp, $t2
	.p2align	4, , 16
.LBB6_69:                               # %vector.body271
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvld	$xr1, $s0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t3, 0
	addi.d	$fp, $fp, -8
	addi.d	$t3, $t3, -32
	addi.d	$s0, $s0, -32
	addi.d	$a1, $a1, -32
	bnez	$fp, .LBB6_69
# %bb.70:                               # %middle.block280
                                        #   in Loop: Header=BB6_47 Depth=1
	bne	$s8, $t2, .LBB6_53
	b	.LBB6_55
	.p2align	4, , 16
.LBB6_71:                               # %for.end293
                                        #   in Loop: Header=BB6_47 Depth=1
	andi	$a1, $t2, 1
	beqz	$a1, .LBB6_73
.LBB6_72:                               # %if.then295
                                        #   in Loop: Header=BB6_47 Depth=1
	ld.w	$a1, $a4, 12
	addi.d	$a1, $a1, -1
	st.w	$a1, $a4, 12
.LBB6_73:                               # %if.end299
                                        #   in Loop: Header=BB6_47 Depth=1
	blt	$s5, $s6, .LBB6_46
# %bb.74:                               # %for.body303.preheader
                                        #   in Loop: Header=BB6_47 Depth=1
	move	$a1, $s6
	b	.LBB6_76
	.p2align	4, , 16
.LBB6_75:                               # %for.inc321
                                        #   in Loop: Header=BB6_76 Depth=2
	addi.w	$a1, $a1, 1
	beq	$a2, $a1, .LBB6_46
.LBB6_76:                               # %for.body303
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a3, $a1, 5
	addi.d	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$t3, $a6, $a3
	sll.w	$t2, $t5, $a1
	and	$t3, $t3, $t2
	beqz	$t3, .LBB6_75
# %bb.77:                               # %if.then312
                                        #   in Loop: Header=BB6_76 Depth=2
	ldx.w	$t3, $t8, $a3
	or	$t2, $t3, $t2
	stx.w	$t2, $t8, $a3
	b	.LBB6_75
.LBB6_78:                               # %for.end328
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $s4, 12
	ld.w	$a3, $s4, 0
	mul.w	$a1, $a3, $a1
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB6_95
# %bb.79:                               # %for.body338.lr.ph
	ld.d	$a4, $s4, 24
	ld.d	$a5, $a0, 24
	alsl.d	$a6, $a1, $a4, 2
	addi.d	$a7, $a5, -28
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	add.w	$t0, $a1, $t0
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	b	.LBB6_81
	.p2align	4, , 16
.LBB6_80:                               # %for.inc402
                                        #   in Loop: Header=BB6_81 Depth=1
	ld.w	$a1, $s4, 0
	alsl.d	$a4, $a1, $a4, 2
	bgeu	$a4, $a6, .LBB6_95
.LBB6_81:                               # %for.body338
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_93 Depth 2
                                        #     Child Loop BB6_84 Depth 2
                                        #     Child Loop BB6_88 Depth 2
	ld.w	$a1, $a0, 12
	ld.w	$t3, $a0, 0
	addi.d	$t4, $a1, 1
	st.w	$t4, $a0, 12
	mul.w	$t4, $a1, $t3
	slli.d	$t8, $t4, 2
	ldx.wu	$a1, $a5, $t8
	ld.wu	$t5, $s2, 0
	alsl.d	$t3, $t4, $a5, 2
	srli.d	$t6, $a1, 10
	andi	$a1, $t5, 1023
	bstrins.d	$t5, $t6, 63, 10
	sltu	$t6, $zero, $a1
	sub.d	$t6, $a1, $t6
	addi.d	$t6, $t6, 1
	stx.w	$t5, $a5, $t8
	bgeu	$t6, $t1, .LBB6_90
.LBB6_82:                               #   in Loop: Header=BB6_81 Depth=1
	move	$t5, $a1
.LBB6_83:                               # %do.body356.preheader
                                        #   in Loop: Header=BB6_81 Depth=1
	addi.d	$t6, $t5, 1
	slli.d	$a1, $t5, 2
	alsl.d	$a1, $t4, $a1, 2
	add.d	$a1, $a5, $a1
	alsl.d	$t4, $t5, $a4, 2
	alsl.d	$t5, $t5, $s2, 2
	.p2align	4, , 16
.LBB6_84:                               # %do.body356
                                        #   Parent Loop BB6_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	ld.w	$t8, $t4, 0
	and	$t7, $t8, $t7
	st.w	$t7, $a1, 0
	addi.d	$t6, $t6, -1
	addi.d	$a1, $a1, -4
	addi.d	$t4, $t4, -4
	addi.d	$t5, $t5, -4
	bltu	$a3, $t6, .LBB6_84
.LBB6_85:                               # %for.cond369.preheader
                                        #   in Loop: Header=BB6_81 Depth=1
	blt	$s5, $s6, .LBB6_80
# %bb.86:                               # %for.body372.preheader
                                        #   in Loop: Header=BB6_81 Depth=1
	move	$t4, $t0
	move	$t5, $s6
	b	.LBB6_88
	.p2align	4, , 16
.LBB6_87:                               # %for.inc399
                                        #   in Loop: Header=BB6_88 Depth=2
	addi.w	$t5, $t5, 1
	addi.w	$t4, $t4, 1
	beq	$a2, $t5, .LBB6_80
.LBB6_88:                               # %for.body372
                                        #   Parent Loop BB6_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a1, $t5, 5
	addi.d	$a1, $a1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$t7, $a4, $a1
	sll.w	$t6, $a3, $t5
	and	$t7, $t7, $t6
	beqz	$t7, .LBB6_87
# %bb.89:                               # %if.then381
                                        #   in Loop: Header=BB6_88 Depth=2
	ldx.w	$t7, $t3, $a1
	or	$t6, $t7, $t6
	stx.w	$t6, $t3, $a1
	srai.d	$a1, $t4, 5
	alsl.d	$a1, $a1, $t3, 2
	ld.w	$t6, $a1, 4
	sll.w	$t7, $a3, $t4
	or	$t6, $t6, $t7
	st.w	$t6, $a1, 4
	b	.LBB6_87
	.p2align	4, , 16
.LBB6_90:                               # %vector.memcheck305
                                        #   in Loop: Header=BB6_81 Depth=1
	sub.d	$t5, $s2, $t3
	bltu	$t5, $t2, .LBB6_82
# %bb.91:                               # %vector.memcheck305
                                        #   in Loop: Header=BB6_81 Depth=1
	sub.d	$t5, $a4, $t3
	bltu	$t5, $t2, .LBB6_82
# %bb.92:                               # %vector.ph313
                                        #   in Loop: Header=BB6_81 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 2, 0
	sub.d	$t5, $a1, $t7
	alsl.d	$t8, $a1, $t8, 2
	add.d	$t8, $a7, $t8
	alsl.d	$fp, $a1, $a4, 2
	addi.d	$s0, $fp, -28
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 2
	move	$fp, $t7
	.p2align	4, , 16
.LBB6_93:                               # %vector.body316
                                        #   Parent Loop BB6_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvld	$xr1, $s0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t8, 0
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, -32
	addi.d	$s0, $s0, -32
	addi.d	$a1, $a1, -32
	bnez	$fp, .LBB6_93
# %bb.94:                               # %middle.block325
                                        #   in Loop: Header=BB6_81 Depth=1
	bne	$t6, $t7, .LBB6_83
	b	.LBB6_85
.LBB6_95:                               # %for.end406
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB6_97
# %bb.96:                               # %if.then411
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_97:                               # %if.end412
	move	$a0, $zero
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
.Lfunc_end6:
	.size	output_phase_setup, .Lfunc_end6-output_phase_setup
                                        # -- End function
	.globl	set_phase                       # -- Begin function set_phase
	.p2align	5
	.type	set_phase,@function
set_phase:                              # @set_phase
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
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s4, $a1, %got_pc_lo12(cube)
	ld.d	$a1, $s4, 80
	move	$fp, $a0
	ld.d	$a0, $s4, 72
	ld.w	$a2, $s4, 4
	ld.d	$s0, $a1, 0
	ld.d	$s1, $fp, 40
	ld.d	$s2, $a1, 8
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$s3, $a0, -8
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 88
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 16
	ld.w	$a0, $a0, 12
	ld.w	$a2, $a1, 12
	ld.w	$a1, $s4, 0
	add.w	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 16
	ld.w	$a3, $a1, 12
	ld.w	$a2, $a2, 12
	ld.w	$a1, $s4, 0
	move	$s4, $a0
	add.w	$a0, $a2, $a3
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a1, 0
	mul.w	$a2, $a3, $a2
	ori	$s7, $zero, 1
	move	$s5, $a0
	blt	$a2, $s7, .LBB7_7
# %bb.1:                                # %for.body.lr.ph
	ld.d	$s6, $a1, 24
	alsl.d	$s8, $a2, $s6, 2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $fp, 0
	ld.w	$a0, $a1, 0
	alsl.d	$s6, $a0, $s6, 2
	bgeu	$s6, $s8, .LBB7_7
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s4, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s4, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_2
# %bb.6:                                # %if.then31
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $s5, 12
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s5, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s5, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	b	.LBB7_2
.LBB7_7:                                # %for.end
	ld.d	$a0, $fp, 16
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 0
	mul.w	$a2, $a3, $a2
	blt	$a2, $s7, .LBB7_15
# %bb.8:                                # %for.body56.lr.ph
	ld.d	$s6, $a0, 24
	alsl.d	$s7, $a2, $s6, 2
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %for.inc83
                                        #   in Loop: Header=BB7_10 Depth=1
	ld.d	$a0, $fp, 16
	ld.w	$a0, $a0, 0
	alsl.d	$s6, $a0, $s6, 2
	bgeu	$s6, $s7, .LBB7_14
.LBB7_10:                               # %for.body56
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_12
# %bb.11:                               # %if.then60
                                        #   in Loop: Header=BB7_10 Depth=1
	ld.w	$a0, $s5, 12
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s5, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s5, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %if.end69
                                        #   in Loop: Header=BB7_10 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_9
# %bb.13:                               # %if.then73
                                        #   in Loop: Header=BB7_10 Depth=1
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s4, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s4, 12
	mul.w	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a2, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	b	.LBB7_9
.LBB7_14:                               # %for.end88.loopexit
	ld.d	$a1, $fp, 0
.LBB7_15:                               # %for.end88
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	st.d	$s4, $fp, 0
	st.d	$s5, $fp, 16
	move	$a0, $fp
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
.Lfunc_end7:
	.size	set_phase, .Lfunc_end7-set_phase
                                        # -- End function
	.globl	opoall                          # -- Begin function opoall
	.p2align	5
	.type	opoall,@function
opoall:                                 # @opoall
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
	ld.d	$a0, $a0, 40
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$s1, $a1
	pcalau12i	$a1, %pc_hi20(opo_exact)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a3, $a1, %pc_lo12(opo_exact)
	beqz	$a0, .LBB8_2
# %bb.1:                                # %if.then2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB8_2:                                # %if.end5
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s7, $a0, %got_pc_lo12(cube)
	ld.d	$s2, $s7, 88
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a0, $zero, 8
	ori	$a2, $zero, 33
	lu12i.w	$s4, 131071
	bltu	$a1, $a2, .LBB8_4
# %bb.3:                                # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s4, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB8_4:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $s1
	ld.d	$s6, $fp, 0
	addi.w	$a1, $a1, 1
	ori	$a2, $zero, 31
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB8_6
.LBB8_5:                                # %for.end96
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $fp, 40
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	st.d	$s8, $fp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $fp, 16
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
.LBB8_6:                                # %for.body.lr.ph
	move	$s0, $zero
	ori	$s3, $zero, 1
	sll.w	$a0, $s3, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$a0, $a0, %got_pc_lo12(summary)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $s4, 4092
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %if.end91
                                        #   in Loop: Header=BB8_8 Depth=1
	st.d	$s6, $fp, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $fp, 8
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $fp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB8_5
.LBB8_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s7, 88
	ld.w	$a1, $s4, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a0, $zero, 8
	ori	$a2, $zero, 33
	bltu	$a1, $a2, .LBB8_10
# %bb.9:                                # %cond.false35
                                        #   in Loop: Header=BB8_8 Depth=1
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB8_10:                               # %cond.end43
                                        #   in Loop: Header=BB8_8 Depth=1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $s1, .LBB8_14
.LBB8_11:                               # %for.end
                                        #   in Loop: Header=BB8_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_phase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(opo_exact)
	st.w	$s3, $s4, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	move	$s2, $a0
	beqz	$s5, .LBB8_18
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB8_8 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB8_21
# %bb.13:                               # %if.then4.i
                                        #   in Loop: Header=BB8_8 Depth=1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s5
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_14:                               # %for.body53.lr.ph
                                        #   in Loop: Header=BB8_8 Depth=1
	ld.d	$a1, $s7, 16
	move	$a2, $s0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_15:                               # %if.end67
                                        #   in Loop: Header=BB8_16 Depth=2
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 1
	addi.w	$a4, $a3, -1
	bge	$s1, $a3, .LBB8_11
.LBB8_16:                               # %for.body53
                                        #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a5, $a2, 1
	move	$a3, $a4
	bnez	$a5, .LBB8_15
# %bb.17:                               # %if.then56
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.w	$a4, $s7, 124
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	add.w	$a4, $a3, $a4
	srai.d	$a5, $a4, 5
	alsl.d	$a5, $a5, $a0, 2
	ld.w	$a6, $a5, 4
	sll.w	$a4, $s3, $a4
	andn	$a4, $a6, $a4
	st.w	$a4, $a5, 4
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_18:                               # %if.else.i
                                        #   in Loop: Header=BB8_8 Depth=1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB8_21
# %bb.19:                               # %if.then15.i
                                        #   in Loop: Header=BB8_8 Depth=1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s2
	move	$a0, $s5
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
.LBB8_20:                               # %minimize.exit
                                        #   in Loop: Header=BB8_8 Depth=1
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB8_21:                               # %minimize.exit
                                        #   in Loop: Header=BB8_8 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $s8, 12
	bge	$a1, $a2, .LBB8_23
# %bb.22:                               # %if.then76
                                        #   in Loop: Header=BB8_8 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB8_24
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_23:                               # %if.else
                                        #   in Loop: Header=BB8_8 Depth=1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB8_7
.LBB8_24:                               # %if.then88
                                        #   in Loop: Header=BB8_8 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
	b	.LBB8_7
.Lfunc_end8:
	.size	opoall, .Lfunc_end8-opoall
                                        # -- End function
	.type	opo_exact,@object               # @opo_exact
	.local	opo_exact
	.comm	opo_exact,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nOPO loop for output #%d\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"PLA->phase is %s\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"phase      is %s\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"OPO-SETUP "
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"OPO       "
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"error in output phase assignment"
	.size	.L.str.5, 33

	.type	opo_recur.level,@object         # @opo_recur.level
	.local	opo_recur.level
	.comm	opo_recur.level,4,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"# OPO[%d]: %4d = %4d x %4d, time = %s\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"output_phase_setup: must have an output"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"# phase is %s\n"
	.size	.L.str.8, 15

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"EXACT"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"ESPRESSO  "
	.size	.L.str.10, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
