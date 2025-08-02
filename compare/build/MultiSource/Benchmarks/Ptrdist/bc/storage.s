	.file	"storage.c"
	.text
	.globl	init_storage                    # -- Begin function init_storage
	.p2align	5
	.type	init_storage,@function
init_storage:                           # @init_storage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(f_count)
	ld.d	$a0, $a0, %got_pc_lo12(f_count)
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(more_functions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(f_names)
	ld.d	$a0, $a0, %got_pc_lo12(f_names)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(v_count)
	ld.d	$a1, $a1, %got_pc_lo12(v_count)
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	st.d	$a2, $a0, 0
	st.w	$zero, $a1, 0
	pcaddu18i	$ra, %call36(more_variables)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(a_count)
	ld.d	$a0, $a0, %got_pc_lo12(a_count)
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(more_arrays)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(i_base)
	ld.d	$a1, $a1, %got_pc_lo12(i_base)
	ori	$a2, $zero, 10
	pcalau12i	$a3, %got_pc_hi20(o_base)
	ld.d	$a3, $a3, %got_pc_lo12(o_base)
	st.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(fn_stack)
	ld.d	$a1, $a1, %got_pc_lo12(fn_stack)
	st.w	$a2, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(scale)
	ld.d	$a2, $a2, %got_pc_lo12(scale)
	pcalau12i	$a3, %got_pc_hi20(c_code)
	ld.d	$a3, $a3, %got_pc_lo12(c_code)
	st.d	$zero, $a0, 0
	st.d	$zero, $a1, 0
	st.w	$zero, $a2, 0
	st.b	$zero, $a3, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(init_numbers)
	jr	$t8
.Lfunc_end0:
	.size	init_storage, .Lfunc_end0-init_storage
                                        # -- End function
	.globl	more_functions                  # -- Begin function more_functions
	.p2align	5
	.type	more_functions,@function
more_functions:                         # @more_functions
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
	pcalau12i	$a0, %got_pc_hi20(f_count)
	ld.d	$s1, $a0, %got_pc_lo12(f_count)
	pcalau12i	$a0, %got_pc_hi20(functions)
	ld.d	$s2, $a0, %got_pc_lo12(functions)
	pcalau12i	$a0, %got_pc_hi20(f_names)
	ld.d	$s4, $a0, %got_pc_lo12(f_names)
	ld.w	$s3, $s1, 0
	ld.d	$s0, $s2, 0
	ld.d	$fp, $s4, 0
	addi.w	$s6, $s3, 32
	st.w	$s6, $s1, 0
	ori	$s5, $zero, 168
	mul.d	$a0, $s6, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $s4, 0
	blt	$s3, $a1, .LBB1_4
# %bb.1:                                # %for.body.preheader
	move	$s6, $zero
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	mul.d	$a1, $s6, $s5
	add.d	$a0, $a0, $a1
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 168
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s6, 3
	ldx.d	$a1, $fp, $a0
	ld.d	$a2, $s4, 0
	addi.d	$s6, $s6, 1
	stx.d	$a1, $a2, $a0
	bne	$s6, $s3, .LBB1_2
# %bb.3:                                # %for.cond11.preheader.loopexit
	ld.w	$s6, $s1, 0
	move	$s4, $s3
	blt	$s4, $s6, .LBB1_5
	b	.LBB1_7
.LBB1_4:
	move	$s4, $zero
	bge	$s4, $s6, .LBB1_7
.LBB1_5:                                # %for.body14.preheader
	bstrpick.d	$a0, $s4, 31, 0
	ori	$a1, $zero, 168
	mul.d	$s5, $a0, $a1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_6:                                # %for.body14
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	add.d	$s6, $a0, $s5
	stx.b	$zero, $a0, $s5
	addi.d	$a0, $s6, 8
	ori	$a2, $zero, 132
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$zero, $s6, 144
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s6, 152
	ld.w	$a0, $s1, 0
	addi.w	$s4, $s4, 1
	addi.d	$s5, $s5, 168
	blt	$s4, $a0, .LBB1_6
.LBB1_7:                                # %for.end28
	beqz	$s3, .LBB1_9
# %bb.8:                                # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_9:                                # %if.end
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
.Lfunc_end1:
	.size	more_functions, .Lfunc_end1-more_functions
                                        # -- End function
	.globl	more_variables                  # -- Begin function more_variables
	.p2align	5
	.type	more_variables,@function
more_variables:                         # @more_variables
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
	pcalau12i	$a0, %got_pc_hi20(v_count)
	ld.d	$a0, $a0, %got_pc_lo12(v_count)
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$s4, $a1, %got_pc_lo12(variables)
	pcalau12i	$a1, %got_pc_hi20(v_names)
	ld.d	$s5, $a1, %got_pc_lo12(v_names)
	ld.w	$s3, $a0, 0
	ld.d	$s0, $s4, 0
	ld.d	$fp, $s5, 0
	addi.w	$a1, $s3, 32
	st.w	$a1, $a0, 0
	slli.d	$s2, $a1, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s4, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	st.d	$a0, $s5, 0
	blt	$s3, $a1, .LBB2_9
# %bb.1:                                # %for.body.preheader
	addi.d	$a1, $s3, -3
	ori	$a2, $zero, 8
	ori	$a0, $zero, 3
	bltu	$a1, $a2, .LBB2_6
# %bb.2:                                # %for.body.preheader
	sub.d	$a2, $s1, $s0
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB2_6
# %bb.3:                                # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 3
	move	$a0, $a1
	bstrins.d	$a0, $a3, 2, 0
	addi.d	$a3, $s0, 56
	addi.d	$a4, $s1, 56
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB2_4
# %bb.5:                                # %middle.block
	move	$a3, $s3
	beq	$a1, $a2, .LBB2_10
.LBB2_6:                                # %for.body.preheader22
	alsl.d	$a1, $a0, $s1, 3
	alsl.d	$a2, $a0, $s0, 3
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB2_7
# %bb.8:
	move	$a3, $s3
	b	.LBB2_10
.LBB2_9:                                # %for.cond7.preheader
	addi.w	$a0, $zero, -29
	ori	$a3, $zero, 3
	bge	$a0, $s3, .LBB2_11
.LBB2_10:                               # %for.end15
	alsl.d	$a0, $a3, $s1, 3
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 31
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB2_12
.LBB2_11:                               # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_12:                               # %if.end
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
	.size	more_variables, .Lfunc_end2-more_variables
                                        # -- End function
	.globl	more_arrays                     # -- Begin function more_arrays
	.p2align	5
	.type	more_arrays,@function
more_arrays:                            # @more_arrays
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
	pcalau12i	$a0, %got_pc_hi20(a_count)
	ld.d	$a0, $a0, %got_pc_lo12(a_count)
	pcalau12i	$a1, %got_pc_hi20(arrays)
	ld.d	$s4, $a1, %got_pc_lo12(arrays)
	pcalau12i	$a1, %got_pc_hi20(a_names)
	ld.d	$s5, $a1, %got_pc_lo12(a_names)
	ld.w	$s3, $a0, 0
	ld.d	$s0, $s4, 0
	ld.d	$fp, $s5, 0
	addi.w	$a1, $s3, 32
	st.w	$a1, $a0, 0
	slli.d	$s2, $a1, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s4, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	blt	$s3, $a0, .LBB3_9
# %bb.1:                                # %for.body.preheader
	ori	$a1, $zero, 9
	ori	$a0, $zero, 1
	bltu	$s3, $a1, .LBB3_6
# %bb.2:                                # %for.body.preheader
	sub.d	$a1, $s1, $s0
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB3_6
# %bb.3:                                # %vector.ph
	addi.d	$a1, $s3, -1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$a0, $a1
	bstrins.d	$a0, $a3, 2, 0
	addi.d	$a3, $s0, 40
	addi.d	$a4, $s1, 40
	move	$a5, $a2
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_4
# %bb.5:                                # %middle.block
	move	$a3, $s3
	beq	$a1, $a2, .LBB3_9
.LBB3_6:                                # %for.body.preheader18
	alsl.d	$a1, $a0, $s1, 3
	alsl.d	$a2, $a0, $s0, 3
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB3_7
# %bb.8:
	move	$a3, $s3
.LBB3_9:                                # %for.cond7.preheader
	pcalau12i	$a0, %got_pc_hi20(v_count)
	ld.d	$a0, $a0, %got_pc_lo12(v_count)
	ld.w	$a1, $a0, 0
	bge	$a3, $a1, .LBB3_11
# %bb.10:                               # %for.body10.preheader
	alsl.d	$a0, $a3, $s1, 3
	sub.d	$a1, $a3, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %for.end15
	beqz	$s3, .LBB3_13
# %bb.12:                               # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_13:                               # %if.end
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
.Lfunc_end3:
	.size	more_arrays, .Lfunc_end3-more_arrays
                                        # -- End function
	.globl	clear_func                      # -- Begin function clear_func
	.p2align	5
	.type	clear_func,@function
clear_func:                             # @clear_func
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(functions)
	ld.d	$a1, $a1, %got_pc_lo12(functions)
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 168
	mul.d	$a2, $a0, $a2
	add.d	$fp, $a1, $a2
	ld.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a2
	beqz	$a0, .LBB4_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB4_2:                                # %for.inc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB4_4
# %bb.3:                                # %if.then.1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB4_4:                                # %for.inc.1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB4_6
# %bb.5:                                # %if.then.2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB4_6:                                # %for.inc.2
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB4_8
# %bb.7:                                # %if.then.3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
.LBB4_8:                                # %for.inc.3
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB4_10
# %bb.9:                                # %if.then.4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB4_10:                               # %for.inc.4
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB4_12
# %bb.11:                               # %if.then.5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB4_12:                               # %for.inc.5
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB4_14
# %bb.13:                               # %if.then.6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB4_14:                               # %for.inc.6
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB4_16
# %bb.15:                               # %if.then.7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 64
.LBB4_16:                               # %for.inc.7
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB4_18
# %bb.17:                               # %if.then.8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
.LBB4_18:                               # %for.inc.8
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB4_20
# %bb.19:                               # %if.then.9
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 80
.LBB4_20:                               # %for.inc.9
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB4_22
# %bb.21:                               # %if.then.10
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 88
.LBB4_22:                               # %for.inc.10
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB4_24
# %bb.23:                               # %if.then.11
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 96
.LBB4_24:                               # %for.inc.11
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB4_26
# %bb.25:                               # %if.then.12
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 104
.LBB4_26:                               # %for.inc.12
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB4_28
# %bb.27:                               # %if.then.13
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 112
.LBB4_28:                               # %for.inc.13
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB4_30
# %bb.29:                               # %if.then.14
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 120
.LBB4_30:                               # %for.inc.14
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB4_32
# %bb.31:                               # %if.then.15
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 128
.LBB4_32:                               # %for.inc.15
	ld.d	$a0, $fp, 160
	st.w	$zero, $fp, 136
	beqz	$a0, .LBB4_34
# %bb.33:                               # %if.then11
	pcaddu18i	$ra, %call36(free_args)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 160
.LBB4_34:                               # %if.end14
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB4_36
# %bb.35:                               # %if.then16
	pcaddu18i	$ra, %call36(free_args)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 152
.LBB4_36:                               # %if.end19
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB4_38
	.p2align	4, , 16
.LBB4_37:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 512
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 144
	move	$a0, $s0
	bnez	$s0, .LBB4_37
.LBB4_38:                               # %while.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	clear_func, .Lfunc_end4-clear_func
                                        # -- End function
	.globl	fpop                            # -- Begin function fpop
	.p2align	5
	.type	fpop,@function
fpop:                                   # @fpop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fn_stack)
	ld.d	$a1, $a0, %got_pc_lo12(fn_stack)
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB5_2
# %bb.1:                                # %if.then
	ld.d	$a2, $a0, 8
	ld.w	$fp, $a0, 0
	st.d	$a2, $a1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB5_3
.LBB5_2:
                                        # implicit-def: $r22
.LBB5_3:                                # %if.end
	addi.w	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	fpop, .Lfunc_end5-fpop
                                        # -- End function
	.globl	fpush                           # -- Begin function fpush
	.p2align	5
	.type	fpush,@function
fpush:                                  # @fpush
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fn_stack)
	ld.d	$a1, $a1, %got_pc_lo12(fn_stack)
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 8
	st.w	$fp, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	fpush, .Lfunc_end6-fpush
                                        # -- End function
	.globl	pop                             # -- Begin function pop
	.p2align	5
	.type	pop,@function
pop:                                    # @pop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB7_2
# %bb.1:                                # %if.then
	ld.d	$a1, $fp, 8
	st.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB7_2:                                # %if.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	pop, .Lfunc_end7-pop
                                        # -- End function
	.globl	push_copy                       # -- Begin function push_copy
	.p2align	5
	.type	push_copy,@function
push_copy:                              # @push_copy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a2, $a1, 0
	st.d	$a0, $s0, 0
	st.d	$a2, $s0, 8
	st.d	$s0, $a1, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	push_copy, .Lfunc_end8-push_copy
                                        # -- End function
	.globl	push_num                        # -- Begin function push_num
	.p2align	5
	.type	push_num,@function
push_num:                               # @push_num
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a2, $a1, 0
	st.d	$fp, $a0, 0
	st.d	$a2, $a0, 8
	st.d	$a0, $a1, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	push_num, .Lfunc_end9-push_num
                                        # -- End function
	.globl	check_stack                     # -- Begin function check_stack
	.p2align	5
	.type	check_stack,@function
check_stack:                            # @check_stack
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $a1, 0
	slt	$a2, $zero, $a0
	beqz	$a1, .LBB10_4
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB10_4
	.p2align	4, , 16
.LBB10_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 8
	sltu	$a2, $a3, $a0
	beqz	$a1, .LBB10_4
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a4, $a0
	addi.w	$a0, $a0, -1
	bltu	$a3, $a4, .LBB10_2
.LBB10_4:                               # %while.end
	ori	$a0, $zero, 1
	beqz	$a2, .LBB10_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB10_6:                               # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	check_stack, .Lfunc_end10-check_stack
                                        # -- End function
	.globl	get_var                         # -- Begin function get_var
	.p2align	5
	.type	get_var,@function
get_var:                                # @get_var
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$a1, $a1, %got_pc_lo12(variables)
	ld.d	$a2, $a1, 0
	move	$a1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	beqz	$a0, .LBB11_2
# %bb.1:                                # %if.end
	ret
.LBB11_2:                               # %if.then
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$s0, $a1, $a2, 3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	get_var, .Lfunc_end11-get_var
                                        # -- End function
	.globl	get_array_num                   # -- Begin function get_array_num
	.p2align	5
	.type	get_array_num,@function
get_array_num:                          # @get_array_num
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
	pcalau12i	$a2, %got_pc_hi20(arrays)
	ld.d	$a2, $a2, %got_pc_lo12(arrays)
	ld.d	$a2, $a2, 0
	slli.d	$a3, $a0, 3
	ldx.d	$s1, $a2, $a3
	move	$fp, $a1
	beqz	$s1, .LBB12_2
# %bb.1:                                # %if.end
	ld.d	$s0, $s1, 0
	bnez	$s0, .LBB12_4
	b	.LBB12_3
.LBB12_2:                               # %if.end.thread
	alsl.d	$s0, $a0, $a2, 3
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 16
	st.b	$zero, $a0, 8
.LBB12_3:                               # %if.then5
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s1, 0
	st.d	$zero, $a0, 0
	st.h	$zero, $a0, 8
.LBB12_4:                               # %if.end8
	andi	$s1, $fp, 15
	st.w	$s1, $sp, 8
	srli.d	$a0, $fp, 4
	ori	$s2, $zero, 2
	addi.d	$s3, $sp, 8
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %while.body
                                        #   in Loop: Header=BB12_6 Depth=1
	andi	$a0, $a0, 15
	st.w	$a0, $s3, 4
	addi.d	$s3, $s3, 4
	srai.d	$a0, $a1, 4
	addi.d	$s2, $s2, 1
.LBB12_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a0, 0
	bgtz	$a1, .LBB12_5
# %bb.7:                                # %lor.rhs
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.h	$a2, $s0, 8
	addi.d	$s4, $s2, -1
	blt	$s4, $a2, .LBB12_5
# %bb.8:                                # %while.cond21.preheader
	bge	$a2, $s4, .LBB12_14
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$s5, $a0, %got_pc_lo12(_zero_)
	bstrpick.d	$s6, $a2, 15, 0
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_10:                              # %if.then32
                                        #   in Loop: Header=BB12_12 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 128
	addi.d	$a0, $fp, 136
	ori	$a2, $zero, 120
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_11:                              # %if.end51
                                        #   in Loop: Header=BB12_12 Depth=1
	st.d	$fp, $s0, 0
	addi.d	$s6, $s6, 1
	ext.w.h	$a0, $s6
	st.h	$s6, $s0, 8
	bge	$a0, $s4, .LBB12_15
.LBB12_12:                              # %while.body26
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s6, 15, 0
	move	$fp, $a0
	bnez	$a1, .LBB12_10
# %bb.13:                               # %for.body44.preheader
                                        #   in Loop: Header=BB12_12 Depth=1
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 48
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 56
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 64
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 72
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 80
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 88
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 96
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 104
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $fp, 112
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.hu	$s6, $s0, 8
	st.d	$a0, $fp, 120
	b	.LBB12_11
.LBB12_14:                              # %while.cond21.preheader.while.end55_crit_edge
	ld.d	$fp, $s0, 0
.LBB12_15:                              # %while.end55
	ori	$s0, $zero, 2
	bltu	$s4, $s0, .LBB12_22
# %bb.16:                               # %while.body60.preheader
	ori	$s4, $zero, 3
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_17:                              # %for.cond79.preheader
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$a0, $fp, 128
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_18:                              # %if.end106
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -4
	bge	$s0, $s2, .LBB12_22
.LBB12_19:                              # %while.body60
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	alsl.d	$a0, $a0, $fp, 3
	ld.d	$fp, $a0, 128
	bnez	$fp, .LBB12_18
# %bb.20:                               # %if.then68
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$s5, $a0, 128
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s5, 0
	bne	$s2, $s4, .LBB12_17
# %bb.21:                               # %if.end106.thread
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$s0, $a0, %got_pc_lo12(_zero_)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 48
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 56
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 64
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 72
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 80
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 88
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 96
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 104
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $fp, 112
	move	$a0, $a1
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
.LBB12_22:                              # %while.end107
	alsl.d	$a0, $s1, $fp, 3
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
.Lfunc_end12:
	.size	get_array_num, .Lfunc_end12-get_array_num
                                        # -- End function
	.globl	store_var                       # -- Begin function store_var
	.p2align	5
	.type	store_var,@function
store_var:                              # @store_var
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 3
	move	$s0, $a0
	blt	$a0, $a1, .LBB13_4
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(variables)
	ld.d	$a0, $a0, %got_pc_lo12(variables)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 3
	ldx.d	$fp, $a0, $a1
	bnez	$fp, .LBB13_3
# %bb.2:                                # %get_var.exit
	alsl.d	$s0, $s0, $a0, 3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB13_28
.LBB13_3:                               # %if.then2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$a0, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	b	.LBB13_28
.LBB13_4:                               # %if.else
	pcalau12i	$a0, %got_pc_hi20(ex_stack)
	ld.d	$fp, $a0, %got_pc_lo12(ex_stack)
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_neg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_9
# %bb.5:                                # %if.then7
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB13_11
# %bb.6:                                # %if.then7
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB13_10
# %bb.7:                                # %if.then7
	bnez	$s0, .LBB13_15
# %bb.8:                                # %sw.bb20.thread
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(rt_warn)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$fp, $zero, 2
	b	.LBB13_19
.LBB13_9:                               # %if.else10
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	or	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$s0, $a1, .LBB13_16
	b	.LBB13_12
.LBB13_10:                              # %sw.bb33.thread
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(rt_warn)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$fp, $zero, 2
	b	.LBB13_24
.LBB13_11:                              # %if.end19.thread36
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(rt_warn)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$fp, $zero
.LBB13_12:                              # %sw.bb50
	bnez	$a0, .LBB13_22
# %bb.13:                               # %sw.bb50
	ori	$a0, $zero, 100
	bge	$fp, $a0, .LBB13_22
# %bb.14:                               # %if.else57
	pcalau12i	$a0, %got_pc_hi20(scale)
	ld.d	$a0, $a0, %got_pc_lo12(scale)
	b	.LBB13_27
.LBB13_15:
	move	$a0, $zero
                                        # implicit-def: $r22
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB13_12
.LBB13_16:                              # %if.end19
	ori	$a1, $zero, 1
	beq	$s0, $a1, .LBB13_23
# %bb.17:                               # %if.end19
	bnez	$s0, .LBB13_28
# %bb.18:                               # %sw.bb20
	ori	$a1, $zero, 1
	slt	$a1, $a1, $fp
	or	$a1, $a1, $a0
	beqz	$a1, .LBB13_33
.LBB13_19:                              # %if.else25
	ori	$a1, $zero, 16
	blt	$a1, $fp, .LBB13_31
# %bb.20:                               # %if.else25
	bnez	$a0, .LBB13_31
# %bb.21:                               # %if.else29
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a0, $a0, %got_pc_lo12(i_base)
	b	.LBB13_27
.LBB13_22:                              # %if.then56
	pcalau12i	$a0, %got_pc_hi20(scale)
	ld.d	$a2, $a0, %got_pc_lo12(scale)
	ori	$a3, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 99
	st.w	$a3, $a2, 0
	b	.LBB13_30
.LBB13_23:                              # %sw.bb33
	slt	$a1, $a1, $fp
	or	$a1, $a1, $a0
	beqz	$a1, .LBB13_32
.LBB13_24:                              # %if.else39
	ori	$a2, $zero, 99
	blt	$a2, $fp, .LBB13_29
# %bb.25:                               # %if.else39
	bnez	$a0, .LBB13_29
# %bb.26:                               # %if.else46
	pcalau12i	$a0, %got_pc_hi20(o_base)
	ld.d	$a0, $a0, %got_pc_lo12(o_base)
.LBB13_27:                              # %if.end61
	st.w	$fp, $a0, 0
.LBB13_28:                              # %if.end61
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_29:                              # %if.then45
	pcalau12i	$a0, %got_pc_hi20(o_base)
	ld.d	$a3, $a0, %got_pc_lo12(o_base)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 99
	st.w	$a2, $a3, 0
.LBB13_30:                              # %if.then45
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_warn)
	jr	$t8
.LBB13_31:                              # %if.then28
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a2, $a0, %got_pc_lo12(i_base)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.w	$a1, $a2, 0
	b	.LBB13_35
.LBB13_32:                              # %if.then38
	pcalau12i	$a0, %got_pc_hi20(o_base)
	ld.d	$a1, $a0, %got_pc_lo12(o_base)
	ori	$a2, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB13_34
.LBB13_33:                              # %if.then24
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a1, $a0, %got_pc_lo12(i_base)
	ori	$a2, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB13_34:                              # %if.then24
	st.w	$a2, $a1, 0
.LBB13_35:                              # %if.then24
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_warn)
	jr	$t8
.Lfunc_end13:
	.size	store_var, .Lfunc_end13-store_var
                                        # -- End function
	.globl	store_array                     # -- Begin function store_array
	.p2align	5
	.type	store_array,@function
store_array:                            # @store_array
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s0, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB14_5
# %bb.1:                                # %while.body.i.preheader
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB14_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a3, 8
	move	$a5, $a4
	beqz	$a3, .LBB14_4
# %bb.3:                                # %while.body.i
                                        #   in Loop: Header=BB14_2 Depth=1
	addi.w	$a4, $a5, -1
	bltu	$a2, $a5, .LBB14_2
.LBB14_4:                               # %while.end.i
	ori	$a2, $zero, 2
	bltu	$a5, $a2, .LBB14_6
.LBB14_5:                               # %check_stack.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB14_6:                               # %if.end
	move	$fp, $a0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2048
	bgeu	$a2, $a0, .LBB14_8
.LBB14_7:                               # %if.then9
	pcalau12i	$a0, %got_pc_hi20(a_names)
	ld.d	$a0, $a0, %got_pc_lo12(a_names)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB14_8:                               # %lor.lhs.false3
	move	$a1, $a0
	move	$a0, $fp
	beqz	$a1, .LBB14_10
# %bb.9:                                # %if.else
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_12
	b	.LBB14_14
.LBB14_10:                              # %land.lhs.true
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_7
# %bb.11:
	move	$a1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_14
.LBB14_12:                              # %if.then12
	move	$fp, $a0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	st.d	$a1, $a2, 0
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 0
	beqz	$fp, .LBB14_14
# %bb.13:                               # %if.then.i9
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB14_14:                              # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	store_array, .Lfunc_end14-store_array
                                        # -- End function
	.globl	load_var                        # -- Begin function load_var
	.p2align	5
	.type	load_var,@function
load_var:                               # @load_var
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB15_5
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB15_4
# %bb.2:                                # %entry
	bnez	$a0, .LBB15_7
# %bb.3:                                # %sw.bb
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	ld.d	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a2, $a1, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(i_base)
	ld.d	$a1, $a1, %got_pc_lo12(i_base)
	b	.LBB15_6
.LBB15_4:                               # %sw.bb1
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	ld.d	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a2, $a1, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(o_base)
	ld.d	$a1, $a1, %got_pc_lo12(o_base)
	b	.LBB15_6
.LBB15_5:                               # %sw.bb3
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
	ld.d	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a2, $a1, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(scale)
	ld.d	$a1, $a1, %got_pc_lo12(scale)
.LBB15_6:                               # %sw.bb
	ld.d	$a3, $a2, 0
	ld.w	$a1, $a1, 0
	st.d	$a0, $s0, 0
	st.d	$a3, $s0, 8
	st.d	$s0, $a2, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(int2num)
	jr	$t8
.LBB15_7:                               # %sw.default
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$a1, $a1, %got_pc_lo12(variables)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	bnez	$a0, .LBB15_9
# %bb.8:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(_zero_)
	ld.d	$a0, $a0, %got_pc_lo12(_zero_)
.LBB15_9:                               # %sw.epilog
	ld.d	$fp, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$a1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a2, $a1, 0
	st.d	$a0, $s0, 0
	st.d	$a2, $s0, 8
	st.d	$s0, $a1, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	load_var, .Lfunc_end15-load_var
                                        # -- End function
	.globl	load_array                      # -- Begin function load_array
	.p2align	5
	.type	load_array,@function
load_array:                             # @load_array
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s1, 0
	beqz	$a1, .LBB16_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2048
	bgeu	$a2, $a0, .LBB16_4
.LBB16_2:                               # %if.then8
	pcalau12i	$a0, %got_pc_hi20(a_names)
	ld.d	$a0, $a0, %got_pc_lo12(a_names)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB16_3:                               # %check_stack.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB16_4:                               # %lor.lhs.false3
	move	$a1, $a0
	beqz	$a0, .LBB16_6
# %bb.5:                                # %if.else
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_8
	b	.LBB16_11
.LBB16_6:                               # %land.lhs.true
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_2
# %bb.7:
	move	$a1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_11
.LBB16_8:                               # %if.then11
	move	$fp, $a0
	ld.d	$s0, $s1, 0
	beqz	$s0, .LBB16_10
# %bb.9:                                # %if.then.i8
	ld.d	$a0, $s0, 8
	st.d	$a0, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %pop.exit
	ld.d	$fp, $fp, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_num)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	st.d	$s0, $s1, 0
.LBB16_11:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	load_array, .Lfunc_end16-load_array
                                        # -- End function
	.globl	decr_var                        # -- Begin function decr_var
	.p2align	5
	.type	decr_var,@function
decr_var:                               # @decr_var
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB17_7
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB17_5
# %bb.2:                                # %entry
	bnez	$a0, .LBB17_10
# %bb.3:                                # %sw.bb
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a0, $a0, %got_pc_lo12(i_base)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	bge	$a1, $a2, .LBB17_8
# %bb.4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB17_14
.LBB17_5:                               # %sw.bb1
	pcalau12i	$a0, %got_pc_hi20(o_base)
	ld.d	$a0, $a0, %got_pc_lo12(o_base)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	bge	$a1, $a2, .LBB17_8
# %bb.6:                                # %if.else5
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB17_14
.LBB17_7:                               # %sw.bb7
	pcalau12i	$a0, %got_pc_hi20(scale)
	ld.d	$a0, $a0, %got_pc_lo12(scale)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB17_13
.LBB17_8:                               # %if.then
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 0
.LBB17_9:                               # %sw.epilog
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_10:                              # %sw.default
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$a1, $a1, %got_pc_lo12(variables)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a1, $a2
	bnez	$a2, .LBB17_12
# %bb.11:                               # %get_var.exit
	alsl.d	$s0, $a0, $a1, 3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	beqz	$fp, .LBB17_9
.LBB17_12:                              # %if.then14
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a1, $a0, %got_pc_lo12(_one_)
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(bc_sub)
	jr	$t8
.LBB17_13:                              # %if.else11
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
.LBB17_14:                              # %if.else
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_warn)
	jr	$t8
.Lfunc_end17:
	.size	decr_var, .Lfunc_end17-decr_var
                                        # -- End function
	.globl	decr_array                      # -- Begin function decr_array
	.p2align	5
	.type	decr_array,@function
decr_array:                             # @decr_array
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s1, 0
	beqz	$a1, .LBB18_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2048
	bgeu	$a2, $a0, .LBB18_4
.LBB18_2:                               # %if.then8
	pcalau12i	$a0, %got_pc_hi20(a_names)
	ld.d	$a0, $a0, %got_pc_lo12(a_names)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB18_3:                               # %check_stack.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB18_4:                               # %lor.lhs.false3
	move	$a1, $a0
	beqz	$a0, .LBB18_9
# %bb.5:                                # %if.else
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_11
.LBB18_6:                               # %if.then12
	move	$fp, $a0
	ld.d	$s0, $s1, 0
	beqz	$s0, .LBB18_8
# %bb.7:                                # %if.then.i11
	ld.d	$a0, $s0, 8
	st.d	$a0, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %pop.exit
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a1, $a0, %got_pc_lo12(_one_)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(bc_sub)
	jr	$t8
.LBB18_9:                               # %land.lhs.true
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_2
# %bb.10:
	move	$a1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_6
.LBB18_11:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	decr_array, .Lfunc_end18-decr_array
                                        # -- End function
	.globl	incr_var                        # -- Begin function incr_var
	.p2align	5
	.type	incr_var,@function
incr_var:                               # @incr_var
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB19_7
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB19_5
# %bb.2:                                # %entry
	bnez	$a0, .LBB19_10
# %bb.3:                                # %sw.bb
	pcalau12i	$a0, %got_pc_hi20(i_base)
	ld.d	$a0, $a0, %got_pc_lo12(i_base)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 15
	bge	$a2, $a1, .LBB19_8
# %bb.4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB19_14
.LBB19_5:                               # %sw.bb1
	pcalau12i	$a0, %got_pc_hi20(o_base)
	ld.d	$a0, $a0, %got_pc_lo12(o_base)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 98
	bge	$a2, $a1, .LBB19_8
# %bb.6:                                # %if.else5
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB19_14
.LBB19_7:                               # %sw.bb7
	pcalau12i	$a0, %got_pc_hi20(scale)
	ld.d	$a0, $a0, %got_pc_lo12(scale)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 98
	blt	$a2, $a1, .LBB19_13
.LBB19_8:                               # %if.then
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
.LBB19_9:                               # %sw.epilog
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_10:                              # %sw.default
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$a1, $a1, %got_pc_lo12(variables)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a1, $a2
	bnez	$a2, .LBB19_12
# %bb.11:                               # %get_var.exit
	alsl.d	$s0, $a0, $a1, 3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	beqz	$fp, .LBB19_9
.LBB19_12:                              # %if.then14
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a1, $a0, %got_pc_lo12(_one_)
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(bc_add)
	jr	$t8
.LBB19_13:                              # %if.else11
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
.LBB19_14:                              # %if.else
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_warn)
	jr	$t8
.Lfunc_end19:
	.size	incr_var, .Lfunc_end19-incr_var
                                        # -- End function
	.globl	incr_array                      # -- Begin function incr_array
	.p2align	5
	.type	incr_array,@function
incr_array:                             # @incr_array
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s1, $a1, %got_pc_lo12(ex_stack)
	ld.d	$a1, $s1, 0
	beqz	$a1, .LBB20_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2048
	bgeu	$a2, $a0, .LBB20_4
.LBB20_2:                               # %if.then8
	pcalau12i	$a0, %got_pc_hi20(a_names)
	ld.d	$a0, $a0, %got_pc_lo12(a_names)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB20_3:                               # %check_stack.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB20_4:                               # %lor.lhs.false3
	move	$a1, $a0
	beqz	$a0, .LBB20_9
# %bb.5:                                # %if.else
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_11
.LBB20_6:                               # %if.then11
	move	$fp, $a0
	ld.d	$s0, $s1, 0
	beqz	$s0, .LBB20_8
# %bb.7:                                # %if.then.i9
	ld.d	$a0, $s0, 8
	st.d	$a0, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB20_8:                               # %pop.exit
	pcalau12i	$a0, %got_pc_hi20(_one_)
	ld.d	$a1, $a0, %got_pc_lo12(_one_)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a1, 0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(bc_add)
	jr	$t8
.LBB20_9:                               # %land.lhs.true
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(is_zero)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_2
# %bb.10:
	move	$a1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_6
.LBB20_11:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	incr_array, .Lfunc_end20-incr_array
                                        # -- End function
	.globl	auto_var                        # -- Begin function auto_var
	.p2align	5
	.type	auto_var,@function
auto_var:                               # @auto_var
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$fp, $a0
	blt	$a0, $a1, .LBB21_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$s0, $a1, %got_pc_lo12(variables)
	ld.d	$a1, $s0, 0
	slli.d	$s1, $fp, 3
	ldx.d	$a1, $a1, $s1
	move	$fp, $a0
	st.d	$a1, $a0, 8
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	stx.d	$fp, $a0, $s1
	b	.LBB21_3
.LBB21_2:                               # %if.else
	sub.w	$fp, $zero, $fp
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(arrays)
	ld.d	$a1, $a1, %got_pc_lo12(arrays)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $fp, 3
	ldx.d	$a3, $a1, $a2
	st.d	$a3, $a0, 16
	st.d	$zero, $a0, 0
	st.b	$zero, $a0, 8
	stx.d	$a0, $a1, $a2
.LBB21_3:                               # %if.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	auto_var, .Lfunc_end21-auto_var
                                        # -- End function
	.globl	free_a_tree                     # -- Begin function free_a_tree
	.p2align	5
	.type	free_a_tree,@function
free_a_tree:                            # @free_a_tree
# %bb.0:                                # %entry
	beqz	$a0, .LBB22_3
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	bge	$a0, $a1, .LBB22_4
# %bb.2:                                # %for.cond.preheader
	ld.d	$a0, $fp, 128
	addi.w	$s0, $a1, -1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 152
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 168
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 176
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 216
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 224
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 232
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 240
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	b	.LBB22_5
.LBB22_3:                               # %if.end12
	ret
.LBB22_4:                               # %for.body6.preheader
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 56
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 88
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 112
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 120
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
.LBB22_5:                               # %if.end
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end22:
	.size	free_a_tree, .Lfunc_end22-free_a_tree
                                        # -- End function
	.globl	pop_vars                        # -- Begin function pop_vars
	.p2align	5
	.type	pop_vars,@function
pop_vars:                               # @pop_vars
# %bb.0:                                # %entry
	beqz	$a0, .LBB23_12
# %bb.1:                                # %while.body.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(variables)
	ld.d	$s1, $a0, %got_pc_lo12(variables)
	pcalau12i	$a0, %got_pc_hi20(arrays)
	ld.d	$s2, $a0, %got_pc_lo12(arrays)
	ori	$s3, $zero, 1
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               # %if.end19.sink.split
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %if.end19
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$fp, $fp, 8
	beqz	$fp, .LBB23_11
.LBB23_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	blt	$a0, $s3, .LBB23_7
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a1, $s1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s0, $a1, $a2
	beqz	$s0, .LBB23_3
# %bb.6:                                # %if.then3
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a2, $s0, 8
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	b	.LBB23_2
	.p2align	4, , 16
.LBB23_7:                               # %if.else
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a1, $s2, 0
	sub.w	$a0, $zero, $a0
	slli.d	$a2, $a0, 3
	ldx.d	$s0, $a1, $a2
	beqz	$s0, .LBB23_3
# %bb.8:                                # %if.then9
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a2, $s0, 16
	ld.bu	$a3, $s0, 8
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	bnez	$a3, .LBB23_2
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB23_2
# %bb.10:                               # %if.then13
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a0, $a1, 0
	ld.h	$a1, $a1, 8
	pcaddu18i	$ra, %call36(free_a_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB23_2
.LBB23_11:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB23_12:                              # %while.end
	ret
.Lfunc_end23:
	.size	pop_vars, .Lfunc_end23-pop_vars
                                        # -- End function
	.globl	process_params                  # -- Begin function process_params
	.p2align	5
	.type	process_params,@function
process_params:                         # @process_params
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
	pcalau12i	$a2, %got_pc_hi20(functions)
	ld.d	$a2, $a2, %got_pc_lo12(functions)
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 168
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.d	$s3, $a1, 152
	move	$fp, $a0
	pcaddu18i	$ra, %call36(byte)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 58
	bne	$a0, $s5, .LBB24_3
.LBB24_1:                               # %while.end
	beqz	$s3, .LBB24_22
# %bb.2:                                # %if.then64
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
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
	pcaddu18i	$t8, %call36(rt_error)
	jr	$t8
.LBB24_3:                               # %while.body.preheader
	ori	$s2, $zero, 49
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(v_names)
	ld.d	$s7, $a1, %got_pc_lo12(v_names)
	pcalau12i	$a1, %got_pc_hi20(ex_stack)
	ld.d	$s8, $a1, %got_pc_lo12(ex_stack)
	pcalau12i	$a1, %got_pc_hi20(variables)
	ld.d	$a1, $a1, %got_pc_lo12(variables)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(arrays)
	ld.d	$s6, $a1, %got_pc_lo12(arrays)
	addi.w	$s4, $zero, -1
	ori	$s1, $zero, 48
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_4:                               # %if.end61
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$s3, $s3, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(byte)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB24_1
.LBB24_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB24_23
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.w	$s0, $s3, 0
	andi	$a0, $a0, 255
	beq	$a0, $s2, .LBB24_12
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB24_5 Depth=1
	bne	$a0, $s1, .LBB24_10
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_5 Depth=1
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB24_10
# %bb.9:                                # %if.then9
                                        #   in Loop: Header=BB24_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	ld.d	$a1, $s8, 0
	slli.d	$s1, $s0, 3
	ldx.d	$a2, $a2, $s1
	ld.d	$a3, $a1, 0
	move	$s0, $a0
	st.d	$a2, $a0, 8
	st.d	$a3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	stx.d	$s0, $a0, $s1
	ori	$s1, $zero, 48
	ld.d	$s0, $s8, 0
	bnez	$s0, .LBB24_17
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_10:                              # %if.else42
                                        #   in Loop: Header=BB24_5 Depth=1
	bge	$s4, $s0, .LBB24_15
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	move	$a1, $s7
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB24_16
	.p2align	4, , 16
.LBB24_12:                              # %land.lhs.true20
                                        #   in Loop: Header=BB24_5 Depth=1
	move	$a1, $s7
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blt	$s4, $s0, .LBB24_16
# %bb.13:                               # %if.then24
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(num2long)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s0, $a0, 0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_array_num)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB24_18
# %bb.14:                               # %if.then.i
                                        #   in Loop: Header=BB24_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 0
	slli.d	$s5, $s2, 3
	ldx.d	$a1, $a1, $s5
	move	$s2, $a0
	st.d	$a1, $a0, 8
	pcaddu18i	$ra, %call36(init_num)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $s3, 0
	stx.d	$s2, $a0, $s5
	ori	$s5, $zero, 58
	sub.w	$s2, $zero, $a1
	b	.LBB24_19
.LBB24_15:                              # %if.then46
                                        #   in Loop: Header=BB24_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(a_names)
	ld.d	$a1, $a0, %got_pc_lo12(a_names)
	sub.w	$s0, $zero, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB24_16:                              # %if.end55
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s0, 3
	ldx.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 16
	ld.d	$s0, $s8, 0
	beqz	$s0, .LBB24_4
.LBB24_17:                              # %if.then.i24
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $s0, 8
	st.d	$a0, $s8, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_num)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB24_4
.LBB24_18:                              # %if.else.i
                                        #   in Loop: Header=BB24_5 Depth=1
	sub.w	$s2, $zero, $s2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	slli.d	$a2, $s2, 3
	ldx.d	$a3, $a1, $a2
	st.d	$a3, $a0, 16
	st.d	$zero, $a0, 0
	st.b	$zero, $a0, 8
	stx.d	$a0, $a1, $a2
.LBB24_19:                              # %auto_var.exit
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a0, $s6, 0
	slli.d	$a1, $s1, 32
	srai.d	$a1, $a1, 29
	add.d	$a1, $a0, $a1
	bne	$s2, $s0, .LBB24_21
# %bb.20:                               # %if.then33
                                        #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 16
.LBB24_21:                              # %if.end
                                        #   in Loop: Header=BB24_5 Depth=1
	ori	$s1, $zero, 48
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s2, 3
	ldx.d	$a0, $a0, $a2
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 8
	st.d	$a1, $a0, 0
	ori	$s2, $zero, 49
	ld.d	$s0, $s8, 0
	bnez	$s0, .LBB24_17
	b	.LBB24_4
.LBB24_22:                              # %if.end65
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
.LBB24_23:                              # %if.else58
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	process_params, .Lfunc_end24-process_params
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(main)"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Stack error."
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"negative ibase, set to 2"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"negative obase, set to 2"
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"negative scale, set to 0"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ibase too small, set to 2"
	.size	.L.str.5, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ibase too large, set to 16"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"obase too small, set to 2"
	.size	.L.str.7, 26

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"obase too large, set to %d"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"scale too large, set to %d"
	.size	.L.str.9, 27

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Array %s subscript out of bounds."
	.size	.L.str.10, 34

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"ibase too small in --"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"obase too small in --"
	.size	.L.str.12, 22

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"scale can not be negative in -- "
	.size	.L.str.13, 33

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"ibase too big in ++"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"obase too big in ++"
	.size	.L.str.15, 20

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Scale too big in ++"
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Parameter type mismatch parameter %s."
	.size	.L.str.17, 38

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Parameter type mismatch, parameter %s."
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Parameter number mismatch"
	.size	.L.str.19, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
