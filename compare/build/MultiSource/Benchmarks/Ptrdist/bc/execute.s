	.file	"execute.c"
	.text
	.globl	stop_execution                  # -- Begin function stop_execution
	.p2align	5
	.type	stop_execution,@function
stop_execution:                         # @stop_execution
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(had_sigint)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(had_sigint)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.Lfunc_end0:
	.size	stop_execution, .Lfunc_end0-stop_execution
                                        # -- End function
	.globl	byte                            # -- Begin function byte
	.p2align	5
	.type	byte,@function
byte:                                   # @byte
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 4
	addi.d	$a2, $a1, 1
	pcalau12i	$a3, %got_pc_hi20(functions)
	ld.d	$a3, $a3, %got_pc_lo12(functions)
	st.w	$a2, $a0, 4
	ld.w	$a0, $a0, 0
	srai.d	$a2, $a1, 10
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 168
	mul.d	$a0, $a0, $a4
	bstrpick.d	$a4, $a1, 62, 53
	add.d	$a4, $a1, $a4
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	bstrpick.d	$a2, $a4, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a1, $a1, $a2
	ldx.bu	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	byte, .Lfunc_end1-byte
                                        # -- End function
	.globl	execute                         # -- Begin function execute
	.p2align	5
	.type	execute,@function
execute:                                # @execute
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
	pcalau12i	$a0, %got_pc_hi20(pc)
	ld.d	$s4, $a0, %got_pc_lo12(pc)
	pcalau12i	$a0, %got_pc_hi20(runtime_error)
	ld.d	$s6, $a0, %got_pc_lo12(runtime_error)
	st.d	$zero, $s4, 0
	st.b	$zero, $s6, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(interactive)
	ld.d	$s3, $a0, %got_pc_lo12(interactive)
	ld.bu	$a0, $s3, 0
	pcalau12i	$s2, %pc_hi20(had_sigint)
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(stop_execution)
	addi.d	$a1, $a0, %pc_lo12(stop_execution)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	st.w	$zero, $s2, %pc_lo12(had_sigint)
.LBB2_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(functions)
	ld.d	$s5, $a0, %got_pc_lo12(functions)
	ld.w	$a0, $s4, 0
	ld.d	$a4, $s5, 0
	ld.w	$a2, $s4, 4
	ori	$a1, $zero, 168
	mul.d	$a1, $a0, $a1
	add.d	$a1, $a4, $a1
	ld.w	$a1, $a1, 136
	bge	$a2, $a1, .LBB2_133
# %bb.3:                                # %if.end
	ld.bu	$a1, $s6, 0
	bnez	$a1, .LBB2_133
# %bb.4:                                # %while.body.preheader
	ori	$s7, $zero, 168
	ori	$s8, $zero, 92
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$fp, $a1, %pc_lo12(.LJTI2_0)
	.p2align	4, , 16
.LBB2_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_40 Depth 2
                                        #     Child Loop BB2_20 Depth 2
	srai.d	$a5, $a2, 10
	addi.w	$a3, $a2, 1
	st.w	$a3, $s4, 4
	bstrpick.d	$a1, $a2, 62, 53
	add.d	$a6, $a2, $a1
	mul.d	$a1, $a0, $s7
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	bstrpick.d	$a6, $a6, 31, 10
	slli.d	$a6, $a6, 10
	sub.w	$a6, $a2, $a6
	ldx.bu	$s0, $a5, $a6
	addi.d	$a5, $s0, -33
	bltu	$s8, $a5, .LBB2_103
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $fp, $a5
	add.d	$a5, $fp, $a5
	jr	$a5
.LBB2_7:                                # %sw.bb170
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s1, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$a2, $a1, %got_pc_lo12(c_code)
	ld.d	$a1, $s1, 0
	move	$s0, $a0
	st.b	$a0, $a2, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	pcalau12i	$a1, %got_pc_hi20(_one_)
	ld.d	$a1, $a1, %got_pc_lo12(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	sltui	$a2, $s0, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	b	.LBB2_121
	.p2align	4, , 16
.LBB2_8:                                # %while.cond113
                                        #   in Loop: Header=BB2_11 Depth=2
	ori	$a0, $zero, 34
	beq	$a2, $a0, .LBB2_96
.LBB2_9:                                # %if.end137.sink.split
                                        #   in Loop: Header=BB2_11 Depth=2
	ext.w.b	$a0, $a2
	pcaddu18i	$ra, %call36(out_char)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %if.end137
                                        #   in Loop: Header=BB2_11 Depth=2
	ld.w	$a3, $s4, 4
	ld.d	$a4, $s5, 0
	ld.w	$a0, $s4, 0
.LBB2_11:                               # %while.cond113
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a2, $a3, 10
	addi.w	$a1, $a3, 1
	st.w	$a1, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	ori	$a6, $zero, 168
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 8
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	bstrpick.d	$a4, $a5, 31, 10
	slli.d	$a4, $a4, 10
	sub.w	$a4, $a3, $a4
	ldx.bu	$a2, $a2, $a4
	ori	$a4, $zero, 92
	bne	$a2, $a4, .LBB2_8
# %bb.12:                               # %if.else123
                                        #   in Loop: Header=BB2_11 Depth=2
	srai.d	$a2, $a1, 10
	addi.d	$a3, $a3, 2
	st.w	$a3, $s4, 4
	bstrpick.d	$a3, $a1, 62, 53
	add.d	$a3, $a1, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a3, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a1, $a1, $a2
	ldx.bu	$a0, $a0, $a1
	ori	$a1, $zero, 34
	beq	$a0, $a1, .LBB2_96
# %bb.13:                               # %if.end129
                                        #   in Loop: Header=BB2_11 Depth=2
	ext.w.b	$a0, $a0
	addi.d	$a0, $a0, -92
	rotri.w	$a0, $a0, 1
	ori	$a1, $zero, 12
	bltu	$a1, $a0, .LBB2_10
# %bb.14:                               # %if.end129
                                        #   in Loop: Header=BB2_11 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2601
	srl.d	$a1, $a1, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_10
# %bb.15:                               # %switch.lookup
                                        #   in Loop: Header=BB2_11 Depth=2
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.execute)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.execute)
	ldx.bu	$a2, $a1, $a0
	b	.LBB2_9
.LBB2_16:                               # %sw.bb12
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$a1, $a1, %got_pc_lo12(c_code)
	sltui	$a0, $a0, 1
	st.b	$a0, $a1, 0
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, 4
	ld.d	$a4, $s5, 0
	ld.w	$a0, $s4, 0
.LBB2_17:                               # %sw.bb17
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a2, $a3, 10
	addi.d	$a5, $a3, 1
	addi.w	$a6, $a5, 0
	st.w	$a5, $s4, 4
	bstrpick.d	$a1, $a3, 62, 53
	add.d	$a7, $a3, $a1
	ori	$a1, $zero, 168
	mul.d	$a0, $a0, $a1
	add.d	$a1, $a4, $a0
	addi.d	$a4, $a1, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	bstrpick.d	$a2, $a7, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a2, $a3, $a2
	ldx.bu	$a0, $a0, $a2
	srai.d	$a2, $a6, 10
	addi.d	$a3, $a3, 2
	st.w	$a3, $s4, 4
	bstrpick.d	$a3, $a6, 62, 53
	add.d	$a3, $a5, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	bstrpick.d	$a3, $a3, 31, 10
	slli.d	$a3, $a3, 10
	sub.w	$a3, $a5, $a3
	ldx.bu	$a2, $a2, $a3
	ori	$a3, $zero, 74
	bne	$s0, $a3, .LBB2_25
.LBB2_18:                               # %if.then38
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a2, $a2, 8
	ld.d	$a1, $a1, 144
	or	$a3, $a2, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB2_21
# %bb.19:                               # %while.body44.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	add.d	$a2, $a2, $a0
	srli.d	$a2, $a2, 6
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB2_20:                               # %while.body44
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 512
	addi.w	$a2, $a2, -1
	ori	$a3, $zero, 1
	bltu	$a3, $a2, .LBB2_20
.LBB2_21:                               # %while.end
                                        #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a0, 63
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a0, $s4, 4
	b	.LBB2_122
.LBB2_22:                               # %sw.bb173
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(o_base)
	ld.d	$a1, $a1, %got_pc_lo12(o_base)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(out_char)
	ld.d	$a2, $a2, %got_pc_lo12(out_char)
	pcaddu18i	$ra, %call36(out_num)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 87
	bne	$s0, $a0, .LBB2_24
# %bb.23:                               # %if.then178
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(out_char)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %if.end179
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(store_var)
	jirl	$ra, $ra, 0
	b	.LBB2_96
.LBB2_25:                               # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a3, %got_pc_hi20(c_code)
	ld.d	$a3, $a3, %got_pc_lo12(c_code)
	ld.b	$a3, $a3, 0
	addi.d	$a4, $s0, -66
	sltui	$a4, $a4, 1
	andi	$a3, $a3, 255
	sltu	$a3, $zero, $a3
	and	$a4, $a4, $a3
	bnez	$a4, .LBB2_18
# %bb.26:                               # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $s0, -90
	sltu	$a4, $zero, $a4
	or	$a3, $a4, $a3
	bnez	$a3, .LBB2_122
	b	.LBB2_18
.LBB2_27:                               # %sw.bb268
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_28:                               # %sw.bb294
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.29:                               # %if.then297
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a1, 0
	ld.d	$a3, $a0, 0
	st.d	$a2, $a0, 0
	st.d	$a3, $a1, 0
	b	.LBB2_122
.LBB2_30:                               # %sw.bb98
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	blt	$a4, $a3, .LBB2_32
# %bb.31:                               # %if.then104
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a3, $a1, $a0
.LBB2_32:                               # %if.end110
                                        #   in Loop: Header=BB2_5 Depth=1
	ext.w.b	$a0, $a3
	pcaddu18i	$ra, %call36(decr_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_33:                               # %sw.bb252
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_105
# %bb.34:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(load_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_35:                               # %sw.bb474
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.36:                               # %if.then477
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	addi.w	$a1, $zero, -1
	slt	$a0, $a1, $a0
	b	.LBB2_120
.LBB2_37:                               # %sw.bb49
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $s3
	srai.d	$a5, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a6, $a3, 62, 53
	add.d	$a6, $a3, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	bstrpick.d	$a6, $a6, 31, 10
	slli.d	$a6, $a6, 10
	sub.w	$a3, $a3, $a6
	ldx.b	$a3, $a5, $a3
	move	$s3, $s2
	addi.w	$a5, $zero, -1
	bge	$a5, $a3, .LBB2_106
# %bb.38:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$s0, $a3, 255
	ori	$a0, $zero, 168
	mul.d	$s2, $s0, $a0
	ldx.bu	$a0, $a4, $s2
	beqz	$a0, .LBB2_107
.LBB2_39:                               # %if.end68
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pc)
	ld.d	$s1, $a0, %got_pc_lo12(pc)
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(process_params)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	add.d	$a0, $a0, $s2
	ld.d	$s2, $a0, 160
	beqz	$s2, .LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %for.body
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(auto_var)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 8
	bnez	$s2, .LBB2_40
.LBB2_41:                               # %for.end
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fpush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 4
	pcaddu18i	$ra, %call36(fpush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a0, $a0, %got_pc_lo12(i_base)
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fpush)
	jirl	$ra, $ra, 0
	st.w	$s0, $s1, 0
	st.w	$zero, $s1, 4
	b	.LBB2_108
.LBB2_42:                               # %sw.bb75
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(fn_stack)
	ld.d	$a1, $a1, %got_pc_lo12(fn_stack)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(i_base)
	ld.d	$a2, $a2, %got_pc_lo12(i_base)
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 10
	bne	$a1, $a0, .LBB2_104
# %bb.43:                               # %if.then82
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pc)
	ld.d	$a0, $a0, %got_pc_lo12(pc)
	pcaddu18i	$ra, %call36(push_b10_const)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_44:                               # %sw.bb305
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_one_)
	b	.LBB2_93
.LBB2_45:                               # %sw.bb414
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.46:                               # %if.then417
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	b	.LBB2_88
.LBB2_47:                               # %sw.bb379
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.48:                               # %if.then382
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.49:                               # %if.then386
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_50:                               # %sw.bb269
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_109
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(store_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_52:                               # %sw.bb157
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_110
# %bb.53:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(store_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_54:                               # %sw.bb426
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.55:                               # %if.then429
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	sltu	$a0, $zero, $a0
	b	.LBB2_120
.LBB2_56:                               # %sw.bb394
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.57:                               # %if.then397
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(scale)
	ld.d	$a2, $a2, %got_pc_lo12(scale)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_raise)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_117
# %bb.58:                               # %land.lhs.true406
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_neg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_117
# %bb.59:                               # %if.then411
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_117
.LBB2_60:                               # %sw.bb
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_111
# %bb.61:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(incr_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_62:                               # %sw.bb309
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.63:                               # %if.then312
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_102
# %bb.64:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $zero
	b	.LBB2_119
.LBB2_65:                               # %sw.bb341
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.66:                               # %if.then344
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
	b	.LBB2_117
.LBB2_67:                               # %sw.bb462
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.68:                               # %if.then465
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	addi.d	$a0, $a0, -1
	b	.LBB2_88
.LBB2_69:                               # %sw.bb85
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_112
# %bb.70:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(load_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_71:                               # %sw.bb184
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a0, $a3, 10
	addi.d	$a2, $a2, 2
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a3, 62, 53
	add.d	$a2, $a3, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a2, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $a3, $a1
	ldx.bu	$a0, $a0, $a1
	addi.d	$a0, $a0, -73
	ori	$a1, $zero, 10
	bltu	$a1, $a0, .LBB2_122
# %bb.72:                               # %sw.bb184
                                        #   in Loop: Header=BB2_5 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_73:                               # %sw.bb223
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a0, $a0, %got_pc_lo12(i_base)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(input_char)
	addi.d	$a0, $a0, %pc_lo12(input_char)
	pcaddu18i	$ra, %call36(push_constant)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_74:                               # %sw.bb349
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.75:                               # %if.then352
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	b	.LBB2_117
.LBB2_76:                               # %sw.bb357
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.77:                               # %if.then360
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(scale)
	ld.d	$a2, $a2, %got_pc_lo12(scale)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	b	.LBB2_117
.LBB2_78:                               # %sw.bb239
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_113
# %bb.79:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(incr_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_80:                               # %sw.bb365
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.81:                               # %if.then368
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(scale)
	ld.d	$a2, $a2, %got_pc_lo12(scale)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_117
# %bb.82:                               # %if.else376
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_83:                               # %sw.bb304
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	b	.LBB2_93
.LBB2_84:                               # %sw.bb143
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$a0, .LBB2_114
# %bb.85:                               # %if.then146
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$s0, $zero, 168
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	ld.d	$a0, $a0, 160
	pcaddu18i	$ra, %call36(pop_vars)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 152
	pcaddu18i	$ra, %call36(pop_vars)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 4
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	b	.LBB2_122
.LBB2_86:                               # %sw.bb438
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.87:                               # %if.then441
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	addi.d	$a0, $a0, 1
.LBB2_88:                               # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	sltui	$a0, $a0, 1
	b	.LBB2_120
.LBB2_89:                               # %sw.bb225
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a4, $a3, 10
	addi.w	$a0, $a2, 2
	st.w	$a0, $s4, 4
	bstrpick.d	$a5, $a3, 62, 53
	add.d	$a5, $a3, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	bstrpick.d	$a5, $a5, 31, 10
	slli.d	$a5, $a5, 10
	sub.w	$a3, $a3, $a5
	ldx.b	$a3, $a4, $a3
	addi.w	$a4, $zero, -1
	bge	$a4, $a3, .LBB2_115
# %bb.90:                               #   in Loop: Header=BB2_5 Depth=1
	andi	$a0, $a3, 255
	pcaddu18i	$ra, %call36(decr_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_91:                               # %sw.bb265
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(_zero_)
	ld.d	$a1, $a1, %got_pc_lo12(_zero_)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_92:                               # %sw.bb73
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
.LBB2_93:                               # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(push_copy)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_94:                               # %while.cond283.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a1, $a3, 10
	addi.d	$a2, $a2, 2
	st.w	$a2, $s4, 4
	ori	$s0, $zero, 168
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	bstrpick.d	$a2, $a3, 62, 53
	add.d	$a2, $a3, $a2
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a0, $a0, 8
	bstrpick.d	$a1, $a2, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $a3, $a1
	ldx.bu	$a0, $a0, $a1
	ori	$s1, $zero, 34
	beq	$a0, $s1, .LBB2_96
	.p2align	4, , 16
.LBB2_95:                               # %while.body288
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a0, $a0
	pcaddu18i	$ra, %call36(out_char)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	ld.d	$a1, $s5, 0
	ld.w	$a2, $s4, 0
	srai.d	$a3, $a0, 10
	addi.d	$a4, $a0, 1
	st.w	$a4, $s4, 4
	bstrpick.d	$a4, $a0, 62, 53
	add.d	$a4, $a0, $a4
	mul.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a1, $a1, 8
	bstrpick.d	$a2, $a4, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	bne	$a0, $s1, .LBB2_95
.LBB2_96:                               # %while.end138
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB2_122
# %bb.97:                               # %if.then140
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_98:                               # %sw.bb450
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.99:                               # %if.then453
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_compare)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
	slti	$a0, $a0, 1
	b	.LBB2_120
.LBB2_100:                              # %sw.bb326
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(check_stack)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_122
# %bb.101:                              # %if.then329
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_118
.LBB2_102:                              # %land.rhs317
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	b	.LBB2_119
.LBB2_103:                              # %sw.default486
                                        #   in Loop: Header=BB2_5 Depth=1
	ext.w.b	$a1, $s0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_104:                              # %if.else83
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(prog_char)
	addi.d	$a0, $a0, %pc_lo12(prog_char)
	pcaddu18i	$ra, %call36(push_constant)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_105:                              # %if.then258
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(load_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_106:                              # %if.then55
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$s0, $a1, $a0
	ori	$a0, $zero, 168
	mul.d	$s2, $s0, $a0
	ldx.bu	$a0, $a4, $s2
	bnez	$a0, .LBB2_39
.LBB2_107:                              # %if.then65
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(f_names)
	ld.d	$a0, $a0, %got_pc_lo12(f_names)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
.LBB2_108:                              # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s2, $s3
	move	$s3, $s8
	ori	$s8, $zero, 92
	b	.LBB2_122
.LBB2_109:                              # %if.then275
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(store_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_110:                              # %if.then163
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(store_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_111:                              # %if.then7
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(incr_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_112:                              # %if.then91
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(load_array)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_113:                              # %if.then245
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(incr_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_114:                              # %if.else155
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_115:                              # %if.then231
                                        #   in Loop: Header=BB2_5 Depth=1
	srai.d	$a3, $a0, 10
	addi.d	$a2, $a2, 3
	st.w	$a2, $s4, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a0, $a0, $a2
	ldx.bu	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(decr_var)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_116:                              # %if.else387
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(scale)
	ld.d	$a2, $a2, %got_pc_lo12(scale)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(bc_modulo)
	jirl	$ra, $ra, 0
.LBB2_117:                              # %if.then375
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(push_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_118:                              #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 1
.LBB2_119:                              # %land.end323
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(c_code)
	ld.d	$s1, $a1, %got_pc_lo12(c_code)
.LBB2_120:                              # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	st.b	$a0, $s1, 0
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $s1, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	pcalau12i	$a1, %got_pc_hi20(_one_)
	ld.d	$a1, $a1, %got_pc_lo12(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	sltui	$a2, $s1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
.LBB2_121:                              # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$a0, $a1, 0
	.p2align	4, , 16
.LBB2_122:                              # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s4, 0
	ld.d	$a4, $s5, 0
	ld.w	$a2, $s4, 4
	mul.d	$a1, $a0, $s7
	add.d	$a1, $a4, $a1
	ld.w	$a1, $a1, 136
	bge	$a2, $a1, .LBB2_133
# %bb.123:                              # %sw.epilog488
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a1, $s6, 0
	beqz	$a1, .LBB2_5
	b	.LBB2_133
.LBB2_124:                              # %sw.bb217
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(scale)
	ld.d	$a1, $a1, %got_pc_lo12(scale)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(bc_sqrt)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_122
# %bb.125:                              # %if.then221
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_126:                              # %sw.bb187
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	ld.w	$a2, $a3, 4
	ld.w	$a1, $a3, 8
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB2_132
# %bb.127:                              # %land.lhs.true191
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$a1, .LBB2_131
# %bb.128:                              # %land.lhs.true195
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a3, $a3, 16
	bnez	$a3, .LBB2_132
# %bb.129:                              # %if.then201
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_130:                              # %sw.bb213
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.w	$a1, $a1, 8
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_131:                              #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $zero
.LBB2_132:                              # %if.else205
                                        #   in Loop: Header=BB2_5 Depth=1
	add.w	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	b	.LBB2_122
.LBB2_133:                              # %while.cond490thread-pre-split
	beqz	$a0, .LBB2_136
# %bb.134:
	ori	$fp, $zero, 168
	.p2align	4, , 16
.LBB2_135:                              # %while.body493
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	mul.d	$a0, $a0, $fp
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 160
	pcaddu18i	$ra, %call36(pop_vars)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	mul.d	$a0, $a0, $fp
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 152
	pcaddu18i	$ra, %call36(pop_vars)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 4
	pcaddu18i	$ra, %call36(fpop)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	bnez	$a0, .LBB2_135
.LBB2_136:                              # %while.cond504.preheader
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$fp, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_138
	.p2align	4, , 16
.LBB2_137:                              # %while.body507
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(pop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB2_137
.LBB2_138:                              # %while.end508
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB2_141
# %bb.139:                              # %if.then510
	pcalau12i	$a0, %got_pc_hi20(use_quit)
	ld.d	$a1, $a0, %got_pc_lo12(use_quit)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(had_sigint)
	beqz	$a0, .LBB2_141
# %bb.140:                              # %if.then513
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_141:                              # %if.end516
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
.LBB2_142:                              # %sw.bb238
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	execute, .Lfunc_end2-execute
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_54-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_47-.LJTI2_0
	.word	.LBB2_62-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_76-.LJTI2_0
	.word	.LBB2_65-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_74-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_80-.LJTI2_0
	.word	.LBB2_83-.LJTI2_0
	.word	.LBB2_44-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_86-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_67-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_37-.LJTI2_0
	.word	.LBB2_92-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_42-.LJTI2_0
	.word	.LBB2_69-.LJTI2_0
	.word	.LBB2_30-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_84-.LJTI2_0
	.word	.LBB2_52-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_22-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_56-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_71-.LJTI2_0
	.word	.LBB2_89-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_142-.LJTI2_0
	.word	.LBB2_78-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_33-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_91-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_27-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_50-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_94-.LJTI2_0
	.word	.LBB2_28-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_103-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_100-.LJTI2_0
	.word	.LBB2_35-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_73-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_126-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_122-.LJTI2_1
	.word	.LBB2_124-.LJTI2_1
	.word	.LBB2_130-.LJTI2_1
                                        # -- End function
	.text
	.globl	push_b10_const                  # -- Begin function push_b10_const
	.p2align	5
	.type	push_b10_const,@function
push_b10_const:                         # @push_b10_const
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	srli.d	$a2, $a1, 32
	srai.d	$a3, $a1, 42
	pcalau12i	$a4, %got_pc_hi20(functions)
	ld.d	$s1, $a4, %got_pc_lo12(functions)
	srai.d	$a4, $a1, 63
	andi	$a4, $a4, 1023
	add.d	$a6, $a2, $a4
	ld.d	$a4, $s1, 0
	addi.w	$a5, $a1, 0
	ori	$a1, $zero, 168
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a4, $a1
	addi.d	$a7, $a1, 8
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a7, $a1
	bstrpick.d	$a6, $a6, 31, 10
	slli.d	$a6, $a6, 10
	sub.w	$a6, $a2, $a6
	add.d	$t1, $a1, $a6
	ori	$a1, $zero, 46
	ori	$t0, $zero, 58
	.p2align	4, , 16
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t4, $t1, 0
	add.d	$t1, $a2, $a0
	addi.d	$t3, $t1, 1
	addi.w	$t2, $t3, 0
	beq	$t4, $a1, .LBB3_4
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB3_1 Depth=1
	beq	$t4, $t0, .LBB3_5
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $a0, 1
	srai.d	$t1, $t2, 10
	bstrpick.d	$t3, $t2, 62, 53
	add.d	$t3, $t2, $t3
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a7, $t1
	bstrpick.d	$t3, $t3, 31, 10
	slli.d	$t3, $t3, 10
	sub.w	$t2, $t2, $t3
	add.d	$t1, $t1, $t2
	b	.LBB3_1
.LBB3_4:                                # %if.then
	srai.d	$a1, $t2, 10
	bstrpick.d	$t0, $t2, 62, 53
	add.d	$t0, $t3, $t0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a7, $a1
	bstrpick.d	$t0, $t0, 31, 10
	slli.d	$t0, $t0, 10
	sub.w	$t0, $t3, $t0
	ldx.bu	$a1, $a1, $t0
	ori	$t0, $zero, 58
	bne	$a1, $t0, .LBB3_6
.LBB3_5:                                # %if.end.loopexit146
	move	$a1, $zero
	b	.LBB3_8
.LBB3_6:                                # %while.body14.preheader
	move	$a1, $zero
	addi.w	$t1, $t1, 0
	.p2align	4, , 16
.LBB3_7:                                # %while.body14
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t1, $a1
	addi.d	$t2, $t2, 2
	addi.w	$t3, $t2, 0
	srai.d	$t4, $t3, 10
	bstrpick.d	$t3, $t3, 62, 53
	add.d	$t3, $t2, $t3
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $a7, $t4
	bstrpick.d	$t3, $t3, 31, 10
	slli.d	$t3, $t3, 10
	sub.w	$t2, $t2, $t3
	ldx.bu	$t2, $t4, $t2
	addi.w	$a1, $a1, 1
	bne	$t2, $t0, .LBB3_7
.LBB3_8:                                # %if.end
	ori	$a7, $zero, 168
	mul.d	$a5, $a5, $a7
	add.d	$a4, $a4, $a5
	alsl.d	$a3, $a3, $a4, 3
	ld.d	$a3, $a3, 8
	addi.d	$a2, $a2, 1
	st.w	$a2, $fp, 4
	ldx.bu	$a2, $a3, $a6
	ori	$a3, $zero, 1
	ext.w.b	$s0, $a2
	bne	$a0, $a3, .LBB3_13
# %bb.9:                                # %if.end
	bnez	$a1, .LBB3_13
# %bb.10:                               # %if.then23
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB3_15
# %bb.11:                               # %if.then23
	bnez	$a2, .LBB3_18
# %bb.12:                               # %if.then27
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	b	.LBB3_16
.LBB3_13:                               # %if.end43
	bnez	$a0, .LBB3_20
# %bb.14:                               # %if.then46
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(new_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $a0, 17
	st.b	$zero, $a0, 16
	b	.LBB3_21
.LBB3_15:                               # %if.then33
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_one_)
.LBB3_16:                               # %cleanup
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(push_copy)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %cleanup
	ld.w	$a0, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 4
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_18:                               # %if.end35
	ori	$a2, $zero, 10
	blt	$s0, $a2, .LBB3_20
# %bb.19:                               # %if.then39
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(push_num)
	jirl	$ra, $ra, 0
	b	.LBB3_17
.LBB3_20:                               # %if.else
	pcaddu18i	$ra, %call36(new_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $a0, 16
.LBB3_21:                               # %while.cond52.preheader
	ori	$a0, $zero, 46
	ori	$a2, $zero, 168
	ori	$a3, $zero, 58
	ori	$a4, $zero, 9
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_22:                               # %if.end69
                                        #   in Loop: Header=BB3_23 Depth=1
	ld.w	$a5, $fp, 4
	addi.d	$a6, $a5, 1
	ld.w	$a7, $fp, 0
	ld.d	$t0, $s1, 0
	st.w	$a6, $fp, 4
	srai.d	$a6, $a5, 10
	mul.d	$a7, $a7, $a2
	add.d	$a7, $t0, $a7
	bstrpick.d	$t0, $a5, 62, 53
	add.d	$t0, $a5, $t0
	alsl.d	$a6, $a6, $a7, 3
	ld.d	$a6, $a6, 8
	bstrpick.d	$a7, $t0, 31, 10
	slli.d	$a7, $a7, 10
	sub.w	$a5, $a5, $a7
	ldx.bu	$s0, $a6, $a5
.LBB3_23:                               # %while.cond52
                                        # =>This Inner Loop Header: Depth=1
	andi	$a5, $s0, 255
	beq	$a5, $a0, .LBB3_22
# %bb.24:                               # %while.cond52
                                        #   in Loop: Header=BB3_23 Depth=1
	beq	$a5, $a3, .LBB3_26
# %bb.25:                               # %if.then60
                                        #   in Loop: Header=BB3_23 Depth=1
	addi.d	$a5, $a1, 1
	ext.w.b	$a6, $s0
	slti	$a7, $a6, 9
	masknez	$t0, $a4, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	st.b	$a6, $a1, 0
	move	$a1, $a5
	b	.LBB3_22
.LBB3_26:                               # %while.end71
	ld.d	$a0, $sp, 8
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(push_num)
	jr	$t8
.Lfunc_end3:
	.size	push_b10_const, .Lfunc_end3-push_b10_const
                                        # -- End function
	.globl	push_constant                   # -- Begin function push_constant
	.p2align	5
	.type	push_constant,@function
push_constant:                          # @push_constant
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
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$s3, $a0, %got_pc_lo12(_zero_)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 32
	.p2align	4, , 16
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jirl	$ra, $s0, 0
	beq	$a0, $s1, .LBB4_1
# %bb.2:                                # %while.cond
	andi	$a1, $a0, 255
	ori	$a2, $zero, 43
	beq	$a1, $a2, .LBB4_5
# %bb.3:                                # %while.cond
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB4_6
# %bb.4:                                # %if.end13.sink.split.loopexit53
	move	$s4, $zero
	jirl	$ra, $s0, 0
	ori	$s2, $zero, 15
	addi.d	$s5, $fp, -1
	bge	$s2, $a0, .LBB4_7
	b	.LBB4_10
.LBB4_5:                                # %if.end13.sink.split.loopexit
	ori	$s4, $zero, 1
	jirl	$ra, $s0, 0
	ori	$s2, $zero, 15
	addi.d	$s5, $fp, -1
	bge	$s2, $a0, .LBB4_7
	b	.LBB4_10
.LBB4_6:                                # %if.end13.loopexit
	ori	$s4, $zero, 1
	ori	$s2, $zero, 15
	addi.d	$s5, $fp, -1
	blt	$s2, $a0, .LBB4_10
.LBB4_7:                                # %if.end29
	move	$s6, $a0
	jirl	$ra, $s0, 0
	move	$s1, $a0
	slt	$a0, $s2, $a0
	slt	$a1, $s6, $fp
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	blt	$s2, $s1, .LBB4_10
# %bb.8:                                # %land.lhs.true38.lr.ph
	ori	$s1, $zero, 16
	.p2align	4, , 16
.LBB4_9:                                # %land.lhs.true38
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $a0
	slt	$a2, $a1, $fp
	ld.d	$a3, $sp, 40
	ld.d	$a1, $sp, 16
	masknez	$a4, $s5, $a2
	maskeqz	$a0, $a0, $a2
	or	$s2, $a0, $a4
	addi.d	$a2, $sp, 24
	move	$a0, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ext.w.b	$a1, $s2
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
	jirl	$ra, $s0, 0
	blt	$a0, $s1, .LBB4_9
.LBB4_10:                               # %while.end48
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB4_16
# %bb.11:                               # %if.then52
	jirl	$ra, $s0, 0
	slt	$a1, $a0, $fp
	masknez	$a2, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ext.w.b	$s7, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_one_)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s2, $a0
	st.d	$a0, $sp, 8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 15
	st.d	$a0, $sp, 24
	move	$s1, $zero
	blt	$s6, $s7, .LBB4_15
# %bb.12:                               # %while.body67.preheader
	ori	$s2, $zero, 16
	.p2align	4, , 16
.LBB4_13:                               # %while.body67
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 16
	addi.d	$a2, $sp, 24
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ext.w.b	$a1, $s7
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(int2num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	jirl	$ra, $s0, 0
	slt	$a1, $s6, $a0
	slt	$a2, $a0, $fp
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ext.w.b	$s7, $a0
	blt	$s7, $s2, .LBB4_13
# %bb.14:                               # %while.end81.loopexit
	ld.d	$a0, $sp, 24
	ld.d	$s2, $sp, 8
.LBB4_15:                               # %while.end81
	addi.d	$a2, $sp, 24
	move	$a1, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 24
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %if.end83
	ld.d	$a1, $sp, 40
	bnez	$s4, .LBB4_18
# %bb.17:                               # %if.then84
	ld.d	$a0, $s3, 0
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
.LBB4_18:                               # %if.end85
	move	$a0, $a1
	pcaddu18i	$ra, %call36(push_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
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
.Lfunc_end4:
	.size	push_constant, .Lfunc_end4-push_constant
                                        # -- End function
	.globl	prog_char                       # -- Begin function prog_char
	.p2align	5
	.type	prog_char,@function
prog_char:                              # @prog_char
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(pc)
	ld.d	$a0, $a0, %got_pc_lo12(pc)
	ld.w	$a1, $a0, 4
	addi.d	$a2, $a1, 1
	pcalau12i	$a3, %got_pc_hi20(functions)
	ld.d	$a3, $a3, %got_pc_lo12(functions)
	st.w	$a2, $a0, 4
	ld.w	$a0, $a0, 0
	srai.d	$a2, $a1, 10
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 168
	mul.d	$a0, $a0, $a4
	bstrpick.d	$a4, $a1, 62, 53
	add.d	$a4, $a1, $a4
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	bstrpick.d	$a2, $a4, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a1, $a1, $a2
	ldx.b	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	prog_char, .Lfunc_end5-prog_char
                                        # -- End function
	.globl	assign                          # -- Begin function assign
	.p2align	5
	.type	assign,@function
assign:                                 # @assign
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	pcalau12i	$a1, %got_pc_hi20(_one_)
	ld.d	$a1, $a1, %got_pc_lo12(_one_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	sltui	$a2, $fp, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a1, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	assign, .Lfunc_end6-assign
                                        # -- End function
	.globl	input_char                      # -- Begin function input_char
	.p2align	5
	.type	input_char,@function
input_char:                             # @input_char
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	andi	$a0, $a0, 255
	ori	$a1, $zero, 92
	bne	$a0, $a1, .LBB7_3
# %bb.1:                                # %if.then
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	andi	$a0, $a0, 255
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB7_3
# %bb.2:                                # %if.then8
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB7_3:                                # %if.end11
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ext.w.b	$a0, $fp
	slli.d	$a2, $a0, 1
	ldx.hu	$a1, $a1, $a2
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB7_6
# %bb.4:                                # %if.end18
	addi.d	$a2, $a0, -65
	ori	$a1, $zero, 5
	bltu	$a1, $a2, .LBB7_8
# %bb.5:                                # %if.then25
	addi.d	$fp, $fp, -55
	b	.LBB7_7
.LBB7_6:                                # %if.then15
	addi.d	$fp, $fp, -48
.LBB7_7:                                # %cleanup
	ext.w.b	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_8:                                # %if.end29
	addi.d	$a2, $a0, -97
	bltu	$a1, $a2, .LBB7_10
# %bb.9:                                # %if.then37
	addi.d	$fp, $fp, -87
	b	.LBB7_7
.LBB7_10:                               # %if.end42
	slli.w	$a1, $fp, 24
	lu12i.w	$a2, 176128
	beq	$a1, $a2, .LBB7_7
# %bb.11:                               # %if.end42
	lu12i.w	$a2, 184320
	beq	$a1, $a2, .LBB7_7
# %bb.12:                               # %if.end42
	lu12i.w	$a2, 188416
	beq	$a1, $a2, .LBB7_7
# %bb.13:                               # %if.end54
	slti	$a0, $a0, 33
	ori	$a1, $zero, 58
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 32
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	b	.LBB7_7
.Lfunc_end7:
	.size	input_char, .Lfunc_end7-input_char
                                        # -- End function
	.type	had_sigint,@object              # @had_sigint
	.bss
	.globl	had_sigint
	.p2align	2, 0x0
had_sigint:
	.word	0                               # 0x0
	.size	had_sigint, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"interrupted execution"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Function %s not defined."
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Return from main program."
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Square root of a negative number"
	.size	.L.str.4, 33

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Divide by zero"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Modulo by zero"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"divide by zero"
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"bad instruction: inst=%c"
	.size	.L.str.8, 25

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Interruption completed."
	.size	.Lstr, 24

	.type	.Lswitch.table.execute,@object  # @switch.table.execute
	.section	.rodata,"a",@progbits
.Lswitch.table.execute:
	.byte	92                              # 0x5c
	.space	1
	.space	1
	.byte	7                               # 0x7
	.space	1
	.byte	12                              # 0xc
	.space	1
	.space	1
	.space	1
	.byte	10                              # 0xa
	.space	1
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.size	.Lswitch.table.execute, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stop_execution
	.addrsig_sym prog_char
	.addrsig_sym out_char
	.addrsig_sym input_char
	.addrsig_sym use_quit
	.addrsig_sym pc
