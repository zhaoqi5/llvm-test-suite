	.file	"conflicts.c"
	.text
	.globl	initialize_conflicts            # -- Begin function initialize_conflicts
	.p2align	5
	.type	initialize_conflicts,@function
initialize_conflicts:                   # @initialize_conflicts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s0, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(tokensetsize)
	ld.d	$fp, $a1, %got_pc_lo12(tokensetsize)
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(conflicts)
	st.d	$a0, $a2, %pc_lo12(conflicts)
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(shiftset)
	st.d	$a0, $a2, %pc_lo12(shiftset)
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(lookaheadset)
	st.d	$a0, $a2, %pc_lo12(lookaheadset)
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(err_table)
	ld.w	$a2, $s0, 0
	st.d	$a0, $a1, %pc_lo12(err_table)
	pcalau12i	$a0, %pc_hi20(any_conflicts)
	ori	$a1, $zero, 1
	st.b	$zero, $a0, %pc_lo12(any_conflicts)
	blt	$a2, $a1, .LBB0_3
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_conflicts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB0_2
.LBB0_3:                                # %for.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	initialize_conflicts, .Lfunc_end0-initialize_conflicts
                                        # -- End function
	.globl	set_conflicts                   # -- Begin function set_conflicts
	.p2align	5
	.type	set_conflicts,@function
set_conflicts:                          # @set_conflicts
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
	pcalau12i	$a1, %got_pc_hi20(consistent)
	ld.d	$a1, $a1, %got_pc_lo12(consistent)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	ldx.bu	$a0, $a1, $a0
	bnez	$a0, .LBB1_43
# %bb.1:                                # %for.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(tokensetsize)
	ld.d	$s1, $a0, %got_pc_lo12(tokensetsize)
	ld.w	$a1, $s1, 0
	ori	$a0, $zero, 1
	pcalau12i	$s4, %pc_hi20(lookaheadset)
	blt	$a1, $a0, .LBB1_4
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $s4, %pc_lo12(lookaheadset)
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.w	$a1, $s1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	blt	$a2, $a1, .LBB1_3
.LBB1_4:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $fp, 3
	ldx.d	$a5, $a0, $a2
	beqz	$a5, .LBB1_10
# %bb.5:                                # %if.then6
	ld.h	$a2, $a5, 10
	ld.d	$a0, $s4, %pc_lo12(lookaheadset)
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB1_11
# %bb.6:                                # %for.body10.lr.ph
	pcalau12i	$a1, %got_pc_hi20(accessing_symbol)
	ld.d	$a1, $a1, %got_pc_lo12(accessing_symbol)
	ld.d	$a1, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(ntokens)
	ld.d	$a4, $a4, %got_pc_lo12(ntokens)
	addi.d	$a5, $a5, 12
	.p2align	4, , 16
.LBB1_7:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a5, 0
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	ld.w	$a7, $a4, 0
	bge	$a6, $a7, .LBB1_9
# %bb.8:                                # %if.end19
                                        #   in Loop: Header=BB1_7 Depth=1
	srai.d	$a7, $a6, 5
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $a0, $a7
	sll.w	$a6, $a3, $a6
	or	$a6, $t0, $a6
	stx.w	$a6, $a0, $a7
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 2
	bnez	$a2, .LBB1_7
.LBB1_9:                                # %if.end25.loopexit
	ld.w	$a1, $s1, 0
	b	.LBB1_11
.LBB1_10:                               # %for.end.if.end25_crit_edge
	ld.d	$a0, $s4, %pc_lo12(lookaheadset)
.LBB1_11:                               # %if.end25
	pcalau12i	$a2, %got_pc_hi20(lookaheads)
	ld.d	$a4, $a2, %got_pc_lo12(lookaheads)
	ld.d	$a2, $a4, 0
	alsl.d	$a3, $fp, $a2, 1
	slli.d	$s6, $fp, 1
	ld.h	$s2, $a3, 2
	ldx.h	$s0, $a2, $s6
	alsl.d	$s3, $a1, $a0, 2
	bge	$s0, $s2, .LBB1_20
# %bb.12:                               # %for.body35.preheader
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(rprec)
	ld.d	$s7, $a0, %got_pc_lo12(rprec)
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$s8, $a0, %got_pc_lo12(LAruleno)
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	pcalau12i	$a2, %got_pc_hi20(LA)
	ld.d	$s5, $a2, %got_pc_lo12(LA)
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_13:                               # %if.then49
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(resolve_sr_conflict)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
.LBB1_14:                               # %for.inc52
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s2, .LBB1_19
.LBB1_15:                               # %for.body35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	slli.d	$a2, $s0, 1
	ldx.h	$a2, $a1, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	beqz	$a2, .LBB1_14
# %bb.16:                               # %if.then41
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.w	$a3, $s1, 0
	ld.d	$a4, $s5, 0
	ld.d	$a2, $s4, %pc_lo12(lookaheadset)
	mul.d	$a3, $s0, $a3
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB1_17:                               # %while.cond
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a2, $s3, .LBB1_14
# %bb.18:                               # %while.body
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	and	$a4, $a5, $a4
	beqz	$a4, .LBB1_17
	b	.LBB1_13
.LBB1_19:                               # %for.end54.loopexit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.hu	$s0, $a0, $s6
.LBB1_20:                               # %for.end54
	ext.w.h	$a0, $s0
	bge	$a0, $s2, .LBB1_43
# %bb.21:                               # %for.body61.lr.ph
	ld.d	$a1, $s4, %pc_lo12(lookaheadset)
	bgeu	$a1, $s3, .LBB1_43
# %bb.22:                               # %for.body61.us.preheader
	addi.d	$a2, $a1, 4
	sltu	$a3, $a2, $s3
	maskeqz	$a4, $s3, $a3
	masknez	$a2, $a2, $a3
	or	$a3, $a4, $a2
	nor	$a2, $a1, $zero
	add.d	$a2, $a3, $a2
	sub.d	$a3, $a1, $a3
	addi.w	$a4, $zero, -4
	andn	$a3, $a4, $a3
	addi.d	$a3, $a3, 4
	add.d	$a4, $a1, $a3
	srli.d	$a5, $a2, 2
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 62, 4
	slli.d	$a6, $a7, 4
	slli.d	$a7, $a7, 6
	add.d	$t0, $a1, $a7
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	andi	$t1, $a5, 12
	bstrpick.d	$t0, $a5, 62, 2
	slli.d	$t2, $t0, 2
	slli.d	$t3, $t0, 4
	alsl.d	$t4, $t0, $a1, 4
	addi.d	$t0, $a1, 32
	sub.d	$t6, $zero, $t2
	pcalau12i	$t5, %got_pc_hi20(LA)
	ld.d	$t7, $t5, %got_pc_lo12(LA)
	ori	$t8, $zero, 11
	ori	$s0, $zero, 60
	ori	$s4, $zero, 1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %for.inc86.us
                                        #   in Loop: Header=BB1_24 Depth=1
	addi.w	$a0, $a0, 1
	beq	$a0, $s2, .LBB1_43
.LBB1_24:                               # %for.body61.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_42 Depth 2
	ld.w	$t5, $s1, 0
	ld.d	$s6, $t7, 0
	move	$s8, $zero
	mul.w	$s7, $t5, $a0
	alsl.d	$s5, $s7, $s6, 2
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %if.end76.us
                                        #   in Loop: Header=BB1_26 Depth=2
	addi.d	$s8, $s8, 4
	add.d	$t5, $a1, $s8
	bgeu	$t5, $s3, .LBB1_28
.LBB1_26:                               # %while.body68.us
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t5, $s5, $s8
	ldx.w	$ra, $a1, $s8
	and	$t5, $ra, $t5
	beqz	$t5, .LBB1_25
# %bb.27:                               # %if.then73.us
                                        #   in Loop: Header=BB1_26 Depth=2
	pcalau12i	$t5, %pc_hi20(conflicts)
	ld.d	$t5, $t5, %pc_lo12(conflicts)
	stx.b	$s4, $t5, $fp
	pcalau12i	$t5, %pc_hi20(any_conflicts)
	st.b	$s4, $t5, %pc_lo12(any_conflicts)
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_28:                               # %iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	bltu	$t8, $a2, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_24 Depth=1
	move	$s8, $a1
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_24 Depth=1
	add.d	$t5, $s6, $a3
	alsl.d	$t5, $s7, $t5, 2
	bgeu	$a1, $t5, .LBB1_32
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_24 Depth=1
	move	$s8, $a1
	bltu	$s5, $a4, .LBB1_42
.LBB1_32:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	bgeu	$a2, $s0, .LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_24 Depth=1
	move	$s8, $zero
	b	.LBB1_38
.LBB1_34:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_24 Depth=1
	addi.d	$s8, $s5, 32
	move	$ra, $a6
	move	$t5, $t0
	.p2align	4, , 16
.LBB1_35:                               # %vector.body
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s8, -32
	xvld	$xr1, $s8, 0
	xvld	$xr2, $t5, -32
	xvld	$xr3, $t5, 0
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	xvst	$xr0, $t5, -32
	xvst	$xr1, $t5, 0
	addi.d	$s8, $s8, 64
	addi.d	$ra, $ra, -16
	addi.d	$t5, $t5, 64
	bnez	$ra, .LBB1_35
# %bb.36:                               # %middle.block
                                        #   in Loop: Header=BB1_24 Depth=1
	beq	$a5, $a6, .LBB1_23
# %bb.37:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_24 Depth=1
	move	$s8, $a6
	beqz	$t1, .LBB1_41
.LBB1_38:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_24 Depth=1
	add.d	$s5, $s5, $t3
	slli.d	$t5, $s8, 2
	alsl.d	$t5, $s7, $t5, 2
	add.d	$t5, $s6, $t5
	alsl.d	$s6, $s8, $a1, 2
	add.d	$s7, $t6, $s8
	.p2align	4, , 16
.LBB1_39:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, 0
	vld	$vr1, $s6, 0
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $s6, 0
	addi.d	$t5, $t5, 16
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 16
	bnez	$s7, .LBB1_39
# %bb.40:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_24 Depth=1
	move	$s8, $t4
	bne	$a5, $t2, .LBB1_42
	b	.LBB1_23
.LBB1_41:                               #   in Loop: Header=BB1_24 Depth=1
	add.d	$s5, $s5, $a7
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               # %while.body81.us
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $s5, 0
	ld.w	$s6, $s8, 0
	addi.d	$s5, $s5, 4
	addi.d	$s7, $s8, 4
	or	$t5, $s6, $t5
	st.w	$t5, $s8, 0
	move	$s8, $s7
	bltu	$s7, $s3, .LBB1_42
	b	.LBB1_23
.LBB1_43:                               # %cleanup
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
.Lfunc_end1:
	.size	set_conflicts, .Lfunc_end1-set_conflicts
                                        # -- End function
	.globl	resolve_sr_conflict             # -- Begin function resolve_sr_conflict
	.p2align	5
	.type	resolve_sr_conflict,@function
resolve_sr_conflict:                    # @resolve_sr_conflict
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
	pcalau12i	$a2, %got_pc_hi20(ntokens)
	ld.d	$s2, $a2, %got_pc_lo12(ntokens)
	ld.w	$fp, $s2, 0
	move	$s1, $a1
	move	$s0, $a0
	slli.d	$a0, $fp, 1
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a6, $s0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	ori	$s4, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blt	$fp, $s4, .LBB2_43
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a1, $a0, %got_pc_lo12(LAruleno)
	pcalau12i	$a0, %got_pc_hi20(rprec)
	ld.d	$a0, $a0, %got_pc_lo12(rprec)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	move	$s6, $zero
	ld.d	$a0, $a0, 0
	slli.d	$a2, $s1, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ldx.h	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(LA)
	pcalau12i	$a3, %got_pc_hi20(tokensetsize)
	ld.d	$a3, $a3, %got_pc_lo12(tokensetsize)
	ld.d	$a2, $a2, %got_pc_lo12(LA)
	slli.d	$a1, $a1, 1
	ldx.h	$s8, $a0, $a1
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(lookaheadset)
	ld.d	$s0, $a2, %pc_lo12(lookaheadset)
	mul.w	$a0, $a0, $s1
	alsl.d	$s1, $a0, $a1, 2
	pcalau12i	$a0, %got_pc_hi20(sprec)
	ld.d	$s3, $a0, %got_pc_lo12(sprec)
	pcalau12i	$a0, %got_pc_hi20(verboseflag)
	ld.d	$fp, $a0, %got_pc_lo12(verboseflag)
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB2_4
.LBB2_2:                                # %if.end63.thread106
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $s1, 0
	and	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	move	$fp, $s8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_3:                                # %if.end74
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.w	$a0, $s7, 1
	sltui	$a1, $a0, 1
	alsl.d	$s1, $a1, $s1, 2
	alsl.d	$s0, $a1, $s0, 2
	sltu	$a1, $s4, $a0
	ld.w	$a2, $s2, 0
	masknez	$a3, $s4, $a1
	maskeqz	$a0, $a0, $a1
	addi.d	$s6, $s6, 1
	or	$s7, $a0, $a3
	bge	$s6, $a2, .LBB2_43
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
                                        #     Child Loop BB2_13 Depth 2
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	and	$a2, $a0, $a1
	and	$a2, $a2, $s7
	beqz	$a2, .LBB2_3
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $s3, 0
	slli.d	$s5, $s6, 1
	ldx.h	$a2, $a2, $s5
	beqz	$a2, .LBB2_3
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	bge	$a2, $s8, .LBB2_16
# %bb.7:                                # %if.then16
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $fp, 0
	beqz	$a1, .LBB2_9
# %bb.8:                                # %if.then18
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(foutput)
	pcalau12i	$a1, %got_pc_hi20(tags)
	ld.d	$a1, $a1, %got_pc_lo12(tags)
	ld.d	$a0, $a0, %got_pc_lo12(foutput)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$a3, $a2, $a3
	slli.d	$a2, $s6, 3
	ldx.d	$a4, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a5, $a2, %pc_lo12(.L.str)
	move	$a2, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
.LBB2_9:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a6, 3
	ldx.d	$a2, $a1, $a2
	andn	$a0, $a0, $s7
	st.w	$a0, $s0, 0
	beqz	$a2, .LBB2_3
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.h	$a0, $a2, 10
	blt	$a0, $s4, .LBB2_3
# %bb.11:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(accessing_symbol)
	ld.d	$a1, $a1, %got_pc_lo12(accessing_symbol)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 12
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %for.inc.i
                                        #   in Loop: Header=BB2_13 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 2
	beqz	$a0, .LBB2_3
.LBB2_13:                               # %for.body.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a2, 0
	beqz	$a3, .LBB2_12
# %bb.14:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB2_13 Depth=2
	slli.d	$a3, $a3, 1
	ldx.h	$a3, $a1, $a3
	bne	$s6, $a3, .LBB2_12
# %bb.15:                               # %if.then14.i
                                        #   in Loop: Header=BB2_13 Depth=2
	st.h	$zero, $a2, 0
	b	.LBB2_12
.LBB2_16:                               # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	bge	$s8, $a2, .LBB2_20
# %bb.17:                               # %if.then25
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_19
# %bb.18:                               # %if.then27
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(foutput)
	pcalau12i	$a1, %got_pc_hi20(tags)
	ld.d	$a1, $a1, %got_pc_lo12(tags)
	ld.d	$a0, $a0, %got_pc_lo12(foutput)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$a3, $a2, $a3
	slli.d	$a2, $s6, 3
	ldx.d	$a4, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a5, $a2, %pc_lo12(.L.str.1)
	move	$a2, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s1, 0
.LBB2_19:                               # %if.end28
                                        #   in Loop: Header=BB2_4 Depth=1
	andn	$a0, $a1, $s7
	st.w	$a0, $s1, 0
	b	.LBB2_3
.LBB2_20:                               # %if.else31
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s8, $fp
	pcalau12i	$a0, %got_pc_hi20(sassoc)
	ld.d	$fp, $a0, %got_pc_lo12(sassoc)
	ld.d	$a0, $fp, 0
	ldx.hu	$a0, $a0, $s5
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB2_27
# %bb.21:                               # %if.else31
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_25
# %bb.22:                               # %if.else31
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a0, $s4, .LBB2_30
# %bb.23:                               # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB2_30
# %bb.24:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	b	.LBB2_29
.LBB2_25:                               # %sw.bb38
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB2_30
# %bb.26:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a5, $a0, %pc_lo12(.L.str)
	b	.LBB2_29
.LBB2_27:                               # %sw.bb42
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB2_30
# %bb.28:                               #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
.LBB2_29:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(foutput)
	pcalau12i	$a1, %got_pc_hi20(tags)
	ld.d	$a1, $a1, %got_pc_lo12(tags)
	ld.d	$a0, $a0, %got_pc_lo12(foutput)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$a3, $a2, $a3
	slli.d	$a2, $s6, 3
	ldx.d	$a4, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
.LBB2_30:                               # %sw.epilog
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $fp, 0
	ldx.hu	$a2, $a3, $s5
	nor	$a0, $s7, $zero
	beq	$a2, $s4, .LBB2_2
# %bb.31:                               # %if.then51
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a4, $s0, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a5, $a1, $a5
	and	$a1, $a4, $a0
	st.w	$a1, $s0, 0
	move	$fp, $s8
	beqz	$a5, .LBB2_40
# %bb.32:                               # %if.then.i84
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.h	$a1, $a5, 10
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	blt	$a1, $s4, .LBB2_39
# %bb.33:                               # %for.body.lr.ph.i87
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a2, %got_pc_hi20(accessing_symbol)
	ld.d	$a2, $a2, %got_pc_lo12(accessing_symbol)
	ld.d	$a4, $a2, 0
	alsl.d	$a2, $s6, $a3, 1
	addi.d	$a3, $a5, 12
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.inc.i99
                                        #   in Loop: Header=BB2_35 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 2
	beqz	$a1, .LBB2_38
.LBB2_35:                               # %for.body.i90
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a3, 0
	beqz	$a5, .LBB2_34
# %bb.36:                               # %land.lhs.true.i94
                                        #   in Loop: Header=BB2_35 Depth=2
	slli.d	$a5, $a5, 1
	ldx.h	$a5, $a4, $a5
	bne	$s6, $a5, .LBB2_34
# %bb.37:                               # %if.then14.i102
                                        #   in Loop: Header=BB2_35 Depth=2
	st.h	$zero, $a3, 0
	b	.LBB2_34
.LBB2_38:                               # %if.end54.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.hu	$a2, $a2, 0
.LBB2_39:                               # %if.end54
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 2
	beq	$a2, $a1, .LBB2_3
	b	.LBB2_41
.LBB2_40:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	beq	$a2, $a1, .LBB2_3
.LBB2_41:                               # %if.end63
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $s1, 0
	and	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB2_3
# %bb.42:                               # %if.then69
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 2
	st.h	$s6, $a1, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_3
.LBB2_43:                               # %for.end
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 1
	bstrpick.d	$a0, $a0, 16, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	st.h	$a1, $s0, 0
	beqz	$a0, .LBB2_45
# %bb.44:                               # %if.then86
	sub.w	$s1, $a2, $s0
	move	$a0, $s1
	move	$fp, $a6
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(err_table)
	ld.d	$a1, $a1, %pc_lo12(err_table)
	slli.d	$a2, $fp, 3
	stx.d	$a0, $a1, $a2
	move	$a1, $s0
	move	$a2, $s1
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
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB2_45:                               # %if.else97
	pcalau12i	$a0, %pc_hi20(err_table)
	ld.d	$a0, $a0, %pc_lo12(err_table)
	slli.d	$a1, $a6, 3
	stx.d	$zero, $a0, $a1
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
.Lfunc_end2:
	.size	resolve_sr_conflict, .Lfunc_end2-resolve_sr_conflict
                                        # -- End function
	.globl	log_resolution                  # -- Begin function log_resolution
	.p2align	5
	.type	log_resolution,@function
log_resolution:                         # @log_resolution
# %bb.0:                                # %entry
	pcalau12i	$a4, %got_pc_hi20(LAruleno)
	ld.d	$a4, $a4, %got_pc_lo12(LAruleno)
	pcalau12i	$a5, %got_pc_hi20(foutput)
	pcalau12i	$a6, %got_pc_hi20(tags)
	ld.d	$a6, $a6, %got_pc_lo12(tags)
	ld.d	$a4, $a4, 0
	ld.d	$a7, $a5, %got_pc_lo12(foutput)
	slli.d	$a1, $a1, 1
	ld.d	$t0, $a6, 0
	ldx.h	$a5, $a4, $a1
	ld.d	$a6, $a7, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a4, $t0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a7, $a3
	move	$a2, $a0
	move	$a0, $a6
	move	$a3, $a5
	move	$a5, $a7
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end3:
	.size	log_resolution, .Lfunc_end3-log_resolution
                                        # -- End function
	.globl	flush_shift                     # -- Begin function flush_shift
	.p2align	5
	.type	flush_shift,@function
flush_shift:                            # @flush_shift
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(shift_table)
	ld.d	$a2, $a2, %got_pc_lo12(shift_table)
	ld.d	$a2, $a2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a2, $a0
	beqz	$a3, .LBB4_7
# %bb.1:                                # %if.then
	ld.h	$a0, $a3, 10
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_7
# %bb.2:                                # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(accessing_symbol)
	ld.d	$a2, $a2, %got_pc_lo12(accessing_symbol)
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a3, 12
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 2
	beqz	$a0, .LBB4_7
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a3, 0
	beqz	$a4, .LBB4_3
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a4, $a4, 1
	ldx.h	$a4, $a2, $a4
	bne	$a1, $a4, .LBB4_3
# %bb.6:                                # %if.then14
                                        #   in Loop: Header=BB4_4 Depth=1
	st.h	$zero, $a3, 0
	b	.LBB4_3
.LBB4_7:                                # %if.end18
	ret
.Lfunc_end4:
	.size	flush_shift, .Lfunc_end4-flush_shift
                                        # -- End function
	.globl	conflict_log                    # -- Begin function conflict_log
	.p2align	5
	.type	conflict_log,@function
conflict_log:                           # @conflict_log
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
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$a0, $a0, %got_pc_lo12(nstates)
	pcalau12i	$s1, %pc_hi20(src_total)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.w	$zero, $s1, %pc_lo12(src_total)
	pcalau12i	$s2, %pc_hi20(rrc_total)
	ori	$s3, $zero, 1
	st.w	$zero, $s2, %pc_lo12(rrc_total)
	blt	$a0, $s3, .LBB5_14
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	move	$s4, $zero
	move	$s5, $zero
	pcalau12i	$s6, %pc_hi20(conflicts)
	ld.d	$a2, $s6, %pc_lo12(conflicts)
	pcalau12i	$a1, %got_pc_hi20(lookaheads)
	ld.d	$s7, $a1, %got_pc_lo12(lookaheads)
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(tokensetsize)
	ld.d	$a1, $a1, %got_pc_lo12(tokensetsize)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(LA)
	ld.d	$a1, $a1, %got_pc_lo12(LA)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(rrc_count)
	pcalau12i	$s0, %pc_hi20(src_count)
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a1, $zero
.LBB5_3:                                # %count_rr_conflicts.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.w	$a0, $s0, %pc_lo12(src_count)
	ld.d	$a2, $s6, %pc_lo12(conflicts)
	add.d	$s4, $s4, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$s4, $s1, %pc_lo12(src_total)
	add.d	$s5, $s5, $a1
	st.w	$s5, $s2, %pc_lo12(rrc_total)
.LBB5_4:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB5_14
.LBB5_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_11 Depth 3
	ldx.bu	$a1, $a2, $fp
	beqz	$a1, .LBB5_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(count_sr_conflicts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	alsl.d	$a1, $fp, $a0, 1
	slli.d	$a2, $fp, 1
	ldx.h	$a4, $a0, $a2
	ld.h	$a0, $a1, 2
	sub.d	$a0, $a0, $a4
	st.w	$zero, $s8, %pc_lo12(rrc_count)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB5_2
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	blt	$a2, $s3, .LBB5_2
# %bb.8:                                # %for.cond7.preheader.lr.ph.i
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a5, $a1, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a6, $a1, 0
	move	$a3, $zero
	move	$a1, $zero
	mul.w	$a4, $a5, $a4
	alsl.d	$a4, $a4, $a6, 2
	slli.d	$a5, $a5, 2
	ori	$a6, $zero, 1
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %if.end20.us.i
                                        #   in Loop: Header=BB5_10 Depth=2
	slli.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	sltu	$t0, $s3, $a6
	masknez	$t1, $s3, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	addi.w	$a3, $a3, 1
	alsl.d	$a4, $a7, $a4, 2
	beq	$a3, $a2, .LBB5_3
.LBB5_10:                               # %for.cond7.preheader.us.i
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
	move	$a7, $zero
	move	$t0, $a4
	move	$t1, $a0
	.p2align	4, , 16
.LBB5_11:                               # %for.body10.us.i
                                        #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	and	$t2, $t2, $a6
	sltu	$t2, $zero, $t2
	add.w	$a7, $a7, $t2
	addi.w	$t1, $t1, -1
	add.d	$t0, $t0, $a5
	bnez	$t1, .LBB5_11
# %bb.12:                               # %for.cond7.for.end_crit_edge.us.i
                                        #   in Loop: Header=BB5_10 Depth=2
	bgeu	$s3, $a7, .LBB5_9
# %bb.13:                               # %if.then18.us.i
                                        #   in Loop: Header=BB5_10 Depth=2
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, %pc_lo12(rrc_count)
	b	.LBB5_9
.LBB5_14:                               # %for.end
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
	pcaddu18i	$t8, %call36(total_conflicts)
	jr	$t8
.Lfunc_end5:
	.size	conflict_log, .Lfunc_end5-conflict_log
                                        # -- End function
	.globl	count_sr_conflicts              # -- Begin function count_sr_conflicts
	.p2align	5
	.type	count_sr_conflicts,@function
count_sr_conflicts:                     # @count_sr_conflicts
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
	pcalau12i	$a1, %got_pc_hi20(shift_table)
	ld.d	$a1, $a1, %got_pc_lo12(shift_table)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a6, $a1, $a2
	pcalau12i	$a1, %pc_hi20(src_count)
	st.w	$zero, $a1, %pc_lo12(src_count)
	beqz	$a6, .LBB6_42
# %bb.1:                                # %for.cond.preheader
	pcalau12i	$a2, %got_pc_hi20(tokensetsize)
	ld.d	$a4, $a2, %got_pc_lo12(tokensetsize)
	ld.w	$a5, $a4, 0
	ori	$t0, $zero, 1
	pcalau12i	$a3, %pc_hi20(shiftset)
	pcalau12i	$a2, %pc_hi20(lookaheadset)
	blt	$a5, $t0, .LBB6_4
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a7, $a3, %pc_lo12(shiftset)
	ld.d	$t1, $a2, %pc_lo12(lookaheadset)
	move	$t2, $zero
	.p2align	4, , 16
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a7, 0
	st.w	$zero, $t1, 0
	ld.w	$a5, $a4, 0
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, 4
	blt	$t2, $a5, .LBB6_3
.LBB6_4:                                # %for.end
	ld.h	$a7, $a6, 10
	blt	$a7, $t0, .LBB6_11
# %bb.5:                                # %for.body8.lr.ph
	pcalau12i	$a5, %got_pc_hi20(accessing_symbol)
	ld.d	$a5, $a5, %got_pc_lo12(accessing_symbol)
	ld.d	$a5, $a5, 0
	ld.d	$t0, $a3, %pc_lo12(shiftset)
	pcalau12i	$t1, %got_pc_hi20(ntokens)
	ld.d	$t1, $t1, %got_pc_lo12(ntokens)
	addi.d	$a6, $a6, 12
	ori	$t2, $zero, 1
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_6:                                # %if.end23
                                        #   in Loop: Header=BB6_8 Depth=1
	srai.d	$t4, $t3, 5
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $t0, $t4
	sll.w	$t3, $t2, $t3
	or	$t3, $t5, $t3
	stx.w	$t3, $t0, $t4
.LBB6_7:                                # %for.inc26
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 2
	beqz	$a7, .LBB6_10
.LBB6_8:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t3, $a6, 0
	beqz	$t3, .LBB6_7
# %bb.9:                                # %if.end13
                                        #   in Loop: Header=BB6_8 Depth=1
	slli.d	$t3, $t3, 1
	ldx.h	$t3, $a5, $t3
	ld.w	$t4, $t1, 0
	blt	$t3, $t4, .LBB6_6
.LBB6_10:                               # %for.end28.loopexit
	ld.w	$a5, $a4, 0
.LBB6_11:                               # %for.end28
	pcalau12i	$a6, %got_pc_hi20(lookaheads)
	ld.d	$a6, $a6, %got_pc_lo12(lookaheads)
	ld.d	$a6, $a6, 0
	alsl.d	$a7, $a0, $a6, 1
	slli.d	$t0, $a0, 1
	ld.h	$a7, $a7, 2
	ld.d	$a0, $a2, %pc_lo12(lookaheadset)
	ldx.h	$t0, $a6, $t0
	slli.d	$a6, $a5, 2
	alsl.d	$a2, $a5, $a0, 2
	bge	$t0, $a7, .LBB6_31
# %bb.12:                               # %for.body38.lr.ph
	ori	$t1, $zero, 1
	blt	$a5, $t1, .LBB6_37
# %bb.13:                               # %for.body38.us.preheader
	pcalau12i	$t1, %got_pc_hi20(LA)
	ld.d	$t1, $t1, %got_pc_lo12(LA)
	ld.d	$t1, $t1, 0
	add.d	$t2, $a6, $a0
	addi.d	$t3, $a0, 4
	sltu	$t4, $t3, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t3, $t3, $t4
	or	$t3, $t2, $t3
	nor	$t2, $a0, $zero
	add.d	$t2, $t3, $t2
	sub.d	$t3, $a0, $t3
	addi.w	$t4, $zero, -4
	andn	$t3, $t4, $t3
	addi.d	$t4, $t3, 4
	add.d	$t3, $a0, $t4
	add.d	$t4, $t1, $t4
	srli.d	$t5, $t2, 2
	addi.d	$t5, $t5, 1
	bstrpick.d	$t6, $t5, 62, 4
	slli.d	$t7, $t6, 4
	slli.d	$t6, $t6, 6
	st.d	$t6, $sp, 24                    # 8-byte Folded Spill
	add.d	$t6, $a0, $t6
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	andi	$t6, $t5, 12
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$t6, $t5, 62, 2
	slli.d	$s0, $t6, 2
	slli.d	$s1, $t6, 4
	alsl.d	$s2, $t6, $a0, 4
	addi.d	$s3, $t1, 32
	addi.d	$fp, $a0, 32
	sub.d	$s5, $zero, $s0
	ori	$s6, $zero, 12
	ori	$s7, $zero, 60
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %while.cond.for.inc45_crit_edge.us
                                        #   in Loop: Header=BB6_15 Depth=1
	addi.w	$t0, $t0, 1
	beq	$t0, $a7, .LBB6_31
.LBB6_15:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
                                        #     Child Loop BB6_27 Depth 2
                                        #     Child Loop BB6_30 Depth 2
	ld.w	$t6, $a4, 0
	mul.w	$ra, $t6, $t0
	alsl.d	$s8, $ra, $t1, 2
	bgeu	$t2, $s6, .LBB6_17
# %bb.16:                               #   in Loop: Header=BB6_15 Depth=1
	move	$ra, $a0
	b	.LBB6_30
	.p2align	4, , 16
.LBB6_17:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_15 Depth=1
	alsl.d	$t6, $ra, $t4, 2
	bgeu	$a0, $t6, .LBB6_20
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_15 Depth=1
	bgeu	$s8, $t3, .LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_15 Depth=1
	move	$ra, $a0
	b	.LBB6_30
	.p2align	4, , 16
.LBB6_20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_15 Depth=1
	bgeu	$t2, $s7, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_15 Depth=1
	move	$s4, $zero
	b	.LBB6_26
.LBB6_22:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_15 Depth=1
	alsl.d	$t8, $ra, $s3, 2
	move	$t6, $t7
	move	$s4, $fp
	.p2align	4, , 16
.LBB6_23:                               # %vector.body
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvld	$xr2, $s4, -32
	xvld	$xr3, $s4, 0
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	addi.d	$t8, $t8, 64
	addi.d	$t6, $t6, -16
	addi.d	$s4, $s4, 64
	bnez	$t6, .LBB6_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB6_15 Depth=1
	beq	$t5, $t7, .LBB6_14
# %bb.25:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_15 Depth=1
	move	$s4, $t7
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	beqz	$t6, .LBB6_29
.LBB6_26:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_15 Depth=1
	add.d	$s8, $s8, $s1
	slli.d	$t6, $s4, 2
	alsl.d	$t6, $ra, $t6, 2
	add.d	$t6, $t1, $t6
	alsl.d	$t8, $s4, $a0, 2
	add.d	$s4, $s5, $s4
	.p2align	4, , 16
.LBB6_27:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, 0
	vld	$vr1, $t8, 0
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $t8, 0
	addi.d	$t6, $t6, 16
	addi.d	$s4, $s4, 4
	addi.d	$t8, $t8, 16
	bnez	$s4, .LBB6_27
# %bb.28:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_15 Depth=1
	move	$ra, $s2
	bne	$t5, $s0, .LBB6_30
	b	.LBB6_14
.LBB6_29:                               #   in Loop: Header=BB6_15 Depth=1
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	add.d	$s8, $s8, $t6
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_30:                               # %while.body.us
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $s8, 0
	ld.w	$t8, $ra, 0
	addi.d	$s8, $s8, 4
	addi.d	$s4, $ra, 4
	or	$t6, $t8, $t6
	st.w	$t6, $ra, 0
	move	$ra, $s4
	bltu	$s4, $a2, .LBB6_30
	b	.LBB6_14
.LBB6_31:                               # %for.end47
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB6_37
# %bb.32:                               # %iter.check91
	ld.d	$a3, $a3, %pc_lo12(shiftset)
	add.d	$a4, $a6, $a0
	addi.d	$a5, $a0, 4
	sltu	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	nor	$a5, $a0, $zero
	add.d	$a5, $a4, $a5
	ori	$a6, $zero, 11
	bgeu	$a6, $a5, .LBB6_35
# %bb.33:                               # %vector.memcheck81
	sub.d	$a4, $a0, $a4
	addi.w	$a6, $zero, -4
	andn	$a4, $a6, $a4
	addi.d	$a4, $a4, 4
	add.d	$a6, $a3, $a4
	bgeu	$a0, $a6, .LBB6_43
# %bb.34:                               # %vector.memcheck81
	add.d	$a4, $a0, $a4
	bgeu	$a3, $a4, .LBB6_43
.LBB6_35:
	move	$a5, $a0
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_36:                               # %while.body51
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a6, 0
	ld.w	$a4, $a5, 0
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a5, 4
	and	$a3, $a4, $a3
	st.w	$a3, $a5, 0
	move	$a5, $a7
	bltu	$a7, $a2, .LBB6_36
.LBB6_37:                               # %for.cond56.preheader
	pcalau12i	$a2, %got_pc_hi20(ntokens)
	ld.d	$a2, $a2, %got_pc_lo12(ntokens)
	ld.w	$a2, $a2, 0
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB6_42
# %bb.38:                               # %for.body59.preheader
	move	$a4, $zero
	ori	$a5, $zero, 1
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_39:                               # %if.end64
                                        #   in Loop: Header=BB6_40 Depth=1
	slli.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	sltu	$a7, $a3, $a5
	masknez	$t0, $a3, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	addi.w	$a2, $a2, -1
	alsl.d	$a0, $a6, $a0, 2
	beqz	$a2, .LBB6_42
.LBB6_40:                               # %for.body59
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	and	$a6, $a6, $a5
	beqz	$a6, .LBB6_39
# %bb.41:                               # %if.then62
                                        #   in Loop: Header=BB6_40 Depth=1
	addi.d	$a4, $a4, 1
	st.w	$a4, $a1, %pc_lo12(src_count)
	b	.LBB6_39
.LBB6_42:                               # %cleanup
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
.LBB6_43:                               # %vector.main.loop.iter.check93
	srli.d	$a4, $a5, 2
	ori	$a6, $zero, 60
	addi.d	$a4, $a4, 1
	bgeu	$a5, $a6, .LBB6_45
# %bb.44:
	move	$a7, $zero
	b	.LBB6_49
.LBB6_45:                               # %vector.ph94
	bstrpick.d	$a5, $a4, 62, 4
	slli.d	$a7, $a5, 4
	addi.d	$a5, $a3, 32
	addi.d	$a6, $a0, 32
	move	$t0, $a7
	.p2align	4, , 16
.LBB6_46:                               # %vector.body97
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvand.v	$xr0, $xr2, $xr0
	xvand.v	$xr1, $xr3, $xr1
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a5, $a5, 64
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 64
	bnez	$t0, .LBB6_46
# %bb.47:                               # %middle.block106
	beq	$a4, $a7, .LBB6_37
# %bb.48:                               # %vec.epilog.iter.check111
	andi	$a5, $a4, 12
	beqz	$a5, .LBB6_52
.LBB6_49:                               # %vec.epilog.ph110
	bstrpick.d	$a6, $a4, 62, 2
	slli.d	$t0, $a6, 2
	alsl.d	$a5, $a6, $a0, 4
	alsl.d	$a6, $a6, $a3, 4
	alsl.d	$a3, $a7, $a3, 2
	alsl.d	$t1, $a7, $a0, 2
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB6_50:                               # %vec.epilog.vector.body116
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vld	$vr1, $t1, 0
	vand.v	$vr0, $vr1, $vr0
	vst	$vr0, $t1, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	bnez	$a7, .LBB6_50
# %bb.51:                               # %vec.epilog.middle.block125
	bne	$a4, $t0, .LBB6_36
	b	.LBB6_37
.LBB6_52:
	alsl.d	$a5, $a7, $a0, 2
	alsl.d	$a6, $a7, $a3, 2
	b	.LBB6_36
.Lfunc_end6:
	.size	count_sr_conflicts, .Lfunc_end6-count_sr_conflicts
                                        # -- End function
	.globl	count_rr_conflicts              # -- Begin function count_rr_conflicts
	.p2align	5
	.type	count_rr_conflicts,@function
count_rr_conflicts:                     # @count_rr_conflicts
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(lookaheads)
	ld.d	$a1, $a1, %got_pc_lo12(lookaheads)
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a0, $a1, 1
	slli.d	$a0, $a0, 1
	ldx.h	$a5, $a1, $a0
	ld.h	$a3, $a2, 2
	pcalau12i	$a0, %pc_hi20(rrc_count)
	sub.d	$a1, $a3, $a5
	ori	$a2, $zero, 2
	st.w	$zero, $a0, %pc_lo12(rrc_count)
	blt	$a1, $a2, .LBB7_9
# %bb.1:                                # %if.end
	pcalau12i	$a2, %got_pc_hi20(ntokens)
	ld.d	$a2, $a2, %got_pc_lo12(ntokens)
	ld.w	$a2, $a2, 0
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB7_9
# %bb.2:                                # %for.cond7.preheader.lr.ph
	bge	$a5, $a3, .LBB7_9
# %bb.3:                                # %for.cond7.preheader.us.preheader
	pcalau12i	$a3, %got_pc_hi20(tokensetsize)
	ld.d	$a3, $a3, %got_pc_lo12(tokensetsize)
	pcalau12i	$a4, %got_pc_hi20(LA)
	ld.d	$a4, $a4, %got_pc_lo12(LA)
	ld.w	$a6, $a3, 0
	ld.d	$a7, $a4, 0
	move	$a3, $zero
	move	$a4, $zero
	mul.w	$a5, $a6, $a5
	alsl.d	$a5, $a5, $a7, 2
	slli.d	$a6, $a6, 2
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %if.end20.us
                                        #   in Loop: Header=BB7_5 Depth=1
	slli.w	$t0, $t0, 1
	sltui	$t1, $t0, 1
	sltu	$t2, $a7, $t0
	masknez	$t3, $a7, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t3
	addi.w	$a3, $a3, 1
	alsl.d	$a5, $t1, $a5, 2
	beq	$a3, $a2, .LBB7_9
.LBB7_5:                                # %for.cond7.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	move	$t1, $zero
	move	$t2, $a5
	move	$t3, $a1
	.p2align	4, , 16
.LBB7_6:                                # %for.body10.us
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	and	$t4, $t4, $t0
	sltu	$t4, $zero, $t4
	add.w	$t1, $t1, $t4
	addi.w	$t3, $t3, -1
	add.d	$t2, $t2, $a6
	bnez	$t3, .LBB7_6
# %bb.7:                                # %for.cond7.for.end_crit_edge.us
                                        #   in Loop: Header=BB7_5 Depth=1
	bgeu	$a7, $t1, .LBB7_4
# %bb.8:                                # %if.then18.us
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, %pc_lo12(rrc_count)
	b	.LBB7_4
.LBB7_9:                                # %cleanup
	ret
.Lfunc_end7:
	.size	count_rr_conflicts, .Lfunc_end7-count_rr_conflicts
                                        # -- End function
	.globl	total_conflicts                 # -- Begin function total_conflicts
	.p2align	5
	.type	total_conflicts,@function
total_conflicts:                        # @total_conflicts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(src_total)
	ld.w	$a0, $s3, %pc_lo12(src_total)
	pcalau12i	$a1, %pc_hi20(expected_conflicts)
	ld.w	$a1, $a1, %pc_lo12(expected_conflicts)
	pcalau12i	$s2, %pc_hi20(rrc_total)
	bne	$a0, $a1, .LBB8_3
# %bb.1:                                # %entry
	ld.w	$a0, $s2, %pc_lo12(rrc_total)
	bnez	$a0, .LBB8_3
# %bb.2:                                # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_3:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %got_pc_hi20(infile)
	ld.d	$a0, $a0, %got_pc_lo12(infile)
	ld.d	$fp, $s1, 0
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, %pc_lo12(src_total)
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB8_12
# %bb.4:                                # %if.else
	ori	$a0, $zero, 2
	bge	$a2, $a0, .LBB8_13
.LBB8_5:                                # %if.end11
	ld.w	$a0, $s3, %pc_lo12(src_total)
	ld.w	$a2, $s2, %pc_lo12(rrc_total)
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB8_7
# %bb.6:                                # %if.end11
	bge	$a2, $fp, .LBB8_10
.LBB8_7:                                # %if.end17
	beq	$a2, $fp, .LBB8_11
.LBB8_8:                                # %if.else21
	ori	$a0, $zero, 2
	bge	$a2, $a0, .LBB8_14
.LBB8_9:                                # %if.end26
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.LBB8_10:                               # %if.then15
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, %pc_lo12(rrc_total)
	bne	$a2, $fp, .LBB8_8
.LBB8_11:                               # %if.then19
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_9
.LBB8_12:                               # %if.then5
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_13:                               # %if.then8
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_14:                               # %if.then23
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_9
.Lfunc_end8:
	.size	total_conflicts, .Lfunc_end8-total_conflicts
                                        # -- End function
	.globl	verbose_conflict_log            # -- Begin function verbose_conflict_log
	.p2align	5
	.type	verbose_conflict_log,@function
verbose_conflict_log:                   # @verbose_conflict_log
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
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$a0, $a0, %got_pc_lo12(nstates)
	pcalau12i	$s6, %pc_hi20(src_total)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.w	$zero, $s6, %pc_lo12(src_total)
	pcalau12i	$s7, %pc_hi20(rrc_total)
	ori	$s8, $zero, 1
	st.w	$zero, $s7, %pc_lo12(rrc_total)
	blt	$a0, $s8, .LBB9_25
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	pcalau12i	$s4, %pc_hi20(conflicts)
	ld.d	$a1, $s4, %pc_lo12(conflicts)
	pcalau12i	$s1, %pc_hi20(rrc_count)
	pcalau12i	$a2, %got_pc_hi20(lookaheads)
	ld.d	$s2, $a2, %got_pc_lo12(lookaheads)
	pcalau12i	$s5, %pc_hi20(src_count)
	pcalau12i	$a2, %got_pc_hi20(foutput)
	ld.d	$s3, $a2, %got_pc_lo12(foutput)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$s0, $a2, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	pcalau12i	$a3, %got_pc_hi20(ntokens)
	ld.d	$a3, $a3, %got_pc_lo12(ntokens)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(tokensetsize)
	ld.d	$a3, $a3, %got_pc_lo12(tokensetsize)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_2:                                # %if.then15
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %if.end22
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(conflicts)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB9_4:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB9_25
.LBB9_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_11 Depth 3
	ldx.bu	$a2, $a1, $fp
	beqz	$a2, .LBB9_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(count_sr_conflicts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	alsl.d	$a1, $fp, $a0, 1
	slli.d	$a2, $fp, 1
	ldx.h	$a4, $a0, $a2
	ld.h	$a0, $a1, 2
	sub.d	$a0, $a0, $a4
	st.w	$zero, $s1, %pc_lo12(rrc_count)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB9_14
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	blt	$a1, $s8, .LBB9_14
# %bb.8:                                # %for.cond7.preheader.lr.ph.i
                                        #   in Loop: Header=BB9_5 Depth=1
	pcalau12i	$a2, %got_pc_hi20(LA)
	ld.d	$a2, $a2, %got_pc_lo12(LA)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a5, $a3, 0
	ld.d	$a6, $a2, 0
	move	$a3, $zero
	move	$a2, $zero
	mul.w	$a4, $a5, $a4
	alsl.d	$a4, $a4, $a6, 2
	slli.d	$a5, $a5, 2
	ori	$a6, $zero, 1
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                # %if.end20.us.i
                                        #   in Loop: Header=BB9_10 Depth=2
	slli.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	sltu	$t0, $s8, $a6
	masknez	$t1, $s8, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	addi.w	$a3, $a3, 1
	alsl.d	$a4, $a7, $a4, 2
	beq	$a3, $a1, .LBB9_15
.LBB9_10:                               # %for.cond7.preheader.us.i
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_11 Depth 3
	move	$a7, $zero
	move	$t0, $a4
	move	$t1, $a0
	.p2align	4, , 16
.LBB9_11:                               # %for.body10.us.i
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	and	$t2, $t2, $a6
	sltu	$t2, $zero, $t2
	add.w	$a7, $a7, $t2
	addi.w	$t1, $t1, -1
	add.d	$t0, $t0, $a5
	bnez	$t1, .LBB9_11
# %bb.12:                               # %for.cond7.for.end_crit_edge.us.i
                                        #   in Loop: Header=BB9_10 Depth=2
	bgeu	$s8, $a7, .LBB9_9
# %bb.13:                               # %if.then18.us.i
                                        #   in Loop: Header=BB9_10 Depth=2
	addi.d	$a2, $a2, 1
	st.w	$a2, $s1, %pc_lo12(rrc_count)
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_14:                               #   in Loop: Header=BB9_5 Depth=1
	move	$a2, $zero
.LBB9_15:                               # %count_rr_conflicts.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $s5, %pc_lo12(src_count)
	ld.w	$a1, $s6, %pc_lo12(src_total)
	ld.w	$a3, $s7, %pc_lo12(rrc_total)
	add.d	$a1, $a1, $a0
	ld.d	$a0, $s3, 0
	st.w	$a1, $s6, %pc_lo12(src_total)
	add.d	$a1, $a3, $a2
	st.w	$a1, $s7, %pc_lo12(rrc_total)
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, %pc_lo12(src_count)
	bne	$a2, $s8, .LBB9_17
# %bb.16:                               # %if.then3
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB9_19
	.p2align	4, , 16
.LBB9_17:                               # %if.else
                                        #   in Loop: Header=BB9_5 Depth=1
	ori	$a0, $zero, 2
	blt	$a2, $a0, .LBB9_19
# %bb.18:                               # %if.then6
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB9_19:                               # %if.end8
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $s5, %pc_lo12(src_count)
	ld.w	$a2, $s1, %pc_lo12(rrc_count)
	blt	$a0, $s8, .LBB9_22
# %bb.20:                               # %if.end8
                                        #   in Loop: Header=BB9_5 Depth=1
	blt	$a2, $s8, .LBB9_22
# %bb.21:                               # %if.then11
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, %pc_lo12(rrc_count)
.LBB9_22:                               # %if.end13
                                        #   in Loop: Header=BB9_5 Depth=1
	beq	$a2, $s8, .LBB9_2
# %bb.23:                               # %if.else17
                                        #   in Loop: Header=BB9_5 Depth=1
	ori	$a0, $zero, 2
	blt	$a2, $a0, .LBB9_3
# %bb.24:                               # %if.then19
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_25:                               # %for.end
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
	pcaddu18i	$t8, %call36(total_conflicts)
	jr	$t8
.Lfunc_end9:
	.size	verbose_conflict_log, .Lfunc_end9-verbose_conflict_log
                                        # -- End function
	.globl	print_reductions                # -- Begin function print_reductions
	.p2align	5
	.type	print_reductions,@function
print_reductions:                       # @print_reductions
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
	pcalau12i	$a1, %got_pc_hi20(tokensetsize)
	ld.d	$t7, $a1, %got_pc_lo12(tokensetsize)
	ld.w	$a2, $t7, 0
	ori	$a3, $zero, 1
	pcalau12i	$a1, %pc_hi20(shiftset)
	blt	$a2, $a3, .LBB10_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a1, %pc_lo12(shiftset)
	move	$a3, $zero
	.p2align	4, , 16
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a4, $t7, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	blt	$a3, $a4, .LBB10_2
.LBB10_3:                               # %for.end
	pcalau12i	$a2, %got_pc_hi20(shift_table)
	ld.d	$a2, $a2, %got_pc_lo12(shift_table)
	ld.d	$a2, $a2, 0
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB10_10
# %bb.4:                                # %if.then
	ld.h	$a3, $a2, 10
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB10_10
# %bb.5:                                # %for.body6.lr.ph
	pcalau12i	$a5, %got_pc_hi20(accessing_symbol)
	ld.d	$a5, $a5, %got_pc_lo12(accessing_symbol)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a1, %pc_lo12(shiftset)
	pcalau12i	$a7, %got_pc_hi20(ntokens)
	ld.d	$a7, $a7, %got_pc_lo12(ntokens)
	pcalau12i	$t0, %got_pc_hi20(error_token_number)
	ld.d	$t0, $t0, %got_pc_lo12(error_token_number)
	move	$t2, $zero
	addi.d	$t1, $a2, 12
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               # %for.inc27
                                        #   in Loop: Header=BB10_7 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$t1, $t1, 2
	beqz	$a3, .LBB10_11
.LBB10_7:                               # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t3, $t1, 0
	beqz	$t3, .LBB10_6
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB10_7 Depth=1
	slli.d	$t3, $t3, 1
	ldx.h	$t3, $a5, $t3
	ld.w	$t4, $a7, 0
	bge	$t3, $t4, .LBB10_11
# %bb.9:                                # %if.end20
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.w	$t4, $t0, 0
	xor	$t4, $t4, $t3
	sltui	$t4, $t4, 1
	masknez	$t2, $t2, $t4
	srai.d	$t5, $t3, 5
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a6, $t5
	maskeqz	$t4, $a4, $t4
	or	$t2, $t4, $t2
	sll.w	$t3, $a4, $t3
	or	$t3, $t6, $t3
	stx.w	$t3, $a6, $t5
	b	.LBB10_6
.LBB10_10:
	move	$a3, $zero
	b	.LBB10_12
.LBB10_11:                              # %if.end30.loopexit
	sltu	$a3, $zero, $t2
.LBB10_12:                              # %if.end30
	pcalau12i	$a4, %pc_hi20(err_table)
	ld.d	$a4, $a4, %pc_lo12(err_table)
	slli.d	$a5, $a0, 3
	ldx.d	$a7, $a4, $a5
	beqz	$a7, .LBB10_18
# %bb.13:                               # %if.then34
	ld.h	$a4, $a7, 0
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB10_18
# %bb.14:                               # %for.body39.lr.ph
	ld.d	$a6, $a1, %pc_lo12(shiftset)
	addi.d	$a7, $a7, 2
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_15:                              # %for.inc55
                                        #   in Loop: Header=BB10_16 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, 2
	beqz	$a4, .LBB10_18
.LBB10_16:                              # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t0, $a7, 0
	beqz	$t0, .LBB10_15
# %bb.17:                               # %if.end44
                                        #   in Loop: Header=BB10_16 Depth=1
	ext.w.h	$t0, $t0
	srai.d	$t1, $t0, 5
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $a6, $t1
	sll.w	$t0, $a5, $t0
	or	$t0, $t2, $t0
	stx.w	$t0, $a6, $t1
	b	.LBB10_15
.LBB10_18:                              # %if.end58
	pcalau12i	$a4, %got_pc_hi20(lookaheads)
	ld.d	$a4, $a4, %got_pc_lo12(lookaheads)
	ld.d	$a4, $a4, 0
	alsl.d	$a5, $a0, $a4, 1
	slli.d	$a0, $a0, 1
	ldx.h	$fp, $a4, $a0
	ld.h	$a0, $a5, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	sub.d	$s8, $a0, $fp
	addi.d	$a0, $s8, -1
	sltu	$a0, $zero, $a0
	or	$a0, $a0, $a3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_22
# %bb.19:                               # %if.else
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB10_33
# %bb.20:                               # %if.then110
	ld.w	$a0, $t7, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	slt	$a4, $fp, $a4
	xori	$a4, $a4, 1
	or	$a3, $a4, $a3
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	beqz	$a3, .LBB10_34
# %bb.21:
	addi.d	$s3, $zero, -1
                                        # implicit-def: $r7
                                        # kill: killed $r7
	ori	$a3, $zero, 1
	bge	$a0, $a3, .LBB10_75
	b	.LBB10_77
.LBB10_22:                              # %if.then68
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a0, $a0, %got_pc_lo12(LAruleno)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $fp, 1
	ldx.h	$a0, $a0, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a2, $t7, 0
	pcalau12i	$a0, %pc_hi20(lookaheadset)
	ld.d	$s2, $a0, %pc_lo12(lookaheadset)
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB10_27
# %bb.23:                               # %iter.check
	pcalau12i	$a3, %got_pc_hi20(LA)
	ld.d	$a4, $a3, %got_pc_lo12(LA)
	slli.d	$a7, $a2, 2
	ld.d	$a3, $a1, %pc_lo12(shiftset)
	ld.d	$a5, $a4, 0
	mul.w	$a6, $a2, $fp
	add.d	$a1, $a7, $s2
	addi.d	$a4, $s2, 4
	sltu	$a7, $a4, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a4, $a4, $a7
	or	$a1, $a1, $a4
	nor	$a4, $s2, $zero
	add.d	$a7, $a1, $a4
	ori	$a4, $zero, 11
	alsl.d	$a1, $a6, $a5, 2
	bltu	$a4, $a7, .LBB10_70
.LBB10_24:
	move	$a7, $s2
	move	$t0, $a3
.LBB10_25:                              # %while.body.preheader
	alsl.d	$a2, $a2, $s2, 2
	.p2align	4, , 16
.LBB10_26:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $t0, 0
	addi.d	$a1, $a1, 4
	addi.d	$t0, $t0, 4
	and	$a3, $a4, $a3
	addi.d	$a4, $a7, 4
	st.w	$a3, $a7, 0
	move	$a7, $a4
	bltu	$a4, $a2, .LBB10_26
.LBB10_27:                              # %for.cond79.preheader
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$s3, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $s3, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB10_32
# %bb.28:                               # %for.body82.preheader
	move	$s4, $zero
	move	$s5, $zero
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(foutput)
	ld.d	$s7, $a0, %got_pc_lo12(foutput)
	pcalau12i	$a0, %got_pc_hi20(tags)
	ld.d	$s8, $a0, %got_pc_lo12(tags)
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$fp, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s0, $a0, %pc_lo12(.L.str.11)
	ori	$s1, $zero, 1
	b	.LBB10_30
	.p2align	4, , 16
.LBB10_29:                              # %if.end92
                                        #   in Loop: Header=BB10_30 Depth=1
	slli.w	$a0, $s1, 1
	sltui	$a2, $a0, 1
	alsl.d	$s2, $a2, $s2, 2
	sltu	$a2, $s6, $a0
	masknez	$a3, $s6, $a2
	maskeqz	$a0, $a0, $a2
	or	$s1, $a0, $a3
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a1, .LBB10_32
.LBB10_30:                              # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	and	$a0, $a0, $s1
	beqz	$a0, .LBB10_29
# %bb.31:                               # %if.then85
                                        #   in Loop: Header=BB10_30 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.h	$a3, $a0, $a2
	ld.d	$a0, $s7, 0
	ldx.d	$a2, $a1, $s4
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a1, $a3
	move	$a1, $s0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	b	.LBB10_29
.LBB10_32:                              # %for.end101
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a1, %got_pc_hi20(tags)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, %got_pc_lo12(tags)
	pcalau12i	$a2, %got_pc_hi20(foutput)
	ld.d	$a2, $a2, %got_pc_lo12(foutput)
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.h	$a3, $a0, $a3
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	slli.d	$a2, $a3, 3
	ldx.d	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB10_33:                              # %if.end300
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
.LBB10_34:                              # %for.body118.lr.ph
	move	$a4, $zero
	move	$a6, $zero
	pcalau12i	$a3, %pc_hi20(lookaheadset)
	ld.d	$a5, $a3, %pc_lo12(lookaheadset)
	slli.d	$a3, $a0, 2
	pcalau12i	$a7, %got_pc_hi20(LA)
	ld.d	$t0, $a7, %got_pc_lo12(LA)
	pcalau12i	$a7, %got_pc_hi20(LAruleno)
	ld.d	$t2, $a7, %got_pc_lo12(LAruleno)
	alsl.d	$a7, $a0, $a5, 2
	ld.d	$t0, $t0, 0
	ld.d	$t1, $a1, %pc_lo12(shiftset)
	ld.d	$t2, $t2, 0
	add.d	$a3, $a3, $a5
	addi.d	$t3, $a5, 4
	sltu	$t4, $t3, $a3
	maskeqz	$a3, $a3, $t4
	masknez	$t3, $t3, $t4
	or	$a3, $a3, $t3
	nor	$t3, $a5, $zero
	add.d	$t3, $a3, $t3
	sub.d	$a3, $a5, $a3
	addi.w	$t4, $zero, -4
	andn	$a3, $t4, $a3
	addi.d	$a3, $a3, 4
	add.d	$t5, $t1, $a3
	add.d	$a3, $a5, $a3
	srli.d	$t4, $t3, 2
	addi.d	$t4, $t4, 1
	sub.d	$t6, $a5, $t1
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$t7, $t4, 62, 4
	slli.d	$t6, $t7, 4
	slli.d	$t7, $t7, 6
	add.d	$t8, $a5, $t7
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	add.d	$t7, $t1, $t7
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	andi	$t7, $t4, 12
	st.d	$t7, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$t7, $t4, 62, 2
	slli.d	$s6, $t7, 2
	slli.d	$t8, $t7, 4
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$t8, $t7, $a5, 4
	st.d	$t8, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$ra, $t7, $t1, 4
	sltu	$a3, $t1, $a3
	sltu	$t5, $a5, $t5
	and	$t7, $a3, $t5
	addi.d	$a3, $t1, 32
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $a5, 32
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $t0, 32
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s7, $fp, 2
	sub.d	$s5, $zero, $s6
	addi.d	$s3, $zero, -1
	ori	$t5, $zero, 1
	vrepli.b	$vr0, -1
	xvrepli.b	$xr1, -1
	pcalau12i	$a3, %got_pc_hi20(ntokens)
	ld.d	$t8, $a3, %got_pc_lo12(ntokens)
	move	$a3, $fp
                                        # implicit-def: $r22
                                        # kill: killed $r22
	b	.LBB10_36
	.p2align	4, , 16
.LBB10_35:                              # %for.inc164
                                        #   in Loop: Header=BB10_36 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	addi.d	$s7, $s7, 4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $fp, .LBB10_74
.LBB10_36:                              # %for.body118
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_63 Depth 2
                                        #     Child Loop BB10_67 Depth 2
                                        #     Child Loop BB10_39 Depth 2
                                        #     Child Loop BB10_42 Depth 2
                                        #     Child Loop BB10_55 Depth 2
                                        #     Child Loop BB10_59 Depth 2
                                        #     Child Loop BB10_61 Depth 2
	blt	$a0, $t5, .LBB10_40
# %bb.37:                               # %iter.check297
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s0, $fp, 0
	mul.d	$fp, $a3, $s0
	alsl.d	$fp, $fp, $t0, 2
	ori	$s1, $zero, 11
	bltu	$s1, $t3, .LBB10_50
.LBB10_38:                              #   in Loop: Header=BB10_36 Depth=1
	move	$s0, $a5
	move	$s1, $t1
	.p2align	4, , 16
.LBB10_39:                              # %while.body125
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $fp, 0
	ld.w	$s4, $s1, 0
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 4
	andn	$s2, $s2, $s4
	addi.d	$s4, $s0, 4
	st.w	$s2, $s0, 0
	move	$s0, $s4
	bltu	$s4, $a7, .LBB10_39
.LBB10_40:                              # %for.cond131.preheader
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.w	$s0, $t8, 0
	blt	$s0, $t5, .LBB10_49
# %bb.41:                               # %for.body134.preheader
                                        #   in Loop: Header=BB10_36 Depth=1
	move	$fp, $zero
	ori	$s2, $zero, 1
	move	$s1, $a5
	.p2align	4, , 16
.LBB10_42:                              # %for.body134
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $s1, 0
	and	$s4, $s4, $s2
	sltu	$s4, $zero, $s4
	add.w	$fp, $fp, $s4
	slli.w	$s2, $s2, 1
	sltui	$s4, $s2, 1
	alsl.d	$s1, $s4, $s1, 2
	sltu	$s4, $t5, $s2
	masknez	$s8, $t5, $s4
	maskeqz	$s2, $s2, $s4
	addi.w	$s0, $s0, -1
	or	$s2, $s2, $s8
	bnez	$s0, .LBB10_42
# %bb.43:                               # %for.end148
                                        #   in Loop: Header=BB10_36 Depth=1
	bge	$a6, $fp, .LBB10_45
.LBB10_44:                              # %if.then151
                                        #   in Loop: Header=BB10_36 Depth=1
	slli.d	$a6, $a3, 1
	ldx.h	$a6, $t2, $a6
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$a6, $fp
.LBB10_45:                              # %if.end155
                                        #   in Loop: Header=BB10_36 Depth=1
	blt	$a0, $t5, .LBB10_35
# %bb.46:                               # %iter.check251
                                        #   in Loop: Header=BB10_36 Depth=1
	sltui	$fp, $t3, 12
	or	$fp, $fp, $t7
	andi	$s1, $fp, 1
	move	$fp, $a5
	move	$s0, $t1
	bnez	$s1, .LBB10_61
# %bb.47:                               # %vector.main.loop.iter.check253
                                        #   in Loop: Header=BB10_36 Depth=1
	ori	$fp, $zero, 60
	bgeu	$t3, $fp, .LBB10_54
# %bb.48:                               #   in Loop: Header=BB10_36 Depth=1
	move	$s1, $zero
	b	.LBB10_58
	.p2align	4, , 16
.LBB10_49:                              #   in Loop: Header=BB10_36 Depth=1
	move	$fp, $zero
	blt	$a6, $fp, .LBB10_44
	b	.LBB10_45
	.p2align	4, , 16
.LBB10_50:                              # %vector.memcheck291
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s1, $a4, $s1
	slli.d	$s1, $s1, 2
	mul.d	$s1, $s1, $s0
	add.d	$s1, $s1, $t0
	sub.d	$s1, $a5, $s1
	ori	$s2, $zero, 64
	bltu	$s1, $s2, .LBB10_38
# %bb.51:                               # %vector.memcheck291
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	bltu	$s1, $s2, .LBB10_38
# %bb.52:                               # %vector.main.loop.iter.check299
                                        #   in Loop: Header=BB10_36 Depth=1
	mul.d	$s0, $s7, $s0
	ori	$s1, $zero, 60
	bgeu	$t3, $s1, .LBB10_62
# %bb.53:                               #   in Loop: Header=BB10_36 Depth=1
	move	$s4, $zero
	b	.LBB10_66
.LBB10_54:                              # %vector.body257.preheader
                                        #   in Loop: Header=BB10_36 Depth=1
	move	$fp, $t6
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_55:                              # %vector.body257
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $s0, -32
	xvld	$xr3, $s0, 0
	xvld	$xr4, $s1, -32
	xvld	$xr5, $s1, 0
	xvor.v	$xr2, $xr4, $xr2
	xvor.v	$xr3, $xr5, $xr3
	xvst	$xr2, $s1, -32
	xvst	$xr3, $s1, 0
	addi.d	$s1, $s1, 64
	addi.d	$fp, $fp, -16
	addi.d	$s0, $s0, 64
	bnez	$fp, .LBB10_55
# %bb.56:                               # %middle.block266
                                        #   in Loop: Header=BB10_36 Depth=1
	beq	$t4, $t6, .LBB10_35
# %bb.57:                               # %vec.epilog.iter.check271
                                        #   in Loop: Header=BB10_36 Depth=1
	move	$s1, $t6
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$s2, .LBB10_61
.LBB10_58:                              # %vec.epilog.ph270
                                        #   in Loop: Header=BB10_36 Depth=1
	alsl.d	$fp, $s1, $t1, 2
	alsl.d	$s0, $s1, $a5, 2
	add.d	$s1, $s5, $s1
	.p2align	4, , 16
.LBB10_59:                              # %vec.epilog.vector.body276
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s0, 0
	vld	$vr3, $fp, 0
	vor.v	$vr2, $vr3, $vr2
	vst	$vr2, $fp, 0
	addi.d	$fp, $fp, 16
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 16
	bnez	$s1, .LBB10_59
# %bb.60:                               # %vec.epilog.middle.block285
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$s0, $ra
	beq	$t4, $s6, .LBB10_35
	.p2align	4, , 16
.LBB10_61:                              # %while.body159
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $fp, 0
	ld.w	$s2, $s0, 0
	addi.d	$s4, $fp, 4
	addi.d	$s8, $s0, 4
	or	$fp, $s2, $s1
	st.w	$fp, $s0, 0
	move	$fp, $s4
	move	$s0, $s8
	bltu	$s4, $a7, .LBB10_61
	b	.LBB10_35
.LBB10_62:                              # %vector.body303.preheader
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	add.d	$s1, $s1, $s0
	move	$s2, $t6
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_63:                              # %vector.body303
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $s4, -32
	xvld	$xr3, $s4, 0
	xvld	$xr4, $s1, -32
	xvld	$xr5, $s1, 0
	xvxor.v	$xr2, $xr2, $xr1
	xvxor.v	$xr3, $xr3, $xr1
	xvand.v	$xr2, $xr4, $xr2
	xvand.v	$xr3, $xr5, $xr3
	xvst	$xr2, $s8, -32
	xvst	$xr3, $s8, 0
	addi.d	$s4, $s4, 64
	addi.d	$s8, $s8, 64
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB10_63
# %bb.64:                               # %middle.block313
                                        #   in Loop: Header=BB10_36 Depth=1
	beq	$t4, $t6, .LBB10_40
# %bb.65:                               # %vec.epilog.iter.check318
                                        #   in Loop: Header=BB10_36 Depth=1
	move	$s4, $t6
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	beqz	$s1, .LBB10_69
.LBB10_66:                              # %vec.epilog.ph317
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	add.d	$fp, $fp, $s1
	alsl.d	$s1, $s4, $t1, 2
	alsl.d	$s2, $s4, $a5, 2
	alsl.d	$s0, $s4, $s0, 2
	add.d	$s0, $t0, $s0
	add.d	$s4, $s5, $s4
	.p2align	4, , 16
.LBB10_67:                              # %vec.epilog.vector.body323
                                        #   Parent Loop BB10_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s1, 0
	vld	$vr3, $s0, 0
	vxor.v	$vr2, $vr2, $vr0
	vand.v	$vr2, $vr3, $vr2
	vst	$vr2, $s2, 0
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$s4, $s4, 4
	addi.d	$s0, $s0, 16
	bnez	$s4, .LBB10_67
# %bb.68:                               # %vec.epilog.middle.block334
                                        #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$s1, $ra
	bne	$t4, $s6, .LBB10_39
	b	.LBB10_40
.LBB10_69:                              #   in Loop: Header=BB10_36 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	add.d	$fp, $fp, $s0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_39
.LBB10_70:                              # %vector.memcheck
	alsl.d	$a4, $a6, $a5, 2
	sub.d	$t0, $s2, $a4
	ori	$a4, $zero, 64
	bltu	$t0, $a4, .LBB10_24
# %bb.71:                               # %vector.memcheck
	sub.d	$t0, $s2, $a3
	bltu	$t0, $a4, .LBB10_24
# %bb.72:                               # %vector.main.loop.iter.check
	srli.d	$a4, $a7, 2
	ori	$t0, $zero, 60
	addi.d	$a4, $a4, 1
	bgeu	$a7, $t0, .LBB10_105
# %bb.73:
	move	$t1, $zero
	b	.LBB10_109
.LBB10_74:                              # %if.end167.loopexit
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $t7, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB10_77
.LBB10_75:                              # %for.body171.lr.ph
	ld.d	$a0, $a1, %pc_lo12(shiftset)
	move	$a3, $zero
	.p2align	4, , 16
.LBB10_76:                              # %for.body171
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	ld.w	$a4, $t7, 0
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 4
	blt	$a3, $a4, .LBB10_76
.LBB10_77:                              # %for.end176
	beqz	$a2, .LBB10_84
# %bb.78:                               # %if.then178
	ld.h	$a3, $a2, 10
	ld.d	$a0, $a1, %pc_lo12(shiftset)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	blt	$a3, $a1, .LBB10_85
# %bb.79:                               # %for.body184.lr.ph
	pcalau12i	$a0, %got_pc_hi20(accessing_symbol)
	ld.d	$a0, $a0, %got_pc_lo12(accessing_symbol)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a5, $a0, %got_pc_lo12(ntokens)
	addi.d	$a2, $a2, 12
	b	.LBB10_82
	.p2align	4, , 16
.LBB10_80:                              # %if.end200
                                        #   in Loop: Header=BB10_82 Depth=1
	srai.d	$a0, $a6, 5
	slli.d	$a0, $a0, 2
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a7, $t0, $a0
	sll.w	$a6, $a1, $a6
	or	$a6, $a7, $a6
	stx.w	$a6, $t0, $a0
.LBB10_81:                              # %for.inc207
                                        #   in Loop: Header=BB10_82 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	beqz	$a3, .LBB10_85
.LBB10_82:                              # %for.body184
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $a2, 0
	beqz	$a0, .LBB10_81
# %bb.83:                               # %if.end190
                                        #   in Loop: Header=BB10_82 Depth=1
	slli.d	$a0, $a0, 1
	ldx.h	$a6, $a4, $a0
	ld.w	$a0, $a5, 0
	blt	$a6, $a0, .LBB10_80
	b	.LBB10_86
.LBB10_84:                              # %for.end176.if.end210_crit_edge
	ld.d	$a0, $a1, %pc_lo12(shiftset)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.LBB10_85:                              # %if.end210thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $a0, 0
.LBB10_86:                              # %if.end210
	ori	$a5, $zero, 1
	addi.w	$a1, $s3, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	blt	$a0, $a5, .LBB10_102
# %bb.87:                               # %for.body217.lr.ph
	pcalau12i	$a1, %got_pc_hi20(LA)
	ld.d	$a1, $a1, %got_pc_lo12(LA)
	ld.w	$a2, $t7, 0
	ld.d	$a1, $a1, 0
	move	$s6, $zero
	mul.w	$a2, $a2, $fp
	alsl.d	$s5, $a2, $a1, 2
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(LAruleno)
	ld.d	$s2, $a1, %got_pc_lo12(LAruleno)
	slli.d	$a1, $fp, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $fp
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB10_90
	.p2align	4, , 16
.LBB10_88:                              # %for.end279.loopexit
                                        #   in Loop: Header=BB10_90 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ori	$a5, $zero, 1
.LBB10_89:                              # %for.end279
                                        #   in Loop: Header=BB10_90 Depth=1
	slli.w	$a1, $s1, 1
	sltui	$a2, $a1, 1
	sltu	$a3, $a5, $a1
	masknez	$a4, $a5, $a3
	maskeqz	$a1, $a1, $a3
	or	$s1, $a1, $a4
	addi.d	$s6, $s6, 1
	alsl.d	$s5, $a2, $s5, 2
	bge	$s6, $a0, .LBB10_102
.LBB10_90:                              # %for.body217
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_95 Depth 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$fp, $a1, .LBB10_89
# %bb.91:                               # %for.body226.lr.ph
                                        #   in Loop: Header=BB10_90 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$s3, $zero
	and	$a0, $a0, $s1
	sltu	$a0, $zero, $a0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$s7, $s5
	b	.LBB10_95
	.p2align	4, , 16
.LBB10_92:                              # %if.end274.sink.split
                                        #   in Loop: Header=BB10_95 Depth=2
	move	$s3, $zero
.LBB10_93:                              # %if.end274.sink.split
                                        #   in Loop: Header=BB10_95 Depth=2
	ldx.h	$a3, $a0, $s4
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a2, %got_pc_hi20(tags)
	ld.d	$a2, $a2, %got_pc_lo12(tags)
	pcalau12i	$a4, %got_pc_hi20(foutput)
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, %got_pc_lo12(foutput)
	ld.d	$a5, $a2, 0
	slli.d	$a2, $a3, 1
	ldx.h	$a6, $a0, $a2
	ld.d	$a0, $a4, 0
	ldx.d	$a2, $a5, $s0
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $a5, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
.LBB10_94:                              # %if.end274
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.w	$a1, $t7, 0
	alsl.d	$s7, $a1, $s7, 2
	addi.d	$s4, $s4, 2
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, -1
	beqz	$s8, .LBB10_88
.LBB10_95:                              # %for.body226
                                        #   Parent Loop BB10_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s7, 0
	and	$a1, $a1, $s1
	beqz	$a1, .LBB10_94
# %bb.96:                               # %if.then229
                                        #   in Loop: Header=BB10_95 Depth=2
	slli.d	$s0, $s6, 3
	beqz	$a0, .LBB10_99
# %bb.97:                               # %if.else249
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	beqz	$s3, .LBB10_92
# %bb.98:                               # %if.then251
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	ldx.h	$a3, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a2, %got_pc_hi20(tags)
	ld.d	$a2, $a2, %got_pc_lo12(tags)
	pcalau12i	$a4, %got_pc_hi20(foutput)
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, %got_pc_lo12(foutput)
	ld.d	$a5, $a2, 0
	slli.d	$a2, $a3, 1
	ldx.h	$a6, $a0, $a2
	ld.d	$a0, $a4, 0
	ldx.d	$a2, $a5, $s0
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $a5, $a4
	pcalau12i	$a5, %pc_hi20(.L.str.13)
	addi.d	$a5, $a5, %pc_lo12(.L.str.13)
	move	$s3, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.d	$a0, $s2, 0
	b	.LBB10_92
	.p2align	4, , 16
.LBB10_99:                              # %if.then232
                                        #   in Loop: Header=BB10_95 Depth=2
	beqz	$fp, .LBB10_101
# %bb.100:                              # %if.then235
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	b	.LBB10_93
.LBB10_101:                             #   in Loop: Header=BB10_95 Depth=2
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1
	b	.LBB10_94
.LBB10_102:                             # %for.end288
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltz	$a0, .LBB10_104
# %bb.103:                              # %if.then291
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a1, %got_pc_hi20(foutput)
	ld.d	$a1, $a1, %got_pc_lo12(foutput)
	pcalau12i	$a2, %got_pc_hi20(tags)
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a2, %got_pc_lo12(tags)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	slli.d	$a4, $a2, 1
	ldx.h	$a4, $a0, $a4
	ld.d	$a3, $a3, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a4, 3
	ldx.d	$a3, $a3, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB10_104:                             # %if.end297
	pcalau12i	$a0, %got_pc_hi20(foutput)
	ld.d	$a0, $a0, %got_pc_lo12(foutput)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.LBB10_105:                             # %vector.ph
	slli.d	$t2, $a6, 2
	bstrpick.d	$a7, $a4, 62, 4
	slli.d	$t1, $a7, 4
	addi.d	$a7, $a3, 32
	addi.d	$t0, $s2, 32
	add.d	$t2, $t2, $a5
	addi.d	$t2, $t2, 32
	move	$t3, $t1
	.p2align	4, , 16
.LBB10_106:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t2, -32
	xvld	$xr1, $t2, 0
	xvld	$xr2, $a7, -32
	xvld	$xr3, $a7, 0
	xvand.v	$xr0, $xr2, $xr0
	xvand.v	$xr1, $xr3, $xr1
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB10_106
# %bb.107:                              # %middle.block
	beq	$a4, $t1, .LBB10_27
# %bb.108:                              # %vec.epilog.iter.check
	andi	$a7, $a4, 12
	beqz	$a7, .LBB10_112
.LBB10_109:                             # %vec.epilog.ph
	bstrpick.d	$t0, $a4, 62, 2
	slli.d	$t2, $t0, 2
	alsl.d	$a1, $t0, $a1, 4
	alsl.d	$a7, $t0, $s2, 4
	alsl.d	$t0, $t0, $a3, 4
	slli.d	$t4, $t1, 2
	alsl.d	$a3, $t1, $a3, 2
	alsl.d	$t3, $t1, $s2, 2
	alsl.d	$a6, $a6, $t4, 2
	add.d	$a5, $a5, $a6
	sub.d	$a6, $t1, $t2
	.p2align	4, , 16
.LBB10_110:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a3, 0
	vand.v	$vr0, $vr1, $vr0
	vst	$vr0, $t3, 0
	addi.d	$a3, $a3, 16
	addi.d	$t3, $t3, 16
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB10_110
# %bb.111:                              # %vec.epilog.middle.block
	bne	$a4, $t2, .LBB10_25
	b	.LBB10_27
.LBB10_112:
	alsl.d	$a1, $t1, $a1, 2
	alsl.d	$a7, $t1, $s2, 2
	alsl.d	$t0, $t1, $a3, 2
	b	.LBB10_25
.Lfunc_end10:
	.size	print_reductions, .Lfunc_end10-print_reductions
                                        # -- End function
	.globl	finalize_conflicts              # -- Begin function finalize_conflicts
	.p2align	5
	.type	finalize_conflicts,@function
finalize_conflicts:                     # @finalize_conflicts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(conflicts)
	ld.d	$a0, $a0, %pc_lo12(conflicts)
	beqz	$a0, .LBB11_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB11_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(shiftset)
	ld.d	$a0, $a0, %pc_lo12(shiftset)
	beqz	$a0, .LBB11_4
# %bb.3:                                # %if.then2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %if.end3
	pcalau12i	$a0, %pc_hi20(lookaheadset)
	ld.d	$a0, $a0, %pc_lo12(lookaheadset)
	beqz	$a0, .LBB11_6
# %bb.5:                                # %if.then5
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB11_6:                               # %if.end6
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	finalize_conflicts, .Lfunc_end11-finalize_conflicts
                                        # -- End function
	.type	conflicts,@object               # @conflicts
	.bss
	.globl	conflicts
	.p2align	3, 0x0
conflicts:
	.dword	0
	.size	conflicts, 8

	.type	shiftset,@object                # @shiftset
	.local	shiftset
	.comm	shiftset,8,8
	.type	lookaheadset,@object            # @lookaheadset
	.local	lookaheadset
	.comm	lookaheadset,8,8
	.type	err_table,@object               # @err_table
	.globl	err_table
	.p2align	3, 0x0
err_table:
	.dword	0
	.size	err_table, 8

	.type	any_conflicts,@object           # @any_conflicts
	.globl	any_conflicts
any_conflicts:
	.byte	0                               # 0x0
	.size	any_conflicts, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"reduce"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"shift"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"an error"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Conflict in state %d between rule %d and token %s resolved as %s.\n"
	.size	.L.str.3, 67

	.type	src_total,@object               # @src_total
	.local	src_total
	.comm	src_total,4,4
	.type	rrc_total,@object               # @rrc_total
	.local	rrc_total
	.comm	rrc_total,4,4
	.type	src_count,@object               # @src_count
	.local	src_count
	.comm	src_count,4,4
	.type	rrc_count,@object               # @rrc_count
	.local	rrc_count
	.comm	rrc_count,4,4
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"State %d contains"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" 1 shift/reduce conflict"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" %d shift/reduce conflicts"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" and"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" 1 reduce/reduce conflict"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" %d reduce/reduce conflicts"
	.size	.L.str.9, 28

	.type	expected_conflicts,@object      # @expected_conflicts
	.bss
	.globl	expected_conflicts
	.p2align	2, 0x0
expected_conflicts:
	.word	0                               # 0x0
	.size	expected_conflicts, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s contains"
	.size	.L.str.10, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"    %-4s\t[reduce  %d  (%s)]\n"
	.size	.L.str.11, 29

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"    $default\treduce  %d  (%s)\n\n"
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"    %-4s\treduce  %d  (%s)\n"
	.size	.L.str.13, 27

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"    $default\treduce  %d  (%s)\n"
	.size	.L.str.14, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
