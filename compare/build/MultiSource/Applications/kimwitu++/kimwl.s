	.file	"kimwl.cc"
	.text
	.globl	_Z5yylexv                       # -- Begin function _Z5yylexv
	.p2align	5
	.type	_Z5yylexv,@function
_Z5yylexv:                              # @_Z5yylexv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$a0, %pc_hi20(_ZL7yy_init)
	ld.bu	$a1, $a0, %pc_lo12(_ZL7yy_init)
	pcalau12i	$t2, %pc_hi20(_ZL10yy_c_buf_p)
	pcalau12i	$t3, %pc_hi20(_ZL12yy_hold_char)
	pcalau12i	$s8, %pc_hi20(_ZL8yy_start)
	pcalau12i	$s2, %pc_hi20(_ZL15yy_buffer_stack)
	pcalau12i	$a4, %pc_hi20(_ZL19yy_buffer_stack_top)
	pcalau12i	$s4, %pc_hi20(_ZL12yy_state_buf)
	pcalau12i	$t4, %pc_hi20(yytext_ptr)
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	bnez	$a1, .LBB0_16
# %bb.1:                                # %if.then
	ld.d	$a1, $s4, %pc_lo12(_ZL12yy_state_buf)
	ori	$a2, $zero, 1
	st.b	$a2, $a0, %pc_lo12(_ZL7yy_init)
	beqz	$a1, .LBB0_9
# %bb.2:                                # %if.end
	ld.w	$a0, $s8, %pc_lo12(_ZL8yy_start)
	beqz	$a0, .LBB0_10
.LBB0_3:                                # %if.end5
	pcalau12i	$s0, %pc_hi20(yyin)
	ld.d	$fp, $s0, %pc_lo12(yyin)
	beqz	$fp, .LBB0_11
.LBB0_4:                                # %if.end8
	pcalau12i	$a0, %pc_hi20(yyout)
	ld.d	$a1, $a0, %pc_lo12(yyout)
	beqz	$a1, .LBB0_12
.LBB0_5:                                # %if.end11
	ld.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	beqz	$a0, .LBB0_13
.LBB0_6:                                # %cond.true
	ld.d	$a2, $a4, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a0, $a1
	bnez	$a1, .LBB0_15
# %bb.7:                                # %if.end.i
	move	$s3, $t4
	move	$s7, $t3
	move	$s6, $t2
	pcalau12i	$s1, %pc_hi20(_ZL19yy_buffer_stack_max)
	move	$s4, $s2
	ld.d	$s2, $s1, %pc_lo12(_ZL19yy_buffer_stack_max)
	addi.d	$a1, $s2, -1
	move	$s5, $a4
	bltu	$a2, $a1, .LBB0_14
# %bb.8:                                # %if.then5.i
	slli.d	$a1, $s2, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 8
	add.d	$a1, $a1, $a2
	srai.d	$a2, $a1, 32
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	srli.d	$a1, $a1, 29
	addi.w	$a2, $zero, -8
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(_ZL15yy_buffer_stack)
	alsl.d	$a1, $s2, $a0, 3
	slli.d	$a2, $s2, 3
	xvrepli.b	$xr0, 0
	ld.d	$fp, $s0, %pc_lo12(yyin)
	xvstx	$xr0, $a0, $a2
	xvst	$xr0, $a1, 32
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(_ZL19yy_buffer_stack_max)
	b	.LBB0_14
.LBB0_9:                                # %if.then2
	lu12i.w	$a0, 4
	ori	$a0, $a0, 2
	move	$fp, $s2
	move	$s0, $a4
	move	$s1, $t2
	move	$s2, $t3
	move	$s3, $t4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t4, $s3
	move	$t3, $s2
	move	$t2, $s1
	move	$a4, $s0
	move	$s2, $fp
	st.d	$a0, $s4, %pc_lo12(_ZL12yy_state_buf)
	ld.w	$a0, $s8, %pc_lo12(_ZL8yy_start)
	bnez	$a0, .LBB0_3
.LBB0_10:                               # %if.then4
	ori	$a0, $zero, 1
	st.w	$a0, $s8, %pc_lo12(_ZL8yy_start)
	pcalau12i	$s0, %pc_hi20(yyin)
	ld.d	$fp, $s0, %pc_lo12(yyin)
	bnez	$fp, .LBB0_4
.LBB0_11:                               # %if.then7
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$fp, $a0, 0
	st.d	$fp, $s0, %pc_lo12(yyin)
	pcalau12i	$a0, %pc_hi20(yyout)
	ld.d	$a1, $a0, %pc_lo12(yyout)
	bnez	$a1, .LBB0_5
.LBB0_12:                               # %if.then10
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, %pc_lo12(yyout)
	ld.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	bnez	$a0, .LBB0_6
.LBB0_13:                               # %if.then.i
	move	$s3, $t4
	move	$s7, $t3
	move	$s6, $t2
	ori	$a0, $zero, 8
	move	$s4, $s2
	move	$s5, $a4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZL19yy_buffer_stack_max)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, %pc_lo12(_ZL19yy_buffer_stack_max)
	st.d	$zero, $s5, %pc_lo12(_ZL19yy_buffer_stack_top)
.LBB0_14:                               # %_ZL21yyensure_buffer_stackv.exit
	lu12i.w	$a1, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z16yy_create_bufferP8_IO_FILEi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s4, %pc_lo12(_ZL15yy_buffer_stack)
	move	$a1, $a0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	move	$s2, $s4
	move	$a4, $s5
	move	$t2, $s6
	move	$t3, $s7
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $s3
.LBB0_15:                               # %if.end17
	ld.w	$a0, $a1, 28
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	ld.d	$a1, $a1, 0
	st.w	$a0, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a2, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	st.d	$a2, $t4, %pc_lo12(yytext_ptr)
	st.d	$a1, $s0, %pc_lo12(yyin)
	ld.b	$a0, $a2, 0
	st.b	$a0, $t3, %pc_lo12(_ZL12yy_hold_char)
.LBB0_16:                               # %while.cond.preheader
	pcalau12i	$s7, %pc_hi20(_ZL12yy_state_ptr)
	pcalau12i	$a0, %pc_hi20(_ZL5yy_ec)
	addi.d	$t5, $a0, %pc_lo12(_ZL5yy_ec)
	pcalau12i	$a0, %pc_hi20(_ZL7yy_base)
	addi.d	$fp, $a0, %pc_lo12(_ZL7yy_base)
	pcalau12i	$a0, %pc_hi20(_ZL6yy_chk)
	addi.d	$s1, $a0, %pc_lo12(_ZL6yy_chk)
	pcalau12i	$a0, %pc_hi20(_ZL6yy_nxt)
	addi.d	$t6, $a0, %pc_lo12(_ZL6yy_nxt)
	ori	$t7, $zero, 437
	pcalau12i	$a0, %pc_hi20(_ZL9yy_accept)
	addi.d	$s5, $a0, %pc_lo12(_ZL9yy_accept)
	pcalau12i	$t8, %pc_hi20(_ZL26yy_looking_for_trail_begin)
	ori	$s6, $zero, 0
	lu32i.d	$s6, -1
	ori	$ra, $zero, 405
	ori	$t1, $zero, 438
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
.LBB0_17:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #         Child Loop BB0_45 Depth 4
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_55 Depth 4
                                        #         Child Loop BB0_82 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #         Child Loop BB0_92 Depth 4
                                        #         Child Loop BB0_72 Depth 4
                                        #           Child Loop BB0_77 Depth 5
                                        #       Child Loop BB0_99 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	ld.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	ld.b	$a0, $t3, %pc_lo12(_ZL12yy_hold_char)
	st.b	$a0, $s3, 0
	ld.d	$a0, $a4, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s8, %pc_lo12(_ZL8yy_start)
	ld.w	$a0, $a0, 40
	ld.d	$a3, $s4, %pc_lo12(_ZL12yy_state_buf)
	add.w	$a1, $a0, $a1
	addi.d	$a2, $a3, 4
	st.d	$a2, $s7, %pc_lo12(_ZL12yy_state_ptr)
	st.w	$a1, $a3, 0
	move	$a0, $s3
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %while.end
                                        #   in Loop: Header=BB0_19 Depth=2
	bstrpick.d	$a1, $a4, 31, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a3, $t6, $a1
	ext.w.h	$a1, $a3
	addi.d	$a5, $a2, 4
	st.d	$a5, $s7, %pc_lo12(_ZL12yy_state_ptr)
	st.w	$a1, $a2, 0
	addi.d	$s3, $s3, 1
	move	$a2, $a5
	beq	$a3, $t7, .LBB0_25
.LBB0_19:                               # %do.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #         Child Loop BB0_45 Depth 4
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_55 Depth 4
                                        #         Child Loop BB0_82 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #         Child Loop BB0_92 Depth 4
                                        #         Child Loop BB0_72 Depth 4
                                        #           Child Loop BB0_77 Depth 5
                                        #       Child Loop BB0_99 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	ld.bu	$a3, $s3, 0
	slli.d	$a3, $a3, 2
	ldx.bu	$a3, $t5, $a3
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $fp, $a4
	add.d	$a4, $a3, $a4
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $s1, $a5
	pcalau12i	$a6, %pc_hi20(_ZL6yy_def)
	addi.d	$s2, $a6, %pc_lo12(_ZL6yy_def)
	pcalau12i	$a6, %pc_hi20(_ZL7yy_meta)
	addi.d	$s8, $a6, %pc_lo12(_ZL7yy_meta)
	bne	$a1, $a5, .LBB0_21
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_20:                               # %if.end41
                                        #   in Loop: Header=BB0_21 Depth=3
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $fp, $a4
	andi	$a5, $a3, 255
	add.d	$a4, $a4, $a5
	slli.d	$a5, $a4, 1
	ldx.hu	$a5, $s1, $a5
	bstrpick.d	$a6, $a1, 15, 0
	beq	$a6, $a5, .LBB0_18
.LBB0_21:                               # %while.body31
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $s2, $a1
	blt	$a1, $t1, .LBB0_20
# %bb.22:                               # %if.then36
                                        #   in Loop: Header=BB0_21 Depth=3
	slli.d	$a3, $a3, 2
	ldx.bu	$a3, $s8, $a3
	b	.LBB0_20
.LBB0_23:                               # %for.cond.for.end_crit_edge.i262
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$a4, $s7, %pc_lo12(_ZL12yy_state_ptr)
.LBB0_24:                               # %yy_find_action.loopexit
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a5, $s7, %pc_lo12(_ZL12yy_state_ptr)
	.p2align	4, , 16
.LBB0_25:                               # %yy_find_action
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #         Child Loop BB0_45 Depth 4
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #         Child Loop BB0_55 Depth 4
                                        #         Child Loop BB0_82 Depth 4
                                        #           Child Loop BB0_87 Depth 5
                                        #         Child Loop BB0_92 Depth 4
                                        #         Child Loop BB0_72 Depth 4
                                        #           Child Loop BB0_77 Depth 5
	ld.w	$a2, $a5, -4
	slli.d	$a1, $a2, 1
	ldx.h	$a4, $s5, $a1
	ld.w	$a3, $t8, %pc_lo12(_ZL26yy_looking_for_trail_begin)
	addi.d	$a6, $a5, -4
	st.d	$a6, $s7, %pc_lo12(_ZL12yy_state_ptr)
	b	.LBB0_29
.LBB0_26:                               # %switch.early.test
                                        #   in Loop: Header=BB0_29 Depth=4
	ori	$t1, $zero, 408
	bne	$a4, $t1, .LBB0_67
	.p2align	4, , 16
.LBB0_27:                               # %if.then69
                                        #   in Loop: Header=BB0_29 Depth=4
	beq	$a7, $a1, .LBB0_37
.LBB0_28:                               # %if.end80
                                        #   in Loop: Header=BB0_29 Depth=4
	addi.w	$a4, $a4, 1
.LBB0_29:                               # %find_rule
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_31 Depth 5
	addi.d	$a5, $a6, -4
	slli.d	$a1, $s3, 32
	add.d	$s0, $a1, $s6
	move	$s4, $s3
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %if.end81
                                        #   in Loop: Header=BB0_31 Depth=5
	ld.w	$a2, $a5, 0
	addi.d	$s3, $s3, -1
	st.d	$a5, $s7, %pc_lo12(_ZL12yy_state_ptr)
	slli.d	$a1, $a2, 1
	ldx.h	$a4, $s5, $a1
	addi.d	$a5, $a5, -4
	add.d	$s0, $s0, $s6
	addi.d	$s4, $s4, -1
.LBB0_31:                               # %for.cond
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_29 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	beqz	$a4, .LBB0_30
# %bb.32:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_31 Depth=5
	alsl.d	$a1, $a2, $s5, 1
	ld.h	$a1, $a1, 2
	bge	$a4, $a1, .LBB0_30
# %bb.33:                               # %if.then63
                                        #   in Loop: Header=BB0_29 Depth=4
	slli.d	$a1, $a4, 1
	pcalau12i	$a6, %pc_hi20(_ZL10yy_acclist)
	addi.d	$a6, $a6, %pc_lo12(_ZL10yy_acclist)
	ldx.h	$a1, $a6, $a1
	addi.w	$a7, $a3, 0
	addi.d	$a6, $a5, 4
	bnez	$a7, .LBB0_27
# %bb.34:                               # %switch.early.test
                                        #   in Loop: Header=BB0_29 Depth=4
	beq	$a4, $ra, .LBB0_27
# %bb.35:                               # %switch.early.test
                                        #   in Loop: Header=BB0_29 Depth=4
	ori	$t1, $zero, 410
	bne	$a4, $t1, .LBB0_26
# %bb.36:                               # %if.then76
                                        #   in Loop: Header=BB0_29 Depth=4
	ori	$a3, $zero, 2
	bstrins.d	$a1, $a3, 14, 13
	st.w	$a1, $t8, %pc_lo12(_ZL26yy_looking_for_trail_begin)
	pcalau12i	$a3, %pc_hi20(_ZL13yy_full_match)
	st.d	$s3, $a3, %pc_lo12(_ZL13yy_full_match)
	pcalau12i	$a3, %pc_hi20(_ZL13yy_full_state)
	st.d	$a6, $a3, %pc_lo12(_ZL13yy_full_state)
	move	$a3, $a1
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_37:                               # %if.then71
                                        #   in Loop: Header=BB0_25 Depth=3
	bstrins.d	$a3, $zero, 14, 14
	st.w	$zero, $t8, %pc_lo12(_ZL26yy_looking_for_trail_begin)
	move	$a1, $a3
.LBB0_38:                               # %for.end
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$a0, $t4, %pc_lo12(yytext_ptr)
	sub.d	$a0, $s4, $a0
	pcalau12i	$t1, %pc_hi20(yyleng)
	st.w	$a0, $t1, %pc_lo12(yyleng)
	ld.b	$a0, $s3, 0
	st.b	$a0, $t3, %pc_lo12(_ZL12yy_hold_char)
	st.b	$zero, $s3, 0
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	lu12i.w	$a2, 2
	bge	$a0, $a2, .LBB0_376
# %bb.39:                               # %if.end91
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a7, $t4, %pc_lo12(yytext_ptr)
	bltz	$a0, .LBB0_53
# %bb.40:                               # %iter.check
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a4, $zero
	addi.d	$a2, $a0, 1
	bstrpick.d	$a2, $a2, 31, 0
	pcalau12i	$a3, %pc_hi20(yytext)
	addi.d	$a3, $a3, %pc_lo12(yytext)
	ori	$a5, $zero, 15
	bltu	$a0, $a5, .LBB0_51
# %bb.41:                               # %iter.check
                                        #   in Loop: Header=BB0_25 Depth=3
	sub.d	$a5, $a3, $a7
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB0_51
# %bb.42:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_25 Depth=3
	ori	$a4, $zero, 63
	bgeu	$a0, $a4, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a4, $zero
	b	.LBB0_48
.LBB0_44:                               # %vector.ph
                                        #   in Loop: Header=BB0_25 Depth=3
	bstrpick.d	$a4, $a2, 30, 6
	slli.d	$a4, $a4, 6
	addi.d	$a5, $a3, 32
	move	$t0, $a7
	addi.d	$a6, $a7, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_45:                               # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB0_45
# %bb.46:                               # %middle.block
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a7, $t0
	beq	$a4, $a2, .LBB0_53
# %bb.47:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_25 Depth=3
	andi	$a5, $a2, 48
	beqz	$a5, .LBB0_51
.LBB0_48:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	move	$t2, $t3
	move	$t3, $t4
	move	$t0, $a7
	move	$a7, $a4
	bstrpick.d	$a4, $a2, 30, 4
	slli.d	$a4, $a4, 4
	sub.d	$a5, $a7, $a4
	add.d	$a6, $a3, $a7
	move	$t4, $t0
	add.d	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_49:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB0_49
# %bb.50:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a7, $t4
	move	$t4, $t3
	move	$t3, $t2
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	beq	$a4, $a2, .LBB0_53
.LBB0_51:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	sub.d	$a2, $a2, $a4
	add.d	$a3, $a3, $a4
	add.d	$a4, $a7, $a4
	.p2align	4, , 16
.LBB0_52:                               # %for.body.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a4, 0
	st.b	$a5, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB0_52
.LBB0_53:                               # %_ZL15yy_flex_strncpyPcPKci.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	addi.w	$a2, $a1, 0
	st.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	ori	$a3, $zero, 94
	ori	$a6, $zero, 10
	bne	$a2, $a3, .LBB0_61
.LBB0_54:                               # %do_action.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 103
	bltu	$a1, $a0, .LBB0_377
.LBB0_55:                               # %do_action
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_56:                               # %sw.bb1328
                                        #   in Loop: Header=BB0_55 Depth=4
	ld.b	$a0, $t3, %pc_lo12(_ZL12yy_hold_char)
	st.b	$a0, $s3, 0
	ld.d	$a0, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
	ld.w	$a0, $a1, 56
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_58
# %bb.57:                               # %sw.bb1328.if.end1342_crit_edge
                                        #   in Loop: Header=BB0_55 Depth=4
	pcalau12i	$a0, %pc_hi20(_ZL10yy_n_chars)
	ld.w	$a0, $a0, %pc_lo12(_ZL10yy_n_chars)
	ld.d	$a2, $a1, 8
	ld.d	$a3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	add.d	$a0, $a2, $a0
	bltu	$a0, $a3, .LBB0_59
	b	.LBB0_79
.LBB0_58:                               # %if.then1337
                                        #   in Loop: Header=BB0_55 Depth=4
	ld.w	$a0, $a1, 28
	pcalau12i	$a2, %pc_hi20(yyin)
	ld.d	$a2, $a2, %pc_lo12(yyin)
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	st.w	$a0, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a2, $a1, 0
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 56
	ld.d	$a2, $a1, 8
	ld.d	$a3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	add.d	$a0, $a2, $a0
	bgeu	$a0, $a3, .LBB0_79
.LBB0_59:                               # %if.else1355
                                        #   in Loop: Header=BB0_55 Depth=4
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZL18yy_get_next_bufferv)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_68
# %bb.60:                               # %cleanup1375
                                        #   in Loop: Header=BB0_55 Depth=4
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $t4, %pc_lo12(yytext_ptr)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(_ZL8yy_start)
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a7, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	addi.d	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$a1, $a0, 95
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ori	$t7, $zero, 437
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ori	$ra, $zero, 405
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 103
	bgeu	$a1, $a0, .LBB0_55
	b	.LBB0_377
	.p2align	4, , 16
.LBB0_61:                               # %land.lhs.true97
                                        #   in Loop: Header=BB0_25 Depth=3
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(_ZL21yy_rule_can_match_eol)
	addi.d	$a3, $a3, %pc_lo12(_ZL21yy_rule_can_match_eol)
	ldx.w	$a2, $a3, $a2
	beqz	$a2, .LBB0_54
# %bb.62:                               # %land.lhs.true97
                                        #   in Loop: Header=BB0_25 Depth=3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_54
# %bb.63:                               # %for.body.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	pcalau12i	$a2, %pc_hi20(yylineno)
	ld.w	$a3, $a2, %pc_lo12(yylineno)
	pcalau12i	$a4, %pc_hi20(yytext)
	addi.d	$a4, $a4, %pc_lo12(yytext)
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               # %for.inc
                                        #   in Loop: Header=BB0_65 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 1
	beqz	$a0, .LBB0_54
.LBB0_65:                               # %for.body
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a5, $a4, 0
	bne	$a5, $a6, .LBB0_64
# %bb.66:                               # %if.then108
                                        #   in Loop: Header=BB0_65 Depth=4
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, %pc_lo12(yylineno)
	b	.LBB0_64
.LBB0_67:                               # %if.else78
                                        #   in Loop: Header=BB0_25 Depth=3
	pcalau12i	$a2, %pc_hi20(_ZL13yy_full_match)
	st.d	$s3, $a2, %pc_lo12(_ZL13yy_full_match)
	addi.d	$a2, $a5, 4
	pcalau12i	$a3, %pc_hi20(_ZL13yy_full_state)
	st.d	$a2, $a3, %pc_lo12(_ZL13yy_full_state)
	b	.LBB0_38
.LBB0_68:                               # %if.else1355
                                        #   in Loop: Header=BB0_25 Depth=3
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ori	$t7, $zero, 437
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ori	$ra, $zero, 405
	bne	$a0, $a1, .LBB0_96
# %bb.69:                               # %sw.bb1367
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$a0, $a4, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $a2, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 8
	pcalau12i	$a2, %pc_hi20(_ZL10yy_n_chars)
	ld.w	$a2, $a2, %pc_lo12(_ZL10yy_n_chars)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(_ZL8yy_start)
	ld.w	$a0, $a0, 40
	add.d	$s3, $a1, $a2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(_ZL12yy_state_buf)
	add.w	$a1, $a0, $a3
	ld.d	$a0, $t4, %pc_lo12(yytext_ptr)
	st.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	st.w	$a1, $a2, 0
	addi.d	$a2, $a2, 4
	st.d	$a2, $s7, %pc_lo12(_ZL12yy_state_ptr)
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a0, $s3, .LBB0_24
# %bb.70:                               # %for.body.i220.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a3, $a0
	b	.LBB0_72
.LBB0_71:                               # %while.end.i254
                                        #   in Loop: Header=BB0_72 Depth=4
	bstrpick.d	$a1, $a5, 31, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $t6, $a1
	addi.d	$a4, $a2, 4
	addi.d	$a3, $a3, 1
	st.w	$a1, $a2, 0
	move	$a2, $a4
	beq	$a3, $s3, .LBB0_23
.LBB0_72:                               # %for.body.i220
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_77 Depth 5
	ld.bu	$a4, $a3, 0
	beqz	$a4, .LBB0_74
# %bb.73:                               # %cond.true.i225
                                        #   in Loop: Header=BB0_72 Depth=4
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $t5, $a4
	b	.LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=4
	ori	$a4, $zero, 1
.LBB0_75:                               # %cond.end.i228
                                        #   in Loop: Header=BB0_72 Depth=4
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.d	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.h	$a6, $s1, $a6
	bne	$a1, $a6, .LBB0_77
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_76:                               # %if.end.i244
                                        #   in Loop: Header=BB0_77 Depth=5
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.w	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.hu	$a6, $s1, $a6
	bstrpick.d	$a7, $a1, 15, 0
	beq	$a7, $a6, .LBB0_71
.LBB0_77:                               # %while.body.i239
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_72 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $s2, $a1
	ori	$a5, $zero, 438
	blt	$a1, $a5, .LBB0_76
# %bb.78:                               # %if.then.i263
                                        #   in Loop: Header=BB0_77 Depth=5
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $s8, $a4
	b	.LBB0_76
.LBB0_79:                               # %if.then1347
                                        #   in Loop: Header=BB0_25 Depth=3
	sub.w	$a3, $s4, $a7
	ld.d	$a0, $t4, %pc_lo12(yytext_ptr)
	slli.d	$a2, $a7, 32
	sub.d	$a2, $s0, $a2
	srai.d	$a2, $a2, 32
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(_ZL8yy_start)
	ld.w	$a1, $a1, 40
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(_ZL12yy_state_buf)
	add.d	$s3, $a0, $a2
	st.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	add.w	$a1, $a1, $a4
	addi.d	$a2, $a5, 4
	st.w	$a1, $a5, 0
	ori	$a4, $zero, 2
	st.d	$a2, $s7, %pc_lo12(_ZL12yy_state_ptr)
	blt	$a3, $a4, .LBB0_89
# %bb.80:                               # %for.body.i146.preheader
                                        #   in Loop: Header=BB0_25 Depth=3
	move	$a3, $a0
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	ori	$t1, $zero, 438
	b	.LBB0_82
.LBB0_81:                               # %while.end.i
                                        #   in Loop: Header=BB0_82 Depth=4
	bstrpick.d	$a1, $a5, 31, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $t6, $a1
	addi.d	$a4, $a2, 4
	addi.d	$a3, $a3, 1
	st.w	$a1, $a2, 0
	move	$a2, $a4
	beq	$a3, $s3, .LBB0_90
.LBB0_82:                               # %for.body.i146
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_87 Depth 5
	ld.bu	$a4, $a3, 0
	beqz	$a4, .LBB0_84
# %bb.83:                               # %cond.true.i
                                        #   in Loop: Header=BB0_82 Depth=4
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $t5, $a4
	b	.LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=4
	ori	$a4, $zero, 1
.LBB0_85:                               # %cond.end.i
                                        #   in Loop: Header=BB0_82 Depth=4
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.d	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.h	$a6, $s1, $a6
	bne	$a1, $a6, .LBB0_87
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_86:                               # %if.end.i148
                                        #   in Loop: Header=BB0_87 Depth=5
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.w	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.hu	$a6, $s1, $a6
	bstrpick.d	$a7, $a1, 15, 0
	beq	$a7, $a6, .LBB0_81
.LBB0_87:                               # %while.body.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        #         Parent Loop BB0_82 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $s2, $a1
	ori	$a5, $zero, 438
	blt	$a1, $a5, .LBB0_86
# %bb.88:                               # %if.then.i150
                                        #   in Loop: Header=BB0_87 Depth=5
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $s8, $a4
	b	.LBB0_86
.LBB0_89:                               #   in Loop: Header=BB0_25 Depth=3
	move	$a4, $a2
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	ori	$t1, $zero, 438
	b	.LBB0_91
.LBB0_90:                               # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB0_25 Depth=3
	st.d	$a4, $s7, %pc_lo12(_ZL12yy_state_ptr)
.LBB0_91:                               # %_ZL21yy_get_previous_statev.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $fp, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s1, $a3
	beq	$a1, $a3, .LBB0_93
.LBB0_92:                               # %while.body.i151
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a1, $a1, 1
	ldx.hu	$a3, $s2, $a1
	ext.w.h	$a1, $a3
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $fp, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 1
	ldx.hu	$a5, $s1, $a5
	bne	$a3, $a5, .LBB0_92
.LBB0_93:                               # %while.end.i157
                                        #   in Loop: Header=BB0_25 Depth=3
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $t6, $a1
	ori	$a3, $zero, 437
	beq	$a1, $a3, .LBB0_24
# %bb.94:                               # %_ZL16yy_try_NUL_transi.exit
                                        #   in Loop: Header=BB0_25 Depth=3
	ext.w.h	$a1, $a1
	addi.d	$a3, $a4, 4
	st.d	$a3, $s7, %pc_lo12(_ZL12yy_state_ptr)
	st.w	$a1, $a4, 0
	beqz	$a2, .LBB0_24
# %bb.95:                               # %if.then1352
                                        #   in Loop: Header=BB0_19 Depth=2
	addi.d	$s3, $s3, 1
	st.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	b	.LBB0_108
.LBB0_96:                               # %if.else1355
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a3, $s4, $a5
	ld.d	$a1, $a4, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(_ZL15yy_buffer_stack)
	ld.d	$a0, $t4, %pc_lo12(yytext_ptr)
	slli.d	$a4, $a5, 32
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	sub.d	$a2, $s0, $a4
	srai.d	$a2, $a2, 32
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(_ZL8yy_start)
	ld.w	$a1, $a1, 40
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(_ZL12yy_state_buf)
	add.d	$s3, $a0, $a2
	st.d	$s3, $t2, %pc_lo12(_ZL10yy_c_buf_p)
	add.w	$a1, $a1, $a4
	addi.d	$a2, $a5, 4
	st.w	$a1, $a5, 0
	ori	$a4, $zero, 2
	st.d	$a2, $s7, %pc_lo12(_ZL12yy_state_ptr)
	blt	$a3, $a4, .LBB0_106
# %bb.97:                               # %for.body.i166.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$a3, $a0
	ori	$t1, $zero, 438
	b	.LBB0_99
.LBB0_98:                               # %while.end.i200
                                        #   in Loop: Header=BB0_99 Depth=3
	bstrpick.d	$a1, $a5, 31, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $t6, $a1
	addi.d	$a4, $a2, 4
	addi.d	$a3, $a3, 1
	st.w	$a1, $a2, 0
	move	$a2, $a4
	beq	$a3, $s3, .LBB0_107
.LBB0_99:                               # %for.body.i166
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_104 Depth 4
	ld.bu	$a4, $a3, 0
	beqz	$a4, .LBB0_101
# %bb.100:                              # %cond.true.i171
                                        #   in Loop: Header=BB0_99 Depth=3
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $t5, $a4
	b	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_99 Depth=3
	ori	$a4, $zero, 1
.LBB0_102:                              # %cond.end.i174
                                        #   in Loop: Header=BB0_99 Depth=3
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.d	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.h	$a6, $s1, $a6
	bne	$a1, $a6, .LBB0_104
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_103:                              # %if.end.i190
                                        #   in Loop: Header=BB0_104 Depth=4
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $fp, $a5
	add.w	$a5, $a5, $a4
	slli.d	$a6, $a5, 1
	ldx.hu	$a6, $s1, $a6
	bstrpick.d	$a7, $a1, 15, 0
	beq	$a7, $a6, .LBB0_98
.LBB0_104:                              # %while.body.i185
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $s2, $a1
	ori	$a5, $zero, 438
	blt	$a1, $a5, .LBB0_103
# %bb.105:                              # %if.then.i209
                                        #   in Loop: Header=BB0_104 Depth=4
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.bu	$a4, $s8, $a4
	b	.LBB0_103
.LBB0_106:                              #   in Loop: Header=BB0_19 Depth=2
	ori	$t1, $zero, 438
	b	.LBB0_108
.LBB0_107:                              # %for.cond.for.end_crit_edge.i208
                                        #   in Loop: Header=BB0_19 Depth=2
	st.d	$a4, $s7, %pc_lo12(_ZL12yy_state_ptr)
.LBB0_108:                              # %yy_match.loopexit
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a2, $s7, %pc_lo12(_ZL12yy_state_ptr)
	b	.LBB0_19
.LBB0_109:                              # %sw.bb
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_111
# %bb.110:                              # %if.then115
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_111:                              # %if.end123
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	b	.LBB0_161
.LBB0_112:                              # %sw.bb1313
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a1, $t1, %pc_lo12(yyleng)
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_114
# %bb.113:                              # %if.then1315
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a1, -1
	pcalau12i	$a2, %pc_hi20(yytext)
	ld.d	$a3, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a4, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a2, $a2, %pc_lo12(yytext)
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a4, $a2
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a2, 40
.LBB0_114:                              # %if.end1324
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a0, %pc_hi20(yyout)
	ld.d	$a3, $a0, %pc_lo12(yyout)
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	ori	$a2, $zero, 1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_161
.LBB0_115:                              # %sw.bb315
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_117
# %bb.116:                              # %if.then317
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_117:                              # %if.end326
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pg_filename)
	ld.d	$a0, $a0, %got_pc_lo12(pg_filename)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE)
	jirl	$ra, $ra, 0
	b	.LBB0_161
.LBB0_118:                              # %sw.bb258
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_120
# %bb.119:                              # %if.then260
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_120:                              # %if.end269
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.b	$a1, $a0, %pc_lo12(yytext)
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc)
	jirl	$ra, $ra, 0
	b	.LBB0_161
.LBB0_121:                              # %sw.bb1216
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $t5
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_123
# %bb.122:                              # %if.then1218
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_123:                              # %if.end1227
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 66
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	move	$t2, $s4
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	move	$t5, $s0
	b	.LBB0_166
.LBB0_124:                              # %sw.bb1252
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $t4
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_126
# %bb.125:                              # %if.then1254
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_126:                              # %if.end1263
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 69
	b	.LBB0_150
.LBB0_127:                              # %sw.bb1288
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_129
# %bb.128:                              # %if.then1290
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_129:                              # %if.end1299
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	move	$s2, $s0
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	ori	$a1, $zero, 257
	st.h	$a1, $a0, 72
	b	.LBB0_162
.LBB0_130:                              # %sw.bb1276
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $t4
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_132
# %bb.131:                              # %if.then1278
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_132:                              # %if.end1287
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 72
	b	.LBB0_150
.LBB0_133:                              # %sw.bb1193
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_135
# %bb.134:                              # %if.then1195
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_135:                              # %if.end1204
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$s0, $a0, %got_pc_lo12(g_options)
	addi.d	$a0, $s0, 80
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$s4, $a0
	pcaddu18i	$ra, %call36(_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_167
# %bb.136:                              # %land.lhs.true1206
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_167
# %bb.137:                              # %if.then1208
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a0, %got_pc_hi20(pg_filename)
	ld.d	$a0, $a0, %got_pc_lo12(pg_filename)
	pcalau12i	$a1, %got_pc_hi20(pg_lineno)
	ld.d	$a1, $a1, %got_pc_lo12(pg_lineno)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 80
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZN2kc9Problem2SEPKcS1_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN2kc7WarningEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB0_168
.LBB0_138:                              # %sw.bb1264
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $t4
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_140
# %bb.139:                              # %if.then1266
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_140:                              # %if.end1275
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 70
	b	.LBB0_150
.LBB0_141:                              # %sw.bb1181
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_143
# %bb.142:                              # %if.then1183
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_143:                              # %if.end1192
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	move	$s2, $s0
	ori	$a0, $zero, 3
	b	.LBB0_157
.LBB0_144:                              # %sw.bb1228
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $t4
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_146
# %bb.145:                              # %if.then1230
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_146:                              # %if.end1239
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 67
	b	.LBB0_150
.LBB0_147:                              # %sw.bb1240
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $t4
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s4, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$s8, $zero, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s8, .LBB0_149
# %bb.148:                              # %if.then1242
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_149:                              # %if.end1251
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	pcalau12i	$a0, %got_pc_hi20(g_options)
	ld.d	$a0, $a0, %got_pc_lo12(g_options)
	st.b	$s8, $a0, 68
.LBB0_150:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	move	$t2, $s4
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $s0
	b	.LBB0_165
.LBB0_151:                              # %sw.bb271
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_153
# %bb.152:                              # %if.then273
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_153:                              # %if.end282
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pg_filename)
	ld.d	$a0, $a0, %got_pc_lo12(pg_filename)
	pcalau12i	$a1, %got_pc_hi20(pg_lineno)
	ld.d	$a1, $a1, %got_pc_lo12(pg_lineno)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZN2kc9Problem1SEPKc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2kc7WarningEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	addi.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	pcalau12i	$a1, %pc_hi20(yytext)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc)
	jirl	$ra, $ra, 0
	b	.LBB0_161
.LBB0_154:                              # %sw.bb196
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_156
# %bb.155:                              # %if.then198
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_156:                              # %if.end207
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	move	$s2, $s0
	ori	$a0, $zero, 19
.LBB0_157:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $s8, %pc_lo12(_ZL8yy_start)
	b	.LBB0_163
.LBB0_158:                              # %sw.bb341
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $t3
	move	$s3, $t2
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_160
# %bb.159:                              # %if.then343
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $s0, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_160:                              # %if.end352
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s2, $a5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116eat_line_commentEv)
	jirl	$ra, $ra, 0
.LBB0_161:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a4, $s2
	move	$s2, $s0
.LBB0_162:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB0_163:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$t2, $s3
	move	$t3, $s4
.LBB0_164:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
.LBB0_165:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
.LBB0_166:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ori	$t7, $zero, 437
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ori	$ra, $zero, 405
	ori	$t1, $zero, 438
	b	.LBB0_17
.LBB0_167:                              # %if.else1213
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)
	jirl	$ra, $ra, 0
.LBB0_168:                              # %while.cond
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a4, $s3
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_164
.LBB0_169:                              # %cleanup1377.loopexit
	move	$a0, $zero
	b	.LBB0_365
.LBB0_170:                              # %sw.bb1091
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_172
# %bb.171:                              # %if.then1093
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_172:                              # %if.end1102
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
.LBB0_173:                              # %if.else1089
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
.LBB0_174:                              # %cleanup1377
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 262
	b	.LBB0_365
.LBB0_175:                              # %sw.bb734
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_177
# %bb.176:                              # %if.then736
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_177:                              # %if.end745
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
.LBB0_178:                              # %cleanup1377
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.b	$a0, $a0, %pc_lo12(yytext)
	b	.LBB0_365
.LBB0_179:                              # %sw.bb670
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_181
# %bb.180:                              # %if.then672
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_181:                              # %if.end681
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
.LBB0_182:                              # %cleanup1377
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 263
	b	.LBB0_365
.LBB0_183:                              # %sw.bb220
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_185
# %bb.184:                              # %if.then222
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_185:                              # %if.end231
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	b	.LBB0_254
.LBB0_186:                              # %sw.bb905
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_188
# %bb.187:                              # %if.then907
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_188:                              # %if.end916
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.b	$a0, $a0, %pc_lo12(yytext)
	ori	$a1, $zero, 9
	b	.LBB0_270
.LBB0_189:                              # %sw.bb1035
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_191
# %bb.190:                              # %if.then1037
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_191:                              # %if.end1046
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 36
	beq	$a1, $a2, .LBB0_373
# %bb.192:                              # %if.end1051
	addi.d	$a0, $a0, 1
	b	.LBB0_202
.LBB0_193:                              # %sw.bb773
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_195
# %bb.194:                              # %if.then775
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_195:                              # %if.end784
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.b	$a0, $a0, %pc_lo12(yytext)
	ori	$a1, $zero, 11
	b	.LBB0_270
.LBB0_196:                              # %sw.bb571
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_198
# %bb.197:                              # %if.then573
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_198:                              # %if.end582
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 298
	b	.LBB0_365
.LBB0_199:                              # %sw.bb683
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_201
# %bb.200:                              # %if.then685
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_201:                              # %if.end694
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext+1)
	addi.d	$a0, $a0, %pc_lo12(yytext+1)
.LBB0_202:                              # %cleanup1377
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(_ZN2kc9mkintegerEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 264
	b	.LBB0_365
.LBB0_203:                              # %sw.bb1066
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_205
# %bb.204:                              # %if.then1068
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_205:                              # %if.end1077
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.d	$a0, $a0, %pc_lo12(yytext)
	lu12i.w	$a1, 415526
	ori	$a1, $a1, 3942
	lu32i.d	$a1, -498847
	lu52i.d	$a1, $a1, 6
	beq	$a0, $a1, .LBB0_374
# %bb.206:                              # %if.else1081
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_375
# %bb.207:                              # %if.else1085
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_173
# %bb.208:
	ori	$a0, $zero, 272
	b	.LBB0_365
.LBB0_209:                              # %sw.bb631
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_211
# %bb.210:                              # %if.then633
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_211:                              # %if.end642
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 259
	b	.LBB0_365
.LBB0_212:                              # %sw.bb583
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_214
# %bb.213:                              # %if.then585
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_214:                              # %if.end594
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 299
	b	.LBB0_365
.LBB0_215:                              # %sw.bb547
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_217
# %bb.216:                              # %if.then549
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_217:                              # %if.end558
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 296
	b	.LBB0_365
.LBB0_218:                              # %sw.bb287
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_220
# %bb.219:                              # %if.then289
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_220:                              # %if.end298
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	ld.d	$a0, $a0, %pc_lo12(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	ori	$a1, $zero, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(_ZL8yy_start)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 265
	b	.LBB0_365
.LBB0_221:                              # %sw.bb463
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_223
# %bb.222:                              # %if.then465
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_223:                              # %if.end474
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 287
	b	.LBB0_365
.LBB0_224:                              # %sw.bb208
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_226
# %bb.225:                              # %if.then210
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_226:                              # %if.end219
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
	ori	$a0, $zero, 266
	b	.LBB0_365
.LBB0_227:                              # %sw.bb559
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_229
# %bb.228:                              # %if.then561
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_229:                              # %if.end570
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 297
	b	.LBB0_365
.LBB0_230:                              # %sw.bb172
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_232
# %bb.231:                              # %if.then174
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_232:                              # %if.end183
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 282
	b	.LBB0_365
.LBB0_233:                              # %sw.bb697
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_235
# %bb.234:                              # %if.then699
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_235:                              # %if.end708
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 276
	b	.LBB0_365
.LBB0_236:                              # %sw.bb245
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_238
# %bb.237:                              # %if.then247
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_238:                              # %if.end256
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	addi.d	$fp, $a0, %pc_lo12(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1024
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
	ori	$a0, $zero, 267
	b	.LBB0_365
.LBB0_239:                              # %sw.bb1009
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_241
# %bb.240:                              # %if.then1011
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_241:                              # %if.end1020
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB0_174
.LBB0_242:                              # %sw.bb595
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_244
# %bb.243:                              # %if.then597
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_244:                              # %if.end606
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 292
	b	.LBB0_365
.LBB0_245:                              # %sw.bb301
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_247
# %bb.246:                              # %if.then303
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_247:                              # %if.end312
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pg_filename)
	ld.d	$a0, $a0, %got_pc_lo12(pg_filename)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE)
	jirl	$ra, $ra, 0
	b	.LBB0_304
.LBB0_248:                              # %sw.bb1022
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_250
# %bb.249:                              # %if.then1024
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_250:                              # %if.end1033
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB0_174
.LBB0_251:                              # %sw.bb644
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_253
# %bb.252:                              # %if.then646
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_253:                              # %if.end655
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
.LBB0_254:                              # %cleanup1377
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 258
	b	.LBB0_365
.LBB0_255:                              # %sw.bb439
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_257
# %bb.256:                              # %if.then441
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_257:                              # %if.end450
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 285
	b	.LBB0_365
.LBB0_258:                              # %sw.bb499
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_260
# %bb.259:                              # %if.then501
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_260:                              # %if.end510
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 290
	b	.LBB0_365
.LBB0_261:                              # %sw.bb523
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_263
# %bb.262:                              # %if.then525
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_263:                              # %if.end534
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 17
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
	ori	$a0, $zero, 294
	b	.LBB0_365
.LBB0_264:                              # %sw.bb799
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_266
# %bb.265:                              # %if.then801
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_266:                              # %if.end810
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(_ZL8yy_start)
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_115reset_nestcountEv)
	jirl	$ra, $ra, 0
	b	.LBB0_178
.LBB0_267:                              # %sw.bb786
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_269
# %bb.268:                              # %if.then788
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_269:                              # %if.end797
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	ld.b	$a0, $a0, %pc_lo12(yytext)
	ori	$a1, $zero, 13
.LBB0_270:                              # %cleanup1377
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(_ZL8yy_start)
	b	.LBB0_365
.LBB0_271:                              # %sw.bb858
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_273
# %bb.272:                              # %if.then860
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_273:                              # %if.end869
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	ld.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_364
.LBB0_274:                              # %sw.bb760
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_276
# %bb.275:                              # %if.then762
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_276:                              # %if.end771
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_182
.LBB0_277:                              # %sw.bb607
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_279
# %bb.278:                              # %if.then609
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_279:                              # %if.end618
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 293
	b	.LBB0_365
.LBB0_280:                              # %sw.bb709
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_282
# %bb.281:                              # %if.then711
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_282:                              # %if.end720
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 277
	b	.LBB0_365
.LBB0_283:                              # %sw.bb535
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_285
# %bb.284:                              # %if.then537
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_285:                              # %if.end546
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 295
	b	.LBB0_365
.LBB0_286:                              # %sw.bb403
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_288
# %bb.287:                              # %if.then405
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_288:                              # %if.end414
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 268
	b	.LBB0_365
.LBB0_289:                              # %sw.bb415
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_291
# %bb.290:                              # %if.then417
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_291:                              # %if.end426
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 271
	b	.LBB0_365
.LBB0_292:                              # %sw.bb970
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_294
# %bb.293:                              # %if.then972
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_294:                              # %if.end981
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB0_174
.LBB0_295:                              # %sw.bb365
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_297
# %bb.296:                              # %if.then367
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_297:                              # %if.end376
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 270
	b	.LBB0_365
.LBB0_298:                              # %sw.bb389
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_300
# %bb.299:                              # %if.then391
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_300:                              # %if.end400
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(_ZN2kc9mkintegerEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 260
	b	.LBB0_365
.LBB0_301:                              # %sw.bb328
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_303
# %bb.302:                              # %if.then330
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_303:                              # %if.end339
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116eat_line_commentEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB0_304:                              # %cleanup1377
	pcaddu18i	$ra, %call36(_ZN2kc9mkintegerEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a1, $a1, %got_pc_lo12(yylval)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 261
	b	.LBB0_365
.LBB0_305:                              # %sw.bb747
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_307
# %bb.306:                              # %if.then749
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_307:                              # %if.end758
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_182
.LBB0_308:                              # %sw.bb511
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_310
# %bb.309:                              # %if.then513
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_310:                              # %if.end522
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 291
	b	.LBB0_365
.LBB0_311:                              # %sw.bb487
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_313
# %bb.312:                              # %if.then489
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_313:                              # %if.end498
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 289
	b	.LBB0_365
.LBB0_314:                              # %sw.bb148
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_316
# %bb.315:                              # %if.then150
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_316:                              # %if.end159
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 278
	b	.LBB0_365
.LBB0_317:                              # %sw.bb124
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_319
# %bb.318:                              # %if.then126
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_319:                              # %if.end135
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 280
	b	.LBB0_365
.LBB0_320:                              # %sw.bb136
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_322
# %bb.321:                              # %if.then138
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_322:                              # %if.end147
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 281
	b	.LBB0_365
.LBB0_323:                              # %sw.bb377
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_325
# %bb.324:                              # %if.then379
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_325:                              # %if.end388
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 275
	b	.LBB0_365
.LBB0_326:                              # %sw.bb427
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_328
# %bb.327:                              # %if.then429
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_328:                              # %if.end438
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 284
	b	.LBB0_365
.LBB0_329:                              # %sw.bb160
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_331
# %bb.330:                              # %if.then162
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_331:                              # %if.end171
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 279
	b	.LBB0_365
.LBB0_332:                              # %sw.bb353
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_334
# %bb.333:                              # %if.then355
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_334:                              # %if.end364
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 269
	b	.LBB0_365
.LBB0_335:                              # %sw.bb1054
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_337
# %bb.336:                              # %if.then1056
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_337:                              # %if.end1065
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 274
	b	.LBB0_365
.LBB0_338:                              # %sw.bb184
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_340
# %bb.339:                              # %if.then186
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_340:                              # %if.end195
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 283
	b	.LBB0_365
.LBB0_341:                              # %sw.bb918
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_343
# %bb.342:                              # %if.then920
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_343:                              # %if.end929
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB0_182
.LBB0_344:                              # %sw.bb451
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_346
# %bb.345:                              # %if.then453
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_346:                              # %if.end462
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 286
	b	.LBB0_365
.LBB0_347:                              # %sw.bb475
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_349
# %bb.348:                              # %if.then477
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_349:                              # %if.end486
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 288
	b	.LBB0_365
.LBB0_350:                              # %sw.bb873
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_352
# %bb.351:                              # %if.then875
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_352:                              # %if.end884
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	ld.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_372
# %bb.353:                              # %if.else888
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB0_364
.LBB0_354:                              # %sw.bb983
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_356
# %bb.355:                              # %if.then985
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_356:                              # %if.end994
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_174
.LBB0_357:                              # %sw.bb825
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_359
# %bb.358:                              # %if.then827
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_359:                              # %if.end836
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	ld.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_364
.LBB0_360:                              # %sw.bb840
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_362
# %bb.361:                              # %if.then842
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_362:                              # %if.end851
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	ld.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_372
# %bb.363:                              # %if.else855
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
.LBB0_364:                              # %cleanup1377
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN2kc12mkcasestringEPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(yylval)
	ld.d	$a2, $a1, %got_pc_lo12(yylval)
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.b	$a3, $a1, %pc_lo12(yytext)
	move	$a1, $a0
	move	$a0, $a3
	st.d	$a1, $a2, 0
.LBB0_365:                              # %cleanup1377
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
.LBB0_366:                              # %sw.bb996
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_368
# %bb.367:                              # %if.then998
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_368:                              # %if.end1007
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_174
.LBB0_369:                              # %sw.bb944
	ld.w	$a0, $t1, %pc_lo12(yyleng)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_371
# %bb.370:                              # %if.then946
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(yytext)
	ld.d	$a2, $a5, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(_ZL15yy_buffer_stack)
	addi.d	$a1, $a1, %pc_lo12(yytext)
	ldx.bu	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	st.w	$a0, $a1, 40
.LBB0_371:                              # %if.end955
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_15countEb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB0_182
.LBB0_372:                              # %if.then853
	ori	$a0, $zero, 3
	st.w	$a0, $a2, %pc_lo12(_ZL8yy_start)
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_115reset_nestcountEv)
	jirl	$ra, $ra, 0
	b	.LBB0_178
.LBB0_373:                              # %if.then1049
	ld.b	$a0, $a0, 0
	b	.LBB0_365
.LBB0_374:
	ori	$a0, $zero, 273
	b	.LBB0_365
.LBB0_375:
	ori	$a0, $zero, 274
	b	.LBB0_365
.LBB0_376:                              # %if.then90
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.LBB0_377:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z5yylexv, .Lfunc_end0-_Z5yylexv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_109-.LJTI0_0
	.word	.LBB0_317-.LJTI0_0
	.word	.LBB0_320-.LJTI0_0
	.word	.LBB0_314-.LJTI0_0
	.word	.LBB0_329-.LJTI0_0
	.word	.LBB0_230-.LJTI0_0
	.word	.LBB0_338-.LJTI0_0
	.word	.LBB0_154-.LJTI0_0
	.word	.LBB0_224-.LJTI0_0
	.word	.LBB0_183-.LJTI0_0
	.word	.LBB0_109-.LJTI0_0
	.word	.LBB0_236-.LJTI0_0
	.word	.LBB0_118-.LJTI0_0
	.word	.LBB0_151-.LJTI0_0
	.word	.LBB0_218-.LJTI0_0
	.word	.LBB0_245-.LJTI0_0
	.word	.LBB0_115-.LJTI0_0
	.word	.LBB0_301-.LJTI0_0
	.word	.LBB0_158-.LJTI0_0
	.word	.LBB0_332-.LJTI0_0
	.word	.LBB0_295-.LJTI0_0
	.word	.LBB0_323-.LJTI0_0
	.word	.LBB0_298-.LJTI0_0
	.word	.LBB0_286-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_326-.LJTI0_0
	.word	.LBB0_255-.LJTI0_0
	.word	.LBB0_344-.LJTI0_0
	.word	.LBB0_221-.LJTI0_0
	.word	.LBB0_347-.LJTI0_0
	.word	.LBB0_311-.LJTI0_0
	.word	.LBB0_258-.LJTI0_0
	.word	.LBB0_308-.LJTI0_0
	.word	.LBB0_261-.LJTI0_0
	.word	.LBB0_283-.LJTI0_0
	.word	.LBB0_215-.LJTI0_0
	.word	.LBB0_227-.LJTI0_0
	.word	.LBB0_196-.LJTI0_0
	.word	.LBB0_212-.LJTI0_0
	.word	.LBB0_242-.LJTI0_0
	.word	.LBB0_277-.LJTI0_0
	.word	.LBB0_109-.LJTI0_0
	.word	.LBB0_209-.LJTI0_0
	.word	.LBB0_251-.LJTI0_0
	.word	.LBB0_183-.LJTI0_0
	.word	.LBB0_179-.LJTI0_0
	.word	.LBB0_199-.LJTI0_0
	.word	.LBB0_233-.LJTI0_0
	.word	.LBB0_280-.LJTI0_0
	.word	.LBB0_179-.LJTI0_0
	.word	.LBB0_175-.LJTI0_0
	.word	.LBB0_305-.LJTI0_0
	.word	.LBB0_274-.LJTI0_0
	.word	.LBB0_193-.LJTI0_0
	.word	.LBB0_267-.LJTI0_0
	.word	.LBB0_264-.LJTI0_0
	.word	.LBB0_175-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_360-.LJTI0_0
	.word	.LBB0_271-.LJTI0_0
	.word	.LBB0_350-.LJTI0_0
	.word	.LBB0_179-.LJTI0_0
	.word	.LBB0_186-.LJTI0_0
	.word	.LBB0_341-.LJTI0_0
	.word	.LBB0_186-.LJTI0_0
	.word	.LBB0_369-.LJTI0_0
	.word	.LBB0_179-.LJTI0_0
	.word	.LBB0_292-.LJTI0_0
	.word	.LBB0_354-.LJTI0_0
	.word	.LBB0_366-.LJTI0_0
	.word	.LBB0_239-.LJTI0_0
	.word	.LBB0_248-.LJTI0_0
	.word	.LBB0_189-.LJTI0_0
	.word	.LBB0_335-.LJTI0_0
	.word	.LBB0_203-.LJTI0_0
	.word	.LBB0_170-.LJTI0_0
	.word	.LBB0_170-.LJTI0_0
	.word	.LBB0_170-.LJTI0_0
	.word	.LBB0_170-.LJTI0_0
	.word	.LBB0_170-.LJTI0_0
	.word	.LBB0_175-.LJTI0_0
	.word	.LBB0_109-.LJTI0_0
	.word	.LBB0_141-.LJTI0_0
	.word	.LBB0_133-.LJTI0_0
	.word	.LBB0_121-.LJTI0_0
	.word	.LBB0_144-.LJTI0_0
	.word	.LBB0_147-.LJTI0_0
	.word	.LBB0_124-.LJTI0_0
	.word	.LBB0_138-.LJTI0_0
	.word	.LBB0_130-.LJTI0_0
	.word	.LBB0_127-.LJTI0_0
	.word	.LBB0_175-.LJTI0_0
	.word	.LBB0_112-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
                                        # -- End function
	.text
	.globl	_Z7yyallocj                     # -- Begin function _Z7yyallocj
	.p2align	5
	.type	_Z7yyallocj,@function
_Z7yyallocj:                            # @_Z7yyallocj
# %bb.0:                                # %entry
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$t8, %call36(malloc)
	jr	$t8
.Lfunc_end1:
	.size	_Z7yyallocj, .Lfunc_end1-_Z7yyallocj
                                        # -- End function
	.globl	_Z16yy_create_bufferP8_IO_FILEi # -- Begin function _Z16yy_create_bufferP8_IO_FILEi
	.p2align	5
	.type	_Z16yy_create_bufferP8_IO_FILEi,@function
_Z16yy_create_bufferP8_IO_FILEi:        # @_Z16yy_create_bufferP8_IO_FILEi
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.1:                                # %if.end
	move	$fp, $a0
	st.w	$s1, $a0, 24
	addi.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB2_7
# %bb.2:                                # %if.end.i.i
	move	$s1, $a0
	ori	$s2, $zero, 1
	st.w	$s2, $fp, 32
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a2, $a2, %pc_lo12(_ZL15yy_buffer_stack)
	st.w	$zero, $fp, 28
	st.h	$zero, $s1, 0
	st.d	$s1, $fp, 16
	st.w	$s2, $fp, 40
	st.w	$zero, $fp, 56
	beqz	$a2, .LBB2_4
# %bb.3:                                # %cond.true.i.i
	pcalau12i	$a3, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$a3, $a3, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	beq	$fp, $a2, .LBB2_5
.LBB2_4:                                # %if.then.i
	st.d	$s0, $fp, 0
	st.w	$s2, $fp, 52
	st.d	$s2, $fp, 44
	b	.LBB2_6
.LBB2_5:                                # %cond.true.i.thread
	ld.w	$a3, $a2, 28
	ld.d	$a4, $a2, 16
	pcalau12i	$a5, %pc_hi20(_ZL10yy_n_chars)
	st.w	$a3, $a5, %pc_lo12(_ZL10yy_n_chars)
	pcalau12i	$a3, %pc_hi20(_ZL10yy_c_buf_p)
	st.d	$a4, $a3, %pc_lo12(_ZL10yy_c_buf_p)
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %pc_hi20(yytext_ptr)
	st.d	$a4, $a3, %pc_lo12(yytext_ptr)
	pcalau12i	$a3, %pc_hi20(yyin)
	st.d	$a2, $a3, %pc_lo12(yyin)
	ld.b	$a2, $a4, 0
	pcalau12i	$a3, %pc_hi20(_ZL12yy_hold_char)
	st.b	$a2, $a3, %pc_lo12(_ZL12yy_hold_char)
	st.d	$s0, $fp, 0
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 52
.LBB2_6:                                # %_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE.exit
	st.w	$zero, $fp, 36
	st.w	$a1, $a0, 0
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_7:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z16yy_create_bufferP8_IO_FILEi, .Lfunc_end2-_Z16yy_create_bufferP8_IO_FILEi
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZL14yy_fatal_errorPKc
	.type	_ZL14yy_fatal_errorPKc,@function
_ZL14yy_fatal_errorPKc:                 # @_ZL14yy_fatal_errorPKc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a3, $a1, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL14yy_fatal_errorPKc, .Lfunc_end3-_ZL14yy_fatal_errorPKc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_15countEb
	.type	_ZN12_GLOBAL__N_15countEb,@function
_ZN12_GLOBAL__N_15countEb:              # @_ZN12_GLOBAL__N_15countEb
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(pg_column)
	ld.d	$a0, $a0, %got_pc_lo12(pg_column)
	pcalau12i	$a1, %got_pc_hi20(pg_charpos)
	ld.d	$a1, $a1, %got_pc_lo12(pg_charpos)
	pcalau12i	$a2, %got_pc_hi20(pg_lineno)
	ld.d	$a2, $a2, %got_pc_lo12(pg_lineno)
	ld.w	$t1, $a0, 0
	ld.w	$a4, $a1, 0
	ld.w	$a3, $a2, 0
	pcalau12i	$a5, %pc_hi20(yytext)
	addi.d	$a5, $a5, %pc_lo12(yytext)
	ori	$a6, $zero, 9
	ori	$a7, $zero, 8
	ori	$t0, $zero, 10
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_1:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t1, $zero
	st.w	$zero, $a0, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 0
.LBB4_2:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$a4, $a4, 1
.LBB4_3:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	st.w	$a4, $a1, 0
	addi.d	$a5, $a5, 1
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t2, $a5, 0
	beq	$t2, $a6, .LBB4_8
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$t2, $t0, .LBB4_1
# %bb.6:                                # %for.cond
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$t2, .LBB4_9
# %bb.7:                                # %if.else8
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$t1, $t1, 1
	st.w	$t1, $a0, 0
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_8:                                # %if.then4
                                        #   in Loop: Header=BB4_4 Depth=1
	bstrpick.d	$t2, $t1, 62, 60
	add.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 3
	slli.d	$t2, $t1, 3
	alsl.w	$t1, $t1, $a7, 3
	addi.d	$t2, $t2, 8
	st.w	$t2, $a0, 0
	bstrpick.d	$t2, $a4, 62, 60
	add.d	$a4, $a4, $t2
	bstrpick.d	$a4, $a4, 31, 3
	alsl.w	$a4, $a4, $a7, 3
	b	.LBB4_3
.LBB4_9:                                # %for.end
	ret
.Lfunc_end4:
	.size	_ZN12_GLOBAL__N_15countEb, .Lfunc_end4-_ZN12_GLOBAL__N_15countEb
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE
	.type	_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE,@function
_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE: # @_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$a1, %got_pc_hi20(pg_lineno)
	ld.d	$s3, $a1, %got_pc_lo12(pg_lineno)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$fp, $s3, 0
	ori	$s2, $zero, 32
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s1, $a0, %pc_lo12(.L.str.31)
	lu12i.w	$s5, 36864
	pcalau12i	$a0, %got_pc_hi20(pg_column)
	ld.d	$s6, $a0, %got_pc_lo12(pg_column)
	pcalau12i	$a0, %got_pc_hi20(pg_charpos)
	ld.d	$s7, $a0, %got_pc_lo12(pg_charpos)
	lu12i.w	$s8, 40960
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_1:                                # %if.then12
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN2kc9Problem1SEPKc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB5_2:                                # %if.end35
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$s2, $a0
	blez	$s4, .LBB5_13
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_ZL7yyinputv)
	jirl	$ra, $ra, 0
	slli.w	$a1, $a0, 24
	beqz	$a1, .LBB5_1
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB5_3 Depth=1
	beq	$a1, $s5, .LBB5_7
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB5_3 Depth=1
	bne	$a1, $s8, .LBB5_9
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $s3, 0
	ld.w	$a2, $s7, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 0
	st.w	$zero, $s6, 0
	addi.d	$a1, $a2, 1
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %if.then5
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $s6, 0
	bstrpick.d	$a2, $a1, 62, 60
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 3
	ld.w	$a2, $s7, 0
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 8
	st.w	$a1, $s6, 0
	bstrpick.d	$a1, $a2, 62, 60
	add.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 8
.LBB5_8:                                # %if.end35
                                        #   in Loop: Header=BB5_3 Depth=1
	st.w	$a1, $s7, 0
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_9:                                # %if.end20
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a2, $s6, 0
	ld.w	$a3, $s7, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s6, 0
	addi.d	$a3, $a3, 1
	slli.w	$a2, $s2, 24
	st.w	$a3, $s7, 0
	lu12i.w	$a3, 192512
	bne	$a2, $a3, .LBB5_12
# %bb.10:                               # %if.end20
                                        #   in Loop: Header=BB5_3 Depth=1
	lu12i.w	$a3, 172032
	bne	$a1, $a3, .LBB5_12
# %bb.11:                               # %if.then25
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$s4, $s4, 1
	b	.LBB5_2
.LBB5_12:                               # %if.else27
                                        #   in Loop: Header=BB5_3 Depth=1
	lu12i.w	$a3, 172032
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	lu12i.w	$a3, 192512
	xor	$a1, $a1, $a3
	sltui	$a1, $a1, 1
	and	$a1, $a2, $a1
	sub.w	$s4, $s4, $a1
	b	.LBB5_2
.LBB5_13:                               # %for.end
	ld.w	$a0, $s3, 0
	sub.w	$a0, $a0, $fp
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
	.size	_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE, .Lfunc_end5-_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_116eat_line_commentEv
	.type	_ZN12_GLOBAL__N_116eat_line_commentEv,@function
_ZN12_GLOBAL__N_116eat_line_commentEv:  # @_ZN12_GLOBAL__N_116eat_line_commentEv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$fp, $zero, 10
	.p2align	4, , 16
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_ZL7yyinputv)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB6_1
# %bb.2:                                # %while.end
	pcalau12i	$a0, %got_pc_hi20(pg_lineno)
	ld.d	$a0, $a0, %got_pc_lo12(pg_lineno)
	pcalau12i	$a1, %got_pc_hi20(pg_charpos)
	ld.d	$a1, $a1, %got_pc_lo12(pg_charpos)
	ld.w	$a2, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(pg_column)
	ld.d	$a3, $a3, %got_pc_lo12(pg_column)
	ld.w	$a4, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	st.w	$zero, $a3, 0
	addi.d	$a0, $a4, 1
	st.w	$a0, $a1, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	_ZN12_GLOBAL__N_116eat_line_commentEv, .Lfunc_end6-_ZN12_GLOBAL__N_116eat_line_commentEv
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_115reset_nestcountEv
	.type	_ZN12_GLOBAL__N_115reset_nestcountEv,@function
_ZN12_GLOBAL__N_115reset_nestcountEv:   # @_ZN12_GLOBAL__N_115reset_nestcountEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	pcalau12i	$s0, %pc_hi20(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	ld.w	$a0, $s0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	beqz	$a0, .LBB7_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(_ZN2kc13PosNoFileLineEv)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZN2kc9Problem1SEPKc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %if.end
	pcalau12i	$s1, %pc_hi20(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	ld.w	$a0, $s1, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	beqz	$a0, .LBB7_4
# %bb.3:                                # %if.then4
	pcaddu18i	$ra, %call36(_ZN2kc13PosNoFileLineEv)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(_ZN2kc9Problem1SEPKc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %if.end8
	st.w	$zero, $s0, %pc_lo12(_ZN12_GLOBAL__N_119cinit_paren_nestingE)
	st.w	$zero, $s1, %pc_lo12(_ZN12_GLOBAL__N_119cinit_array_nestingE)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN12_GLOBAL__N_115reset_nestcountEv, .Lfunc_end7-_ZN12_GLOBAL__N_115reset_nestcountEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ # -- Begin function _ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.p2align	5
	.type	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,@function
_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_: # @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a0
	ld.d	$fp, $a0, 8
	move	$s0, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bne	$fp, $a1, .LBB8_4
# %bb.1:                                # %land.rhs.i
	beqz	$fp, .LBB8_3
# %bb.2:                                # %if.end.i.i
	ld.d	$a0, $s1, 0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	b	.LBB8_4
.LBB8_3:
	move	$a0, $zero
.LBB8_4:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .Lfunc_end8-_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18yy_get_next_bufferv
	.type	_ZL18yy_get_next_bufferv,@function
_ZL18yy_get_next_bufferv:               # @_ZL18yy_get_next_bufferv
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
	pcalau12i	$s5, %pc_hi20(_ZL15yy_buffer_stack)
	pcalau12i	$s6, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $a1, $a0
	ld.d	$t0, $s1, 8
	pcalau12i	$s3, %pc_hi20(_ZL10yy_n_chars)
	ld.w	$a0, $s3, %pc_lo12(_ZL10yy_n_chars)
	pcalau12i	$a3, %pc_hi20(_ZL10yy_c_buf_p)
	ld.d	$a6, $a3, %pc_lo12(_ZL10yy_c_buf_p)
	add.d	$a0, $t0, $a0
	addi.d	$a0, $a0, 1
	bltu	$a0, $a6, .LBB9_48
# %bb.1:                                # %if.end
	pcalau12i	$s2, %pc_hi20(yytext_ptr)
	ld.d	$a7, $s2, %pc_lo12(yytext_ptr)
	ld.w	$a3, $s1, 52
	sub.d	$a0, $a6, $a7
	addi.d	$a5, $a0, -1
	beqz	$a3, .LBB9_7
# %bb.2:                                # %if.end9
	addi.w	$a3, $a0, 0
	ori	$a4, $zero, 2
	addi.w	$s4, $a5, 0
	blt	$a3, $a4, .LBB9_20
# %bb.3:                                # %iter.check
	move	$t4, $zero
	ori	$t1, $zero, 17
	alsl.d	$a5, $a2, $a1, 3
	bltu	$a3, $t1, .LBB9_8
# %bb.4:                                # %iter.check
	sub.d	$t1, $t0, $a7
	ori	$t2, $zero, 64
	bltu	$t1, $t2, .LBB9_8
# %bb.5:                                # %vector.main.loop.iter.check
	ori	$t2, $zero, 65
	bstrpick.d	$t1, $s4, 31, 0
	bgeu	$a3, $t2, .LBB9_9
# %bb.6:
	move	$t5, $zero
	b	.LBB9_13
.LBB9_7:                                # %if.then6
	sltui	$a0, $a5, 1
	ori	$a1, $zero, 2
	sub.d	$a0, $a1, $a0
	b	.LBB9_46
.LBB9_8:
	move	$t3, $a7
	move	$t2, $t0
	b	.LBB9_17
.LBB9_9:                                # %vector.ph
	bstrpick.d	$t2, $t1, 31, 6
	slli.d	$t5, $t2, 6
	addi.d	$t2, $t0, 32
	addi.d	$t3, $a7, 32
	move	$t4, $t5
	.p2align	4, , 16
.LBB9_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvst	$xr0, $t2, -32
	xvst	$xr1, $t2, 0
	addi.d	$t4, $t4, -64
	addi.d	$t2, $t2, 64
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB9_10
# %bb.11:                               # %middle.block
	beq	$t5, $t1, .LBB9_19
# %bb.12:                               # %vec.epilog.iter.check
	andi	$t2, $t1, 48
	beqz	$t2, .LBB9_16
.LBB9_13:                               # %vec.epilog.ph
	bstrpick.d	$t2, $t1, 31, 4
	slli.d	$t4, $t2, 4
	alsl.d	$t3, $t2, $a7, 4
	alsl.d	$t2, $t2, $t0, 4
	sub.d	$t6, $t5, $t4
	add.d	$t0, $t0, $t5
	add.d	$t5, $a7, $t5
	.p2align	4, , 16
.LBB9_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t5, 0
	vst	$vr0, $t0, 0
	addi.d	$t6, $t6, 16
	addi.d	$t0, $t0, 16
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB9_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$t4, $t1, .LBB9_17
	b	.LBB9_19
.LBB9_16:
	add.d	$t3, $a7, $t5
	add.d	$t2, $t0, $t5
	move	$t4, $t5
.LBB9_17:                               # %for.body.preheader
	add.d	$a7, $t4, $a7
	sub.d	$a6, $a7, $a6
	addi.w	$a7, $a6, 1
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	.p2align	4, , 16
.LBB9_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $t3, 0
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t2, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t4, $a7, $a6
	st.b	$t0, $t2, 0
	move	$t2, $t1
	beqz	$t4, .LBB9_18
.LBB9_19:                               # %for.end.loopexit
	ld.d	$s1, $a5, 0
.LBB9_20:                               # %for.end
	ld.w	$a5, $s1, 56
	bne	$a5, $a4, .LBB9_25
# %bb.21:                               # %if.end86.thread
	st.w	$zero, $s3, %pc_lo12(_ZL10yy_n_chars)
.LBB9_22:                               # %if.then88.sink.split
	st.w	$zero, $s1, 28
.LBB9_23:                               # %if.then88
	beqz	$s4, .LBB9_35
# %bb.24:                               # %if.else91
	move	$fp, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s1, 56
	b	.LBB9_45
.LBB9_25:                               # %if.else20
	ld.w	$a1, $s1, 24
	beq	$a1, $a3, .LBB9_50
# %bb.26:                               # %while.end
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a0, 13
	sltui	$a1, $a1, 1
	ld.w	$a2, $s1, 36
	maskeqz	$a0, $a0, $a1
	lu12i.w	$a3, 2
	masknez	$a1, $a3, $a1
	or	$s0, $a0, $a1
	beqz	$a2, .LBB9_36
# %bb.27:                               # %land.lhs.true.lr.ph
	move	$fp, $zero
	pcalau12i	$s1, %pc_hi20(yyin)
	addi.w	$s7, $zero, -1
	ori	$s8, $zero, 10
	.p2align	4, , 16
.LBB9_28:                               # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(yyin)
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB9_32
# %bb.29:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_28 Depth=1
	beq	$a0, $s8, .LBB9_32
# %bb.30:                               # %for.body35
                                        #   in Loop: Header=BB9_28 Depth=1
	ld.d	$a1, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 8
	add.d	$a1, $a1, $s4
	stx.b	$a0, $a1, $fp
	addi.d	$fp, $fp, 1
	bne	$s0, $fp, .LBB9_28
# %bb.31:
	move	$fp, $s0
.LBB9_32:                               # %for.end44
	beq	$a0, $s7, .LBB9_42
# %bb.33:                               # %for.end44
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB9_43
# %bb.34:                               # %if.end54.thread
	ld.d	$a0, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 8
	add.d	$a0, $a0, $s4
	addi.d	$a2, $fp, 1
	stx.b	$a1, $a0, $fp
	move	$fp, $a2
	b	.LBB9_43
.LBB9_35:                               # %if.then90
	pcalau12i	$a0, %pc_hi20(yyin)
	ld.d	$a0, $a0, %pc_lo12(yyin)
	pcaddu18i	$ra, %call36(_Z9yyrestartP8_IO_FILE)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	ld.w	$fp, $s3, %pc_lo12(_ZL10yy_n_chars)
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $a1, $a0
	ori	$a0, $zero, 1
	b	.LBB9_45
.LBB9_36:                               # %if.else62
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	pcalau12i	$s7, %pc_hi20(yyin)
	ld.d	$a3, $s7, %pc_lo12(yyin)
	move	$s1, $a0
	st.w	$zero, $a0, 0
	add.d	$a0, $a1, $s4
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	st.w	$fp, $s3, %pc_lo12(_ZL10yy_n_chars)
	bnez	$a0, .LBB9_41
# %bb.37:                               # %land.rhs72.preheader
	ori	$s8, $zero, 4
	.p2align	4, , 16
.LBB9_38:                               # %land.rhs72
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, %pc_lo12(yyin)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_47
# %bb.39:                               # %while.body76
                                        #   in Loop: Header=BB9_38 Depth=1
	ld.w	$a0, $s1, 0
	bne	$a0, $s8, .LBB9_49
# %bb.40:                               # %if.end80
                                        #   in Loop: Header=BB9_38 Depth=1
	st.w	$zero, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clearerr)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $s7, %pc_lo12(yyin)
	add.d	$a0, $a0, $s4
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	st.w	$fp, $s3, %pc_lo12(_ZL10yy_n_chars)
	beqz	$a0, .LBB9_38
.LBB9_41:                               # %if.end86.thread46
	ld.d	$a2, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $a1, $a0
	move	$a0, $zero
	st.w	$fp, $s1, 28
	b	.LBB9_45
.LBB9_42:                               # %land.lhs.true56
	ld.d	$a0, $s1, %pc_lo12(yyin)
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_49
.LBB9_43:                               # %if.end86
	ld.d	$a2, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $a1, $a0
	addi.w	$a0, $fp, 0
	st.w	$fp, $s3, %pc_lo12(_ZL10yy_n_chars)
	st.w	$fp, $s1, 28
	beqz	$a0, .LBB9_23
# %bb.44:
	move	$a0, $zero
.LBB9_45:                               # %if.end96
	ld.d	$a3, $s1, 8
	add.w	$a4, $fp, $s4
	st.w	$a4, $s3, %pc_lo12(_ZL10yy_n_chars)
	slli.d	$a2, $a2, 3
	stx.b	$zero, $a3, $a4
	ldx.d	$a3, $a1, $a2
	ld.d	$a3, $a3, 8
	add.d	$a3, $a3, $a4
	st.b	$zero, $a3, 1
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	st.d	$a1, $s2, %pc_lo12(yytext_ptr)
.LBB9_46:                               # %cleanup
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
.LBB9_47:                               # %if.end86.thread51
	ld.d	$a2, $s6, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a1, $s5, %pc_lo12(_ZL15yy_buffer_stack)
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $a1, $a0
	b	.LBB9_22
.LBB9_48:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.LBB9_49:                               # %if.then59
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.LBB9_50:                               # %while.body
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZL18yy_get_next_bufferv, .Lfunc_end9-_ZL18yy_get_next_bufferv
                                        # -- End function
	.globl	_Z9yyrestartP8_IO_FILE          # -- Begin function _Z9yyrestartP8_IO_FILE
	.p2align	5
	.type	_Z9yyrestartP8_IO_FILE,@function
_Z9yyrestartP8_IO_FILE:                 # @_Z9yyrestartP8_IO_FILE
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
	pcalau12i	$s2, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a2, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(yyin)
	pcalau12i	$s3, %pc_hi20(_ZL19yy_buffer_stack_top)
	beqz	$a2, .LBB10_3
# %bb.1:                                # %cond.true
	ld.d	$a1, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a0, $a1, 3
	ldx.d	$s0, $a2, $a0
	beqz	$s0, .LBB10_4
# %bb.2:
	move	$s2, $zero
	b	.LBB10_7
.LBB10_3:                               # %if.then.i
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZL19yy_buffer_stack_max)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, %pc_lo12(_ZL19yy_buffer_stack_max)
	st.d	$zero, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	b	.LBB10_6
.LBB10_4:                               # %if.end.i
	pcalau12i	$s0, %pc_hi20(_ZL19yy_buffer_stack_max)
	ld.d	$s4, $s0, %pc_lo12(_ZL19yy_buffer_stack_max)
	addi.d	$a0, $s4, -1
	bltu	$a1, $a0, .LBB10_6
# %bb.5:                                # %if.then5.i
	slli.d	$a0, $s4, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 8
	add.d	$a0, $a0, $a1
	srai.d	$s5, $a0, 32
	srli.d	$a0, $a0, 29
	addi.w	$a1, $zero, -8
	lu32i.d	$a1, 0
	and	$a1, $a0, $a1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	alsl.d	$a1, $s4, $a0, 3
	slli.d	$a2, $s4, 3
	xvrepli.b	$xr0, 0
	xvstx	$xr0, $a0, $a2
	xvst	$xr0, $a1, 32
	st.d	$s5, $s0, %pc_lo12(_ZL19yy_buffer_stack_max)
.LBB10_6:                               # %if.end.thread
	ld.d	$a0, $s1, %pc_lo12(yyin)
	lu12i.w	$a1, 4
	pcaddu18i	$ra, %call36(_Z16yy_create_bufferP8_IO_FILEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	move	$s0, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s0, $a2, $a0
	sltui	$s2, $a2, 1
.LBB10_7:                               # %cond.end7
	alsl.d	$s3, $a1, $a2, 3
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	ld.w	$a1, $a0, 0
	st.w	$zero, $s0, 28
	st.b	$zero, $a2, 0
	ld.d	$a2, $s0, 8
	st.b	$zero, $a2, 1
	ld.d	$a2, $s0, 8
	st.d	$a2, $s0, 16
	ori	$a7, $zero, 1
	st.w	$a7, $s0, 40
	st.w	$zero, $s0, 56
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	pcalau12i	$a4, %pc_hi20(_ZL10yy_c_buf_p)
	pcalau12i	$a5, %pc_hi20(yytext_ptr)
	pcalau12i	$a2, %pc_hi20(_ZL12yy_hold_char)
	beqz	$s2, .LBB10_9
# %bb.8:                                # %_Z15yy_flush_bufferP15yy_buffer_state.exit.thread.i
	ld.d	$a6, $s3, 0
	st.d	$fp, $s0, 0
	b	.LBB10_11
.LBB10_9:                               # %cond.true.i.i
	ld.d	$a6, $s3, 0
	beq	$s0, $a6, .LBB10_13
# %bb.10:                               # %_Z15yy_flush_bufferP15yy_buffer_state.exit.thread9.i
	st.d	$fp, $s0, 0
	ori	$a7, $zero, 1
.LBB10_11:                              # %if.then.i2
	st.w	$a7, $s0, 52
	ori	$a7, $zero, 1
	st.d	$a7, $s0, 44
.LBB10_12:                              # %_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE.exit
	st.w	$zero, $s0, 36
	st.w	$a1, $a0, 0
	ld.w	$a0, $a6, 28
	ld.d	$a1, $a6, 16
	ld.d	$a6, $a6, 0
	st.w	$a0, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a1, $a4, %pc_lo12(_ZL10yy_c_buf_p)
	st.d	$a1, $a5, %pc_lo12(yytext_ptr)
	st.d	$a6, $s1, %pc_lo12(yyin)
	ld.b	$a0, $a1, 0
	st.b	$a0, $a2, %pc_lo12(_ZL12yy_hold_char)
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
.LBB10_13:                              # %_Z15yy_flush_bufferP15yy_buffer_state.exit.thread9.i.thread
	ld.w	$a7, $a6, 28
	ld.d	$t0, $a6, 16
	ld.d	$t1, $a6, 0
	st.w	$a7, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$t0, $a4, %pc_lo12(_ZL10yy_c_buf_p)
	st.d	$t0, $a5, %pc_lo12(yytext_ptr)
	st.d	$t1, $s1, %pc_lo12(yyin)
	ld.b	$a7, $t0, 0
	st.b	$a7, $a2, %pc_lo12(_ZL12yy_hold_char)
	st.d	$fp, $s0, 0
	ori	$a7, $zero, 1
	st.w	$a7, $s0, 52
	b	.LBB10_12
.Lfunc_end10:
	.size	_Z9yyrestartP8_IO_FILE, .Lfunc_end10-_Z9yyrestartP8_IO_FILE
                                        # -- End function
	.globl	_Z19yy_switch_to_bufferP15yy_buffer_state # -- Begin function _Z19yy_switch_to_bufferP15yy_buffer_state
	.p2align	5
	.type	_Z19yy_switch_to_bufferP15yy_buffer_state,@function
_Z19yy_switch_to_bufferP15yy_buffer_state: # @_Z19yy_switch_to_bufferP15yy_buffer_state
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a2, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	move	$fp, $a0
	beqz	$a2, .LBB11_4
# %bb.1:                                # %if.end.i
	pcalau12i	$a0, %pc_hi20(_ZL19yy_buffer_stack_top)
	pcalau12i	$s2, %pc_hi20(_ZL19yy_buffer_stack_max)
	ld.d	$s3, $s2, %pc_lo12(_ZL19yy_buffer_stack_max)
	ld.d	$s0, $a0, %pc_lo12(_ZL19yy_buffer_stack_top)
	addi.d	$a0, $s3, -1
	bltu	$s0, $a0, .LBB11_3
# %bb.2:                                # %if.then5.i
	slli.d	$a0, $s3, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 8
	add.d	$a0, $a0, $a1
	srai.d	$s4, $a0, 32
	srli.d	$a0, $a0, 29
	addi.w	$a1, $zero, -8
	lu32i.d	$a1, 0
	and	$a1, $a0, $a1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	alsl.d	$a0, $s3, $a0, 3
	slli.d	$a1, $s3, 3
	xvrepli.b	$xr0, 0
	xvstx	$xr0, $a2, $a1
	xvst	$xr0, $a0, 32
	st.d	$s4, $s2, %pc_lo12(_ZL19yy_buffer_stack_max)
.LBB11_3:                               # %cond.end
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a2, $a1
	bne	$a0, $fp, .LBB11_5
	b	.LBB11_8
.LBB11_4:                               # %if.then.i
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$s0, $zero
	st.d	$a0, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZL19yy_buffer_stack_max)
	ori	$a1, $zero, 1
	st.d	$a1, $a0, %pc_lo12(_ZL19yy_buffer_stack_max)
	pcalau12i	$a0, %pc_hi20(_ZL19yy_buffer_stack_top)
	st.d	$zero, $a0, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a2, $a1
	beq	$a0, $fp, .LBB11_8
.LBB11_5:                               # %cond.true2
	ldx.d	$a5, $a2, $a1
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	pcalau12i	$a4, %pc_hi20(_ZL10yy_c_buf_p)
	pcalau12i	$a0, %pc_hi20(_ZL12yy_hold_char)
	beqz	$a5, .LBB11_7
# %bb.6:                                # %if.then8
	ld.b	$a5, $a0, %pc_lo12(_ZL12yy_hold_char)
	ld.d	$a6, $a4, %pc_lo12(_ZL10yy_c_buf_p)
	alsl.d	$a7, $s0, $a2, 3
	st.b	$a5, $a6, 0
	ld.d	$a5, $a7, 0
	ld.w	$a7, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a6, $a5, 16
	st.w	$a7, $a5, 28
.LBB11_7:                               # %if.end11
	ld.w	$a5, $fp, 28
	ld.d	$a6, $fp, 16
	stx.d	$fp, $a2, $a1
	st.w	$a5, $a3, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a6, $a4, %pc_lo12(_ZL10yy_c_buf_p)
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(yytext_ptr)
	st.d	$a6, $a2, %pc_lo12(yytext_ptr)
	pcalau12i	$a2, %pc_hi20(yyin)
	st.d	$a1, $a2, %pc_lo12(yyin)
	ld.b	$a1, $a6, 0
	st.b	$a1, $a0, %pc_lo12(_ZL12yy_hold_char)
.LBB11_8:                               # %return
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end11:
	.size	_Z19yy_switch_to_bufferP15yy_buffer_state, .Lfunc_end11-_Z19yy_switch_to_bufferP15yy_buffer_state
                                        # -- End function
	.globl	_Z16yy_delete_bufferP15yy_buffer_state # -- Begin function _Z16yy_delete_bufferP15yy_buffer_state
	.p2align	5
	.type	_Z16yy_delete_bufferP15yy_buffer_state,@function
_Z16yy_delete_bufferP15yy_buffer_state: # @_Z16yy_delete_bufferP15yy_buffer_state
# %bb.0:                                # %entry
	beqz	$a0, .LBB12_7
# %bb.1:                                # %if.end
	pcalau12i	$a1, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a1, $a1, %pc_lo12(_ZL15yy_buffer_stack)
	beqz	$a1, .LBB12_4
# %bb.2:                                # %cond.true
	pcalau12i	$a2, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $a2, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	bne	$a0, $a3, .LBB12_4
# %bb.3:                                # %if.then2
	alsl.d	$a1, $a2, $a1, 3
	st.d	$zero, $a1, 0
.LBB12_4:                               # %if.end4
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB12_6
# %bb.5:                                # %if.then6
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB12_6:                               # %if.end7
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB12_7:                               # %return
	ret
.Lfunc_end12:
	.size	_Z16yy_delete_bufferP15yy_buffer_state, .Lfunc_end12-_Z16yy_delete_bufferP15yy_buffer_state
                                        # -- End function
	.globl	_Z6yyfreePv                     # -- Begin function _Z6yyfreePv
	.p2align	5
	.type	_Z6yyfreePv,@function
_Z6yyfreePv:                            # @_Z6yyfreePv
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end13:
	.size	_Z6yyfreePv, .Lfunc_end13-_Z6yyfreePv
                                        # -- End function
	.globl	_Z15yy_flush_bufferP15yy_buffer_state # -- Begin function _Z15yy_flush_bufferP15yy_buffer_state
	.p2align	5
	.type	_Z15yy_flush_bufferP15yy_buffer_state,@function
_Z15yy_flush_bufferP15yy_buffer_state:  # @_Z15yy_flush_bufferP15yy_buffer_state
# %bb.0:                                # %entry
	beqz	$a0, .LBB14_3
# %bb.1:                                # %if.end
	ld.d	$a1, $a0, 8
	st.w	$zero, $a0, 28
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	st.b	$zero, $a1, 1
	ld.d	$a2, $a0, 8
	pcalau12i	$a1, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a1, $a1, %pc_lo12(_ZL15yy_buffer_stack)
	st.d	$a2, $a0, 16
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 40
	st.w	$zero, $a0, 56
	beqz	$a1, .LBB14_3
# %bb.2:                                # %cond.true
	pcalau12i	$a2, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $a2, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	beq	$a0, $a1, .LBB14_4
.LBB14_3:                               # %if.end8
	ret
.LBB14_4:                               # %if.then7
	ld.w	$a0, $a1, 28
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	st.w	$a0, $a3, %pc_lo12(_ZL10yy_n_chars)
	pcalau12i	$a0, %pc_hi20(_ZL10yy_c_buf_p)
	st.d	$a2, $a0, %pc_lo12(_ZL10yy_c_buf_p)
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(yytext_ptr)
	st.d	$a2, $a1, %pc_lo12(yytext_ptr)
	pcalau12i	$a1, %pc_hi20(yyin)
	st.d	$a0, $a1, %pc_lo12(yyin)
	ld.b	$a0, $a2, 0
	pcalau12i	$a1, %pc_hi20(_ZL12yy_hold_char)
	st.b	$a0, $a1, %pc_lo12(_ZL12yy_hold_char)
	ret
.Lfunc_end14:
	.size	_Z15yy_flush_bufferP15yy_buffer_state, .Lfunc_end14-_Z15yy_flush_bufferP15yy_buffer_state
                                        # -- End function
	.globl	_Z19yypush_buffer_stateP15yy_buffer_state # -- Begin function _Z19yypush_buffer_stateP15yy_buffer_state
	.p2align	5
	.type	_Z19yypush_buffer_stateP15yy_buffer_state,@function
_Z19yypush_buffer_stateP15yy_buffer_state: # @_Z19yypush_buffer_stateP15yy_buffer_state
# %bb.0:                                # %entry
	beqz	$a0, .LBB15_8
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s2, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	pcalau12i	$s0, %pc_hi20(_ZL19yy_buffer_stack_top)
	beqz	$a0, .LBB15_4
# %bb.2:                                # %if.end.i
	pcalau12i	$s3, %pc_hi20(_ZL19yy_buffer_stack_max)
	ld.d	$s4, $s3, %pc_lo12(_ZL19yy_buffer_stack_max)
	ld.d	$s1, $s0, %pc_lo12(_ZL19yy_buffer_stack_top)
	addi.d	$a1, $s4, -1
	bltu	$s1, $a1, .LBB15_5
# %bb.3:                                # %if.then5.i
	slli.d	$a1, $s4, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 8
	add.d	$a1, $a1, $a2
	srai.d	$s5, $a1, 32
	srli.d	$a1, $a1, 29
	addi.w	$a2, $zero, -8
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	alsl.d	$a1, $s4, $a0, 3
	slli.d	$a2, $s4, 3
	xvrepli.b	$xr0, 0
	xvstx	$xr0, $a0, $a2
	xvst	$xr0, $a1, 32
	st.d	$s5, $s3, %pc_lo12(_ZL19yy_buffer_stack_max)
	b	.LBB15_5
.LBB15_4:                               # %if.then.i
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	st.d	$a0, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZL19yy_buffer_stack_max)
	ori	$a2, $zero, 1
	st.d	$a2, $a1, %pc_lo12(_ZL19yy_buffer_stack_max)
	st.d	$zero, $s0, %pc_lo12(_ZL19yy_buffer_stack_top)
.LBB15_5:                               # %cond.true
	slli.d	$a1, $s1, 3
	ldx.d	$a4, $a0, $a1
	pcalau12i	$a2, %pc_hi20(_ZL10yy_n_chars)
	pcalau12i	$a3, %pc_hi20(_ZL10yy_c_buf_p)
	pcalau12i	$a1, %pc_hi20(_ZL12yy_hold_char)
	beqz	$a4, .LBB15_7
# %bb.6:                                # %if.then13
	ld.b	$a4, $a1, %pc_lo12(_ZL12yy_hold_char)
	ld.d	$a5, $a3, %pc_lo12(_ZL10yy_c_buf_p)
	alsl.d	$a6, $s1, $a0, 3
	st.b	$a4, $a5, 0
	ld.d	$a4, $a6, 0
	ld.w	$a6, $a2, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a5, $a4, 16
	st.w	$a6, $a4, 28
	addi.d	$s1, $s1, 1
	st.d	$s1, $s0, %pc_lo12(_ZL19yy_buffer_stack_top)
.LBB15_7:                               # %if.end14
	ld.w	$a4, $fp, 28
	ld.d	$a5, $fp, 16
	slli.d	$a6, $s1, 3
	stx.d	$fp, $a0, $a6
	st.w	$a4, $a2, %pc_lo12(_ZL10yy_n_chars)
	st.d	$a5, $a3, %pc_lo12(_ZL10yy_c_buf_p)
	ld.d	$a0, $fp, 0
	pcalau12i	$a2, %pc_hi20(yytext_ptr)
	st.d	$a5, $a2, %pc_lo12(yytext_ptr)
	pcalau12i	$a2, %pc_hi20(yyin)
	st.d	$a0, $a2, %pc_lo12(yyin)
	ld.b	$a0, $a5, 0
	st.b	$a0, $a1, %pc_lo12(_ZL12yy_hold_char)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB15_8:                               # %return
	ret
.Lfunc_end15:
	.size	_Z19yypush_buffer_stateP15yy_buffer_state, .Lfunc_end15-_Z19yypush_buffer_stateP15yy_buffer_state
                                        # -- End function
	.globl	_Z18yypop_buffer_statev         # -- Begin function _Z18yypop_buffer_statev
	.p2align	5
	.type	_Z18yypop_buffer_statev,@function
_Z18yypop_buffer_statev:                # @_Z18yypop_buffer_statev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$s0, $a0, %pc_lo12(_ZL15yy_buffer_stack)
	beqz	$s0, .LBB16_7
# %bb.1:                                # %cond.true
	pcalau12i	$s1, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$s2, $s1, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a0, $s2, 3
	ldx.d	$fp, $s0, $a0
	beqz	$fp, .LBB16_7
# %bb.2:                                # %if.then2.i
	ld.w	$a0, $fp, 32
	alsl.d	$s3, $s2, $s0, 3
	st.d	$zero, $s3, 0
	beqz	$a0, .LBB16_4
# %bb.3:                                # %if.then6.i
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_Z16yy_delete_bufferP15yy_buffer_state.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 0
	beqz	$s2, .LBB16_7
# %bb.5:                                # %cond.true12
	addi.d	$a1, $s2, -1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $s1, %pc_lo12(_ZL19yy_buffer_stack_top)
	beqz	$a0, .LBB16_7
# %bb.6:                                # %if.then18
	ld.w	$a1, $a0, 28
	ld.d	$a2, $a0, 16
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	st.w	$a1, $a3, %pc_lo12(_ZL10yy_n_chars)
	pcalau12i	$a1, %pc_hi20(_ZL10yy_c_buf_p)
	st.d	$a2, $a1, %pc_lo12(_ZL10yy_c_buf_p)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(yytext_ptr)
	st.d	$a2, $a1, %pc_lo12(yytext_ptr)
	pcalau12i	$a1, %pc_hi20(yyin)
	st.d	$a0, $a1, %pc_lo12(yyin)
	ld.b	$a0, $a2, 0
	pcalau12i	$a1, %pc_hi20(_ZL12yy_hold_char)
	st.b	$a0, $a1, %pc_lo12(_ZL12yy_hold_char)
.LBB16_7:                               # %if.end19
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	_Z18yypop_buffer_statev, .Lfunc_end16-_Z18yypop_buffer_statev
                                        # -- End function
	.globl	_Z14yy_scan_bufferPcj           # -- Begin function _Z14yy_scan_bufferPcj
	.p2align	5
	.type	_Z14yy_scan_bufferPcj,@function
_Z14yy_scan_bufferPcj:                  # @_Z14yy_scan_bufferPcj
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB17_3
# %bb.1:                                # %lor.lhs.false
	addi.w	$fp, $a1, -2
	bstrpick.d	$a2, $fp, 31, 0
	ldx.bu	$a2, $a0, $a2
	bnez	$a2, .LBB17_3
# %bb.2:                                # %lor.lhs.false2
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a0, $a1
	beqz	$a1, .LBB17_5
.LBB17_3:
	move	$a0, $zero
.LBB17_4:                               # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_5:                               # %if.end
	move	$s0, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_7
# %bb.6:                                # %if.end9
	st.w	$fp, $a0, 24
	st.d	$s0, $a0, 8
	st.d	$s0, $a0, 16
	st.w	$zero, $a0, 32
	st.d	$zero, $a0, 0
	st.w	$fp, $a0, 28
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 36
	st.d	$zero, $a0, 52
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z19yy_switch_to_bufferP15yy_buffer_state)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB17_4
.LBB17_7:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_Z14yy_scan_bufferPcj, .Lfunc_end17-_Z14yy_scan_bufferPcj
                                        # -- End function
	.globl	_Z14yy_scan_stringPKc           # -- Begin function _Z14yy_scan_stringPKc
	.p2align	5
	.type	_Z14yy_scan_stringPKc,@function
_Z14yy_scan_stringPKc:                  # @_Z14yy_scan_stringPKc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_Z13yy_scan_bytesPKci)
	jr	$t8
.Lfunc_end18:
	.size	_Z14yy_scan_stringPKc, .Lfunc_end18-_Z14yy_scan_stringPKc
                                        # -- End function
	.globl	_Z13yy_scan_bytesPKci           # -- Begin function _Z13yy_scan_bytesPKci
	.p2align	5
	.type	_Z13yy_scan_bytesPKci,@function
_Z13yy_scan_bytesPKci:                  # @_Z13yy_scan_bytesPKci
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$a0, $a1, 2
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_9
# %bb.1:                                # %for.cond.preheader
	move	$s0, $a0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB19_3
# %bb.2:                                # %for.end.thread
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.h	$zero, $s0, $fp
	b	.LBB19_4
.LBB19_3:                               # %for.end
	addi.w	$a0, $zero, -3
	stx.h	$zero, $s0, $fp
	bltu	$a0, $fp, .LBB19_8
.LBB19_4:                               # %lor.lhs.false.i
	bstrpick.d	$a0, $fp, 31, 0
	ldx.bu	$a0, $s0, $a0
	bnez	$a0, .LBB19_8
# %bb.5:                                # %lor.lhs.false2.i
	addi.d	$a0, $fp, 1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s0, $a0
	bnez	$a0, .LBB19_8
# %bb.6:                                # %if.end.i
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_10
# %bb.7:                                # %_Z14yy_scan_bufferPcj.exit
	st.w	$fp, $a0, 24
	st.d	$s0, $a0, 8
	st.d	$s0, $a0, 16
	st.w	$zero, $a0, 32
	st.d	$zero, $a0, 0
	st.w	$fp, $a0, 28
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 36
	st.d	$zero, $a0, 52
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z19yy_switch_to_bufferP15yy_buffer_state)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_8:                               # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.LBB19_9:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.LBB19_10:                              # %if.then8.i
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZL14yy_fatal_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_Z13yy_scan_bytesPKci, .Lfunc_end19-_Z13yy_scan_bytesPKci
                                        # -- End function
	.globl	_Z12yyget_linenov               # -- Begin function _Z12yyget_linenov
	.p2align	5
	.type	_Z12yyget_linenov,@function
_Z12yyget_linenov:                      # @_Z12yyget_linenov
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yylineno)
	ld.w	$a0, $a0, %pc_lo12(yylineno)
	ret
.Lfunc_end20:
	.size	_Z12yyget_linenov, .Lfunc_end20-_Z12yyget_linenov
                                        # -- End function
	.globl	_Z8yyget_inv                    # -- Begin function _Z8yyget_inv
	.p2align	5
	.type	_Z8yyget_inv,@function
_Z8yyget_inv:                           # @_Z8yyget_inv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yyin)
	ld.d	$a0, $a0, %pc_lo12(yyin)
	ret
.Lfunc_end21:
	.size	_Z8yyget_inv, .Lfunc_end21-_Z8yyget_inv
                                        # -- End function
	.globl	_Z9yyget_outv                   # -- Begin function _Z9yyget_outv
	.p2align	5
	.type	_Z9yyget_outv,@function
_Z9yyget_outv:                          # @_Z9yyget_outv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yyout)
	ld.d	$a0, $a0, %pc_lo12(yyout)
	ret
.Lfunc_end22:
	.size	_Z9yyget_outv, .Lfunc_end22-_Z9yyget_outv
                                        # -- End function
	.globl	_Z10yyget_lengv                 # -- Begin function _Z10yyget_lengv
	.p2align	5
	.type	_Z10yyget_lengv,@function
_Z10yyget_lengv:                        # @_Z10yyget_lengv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yyleng)
	ld.w	$a0, $a0, %pc_lo12(yyleng)
	ret
.Lfunc_end23:
	.size	_Z10yyget_lengv, .Lfunc_end23-_Z10yyget_lengv
                                        # -- End function
	.globl	_Z10yyget_textv                 # -- Begin function _Z10yyget_textv
	.p2align	5
	.type	_Z10yyget_textv,@function
_Z10yyget_textv:                        # @_Z10yyget_textv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yytext)
	addi.d	$a0, $a0, %pc_lo12(yytext)
	ret
.Lfunc_end24:
	.size	_Z10yyget_textv, .Lfunc_end24-_Z10yyget_textv
                                        # -- End function
	.globl	_Z12yyset_linenoi               # -- Begin function _Z12yyset_linenoi
	.p2align	5
	.type	_Z12yyset_linenoi,@function
_Z12yyset_linenoi:                      # @_Z12yyset_linenoi
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(yylineno)
	st.w	$a0, $a1, %pc_lo12(yylineno)
	ret
.Lfunc_end25:
	.size	_Z12yyset_linenoi, .Lfunc_end25-_Z12yyset_linenoi
                                        # -- End function
	.globl	_Z8yyset_inP8_IO_FILE           # -- Begin function _Z8yyset_inP8_IO_FILE
	.p2align	5
	.type	_Z8yyset_inP8_IO_FILE,@function
_Z8yyset_inP8_IO_FILE:                  # @_Z8yyset_inP8_IO_FILE
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(yyin)
	st.d	$a0, $a1, %pc_lo12(yyin)
	ret
.Lfunc_end26:
	.size	_Z8yyset_inP8_IO_FILE, .Lfunc_end26-_Z8yyset_inP8_IO_FILE
                                        # -- End function
	.globl	_Z9yyset_outP8_IO_FILE          # -- Begin function _Z9yyset_outP8_IO_FILE
	.p2align	5
	.type	_Z9yyset_outP8_IO_FILE,@function
_Z9yyset_outP8_IO_FILE:                 # @_Z9yyset_outP8_IO_FILE
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(yyout)
	st.d	$a0, $a1, %pc_lo12(yyout)
	ret
.Lfunc_end27:
	.size	_Z9yyset_outP8_IO_FILE, .Lfunc_end27-_Z9yyset_outP8_IO_FILE
                                        # -- End function
	.globl	_Z11yyget_debugv                # -- Begin function _Z11yyget_debugv
	.p2align	5
	.type	_Z11yyget_debugv,@function
_Z11yyget_debugv:                       # @_Z11yyget_debugv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(yy_flex_debug)
	ld.w	$a0, $a0, %pc_lo12(yy_flex_debug)
	ret
.Lfunc_end28:
	.size	_Z11yyget_debugv, .Lfunc_end28-_Z11yyget_debugv
                                        # -- End function
	.globl	_Z11yyset_debugi                # -- Begin function _Z11yyset_debugi
	.p2align	5
	.type	_Z11yyset_debugi,@function
_Z11yyset_debugi:                       # @_Z11yyset_debugi
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(yy_flex_debug)
	st.w	$a0, $a1, %pc_lo12(yy_flex_debug)
	ret
.Lfunc_end29:
	.size	_Z11yyset_debugi, .Lfunc_end29-_Z11yyset_debugi
                                        # -- End function
	.globl	_Z13yylex_destroyv              # -- Begin function _Z13yylex_destroyv
	.p2align	5
	.type	_Z13yylex_destroyv,@function
_Z13yylex_destroyv:                     # @_Z13yylex_destroyv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$fp, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	beqz	$fp, .LBB30_5
# %bb.1:                                # %cond.true.preheader
	pcalau12i	$s3, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$s2, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	slli.d	$a0, $s2, 3
	ldx.d	$s0, $fp, $a0
	beqz	$s0, .LBB30_6
# %bb.2:                                # %if.then2.i
	ld.w	$a1, $s0, 32
	stx.d	$zero, $fp, $a0
	beqz	$a1, .LBB30_4
# %bb.3:                                # %if.then6.i
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	ld.d	$s2, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
.LBB30_4:                               # %_Z18yypop_buffer_statev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 3
	stx.d	$zero, $fp, $a0
	b	.LBB30_6
.LBB30_5:
	move	$fp, $zero
.LBB30_6:                               # %while.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL12yy_state_buf)
	ld.d	$a0, $a0, %pc_lo12(_ZL12yy_state_buf)
	st.d	$zero, $s1, %pc_lo12(_ZL15yy_buffer_stack)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_Z13yylex_destroyv, .Lfunc_end30-_Z13yylex_destroyv
                                        # -- End function
	.globl	_Z9yyreallocPvj                 # -- Begin function _Z9yyreallocPvj
	.p2align	5
	.type	_Z9yyreallocPvj,@function
_Z9yyreallocPvj:                        # @_Z9yyreallocPvj
# %bb.0:                                # %entry
	bstrpick.d	$a1, $a1, 31, 0
	pcaddu18i	$t8, %call36(realloc)
	jr	$t8
.Lfunc_end31:
	.size	_Z9yyreallocPvj, .Lfunc_end31-_Z9yyreallocPvj
                                        # -- End function
	.globl	_Z9do_NORMALv                   # -- Begin function _Z9do_NORMALv
	.p2align	5
	.type	_Z9do_NORMALv,@function
_Z9do_NORMALv:                          # @_Z9do_NORMALv
	.cfi_startproc
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL8yy_start)
	ori	$a1, $zero, 3
	st.w	$a1, $a0, %pc_lo12(_ZL8yy_start)
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_115reset_nestcountEv)
	jr	$t8
.Lfunc_end32:
	.size	_Z9do_NORMALv, .Lfunc_end32-_Z9do_NORMALv
	.cfi_endproc
                                        # -- End function
	.globl	_Z8do_CEXPRv                    # -- Begin function _Z8do_CEXPRv
	.p2align	5
	.type	_Z8do_CEXPRv,@function
_Z8do_CEXPRv:                           # @_Z8do_CEXPRv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL8yy_start)
	ori	$a1, $zero, 9
	st.w	$a1, $a0, %pc_lo12(_ZL8yy_start)
	ret
.Lfunc_end33:
	.size	_Z8do_CEXPRv, .Lfunc_end33-_Z8do_CEXPRv
                                        # -- End function
	.globl	_Z10do_CEXPRDQv                 # -- Begin function _Z10do_CEXPRDQv
	.p2align	5
	.type	_Z10do_CEXPRDQv,@function
_Z10do_CEXPRDQv:                        # @_Z10do_CEXPRDQv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL8yy_start)
	ori	$a1, $zero, 11
	st.w	$a1, $a0, %pc_lo12(_ZL8yy_start)
	ret
.Lfunc_end34:
	.size	_Z10do_CEXPRDQv, .Lfunc_end34-_Z10do_CEXPRDQv
                                        # -- End function
	.globl	_Z10do_CEXPRSQv                 # -- Begin function _Z10do_CEXPRSQv
	.p2align	5
	.type	_Z10do_CEXPRSQv,@function
_Z10do_CEXPRSQv:                        # @_Z10do_CEXPRSQv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL8yy_start)
	ori	$a1, $zero, 13
	st.w	$a1, $a0, %pc_lo12(_ZL8yy_start)
	ret
.Lfunc_end35:
	.size	_Z10do_CEXPRSQv, .Lfunc_end35-_Z10do_CEXPRSQv
                                        # -- End function
	.globl	_Z4do_Cv                        # -- Begin function _Z4do_Cv
	.p2align	5
	.type	_Z4do_Cv,@function
_Z4do_Cv:                               # @_Z4do_Cv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL8yy_start)
	ori	$a1, $zero, 15
	st.w	$a1, $a0, %pc_lo12(_ZL8yy_start)
	ret
.Lfunc_end36:
	.size	_Z4do_Cv, .Lfunc_end36-_Z4do_Cv
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL7yyinputv
	.type	_ZL7yyinputv,@function
_ZL7yyinputv:                           # @_ZL7yyinputv
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
	pcalau12i	$fp, %pc_hi20(_ZL12yy_hold_char)
	ld.bu	$a0, $fp, %pc_lo12(_ZL12yy_hold_char)
	pcalau12i	$s0, %pc_hi20(_ZL10yy_c_buf_p)
	ld.d	$s1, $s0, %pc_lo12(_ZL10yy_c_buf_p)
	st.b	$a0, $s1, 0
	pcalau12i	$s2, %pc_hi20(_ZL15yy_buffer_stack)
	ld.d	$a1, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	pcalau12i	$s3, %pc_hi20(_ZL19yy_buffer_stack_top)
	ld.d	$a2, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	bnez	$a0, .LBB37_7
# %bb.1:                                # %if.then
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	pcalau12i	$a3, %pc_hi20(_ZL10yy_n_chars)
	ld.w	$a3, $a3, %pc_lo12(_ZL10yy_n_chars)
	add.d	$a0, $a0, $a3
	bgeu	$s1, $a0, .LBB37_3
# %bb.2:                                # %if.then3
	move	$a0, $zero
	st.b	$zero, $s1, 0
	b	.LBB37_7
.LBB37_3:                               # %if.else
	pcalau12i	$s5, %pc_hi20(yytext_ptr)
	ld.d	$s4, $s5, %pc_lo12(yytext_ptr)
	addi.d	$a0, $s1, 1
	st.d	$a0, $s0, %pc_lo12(_ZL10yy_c_buf_p)
	pcaddu18i	$ra, %call36(_ZL18yy_get_next_bufferv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_6
# %bb.4:                                # %if.else
	move	$a1, $a0
	ori	$a2, $zero, 1
	addi.w	$a0, $zero, -1
	beq	$a1, $a2, .LBB37_9
# %bb.5:                                # %sw.bb
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(yyin)
	ld.d	$a0, $a0, %pc_lo12(yyin)
	pcaddu18i	$ra, %call36(_Z9yyrestartP8_IO_FILE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB37_9
.LBB37_6:                               # %sw.bb6
	ld.d	$a3, $s5, %pc_lo12(yytext_ptr)
	sub.w	$a4, $s1, $s4
	ldx.bu	$a0, $a3, $a4
	ld.d	$a1, $s2, %pc_lo12(_ZL15yy_buffer_stack)
	ld.d	$a2, $s3, %pc_lo12(_ZL19yy_buffer_stack_top)
	add.d	$s1, $a3, $a4
.LBB37_7:                               # %if.end7
	st.b	$zero, $s1, 0
	addi.d	$a3, $s1, 1
	st.d	$a3, $s0, %pc_lo12(_ZL10yy_c_buf_p)
	ld.b	$a3, $s1, 1
	st.b	$a3, $fp, %pc_lo12(_ZL12yy_hold_char)
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	addi.d	$a2, $a0, -10
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 10
	st.w	$a2, $a1, 40
	bne	$a0, $a3, .LBB37_9
# %bb.8:                                # %if.then15
	pcalau12i	$a0, %pc_hi20(yylineno)
	ld.w	$a1, $a0, %pc_lo12(yylineno)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(yylineno)
	ori	$a0, $zero, 10
.LBB37_9:                               # %cleanup17
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
.Lfunc_end37:
	.size	_ZL7yyinputv, .Lfunc_end37-_ZL7yyinputv
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_kimwl.cc
	.type	_GLOBAL__sub_I_kimwl.cc,@function
_GLOBAL__sub_I_kimwl.cc:                # @_GLOBAL__sub_I_kimwl.cc
	.cfi_startproc
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	addi.d	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_18cincludeB5cxx11E)
	addi.d	$a0, $a1, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	st.d	$zero, $a1, 8
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	st.b	$zero, $a1, 16
	pcaddu18i	$t8, %call36(__cxa_atexit)
	jr	$t8
.Lfunc_end38:
	.size	_GLOBAL__sub_I_kimwl.cc, .Lfunc_end38-_GLOBAL__sub_I_kimwl.cc
	.cfi_endproc
                                        # -- End function
	.type	yyleng,@object                  # @yyleng
	.bss
	.globl	yyleng
	.p2align	2, 0x0
yyleng:
	.word	0                               # 0x0
	.size	yyleng, 4

	.type	yyin,@object                    # @yyin
	.globl	yyin
	.p2align	3, 0x0
yyin:
	.dword	0
	.size	yyin, 8

	.type	yyout,@object                   # @yyout
	.globl	yyout
	.p2align	3, 0x0
yyout:
	.dword	0
	.size	yyout, 8

	.type	yylineno,@object                # @yylineno
	.data
	.globl	yylineno
	.p2align	2, 0x0
yylineno:
	.word	1                               # 0x1
	.size	yylineno, 4

	.type	yy_flex_debug,@object           # @yy_flex_debug
	.bss
	.globl	yy_flex_debug
	.p2align	2, 0x0
yy_flex_debug:
	.word	0                               # 0x0
	.size	yy_flex_debug, 4

	.type	yytext,@object                  # @yytext
	.globl	yytext
yytext:
	.space	8192
	.size	yytext, 8192

	.type	yytext_ptr,@object              # @yytext_ptr
	.globl	yytext_ptr
	.p2align	3, 0x0
yytext_ptr:
	.dword	0
	.size	yytext_ptr, 8

	.type	_ZN12_GLOBAL__N_18cincludeB5cxx11E,@object # @_ZN12_GLOBAL__N_18cincludeB5cxx11E
	.local	_ZN12_GLOBAL__N_18cincludeB5cxx11E
	.comm	_ZN12_GLOBAL__N_18cincludeB5cxx11E,32,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.space	1
	.size	.L.str, 1

	.hidden	__dso_handle
	.type	_ZL7yy_init,@object             # @_ZL7yy_init
	.local	_ZL7yy_init
	.comm	_ZL7yy_init,1,4
	.type	_ZL12yy_state_buf,@object       # @_ZL12yy_state_buf
	.local	_ZL12yy_state_buf
	.comm	_ZL12yy_state_buf,8,8
	.type	_ZL8yy_start,@object            # @_ZL8yy_start
	.local	_ZL8yy_start
	.comm	_ZL8yy_start,4,4
	.type	_ZL15yy_buffer_stack,@object    # @_ZL15yy_buffer_stack
	.local	_ZL15yy_buffer_stack
	.comm	_ZL15yy_buffer_stack,8,8
	.type	_ZL19yy_buffer_stack_top,@object # @_ZL19yy_buffer_stack_top
	.local	_ZL19yy_buffer_stack_top
	.comm	_ZL19yy_buffer_stack_top,8,8
	.type	_ZL10yy_c_buf_p,@object         # @_ZL10yy_c_buf_p
	.local	_ZL10yy_c_buf_p
	.comm	_ZL10yy_c_buf_p,8,8
	.type	_ZL12yy_hold_char,@object       # @_ZL12yy_hold_char
	.local	_ZL12yy_hold_char
	.comm	_ZL12yy_hold_char,1,1
	.type	_ZL12yy_state_ptr,@object       # @_ZL12yy_state_ptr
	.local	_ZL12yy_state_ptr
	.comm	_ZL12yy_state_ptr,8,8
	.type	_ZL5yy_ec,@object               # @_ZL5yy_ec
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_ZL5yy_ec:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	30                              # 0x1e
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	39                              # 0x27
	.word	26                              # 0x1a
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	1                               # 0x1
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	26                              # 0x1a
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	26                              # 0x1a
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	26                              # 0x1a
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	71                              # 0x47
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	_ZL5yy_ec, 1024

	.type	_ZL6yy_chk,@object              # @_ZL6yy_chk
	.p2align	1, 0x0
_ZL6yy_chk:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	6                               # 0x6
	.half	28                              # 0x1c
	.half	91                              # 0x5b
	.half	91                              # 0x5b
	.half	28                              # 0x1c
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	9                               # 0x9
	.half	19                              # 0x13
	.half	19                              # 0x13
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	431                             # 0x1af
	.half	84                              # 0x54
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	20                              # 0x14
	.half	20                              # 0x14
	.half	9                               # 0x9
	.half	11                              # 0xb
	.half	71                              # 0x47
	.half	9                               # 0x9
	.half	11                              # 0xb
	.half	401                             # 0x191
	.half	9                               # 0x9
	.half	12                              # 0xc
	.half	84                              # 0x54
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	14                              # 0xe
	.half	30                              # 0x1e
	.half	27                              # 0x1b
	.half	32                              # 0x20
	.half	47                              # 0x2f
	.half	13                              # 0xd
	.half	30                              # 0x1e
	.half	14                              # 0xe
	.half	32                              # 0x20
	.half	47                              # 0x2f
	.half	51                              # 0x33
	.half	401                             # 0x191
	.half	51                              # 0x33
	.half	61                              # 0x3d
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	61                              # 0x3d
	.half	347                             # 0x15b
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	71                              # 0x47
	.half	426                             # 0x1aa
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	425                             # 0x1a9
	.half	11                              # 0xb
	.half	10                              # 0xa
	.half	347                             # 0x15b
	.half	87                              # 0x57
	.half	10                              # 0xa
	.half	19                              # 0x13
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	13                              # 0xd
	.half	19                              # 0x13
	.half	14                              # 0xe
	.half	76                              # 0x4c
	.half	87                              # 0x57
	.half	19                              # 0x13
	.half	20                              # 0x14
	.half	19                              # 0x13
	.half	76                              # 0x4c
	.half	423                             # 0x1a7
	.half	20                              # 0x14
	.half	80                              # 0x50
	.half	80                              # 0x50
	.half	80                              # 0x50
	.half	20                              # 0x14
	.half	27                              # 0x1b
	.half	20                              # 0x14
	.half	27                              # 0x1b
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	17                              # 0x11
	.half	48                              # 0x30
	.half	48                              # 0x30
	.half	48                              # 0x30
	.half	48                              # 0x30
	.half	68                              # 0x44
	.half	73                              # 0x49
	.half	73                              # 0x49
	.half	73                              # 0x49
	.half	93                              # 0x5d
	.half	93                              # 0x5d
	.half	48                              # 0x30
	.half	48                              # 0x30
	.half	75                              # 0x4b
	.half	48                              # 0x30
	.half	99                              # 0x63
	.half	48                              # 0x30
	.half	48                              # 0x30
	.half	162                             # 0xa2
	.half	48                              # 0x30
	.half	74                              # 0x4a
	.half	74                              # 0x4a
	.half	74                              # 0x4a
	.half	89                              # 0x59
	.half	48                              # 0x30
	.half	75                              # 0x4b
	.half	81                              # 0x51
	.half	81                              # 0x51
	.half	81                              # 0x51
	.half	420                             # 0x1a4
	.half	89                              # 0x59
	.half	89                              # 0x59
	.half	144                             # 0x90
	.half	144                             # 0x90
	.half	155                             # 0x9b
	.half	155                             # 0x9b
	.half	155                             # 0x9b
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	68                              # 0x44
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	370                             # 0x172
	.half	162                             # 0xa2
	.half	208                             # 0xd0
	.half	208                             # 0xd0
	.half	162                             # 0xa2
	.half	73                              # 0x49
	.half	412                             # 0x19c
	.half	211                             # 0xd3
	.half	162                             # 0xa2
	.half	218                             # 0xda
	.half	419                             # 0x1a3
	.half	370                             # 0x172
	.half	418                             # 0x1a2
	.half	421                             # 0x1a5
	.half	218                             # 0xda
	.half	422                             # 0x1a6
	.half	430                             # 0x1ae
	.half	99                              # 0x63
	.half	413                             # 0x19d
	.half	74                              # 0x4a
	.half	417                             # 0x1a1
	.half	218                             # 0xda
	.half	218                             # 0xda
	.half	412                             # 0x19c
	.half	421                             # 0x1a5
	.half	218                             # 0xda
	.half	422                             # 0x1a6
	.half	430                             # 0x1ae
	.half	415                             # 0x19f
	.half	413                             # 0x19d
	.half	75                              # 0x4b
	.half	414                             # 0x19e
	.half	75                              # 0x4b
	.half	155                             # 0x9b
	.half	211                             # 0xd3
	.half	413                             # 0x19d
	.half	156                             # 0x9c
	.half	211                             # 0xd3
	.half	411                             # 0x19b
	.half	410                             # 0x19a
	.half	409                             # 0x199
	.half	211                             # 0xd3
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	408                             # 0x198
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	407                             # 0x197
	.half	404                             # 0x194
	.half	403                             # 0x193
	.half	402                             # 0x192
	.half	400                             # 0x190
	.half	399                             # 0x18f
	.half	398                             # 0x18e
	.half	397                             # 0x18d
	.half	396                             # 0x18c
	.half	395                             # 0x18b
	.half	394                             # 0x18a
	.half	393                             # 0x189
	.half	392                             # 0x188
	.half	391                             # 0x187
	.half	390                             # 0x186
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	389                             # 0x185
	.half	387                             # 0x183
	.half	386                             # 0x182
	.half	382                             # 0x17e
	.half	381                             # 0x17d
	.half	380                             # 0x17c
	.half	379                             # 0x17b
	.half	378                             # 0x17a
	.half	377                             # 0x179
	.half	374                             # 0x176
	.half	373                             # 0x175
	.half	372                             # 0x174
	.half	371                             # 0x173
	.half	369                             # 0x171
	.half	368                             # 0x170
	.half	367                             # 0x16f
	.half	361                             # 0x169
	.half	360                             # 0x168
	.half	358                             # 0x166
	.half	357                             # 0x165
	.half	356                             # 0x164
	.half	355                             # 0x163
	.half	354                             # 0x162
	.half	353                             # 0x161
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	424                             # 0x1a8
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	445                             # 0x1bd
	.half	445                             # 0x1bd
	.half	446                             # 0x1be
	.half	352                             # 0x160
	.half	351                             # 0x15f
	.half	350                             # 0x15e
	.half	349                             # 0x15d
	.half	348                             # 0x15c
	.half	446                             # 0x1be
	.half	446                             # 0x1be
	.half	446                             # 0x1be
	.half	447                             # 0x1bf
	.half	346                             # 0x15a
	.half	345                             # 0x159
	.half	447                             # 0x1bf
	.half	447                             # 0x1bf
	.half	447                             # 0x1bf
	.half	447                             # 0x1bf
	.half	447                             # 0x1bf
	.half	447                             # 0x1bf
	.half	448                             # 0x1c0
	.half	342                             # 0x156
	.half	448                             # 0x1c0
	.half	448                             # 0x1c0
	.half	341                             # 0x155
	.half	448                             # 0x1c0
	.half	448                             # 0x1c0
	.half	448                             # 0x1c0
	.half	448                             # 0x1c0
	.half	449                             # 0x1c1
	.half	339                             # 0x153
	.half	337                             # 0x151
	.half	336                             # 0x150
	.half	335                             # 0x14f
	.half	449                             # 0x1c1
	.half	333                             # 0x14d
	.half	449                             # 0x1c1
	.half	450                             # 0x1c2
	.half	450                             # 0x1c2
	.half	451                             # 0x1c3
	.half	451                             # 0x1c3
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	452                             # 0x1c4
	.half	332                             # 0x14c
	.half	331                             # 0x14b
	.half	330                             # 0x14a
	.half	329                             # 0x149
	.half	328                             # 0x148
	.half	327                             # 0x147
	.half	326                             # 0x146
	.half	325                             # 0x145
	.half	324                             # 0x144
	.half	323                             # 0x143
	.half	322                             # 0x142
	.half	321                             # 0x141
	.half	320                             # 0x140
	.half	319                             # 0x13f
	.half	318                             # 0x13e
	.half	317                             # 0x13d
	.half	316                             # 0x13c
	.half	315                             # 0x13b
	.half	314                             # 0x13a
	.half	313                             # 0x139
	.half	312                             # 0x138
	.half	311                             # 0x137
	.half	310                             # 0x136
	.half	309                             # 0x135
	.half	308                             # 0x134
	.half	306                             # 0x132
	.half	305                             # 0x131
	.half	304                             # 0x130
	.half	302                             # 0x12e
	.half	301                             # 0x12d
	.half	300                             # 0x12c
	.half	299                             # 0x12b
	.half	298                             # 0x12a
	.half	297                             # 0x129
	.half	296                             # 0x128
	.half	295                             # 0x127
	.half	294                             # 0x126
	.half	293                             # 0x125
	.half	292                             # 0x124
	.half	290                             # 0x122
	.half	289                             # 0x121
	.half	288                             # 0x120
	.half	287                             # 0x11f
	.half	286                             # 0x11e
	.half	285                             # 0x11d
	.half	284                             # 0x11c
	.half	283                             # 0x11b
	.half	282                             # 0x11a
	.half	281                             # 0x119
	.half	280                             # 0x118
	.half	279                             # 0x117
	.half	274                             # 0x112
	.half	273                             # 0x111
	.half	272                             # 0x110
	.half	271                             # 0x10f
	.half	270                             # 0x10e
	.half	269                             # 0x10d
	.half	268                             # 0x10c
	.half	267                             # 0x10b
	.half	266                             # 0x10a
	.half	265                             # 0x109
	.half	263                             # 0x107
	.half	262                             # 0x106
	.half	261                             # 0x105
	.half	260                             # 0x104
	.half	259                             # 0x103
	.half	258                             # 0x102
	.half	257                             # 0x101
	.half	256                             # 0x100
	.half	255                             # 0xff
	.half	254                             # 0xfe
	.half	253                             # 0xfd
	.half	252                             # 0xfc
	.half	251                             # 0xfb
	.half	250                             # 0xfa
	.half	249                             # 0xf9
	.half	248                             # 0xf8
	.half	247                             # 0xf7
	.half	246                             # 0xf6
	.half	245                             # 0xf5
	.half	244                             # 0xf4
	.half	243                             # 0xf3
	.half	242                             # 0xf2
	.half	241                             # 0xf1
	.half	240                             # 0xf0
	.half	239                             # 0xef
	.half	238                             # 0xee
	.half	237                             # 0xed
	.half	236                             # 0xec
	.half	235                             # 0xeb
	.half	234                             # 0xea
	.half	233                             # 0xe9
	.half	232                             # 0xe8
	.half	231                             # 0xe7
	.half	230                             # 0xe6
	.half	229                             # 0xe5
	.half	227                             # 0xe3
	.half	226                             # 0xe2
	.half	225                             # 0xe1
	.half	223                             # 0xdf
	.half	222                             # 0xde
	.half	221                             # 0xdd
	.half	220                             # 0xdc
	.half	219                             # 0xdb
	.half	217                             # 0xd9
	.half	216                             # 0xd8
	.half	215                             # 0xd7
	.half	214                             # 0xd6
	.half	213                             # 0xd5
	.half	212                             # 0xd4
	.half	210                             # 0xd2
	.half	207                             # 0xcf
	.half	206                             # 0xce
	.half	205                             # 0xcd
	.half	204                             # 0xcc
	.half	203                             # 0xcb
	.half	202                             # 0xca
	.half	201                             # 0xc9
	.half	200                             # 0xc8
	.half	199                             # 0xc7
	.half	198                             # 0xc6
	.half	197                             # 0xc5
	.half	196                             # 0xc4
	.half	195                             # 0xc3
	.half	194                             # 0xc2
	.half	193                             # 0xc1
	.half	192                             # 0xc0
	.half	191                             # 0xbf
	.half	190                             # 0xbe
	.half	189                             # 0xbd
	.half	188                             # 0xbc
	.half	187                             # 0xbb
	.half	186                             # 0xba
	.half	185                             # 0xb9
	.half	184                             # 0xb8
	.half	183                             # 0xb7
	.half	181                             # 0xb5
	.half	180                             # 0xb4
	.half	179                             # 0xb3
	.half	178                             # 0xb2
	.half	177                             # 0xb1
	.half	176                             # 0xb0
	.half	175                             # 0xaf
	.half	174                             # 0xae
	.half	173                             # 0xad
	.half	171                             # 0xab
	.half	170                             # 0xaa
	.half	169                             # 0xa9
	.half	166                             # 0xa6
	.half	159                             # 0x9f
	.half	157                             # 0x9d
	.half	143                             # 0x8f
	.half	142                             # 0x8e
	.half	141                             # 0x8d
	.half	140                             # 0x8c
	.half	139                             # 0x8b
	.half	138                             # 0x8a
	.half	137                             # 0x89
	.half	136                             # 0x88
	.half	135                             # 0x87
	.half	134                             # 0x86
	.half	133                             # 0x85
	.half	132                             # 0x84
	.half	131                             # 0x83
	.half	130                             # 0x82
	.half	129                             # 0x81
	.half	128                             # 0x80
	.half	127                             # 0x7f
	.half	126                             # 0x7e
	.half	125                             # 0x7d
	.half	124                             # 0x7c
	.half	123                             # 0x7b
	.half	122                             # 0x7a
	.half	121                             # 0x79
	.half	120                             # 0x78
	.half	119                             # 0x77
	.half	114                             # 0x72
	.half	112                             # 0x70
	.half	111                             # 0x6f
	.half	110                             # 0x6e
	.half	107                             # 0x6b
	.half	106                             # 0x6a
	.half	105                             # 0x69
	.half	104                             # 0x68
	.half	103                             # 0x67
	.half	101                             # 0x65
	.half	98                              # 0x62
	.half	97                              # 0x61
	.half	96                              # 0x60
	.half	95                              # 0x5f
	.half	92                              # 0x5c
	.half	90                              # 0x5a
	.half	86                              # 0x56
	.half	85                              # 0x55
	.half	83                              # 0x53
	.half	82                              # 0x52
	.half	79                              # 0x4f
	.half	78                              # 0x4e
	.half	64                              # 0x40
	.half	57                              # 0x39
	.half	46                              # 0x2e
	.half	45                              # 0x2d
	.half	44                              # 0x2c
	.half	43                              # 0x2b
	.half	42                              # 0x2a
	.half	41                              # 0x29
	.half	40                              # 0x28
	.half	39                              # 0x27
	.half	38                              # 0x26
	.half	37                              # 0x25
	.half	36                              # 0x24
	.half	34                              # 0x22
	.half	33                              # 0x21
	.half	31                              # 0x1f
	.half	21                              # 0x15
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.size	_ZL6yy_chk, 1844

	.type	_ZL7yy_base,@object             # @_ZL7yy_base
	.p2align	1, 0x0
_ZL7yy_base:
	.half	0                               # 0x0
	.half	846                             # 0x34e
	.half	845                             # 0x34d
	.half	0                               # 0x0
	.half	839                             # 0x347
	.half	843                             # 0x34b
	.half	69                              # 0x45
	.half	77                              # 0x4d
	.half	0                               # 0x0
	.half	146                             # 0x92
	.half	186                             # 0xba
	.half	159                             # 0x9f
	.half	165                             # 0xa5
	.half	167                             # 0xa7
	.half	169                             # 0xa9
	.half	228                             # 0xe4
	.half	0                               # 0x0
	.half	299                             # 0x12b
	.half	0                               # 0x0
	.half	148                             # 0x94
	.half	157                             # 0x9d
	.half	845                             # 0x34d
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	155                             # 0x9b
	.half	13                              # 0xd
	.half	850                             # 0x352
	.half	154                             # 0x9a
	.half	827                             # 0x33b
	.half	162                             # 0xa2
	.half	824                             # 0x338
	.half	822                             # 0x336
	.half	0                               # 0x0
	.half	778                             # 0x30a
	.half	782                             # 0x30e
	.half	790                             # 0x316
	.half	772                             # 0x304
	.half	784                             # 0x310
	.half	777                             # 0x309
	.half	775                             # 0x307
	.half	785                             # 0x311
	.half	771                             # 0x303
	.half	765                             # 0x2fd
	.half	774                             # 0x306
	.half	123                             # 0x7b
	.half	326                             # 0x146
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	114                             # 0x72
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	811                             # 0x32b
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	172                             # 0xac
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	788                             # 0x314
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	369                             # 0x171
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	153                             # 0x99
	.half	0                               # 0x0
	.half	374                             # 0x176
	.half	388                             # 0x184
	.half	376                             # 0x178
	.half	198                             # 0xc6
	.half	0                               # 0x0
	.half	787                             # 0x313
	.half	777                             # 0x309
	.half	217                             # 0xd9
	.half	394                             # 0x18a
	.half	803                             # 0x323
	.half	802                             # 0x322
	.half	146                             # 0x92
	.half	812                             # 0x32c
	.half	800                             # 0x320
	.half	189                             # 0xbd
	.half	850                             # 0x352
	.half	377                             # 0x179
	.half	799                             # 0x31f
	.half	52                              # 0x34
	.half	798                             # 0x31e
	.half	356                             # 0x164
	.half	0                               # 0x0
	.half	778                             # 0x30a
	.half	796                             # 0x31c
	.half	769                             # 0x301
	.half	768                             # 0x300
	.half	362                             # 0x16a
	.half	850                             # 0x352
	.half	814                             # 0x32e
	.half	850                             # 0x352
	.half	757                             # 0x2f5
	.half	758                             # 0x2f6
	.half	764                             # 0x2fc
	.half	745                             # 0x2e9
	.half	792                             # 0x318
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	746                             # 0x2ea
	.half	745                             # 0x2e9
	.half	789                             # 0x315
	.half	850                             # 0x352
	.half	790                             # 0x316
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	744                             # 0x2e8
	.half	748                             # 0x2ec
	.half	754                             # 0x2f2
	.half	741                             # 0x2e5
	.half	741                             # 0x2e5
	.half	752                             # 0x2f0
	.half	742                             # 0x2e6
	.half	748                             # 0x2ec
	.half	753                             # 0x2f1
	.half	738                             # 0x2e2
	.half	735                             # 0x2df
	.half	735                             # 0x2df
	.half	739                             # 0x2e3
	.half	731                             # 0x2db
	.half	747                             # 0x2eb
	.half	729                             # 0x2d9
	.half	728                             # 0x2d8
	.half	744                             # 0x2e8
	.half	739                             # 0x2e3
	.half	728                             # 0x2d8
	.half	722                             # 0x2d2
	.half	723                             # 0x2d3
	.half	720                             # 0x2d0
	.half	781                             # 0x30d
	.half	780                             # 0x30c
	.half	400                             # 0x190
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	402                             # 0x192
	.half	405                             # 0x195
	.half	731                             # 0x2db
	.half	850                             # 0x352
	.half	761                             # 0x2f9
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	386                             # 0x182
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	850                             # 0x352
	.half	717                             # 0x2cd
	.half	409                             # 0x199
	.half	850                             # 0x352
	.half	765                             # 0x2fd
	.half	754                             # 0x2f2
	.half	753                             # 0x2f1
	.half	0                               # 0x0
	.half	720                             # 0x2d0
	.half	709                             # 0x2c5
	.half	771                             # 0x303
	.half	756                             # 0x2f4
	.half	726                             # 0x2d6
	.half	725                             # 0x2d5
	.half	708                             # 0x2c4
	.half	715                             # 0x2cb
	.half	714                             # 0x2ca
	.half	850                             # 0x352
	.half	708                             # 0x2c4
	.half	704                             # 0x2c0
	.half	719                             # 0x2cf
	.half	714                             # 0x2ca
	.half	700                             # 0x2bc
	.half	701                             # 0x2bd
	.half	696                             # 0x2b8
	.half	706                             # 0x2c2
	.half	696                             # 0x2b8
	.half	708                             # 0x2c4
	.half	703                             # 0x2bf
	.half	693                             # 0x2b5
	.half	709                             # 0x2c5
	.half	691                             # 0x2b3
	.half	691                             # 0x2b3
	.half	693                             # 0x2b5
	.half	692                             # 0x2b4
	.half	692                             # 0x2b4
	.half	692                             # 0x2b4
	.half	685                             # 0x2ad
	.half	693                             # 0x2b5
	.half	687                             # 0x2af
	.half	691                             # 0x2b3
	.half	741                             # 0x2e5
	.half	740                             # 0x2e4
	.half	414                             # 0x19e
	.half	850                             # 0x352
	.half	679                             # 0x2a7
	.half	419                             # 0x1a3
	.half	709                             # 0x2c5
	.half	706                             # 0x2c2
	.half	700                             # 0x2bc
	.half	688                             # 0x2b0
	.half	687                             # 0x2af
	.half	695                             # 0x2b7
	.half	376                             # 0x178
	.half	674                             # 0x2a2
	.half	679                             # 0x2a7
	.half	670                             # 0x29e
	.half	682                             # 0x2aa
	.half	681                             # 0x2a9
	.half	0                               # 0x0
	.half	667                             # 0x29b
	.half	665                             # 0x299
	.half	667                             # 0x29b
	.half	0                               # 0x0
	.half	681                             # 0x2a9
	.half	672                             # 0x2a0
	.half	663                             # 0x297
	.half	670                             # 0x29e
	.half	674                             # 0x2a2
	.half	670                             # 0x29e
	.half	657                             # 0x291
	.half	657                             # 0x291
	.half	658                             # 0x292
	.half	668                             # 0x29c
	.half	656                             # 0x290
	.half	655                             # 0x28f
	.half	663                             # 0x297
	.half	667                             # 0x29b
	.half	659                             # 0x293
	.half	662                             # 0x296
	.half	650                             # 0x28a
	.half	660                             # 0x294
	.half	659                             # 0x293
	.half	673                             # 0x2a1
	.half	669                             # 0x29d
	.half	671                             # 0x29f
	.half	644                             # 0x284
	.half	641                             # 0x281
	.half	660                             # 0x294
	.half	640                             # 0x280
	.half	655                             # 0x28f
	.half	639                             # 0x27f
	.half	649                             # 0x289
	.half	640                             # 0x280
	.half	634                             # 0x27a
	.half	679                             # 0x2a7
	.half	627                             # 0x273
	.half	628                             # 0x274
	.half	627                             # 0x273
	.half	0                               # 0x0
	.half	636                             # 0x27c
	.half	633                             # 0x279
	.half	627                             # 0x273
	.half	640                             # 0x280
	.half	625                             # 0x271
	.half	639                             # 0x27f
	.half	636                             # 0x27c
	.half	627                             # 0x273
	.half	638                             # 0x27e
	.half	629                             # 0x275
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	618                             # 0x26a
	.half	631                             # 0x277
	.half	621                             # 0x26d
	.half	613                             # 0x265
	.half	632                             # 0x278
	.half	611                             # 0x263
	.half	615                             # 0x267
	.half	637                             # 0x27d
	.half	638                             # 0x27e
	.half	638                             # 0x27e
	.half	621                             # 0x26d
	.half	621                             # 0x26d
	.half	850                             # 0x352
	.half	618                             # 0x26a
	.half	607                             # 0x25f
	.half	614                             # 0x266
	.half	601                             # 0x259
	.half	606                             # 0x25e
	.half	648                             # 0x288
	.half	604                             # 0x25c
	.half	603                             # 0x25b
	.half	597                             # 0x255
	.half	596                             # 0x254
	.half	597                             # 0x255
	.half	0                               # 0x0
	.half	600                             # 0x258
	.half	608                             # 0x260
	.half	607                             # 0x25f
	.half	0                               # 0x0
	.half	605                             # 0x25d
	.half	605                             # 0x25d
	.half	598                             # 0x256
	.half	597                             # 0x255
	.half	606                             # 0x25e
	.half	590                             # 0x24e
	.half	592                             # 0x250
	.half	584                             # 0x248
	.half	596                             # 0x254
	.half	582                             # 0x246
	.half	595                             # 0x253
	.half	605                             # 0x25d
	.half	614                             # 0x266
	.half	607                             # 0x25f
	.half	583                             # 0x247
	.half	600                             # 0x258
	.half	586                             # 0x24a
	.half	586                             # 0x24a
	.half	580                             # 0x244
	.half	576                             # 0x240
	.half	590                             # 0x24e
	.half	575                             # 0x23f
	.half	575                             # 0x23f
	.half	583                             # 0x247
	.half	586                             # 0x24a
	.half	573                             # 0x23d
	.half	0                               # 0x0
	.half	556                             # 0x22c
	.half	567                             # 0x237
	.half	554                             # 0x22a
	.half	0                               # 0x0
	.half	565                             # 0x235
	.half	0                               # 0x0
	.half	558                             # 0x22e
	.half	553                             # 0x229
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	547                             # 0x223
	.half	537                             # 0x219
	.half	189                             # 0xbd
	.half	565                             # 0x235
	.half	560                             # 0x230
	.half	528                             # 0x210
	.half	545                             # 0x221
	.half	528                             # 0x210
	.half	460                             # 0x1cc
	.half	459                             # 0x1cb
	.half	467                             # 0x1d3
	.half	459                             # 0x1cb
	.half	460                             # 0x1cc
	.half	464                             # 0x1d0
	.half	850                             # 0x352
	.half	456                             # 0x1c8
	.half	455                             # 0x1c7
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	465                             # 0x1d1
	.half	466                             # 0x1d2
	.half	452                             # 0x1c4
	.half	412                             # 0x19c
	.half	493                             # 0x1ed
	.half	483                             # 0x1e3
	.half	473                             # 0x1d9
	.half	459                             # 0x1cb
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	462                             # 0x1ce
	.half	458                             # 0x1ca
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	450                             # 0x1c2
	.half	445                             # 0x1bd
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	446                             # 0x1be
	.half	451                             # 0x1c3
	.half	850                             # 0x352
	.half	469                             # 0x1d5
	.half	458                             # 0x1ca
	.half	448                             # 0x1c0
	.half	446                             # 0x1be
	.half	433                             # 0x1b1
	.half	441                             # 0x1b9
	.half	440                             # 0x1b8
	.half	431                             # 0x1af
	.half	425                             # 0x1a9
	.half	441                             # 0x1b9
	.half	440                             # 0x1b8
	.half	455                             # 0x1c7
	.half	164                             # 0xa4
	.half	436                             # 0x1b4
	.half	427                             # 0x1ab
	.half	419                             # 0x1a3
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	418                             # 0x1a2
	.half	425                             # 0x1a9
	.half	393                             # 0x189
	.half	406                             # 0x196
	.half	424                             # 0x1a8
	.half	418                             # 0x1a2
	.half	430                             # 0x1ae
	.half	393                             # 0x189
	.half	393                             # 0x189
	.half	850                             # 0x352
	.half	385                             # 0x181
	.half	366                             # 0x16e
	.half	363                             # 0x16b
	.half	347                             # 0x15b
	.half	425                             # 0x1a9
	.half	427                             # 0x1ab
	.half	199                             # 0xc7
	.half	455                             # 0x1c7
	.half	138                             # 0x8a
	.half	135                             # 0x87
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	0                               # 0x0
	.half	428                             # 0x1ac
	.half	136                             # 0x88
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	850                             # 0x352
	.half	526                             # 0x20e
	.half	535                             # 0x217
	.half	544                             # 0x220
	.half	553                             # 0x229
	.half	562                             # 0x232
	.half	571                             # 0x23b
	.half	573                             # 0x23d
	.half	575                             # 0x23f
	.half	584                             # 0x248
	.half	593                             # 0x251
	.half	602                             # 0x25a
	.half	611                             # 0x263
	.half	612                             # 0x264
	.half	614                             # 0x266
	.half	623                             # 0x26f
	.size	_ZL7yy_base, 906

	.type	_ZL6yy_def,@object              # @_ZL6yy_def
	.p2align	1, 0x0
_ZL6yy_def:
	.half	0                               # 0x0
	.half	438                             # 0x1b6
	.half	438                             # 0x1b6
	.half	437                             # 0x1b5
	.half	3                               # 0x3
	.half	439                             # 0x1b7
	.half	439                             # 0x1b7
	.half	437                             # 0x1b5
	.half	7                               # 0x7
	.half	440                             # 0x1b8
	.half	440                             # 0x1b8
	.half	441                             # 0x1b9
	.half	441                             # 0x1b9
	.half	442                             # 0x1ba
	.half	442                             # 0x1ba
	.half	437                             # 0x1b5
	.half	15                              # 0xf
	.half	437                             # 0x1b5
	.half	17                              # 0x11
	.half	443                             # 0x1bb
	.half	443                             # 0x1bb
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	445                             # 0x1bd
	.half	446                             # 0x1be
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	446                             # 0x1be
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	447                             # 0x1bf
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	448                             # 0x1c0
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	449                             # 0x1c1
	.half	449                             # 0x1c1
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	451                             # 0x1c3
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	445                             # 0x1bd
	.half	446                             # 0x1be
	.half	446                             # 0x1be
	.half	446                             # 0x1be
	.half	437                             # 0x1b5
	.half	447                             # 0x1bf
	.half	437                             # 0x1b5
	.half	448                             # 0x1c0
	.half	437                             # 0x1b5
	.half	449                             # 0x1c1
	.half	449                             # 0x1c1
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	451                             # 0x1c3
	.half	451                             # 0x1c3
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	451                             # 0x1c3
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	451                             # 0x1c3
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	444                             # 0x1bc
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	450                             # 0x1c2
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	452                             # 0x1c4
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	0                               # 0x0
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.size	_ZL6yy_def, 906

	.type	_ZL7yy_meta,@object             # @_ZL7yy_meta
	.p2align	2, 0x0
_ZL7yy_meta:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	1                               # 0x1
	.size	_ZL7yy_meta, 288

	.type	_ZL6yy_nxt,@object              # @_ZL6yy_nxt
	.p2align	1, 0x0
_ZL6yy_nxt:
	.half	0                               # 0x0
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	24                              # 0x18
	.half	22                              # 0x16
	.half	26                              # 0x1a
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	22                              # 0x16
	.half	29                              # 0x1d
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	30                              # 0x1e
	.half	31                              # 0x1f
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	34                              # 0x22
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	35                              # 0x23
	.half	36                              # 0x24
	.half	35                              # 0x23
	.half	37                              # 0x25
	.half	38                              # 0x26
	.half	39                              # 0x27
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	40                              # 0x28
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	41                              # 0x29
	.half	42                              # 0x2a
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	45                              # 0x2d
	.half	46                              # 0x2e
	.half	47                              # 0x2f
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	35                              # 0x23
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	50                              # 0x32
	.half	110                             # 0x6e
	.half	170                             # 0xaa
	.half	168                             # 0xa8
	.half	111                             # 0x6f
	.half	51                              # 0x33
	.half	22                              # 0x16
	.half	52                              # 0x34
	.half	53                              # 0x35
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	32                              # 0x20
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	54                              # 0x36
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	56                              # 0x38
	.half	101                             # 0x65
	.half	102                             # 0x66
	.half	26                              # 0x1a
	.half	57                              # 0x39
	.half	436                             # 0x1b4
	.half	168                             # 0xa8
	.half	29                              # 0x1d
	.half	58                              # 0x3a
	.half	59                              # 0x3b
	.half	101                             # 0x65
	.half	102                             # 0x66
	.half	60                              # 0x3c
	.half	56                              # 0x38
	.half	153                             # 0x99
	.half	61                              # 0x3d
	.half	67                              # 0x43
	.half	412                             # 0x19c
	.half	62                              # 0x3e
	.half	56                              # 0x38
	.half	168                             # 0xa8
	.half	56                              # 0x38
	.half	67                              # 0x43
	.half	56                              # 0x38
	.half	112                             # 0x70
	.half	107                             # 0x6b
	.half	115                             # 0x73
	.half	130                             # 0x82
	.half	70                              # 0x46
	.half	113                             # 0x71
	.half	70                              # 0x46
	.half	116                             # 0x74
	.half	131                             # 0x83
	.half	143                             # 0x8f
	.half	413                             # 0x19d
	.half	144                             # 0x90
	.half	147                             # 0x93
	.half	63                              # 0x3f
	.half	64                              # 0x40
	.half	65                              # 0x41
	.half	56                              # 0x38
	.half	148                             # 0x94
	.half	370                             # 0x172
	.half	26                              # 0x1a
	.half	57                              # 0x39
	.half	149                             # 0x95
	.half	435                             # 0x1b3
	.half	29                              # 0x1d
	.half	58                              # 0x3a
	.half	59                              # 0x3b
	.half	434                             # 0x1b2
	.half	68                              # 0x44
	.half	60                              # 0x3c
	.half	371                             # 0x173
	.half	168                             # 0xa8
	.half	61                              # 0x3d
	.half	103                             # 0x67
	.half	68                              # 0x44
	.half	62                              # 0x3e
	.half	71                              # 0x47
	.half	104                             # 0x68
	.half	71                              # 0x47
	.half	162                             # 0xa2
	.half	168                             # 0xa8
	.half	105                             # 0x69
	.half	103                             # 0x67
	.half	106                             # 0x6a
	.half	163                             # 0xa3
	.half	432                             # 0x1b0
	.half	104                             # 0x68
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	105                             # 0x69
	.half	108                             # 0x6c
	.half	106                             # 0x6a
	.half	109                             # 0x6d
	.half	63                              # 0x3f
	.half	64                              # 0x40
	.half	65                              # 0x41
	.half	72                              # 0x48
	.half	73                              # 0x49
	.half	74                              # 0x4a
	.half	73                              # 0x49
	.half	72                              # 0x48
	.half	26                              # 0x1a
	.half	75                              # 0x4b
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	29                              # 0x1d
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	76                              # 0x4c
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	72                              # 0x48
	.half	78                              # 0x4e
	.half	72                              # 0x48
	.half	72                              # 0x48
	.half	77                              # 0x4d
	.half	79                              # 0x4f
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	77                              # 0x4d
	.half	22                              # 0x16
	.half	72                              # 0x48
	.half	22                              # 0x16
	.half	72                              # 0x48
	.half	22                              # 0x16
	.half	80                              # 0x50
	.half	81                              # 0x51
	.half	80                              # 0x50
	.half	82                              # 0x52
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	83                              # 0x53
	.half	84                              # 0x54
	.half	22                              # 0x16
	.half	85                              # 0x55
	.half	22                              # 0x16
	.half	86                              # 0x56
	.half	87                              # 0x57
	.half	88                              # 0x58
	.half	89                              # 0x59
	.half	22                              # 0x16
	.half	90                              # 0x5a
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	91                              # 0x5b
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	95                              # 0x5f
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	96                              # 0x60
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	97                              # 0x61
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	98                              # 0x62
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	94                              # 0x5e
	.half	22                              # 0x16
	.half	99                              # 0x63
	.half	22                              # 0x16
	.half	88                              # 0x58
	.half	132                             # 0x84
	.half	133                             # 0x85
	.half	134                             # 0x86
	.half	135                             # 0x87
	.half	151                             # 0x97
	.half	155                             # 0x9b
	.half	156                             # 0x9c
	.half	155                             # 0x9b
	.half	168                             # 0xa8
	.half	171                             # 0xab
	.half	136                             # 0x88
	.half	137                             # 0x89
	.half	158                             # 0x9e
	.half	138                             # 0x8a
	.half	168                             # 0xa8
	.half	139                             # 0x8b
	.half	140                             # 0x8c
	.half	211                             # 0xd3
	.half	141                             # 0x8d
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	168                             # 0xa8
	.half	142                             # 0x8e
	.half	159                             # 0x9f
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	429                             # 0x1ad
	.half	168                             # 0xa8
	.half	169                             # 0xa9
	.half	208                             # 0xd0
	.half	209                             # 0xd1
	.half	155                             # 0x9b
	.half	156                             # 0x9c
	.half	155                             # 0x9b
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	156                             # 0x9c
	.half	149                             # 0x95
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	167                             # 0xa7
	.half	370                             # 0x172
	.half	212                             # 0xd4
	.half	208                             # 0xd0
	.half	209                             # 0xd1
	.half	213                             # 0xd5
	.half	157                             # 0x9d
	.half	412                             # 0x19c
	.half	211                             # 0xd3
	.half	214                             # 0xd6
	.half	254                             # 0xfe
	.half	428                             # 0x1ac
	.half	371                             # 0x173
	.half	427                             # 0x1ab
	.half	430                             # 0x1ae
	.half	255                             # 0xff
	.half	422                             # 0x1a6
	.half	430                             # 0x1ae
	.half	168                             # 0xa8
	.half	422                             # 0x1a6
	.half	157                             # 0x9d
	.half	426                             # 0x1aa
	.half	256                             # 0x100
	.half	257                             # 0x101
	.half	413                             # 0x19d
	.half	431                             # 0x1af
	.half	258                             # 0x102
	.half	423                             # 0x1a7
	.half	431                             # 0x1af
	.half	425                             # 0x1a9
	.half	423                             # 0x1a7
	.half	160                             # 0xa0
	.half	424                             # 0x1a8
	.half	161                             # 0xa1
	.half	157                             # 0x9d
	.half	212                             # 0xd4
	.half	413                             # 0x19d
	.half	157                             # 0x9d
	.half	213                             # 0xd5
	.half	421                             # 0x1a5
	.half	420                             # 0x1a4
	.half	419                             # 0x1a3
	.half	214                             # 0xd6
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	418                             # 0x1a2
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	417                             # 0x1a1
	.half	416                             # 0x1a0
	.half	415                             # 0x19f
	.half	414                             # 0x19e
	.half	411                             # 0x19b
	.half	410                             # 0x19a
	.half	409                             # 0x199
	.half	408                             # 0x198
	.half	407                             # 0x197
	.half	406                             # 0x196
	.half	405                             # 0x195
	.half	404                             # 0x194
	.half	403                             # 0x193
	.half	402                             # 0x192
	.half	401                             # 0x191
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	400                             # 0x190
	.half	399                             # 0x18f
	.half	398                             # 0x18e
	.half	397                             # 0x18d
	.half	396                             # 0x18c
	.half	395                             # 0x18b
	.half	394                             # 0x18a
	.half	393                             # 0x189
	.half	392                             # 0x188
	.half	391                             # 0x187
	.half	390                             # 0x186
	.half	389                             # 0x185
	.half	388                             # 0x184
	.half	387                             # 0x183
	.half	386                             # 0x182
	.half	385                             # 0x181
	.half	384                             # 0x180
	.half	383                             # 0x17f
	.half	382                             # 0x17e
	.half	381                             # 0x17d
	.half	380                             # 0x17c
	.half	379                             # 0x17b
	.half	378                             # 0x17a
	.half	377                             # 0x179
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	22                              # 0x16
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	49                              # 0x31
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	55                              # 0x37
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	66                              # 0x42
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	69                              # 0x45
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	100                             # 0x64
	.half	118                             # 0x76
	.half	118                             # 0x76
	.half	145                             # 0x91
	.half	145                             # 0x91
	.half	146                             # 0x92
	.half	376                             # 0x178
	.half	375                             # 0x177
	.half	374                             # 0x176
	.half	373                             # 0x175
	.half	372                             # 0x174
	.half	146                             # 0x92
	.half	146                             # 0x92
	.half	146                             # 0x92
	.half	150                             # 0x96
	.half	369                             # 0x171
	.half	368                             # 0x170
	.half	150                             # 0x96
	.half	150                             # 0x96
	.half	150                             # 0x96
	.half	150                             # 0x96
	.half	150                             # 0x96
	.half	150                             # 0x96
	.half	152                             # 0x98
	.half	367                             # 0x16f
	.half	152                             # 0x98
	.half	152                             # 0x98
	.half	366                             # 0x16e
	.half	152                             # 0x98
	.half	152                             # 0x98
	.half	152                             # 0x98
	.half	152                             # 0x98
	.half	154                             # 0x9a
	.half	365                             # 0x16d
	.half	364                             # 0x16c
	.half	363                             # 0x16b
	.half	362                             # 0x16a
	.half	154                             # 0x9a
	.half	361                             # 0x169
	.half	154                             # 0x9a
	.half	164                             # 0xa4
	.half	164                             # 0xa4
	.half	172                             # 0xac
	.half	172                             # 0xac
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	433                             # 0x1b1
	.half	360                             # 0x168
	.half	359                             # 0x167
	.half	358                             # 0x166
	.half	357                             # 0x165
	.half	356                             # 0x164
	.half	355                             # 0x163
	.half	354                             # 0x162
	.half	353                             # 0x161
	.half	352                             # 0x160
	.half	351                             # 0x15f
	.half	350                             # 0x15e
	.half	349                             # 0x15d
	.half	348                             # 0x15c
	.half	347                             # 0x15b
	.half	346                             # 0x15a
	.half	333                             # 0x14d
	.half	345                             # 0x159
	.half	332                             # 0x14c
	.half	344                             # 0x158
	.half	343                             # 0x157
	.half	342                             # 0x156
	.half	341                             # 0x155
	.half	340                             # 0x154
	.half	339                             # 0x153
	.half	338                             # 0x152
	.half	337                             # 0x151
	.half	336                             # 0x150
	.half	335                             # 0x14f
	.half	334                             # 0x14e
	.half	333                             # 0x14d
	.half	332                             # 0x14c
	.half	331                             # 0x14b
	.half	330                             # 0x14a
	.half	329                             # 0x149
	.half	328                             # 0x148
	.half	327                             # 0x147
	.half	326                             # 0x146
	.half	325                             # 0x145
	.half	324                             # 0x144
	.half	323                             # 0x143
	.half	322                             # 0x142
	.half	321                             # 0x141
	.half	320                             # 0x140
	.half	319                             # 0x13f
	.half	318                             # 0x13e
	.half	317                             # 0x13d
	.half	316                             # 0x13c
	.half	315                             # 0x13b
	.half	314                             # 0x13a
	.half	313                             # 0x139
	.half	312                             # 0x138
	.half	311                             # 0x137
	.half	310                             # 0x136
	.half	309                             # 0x135
	.half	308                             # 0x134
	.half	307                             # 0x133
	.half	306                             # 0x132
	.half	305                             # 0x131
	.half	304                             # 0x130
	.half	303                             # 0x12f
	.half	302                             # 0x12e
	.half	301                             # 0x12d
	.half	300                             # 0x12c
	.half	299                             # 0x12b
	.half	298                             # 0x12a
	.half	297                             # 0x129
	.half	296                             # 0x128
	.half	295                             # 0x127
	.half	294                             # 0x126
	.half	293                             # 0x125
	.half	292                             # 0x124
	.half	291                             # 0x123
	.half	290                             # 0x122
	.half	289                             # 0x121
	.half	288                             # 0x120
	.half	287                             # 0x11f
	.half	286                             # 0x11e
	.half	285                             # 0x11d
	.half	284                             # 0x11c
	.half	283                             # 0x11b
	.half	282                             # 0x11a
	.half	281                             # 0x119
	.half	280                             # 0x118
	.half	279                             # 0x117
	.half	278                             # 0x116
	.half	277                             # 0x115
	.half	276                             # 0x114
	.half	275                             # 0x113
	.half	274                             # 0x112
	.half	273                             # 0x111
	.half	272                             # 0x110
	.half	271                             # 0x10f
	.half	270                             # 0x10e
	.half	269                             # 0x10d
	.half	268                             # 0x10c
	.half	267                             # 0x10b
	.half	266                             # 0x10a
	.half	265                             # 0x109
	.half	264                             # 0x108
	.half	263                             # 0x107
	.half	262                             # 0x106
	.half	261                             # 0x105
	.half	260                             # 0x104
	.half	259                             # 0x103
	.half	253                             # 0xfd
	.half	252                             # 0xfc
	.half	251                             # 0xfb
	.half	250                             # 0xfa
	.half	249                             # 0xf9
	.half	248                             # 0xf8
	.half	247                             # 0xf7
	.half	207                             # 0xcf
	.half	206                             # 0xce
	.half	246                             # 0xf6
	.half	245                             # 0xf5
	.half	244                             # 0xf4
	.half	243                             # 0xf3
	.half	242                             # 0xf2
	.half	241                             # 0xf1
	.half	240                             # 0xf0
	.half	239                             # 0xef
	.half	238                             # 0xee
	.half	237                             # 0xed
	.half	236                             # 0xec
	.half	235                             # 0xeb
	.half	234                             # 0xea
	.half	233                             # 0xe9
	.half	232                             # 0xe8
	.half	231                             # 0xe7
	.half	230                             # 0xe6
	.half	229                             # 0xe5
	.half	228                             # 0xe4
	.half	227                             # 0xe3
	.half	226                             # 0xe2
	.half	225                             # 0xe1
	.half	224                             # 0xe0
	.half	223                             # 0xdf
	.half	222                             # 0xde
	.half	221                             # 0xdd
	.half	220                             # 0xdc
	.half	219                             # 0xdb
	.half	218                             # 0xda
	.half	175                             # 0xaf
	.half	217                             # 0xd9
	.half	216                             # 0xd8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	215                             # 0xd7
	.half	159                             # 0x9f
	.half	210                             # 0xd2
	.half	207                             # 0xcf
	.half	206                             # 0xce
	.half	205                             # 0xcd
	.half	204                             # 0xcc
	.half	203                             # 0xcb
	.half	202                             # 0xca
	.half	201                             # 0xc9
	.half	200                             # 0xc8
	.half	199                             # 0xc7
	.half	198                             # 0xc6
	.half	197                             # 0xc5
	.half	196                             # 0xc4
	.half	195                             # 0xc3
	.half	194                             # 0xc2
	.half	193                             # 0xc1
	.half	192                             # 0xc0
	.half	191                             # 0xbf
	.half	190                             # 0xbe
	.half	189                             # 0xbd
	.half	188                             # 0xbc
	.half	187                             # 0xbb
	.half	186                             # 0xba
	.half	185                             # 0xb9
	.half	184                             # 0xb8
	.half	183                             # 0xb7
	.half	182                             # 0xb6
	.half	112                             # 0x70
	.half	181                             # 0xb5
	.half	180                             # 0xb4
	.half	107                             # 0x6b
	.half	179                             # 0xb3
	.half	178                             # 0xb2
	.half	177                             # 0xb1
	.half	176                             # 0xb0
	.half	175                             # 0xaf
	.half	174                             # 0xae
	.half	173                             # 0xad
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	168                             # 0xa8
	.half	166                             # 0xa6
	.half	165                             # 0xa5
	.half	149                             # 0x95
	.half	107                             # 0x6b
	.half	129                             # 0x81
	.half	128                             # 0x80
	.half	127                             # 0x7f
	.half	126                             # 0x7e
	.half	125                             # 0x7d
	.half	124                             # 0x7c
	.half	123                             # 0x7b
	.half	122                             # 0x7a
	.half	121                             # 0x79
	.half	120                             # 0x78
	.half	119                             # 0x77
	.half	117                             # 0x75
	.half	112                             # 0x70
	.half	114                             # 0x72
	.half	437                             # 0x1b5
	.half	50                              # 0x32
	.half	48                              # 0x30
	.half	23                              # 0x17
	.half	23                              # 0x17
	.half	21                              # 0x15
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.half	437                             # 0x1b5
	.size	_ZL6yy_nxt, 1844

	.type	_ZL9yy_accept,@object           # @_ZL9yy_accept
	.p2align	1, 0x0
_ZL9yy_accept:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	12                              # 0xc
	.half	14                              # 0xe
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	24                              # 0x18
	.half	26                              # 0x1a
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	33                              # 0x21
	.half	35                              # 0x23
	.half	38                              # 0x26
	.half	41                              # 0x29
	.half	44                              # 0x2c
	.half	47                              # 0x2f
	.half	50                              # 0x32
	.half	53                              # 0x35
	.half	56                              # 0x38
	.half	59                              # 0x3b
	.half	62                              # 0x3e
	.half	65                              # 0x41
	.half	68                              # 0x44
	.half	71                              # 0x47
	.half	74                              # 0x4a
	.half	76                              # 0x4c
	.half	79                              # 0x4f
	.half	81                              # 0x51
	.half	84                              # 0x54
	.half	87                              # 0x57
	.half	89                              # 0x59
	.half	92                              # 0x5c
	.half	95                              # 0x5f
	.half	97                              # 0x61
	.half	100                             # 0x64
	.half	103                             # 0x67
	.half	106                             # 0x6a
	.half	109                             # 0x6d
	.half	112                             # 0x70
	.half	115                             # 0x73
	.half	118                             # 0x76
	.half	121                             # 0x79
	.half	124                             # 0x7c
	.half	127                             # 0x7f
	.half	130                             # 0x82
	.half	133                             # 0x85
	.half	136                             # 0x88
	.half	139                             # 0x8b
	.half	142                             # 0x8e
	.half	145                             # 0x91
	.half	148                             # 0x94
	.half	150                             # 0x96
	.half	153                             # 0x99
	.half	156                             # 0x9c
	.half	159                             # 0x9f
	.half	162                             # 0xa2
	.half	165                             # 0xa5
	.half	168                             # 0xa8
	.half	170                             # 0xaa
	.half	173                             # 0xad
	.half	176                             # 0xb0
	.half	179                             # 0xb3
	.half	181                             # 0xb5
	.half	184                             # 0xb8
	.half	187                             # 0xbb
	.half	190                             # 0xbe
	.half	193                             # 0xc1
	.half	196                             # 0xc4
	.half	199                             # 0xc7
	.half	202                             # 0xca
	.half	205                             # 0xcd
	.half	208                             # 0xd0
	.half	210                             # 0xd2
	.half	213                             # 0xd5
	.half	216                             # 0xd8
	.half	219                             # 0xdb
	.half	222                             # 0xde
	.half	224                             # 0xe0
	.half	227                             # 0xe3
	.half	229                             # 0xe5
	.half	231                             # 0xe7
	.half	233                             # 0xe9
	.half	235                             # 0xeb
	.half	237                             # 0xed
	.half	238                             # 0xee
	.half	239                             # 0xef
	.half	240                             # 0xf0
	.half	240                             # 0xf0
	.half	240                             # 0xf0
	.half	241                             # 0xf1
	.half	242                             # 0xf2
	.half	242                             # 0xf2
	.half	243                             # 0xf3
	.half	244                             # 0xf4
	.half	245                             # 0xf5
	.half	246                             # 0xf6
	.half	247                             # 0xf7
	.half	248                             # 0xf8
	.half	249                             # 0xf9
	.half	250                             # 0xfa
	.half	251                             # 0xfb
	.half	252                             # 0xfc
	.half	253                             # 0xfd
	.half	254                             # 0xfe
	.half	255                             # 0xff
	.half	256                             # 0x100
	.half	257                             # 0x101
	.half	258                             # 0x102
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	259                             # 0x103
	.half	260                             # 0x104
	.half	261                             # 0x105
	.half	261                             # 0x105
	.half	262                             # 0x106
	.half	263                             # 0x107
	.half	265                             # 0x109
	.half	267                             # 0x10b
	.half	268                             # 0x10c
	.half	269                             # 0x10d
	.half	270                             # 0x10e
	.half	271                             # 0x10f
	.half	272                             # 0x110
	.half	273                             # 0x111
	.half	274                             # 0x112
	.half	274                             # 0x112
	.half	274                             # 0x112
	.half	275                             # 0x113
	.half	276                             # 0x114
	.half	277                             # 0x115
	.half	278                             # 0x116
	.half	279                             # 0x117
	.half	280                             # 0x118
	.half	281                             # 0x119
	.half	282                             # 0x11a
	.half	283                             # 0x11b
	.half	284                             # 0x11c
	.half	285                             # 0x11d
	.half	286                             # 0x11e
	.half	287                             # 0x11f
	.half	288                             # 0x120
	.half	289                             # 0x121
	.half	290                             # 0x122
	.half	291                             # 0x123
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	292                             # 0x124
	.half	293                             # 0x125
	.half	294                             # 0x126
	.half	295                             # 0x127
	.half	296                             # 0x128
	.half	297                             # 0x129
	.half	298                             # 0x12a
	.half	299                             # 0x12b
	.half	300                             # 0x12c
	.half	301                             # 0x12d
	.half	302                             # 0x12e
	.half	303                             # 0x12f
	.half	304                             # 0x130
	.half	305                             # 0x131
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	306                             # 0x132
	.half	307                             # 0x133
	.half	308                             # 0x134
	.half	308                             # 0x134
	.half	309                             # 0x135
	.half	309                             # 0x135
	.half	309                             # 0x135
	.half	309                             # 0x135
	.half	309                             # 0x135
	.half	309                             # 0x135
	.half	310                             # 0x136
	.half	311                             # 0x137
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	313                             # 0x139
	.half	315                             # 0x13b
	.half	316                             # 0x13c
	.half	317                             # 0x13d
	.half	318                             # 0x13e
	.half	320                             # 0x140
	.half	321                             # 0x141
	.half	322                             # 0x142
	.half	323                             # 0x143
	.half	324                             # 0x144
	.half	325                             # 0x145
	.half	326                             # 0x146
	.half	327                             # 0x147
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	328                             # 0x148
	.half	329                             # 0x149
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	330                             # 0x14a
	.half	332                             # 0x14c
	.half	333                             # 0x14d
	.half	334                             # 0x14e
	.half	335                             # 0x14f
	.half	336                             # 0x150
	.half	337                             # 0x151
	.half	338                             # 0x152
	.half	339                             # 0x153
	.half	340                             # 0x154
	.half	341                             # 0x155
	.half	342                             # 0x156
	.half	343                             # 0x157
	.half	344                             # 0x158
	.half	345                             # 0x159
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	346                             # 0x15a
	.half	347                             # 0x15b
	.half	348                             # 0x15c
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	349                             # 0x15d
	.half	350                             # 0x15e
	.half	352                             # 0x160
	.half	353                             # 0x161
	.half	354                             # 0x162
	.half	355                             # 0x163
	.half	357                             # 0x165
	.half	358                             # 0x166
	.half	359                             # 0x167
	.half	360                             # 0x168
	.half	361                             # 0x169
	.half	361                             # 0x169
	.half	361                             # 0x169
	.half	361                             # 0x169
	.half	362                             # 0x16a
	.half	362                             # 0x16a
	.half	363                             # 0x16b
	.half	363                             # 0x16b
	.half	363                             # 0x16b
	.half	363                             # 0x16b
	.half	363                             # 0x16b
	.half	364                             # 0x16c
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	366                             # 0x16e
	.half	368                             # 0x170
	.half	369                             # 0x171
	.half	370                             # 0x172
	.half	371                             # 0x173
	.half	373                             # 0x175
	.half	374                             # 0x176
	.half	376                             # 0x178
	.half	377                             # 0x179
	.half	377                             # 0x179
	.half	378                             # 0x17a
	.half	379                             # 0x17b
	.half	379                             # 0x17b
	.half	379                             # 0x17b
	.half	379                             # 0x17b
	.half	379                             # 0x17b
	.half	379                             # 0x17b
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	380                             # 0x17c
	.half	381                             # 0x17d
	.half	381                             # 0x17d
	.half	381                             # 0x17d
	.half	383                             # 0x17f
	.half	385                             # 0x181
	.half	387                             # 0x183
	.half	389                             # 0x185
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	391                             # 0x187
	.half	392                             # 0x188
	.half	393                             # 0x189
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	394                             # 0x18a
	.half	395                             # 0x18b
	.half	396                             # 0x18c
	.half	397                             # 0x18d
	.half	397                             # 0x18d
	.half	397                             # 0x18d
	.half	398                             # 0x18e
	.half	398                             # 0x18e
	.half	398                             # 0x18e
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	399                             # 0x18f
	.half	400                             # 0x190
	.half	400                             # 0x190
	.half	400                             # 0x190
	.half	401                             # 0x191
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	402                             # 0x192
	.half	403                             # 0x193
	.half	403                             # 0x193
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	404                             # 0x194
	.half	406                             # 0x196
	.half	406                             # 0x196
	.half	406                             # 0x196
	.half	407                             # 0x197
	.half	408                             # 0x198
	.half	409                             # 0x199
	.half	409                             # 0x199
	.half	409                             # 0x199
	.half	410                             # 0x19a
	.half	411                             # 0x19b
	.half	412                             # 0x19c
	.half	413                             # 0x19d
	.half	414                             # 0x19e
	.half	414                             # 0x19e
	.size	_ZL9yy_accept, 878

	.type	_ZL10yy_acclist,@object         # @_ZL10yy_acclist
	.p2align	1, 0x0
_ZL10yy_acclist:
	.half	0                               # 0x0
	.half	42                              # 0x2a
	.half	42                              # 0x2a
	.half	82                              # 0x52
	.half	82                              # 0x52
	.half	94                              # 0x5e
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	93                              # 0x5d
	.half	1                               # 0x1
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	1                               # 0x1
	.half	93                              # 0x5d
	.half	54                              # 0x36
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	55                              # 0x37
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	23                              # 0x17
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	45                              # 0x2d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	13                              # 0xd
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	13                              # 0xd
	.half	93                              # 0x5d
	.half	13                              # 0xd
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	11                              # 0xb
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	12                              # 0xc
	.half	93                              # 0x5d
	.half	10                              # 0xa
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	46                              # 0x2e
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	51                              # 0x33
	.half	93                              # 0x5d
	.half	50                              # 0x32
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	58                              # 0x3a
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	59                              # 0x3b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	57                              # 0x39
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	46                              # 0x2e
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	56                              # 0x38
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	60                              # 0x3c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	52                              # 0x34
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	61                              # 0x3d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	62                              # 0x3e
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	63                              # 0x3f
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	52                              # 0x34
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	67                              # 0x43
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	65                              # 0x41
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	52                              # 0x34
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	76                              # 0x4c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	76                              # 0x4c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	51                              # 0x33
	.half	93                              # 0x5d
	.half	73                              # 0x49
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	77                              # 0x4d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	75                              # 0x4b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	70                              # 0x46
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	75                              # 0x4b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	42                              # 0x2a
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	42                              # 0x2a
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	44                              # 0x2c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	44                              # 0x2c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	44                              # 0x2c
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	43                              # 0x2b
	.half	81                              # 0x51
	.half	93                              # 0x5d
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	82                              # 0x52
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	83                              # 0x53
	.half	93                              # 0x5d
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	92                              # 0x5c
	.half	93                              # 0x5d
	.half	47                              # 0x2f
	.half	48                              # 0x30
	.half	49                              # 0x31
	.half	23                              # 0x17
	.half	20                              # 0x14
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	41                              # 0x29
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	9                               # 0x9
	.half	14                              # 0xe
	.half	10                              # 0xa
	.half	46                              # 0x2e
	.half	16                              # 0x10
	.half	46                              # 0x2e
	.half	18                              # 0x12
	.half	46                              # 0x2e
	.half	53                              # 0x35
	.half	62                              # 0x3e
	.half	64                              # 0x40
	.half	67                              # 0x43
	.half	66                              # 0x42
	.half	76                              # 0x4c
	.half	76                              # 0x4c
	.half	68                              # 0x44
	.half	73                              # 0x49
	.half	71                              # 0x47
	.half	72                              # 0x48
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	75                              # 0x4b
	.half	69                              # 0x45
	.half	75                              # 0x4b
	.half	42                              # 0x2a
	.half	43                              # 0x2b
	.half	43                              # 0x2b
	.half	43                              # 0x2b
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	44                              # 0x2c
	.half	44                              # 0x2c
	.half	82                              # 0x52
	.half	40                              # 0x28
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	9                               # 0x9
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	75                              # 0x4b
	.half	44                              # 0x2c
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	26                              # 0x1a
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	24                              # 0x18
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	75                              # 0x4b
	.half	44                              # 0x2c
	.half	30                              # 0x1e
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	38                              # 0x26
	.half	39                              # 0x27
	.half	35                              # 0x23
	.half	36                              # 0x24
	.half	75                              # 0x4b
	.half	44                              # 0x2c
	.half	43                              # 0x2b
	.half	45                              # 0x2d
	.half	28                              # 0x1c
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	25                              # 0x19
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	4                               # 0x4
	.half	2                               # 0x2
	.half	75                              # 0x4b
	.half	43                              # 0x2b
	.half	44                              # 0x2c
	.half	22                              # 0x16
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	29                              # 0x1d
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	33                              # 0x21
	.half	45                              # 0x2d
	.half	45                              # 0x2d
	.half	37                              # 0x25
	.half	8                               # 0x8
	.half	75                              # 0x4b
	.half	84                              # 0x54
	.half	34                              # 0x22
	.half	45                              # 0x2d
	.half	21                              # 0x15
	.half	45                              # 0x2d
	.half	27                              # 0x1b
	.half	45                              # 0x2d
	.half	32                              # 0x20
	.half	45                              # 0x2d
	.half	31                              # 0x1f
	.half	45                              # 0x2d
	.half	75                              # 0x4b
	.half	43                              # 0x2b
	.half	85                              # 0x55
	.half	5                               # 0x5
	.half	3                               # 0x3
	.half	7                               # 0x7
	.half	78                              # 0x4e
	.half	75                              # 0x4b
	.half	75                              # 0x4b
	.half	87                              # 0x57
	.half	86                              # 0x56
	.half	75                              # 0x4b
	.half	88                              # 0x58
	.half	75                              # 0x4b
	.half	16458                           # 0x404a
	.half	91                              # 0x5b
	.half	6                               # 0x6
	.half	16458                           # 0x404a
	.half	80                              # 0x50
	.half	8266                            # 0x204a
	.half	89                              # 0x59
	.half	90                              # 0x5a
	.half	79                              # 0x4f
	.size	_ZL10yy_acclist, 828

	.type	_ZL26yy_looking_for_trail_begin,@object # @_ZL26yy_looking_for_trail_begin
	.local	_ZL26yy_looking_for_trail_begin
	.comm	_ZL26yy_looking_for_trail_begin,4,4
	.type	_ZL13yy_full_match,@object      # @_ZL13yy_full_match
	.local	_ZL13yy_full_match
	.comm	_ZL13yy_full_match,8,8
	.type	_ZL13yy_full_state,@object      # @_ZL13yy_full_state
	.local	_ZL13yy_full_state
	.comm	_ZL13yy_full_state,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"token too large, exceeds YYLMAX"
	.size	.L.str.1, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Opening '%{' (nested C++ includes; preceding closing '%}' not found)"
	.size	.L.str.2, 69

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\\"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\\\\"
	.size	.L.str.4, 3

	.type	_ZN12_GLOBAL__N_119cinit_paren_nestingE,@object # @_ZN12_GLOBAL__N_119cinit_paren_nestingE
	.local	_ZN12_GLOBAL__N_119cinit_paren_nestingE
	.comm	_ZN12_GLOBAL__N_119cinit_paren_nestingE,4,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"("
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	")"
	.size	.L.str.6, 2

	.type	_ZN12_GLOBAL__N_119cinit_array_nestingE,@object # @_ZN12_GLOBAL__N_119cinit_array_nestingE
	.local	_ZN12_GLOBAL__N_119cinit_array_nestingE
	.comm	_ZN12_GLOBAL__N_119cinit_array_nestingE,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"["
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"]"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\\\""
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\\'"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"$"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"{"
	.size	.L.str.12, 2

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"}"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"foreach"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"afterforeach"
	.size	.L.str.15, 13

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"with"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"yystype.h"
	.size	.L.str.17, 10

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Name of yystype header is set to "
	.size	.L.str.18, 34

	.type	_ZL10yy_n_chars,@object         # @_ZL10yy_n_chars
	.local	_ZL10yy_n_chars
	.comm	_ZL10yy_n_chars,4,4
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.19, 51

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"out of dynamic memory in yy_create_buffer()"
	.size	.L.str.20, 44

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"out of dynamic memory in yy_scan_buffer()"
	.size	.L.str.21, 42

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"out of dynamic memory in yy_scan_bytes()"
	.size	.L.str.22, 41

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"bad buffer in yy_scan_bytes()"
	.size	.L.str.23, 30

	.type	_ZL21yy_rule_can_match_eol,@object # @_ZL21yy_rule_can_match_eol
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_ZL21yy_rule_can_match_eol:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	40
	.size	_ZL21yy_rule_can_match_eol, 376

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.25, 56

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"input buffer overflow, can't enlarge buffer because scanner uses REJECT"
	.size	.L.str.26, 72

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"input in flex scanner failed"
	.size	.L.str.27, 29

	.type	_ZL19yy_buffer_stack_max,@object # @_ZL19yy_buffer_stack_max
	.local	_ZL19yy_buffer_stack_max
	.comm	_ZL19yy_buffer_stack_max,8,8
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%s\n"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"opening parenthesis '(' was not closed"
	.size	.L.str.29, 39

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"opening bracket '[' was not closed"
	.size	.L.str.30, 35

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"start of comment containing unexpected eof"
	.size	.L.str.31, 43

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_kimwl.cc
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_kimwl.cc
	.addrsig_sym yytext
	.addrsig_sym _ZN12_GLOBAL__N_18cincludeB5cxx11E
	.addrsig_sym __dso_handle
	.addrsig_sym g_options
