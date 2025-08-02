	.file	"compl.c"
	.text
	.globl	complement                      # -- Begin function complement
	.p2align	5
	.type	complement,@function
complement:                             # @complement
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(debug)
	ld.d	$s4, $a1, %got_pc_lo12(debug)
	ld.bu	$a1, $s4, 0
	andi	$a1, $a1, 1
	move	$fp, $a0
	beqz	$a1, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(complement.compl_level)
	ld.w	$a2, $a0, %pc_lo12(complement.compl_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(complement.compl_level)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.end
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB0_8
# %bb.3:                                # %if.end10.i
	ld.d	$a0, $fp, 24
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB0_9
# %bb.4:                                # %for.cond.i.preheader
	addi.d	$s2, $fp, 24
	ori	$s1, $zero, 16
	.p2align	4, , 16
.LBB0_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s1
	beqz	$a0, .LBB0_10
# %bb.6:                                # %for.body.i
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	beqz	$a0, .LBB0_5
# %bb.7:                                # %if.then30.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	b	.LBB0_28
.LBB0_8:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB0_29
	b	.LBB0_31
.LBB0_9:                                # %if.then13.i
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB0_29
	b	.LBB0_31
.LBB0_10:                               # %for.end.i
	ld.w	$a0, $s0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB0_12
# %bb.11:                               # %cond.false.i
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_12:                               # %cond.end.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 16
	move	$s1, $a0
	beqz	$a4, .LBB0_23
# %bb.13:                               # %for.body56.i.preheader
	addi.d	$a0, $s1, 4
	addi.d	$a1, $s1, -28
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %for.cond52.i.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a4, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$a4, .LBB0_23
.LBB0_15:                               # %for.body56.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	ld.wu	$a5, $s1, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB0_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	alsl.d	$t0, $a7, $s1, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB0_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB0_21
.LBB0_18:                               # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	addi.d	$t1, $t1, -28
	alsl.d	$a6, $a6, $a1, 2
	move	$t2, $a7
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, 0
	xvld	$xr1, $t1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, -32
	addi.d	$a6, $a6, -32
	bnez	$t2, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB0_14
	.p2align	4, , 16
.LBB0_21:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s1, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB0_22:                               # %do.body.i
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB0_22
	b	.LBB0_14
.LBB0_23:                               # %for.end70.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s2, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_35
# %bb.24:                               # %if.end82.i
	beqz	$s1, .LBB0_26
# %bb.25:                               # %if.then84.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %if.end85.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_38
# %bb.27:                               # %if.then88.i
	ld.w	$a1, $s2, 0
.LBB0_28:                               # %if.then88.i
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_31
.LBB0_29:                               # %if.then4.i
	move	$a0, $a1
.LBB0_30:                               # %if.then47
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %if.then52
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %if.end54
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_34
# %bb.33:                               # %if.then57
	pcalau12i	$a0, %pc_hi20(complement.compl_level)
	ld.w	$a1, $a0, %pc_lo12(complement.compl_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(complement.compl_level)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB0_34:                               # %if.end58
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_35:                               # %if.then73.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_37
# %bb.36:                               # %if.then78.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %if.end79.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_32
.LBB0_38:                               # %if.else.i
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB0_42
# %bb.39:                               # %if.then101.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(map_cover_to_unate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_41
# %bb.40:                               # %if.then105.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %if.then110.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unate_compl)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(map_unate_to_cover)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB0_32
.LBB0_42:                               # %if.then1
	ld.w	$s1, $s2, 0
	ori	$s0, $zero, 8
	ori	$s3, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s3, .LBB0_44
# %bb.43:                               # %cond.false
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_44:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s1, $a0
	blt	$s2, $s3, .LBB0_46
# %bb.45:                               # %cond.false9
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB0_46:                               # %cond.end14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s3, 12
	ld.d	$a3, $fp, 8
	mul.w	$a4, $a1, $a0
	add.w	$a0, $a1, $a0
	sub.d	$a1, $a3, $fp
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	mul.d	$a0, $a1, $a0
	slt	$a6, $a0, $a4
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s1, .LBB0_48
# %bb.47:                               # %if.then40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %if.end41
	beqz	$s2, .LBB0_50
# %bb.49:                               # %if.then43
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %if.end44
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB0_30
	b	.LBB0_31
.Lfunc_end0:
	.size	complement, .Lfunc_end0-complement
                                        # -- End function
	.globl	simp_comp                       # -- Begin function simp_comp
	.p2align	5
	.type	simp_comp,@function
simp_comp:                              # @simp_comp
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
	pcalau12i	$a3, %got_pc_hi20(debug)
	ld.d	$s5, $a3, %got_pc_lo12(debug)
	ld.bu	$a3, $s5, 0
	andi	$a3, $a3, 1
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a3, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(simp_comp.simplify_level)
	ld.w	$a2, $a0, %pc_lo12(simp_comp.simplify_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	ld.d	$a2, $s1, 16
	beqz	$a2, .LBB1_8
# %bb.3:                                # %if.end11.i
	ld.d	$a0, $s1, 24
	ld.d	$s3, $s1, 0
	beqz	$a0, .LBB1_9
# %bb.4:                                # %for.cond.i.preheader
	addi.d	$s4, $s1, 24
	ori	$s2, $zero, 16
	.p2align	4, , 16
.LBB1_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s2
	beqz	$a0, .LBB1_10
# %bb.6:                                # %for.body.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	beqz	$a0, .LBB1_5
# %bb.7:                                # %if.then33.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s2, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	b	.LBB1_28
.LBB1_8:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s2, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	bnez	$a1, .LBB1_29
	b	.LBB1_30
.LBB1_9:                                # %if.then14.i
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	bnez	$a1, .LBB1_29
	b	.LBB1_30
.LBB1_10:                               # %for.end.i
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB1_12
# %bb.11:                               # %cond.false.i
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_12:                               # %cond.end.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 16
	move	$s2, $a0
	beqz	$a4, .LBB1_23
# %bb.13:                               # %for.body61.i.preheader
	addi.d	$a0, $s2, 4
	addi.d	$a1, $s2, -28
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %for.cond57.i.loopexit
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a4, $s4, 0
	addi.d	$s4, $s4, 8
	beqz	$a4, .LBB1_23
.LBB1_15:                               # %for.body61.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_22 Depth 2
	ld.wu	$a5, $s2, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB1_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t0, $a7, $s2, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB1_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB1_21
.LBB1_18:                               # %vector.ph
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	addi.d	$t1, $t1, -28
	alsl.d	$a6, $a6, $a1, 2
	move	$t2, $a7
	.p2align	4, , 16
.LBB1_19:                               # %vector.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, 0
	xvld	$xr1, $t1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, -32
	addi.d	$a6, $a6, -32
	bnez	$t2, .LBB1_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB1_14
	.p2align	4, , 16
.LBB1_21:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s2, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB1_22:                               # %do.body.i
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB1_22
	b	.LBB1_14
.LBB1_23:                               # %for.end75.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s6, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s6, 88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_34
# %bb.24:                               # %if.end133.i
	beqz	$s2, .LBB1_26
# %bb.25:                               # %if.then135.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %if.end136.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB1_50
# %bb.27:                               # %if.then139.i
	ld.w	$a1, $s6, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
.LBB1_28:                               # %if.then139.i
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB1_30
.LBB1_29:                               # %if.end47.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %if.end47.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_31:                               # %if.end47
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_33
# %bb.32:                               # %if.then50
	ld.d	$a0, $s0, 0
	pcalau12i	$s0, %pc_hi20(simp_comp.simplify_level)
	ld.w	$a2, $s0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(simp_comp.simplify_level)
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, %pc_lo12(simp_comp.simplify_level)
.LBB1_33:                               # %if.end51
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
.LBB1_34:                               # %if.then78.i
	ld.w	$s4, $s6, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $a1, .LBB1_36
# %bb.35:                               # %cond.false82.i
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_36:                               # %cond.end87.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	move	$s4, $a0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_38
# %bb.37:                               # %if.then96.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %if.end97.i
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a3, $a2, $a1
	ori	$a1, $zero, 1
	blt	$a3, $a1, .LBB1_49
# %bb.39:                               # %for.body103.i.preheader
	ld.d	$a2, $a0, 24
	alsl.d	$a3, $a3, $a2, 2
	addi.d	$a4, $s2, 4
	addi.d	$a5, $s2, -28
	ori	$a6, $zero, 8
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %do.end123.i
                                        #   in Loop: Header=BB1_41 Depth=1
	ld.w	$a7, $a0, 0
	alsl.d	$a2, $a7, $a2, 2
	bgeu	$a2, $a3, .LBB1_49
.LBB1_41:                               # %for.body103.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_48 Depth 2
	ld.wu	$a7, $a2, 0
	andi	$t0, $a7, 1023
	sltu	$t1, $zero, $t0
	sub.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	bltu	$a7, $a6, .LBB1_47
# %bb.42:                               # %vector.memcheck56
                                        #   in Loop: Header=BB1_41 Depth=1
	alsl.d	$t2, $t1, $a2, 2
	alsl.d	$t4, $t0, $a4, 2
	alsl.d	$t3, $t0, $a2, 2
	bgeu	$t2, $t4, .LBB1_44
# %bb.43:                               # %vector.memcheck56
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$t2, $t3, 4
	alsl.d	$t1, $t1, $s2, 2
	bltu	$t1, $t2, .LBB1_47
.LBB1_44:                               # %vector.ph70
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t1, $a7
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$t2, $t0, $t1
	alsl.d	$t0, $t0, $a5, 2
	addi.d	$t3, $t3, -28
	move	$t4, $t1
	.p2align	4, , 16
.LBB1_45:                               # %vector.body73
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t3, 0
	xvld	$xr1, $t0, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t0, $t0, -32
	addi.d	$t3, $t3, -32
	bnez	$t4, .LBB1_45
# %bb.46:                               # %middle.block82
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t0, $t2
	beq	$a7, $t1, .LBB1_40
	.p2align	4, , 16
.LBB1_47:                               # %do.body111.i.preheader
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$a7, $t0, 1
	alsl.d	$t1, $t0, $a2, 2
	alsl.d	$t0, $t0, $s2, 2
	.p2align	4, , 16
.LBB1_48:                               # %do.body111.i
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	ld.w	$t3, $t0, 0
	and	$t2, $t3, $t2
	st.w	$t2, $t1, 0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, -4
	bltu	$a1, $a7, .LBB1_48
	b	.LBB1_40
.LBB1_49:                               # %for.end127.i
	ld.d	$s1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$s1, $s2
	bnez	$s2, .LBB1_30
	b	.LBB1_31
.LBB1_50:                               # %if.else.i
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB1_52
# %bb.51:                               # %if.then154.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(map_cover_to_unate)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unate_compl)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(map_unate_to_cover)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB1_62
.LBB1_52:                               # %if.then1
	ld.w	$s2, $s6, 0
	ori	$s3, $zero, 8
	ori	$s7, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $s7, .LBB1_54
# %bb.53:                               # %cond.false
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_54:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s6, 0
	move	$s2, $a0
	blt	$s4, $s7, .LBB1_56
# %bb.55:                               # %cond.false9
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s3, $a0, 8
.LBB1_56:                               # %cond.end14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	move	$a0, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ld.d	$a2, $sp, 16
	st.d	$a0, $s0, 0
	move	$a0, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 8
	ld.w	$a2, $a0, 12
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	bge	$a1, $a2, .LBB1_58
# %bb.57:                               # %if.then29
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
.LBB1_58:                               # %if.end31
	beqz	$s2, .LBB1_60
# %bb.59:                               # %if.then33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_60:                               # %if.end34
	beqz	$s3, .LBB1_62
# %bb.61:                               # %if.then36
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_62:                               # %if.end37
	ld.d	$a1, $s1, 0
	bnez	$a1, .LBB1_29
	b	.LBB1_30
.Lfunc_end1:
	.size	simp_comp, .Lfunc_end1-simp_comp
                                        # -- End function
	.globl	simplify                        # -- Begin function simplify
	.p2align	5
	.type	simplify,@function
simplify:                               # @simplify
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
	pcalau12i	$a1, %got_pc_hi20(debug)
	ld.d	$s4, $a1, %got_pc_lo12(debug)
	ld.bu	$a1, $s4, 0
	andi	$a1, $a1, 1
	move	$fp, $a0
	beqz	$a1, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(simplify.simplify_level)
	ld.w	$a2, $a0, %pc_lo12(simplify.simplify_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(simplify.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB2_8
# %bb.3:                                # %if.end9.i
	ld.d	$a0, $fp, 24
	ld.d	$s1, $fp, 0
	beqz	$a0, .LBB2_9
# %bb.4:                                # %for.cond.i.preheader
	addi.d	$s2, $fp, 24
	ori	$s0, $zero, 16
	.p2align	4, , 16
.LBB2_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s0
	beqz	$a0, .LBB2_10
# %bb.6:                                # %for.body.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	beqz	$a0, .LBB2_5
# %bb.7:                                # %if.then30.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	b	.LBB2_28
.LBB2_8:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_9:                                # %if.then12.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	b	.LBB2_28
.LBB2_10:                               # %for.end.i
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB2_12
# %bb.11:                               # %cond.false.i
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_12:                               # %cond.end.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 16
	move	$s0, $a0
	beqz	$a4, .LBB2_23
# %bb.13:                               # %for.body57.i.preheader
	addi.d	$a0, $s0, 4
	addi.d	$a1, $s0, -28
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.cond53.i.loopexit
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a4, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$a4, .LBB2_23
.LBB2_15:                               # %for.body57.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_22 Depth 2
	ld.wu	$a5, $s0, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB2_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$t0, $a7, $s0, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB2_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB2_21
.LBB2_18:                               # %vector.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	addi.d	$t1, $t1, -28
	alsl.d	$a6, $a6, $a1, 2
	move	$t2, $a7
	.p2align	4, , 16
.LBB2_19:                               # %vector.body
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, 0
	xvld	$xr1, $t1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, -32
	addi.d	$a6, $a6, -32
	bnez	$t2, .LBB2_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB2_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s0, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB2_22:                               # %do.body.i
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB2_22
	b	.LBB2_14
.LBB2_23:                               # %for.end71.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s3, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_34
# %bb.24:                               # %if.end128.i
	beqz	$s0, .LBB2_26
# %bb.25:                               # %if.then130.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_26:                               # %if.end131.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_49
# %bb.27:                               # %if.then134.i
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
.LBB2_28:                               # %if.then134.i
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	beqz	$a1, .LBB2_30
.LBB2_29:                               # %if.end48.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %if.end48.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_31:                               # %if.end48
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_33
# %bb.32:                               # %if.then51
	pcalau12i	$a0, %pc_hi20(simplify.simplify_level)
	ld.w	$a1, $a0, %pc_lo12(simplify.simplify_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(simplify.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB2_33:                               # %if.end52
	move	$a0, $s1
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
.LBB2_34:                               # %if.then74.i
	ld.w	$s2, $s3, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB2_36
# %bb.35:                               # %cond.false78.i
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_36:                               # %cond.end83.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	move	$s2, $a0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_38
# %bb.37:                               # %if.then92.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_38:                               # %if.end93.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s1, 0
	mul.w	$a2, $a1, $a0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB2_63
# %bb.39:                               # %for.body100.i.preheader
	ld.d	$a1, $s1, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s0, 4
	addi.d	$a4, $s0, -28
	ori	$a5, $zero, 8
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %do.end120.i
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.w	$a6, $s1, 0
	alsl.d	$a1, $a6, $a1, 2
	bgeu	$a1, $a2, .LBB2_51
.LBB2_41:                               # %for.body100.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_48 Depth 2
	ld.wu	$a6, $a1, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a5, .LBB2_47
# %bb.42:                               # %vector.memcheck47
                                        #   in Loop: Header=BB2_41 Depth=1
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t3, $a7, $a3, 2
	alsl.d	$t2, $a7, $a1, 2
	bgeu	$t1, $t3, .LBB2_44
# %bb.43:                               # %vector.memcheck47
                                        #   in Loop: Header=BB2_41 Depth=1
	addi.d	$t1, $t2, 4
	alsl.d	$t0, $t0, $s0, 2
	bltu	$t0, $t1, .LBB2_47
.LBB2_44:                               # %vector.ph61
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a4, 2
	addi.d	$t2, $t2, -28
	move	$t3, $t0
	.p2align	4, , 16
.LBB2_45:                               # %vector.body64
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t2, 0
	xvld	$xr1, $a7, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB2_45
# %bb.46:                               # %middle.block73
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB2_40
	.p2align	4, , 16
.LBB2_47:                               # %do.body108.i.preheader
                                        #   in Loop: Header=BB2_41 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $a1, 2
	alsl.d	$a7, $a7, $s0, 2
	.p2align	4, , 16
.LBB2_48:                               # %do.body108.i
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	ld.w	$t2, $a7, 0
	and	$t1, $t2, $t1
	st.w	$t1, $t0, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a0, $a6, .LBB2_48
	b	.LBB2_40
.LBB2_49:                               # %if.else.i
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB2_52
# %bb.50:                               # %if.then148.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_51:
	move	$fp, $s0
	b	.LBB2_30
.LBB2_52:                               # %if.then1
	ld.w	$s0, $s3, 0
	ori	$s1, $zero, 8
	ori	$s5, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s5, .LBB2_54
# %bb.53:                               # %cond.false
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_54:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 0
	move	$s0, $a0
	blt	$s2, $s5, .LBB2_56
# %bb.55:                               # %cond.false9
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB2_56:                               # %cond.end14
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	sub.d	$a1, $a1, $fp
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	bge	$a1, $a0, .LBB2_58
# %bb.57:                               # %if.then30
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB2_58:                               # %if.end32
	beqz	$s0, .LBB2_60
# %bb.59:                               # %if.then34
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_60:                               # %if.end35
	beqz	$s2, .LBB2_62
# %bb.61:                               # %if.then37
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_62:                               # %if.end38
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_63:                               # %for.end124.i
	move	$fp, $s0
	bnez	$s0, .LBB2_30
	b	.LBB2_31
.Lfunc_end2:
	.size	simplify, .Lfunc_end2-simplify
                                        # -- End function
	.p2align	5                               # -- Begin function compl_cube
	.type	compl_cube,@function
compl_cube:                             # @compl_cube
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
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s2, $a1, %got_pc_lo12(cube)
	ld.d	$a1, $s2, 80
	ld.d	$fp, $a1, 56
	ld.d	$s3, $s2, 88
	ld.w	$a2, $s2, 4
	ld.w	$a1, $s2, 0
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 0
	ld.wu	$a2, $s3, 0
	move	$s0, $a0
	srli.d	$a0, $a1, 10
	andi	$a3, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 8
	st.w	$a2, $fp, 0
	bgeu	$a0, $a1, .LBB3_19
.LBB3_1:
	move	$a1, $a3
.LBB3_2:                                # %do.body.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $fp, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s3, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	andn	$a5, $a5, $a6
	st.w	$a5, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a0, .LBB3_3
.LBB3_4:                                # %for.cond.preheader
	ld.w	$a0, $s2, 4
	ori	$s4, $zero, 1
	blt	$a0, $s4, .LBB3_18
# %bb.5:                                # %for.body.lr.ph
	move	$s5, $zero
	addi.d	$a0, $s3, -28
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s7, $fp, -28
	ori	$s8, $zero, 8
	ori	$s6, $zero, 32
	xvrepli.b	$xr3, -1
	xvst	$xr3, $sp, 16                   # 32-byte Folded Spill
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB3_18
.LBB3_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
                                        #     Child Loop BB3_11 Depth 2
	ld.d	$a0, $s2, 72
	slli.d	$a1, $s5, 3
	ldx.d	$s1, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 16                   # 32-byte Folded Reload
	bnez	$a0, .LBB3_6
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	ld.d	$a0, $s0, 24
	addi.d	$a3, $a1, 1
	st.w	$a3, $s0, 12
	mul.w	$a1, $a1, $a2
	slli.d	$a5, $a1, 2
	ldx.wu	$a2, $a0, $a5
	ld.wu	$a4, $fp, 0
	srli.d	$a2, $a2, 10
	andi	$t0, $a4, 1023
	bstrins.d	$a4, $a2, 63, 10
	sltu	$a2, $zero, $t0
	sub.d	$a2, $t0, $a2
	addi.d	$a3, $a2, 1
	stx.w	$a4, $a0, $a5
	bgeu	$a3, $s8, .LBB3_12
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=1
	move	$a2, $t0
.LBB3_10:                               # %do.body22.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a3, $a2, 1
	slli.d	$a4, $a2, 2
	alsl.d	$a1, $a1, $a4, 2
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $a2, $s3, 2
	alsl.d	$a4, $a2, $s1, 2
	alsl.d	$a2, $a2, $fp, 2
	.p2align	4, , 16
.LBB3_11:                               # %do.body22
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a1, 0
	and	$a5, $a6, $a5
	andn	$a6, $a7, $a6
	or	$a5, $a6, $a5
	st.w	$a5, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, -4
	bltu	$s4, $a3, .LBB3_11
	b	.LBB3_6
.LBB3_12:                               # %vector.memcheck38
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a2, $a1, $a0, 2
	sub.d	$a4, $fp, $a2
	bltu	$a4, $s6, .LBB3_9
# %bb.13:                               # %vector.memcheck38
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a4, $s1, $a2
	bltu	$a4, $s6, .LBB3_9
# %bb.14:                               # %vector.memcheck38
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a2, $s3, $a2
	bltu	$a2, $s6, .LBB3_9
# %bb.15:                               # %vector.ph47
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a2, $t0, $a4
	alsl.d	$a5, $t0, $a5, 2
	add.d	$a5, $a0, $a5
	addi.d	$a5, $a5, -28
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a6, $t0, $a6, 2
	alsl.d	$a7, $t0, $s1, 2
	addi.d	$a7, $a7, -28
	alsl.d	$t0, $t0, $s7, 2
	move	$t1, $a4
	.p2align	4, , 16
.LBB3_16:                               # %vector.body50
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t0, 0
	xvld	$xr1, $a7, 0
	xvld	$xr2, $a6, 0
	xvand.v	$xr0, $xr1, $xr0
	xvxor.v	$xr1, $xr1, $xr3
	xvand.v	$xr1, $xr2, $xr1
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a5, 0
	addi.d	$t1, $t1, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB3_16
# %bb.17:                               # %middle.block61
                                        #   in Loop: Header=BB3_7 Depth=1
	beq	$a3, $a4, .LBB3_6
	b	.LBB3_10
.LBB3_18:                               # %for.end
	move	$a0, $s0
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
.LBB3_19:                               # %vector.memcheck
	sub.d	$a2, $s3, $fp
	ori	$a1, $zero, 32
	bltu	$a2, $a1, .LBB3_1
# %bb.20:                               # %vector.memcheck
	sub.d	$a2, $s1, $fp
	bltu	$a2, $a1, .LBB3_1
# %bb.21:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -28
	add.d	$a3, $fp, $a5
	add.d	$a4, $s1, $a5
	add.d	$a5, $s3, $a5
	xvrepli.b	$xr0, -1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a5, 0
	xvxor.v	$xr1, $xr1, $xr0
	xvand.v	$xr1, $xr2, $xr1
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB3_22
# %bb.23:                               # %middle.block
	bne	$a0, $a2, .LBB3_2
	b	.LBB3_4
.Lfunc_end3:
	.size	compl_cube, .Lfunc_end3-compl_cube
                                        # -- End function
	.p2align	5                               # -- Begin function compl_merge
	.type	compl_merge,@function
compl_merge:                            # @compl_merge
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(debug)
	ld.d	$a7, $a7, %got_pc_lo12(debug)
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ld.bu	$a7, $a7, 0
	andi	$a7, $a7, 1
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a7, .LBB4_2
# %bb.1:                                # %if.then
	ld.w	$a1, $s0, 12
	ld.w	$a2, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %if.end
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s0, 0
	mul.w	$a2, $a1, $a0
	ori	$a0, $zero, 1
	lu12i.w	$t4, 2
	blt	$a2, $a0, .LBB4_13
# %bb.3:                                # %for.body.preheader
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s1, 4
	addi.d	$a4, $s1, -28
	ori	$a5, $zero, 8
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %do.end
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a6, $a1, 0
	or	$a6, $a6, $t4
	st.w	$a6, $a1, 0
	ld.w	$a6, $s0, 0
	alsl.d	$a1, $a6, $a1, 2
	bgeu	$a1, $a2, .LBB4_13
.LBB4_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	ld.wu	$a6, $a1, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a5, .LBB4_11
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t3, $a7, $a3, 2
	alsl.d	$t2, $a7, $a1, 2
	bgeu	$t1, $t3, .LBB4_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$t1, $t2, 4
	alsl.d	$t0, $t0, $s1, 2
	bltu	$t0, $t1, .LBB4_11
.LBB4_8:                                # %vector.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a4, 2
	addi.d	$t2, $t2, -28
	move	$t3, $t0
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t2, 0
	xvld	$xr1, $a7, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB4_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB4_4
	.p2align	4, , 16
.LBB4_11:                               # %do.body.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $s1, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB4_12:                               # %do.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	and	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a0, $a6, .LBB4_12
	b	.LBB4_4
.LBB4_13:                               # %for.end
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	blt	$a1, $a0, .LBB4_24
# %bb.14:                               # %for.body31.preheader
	ld.d	$a0, $fp, 24
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a2, $s2, 4
	addi.d	$a3, $s2, -28
	ori	$a4, $zero, 8
	ori	$a5, $zero, 1
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %do.end50
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.w	$a6, $a0, 0
	or	$a6, $a6, $t4
	st.w	$a6, $a0, 0
	ld.w	$a6, $fp, 0
	alsl.d	$a0, $a6, $a0, 2
	bgeu	$a0, $a1, .LBB4_24
.LBB4_16:                               # %for.body31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_23 Depth 2
	ld.wu	$a6, $a0, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a4, .LBB4_22
# %bb.17:                               # %vector.memcheck196
                                        #   in Loop: Header=BB4_16 Depth=1
	alsl.d	$t1, $t0, $a0, 2
	alsl.d	$t3, $a7, $a2, 2
	alsl.d	$t2, $a7, $a0, 2
	bgeu	$t1, $t3, .LBB4_19
# %bb.18:                               # %vector.memcheck196
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$t1, $t2, 4
	alsl.d	$t0, $t0, $s2, 2
	bltu	$t0, $t1, .LBB4_22
.LBB4_19:                               # %vector.ph210
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a3, 2
	addi.d	$t2, $t2, -28
	move	$t3, $t0
	.p2align	4, , 16
.LBB4_20:                               # %vector.body213
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t2, 0
	xvld	$xr1, $a7, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB4_20
# %bb.21:                               # %middle.block222
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB4_15
	.p2align	4, , 16
.LBB4_22:                               # %do.body39.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $s2, 2
	alsl.d	$a7, $a7, $a0, 2
	.p2align	4, , 16
.LBB4_23:                               # %do.body39
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	and	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a5, $a6, .LBB4_23
	b	.LBB4_15
.LBB4_24:                               # %for.end57
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a1, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $a1, 80
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 72
	ld.d	$a0, $a0, 0
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a2, $s4, 3
	ldx.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(d1_order)
	ld.d	$s4, $a0, %got_pc_lo12(d1_order)
	ori	$a2, $zero, 8
	move	$a0, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a3, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s7, $s3, 0
	beqz	$s7, .LBB4_42
# %bb.25:                               # %for.end57
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 0
	beqz	$s5, .LBB4_42
# %bb.26:                               # %for.body.i.preheader
	addi.w	$s6, $zero, -1
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_27:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #     Child Loop BB4_37 Depth 2
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB4_41
# %bb.28:                               # %for.body.i
                                        #   in Loop: Header=BB4_27 Depth=1
	beqz	$a0, .LBB4_30
# %bb.29:                               # %for.body.i
                                        #   in Loop: Header=BB4_27 Depth=1
	beq	$a0, $s3, .LBB4_38
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_30:                               # %sw.bb4.i
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.wu	$a0, $s5, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$a0, $s5, 0
	ld.wu	$a0, $s7, 0
	andi	$a0, $a0, 1023
	sltu	$a2, $zero, $a0
	sub.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB4_36
# %bb.31:                               # %vector.memcheck225
                                        #   in Loop: Header=BB4_27 Depth=1
	alsl.d	$a5, $a2, $s7, 2
	alsl.d	$a3, $a0, $s5, 2
	addi.d	$a6, $a3, 4
	alsl.d	$a4, $a0, $s7, 2
	bgeu	$a5, $a6, .LBB4_33
# %bb.32:                               # %vector.memcheck225
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a5, $a4, 4
	alsl.d	$a2, $a2, $s5, 2
	bltu	$a2, $a5, .LBB4_36
.LBB4_33:                               # %vector.ph239
                                        #   in Loop: Header=BB4_27 Depth=1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a0, $a2
	addi.d	$a3, $a3, -28
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_34:                               # %vector.body242
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a3, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB4_34
# %bb.35:                               # %middle.block251
                                        #   in Loop: Header=BB4_27 Depth=1
	beq	$a1, $a2, .LBB4_38
	.p2align	4, , 16
.LBB4_36:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s5, 2
	alsl.d	$a0, $a0, $s7, 2
	.p2align	4, , 16
.LBB4_37:                               # %do.body.i
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bltu	$s3, $a1, .LBB4_37
.LBB4_38:                               # %do.end.i
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$s5, $s4, 8
	addi.d	$s4, $s4, 8
.LBB4_39:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_27 Depth=1
	beqz	$s7, .LBB4_42
.LBB4_40:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_27 Depth=1
	bnez	$s5, .LBB4_27
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_41:                               # %sw.bb2.i
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$s7, $s8, 8
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB4_40
.LBB4_42:                               # %compl_d1merge.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_44
# %bb.43:                               # %sw.bb
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s2
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(compl_lift_onset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(compl_lift_onset)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB4_82
.LBB4_44:                               # %sw.bb70
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s6, $a0, 32
	ld.d	$s7, $a0, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$s5, $a1, $a0
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB4_63
# %bb.45:                               # %for.body.i111.preheader
	addi.d	$a0, $s7, 4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s7, -28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_46:                               # %if.end40.i
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$s3, $s3, 8
	ld.d	$s4, $s3, 0
	beqz	$s4, .LBB4_63
.LBB4_47:                               # %for.body.i111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_51 Depth 2
                                        #       Child Loop BB4_53 Depth 3
                                        #     Child Loop BB4_59 Depth 2
                                        #     Child Loop BB4_62 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_46
# %bb.48:                               # %if.then.i
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_49:                               #   in Loop: Header=BB4_51 Depth=2
	move	$a2, $a3
.LBB4_50:                               # %do.end.i115
                                        #   in Loop: Header=BB4_51 Depth=2
	beqz	$a2, .LBB4_55
.LBB4_51:                               # %for.cond5.i
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_53 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_46
# %bb.52:                               # %for.body8.i
                                        #   in Loop: Header=BB4_51 Depth=2
	ld.wu	$a2, $s6, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_53:                               # %do.body.i113
                                        #   Parent Loop BB4_47 Depth=1
                                        #     Parent Loop BB4_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s6, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_50
# %bb.54:                               # %do.cond.i
                                        #   in Loop: Header=BB4_53 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s8, $a2, .LBB4_53
	b	.LBB4_49
	.p2align	4, , 16
.LBB4_55:                               # %cleanup.cont.i
                                        #   in Loop: Header=BB4_47 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB4_61
# %bb.56:                               # %vector.memcheck254
                                        #   in Loop: Header=BB4_47 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a4, 2
	alsl.d	$a4, $a1, $s4, 2
	bgeu	$a3, $a5, .LBB4_58
# %bb.57:                               # %vector.memcheck254
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $s7, 2
	bltu	$a2, $a3, .LBB4_61
.LBB4_58:                               # %vector.ph268
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_59:                               # %vector.body271
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB4_59
# %bb.60:                               # %middle.block280
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB4_46
	.p2align	4, , 16
.LBB4_61:                               # %do.body28.i.preheader
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s7, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB4_62:                               # %do.body28.i
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB4_62
	b	.LBB4_46
.LBB4_63:                               # %compl_lift.exit
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s2, $a0, 32
	ld.d	$s5, $a0, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB4_82
# %bb.64:                               # %for.body.i124.preheader
	addi.d	$s3, $s5, 4
	addi.d	$a0, $s5, -28
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_66
	.p2align	4, , 16
.LBB4_65:                               # %if.end40.i157
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$s7, $s7, 8
	ld.d	$s4, $s7, 0
	beqz	$s4, .LBB4_82
.LBB4_66:                               # %for.body.i124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_70 Depth 2
                                        #       Child Loop BB4_72 Depth 3
                                        #     Child Loop BB4_78 Depth 2
                                        #     Child Loop BB4_81 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_65
# %bb.67:                               # %if.then.i129
                                        #   in Loop: Header=BB4_66 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s6
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_70
	.p2align	4, , 16
.LBB4_68:                               #   in Loop: Header=BB4_70 Depth=2
	move	$a2, $a3
.LBB4_69:                               # %do.end.i146
                                        #   in Loop: Header=BB4_70 Depth=2
	beqz	$a2, .LBB4_74
.LBB4_70:                               # %for.cond5.i131
                                        #   Parent Loop BB4_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_72 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_65
# %bb.71:                               # %for.body8.i135
                                        #   in Loop: Header=BB4_70 Depth=2
	ld.wu	$a2, $s2, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_72:                               # %do.body.i138
                                        #   Parent Loop BB4_66 Depth=1
                                        #     Parent Loop BB4_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s2, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_69
# %bb.73:                               # %do.cond.i159
                                        #   in Loop: Header=BB4_72 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s8, $a2, .LBB4_72
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_74:                               # %cleanup.cont.i149
                                        #   in Loop: Header=BB4_66 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB4_80
# %bb.75:                               # %vector.memcheck283
                                        #   in Loop: Header=BB4_66 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a5, $a1, $s3, 2
	alsl.d	$a4, $a1, $s4, 2
	bgeu	$a3, $a5, .LBB4_77
# %bb.76:                               # %vector.memcheck283
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $s5, 2
	bltu	$a2, $a3, .LBB4_80
.LBB4_77:                               # %vector.ph297
                                        #   in Loop: Header=BB4_66 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_78:                               # %vector.body300
                                        #   Parent Loop BB4_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB4_78
# %bb.79:                               # %middle.block309
                                        #   in Loop: Header=BB4_66 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB4_65
	.p2align	4, , 16
.LBB4_80:                               # %do.body28.i150.preheader
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s5, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB4_81:                               # %do.body28.i150
                                        #   Parent Loop BB4_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB4_81
	b	.LBB4_65
.LBB4_82:                               # %if.end76
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.w	$a2, $fp, 12
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 24
	mul.w	$a3, $a2, $a1
	ori	$a1, $zero, 1
	blt	$a3, $a1, .LBB4_93
# %bb.83:                               # %for.body90.lr.ph
	ld.d	$a2, $s0, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a4, $zero, 7
	ori	$a5, $zero, 32
	lu12i.w	$t4, 2
	b	.LBB4_85
	.p2align	4, , 16
.LBB4_84:                               # %do.end103
                                        #   in Loop: Header=BB4_85 Depth=1
	ld.w	$a6, $s1, 12
	ld.w	$a7, $s0, 0
	ld.w	$t0, $s1, 0
	addi.d	$a6, $a6, 1
	st.w	$a6, $s1, 12
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a0, $t0, $a0, 2
	bgeu	$a2, $a3, .LBB4_94
.LBB4_85:                               # %for.body90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_88 Depth 2
                                        #     Child Loop BB4_92 Depth 2
	ld.wu	$a6, $a2, 0
	andi	$t1, $a6, 1023
	bltu	$t1, $a4, .LBB4_90
# %bb.86:                               # %for.body90
                                        #   in Loop: Header=BB4_85 Depth=1
	sub.d	$a6, $a2, $a0
	bltu	$a6, $a5, .LBB4_90
# %bb.87:                               # %vector.ph317
                                        #   in Loop: Header=BB4_85 Depth=1
	addi.d	$a7, $t1, 1
	andi	$t0, $a7, 2040
	sub.d	$a6, $t1, $t0
	alsl.d	$t2, $t1, $a2, 2
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -28
	addi.d	$t2, $t2, -28
	move	$t3, $t0
	.p2align	4, , 16
.LBB4_88:                               # %vector.body320
                                        #   Parent Loop BB4_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t2, 0
	xvst	$xr0, $t1, 0
	addi.d	$t3, $t3, -8
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB4_88
# %bb.89:                               # %middle.block327
                                        #   in Loop: Header=BB4_85 Depth=1
	beq	$a7, $t0, .LBB4_84
	b	.LBB4_91
	.p2align	4, , 16
.LBB4_90:                               #   in Loop: Header=BB4_85 Depth=1
	move	$a6, $t1
.LBB4_91:                               # %do.body94.preheader
                                        #   in Loop: Header=BB4_85 Depth=1
	addi.d	$a7, $a6, 1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB4_92:                               # %do.body94
                                        #   Parent Loop BB4_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	st.w	$t1, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -4
	bnez	$a7, .LBB4_92
	b	.LBB4_84
.LBB4_93:
	lu12i.w	$t4, 2
.LBB4_94:                               # %for.end112
	ld.w	$a2, $fp, 12
	ld.w	$a5, $fp, 0
	mul.w	$a2, $a5, $a2
	blt	$a2, $a1, .LBB4_107
# %bb.95:                               # %for.body122.lr.ph
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 7
	ori	$a4, $zero, 32
	b	.LBB4_98
	.p2align	4, , 16
.LBB4_96:                               # %do.end139
                                        #   in Loop: Header=BB4_98 Depth=1
	ld.w	$a6, $s1, 12
	ld.w	$a7, $s1, 0
	ld.w	$a5, $fp, 0
	addi.d	$a6, $a6, 1
	st.w	$a6, $s1, 12
	alsl.d	$a0, $a7, $a0, 2
.LBB4_97:                               # %for.inc146
                                        #   in Loop: Header=BB4_98 Depth=1
	alsl.d	$a1, $a5, $a1, 2
	bgeu	$a1, $a2, .LBB4_107
.LBB4_98:                               # %for.body122
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_102 Depth 2
                                        #     Child Loop BB4_106 Depth 2
	ld.wu	$a6, $a1, 0
	and	$a7, $a6, $t4
	beqz	$a7, .LBB4_97
# %bb.99:                               # %if.then126
                                        #   in Loop: Header=BB4_98 Depth=1
	andi	$t0, $a6, 1023
	bltu	$t0, $a3, .LBB4_104
# %bb.100:                              # %if.then126
                                        #   in Loop: Header=BB4_98 Depth=1
	sub.d	$a5, $a1, $a0
	bltu	$a5, $a4, .LBB4_104
# %bb.101:                              # %vector.ph336
                                        #   in Loop: Header=BB4_98 Depth=1
	addi.d	$a6, $t0, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t0, $a7
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t0, $t0, $a0, 2
	addi.d	$t0, $t0, -28
	addi.d	$t1, $t1, -28
	move	$t2, $a7
	.p2align	4, , 16
.LBB4_102:                              # %vector.body339
                                        #   Parent Loop BB4_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t1, 0
	xvst	$xr0, $t0, 0
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB4_102
# %bb.103:                              # %middle.block346
                                        #   in Loop: Header=BB4_98 Depth=1
	beq	$a6, $a7, .LBB4_96
	b	.LBB4_105
	.p2align	4, , 16
.LBB4_104:                              #   in Loop: Header=BB4_98 Depth=1
	move	$a5, $t0
.LBB4_105:                              # %do.body130.preheader
                                        #   in Loop: Header=BB4_98 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB4_106:                              # %do.body130
                                        #   Parent Loop BB4_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a5, 0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -4
	bnez	$a6, .LBB4_106
	b	.LBB4_96
.LBB4_107:                              # %for.end150
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_110
# %bb.108:                              # %if.then153
	ld.w	$a1, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_110
# %bb.109:                              # %if.then157
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
.LBB4_110:                              # %if.end159
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end4:
	.size	compl_merge, .Lfunc_end4-compl_merge
                                        # -- End function
	.p2align	5                               # -- Begin function compl_lift_onset
	.type	compl_lift_onset,@function
compl_lift_onset:                       # @compl_lift_onset
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
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB5_32
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a0
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $a0, 80
	ld.d	$a0, $a0, 72
	ld.d	$s2, $a1, 32
	slli.d	$a1, $a3, 3
	ldx.d	$a2, $a0, $a1
	addi.d	$a0, $s2, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $a2, $s2
	sltui	$a0, $a0, 32
	sltui	$a1, $a1, 32
	or	$s7, $a0, $a1
	addi.d	$s8, $s2, -28
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -28
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, -28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %do.end54
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s4, 0
	lu12i.w	$a1, 2
	or	$a0, $a0, $a1
	st.w	$a0, $s4, 0
.LBB5_3:                                # %if.end57
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$fp, $fp, 8
	ld.d	$s4, $fp, 0
	beqz	$s4, .LBB5_32
.LBB5_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_31 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB5_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s0, 0
	srli.d	$a0, $a0, 10
	andi	$a5, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a5
	sub.d	$a0, $a5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a2, $a0, 8
	or	$a2, $a2, $s7
	andi	$a2, $a2, 1
	st.w	$a1, $s2, 0
	beqz	$a2, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	move	$a1, $a5
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.ph72
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a5, $a2
	alsl.d	$a3, $a5, $s8, 2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	move	$a6, $a2
	.p2align	4, , 16
.LBB5_8:                                # %vector.body75
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, 0
	xvld	$xr1, $a4, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB5_8
# %bb.9:                                # %middle.block84
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a0, $a2, .LBB5_12
.LBB5_10:                               # %do.body.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s2, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a1, $a1, $s0, 2
	.p2align	4, , 16
.LBB5_11:                               # %do.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a3, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$s6, $a0, .LBB5_11
.LBB5_12:                               # %do.end
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a3, $s4, 0
	srli.d	$a0, $a0, 10
	andi	$a1, $a3, 1023
	bstrins.d	$a3, $a0, 63, 10
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a3, $s2, 0
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB5_18
# %bb.13:                               # %vector.memcheck41
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$a3, $a2, $s2, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a5, $a4, 4
	bgeu	$a3, $a5, .LBB5_15
# %bb.14:                               # %vector.memcheck41
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a2, $a2, $s4, 2
	bltu	$a2, $a3, .LBB5_18
.LBB5_15:                               # %vector.ph50
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	alsl.d	$a1, $a1, $s8, 2
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_16:                               # %vector.body53
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB5_16
# %bb.17:                               # %middle.block62
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB5_20
	.p2align	4, , 16
.LBB5_18:                               # %do.body23.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB5_19:                               # %do.body23
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s6, $a0, .LBB5_19
.LBB5_20:                               # %do.end34
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a0, $a1, $a0
	blt	$a0, $s6, .LBB5_24
# %bb.21:                               # %for.body37.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$s3, $s1, 24
	alsl.d	$s5, $a0, $s3, 2
	.p2align	4, , 16
.LBB5_22:                               # %for.body37
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
# %bb.23:                               # %for.inc
                                        #   in Loop: Header=BB5_22 Depth=2
	ld.w	$a0, $s1, 0
	alsl.d	$s3, $a0, $s3, 2
	bltu	$s3, $s5, .LBB5_22
.LBB5_24:                               # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	andi	$a4, $a0, 1023
	ori	$a0, $zero, 7
	bltu	$a4, $a0, .LBB5_29
# %bb.25:                               # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	sub.d	$a0, $s2, $s4
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB5_29
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a4, 1
	andi	$a2, $a1, 2040
	sub.d	$a0, $a4, $a2
	alsl.d	$a3, $a4, $s4, 2
	addi.d	$a3, $a3, -28
	alsl.d	$a4, $a4, $s8, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_27:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvst	$xr0, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB5_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a1, $a2, .LBB5_2
	b	.LBB5_30
.LBB5_29:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $a4
.LBB5_30:                               # %do.body46.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s4, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB5_31:                               # %do.body46
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bnez	$a1, .LBB5_31
	b	.LBB5_2
.LBB5_32:                               # %for.end58
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
.Lfunc_end5:
	.size	compl_lift_onset, .Lfunc_end5-compl_lift_onset
                                        # -- End function
	.type	complement.compl_level,@object  # @complement.compl_level
	.local	complement.compl_level
	.comm	complement.compl_level,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"COMPLEMENT"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"exit COMPLEMENT"
	.size	.L.str.1, 16

	.type	simp_comp.simplify_level,@object # @simp_comp.simplify_level
	.local	simp_comp.simplify_level
	.comm	simp_comp.simplify_level,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SIMPCOMP"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"exit SIMPCOMP (new)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"exit SIMPCOMP (compl)"
	.size	.L.str.4, 22

	.type	simplify.simplify_level,@object # @simplify.simplify_level
	.local	simplify.simplify_level
	.comm	simplify.simplify_level,4,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SIMPLIFY"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"exit SIMPLIFY"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"compl_merge: left %d, right %d\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s (cl)\n%s (cr)\nLeft is\n"
	.size	.L.str.8, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Result %d\n"
	.size	.L.str.10, 11

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Right is"
	.size	.Lstr, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d1_order
