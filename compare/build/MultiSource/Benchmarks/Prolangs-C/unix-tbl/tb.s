	.file	"tb.c"
	.text
	.globl	checkuse                        # -- Begin function checkuse
	.p2align	5
	.type	checkuse,@function
checkuse:                               # @checkuse
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
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$a0, $a0, %got_pc_lo12(ncol)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_41
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$s2, $a0, %got_pc_lo12(nlin)
	ld.w	$a0, $s2, 0
	blt	$a0, $a2, .LBB0_42
# %bb.2:                                # %for.body.preheader
	move	$fp, $zero
	pcalau12i	$a2, %got_pc_hi20(rused)
	ld.d	$a3, $a2, %got_pc_lo12(rused)
	pcalau12i	$a2, %got_pc_hi20(lused)
	ld.d	$a4, $a2, %got_pc_lo12(lused)
	pcalau12i	$a2, %got_pc_hi20(used)
	ld.d	$a5, $a2, %got_pc_lo12(used)
	pcalau12i	$a2, %got_pc_hi20(table)
	ld.d	$a2, $a2, %got_pc_lo12(table)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(instead)
	ld.d	$a2, $a2, %got_pc_lo12(instead)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %for.inc73.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
.LBB0_4:                                # %for.inc73
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$fp, $fp, 1
	bge	$fp, $a1, .LBB0_41
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	slli.d	$a2, $fp, 2
	stx.w	$zero, $a3, $a2
	stx.w	$zero, $a4, $a2
	stx.w	$zero, $a5, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_4
# %bb.6:                                # %for.body7.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $zero
	move	$s6, $zero
	alsl.d	$s1, $fp, $a3, 2
	alsl.d	$a0, $fp, $a4, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$s7, $fp, $a5, 2
	slli.d	$a0, $fp, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=2
	move	$a0, $zero
.LBB0_8:                                # %real.exit56
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	or	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	.p2align	4, , 16
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$s6, $s6, 1
	ld.w	$a0, $s2, 0
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 8
	bge	$s6, $a0, .LBB0_3
.LBB0_10:                               # %for.body7
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB0_9
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a0, $s5, 0
	bnez	$a0, .LBB0_9
# %bb.12:                               # %if.end
                                        #   in Loop: Header=BB0_10 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bstrins.d	$a1, $zero, 4, 4
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB0_9
# %bb.13:                               # %if.end17
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a1, $zero, 110
	beq	$a0, $a1, .LBB0_15
# %bb.14:                               # %if.end17
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB0_18
.LBB0_15:                               # %if.then21
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $s3, 0
	alsl.d	$a0, $fp, $a0, 4
	ld.d	$s8, $a0, 8
	beqz	$s8, .LBB0_21
# %bb.16:                               # %if.end.i
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a0, $s8, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.17:                               # %if.end2.i
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.bu	$a0, $s8, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_23
.LBB0_18:                               # %if.else
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s8, $a0, $a1
	beqz	$s8, .LBB0_31
# %bb.19:                               # %if.end.i58
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a0, $s8, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.20:                               # %if.end2.i61
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.bu	$a0, $s8, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_40
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=2
	move	$a0, $zero
	b	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
.LBB0_23:                               # %real.exit
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a1, $s3, 0
	ld.w	$a2, $s1, 0
	alsl.d	$a3, $fp, $a1, 4
	ld.d	$s8, $a3, 8
	or	$a0, $a2, $a0
	st.w	$a0, $s1, 0
	beqz	$s8, .LBB0_27
# %bb.24:                               # %if.end.i31
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a0, $s8, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.25:                               # %real.exit38
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.bu	$a0, $s8, 0
	bnez	$a0, .LBB0_34
# %bb.26:                               # %real.exit38.if.then36_crit_edge
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a1, $s3, 0
.LBB0_27:                               # %if.then36
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s8, $a1, $a0
	beqz	$s8, .LBB0_30
# %bb.28:                               # %if.end.i40
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a0, $s8, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_32
# %bb.29:                               # %if.end2.i43
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.bu	$a0, $s8, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_10 Depth=2
	move	$a0, $zero
	b	.LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=2
	move	$a0, $zero
	b	.LBB0_40
.LBB0_32:                               #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
.LBB0_33:                               # %real.exit47
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a1, $s7, 0
	or	$a0, $a1, $a0
	st.w	$a0, $s7, 0
.LBB0_34:                               # %if.end45
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $s3, 0
	alsl.d	$a0, $fp, $a0, 4
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB0_9
# %bb.35:                               # %if.then52
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$s8, $a0, 0
	beqz	$s8, .LBB0_7
# %bb.36:                               # %if.end.i49
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a0, $s8, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_38
# %bb.37:                               # %if.end2.i52
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.bu	$a0, $s8, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_8
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_8
.LBB0_39:                               #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
.LBB0_40:                               # %real.exit65
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a1, $s7, 0
	or	$a0, $a1, $a0
	st.w	$a0, $s7, 0
	b	.LBB0_9
.LBB0_41:                               # %for.end75
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
.LBB0_42:                               # %for.body.lr.ph.split.us
	slli.d	$fp, $a1, 2
	pcalau12i	$a0, %got_pc_hi20(rused)
	ld.d	$a0, $a0, %got_pc_lo12(rused)
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(lused)
	ld.d	$a0, $a0, %got_pc_lo12(lused)
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(used)
	ld.d	$a0, $a0, %got_pc_lo12(used)
	move	$a1, $zero
	move	$a2, $fp
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
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end0:
	.size	checkuse, .Lfunc_end0-checkuse
                                        # -- End function
	.globl	real                            # -- Begin function real
	.p2align	5
	.type	real,@function
real:                                   # @real
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_3
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_4
# %bb.2:                                # %if.end2
	ld.bu	$a0, $fp, 0
	sltu	$a0, $zero, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_3:
	move	$a0, $zero
	ret
.LBB1_4:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	real, .Lfunc_end1-real
                                        # -- End function
	.globl	chspace                         # -- Begin function chspace
	.p2align	5
	.type	chspace,@function
chspace:                                # @chspace
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(spcount)
	ld.w	$s1, $fp, %pc_lo12(spcount)
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(spvecs)
	addi.d	$s0, $a1, %pc_lo12(spvecs)
	ldx.d	$a0, $s0, $a0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	addi.d	$a1, $s1, 1
	st.w	$a1, $fp, %pc_lo12(spcount)
	b	.LBB2_6
.LBB2_2:                                # %if.end
	ori	$a0, $zero, 20
	blt	$s1, $a0, .LBB2_4
# %bb.3:                                # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, %pc_lo12(spcount)
.LBB2_4:                                # %if.end4
	ori	$a0, $zero, 2200
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 1
	st.w	$a1, $fp, %pc_lo12(spcount)
	slli.d	$a1, $s1, 3
	addi.w	$a2, $a0, 0
	addi.d	$a2, $a2, 1
	stx.d	$a0, $s0, $a1
	bltu	$s2, $a2, .LBB2_6
# %bb.5:                                # %if.then10
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB2_6:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	chspace, .Lfunc_end2-chspace
                                        # -- End function
	.globl	alocv                           # -- Begin function alocv
	.p2align	5
	.type	alocv,@function
alocv:                                  # @alocv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(tpcount)
	ld.w	$a2, $a1, %pc_lo12(tpcount)
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(thisvec)
	pcalau12i	$a0, %pc_hi20(tpvecs)
	addi.d	$a0, $a0, %pc_lo12(tpvecs)
	bltz	$a2, .LBB3_2
# %bb.1:                                # %lor.lhs.false
	ld.d	$s0, $s1, %pc_lo12(thisvec)
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	add.d	$a4, $s0, $fp
	addi.d	$a3, $a3, 2000
	bgeu	$a3, $a4, .LBB3_6
.LBB3_2:                                # %if.then
	addi.w	$a2, $a2, 1
	slli.d	$a3, $a2, 3
	ldx.d	$s0, $a0, $a3
	st.w	$a2, $a1, %pc_lo12(tpcount)
	bnez	$s0, .LBB3_4
# %bb.3:                                # %if.then6
	alsl.d	$s2, $a2, $a0, 3
	ori	$a0, $zero, 2000
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s2, 0
.LBB3_4:                                # %if.end
	bstrpick.d	$a0, $s0, 31, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.d	$s0, $s1, %pc_lo12(thisvec)
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, %pc_lo12(thisvec)
.LBB3_6:                                # %if.end14
	add.d	$a0, $s0, $fp
	ori	$a1, $zero, 1
	st.d	$a0, $s1, %pc_lo12(thisvec)
	blt	$fp, $a1, .LBB3_8
# %bb.7:                                # %for.body.preheader
	add.d	$a0, $s0, $fp
	addi.d	$a1, $s0, 4
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a0, $s0, $a0
	addi.w	$a1, $zero, -4
	andn	$a0, $a1, $a0
	addi.d	$a2, $a0, 4
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_8:                                # %for.end
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	alocv, .Lfunc_end3-alocv
                                        # -- End function
	.globl	release                         # -- Begin function release
	.p2align	5
	.type	release,@function
release:                                # @release
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(spcount)
	st.w	$zero, $a0, %pc_lo12(spcount)
	pcalau12i	$a0, %pc_hi20(tpcount)
	pcalau12i	$a1, %got_pc_hi20(exstore)
	ld.d	$a1, $a1, %got_pc_lo12(exstore)
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $a0, %pc_lo12(tpcount)
	st.d	$zero, $a1, 0
	ret
.Lfunc_end4:
	.size	release, .Lfunc_end4-release
                                        # -- End function
	.type	spcount,@object                 # @spcount
	.bss
	.globl	spcount
	.p2align	2, 0x0
spcount:
	.word	0                               # 0x0
	.size	spcount, 4

	.type	spvecs,@object                  # @spvecs
	.globl	spvecs
	.p2align	3, 0x0
spvecs:
	.space	160
	.size	spvecs, 160

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Too many characters in table"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"no space for characters"
	.size	.L.str.1, 24

	.type	tpcount,@object                 # @tpcount
	.data
	.globl	tpcount
	.p2align	2, 0x0
tpcount:
	.word	4294967295                      # 0xffffffff
	.size	tpcount, 4

	.type	thisvec,@object                 # @thisvec
	.bss
	.globl	thisvec
	.p2align	3, 0x0
thisvec:
	.dword	0
	.size	thisvec, 8

	.type	tpvecs,@object                  # @tpvecs
	.globl	tpvecs
	.p2align	3, 0x0
tpvecs:
	.space	400
	.size	tpvecs, 400

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"no space for vectors"
	.size	.L.str.2, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
