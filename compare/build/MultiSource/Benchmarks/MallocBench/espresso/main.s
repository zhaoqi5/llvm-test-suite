	.file	"main.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s0, $a1
	st.w	$a0, $sp, 164
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	st.d	$a0, $a1, 120
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	st.d	$a0, $a1, 8
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	st.d	$a0, $a1, 48
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	st.d	$a0, $a1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $a1, 24
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	st.d	$a0, $a1, 40
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	st.d	$a0, $a1, 72
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	st.d	$a0, $a1, 56
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	st.d	$a0, $a1, 64
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	st.d	$a0, $a1, 96
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	st.d	$a0, $a1, 104
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	st.d	$a0, $a1, 112
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	st.d	$a0, $a1, 80
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	st.d	$a0, $a1, 88
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s5, $a0, %got_pc_lo12(debug)
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 152
	st.w	$zero, $s5, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(print_solution)
	ld.d	$a2, $a0, %got_pc_lo12(print_solution)
	pcalau12i	$a0, %got_pc_hi20(summary)
	addi.w	$a1, $zero, -1
	ld.d	$s7, $a0, %got_pc_lo12(summary)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 160
	pcalau12i	$a1, %got_pc_hi20(remove_essential)
	ld.d	$a1, $a1, %got_pc_lo12(remove_essential)
	st.w	$a0, $sp, 156
	pcalau12i	$a0, %got_pc_hi20(force_irredundant)
	ld.d	$a0, $a0, %got_pc_lo12(force_irredundant)
	st.w	$s1, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(unwrap_onset)
	ld.d	$a1, $a1, %got_pc_lo12(unwrap_onset)
	st.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(single_expand)
	ld.d	$a0, $a0, %got_pc_lo12(single_expand)
	st.w	$s1, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(pos)
	ld.d	$a1, $a1, %got_pc_lo12(pos)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(recompute_onset)
	ld.d	$a0, $a0, %got_pc_lo12(recompute_onset)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(use_super_gasp)
	ld.d	$a1, $a1, %got_pc_lo12(use_super_gasp)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(use_random_order)
	ld.d	$a0, $a0, %got_pc_lo12(use_random_order)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(kiss)
	ld.d	$a1, $a1, %got_pc_lo12(kiss)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(echo_comments)
	ld.d	$a0, $a0, %got_pc_lo12(echo_comments)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(trace)
	ld.d	$s8, $a1, %got_pc_lo12(trace)
	st.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(echo_unknown_commands)
	ld.d	$a0, $a0, %got_pc_lo12(echo_unknown_commands)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.w	$s1, $a2, 0
	st.w	$zero, $s7, 0
	st.w	$zero, $s8, 0
	st.w	$s1, $a0, 0
	addi.d	$a0, $sp, 164
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 152
	move	$a1, $s0
	pcaddu18i	$ra, %call36(backward_compatibility_hack)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.w	$s2, $sp, 164
	ld.w	$a0, $sp, 152
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 148
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$s3, $a0, %pc_lo12(.L.str.62)
	ori	$fp, $zero, 52
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI0_0)
	pcalau12i	$a0, %pc_hi20(option_table)
	addi.d	$a1, $a0, %pc_lo12(option_table)
	pcalau12i	$a0, %got_pc_hi20(optarg)
	ld.d	$a0, $a0, %got_pc_lo12(optarg)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 24
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(debug_table)
	addi.d	$a0, $a0, %pc_lo12(debug_table)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(esp_opt_table)
	addi.d	$a0, $a0, %pc_lo12(esp_opt_table)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_2
.LBB0_1:                                # %sw.bb105
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	.p2align	4, , 16
.LBB0_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(espresso_getopt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -68
	bltu	$fp, $a1, .LBB0_37
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $s6, $a0
	jr	$a0
.LBB0_4:                                # %for.cond.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$a1, .LBB0_50
# %bb.5:                                # %for.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s1, $s0
	move	$s0, $s7
	move	$s7, $s8
	move	$fp, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a1, $s8, 0
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 24
	bnez	$a1, .LBB0_6
	b	.LBB0_32
.LBB0_8:                                # %sw.bb75
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	beqz	$a1, .LBB0_34
# %bb.9:                                # %for.body81.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.10:                               # %for.cond76.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %pc_hi20(debug_table)
	addi.d	$fp, $a0, %pc_lo12(debug_table)
	.p2align	4, , 16
.LBB0_11:                               # %for.cond76
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB0_34
# %bb.12:                               # %for.body81
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 16
	bnez	$a0, .LBB0_11
.LBB0_13:                               # %for.end94
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $fp, 8
	ld.w	$a1, $s5, 0
	or	$a0, $a1, $a0
	st.w	$a0, $s5, 0
	ori	$fp, $zero, 52
	b	.LBB0_2
.LBB0_14:                               # %for.cond19.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pla_types)
	ld.d	$fp, $a0, %got_pc_lo12(pla_types)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	beqz	$a0, .LBB0_35
# %bb.15:                               # %for.body23.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a1, $a0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_19
# %bb.16:                               # %for.cond19.preheader327
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pla_types)
	ld.d	$fp, $a0, %got_pc_lo12(pla_types)
	.p2align	4, , 16
.LBB0_17:                               # %for.cond19
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_35
# %bb.18:                               # %for.body23
                                        #   in Loop: Header=BB0_17 Depth=2
	addi.d	$a1, $a0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 16
	bnez	$a0, .LBB0_17
.LBB0_19:                               # %for.end35
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $fp, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$fp, $zero, 52
	b	.LBB0_2
.LBB0_20:                               # %sw.bb106
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_2
.LBB0_21:                               # %sw.bb108
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 156
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	blt	$s1, $a0, .LBB0_2
	b	.LBB0_49
.LBB0_22:                               # %sw.bb74
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	st.w	$a0, $s5, 0
	st.w	$s1, $s8, 0
	st.w	$s1, $s7, 0
	b	.LBB0_2
.LBB0_23:                               # %sw.bb103
                                        #   in Loop: Header=BB0_2 Depth=1
	st.w	$s1, $s8, 0
	b	.LBB0_2
.LBB0_24:                               # %for.cond45.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$a1, .LBB0_36
# %bb.25:                               # %for.body50.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.26:                               # %for.cond45.preheader328
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %pc_hi20(esp_opt_table)
	addi.d	$fp, $a0, %pc_lo12(esp_opt_table)
	.p2align	4, , 16
.LBB0_27:                               # %for.cond45
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 24
	beqz	$a1, .LBB0_36
# %bb.28:                               # %for.body50
                                        #   in Loop: Header=BB0_27 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 24
	bnez	$a0, .LBB0_27
.LBB0_29:                               # %for.end65
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $fp, 16
	ld.d	$a1, $fp, 8
	st.w	$a0, $a1, 0
	ori	$fp, $zero, 52
	b	.LBB0_2
.LBB0_30:                               # %sw.bb104
                                        #   in Loop: Header=BB0_2 Depth=1
	st.w	$s1, $s7, 0
	b	.LBB0_2
.LBB0_31:                               #   in Loop: Header=BB0_2 Depth=1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $s7
	move	$s7, $s0
	move	$s0, $s1
	ori	$s1, $zero, 1
	ori	$fp, $zero, 52
	b	.LBB0_2
.LBB0_32:                               # %if.then14.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	move	$s0, $s1
.LBB0_33:                               # %if.then14
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_34:                               # %if.then99.loopexit257
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %if.then40.loopexit259
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_36:                               # %if.then70.loopexit258
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %while.cond
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_48
# %bb.38:                               # %while.end
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s8, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.w	$a2, $sp, 152
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $sp, 148
	beqz	$a0, .LBB0_43
# %bb.39:                               # %if.then117
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB0_42
# %bb.40:                               # %for.body121.preheader
	addi.d	$fp, $s0, 8
	addi.d	$s1, $s2, -1
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s3, $a0, %pc_lo12(.L.str.70)
	.p2align	4, , 16
.LBB0_41:                               # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 0
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB0_41
.LBB0_42:                               # %for.end128
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %if.end131
	ld.w	$s3, $sp, 148
	slli.d	$a0, $s3, 4
	alsl.d	$s5, $s3, $a0, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$fp, $a0, $s5
	ld.w	$a0, $fp, 12
	st.d	$zero, $sp, 128
	ori	$a1, $zero, 1
	st.d	$zero, $sp, 136
	beq	$a0, $a1, .LBB0_51
# %bb.44:                               # %if.end131
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_55
# %bb.45:                               # %sw.bb134
	pcalau12i	$a0, %got_pc_hi20(optind)
	ld.d	$s1, $a0, %got_pc_lo12(optind)
	ld.w	$a0, $s1, 0
	addi.w	$a1, $a0, 2
	bge	$a1, $s2, .LBB0_47
# %bb.46:                               # %if.then136
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
.LBB0_47:                               # %if.end137
	ld.w	$s4, $sp, 152
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 0
	addi.d	$a4, $sp, 136
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(getPLA)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 0
	addi.d	$a4, $sp, 128
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
	move	$a5, $s4
	b	.LBB0_54
.LBB0_48:                               # %sw.default
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_49:                               # %if.then111
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a1, $sp, 152
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $sp, 148
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %if.then14.loopexit260
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 148
	b	.LBB0_33
.LBB0_51:                               # %sw.bb142
	pcalau12i	$a0, %got_pc_hi20(optind)
	ld.d	$s1, $a0, %got_pc_lo12(optind)
	ld.w	$a0, $s1, 0
	addi.w	$a1, $a0, 1
	bge	$a1, $s2, .LBB0_53
# %bb.52:                               # %if.then145
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$a1, $a0, 1
.LBB0_53:                               # %if.end146
	ld.w	$a5, $sp, 152
	st.w	$a1, $s1, 0
	addi.d	$a4, $sp, 136
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s3
.LBB0_54:                               # %sw.epilog149
	pcaddu18i	$ra, %call36(getPLA)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %sw.epilog149
	pcalau12i	$a0, %got_pc_hi20(optind)
	ld.d	$a0, $a0, %got_pc_lo12(optind)
	ld.w	$a0, $a0, 0
	bge	$a0, $s2, .LBB0_57
# %bb.56:                               # %if.then151
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.LBB0_57:                               # %if.end152
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s8, 0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_62
# %bb.58:                               # %if.then156
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB0_60
# %bb.59:                               # %if.then158
	pcaddu18i	$ra, %call36(PLA_summary)
	jirl	$ra, $ra, 0
.LBB0_60:                               # %if.end159
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB0_62
# %bb.61:                               # %if.then161
	pcaddu18i	$ra, %call36(PLA_summary)
	jirl	$ra, $ra, 0
.LBB0_62:                               # %if.end163
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 41
	ori	$s3, $zero, 1
	bltu	$a1, $a0, .LBB0_151
# %bb.63:                               # %if.end163
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	move	$s2, $zero
	jr	$a0
.LBB0_64:                               # %sw.bb167
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a2, 8
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(verify)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	move	$s2, $a0
	ori	$a1, $zero, 14
	addi.d	$a3, $sp, 104
	move	$a0, $s1
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_127
# %bb.65:                               # %if.then179
	ld.d	$a0, $sp, 136
	st.d	$s0, $a0, 0
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	pcaddu18i	$ra, %call36(check_consistency)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_66:                               # %sw.bb443
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a1, $sp, 128
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(PLA_verify)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	move	$s0, $a0
	ori	$a1, $zero, 14
	addi.d	$a3, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB0_131
.LBB0_67:                               # %if.else451
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_68:                               # %sw.bb466
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(check_consistency)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_69:                               # %sw.bb360
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_70:                               # %sw.bb412
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $sp, 160
	ld.w	$a0, $a0, 4
	bltz	$a1, .LBB0_72
# %bb.71:                               # %sw.bb412
	blt	$a1, $a0, .LBB0_73
.LBB0_72:                               # %if.then416
	move	$a1, $zero
	st.w	$zero, $sp, 160
.LBB0_73:                               # %if.end417
	ld.w	$a2, $sp, 156
	bltz	$a2, .LBB0_75
# %bb.74:                               # %if.end417
	blt	$a2, $a0, .LBB0_76
.LBB0_75:                               # %if.then421
	addi.w	$a2, $a0, -1
	st.w	$a2, $sp, 156
.LBB0_76:                               # %if.end423
	blt	$a2, $a1, .LBB0_151
	.p2align	4, , 16
.LBB0_77:                               # %for.body426
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	pcaddu18i	$ra, %call36(d1merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $sp, 156
	st.d	$a0, $a1, 0
	addi.w	$a1, $s0, 1
	blt	$s0, $a2, .LBB0_77
	b	.LBB0_151
.LBB0_78:                               # %sw.bb374
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(make_disjoint)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_79:                               # %sw.bb378
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(cv_dsharp)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_80:                               # %sw.bb255
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a2, $a2, $a1
	ori	$s3, $zero, 1
	blt	$a2, $s3, .LBB0_83
# %bb.81:                               # %for.body262.preheader
	ld.d	$a1, $a0, 24
	alsl.d	$a2, $a2, $a1, 2
	lu12i.w	$a3, -5
	ori	$a3, $a3, 3071
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB0_82:                               # %for.body262
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a1, 0
	and	$a4, $a4, $a3
	addi.d	$a4, $a4, 1024
	st.w	$a4, $a1, 0
	ld.w	$a4, $a0, 0
	alsl.d	$a1, $a4, $a1, 2
	bltu	$a1, $a2, .LBB0_82
.LBB0_83:                               # %for.end271
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	move	$s0, $a0
	addi.d	$a1, $a2, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(essential)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	move	$s1, $a0
	ori	$a1, $zero, 3
	addi.d	$a3, $sp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	b	.LBB0_144
.LBB0_84:                               # %sw.bb296
	ori	$s2, $zero, 1
.LBB0_85:                               # %sw.bb297
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$s0, $a0
	move	$a0, $a3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a2, 8
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(verify)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	move	$s1, $a0
	ori	$a1, $zero, 14
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_87
# %bb.86:                               # %if.then312
	ld.d	$a0, $sp, 136
	st.d	$s0, $a0, 0
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	pcaddu18i	$ra, %call36(check_consistency)
	jirl	$ra, $ra, 0
.LBB0_87:                               # %if.end315
	sltui	$s3, $s1, 1
	b	.LBB0_127
.LBB0_88:                               # %sw.bb231
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	move	$s0, $a0
	move	$a0, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(expand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 4
	b	.LBB0_116
.LBB0_89:                               # %sw.bb284
	ld.d	$a2, $sp, 136
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	addi.d	$a3, $sp, 104
	pcaddu18i	$ra, %call36(last_gasp)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_90:                               # %sw.bb364
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(cv_intersect)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_91:                               # %sw.bb239
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(irredundant)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 5
	b	.LBB0_116
.LBB0_92:                               # %sw.bb388
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(lex_sort)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_93:                               # %sw.bb290
	ld.d	$a2, $sp, 136
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	pcaddu18i	$ra, %call36(make_sparse)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_94:                               # %sw.bb330
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(map)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_95:                               # %sw.bb468
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(map_dcset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 152
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_96:                               # %sw.bb396
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $sp, 160
	ld.w	$a0, $a0, 4
	bltz	$a1, .LBB0_98
# %bb.97:                               # %sw.bb396
	blt	$a1, $a0, .LBB0_99
.LBB0_98:                               # %if.then400
	move	$a1, $zero
	st.w	$zero, $sp, 160
.LBB0_99:                               # %if.end401
	ld.w	$a2, $sp, 156
	bltz	$a2, .LBB0_101
# %bb.100:                              # %if.end401
	blt	$a2, $a0, .LBB0_102
.LBB0_101:                              # %if.then405
	addi.w	$a2, $a0, -1
	st.w	$a2, $sp, 156
.LBB0_102:                              # %if.end407
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(unravel_range)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_dupl)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_103:                              # %sw.bb332
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(phase_assignment)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_104:                              # %sw.bb333
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a2, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $sp, 160
	ld.d	$a0, $a2, 32
	ld.w	$a3, $a2, 124
	bltz	$a1, .LBB0_106
# %bb.105:                              # %lor.lhs.false335
	slli.d	$a2, $a3, 2
	ldx.w	$a2, $a0, $a2
	blt	$a1, $a2, .LBB0_107
.LBB0_106:                              # %if.then339
	move	$a1, $zero
	st.w	$zero, $sp, 160
.LBB0_107:                              # %if.end340
	ld.w	$a2, $sp, 156
	slli.d	$a3, $a3, 2
	ldx.w	$a0, $a0, $a3
	bltz	$a2, .LBB0_109
# %bb.108:                              # %if.end340
	blt	$a2, $a0, .LBB0_110
.LBB0_109:                              # %if.then346
	addi.w	$a2, $a0, -1
	st.w	$a2, $sp, 156
.LBB0_110:                              # %if.end350
	ld.d	$a0, $sp, 136
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	pcaddu18i	$ra, %call36(opoall)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_111:                              # %sw.bb351
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(find_optimal_pairing)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_112:                              # %sw.bb352
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(pair_all)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_113:                              # %sw.bb316
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $s8, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB0_119
# %bb.114:                              # %if.then325
	ld.d	$a0, $sp, 136
	ld.d	$s1, $a0, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	b	.LBB0_165
.LBB0_115:                              # %sw.bb247
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(reduce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 6
.LBB0_116:                              # %sw.epilog530
	addi.d	$a3, $sp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_117:                              # %sw.bb383
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(cv_sharp)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_118:                              # %sw.bb206
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cube1list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $s8, 0
	st.d	$a0, $a1, 0
	bnez	$a2, .LBB0_164
.LBB0_119:
	move	$a0, $zero
	ori	$s3, $zero, 1
	b	.LBB0_153
.LBB0_120:                              # %sw.bb219
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 136
	sltu	$a1, $s3, $a1
	masknez	$a1, $a2, $a1
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(so_espresso)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_121:                              # %sw.bb225
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 136
	sltu	$a1, $s3, $a1
	masknez	$a1, $a2, $a1
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(so_both_espresso)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_122:                              # %sw.bb392
	ld.w	$a0, $s7, 0
	bnez	$a0, .LBB0_150
# %bb.123:                              # %if.then394
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(PLA_summary)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_124:                              # %sw.bb278
	ld.d	$a2, $sp, 136
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	addi.d	$a3, $sp, 104
	pcaddu18i	$ra, %call36(super_gasp)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_125:                              # %sw.bb354
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(cube1list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.80)
	addi.d	$a2, $a2, %pc_lo12(.L.str.80)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_126:                              # %sw.bb491
	ld.d	$a1, $sp, 136
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $a1, 0
	move	$s1, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cube1list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a3, $sp, 104
	ori	$s3, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(expand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 4
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(irredundant)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 5
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 8
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(expand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	move	$a2, $a0
	st.d	$a0, $a1, 8
	ori	$a1, $zero, 4
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 8
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(irredundant)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	move	$a2, $a0
	st.d	$a0, $a1, 8
	ori	$a1, $zero, 5
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB0_127:                              # %sw.epilog530
	move	$a0, $s0
	b	.LBB0_145
.LBB0_128:                              # %sw.bb470
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(find_equiv_outputs)
	jirl	$ra, $ra, 0
	b	.LBB0_150
.LBB0_129:                              # %sw.bb369
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	b	.LBB0_141
.LBB0_130:                              # %sw.bb453
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$fp, $a0, 0
	ld.d	$s0, $a0, 8
	ld.d	$s1, $a1, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(verify)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a2, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 14
	addi.d	$a3, $sp, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_67
.LBB0_131:                              # %if.then449
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_132:                              # %do.body.preheader
	ld.w	$fp, $sp, 152
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$s5, %pc_hi20(last_fp)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s0, $a0, %pc_lo12(.L.str.75)
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_133:                              # %do.cond
                                        #   in Loop: Header=BB0_134 Depth=1
	ld.d	$a0, $s5, %pc_lo12(last_fp)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	addi.d	$a4, $sp, 136
	move	$a3, $s1
	pcaddu18i	$ra, %call36(read_pla)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB0_163
.LBB0_134:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$s1, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $s8, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB0_136
# %bb.135:                              # %if.then192
                                        #   in Loop: Header=BB0_134 Depth=1
	ld.d	$a0, $sp, 136
	ld.d	$s2, $a0, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB0_136:                              # %if.end195
                                        #   in Loop: Header=BB0_134 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_138
# %bb.137:                              # %if.then197
                                        #   in Loop: Header=BB0_134 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 136
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprint_pla)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB0_138:                              # %if.end199
                                        #   in Loop: Header=BB0_134 Depth=1
	ld.d	$a0, $sp, 136
	ld.w	$s1, $a0, 32
	pcaddu18i	$ra, %call36(free_PLA)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 32
	beqz	$a0, .LBB0_133
# %bb.139:                              # %if.then202
                                        #   in Loop: Header=BB0_134 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 32
	b	.LBB0_133
.LBB0_140:                              # %sw.bb472
	ld.d	$a1, $sp, 136
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
.LBB0_141:                              # %sw.epilog530
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
.LBB0_142:                              # %if.then532
	pcaddu18i	$ra, %call36(runtime)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_153
.LBB0_143:                              # %sw.bb478
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 128
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 16
	pcaddu18i	$ra, %call36(cv_intersect)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128
	ld.d	$a3, $sp, 136
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a3, 16
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cv_intersect)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.d	$a1, $a1, 0
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB0_144:                              # %sw.epilog530
	move	$a0, $s1
.LBB0_145:                              # %sw.epilog530
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.LBB0_146:                              # %for.cond434.preheader
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $fp, 8
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB0_151
# %bb.147:                              # %for.body436.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_148:                              # %for.body436
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 136
	ld.d	$a0, $a0, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(d1merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $fp, 8
	addi.w	$s0, $s0, 1
	st.d	$a0, $a1, 0
	blt	$s0, $a2, .LBB0_148
	b	.LBB0_151
.LBB0_149:                              # %sw.bb489
	ld.d	$a0, $sp, 136
	ld.w	$a1, $s7, 0
	pcaddu18i	$ra, %call36(disassemble_fsm)
	jirl	$ra, $ra, 0
.LBB0_150:                              # %if.end395
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
.LBB0_151:                              # %sw.epilog530
	ld.w	$a0, $s8, 0
	bnez	$a0, .LBB0_142
.LBB0_152:
	move	$a0, $zero
.LBB0_153:                              # %if.end534
	ld.w	$a1, $s7, 0
	bnez	$a1, .LBB0_161
# %bb.154:                              # %if.end534
	bnez	$a0, .LBB0_161
# %bb.155:                              # %if.end545
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_162
.LBB0_156:                              # %if.end551
	bnez	$s3, .LBB0_158
.LBB0_157:                              # %if.then553
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.LBB0_158:                              # %if.end554
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(free_PLA)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_160
# %bb.159:                              # %if.then556
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
.LBB0_160:                              # %if.end557
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_cleanup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sm_cleanup)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_161:                              # %if.then538
	ld.d	$a0, $sp, 136
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s1, $a0, $s5
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a2, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_156
.LBB0_162:                              # %if.then547
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a3, $a1, 0
	ld.d	$a1, $sp, 136
	ld.w	$a2, $sp, 152
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprint_pla)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 15
	addi.d	$a3, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_157
	b	.LBB0_158
.LBB0_163:                              # %do.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_164:                              # %if.then214
	ld.d	$a0, $sp, 136
	ld.d	$s1, $a0, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
.LBB0_165:                              # %sw.epilog530
	move	$a0, $s1
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB0_152
	b	.LBB0_142
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_1-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_64-.LJTI0_1
	.word	.LBB0_66-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_69-.LJTI0_1
	.word	.LBB0_70-.LJTI0_1
	.word	.LBB0_78-.LJTI0_1
	.word	.LBB0_79-.LJTI0_1
	.word	.LBB0_151-.LJTI0_1
	.word	.LBB0_80-.LJTI0_1
	.word	.LBB0_84-.LJTI0_1
	.word	.LBB0_88-.LJTI0_1
	.word	.LBB0_89-.LJTI0_1
	.word	.LBB0_90-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_92-.LJTI0_1
	.word	.LBB0_93-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_95-.LJTI0_1
	.word	.LBB0_96-.LJTI0_1
	.word	.LBB0_103-.LJTI0_1
	.word	.LBB0_104-.LJTI0_1
	.word	.LBB0_111-.LJTI0_1
	.word	.LBB0_112-.LJTI0_1
	.word	.LBB0_113-.LJTI0_1
	.word	.LBB0_85-.LJTI0_1
	.word	.LBB0_115-.LJTI0_1
	.word	.LBB0_117-.LJTI0_1
	.word	.LBB0_118-.LJTI0_1
	.word	.LBB0_120-.LJTI0_1
	.word	.LBB0_121-.LJTI0_1
	.word	.LBB0_122-.LJTI0_1
	.word	.LBB0_124-.LJTI0_1
	.word	.LBB0_125-.LJTI0_1
	.word	.LBB0_126-.LJTI0_1
	.word	.LBB0_128-.LJTI0_1
	.word	.LBB0_129-.LJTI0_1
	.word	.LBB0_130-.LJTI0_1
	.word	.LBB0_132-.LJTI0_1
	.word	.LBB0_140-.LJTI0_1
	.word	.LBB0_143-.LJTI0_1
	.word	.LBB0_146-.LJTI0_1
	.word	.LBB0_149-.LJTI0_1
                                        # -- End function
	.text
	.globl	getPLA                          # -- Begin function getPLA
	.p2align	5
	.type	getPLA,@function
getPLA:                                 # @getPLA
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a5
	move	$s0, $a4
	move	$s4, $a3
	move	$s1, $a2
	bge	$a0, $a1, .LBB1_5
# %bb.1:                                # %if.else
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $s1, $a0
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB1_3
# %bb.2:                                # %if.else.tail
	ld.bu	$a0, $fp, 1
	beqz	$a0, .LBB1_11
.LBB1_3:                                # %if.else3
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_13
# %bb.4:
	move	$s2, $a0
	b	.LBB1_6
.LBB1_5:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$fp, $a0, %pc_lo12(.L.str.84)
.LBB1_6:                                # %if.end12
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	pcalau12i	$a1, %pc_hi20(option_table)
	addi.d	$a1, $a1, %pc_lo12(option_table)
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 8
	ori	$a2, $zero, 7
	bne	$a1, $a2, .LBB1_8
# %bb.7:                                # %if.then16
	bstrpick.d	$a1, $s3, 1, 1
	bstrpick.d	$a2, $s3, 2, 2
	b	.LBB1_9
.LBB1_8:                                # %if.else21
	ld.w	$a1, $a0, 20
	ld.w	$a2, $a0, 16
.LBB1_9:                                # %if.end28
	pcalau12i	$a0, %pc_hi20(input_type)
	ld.w	$a3, $a0, %pc_lo12(input_type)
	move	$a0, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(read_pla)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_12
# %bb.10:                               # %if.end35
	move	$a0, $fp
	pcaddu18i	$ra, %call36(util_strsav)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a1, 24
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(filename)
	ld.d	$a1, $a1, %got_pc_lo12(filename)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(last_fp)
	st.d	$s2, $a0, %pc_lo12(last_fp)
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_11:                               # %if.then2
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$s2, $a0, 0
	b	.LBB1_6
.LBB1_12:                               # %if.then32
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.88)
	addi.d	$a1, $a1, %pc_lo12(.L.str.88)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_13:                               # %if.then8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	getPLA, .Lfunc_end1-getPLA
                                        # -- End function
	.globl	runtime                         # -- Begin function runtime
	.p2align	5
	.type	runtime,@function
runtime:                                # @runtime
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(total_calls)
	ld.d	$s1, $a0, %got_pc_lo12(total_calls)
	ld.w	$fp, $s1, 0
	beqz	$fp, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %for.inc18
	ld.w	$fp, $s1, 4
	beqz	$fp, .LBB2_4
# %bb.3:                                # %if.then.1
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 8
	ld.d	$s0, $a1, 8
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %for.inc18.1
	ld.w	$fp, $s1, 8
	beqz	$fp, .LBB2_6
# %bb.5:                                # %if.then.2
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 16
	ld.d	$s0, $a1, 16
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %for.inc18.2
	ld.w	$fp, $s1, 12
	beqz	$fp, .LBB2_8
# %bb.7:                                # %if.then.3
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 24
	ld.d	$s0, $a1, 24
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %for.inc18.3
	ld.w	$fp, $s1, 16
	beqz	$fp, .LBB2_10
# %bb.9:                                # %if.then.4
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 32
	ld.d	$s0, $a1, 32
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %for.inc18.4
	ld.w	$fp, $s1, 20
	beqz	$fp, .LBB2_12
# %bb.11:                               # %if.then.5
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 40
	ld.d	$s0, $a1, 40
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %for.inc18.5
	ld.w	$fp, $s1, 24
	beqz	$fp, .LBB2_14
# %bb.13:                               # %if.then.6
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 48
	ld.d	$s0, $a1, 48
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %for.inc18.6
	ld.w	$fp, $s1, 28
	beqz	$fp, .LBB2_16
# %bb.15:                               # %if.then.7
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 56
	ld.d	$s0, $a1, 56
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %for.inc18.7
	ld.w	$fp, $s1, 32
	beqz	$fp, .LBB2_18
# %bb.17:                               # %if.then.8
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 64
	ld.d	$s0, $a1, 64
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %for.inc18.8
	ld.w	$fp, $s1, 36
	beqz	$fp, .LBB2_20
# %bb.19:                               # %if.then.9
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 72
	ld.d	$s0, $a1, 72
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %for.inc18.9
	ld.w	$fp, $s1, 40
	beqz	$fp, .LBB2_22
# %bb.21:                               # %if.then.10
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 80
	ld.d	$s0, $a1, 80
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %for.inc18.10
	ld.w	$fp, $s1, 44
	beqz	$fp, .LBB2_24
# %bb.23:                               # %if.then.11
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 88
	ld.d	$s0, $a1, 88
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %for.inc18.11
	ld.w	$fp, $s1, 48
	beqz	$fp, .LBB2_26
# %bb.25:                               # %if.then.12
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 96
	ld.d	$s0, $a1, 96
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_26:                               # %for.inc18.12
	ld.w	$fp, $s1, 52
	beqz	$fp, .LBB2_28
# %bb.27:                               # %if.then.13
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 104
	ld.d	$s0, $a1, 104
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %for.inc18.13
	ld.w	$fp, $s1, 56
	beqz	$fp, .LBB2_30
# %bb.29:                               # %if.then.14
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 112
	ld.d	$s0, $a1, 112
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %for.inc18.14
	ld.w	$fp, $s1, 60
	beqz	$fp, .LBB2_32
# %bb.31:                               # %if.then.15
	pcalau12i	$a0, %got_pc_hi20(total_time)
	ld.d	$a0, $a0, %got_pc_lo12(total_time)
	pcalau12i	$a1, %got_pc_hi20(total_name)
	ld.d	$a1, $a1, %got_pc_lo12(total_name)
	ld.d	$a0, $a0, 120
	ld.d	$s0, $a1, 120
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.89)
	addi.d	$a1, $a1, %pc_lo12(.L.str.89)
	move	$a3, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB2_32:                               # %for.inc18.15
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	runtime, .Lfunc_end2-runtime
                                        # -- End function
	.globl	init_runtime                    # -- Begin function init_runtime
	.p2align	5
	.type	init_runtime,@function
init_runtime:                           # @init_runtime
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(total_name)
	ld.d	$a0, $a0, %got_pc_lo12(total_name)
	pcalau12i	$a1, %pc_hi20(.L.str.90)
	addi.d	$a1, $a1, %pc_lo12(.L.str.90)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.91)
	addi.d	$a1, $a1, %pc_lo12(.L.str.91)
	st.d	$a1, $a0, 120
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.93)
	addi.d	$a1, $a1, %pc_lo12(.L.str.93)
	st.d	$a1, $a0, 48
	pcalau12i	$a1, %pc_hi20(.L.str.94)
	addi.d	$a1, $a1, %pc_lo12(.L.str.94)
	st.d	$a1, $a0, 32
	pcalau12i	$a1, %pc_hi20(.L.str.95)
	addi.d	$a1, $a1, %pc_lo12(.L.str.95)
	st.d	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(.L.str.96)
	addi.d	$a1, $a1, %pc_lo12(.L.str.96)
	st.d	$a1, $a0, 40
	pcalau12i	$a1, %pc_hi20(.L.str.97)
	addi.d	$a1, $a1, %pc_lo12(.L.str.97)
	st.d	$a1, $a0, 72
	pcalau12i	$a1, %pc_hi20(.L.str.98)
	addi.d	$a1, $a1, %pc_lo12(.L.str.98)
	st.d	$a1, $a0, 56
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$a1, $a1, %pc_lo12(.L.str.99)
	st.d	$a1, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$a1, $a1, %pc_lo12(.L.str.100)
	st.d	$a1, $a0, 96
	pcalau12i	$a1, %pc_hi20(.L.str.101)
	addi.d	$a1, $a1, %pc_lo12(.L.str.101)
	st.d	$a1, $a0, 104
	pcalau12i	$a1, %pc_hi20(.L.str.102)
	addi.d	$a1, $a1, %pc_lo12(.L.str.102)
	st.d	$a1, $a0, 112
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	st.d	$a1, $a0, 80
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$a1, $a1, %pc_lo12(.L.str.103)
	st.d	$a1, $a0, 88
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	init_runtime, .Lfunc_end3-init_runtime
                                        # -- End function
	.globl	subcommands                     # -- Begin function subcommands
	.p2align	5
	.type	subcommands,@function
subcommands:                            # @subcommands
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
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(option_table)
	addi.d	$s0, $a0, %pc_lo12(option_table)
	ld.d	$fp, $s0, 0
	beqz	$fp, .LBB4_9
# %bb.1:                                # %for.body.preheader
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -60
	addi.w	$s3, $zero, -78
	bltu	$s3, $a0, .LBB4_3
# %bb.2:                                # %if.then.peel
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 0
.LBB4_3:                                # %if.end13.peel
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 24
	beqz	$s2, .LBB4_9
# %bb.4:                                # %for.body.peel.next
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s0, 24
	addi.w	$s5, $a0, 18
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$fp, $a0, %pc_lo12(.L.str.105)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s0, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$s1, $a0, %pc_lo12(.L.str.106)
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_5:                                # %if.then11
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 2
.LBB4_6:                                # %if.end13
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, 24
	addi.d	$s4, $s4, 24
	add.w	$s5, $s5, $a0
	beqz	$s2, .LBB4_9
.LBB4_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $a0
	addi.d	$a0, $a0, -76
	bltu	$s3, $a0, .LBB4_5
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 18
	b	.LBB4_6
.LBB4_9:                                # %for.end
	ori	$a0, $zero, 10
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end4:
	.size	subcommands, .Lfunc_end4-subcommands
                                        # -- End function
	.globl	usage                           # -- Begin function usage
	.p2align	5
	.type	usage,@function
usage:                                  # @usage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.13)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.13)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.14)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.15)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.15)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.16)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.16)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.17)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.17)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.18)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.18)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.19)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.19)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(subcommands)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.20)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.20)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.21)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.21)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.22)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.22)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.23)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.23)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.24)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.24)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.25)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.25)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.26)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.26)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end5:
	.size	usage, .Lfunc_end5-usage
                                        # -- End function
	.globl	backward_compatibility_hack     # -- Begin function backward_compatibility_hack
	.p2align	5
	.type	backward_compatibility_hack,@function
backward_compatibility_hack:            # @backward_compatibility_hack
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
	st.w	$zero, $a2, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s3, $a0, 0
	ori	$a0, $zero, 3
	move	$fp, $a1
	blt	$s3, $a0, .LBB6_52
# %bb.1:                                # %for.body.preheader
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	addi.w	$s7, $s3, -1
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s5, $fp, 48
	ori	$s4, $zero, 1
	sub.d	$s1, $s4, $a0
	addi.w	$s8, $zero, -1
	addi.w	$s0, $zero, -3
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$s2, $a0, %pc_lo12(.L.str.132)
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, -40
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_5
# %bb.3:                                # %for.inc29
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, -1
	addi.w	$s4, $s4, 1
	bne	$s1, $s6, .LBB6_2
# %bb.4:                                # %for.end31
	ori	$a0, $zero, 3
	bge	$s3, $a0, .LBB6_28
	b	.LBB6_52
.LBB6_5:                                # %for.cond2.preheader
	pcalau12i	$a0, %pc_hi20(option_table)
	addi.d	$s7, $a0, %pc_lo12(option_table)
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB6_108
# %bb.6:                                # %for.body6.lr.ph
	ld.d	$s2, $s5, -32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	beqz	$a0, .LBB6_10
# %bb.7:                                # %for.inc.preheader
	pcalau12i	$a0, %pc_hi20(option_table)
	addi.d	$s7, $a0, %pc_lo12(option_table)
	.p2align	4, , 16
.LBB6_8:                                # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 24
	beqz	$a1, .LBB6_108
# %bb.9:                                # %for.body6
                                        #   in Loop: Header=BB6_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 24
	bnez	$a0, .LBB6_8
.LBB6_10:                               # %if.then14
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a1, $s4, 1
	addi.w	$a2, $a0, -1
	bge	$a1, $a2, .LBB6_18
# %bb.11:                               # %for.body.preheader.i
	add.d	$a1, $a0, $s6
	addi.d	$a1, $a1, -3
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB6_13
# %bb.12:
	ori	$a1, $zero, 2
	sub.d	$a2, $a1, $s6
	b	.LBB6_16
.LBB6_13:                               # %vector.ph
	addi.d	$a4, $s5, 8
	addi.w	$a2, $zero, -8
	and	$a3, $a1, $a2
	add.d	$a5, $a0, $s0
	and	$a2, $a5, $a2
	sub.d	$a2, $a2, $s6
	addi.d	$a2, $a2, 2
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a4, -40
	xvst	$xr1, $a4, -8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_14
# %bb.15:                               # %middle.block
	beq	$a1, $a3, .LBB6_18
.LBB6_16:                               # %for.body.i.preheader
	alsl.d	$a1, $a2, $fp, 3
	addi.d	$a1, $a1, 8
	nor	$a2, $a2, $zero
	add.d	$a2, $a2, $a0
	.p2align	4, , 16
.LBB6_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a1, -8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB6_17
.LBB6_18:                               # %delete_arg.exit
	addi.w	$s3, $a0, -2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$s3, $a1, 0
	bge	$s4, $s3, .LBB6_26
# %bb.19:                               # %for.body.preheader.i63
	add.d	$a1, $s3, $s6
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB6_21
# %bb.20:
	ori	$a1, $zero, 1
	sub.d	$a2, $a1, $s6
	b	.LBB6_24
.LBB6_21:                               # %vector.ph300
	addi.w	$a2, $zero, -8
	and	$a3, $a1, $a2
	add.d	$a4, $s3, $s8
	and	$a2, $a4, $a2
	sub.d	$a2, $a2, $s6
	addi.d	$a2, $a2, 1
	move	$a4, $s5
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_22:                               # %vector.body303
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a4, -40
	xvst	$xr1, $a4, -8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_22
# %bb.23:                               # %middle.block309
	beq	$a1, $a3, .LBB6_26
.LBB6_24:                               # %for.body.i65.preheader
	alsl.d	$a1, $a2, $fp, 3
	addi.d	$a1, $a1, 8
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB6_25:                               # %for.body.i65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a1, -8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB6_25
.LBB6_26:                               # %for.end
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB6_108
# %bb.27:                               # %for.end.for.end31_crit_edge
	addi.w	$s7, $a0, -3
	ori	$a0, $zero, 3
	blt	$s3, $a0, .LBB6_52
.LBB6_28:                               # %for.body35.preheader
	bstrpick.d	$s5, $s7, 31, 0
	addi.d	$s2, $fp, 16
	ori	$s4, $zero, 1
	ori	$s0, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$s1, $a0, %pc_lo12(.L.str.134)
	.p2align	4, , 16
.LBB6_29:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, -8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_31
# %bb.30:                               # %for.inc75
                                        #   in Loop: Header=BB6_29 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	bne	$s5, $s4, .LBB6_29
	b	.LBB6_52
.LBB6_31:                               # %for.cond41.preheader
	pcalau12i	$a0, %got_pc_hi20(pla_types)
	ld.d	$s5, $a0, %got_pc_lo12(pla_types)
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB6_109
# %bb.32:                               # %for.body45.lr.ph
	slli.d	$a1, $s0, 3
	ldx.d	$s1, $fp, $a1
	addi.d	$a0, $a0, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_36
# %bb.33:                               # %for.cond41.preheader441
	pcalau12i	$a0, %got_pc_hi20(pla_types)
	ld.d	$s5, $a0, %got_pc_lo12(pla_types)
	.p2align	4, , 16
.LBB6_34:                               # %for.cond41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 16
	beqz	$a0, .LBB6_109
# %bb.35:                               # %for.body45
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.d	$a0, $a0, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 16
	bnez	$a0, .LBB6_34
.LBB6_36:                               # %if.then54
	ld.w	$a1, $s5, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.w	$a2, $a1, -1
	addi.w	$a0, $s0, -1
	bge	$s0, $a2, .LBB6_44
# %bb.37:                               # %for.body.preheader.i74
	nor	$a2, $s0, $zero
	add.d	$a3, $a2, $a1
	ori	$a2, $zero, 8
	bgeu	$a3, $a2, .LBB6_39
# %bb.38:
	move	$a2, $s0
	b	.LBB6_42
.LBB6_39:                               # %vector.ph314
	addi.w	$a5, $zero, -8
	and	$a4, $a3, $a5
	add.d	$a2, $a4, $s0
	bstrpick.d	$a6, $s0, 31, 0
	sub.d	$a7, $a6, $a1
	andn	$a5, $a5, $a7
	alsl.d	$a6, $a6, $fp, 3
	addi.d	$a6, $a6, 40
	.p2align	4, , 16
.LBB6_40:                               # %vector.body317
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a6, -40
	xvst	$xr1, $a6, -8
	addi.d	$a5, $a5, -8
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB6_40
# %bb.41:                               # %middle.block323
	beq	$a3, $a4, .LBB6_44
.LBB6_42:                               # %for.body.i76.preheader
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 8
	nor	$a2, $a2, $zero
	add.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB6_43:                               # %for.body.i76
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a3, -8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB6_43
.LBB6_44:                               # %delete_arg.exit82
	addi.w	$s3, $a1, -2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$s3, $a1, 0
	bge	$a0, $s3, .LBB6_51
# %bb.45:                               # %for.body.preheader.i85
	bstrpick.d	$a1, $s4, 31, 0
	sub.d	$a2, $s3, $a1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB6_49
# %bb.46:                               # %vector.ph328
	addi.w	$a4, $zero, -8
	and	$a3, $a2, $a4
	add.d	$a1, $a1, $a3
	bstrpick.d	$a5, $a0, 31, 0
	sub.d	$a0, $s3, $a5
	and	$a0, $a0, $a4
	alsl.d	$a4, $a5, $fp, 3
	addi.d	$a4, $a4, 40
	.p2align	4, , 16
.LBB6_47:                               # %vector.body331
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a4, -40
	xvst	$xr1, $a4, -8
	addi.d	$a0, $a0, -8
	addi.d	$a4, $a4, 64
	bnez	$a0, .LBB6_47
# %bb.48:                               # %middle.block337
	beq	$a2, $a3, .LBB6_51
.LBB6_49:                               # %for.body.i87.preheader
	alsl.d	$a0, $a1, $fp, 3
	addi.d	$a0, $a0, 8
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB6_50:                               # %for.body.i87
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.d	$a2, $a0, -8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB6_50
.LBB6_51:                               # %for.end63
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB6_109
.LBB6_52:                               # %for.end77
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB6_107
# %bb.53:                               # %for.body80.preheader
	move	$s4, $zero
	addi.d	$s5, $fp, 40
	addi.d	$a0, $fp, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	addi.w	$s8, $zero, -1
	ori	$s2, $zero, 45
	pcalau12i	$a0, %pc_hi20(esp_opt_table)
	addi.d	$s6, $a0, %pc_lo12(esp_opt_table)
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB6_56
	.p2align	4, , 16
.LBB6_54:                               # %delete_arg.exit104
                                        #   in Loop: Header=BB6_56 Depth=1
	ld.w	$a0, $s0, 16
	ld.d	$a1, $s0, 8
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
.LBB6_55:                               # %for.inc115
                                        #   in Loop: Header=BB6_56 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 1
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bge	$s7, $s3, .LBB6_69
.LBB6_56:                               # %for.body80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_60 Depth 2
                                        #     Child Loop BB6_65 Depth 2
                                        #     Child Loop BB6_68 Depth 2
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $fp, $a0
	ld.bu	$a1, $a0, 0
	bne	$a1, $s2, .LBB6_55
# %bb.57:                               # %for.cond87.preheader
                                        #   in Loop: Header=BB6_56 Depth=1
	ld.d	$a1, $s6, 0
	beqz	$a1, .LBB6_55
# %bb.58:                               # %for.body93.lr.ph
                                        #   in Loop: Header=BB6_56 Depth=1
	addi.d	$s1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	move	$s0, $s6
	beqz	$a0, .LBB6_62
# %bb.59:                               # %for.cond87.preheader440
                                        #   in Loop: Header=BB6_56 Depth=1
	pcalau12i	$a0, %pc_hi20(esp_opt_table)
	addi.d	$s0, $a0, %pc_lo12(esp_opt_table)
	.p2align	4, , 16
.LBB6_60:                               # %for.cond87
                                        #   Parent Loop BB6_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 24
	beqz	$a1, .LBB6_55
# %bb.61:                               # %for.body93
                                        #   in Loop: Header=BB6_60 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 24
	bnez	$a0, .LBB6_60
.LBB6_62:                               # %if.then103
                                        #   in Loop: Header=BB6_56 Depth=1
	addi.w	$a0, $s3, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bge	$s7, $a0, .LBB6_54
# %bb.63:                               # %for.body.i98.preheader
                                        #   in Loop: Header=BB6_56 Depth=1
	nor	$a1, $s4, $zero
	add.d	$a2, $a1, $a0
	move	$a1, $s7
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB6_67
# %bb.64:                               # %vector.ph344
                                        #   in Loop: Header=BB6_56 Depth=1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	and	$a3, $a2, $a5
	add.d	$a1, $s7, $a3
	add.d	$a4, $s8, $a0
	and	$a4, $a4, $a5
	move	$a5, $s5
	.p2align	4, , 16
.LBB6_65:                               # %vector.body347
                                        #   Parent Loop BB6_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -24
	xvld	$xr1, $a5, 8
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, -8
	addi.d	$a5, $a5, 64
	bnez	$a4, .LBB6_65
# %bb.66:                               # %middle.block353
                                        #   in Loop: Header=BB6_56 Depth=1
	beq	$a2, $a3, .LBB6_54
.LBB6_67:                               # %for.body.i98.preheader413
                                        #   in Loop: Header=BB6_56 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB6_68:                               # %for.body.i98
                                        #   Parent Loop BB6_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a2, 0
	st.d	$a1, $a2, -8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB6_68
	b	.LBB6_54
.LBB6_69:                               # %for.end117
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB6_107
# %bb.70:                               # %for.body.preheader.i105
	addi.d	$s6, $s3, -1
	bstrpick.d	$s5, $s6, 31, 0
	addi.d	$s4, $s5, -1
	addi.d	$s2, $fp, 48
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$s1, $a0, %pc_lo12(.L.str.136)
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB6_71:                               # %for.body.i107
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, -40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_74
# %bb.72:                               # %for.inc.i
                                        #   in Loop: Header=BB6_71 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	addi.w	$s7, $s7, 1
	bne	$s3, $s0, .LBB6_71
# %bb.73:                               # %if.end120
	ori	$a0, $zero, 2
	bge	$s3, $a0, .LBB6_82
	b	.LBB6_107
.LBB6_74:                               # %if.then.i
	addi.w	$s3, $s6, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s6, $a0, 0
	bge	$s7, $s3, .LBB6_81
# %bb.75:                               # %for.body.preheader.i.i
	sub.d	$a0, $s3, $s0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB6_79
# %bb.76:                               # %vector.ph361
	sub.d	$a2, $s5, $s0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a0, $a4
	and	$a3, $s4, $a4
	add.d	$s0, $a3, $s0
	and	$a2, $a2, $a4
	.p2align	4, , 16
.LBB6_77:                               # %vector.body364
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s2, -40
	xvst	$xr1, $s2, -8
	addi.d	$a2, $a2, -8
	addi.d	$s2, $s2, 64
	bnez	$a2, .LBB6_77
# %bb.78:                               # %middle.block370
	beq	$a0, $a1, .LBB6_81
.LBB6_79:                               # %for.body.i.i.preheader
	alsl.d	$a0, $s0, $fp, 3
	addi.d	$a0, $a0, 8
	sub.d	$a1, $s3, $s0
	.p2align	4, , 16
.LBB6_80:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.d	$a2, $a0, -8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB6_80
.LBB6_81:                               # %if.then119
	pcalau12i	$a0, %pc_hi20(input_type)
	ori	$a1, $zero, 7
	st.w	$a1, $a0, %pc_lo12(input_type)
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB6_107
.LBB6_82:                               # %for.body.preheader.i114
	addi.d	$s6, $s3, -1
	bstrpick.d	$s5, $s6, 31, 0
	addi.d	$s4, $s5, -1
	addi.d	$s2, $fp, 48
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$s1, $a0, %pc_lo12(.L.str.137)
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB6_83:                               # %for.body.i116
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, -40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_86
# %bb.84:                               # %for.inc.i121
                                        #   in Loop: Header=BB6_83 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	addi.w	$s7, $s7, 1
	bne	$s3, $s0, .LBB6_83
# %bb.85:                               # %if.end124
	ori	$a0, $zero, 2
	bge	$s3, $a0, .LBB6_94
	b	.LBB6_107
.LBB6_86:                               # %if.then.i124
	addi.w	$s3, $s6, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s6, $a0, 0
	bge	$s7, $s3, .LBB6_93
# %bb.87:                               # %for.body.preheader.i.i127
	sub.d	$a0, $s3, $s0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB6_91
# %bb.88:                               # %vector.ph378
	sub.d	$a2, $s5, $s0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a0, $a4
	and	$a3, $s4, $a4
	add.d	$s0, $a3, $s0
	and	$a2, $a2, $a4
	.p2align	4, , 16
.LBB6_89:                               # %vector.body381
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s2, -40
	xvst	$xr1, $s2, -8
	addi.d	$a2, $a2, -8
	addi.d	$s2, $s2, 64
	bnez	$a2, .LBB6_89
# %bb.90:                               # %middle.block387
	beq	$a0, $a1, .LBB6_93
.LBB6_91:                               # %for.body.i.i129.preheader
	alsl.d	$a0, $s0, $fp, 3
	addi.d	$a0, $a0, 8
	sub.d	$a1, $s3, $s0
	.p2align	4, , 16
.LBB6_92:                               # %for.body.i.i129
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.d	$a2, $a0, -8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB6_92
.LBB6_93:                               # %if.then123
	pcalau12i	$a0, %pc_hi20(input_type)
	ori	$a1, $zero, 5
	st.w	$a1, $a0, %pc_lo12(input_type)
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB6_107
.LBB6_94:                               # %for.body.preheader.i138
	addi.d	$a4, $s3, -1
	bstrpick.d	$a3, $a4, 31, 0
	addi.d	$a2, $a3, -1
	addi.d	$a1, $fp, 48
	ori	$a6, $zero, 1
	ori	$a5, $zero, 45
	ori	$a7, $zero, 102
	ori	$a0, $zero, 1
	b	.LBB6_96
	.p2align	4, , 16
.LBB6_95:                               # %for.inc.i145
                                        #   in Loop: Header=BB6_96 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.w	$a6, $a6, 1
	beq	$s3, $a0, .LBB6_107
.LBB6_96:                               # %for.body.i140
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a1, -40
	ld.bu	$t1, $t0, 0
	bne	$t1, $a5, .LBB6_95
# %bb.97:                               # %sub_1
                                        #   in Loop: Header=BB6_96 Depth=1
	ld.bu	$t1, $t0, 1
	bne	$t1, $a7, .LBB6_95
# %bb.98:                               # %for.body.i140.tail
                                        #   in Loop: Header=BB6_96 Depth=1
	ld.bu	$t0, $t0, 2
	bnez	$t0, .LBB6_95
# %bb.99:                               # %if.then.i148
	addi.w	$a5, $a4, 0
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	st.w	$a4, $a7, 0
	bge	$a6, $a5, .LBB6_106
# %bb.100:                              # %for.body.preheader.i.i151
	sub.d	$a4, $a5, $a0
	ori	$a6, $zero, 8
	bltu	$a4, $a6, .LBB6_104
# %bb.101:                              # %vector.ph395
	sub.d	$a6, $a3, $a0
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	and	$a3, $a4, $a7
	and	$a2, $a2, $a7
	add.d	$a0, $a2, $a0
	and	$a2, $a6, $a7
.LBB6_102:                              # %vector.body398
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a1, -40
	xvst	$xr1, $a1, -8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB6_102
# %bb.103:                              # %middle.block404
	beq	$a4, $a3, .LBB6_106
.LBB6_104:                              # %for.body.i.i153.preheader
	alsl.d	$a1, $a0, $fp, 3
	addi.d	$a1, $a1, 8
	sub.d	$a0, $a5, $a0
.LBB6_105:                              # %for.body.i.i153
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a1, -8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB6_105
.LBB6_106:                              # %if.then127
	pcalau12i	$a0, %pc_hi20(input_type)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(input_type)
.LBB6_107:                              # %if.end128
	move	$a0, $zero
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
.LBB6_108:                              # %if.then22
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s5, -32
	pcalau12i	$a1, %pc_hi20(.L.str.133)
	addi.d	$a1, $a1, %pc_lo12(.L.str.133)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_109:                              # %if.then68
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.135)
	addi.d	$a1, $a1, %pc_lo12(.L.str.135)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	backward_compatibility_hack, .Lfunc_end6-backward_compatibility_hack
                                        # -- End function
	.globl	delete_arg                      # -- Begin function delete_arg
	.p2align	5
	.type	delete_arg,@function
delete_arg:                             # @delete_arg
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 0
	addi.w	$a4, $a3, -1
	st.w	$a4, $a0, 0
	bge	$a2, $a4, .LBB7_7
# %bb.1:                                # %for.body.preheader
	nor	$a0, $a2, $zero
	add.d	$a4, $a0, $a3
	ori	$a5, $zero, 8
	move	$a0, $a2
	bltu	$a4, $a5, .LBB7_5
# %bb.2:                                # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	add.d	$a0, $a5, $a2
	alsl.d	$a2, $a2, $a1, 3
	addi.d	$a2, $a2, 40
	move	$a6, $a5
	.p2align	4, , 16
.LBB7_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a2, -40
	xvst	$xr1, $a2, -8
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, 64
	bnez	$a6, .LBB7_3
# %bb.4:                                # %middle.block
	beq	$a4, $a5, .LBB7_7
.LBB7_5:                                # %for.body.preheader10
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a1, -8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB7_6
.LBB7_7:                                # %for.end
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	delete_arg, .Lfunc_end7-delete_arg
                                        # -- End function
	.globl	check_arg                       # -- Begin function check_arg
	.p2align	5
	.type	check_arg,@function
check_arg:                              # @check_arg
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
	move	$fp, $a0
	ld.w	$s6, $a0, 0
	ori	$a0, $zero, 2
	blt	$s6, $a0, .LBB8_4
# %bb.1:                                # %for.body.preheader
	move	$s0, $a2
	addi.d	$s7, $s6, -1
	bstrpick.d	$s5, $s7, 31, 0
	addi.d	$s4, $s5, -1
	move	$s3, $a1
	addi.d	$s2, $a1, 48
	ori	$s8, $zero, 1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, -40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_6
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	addi.w	$s8, $s8, 1
	bne	$s6, $s1, .LBB8_2
.LBB8_4:
	move	$a0, $zero
.LBB8_5:                                # %cleanup
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
.LBB8_6:                                # %if.then
	addi.w	$a1, $s7, 0
	st.w	$s7, $fp, 0
	ori	$a0, $zero, 1
	bge	$s8, $a1, .LBB8_5
# %bb.7:                                # %for.body.preheader.i
	sub.d	$a2, $a1, $s1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB8_11
# %bb.8:                                # %vector.ph
	sub.d	$a4, $s5, $s1
	addi.w	$a5, $zero, -8
	and	$a3, $a2, $a5
	and	$a6, $s4, $a5
	add.d	$s1, $a6, $s1
	and	$a4, $a4, $a5
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $s2, -32
	xvld	$xr1, $s2, 0
	xvst	$xr0, $s2, -40
	xvst	$xr1, $s2, -8
	addi.d	$a4, $a4, -8
	addi.d	$s2, $s2, 64
	bnez	$a4, .LBB8_9
# %bb.10:                               # %middle.block
	beq	$a2, $a3, .LBB8_5
.LBB8_11:                               # %for.body.i.preheader
	alsl.d	$a2, $s1, $s3, 3
	addi.d	$a2, $a2, 8
	sub.d	$a1, $a1, $s1
	.p2align	4, , 16
.LBB8_12:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a2, -8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB8_12
	b	.LBB8_5
.Lfunc_end8:
	.size	check_arg, .Lfunc_end8-check_arg
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ESPRESSO"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"many"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"exact"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"qm"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"single_output"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"so"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"so_both"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"simplify"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"echo"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"opo"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"opoall"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"pair"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"pairall"
	.size	.L.str.12, 8

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"check"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"stats"
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"verify"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"PLAverify"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"equiv"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"map"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"mapdc"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"fsm"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"contain"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"d1merge"
	.size	.L.str.22, 8

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"d1merge_in"
	.size	.L.str.23, 11

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"disjoint"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"dsharp"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"intersect"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"minterms"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"primes"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"separate"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"sharp"
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"union"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"xor"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"essen"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"expand"
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"gasp"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"irred"
	.size	.L.str.36, 6

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"make_sparse"
	.size	.L.str.37, 12

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"reduce"
	.size	.L.str.38, 7

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"taut"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"super_gasp"
	.size	.L.str.40, 11

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"lexsort"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"test"
	.size	.L.str.42, 5

	.type	option_table,@object            # @option_table
	.data
	.globl	option_table
	.p2align	3, 0x0
option_table:
	.dword	.L.str
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.1
	.word	37                              # 0x25
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.2
	.word	9                               # 0x9
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.3
	.word	24                              # 0x18
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.4
	.word	28                              # 0x1c
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.5
	.word	28                              # 0x1c
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.6
	.word	29                              # 0x1d
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.7
	.word	27                              # 0x1b
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.8
	.word	7                               # 0x7
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.9
	.word	19                              # 0x13
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.10
	.word	20                              # 0x14
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.11
	.word	21                              # 0x15
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.12
	.word	22                              # 0x16
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.13
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.14
	.word	30                              # 0x1e
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.15
	.word	36                              # 0x24
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.16
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.17
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.18
	.word	16                              # 0x10
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.19
	.word	17                              # 0x11
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.20
	.word	41                              # 0x29
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.21
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.22
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.23
	.word	40                              # 0x28
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.24
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.25
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.26
	.word	12                              # 0xc
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.27
	.word	18                              # 0x12
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.28
	.word	23                              # 0x17
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.29
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.30
	.word	26                              # 0x1a
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.31
	.word	35                              # 0x23
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.32
	.word	39                              # 0x27
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.33
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.34
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.dword	.L.str.35
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.36
	.word	13                              # 0xd
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.37
	.word	15                              # 0xf
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.38
	.word	25                              # 0x19
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.dword	.L.str.39
	.word	32                              # 0x20
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.40
	.word	31                              # 0x1f
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	.L.str.41
	.word	14                              # 0xe
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	.L.str.42
	.word	33                              # 0x21
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.dword	0
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	option_table, 1056

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.space	1
	.size	.L.str.43, 1

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"compl"
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"expand1"
	.size	.L.str.45, 8

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"irred1"
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"reduce1"
	.size	.L.str.47, 8

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"mincov"
	.size	.L.str.48, 7

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"mincov1"
	.size	.L.str.49, 8

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"sparse"
	.size	.L.str.50, 7

	.type	debug_table,@object             # @debug_table
	.data
	.globl	debug_table
	.p2align	3, 0x0
debug_table:
	.dword	.L.str.43
	.word	10614                           # 0x2976
	.space	4
	.dword	.L.str.44
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.33
	.word	2                               # 0x2
	.space	4
	.dword	.L.str.34
	.word	4                               # 0x4
	.space	4
	.dword	.L.str.45
	.word	12                              # 0xc
	.space	4
	.dword	.L.str.36
	.word	32                              # 0x20
	.space	4
	.dword	.L.str.46
	.word	16416                           # 0x4020
	.space	4
	.dword	.L.str.38
	.word	64                              # 0x40
	.space	4
	.dword	.L.str.47
	.word	192                             # 0xc0
	.space	4
	.dword	.L.str.48
	.word	2048                            # 0x800
	.space	4
	.dword	.L.str.49
	.word	6144                            # 0x1800
	.space	4
	.dword	.L.str.50
	.word	256                             # 0x100
	.space	4
	.dword	.L.str.30
	.word	8192                            # 0x2000
	.space	4
	.dword	.L.str.39
	.word	512                             # 0x200
	.space	4
	.dword	.L.str.35
	.word	16                              # 0x10
	.space	4
	.dword	.L.str.2
	.word	1024                            # 0x400
	.space	4
	.space	16
	.size	debug_table, 272

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"eat"
	.size	.L.str.51, 4

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"eatdots"
	.size	.L.str.52, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"fast"
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"kiss"
	.size	.L.str.54, 5

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"ness"
	.size	.L.str.55, 5

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"nirr"
	.size	.L.str.56, 5

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"nunwrap"
	.size	.L.str.57, 8

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"onset"
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"pos"
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"random"
	.size	.L.str.60, 7

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"strong"
	.size	.L.str.61, 7

	.type	esp_opt_table,@object           # @esp_opt_table
	.data
	.globl	esp_opt_table
	.p2align	3, 0x0
esp_opt_table:
	.dword	.L.str.51
	.dword	echo_comments
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.52
	.dword	echo_unknown_commands
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.53
	.dword	single_expand
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.54
	.dword	kiss
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.55
	.dword	remove_essential
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.56
	.dword	force_irredundant
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.57
	.dword	unwrap_onset
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.58
	.dword	recompute_onset
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.59
	.dword	pos
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.60
	.dword	use_random_order
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.61
	.dword	use_super_gasp
	.word	1                               # 0x1
	.space	4
	.space	24
	.size	esp_opt_table, 288

	.type	.L.str.62,@object               # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"D:S:de:o:r:stv:x"
	.size	.L.str.62, 17

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%s: bad subcommand \"%s\"\n"
	.size	.L.str.63, 25

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%s: bad output type \"%s\"\n"
	.size	.L.str.64, 26

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s: bad espresso option \"%s\"\n"
	.size	.L.str.65, 30

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%s: bad debug type \"%s\"\n"
	.size	.L.str.66, 25

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%d-%d"
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%s: bad output range \"%s\"\n"
	.size	.L.str.68, 27

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"# espresso"
	.size	.L.str.69, 11

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" %s"
	.size	.L.str.70, 4

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"# %s\n"
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"UC Berkeley, Espresso Version #2.3, Release date 01/31/88"
	.size	.L.str.73, 58

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"trailing arguments on command line"
	.size	.L.str.74, 35

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ESPRESSO   "
	.size	.L.str.75, 12

	.type	last_fp,@object                 # @last_fp
	.local	last_fp
	.comm	last_fp,8,8
	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"SIMPLIFY  "
	.size	.L.str.76, 11

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"PRIMES     "
	.size	.L.str.77, 12

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"ON-set is%sa tautology\n"
	.size	.L.str.78, 24

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	" "
	.size	.L.str.79, 2

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" not "
	.size	.L.str.80, 6

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"cover verification failed"
	.size	.L.str.83, 26

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"(stdin)"
	.size	.L.str.84, 8

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"r"
	.size	.L.str.86, 2

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"%s: Unable to open %s\n"
	.size	.L.str.87, 23

	.type	input_type,@object              # @input_type
	.data
	.p2align	2, 0x0
input_type:
	.word	3                               # 0x3
	.size	input_type, 4

	.type	.L.str.88,@object               # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"%s: Unable to find PLA on file %s\n"
	.size	.L.str.88, 35

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"# %s\t%2d call(s) for %s (%2ld.%01ld%%)\n"
	.size	.L.str.89, 40

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"READ       "
	.size	.L.str.90, 12

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"WRITE      "
	.size	.L.str.91, 12

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"COMPL      "
	.size	.L.str.92, 12

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"REDUCE     "
	.size	.L.str.93, 12

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"EXPAND     "
	.size	.L.str.94, 12

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"ESSEN      "
	.size	.L.str.95, 12

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"IRRED      "
	.size	.L.str.96, 12

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"REDUCE_GASP"
	.size	.L.str.97, 12

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"EXPAND_GASP"
	.size	.L.str.98, 12

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"IRRED_GASP "
	.size	.L.str.99, 12

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"MV_REDUCE  "
	.size	.L.str.100, 12

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"RAISE_IN   "
	.size	.L.str.101, 12

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"VERIFY     "
	.size	.L.str.102, 12

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"MINCOV     "
	.size	.L.str.103, 12

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"                "
	.size	.L.str.104, 17

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	",\n                "
	.size	.L.str.105, 19

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	", "
	.size	.L.str.106, 3

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"%s"
	.size	.L.str.107, 3

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"%s\n\n"
	.size	.L.str.108, 5

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"-do"
	.size	.L.str.132, 4

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"espresso: bad keyword \"%s\" following -do\n"
	.size	.L.str.133, 42

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"-out"
	.size	.L.str.134, 5

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"espresso: bad keyword \"%s\" following -out\n"
	.size	.L.str.135, 43

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"-fdr"
	.size	.L.str.136, 5

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"-fr"
	.size	.L.str.137, 4

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"PLA's compared equal"
	.size	.Lstr.2, 21

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"PLA comparison failed; the PLA's are not equivalent"
	.size	.Lstr.3, 52

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"SYNOPSIS: espresso [options] [file]\n"
	.size	.Lstr.4, 37

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"  -d        Enable debugging"
	.size	.Lstr.5, 29

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"  -e[opt]   Select espresso option:"
	.size	.Lstr.6, 36

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"                fast, ness, nirr, nunwrap, onset, pos, strong,"
	.size	.Lstr.7, 63

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"                eat, eatdots, kiss, random"
	.size	.Lstr.8, 43

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"  -o[type]  Select output format:"
	.size	.Lstr.9, 34

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"                f, fd, fr, fdr, pleasure, eqntott, kiss, cons"
	.size	.Lstr.10, 62

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"  -rn-m     Select range for subcommands:"
	.size	.Lstr.11, 42

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"                d1merge: first and last variables (0 ... m-1)"
	.size	.Lstr.12, 62

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"                minterms: first and last variables (0 ... m-1)"
	.size	.Lstr.13, 63

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"                opoall: first and last outputs (0 ... m-1)"
	.size	.Lstr.14, 59

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"  -s        Provide short execution summary"
	.size	.Lstr.15, 44

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"  -t        Provide longer execution trace"
	.size	.Lstr.16, 43

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"  -x        Suppress printing of solution"
	.size	.Lstr.17, 42

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"  -v[type]  Verbose debugging detail (-v '' for all)"
	.size	.Lstr.18, 53

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"  -D[cmd]   Execute subcommand 'cmd':"
	.size	.Lstr.19, 38

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"  -Sn       Select strategy for subcommands:"
	.size	.Lstr.20, 45

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"                opo: bit2=exact bit1=repeated bit0=skip sparse"
	.size	.Lstr.21, 63

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"                opoall: 0=minimize, 1=exact"
	.size	.Lstr.22, 44

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"                pair: 0=algebraic, 1=strongd, 2=espresso, 3=exact"
	.size	.Lstr.23, 66

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"                pairall: 0=minimize, 1=exact, 2=opo"
	.size	.Lstr.24, 52

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"                so_espresso: 0=minimize, 1=exact"
	.size	.Lstr.25, 49

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"                so_both: 0=minimize, 1=exact"
	.size	.Lstr.26, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym echo_comments
	.addrsig_sym echo_unknown_commands
	.addrsig_sym single_expand
	.addrsig_sym kiss
	.addrsig_sym remove_essential
	.addrsig_sym force_irredundant
	.addrsig_sym unwrap_onset
	.addrsig_sym recompute_onset
	.addrsig_sym pos
	.addrsig_sym use_random_order
	.addrsig_sym use_super_gasp
