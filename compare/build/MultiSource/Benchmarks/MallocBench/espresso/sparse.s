	.file	"sparse.c"
	.text
	.globl	make_sparse                     # -- Begin function make_sparse
	.p2align	5
	.type	make_sparse,@function
make_sparse:                            # @make_sparse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(cover_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(force_irredundant)
	ld.d	$s3, $a0, %got_pc_lo12(force_irredundant)
	.p2align	4, , 16
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mv_reduce)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 12
	addi.d	$a3, $sp, 40
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	ld.w	$a1, $sp, 32
	beq	$a0, $a1, .LBB0_4
# %bb.2:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(copy_cost)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(expand)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 13
	addi.d	$a3, $sp, 40
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(totals)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	ld.w	$a1, $sp, 32
	beq	$a0, $a1, .LBB0_4
# %bb.3:                                # %if.end10
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(copy_cost)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_1
.LBB0_4:                                # %do.end
	move	$a0, $s1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	make_sparse, .Lfunc_end0-make_sparse
                                        # -- End function
	.globl	mv_reduce                       # -- Begin function mv_reduce
	.p2align	5
	.type	mv_reduce,@function
mv_reduce:                              # @mv_reduce
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
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s6, $a2, %got_pc_lo12(cube)
	ld.w	$a2, $s6, 4
	ori	$a3, $zero, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$a2, $a3, .LBB1_28
# %bb.1:                                # %for.body.lr.ph
	move	$a3, $zero
	lu12i.w	$a0, -9
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %for.inc133.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $s6, 4
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
.LBB1_3:                                # %for.inc133
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a2, .LBB1_28
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_23 Depth 3
	ld.d	$a0, $s6, 112
	slli.d	$a4, $a3, 2
	ldx.w	$a0, $a0, $a4
	beqz	$a0, .LBB1_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s6, 24
	ldx.w	$a0, $a0, $a4
	ldx.w	$a1, $a1, $a4
	blt	$a1, $a0, .LBB1_3
# %bb.6:                                # %for.body7.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$s7, $a3, 3
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.inc129
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $s6, 24
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	bge	$a2, $a1, .LBB1_2
.LBB1_8:                                # %for.body7
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_23 Depth 3
	ld.w	$s2, $s1, 12
	move	$fp, $a0
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 12
	ld.w	$a1, $s1, 0
	move	$s2, $a0
	mul.w	$a0, $a1, $a2
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	sll.w	$s8, $a2, $fp
	blt	$a0, $a2, .LBB1_13
# %bb.9:                                # %for.body15.lr.ph
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$s3, $s1, 24
	alsl.d	$fp, $a0, $s3, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	srai.d	$a0, $a0, 5
	addi.d	$a0, $a0, 1
	slli.d	$s0, $a0, 2
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=3
	alsl.d	$s3, $a1, $s3, 2
	bgeu	$s3, $fp, .LBB1_13
.LBB1_11:                               # %for.body15
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a0, $s3, $s0
	and	$a0, $a0, $s8
	beqz	$a0, .LBB1_10
# %bb.12:                               # %if.then20
                                        #   in Loop: Header=BB1_11 Depth=3
	ld.w	$a0, $s2, 12
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	stx.d	$s3, $a2, $a1
	ld.d	$a1, $s6, 72
	ld.d	$a3, $s2, 24
	ld.w	$a4, $s2, 0
	addi.d	$a5, $a0, 1
	ldx.d	$a2, $a1, $s7
	st.w	$a5, $s2, 12
	mul.w	$a0, $a4, $a0
	alsl.d	$s4, $a0, $a3, 2
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s4, $s0
	or	$a0, $a0, $s8
	stx.w	$a0, $s4, $s0
	ld.w	$a1, $s1, 0
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_13:                               # %for.end
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 12
	ld.w	$a1, $s6, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a2, $a1, $a2
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB1_18
# %bb.14:                               # %for.body53.lr.ph
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 24
	alsl.d	$fp, $a2, $s4, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	srai.d	$a0, $a0, 5
	addi.d	$s0, $a0, 1
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %for.inc81
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$s4, $a1, $s4, 2
	bgeu	$s4, $fp, .LBB1_18
.LBB1_16:                               # %for.body53
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$s1, $s0, 2
	ldx.w	$a0, $s4, $s1
	and	$a0, $a0, $s8
	beqz	$a0, .LBB1_15
# %bb.17:                               # %if.then62
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $s3, 12
	ld.d	$a1, $s6, 72
	ld.d	$a3, $s3, 24
	ld.w	$a4, $s3, 0
	addi.d	$a5, $a0, 1
	ldx.d	$a2, $a1, $s7
	st.w	$a5, $s3, 12
	mul.w	$a0, $a0, $a4
	alsl.d	$s5, $a0, $a3, 2
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s5, $s1
	or	$a0, $a0, $s8
	stx.w	$a0, $s5, $s1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_18:                               # %for.end85
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mark_irredundant)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a0, $s2, 0
	mul.w	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	blt	$a1, $a2, .LBB1_26
# %bb.19:                               # %for.body95.lr.ph
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$s5, $s2, 24
	alsl.d	$fp, $a1, $s5, 2
	nor	$s8, $s8, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	srai.d	$s0, $a1, 5
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_20:                               # %if.then108
                                        #   in Loop: Header=BB1_23 Depth=3
	alsl.d	$a0, $s0, $s4, 2
	ld.w	$a1, $a0, 4
	and	$a1, $a1, $s8
	st.w	$a1, $a0, 4
.LBB1_21:                               # %if.end116
                                        #   in Loop: Header=BB1_23 Depth=3
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 0
	ld.w	$a0, $s2, 0
.LBB1_22:                               # %if.end119
                                        #   in Loop: Header=BB1_23 Depth=3
	alsl.d	$s5, $a0, $s5, 2
	addi.d	$s1, $s1, 8
	bgeu	$s5, $fp, .LBB1_26
.LBB1_23:                               # %for.body95
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a1, $s5, 1
	andi	$a1, $a1, 32
	bnez	$a1, .LBB1_22
# %bb.24:                               # %if.then99
                                        #   in Loop: Header=BB1_23 Depth=3
	ld.w	$a0, $s6, 4
	ld.d	$s4, $s1, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a3, $a0, .LBB1_20
# %bb.25:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_23 Depth=3
	ld.d	$a0, $s6, 72
	ldx.d	$a0, $a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_21
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_26:                               # %for.end125
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_7
# %bb.27:                               # %if.then127
                                        #   in Loop: Header=BB1_8 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_7
.LBB1_28:                               # %for.end135
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_active)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_39
# %bb.29:                               # %for.body140.lr.ph
	move	$s1, $zero
	ori	$s2, $zero, 1
	lu12i.w	$a1, -3
	ori	$s3, $a1, 4095
	lu32i.d	$s3, 0
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_30:                               # %for.inc174.loopexit
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.w	$a0, $s6, 4
.LBB1_31:                               # %for.inc174
                                        #   in Loop: Header=BB1_32 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB1_39
.LBB1_32:                               # %for.body140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	ld.d	$a1, $s6, 112
	slli.d	$a2, $s1, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a1, .LBB1_31
# %bb.33:                               # %if.then144
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 12
	ld.w	$a2, $a2, 0
	mul.w	$a1, $a2, $a1
	blt	$a1, $s2, .LBB1_31
# %bb.34:                               # %for.body154.preheader
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 24
	alsl.d	$fp, $a1, $s0, 2
	slli.d	$s4, $s1, 3
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_35:                               # %for.inc168
                                        #   in Loop: Header=BB1_36 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	alsl.d	$s0, $a0, $s0, 2
	bgeu	$s0, $fp, .LBB1_30
.LBB1_36:                               # %for.body154
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s0, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB1_35
# %bb.37:                               # %if.then158
                                        #   in Loop: Header=BB1_36 Depth=2
	ld.d	$a0, $s6, 72
	ldx.d	$a1, $a0, $s4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_35
# %bb.38:                               # %if.then163
                                        #   in Loop: Header=BB1_36 Depth=2
	ld.wu	$a0, $s0, 0
	and	$a0, $a0, $s3
	st.w	$a0, $s0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 16
	b	.LBB1_35
.LBB1_39:                               # %for.end176
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 12
	ld.w	$a1, $a0, 16
	bne	$a2, $a1, .LBB1_41
# %bb.40:                               # %if.end183
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
.LBB1_41:                               # %if.then181
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
	pcaddu18i	$t8, %call36(sf_inactive)
	jr	$t8
.Lfunc_end1:
	.size	mv_reduce, .Lfunc_end1-mv_reduce
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
