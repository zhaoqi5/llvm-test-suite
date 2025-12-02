	.file	"z06.c"
	.text
	.globl	OptimizeCase                    # -- Begin function OptimizeCase
	.p2align	5
	.type	OptimizeCase,@function
OptimizeCase:                           # @OptimizeCase
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 52
	beq	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.end
	ld.d	$s0, $fp, 0
	.p2align	4, , 16
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_3
# %bb.4:                                # %for.end
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 20
	ori	$a1, $zero, 55
	st.d	$zero, $sp, 24
	beq	$a0, $a1, .LBB0_15
# %bb.5:                                # %for.end
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB0_26
# %bb.6:                                # %for.cond27.preheader
	ld.d	$s1, $s0, 8
	beq	$s1, $s0, .LBB0_17
# %bb.7:                                # %for.cond34.preheader.preheader
	ori	$s2, $zero, 1
	ori	$s3, $zero, 55
	ori	$a1, $zero, 1
.LBB0_8:                                # %for.cond34.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	move	$a0, $s1
	.p2align	4, , 16
.LBB0_9:                                # %for.cond34
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_9
# %bb.10:                               # %for.cond34
                                        #   in Loop: Header=BB0_8 Depth=1
	beq	$a2, $s2, .LBB0_13
# %bb.11:                               # %for.cond34
                                        #   in Loop: Header=BB0_8 Depth=1
	bne	$a2, $s3, .LBB0_26
# %bb.12:                               # %if.then58
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 20
	pcaddu18i	$ra, %call36(check_yield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
.LBB0_13:                               # %for.inc61
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s1, $s1, 8
	beq	$s1, $s0, .LBB0_16
# %bb.14:                               # %for.inc61
                                        #   in Loop: Header=BB0_8 Depth=1
	bnez	$a1, .LBB0_8
	b	.LBB0_16
.LBB0_15:                               # %if.then18
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(check_yield)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
.LBB0_16:                               # %if.end68
	bnez	$a1, .LBB0_18
	b	.LBB0_26
.LBB0_17:
	ori	$a1, $zero, 1
	beqz	$a1, .LBB0_26
.LBB0_18:                               # %if.end68
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB0_26
# %bb.19:                               # %if.then72
	ld.d	$s0, $a0, 0
	.p2align	4, , 16
.LBB0_20:                               # %for.cond79
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_20
# %bb.21:                               # %for.end90
	ld.d	$a0, $s0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB0_23
# %bb.22:                               # %cond.false
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB0_23:                               # %cond.end
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 8
	st.d	$a0, $a1, 0
	beq	$a3, $a0, .LBB0_25
# %bb.24:                               # %cond.false126
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a3, 8
.LBB0_25:                               # %cond.end148
	ld.bu	$a2, $a0, 32
	st.d	$a0, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB0_27
.LBB0_26:                               # %if.end179.loopexit
	move	$a0, $fp
.LBB0_27:                               # %if.end179
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	OptimizeCase, .Lfunc_end0-OptimizeCase
                                        # -- End function
	.p2align	5                               # -- Begin function check_yield
	.type	check_yield,@function
check_yield:                            # @check_yield
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
	move	$s0, $a0
	ld.d	$s4, $a0, 8
	move	$s1, $a2
	move	$fp, $a1
	.p2align	4, , 16
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_1
# %bb.2:                                # %for.cond
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_7
# %bb.3:                                # %if.then
	addi.d	$s1, $s4, 64
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.4:                                # %lor.lhs.false19
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_20
.LBB1_5:                                # %if.then25
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB1_20
# %bb.6:                                # %if.end104.sink.split
	st.d	$s0, $fp, 0
	b	.LBB1_20
.LBB1_7:                                # %for.cond
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB1_19
# %bb.8:                                # %for.cond39.preheader
	ld.d	$s5, $s4, 8
	beq	$s5, $s4, .LBB1_20
# %bb.9:                                # %for.cond46.preheader.lr.ph
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$s6, $a0, 0
	addi.d	$s2, $s4, 64
	ori	$s7, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s3, $a0, %pc_lo12(.L.str.57)
	ori	$s8, $zero, 1
	b	.LBB1_12
.LBB1_10:                               # %if.then89
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB1_18
.LBB1_11:                               # %for.inc97
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $s4, .LBB1_20
.LBB1_12:                               # %for.cond46.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB1_13:                               # %for.cond46
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_13
# %bb.14:                               # %for.cond46
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.d	$a2, $a1, -11
	bgeu	$a2, $s7, .LBB1_17
# %bb.15:                               # %if.then76
                                        #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a1, $s6, 8
	addi.d	$a0, $a0, 64
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_10
# %bb.16:                               # %lor.lhs.false83
                                        #   in Loop: Header=BB1_12 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_11
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_17:                               # %for.cond46
                                        #   in Loop: Header=BB1_12 Depth=1
	beq	$a1, $s8, .LBB1_11
	b	.LBB1_19
.LBB1_18:                               # %if.then92
                                        #   in Loop: Header=BB1_12 Depth=1
	st.d	$s0, $fp, 0
	b	.LBB1_11
.LBB1_19:                               # %if.end104.sink.split.sink.split
	st.w	$zero, $s1, 0
	st.d	$zero, $fp, 0
.LBB1_20:                               # %if.end104
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
	.size	check_yield, .Lfunc_end1-check_yield
                                        # -- End function
	.globl	SetScope                        # -- Begin function SetScope
	.p2align	5
	.type	SetScope,@function
SetScope:                               # @SetScope
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %land.lhs.true
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB2_3
.LBB2_2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %if.end
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB2_16
# %bb.4:                                # %for.cond.preheader
	move	$s2, $a0
	.p2align	4, , 16
.LBB2_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 16
	ld.bu	$a1, $s2, 32
	beqz	$a1, .LBB2_5
# %bb.6:                                # %for.end
	ld.d	$a1, $s2, 0
	beq	$a1, $s2, .LBB2_8
# %bb.7:                                # %if.end26
	ld.d	$s1, $s1, 0
	bne	$s1, $a0, .LBB2_10
	b	.LBB2_9
.LBB2_8:                                # %if.then24
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$s1, $s1, 0
	bne	$s1, $a0, .LBB2_10
.LBB2_9:                                # %cond.false
	ld.d	$s1, $s2, 0
	.p2align	4, , 16
.LBB2_10:                               # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB2_10
# %bb.11:                               # %for.cond44
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB2_13
# %bb.12:                               # %if.then61
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_13:                               # %if.end63
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(SetScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	ori	$a2, $zero, 1
	bnez	$s0, .LBB2_15
# %bb.14:                               # %lor.rhs
	ld.d	$a1, $a0, 112
	sltu	$a2, $zero, $a1
.LBB2_15:                               # %lor.end
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
.LBB2_16:                               # %if.end67
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	SetScope, .Lfunc_end2-SetScope
                                        # -- End function
	.globl	InitParser                      # -- Begin function InitParser
	.p2align	5
	.type	InitParser,@function
InitParser:                             # @InitParser
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	srli.d	$a0, $a0, 11
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	move	$a5, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $s0, 0
	ori	$a0, $zero, 11
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(ttop)
	ld.w	$a1, $fp, %pc_lo12(ttop)
	pcalau12i	$a2, %pc_hi20(cross_name)
	st.d	$a0, $a2, %pc_lo12(cross_name)
	addi.d	$a0, $a1, 1
	ori	$a2, $zero, 98
	st.w	$a0, $fp, %pc_lo12(ttop)
	blt	$a2, $a1, .LBB3_4
# %bb.3:                                # %if.then4
	ld.d	$a1, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a5, $a0, 0
	ori	$a0, $zero, 110
	ori	$a4, $zero, 100
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(ttop)
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(tok_stack)
	addi.d	$a2, $a2, %pc_lo12(tok_stack)
	stx.d	$a0, $a2, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_4:                                # %if.else
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(tok_stack)
	addi.d	$a1, $a1, %pc_lo12(tok_stack)
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.Lfunc_end3:
	.size	InitParser, .Lfunc_end3-InitParser
                                        # -- End function
	.globl	Parse                           # -- Begin function Parse
	.p2align	5
	.type	Parse,@function
Parse:                                  # @Parse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$s6, %pc_hi20(ttop)
	ld.w	$s1, $s6, %pc_lo12(ttop)
	ld.bu	$a4, $a0, 32
	ori	$a5, $zero, 102
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s8, $a1
	move	$a0, $s1
	beq	$a4, $a5, .LBB4_3
# %bb.1:                                # %entry
	ori	$a1, $zero, 104
	move	$a0, $s1
	beq	$a4, $a1, .LBB4_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(ttop)
.LBB4_3:                                # %if.end117
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	pcalau12i	$a3, %pc_hi20(tok_stack)
	addi.d	$s0, $a3, %pc_lo12(tok_stack)
	blt	$a2, $a0, .LBB4_5
# %bb.4:                                # %if.then121
	ld.d	$a0, $s2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s0, $a1
	b	.LBB4_6
.LBB4_5:                                # %if.else124
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %if.end130
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	beqz	$fp, .LBB4_52
# %bb.7:                                # %if.then133
	addi.d	$a0, $sp, 208
	ori	$a2, $zero, 143
	move	$a1, $s8
	pcaddu18i	$ra, %call36(ReadDefinitions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorSeen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.8:                                # %if.then136
	ld.d	$a0, $sp, 208
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 14
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %if.end139
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a0, $a0, 0
	bne	$s8, $a0, .LBB4_52
# %bb.10:                               # %if.then142
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s0, 82
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$fp, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $fp, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s6, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $s6, $a1
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_12
# %bb.11:                               # %if.else156
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s6, $a1
	b	.LBB4_13
.LBB4_12:                               # %if.then154
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB4_13:                               # %if.end165
	ori	$a1, $zero, 82
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 200
	ori	$s5, $zero, 115
	ori	$s3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a0, %got_pc_lo12(zz_hold)
	ori	$s1, $zero, 11
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s2, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_14:                               # %if.then350
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(ReadPrependDef)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %for.cond
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a0, $s4, 0
	st.w	$a1, $fp, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
.LBB4_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	ld.d	$a1, $sp, 208
	ld.bu	$a0, $a1, 32
	blt	$s5, $a0, .LBB4_29
# %bb.17:                               # %for.cond
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a2, $a0, -114
	bltu	$a2, $s3, .LBB4_14
# %bb.18:                               # %for.cond
                                        #   in Loop: Header=BB4_16 Depth=1
	beq	$a0, $s1, .LBB4_31
# %bb.19:                               # %for.cond
                                        #   in Loop: Header=BB4_16 Depth=1
	ori	$a2, $zero, 106
	bne	$a0, $a2, .LBB4_48
# %bb.20:                               # %if.then231
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.bu	$a0, $s0, 106
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a1, $s4, 0
	st.w	$a0, $fp, 0
	st.d	$a2, $a1, 0
	ld.w	$a0, $fp, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB4_22
# %bb.21:                               # %if.then263
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a6, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 15
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_22:                               # %if.end266
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a0, $sp, 208
	move	$s1, $s8
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -6
	addi.d	$s7, $s8, 32
	bgeu	$a1, $s3, .LBB4_39
# %bb.23:                               # %if.then279
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $s8, 8
	.p2align	4, , 16
.LBB4_24:                               # %for.cond286
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_24
# %bb.25:                               # %for.cond286
                                        #   in Loop: Header=BB4_16 Depth=1
	bne	$a1, $s3, .LBB4_44
# %bb.26:                               # %if.then300
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a1, $sp, 200
	st.d	$zero, $sp, 192
	addi.d	$a2, $sp, 168
	addi.d	$a3, $sp, 192
	addi.d	$a4, $sp, 184
	move	$a0, $s8
	pcaddu18i	$ra, %call36(CrossExpand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192
	move	$s8, $a0
	beqz	$a1, .LBB4_28
# %bb.27:                               # %if.then304
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a4, $s8, 32
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a6, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 16
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %if.end307
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(HuntCommandOptions)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200
	move	$a0, $s8
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_29:                               # %for.cond
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a1, $a0, -116
	bgeu	$a1, $s3, .LBB4_48
# %bb.30:                               # %if.then397
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(ReadDatabaseDef)
	jirl	$ra, $ra, 0
	b	.LBB4_15
.LBB4_31:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$s7, $a1, 64
	move	$a0, $s7
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.32:                               # %lor.lhs.false188
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.33:                               # %lor.lhs.false194
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.34:                               # %lor.lhs.false200
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.35:                               # %lor.lhs.false206
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.36:                               # %lor.lhs.false212
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_48
.LBB4_37:                               # %if.then218
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a0, $sp, 208
	ori	$a2, $zero, 143
	move	$a1, $s8
	pcaddu18i	$ra, %call36(ReadDefinitions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorSeen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_16
# %bb.38:                               # %if.then221
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $sp, 208
	addi.d	$a4, $a0, 32
	ori	$a0, $zero, 6
	ori	$a1, $zero, 39
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_16
.LBB4_39:                               # %if.end266
                                        #   in Loop: Header=BB4_16 Depth=1
	bne	$a0, $s3, .LBB4_45
# %bb.40:                               # %if.then319
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $s8, 80
	ld.d	$a1, $a0, 112
	beqz	$a1, .LBB4_42
# %bb.41:                               # %if.then322
                                        #   in Loop: Header=BB4_16 Depth=1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a6, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 18
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 80
.LBB4_42:                               # %if.end327
                                        #   in Loop: Header=BB4_16 Depth=1
	st.d	$s8, $a0, 112
	move	$a0, $s8
	pcaddu18i	$ra, %call36(HuntCommandOptions)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $zero
.LBB4_43:                               # %if.end335
                                        #   in Loop: Header=BB4_16 Depth=1
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	b	.LBB4_47
.LBB4_44:                               # %if.else309
                                        #   in Loop: Header=BB4_16 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 17
	b	.LBB4_46
.LBB4_45:                               # %if.else331
                                        #   in Loop: Header=BB4_16 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 19
.LBB4_46:                               # %if.end335
                                        #   in Loop: Header=BB4_16 Depth=1
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_47:                               # %if.end335
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $s8, 80
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	move	$s8, $s1
	ori	$s1, $zero, 11
	b	.LBB4_16
.LBB4_48:                               # %for.end437
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_50
# %bb.49:                               # %if.then439
	pcalau12i	$fp, %pc_hi20(cross_name)
	ld.d	$a0, $fp, %pc_lo12(cross_name)
	addi.d	$a1, $a0, 64
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(DbCreate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(NewCrossDb)
	ld.d	$a2, $a1, %got_pc_lo12(NewCrossDb)
	ld.d	$a1, $fp, %pc_lo12(cross_name)
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(InMemoryDbIndexes)
	ld.d	$a0, $a0, %got_pc_lo12(InMemoryDbIndexes)
	ld.w	$a4, $a0, 0
	move	$a0, $a1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(DbLoad)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_50:                               # %if.else445
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a1, $a0, %got_pc_lo12(NewCrossDb)
	move	$a0, $zero
	st.d	$zero, $a1, 0
.LBB4_51:                               # %if.end446
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(OldCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(OldCrossDb)
	st.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(FlattenUses)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(TransferInit)
	jirl	$ra, $ra, 0
.LBB4_52:                               # %if.end448
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI4_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI4_0)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a0, $a0, %got_pc_lo12(zz_free)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(otop)
	pcalau12i	$a0, %pc_hi20(obj_stack)
	addi.d	$a0, $a0, %pc_lo12(obj_stack)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $zero
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3327
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$a0, $a0, 64
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_53:                               #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $zero
.LBB4_54:                               # %if.end1620
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
.LBB4_55:                               # %for.cond449
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_396 Depth 2
                                        #     Child Loop BB4_121 Depth 2
                                        #     Child Loop BB4_226 Depth 2
                                        #     Child Loop BB4_73 Depth 2
                                        #     Child Loop BB4_244 Depth 2
                                        #     Child Loop BB4_179 Depth 2
                                        #       Child Loop BB4_180 Depth 3
                                        #     Child Loop BB4_284 Depth 2
                                        #     Child Loop BB4_127 Depth 2
                                        #     Child Loop BB4_265 Depth 2
                                        #     Child Loop BB4_279 Depth 2
                                        #     Child Loop BB4_221 Depth 2
                                        #     Child Loop BB4_268 Depth 2
                                        #     Child Loop BB4_296 Depth 2
                                        #     Child Loop BB4_276 Depth 2
                                        #     Child Loop BB4_114 Depth 2
                                        #     Child Loop BB4_97 Depth 2
                                        #     Child Loop BB4_105 Depth 2
                                        #     Child Loop BB4_102 Depth 2
                                        #     Child Loop BB4_337 Depth 2
                                        #     Child Loop BB4_89 Depth 2
                                        #     Child Loop BB4_164 Depth 2
                                        #     Child Loop BB4_378 Depth 2
                                        #     Child Loop BB4_64 Depth 2
                                        #     Child Loop BB4_60 Depth 2
                                        #     Child Loop BB4_208 Depth 2
                                        #     Child Loop BB4_371 Depth 2
                                        #     Child Loop BB4_429 Depth 2
                                        #       Child Loop BB4_439 Depth 3
                                        #         Child Loop BB4_440 Depth 4
                                        #       Child Loop BB4_453 Depth 3
                                        #       Child Loop BB4_456 Depth 3
                                        #         Child Loop BB4_458 Depth 4
                                        #     Child Loop BB4_479 Depth 2
                                        #       Child Loop BB4_480 Depth 3
                                        #       Child Loop BB4_485 Depth 3
                                        #         Child Loop BB4_486 Depth 4
                                        #     Child Loop BB4_512 Depth 2
                                        #     Child Loop BB4_562 Depth 2
                                        #     Child Loop BB4_582 Depth 2
                                        #     Child Loop BB4_601 Depth 2
                                        #     Child Loop BB4_606 Depth 2
                                        #     Child Loop BB4_521 Depth 2
                                        #     Child Loop BB4_271 Depth 2
	ld.d	$s3, $sp, 208
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -2
	ori	$a2, $zero, 115
	bltu	$a2, $a1, .LBB4_186
# %bb.56:                               # %for.cond449
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	addi.d	$s7, $s3, 32
	add.d	$a2, $a2, $a1
	ori	$a1, $zero, 1
	jr	$a2
.LBB4_57:                               # %sw.bb1394
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	bnez	$a0, .LBB4_62
# %bb.58:                               # %if.else1446
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_82
# %bb.59:                               # %if.then1448
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s0, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$fp, $a1, $a0
	.p2align	4, , 16
.LBB4_60:                               # %land.rhs1476
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_69
# %bb.61:                               # %while.body1485
                                        #   in Loop: Header=BB4_60 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_60
	b	.LBB4_82
	.p2align	4, , 16
.LBB4_62:                               # %for.cond1403.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_64
.LBB4_63:                               # %if.else1414
                                        #   in Loop: Header=BB4_64 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_64:                               # %for.cond1403
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_67
# %bb.65:                               # %if.else1421
                                        #   in Loop: Header=BB4_64 Depth=2
	ld.w	$a0, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	ld.d	$a1, $sp, 208
	ld.bu	$a0, $a0, 40
	ld.bu	$a1, $a1, 40
	bgeu	$a1, $a0, .LBB4_82
# %bb.66:                               # %if.then1433
                                        #   in Loop: Header=BB4_64 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_64
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_67:                               # %if.then1405
                                        #   in Loop: Header=BB4_64 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_63
# %bb.68:                               # %if.then1411
                                        #   in Loop: Header=BB4_64 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_64
.LBB4_69:                               # %if.then1489
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_78
# %bb.70:                               # %if.else1505
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_79
.LBB4_71:                               # %sw.bb2915
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 26
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_72:                               # %if.else6909
                                        #   in Loop: Header=BB4_73 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_73:                               # %for.cond6898
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_76
# %bb.74:                               # %if.else6916
                                        #   in Loop: Header=BB4_73 Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 208
	ld.bu	$a3, $a0, 40
	ld.bu	$a4, $a2, 40
	bgeu	$a4, $a3, .LBB4_204
# %bb.75:                               # %if.then6928
                                        #   in Loop: Header=BB4_73 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_73
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_76:                               # %if.then6900
                                        #   in Loop: Header=BB4_73 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_72
# %bb.77:                               # %if.then6906
                                        #   in Loop: Header=BB4_73 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_73
.LBB4_78:                               # %if.then1503
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_79:                               # %if.end1514
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_81
# %bb.80:                               # %if.then1577
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_82
.LBB4_81:                               # %if.else1580
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_82:                               # %if.end1589
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_84
# %bb.83:                               # %if.then1593
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s7, $a1
	ld.d	$a0, $a0, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	bnez	$a0, .LBB4_53
	b	.LBB4_85
	.p2align	4, , 16
.LBB4_84:                               # %if.else1596
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	ld.d	$a0, $a0, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	bnez	$a0, .LBB4_53
.LBB4_85:                               # %if.else1611
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	beq	$a1, $s1, .LBB4_627
# %bb.86:                               #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $a0
	b	.LBB4_54
.LBB4_87:                               # %for.cond798.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB4_89
.LBB4_88:                               # %if.else809
                                        #   in Loop: Header=BB4_89 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_89:                               # %for.cond798
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_92
# %bb.90:                               # %if.else816
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a2, $sp, 208
	ld.bu	$a3, $a0, 40
	ld.bu	$a4, $a2, 40
	bltu	$a3, $a4, .LBB4_110
# %bb.91:                               # %if.then828
                                        #   in Loop: Header=BB4_89 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_89
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_92:                               # %if.then800
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s3, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_88
# %bb.93:                               # %if.then806
                                        #   in Loop: Header=BB4_89 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_89
.LBB4_94:                               # %sw.bb2200
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	bnez	$a0, .LBB4_112
# %bb.95:                               # %if.else2253
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_315
# %bb.96:                               # %if.then2255
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s0, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$fp, $a1, $a0
	.p2align	4, , 16
.LBB4_97:                               # %land.rhs2283
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_234
# %bb.98:                               # %while.body2292
                                        #   in Loop: Header=BB4_97 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_97
	b	.LBB4_315
.LBB4_99:                               # %sw.bb1622
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	bnez	$a0, .LBB4_105
# %bb.100:                              # %if.else1675
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s5, .LBB4_323
# %bb.101:                              # %if.then1677
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s0, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$fp, $a1, $a0
	.p2align	4, , 16
.LBB4_102:                              # %land.rhs1705
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_236
# %bb.103:                              # %while.body1714
                                        #   in Loop: Header=BB4_102 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_102
	b	.LBB4_323
.LBB4_104:                              # %if.else1643
                                        #   in Loop: Header=BB4_105 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_105:                              # %for.cond1632
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_108
# %bb.106:                              # %if.else1650
                                        #   in Loop: Header=BB4_105 Depth=2
	ld.w	$a0, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 208
	ld.bu	$a0, $a0, 40
	ld.bu	$a1, $a1, 40
	bgeu	$a1, $a0, .LBB4_323
# %bb.107:                              # %if.then1662
                                        #   in Loop: Header=BB4_105 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_105
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_108:                              # %if.then1634
                                        #   in Loop: Header=BB4_105 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_104
# %bb.109:                              # %if.then1640
                                        #   in Loop: Header=BB4_105 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_105
.LBB4_110:                              # %for.end839
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.w	$a3, $a1, 1
	st.w	$a3, $s6, %pc_lo12(ttop)
	ori	$a4, $zero, 98
	blt	$a4, $a1, .LBB4_187
# %bb.111:                              # %if.then843
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a3, 3
	stx.d	$a2, $s0, $a0
	b	.LBB4_188
.LBB4_112:                              # %for.cond2210.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_114
.LBB4_113:                              # %if.else2221
                                        #   in Loop: Header=BB4_114 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_114:                              # %for.cond2210
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_117
# %bb.115:                              # %if.else2228
                                        #   in Loop: Header=BB4_114 Depth=2
	ld.w	$a0, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	ld.d	$a1, $sp, 208
	ld.bu	$a0, $a0, 40
	ld.bu	$a1, $a1, 40
	bltu	$a0, $a1, .LBB4_315
# %bb.116:                              # %if.then2240
                                        #   in Loop: Header=BB4_114 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_114
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_117:                              # %if.then2212
                                        #   in Loop: Header=BB4_114 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_113
# %bb.118:                              # %if.then2218
                                        #   in Loop: Header=BB4_114 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_114
.LBB4_119:                              # %for.cond2850.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB4_121
.LBB4_120:                              # %if.else2861
                                        #   in Loop: Header=BB4_121 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_121:                              # %for.cond2850
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_124
# %bb.122:                              # %if.else2868
                                        #   in Loop: Header=BB4_121 Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a2, $sp, 208
	ld.bu	$a3, $a0, 40
	ld.bu	$a4, $a2, 40
	bltu	$a3, $a4, .LBB4_202
# %bb.123:                              # %if.then2880
                                        #   in Loop: Header=BB4_121 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_121
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_124:                              # %if.then2852
                                        #   in Loop: Header=BB4_121 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s0, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_120
# %bb.125:                              # %if.then2858
                                        #   in Loop: Header=BB4_121 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_121
.LBB4_126:                              # %sw.bb3972
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 87
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $s7, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	st.w	$zero, $sp, 184
	addi.d	$a1, $sp, 184
	move	$a2, $zero
	pcaddu18i	$ra, %call36(SetScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 184
	move	$fp, $a0
	blez	$s0, .LBB4_128
	.p2align	4, , 16
.LBB4_127:                              # %for.body4010
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB4_127
.LBB4_128:                              # %for.end4013
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 200
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_292
# %bb.129:                              # %if.then4015
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 41
	ld.bu	$a1, $fp, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB4_264
# %bb.130:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$s0, $zero, 7
	ori	$s1, $zero, 100
	b	.LBB4_265
.LBB4_131:                              # %sw.bb2600
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	beqz	$a0, .LBB4_213
# %bb.132:                              #   in Loop: Header=BB4_55 Depth=1
	move	$fp, $zero
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB4_396
.LBB4_133:                              # %sw.bb
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 64
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB4_138
# %bb.134:                              # %land.lhs.true458
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB4_136
# %bb.135:                              # %lor.lhs.false461
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 42
	ld.bu	$a1, $s3, 41
	or	$a2, $a1, $a0
	beqz	$a2, .LBB4_376
.LBB4_136:                              # %if.then471
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a5, $s3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 20
	ori	$a3, $zero, 2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(unknown_count)
	ld.w	$a1, $a0, %pc_lo12(unknown_count)
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, %pc_lo12(unknown_count)
	ori	$a0, $zero, 25
	blt	$a1, $a0, .LBB4_138
# %bb.137:                              # %if.then479
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 21
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_138:                              # %if.end483
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_386
# %bb.139:                              # %if.end483.if.then485_crit_edge
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s3, $sp, 208
	ld.bu	$a1, $s3, 41
	ld.bu	$a0, $s3, 42
	or	$a0, $a0, $a1
	beqz	$a0, .LBB4_377
.LBB4_140:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_378
.LBB4_141:                              # %sw.bb2430
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 22
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_142:                              # %sw.bb3275
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexNextTokenPos)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	addi.d	$a0, $a0, -5
	slli.d	$a3, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	st.w	$a0, $sp, 168
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $s7, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	st.d	$a3, $a1, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_304
# %bb.143:                              # %if.then3317
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB4_267
# %bb.144:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_268
.LBB4_145:                              # %sw.bb2920
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(ParseEnvClosure)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_292
# %bb.146:                              # %if.then2923
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 41
	ld.bu	$a1, $fp, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB4_275
# %bb.147:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$s0, $zero, 7
	ori	$s1, $zero, 100
	b	.LBB4_276
.LBB4_148:                              # %sw.bb3474
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $fp, 85
	slli.d	$a1, $a0, 3
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $s1, $a1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $s7, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $s0, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $fp, 82
	slli.d	$a1, $a2, 3
	ldx.d	$fp, $s1, $a1
	st.d	$a0, $sp, 208
	st.w	$a2, $s0, 0
	beqz	$fp, .LBB4_218
# %bb.149:                              # %if.else3519
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$fp, $s7, 0
	ld.d	$a0, $fp, 0
	alsl.d	$a1, $a2, $s1, 3
	st.d	$a0, $a1, 0
	b	.LBB4_219
.LBB4_150:                              # %sw.bb4501
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(SuppressVisible)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a5, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(UnSuppressVisible)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 208
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_152
# %bb.151:                              # %if.then4538
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $s3, 32
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a5, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 29
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 208
.LBB4_152:                              # %sw.bb4542
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$s0, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a1, $zero, 107
	bne	$s0, $a1, .LBB4_154
# %bb.153:                              # %if.then4550
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a1, $a1, 107
	slli.d	$a2, $a1, 3
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a5, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
.LBB4_154:                              # %if.end4583
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 254
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB4_158
# %bb.155:                              # %if.then4595
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s5, .LBB4_353
# %bb.156:                              # %if.then4597
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB4_270
# %bb.157:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_271
.LBB4_158:                              # %if.end4751
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	bnez	$a0, .LBB4_206
# %bb.159:                              # %if.else4808
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s5, .LBB4_412
# %bb.160:                              # %if.then4810
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB4_370
# %bb.161:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s1, $zero, 100
	b	.LBB4_371
.LBB4_162:                              # %sw.bb640
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_386
# %bb.163:                              # %if.then642
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a1, $s3, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s0, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$fp, $a1, $a0
	.p2align	4, , 16
.LBB4_164:                              # %land.rhs670
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_380
# %bb.165:                              # %while.body679
                                        #   in Loop: Header=BB4_164 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_164
	b	.LBB4_386
.LBB4_166:                              # %sw.bb2433
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 80
	beqz	$a0, .LBB4_223
# %bb.167:                              #   in Loop: Header=BB4_55 Depth=1
	move	$a1, $zero
	b	.LBB4_224
.LBB4_168:                              # %sw.bb3698
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 86
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $s7, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB4_171
# %bb.169:                              # %lor.lhs.false3735
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	addi.d	$a2, $sp, 168
	addi.d	$a3, $sp, 192
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_172
# %bb.170:                              # %lor.lhs.false3735.if.then3741_crit_edge
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
.LBB4_171:                              # %if.then3741
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 37
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_172:                              # %if.end3744
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	ld.hu	$a0, $a0, 34
	ld.w	$a1, $sp, 168
	addi.d	$a2, $sp, 200
	pcaddu18i	$ra, %call36(EnvReadRetrieve)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_230
# %bb.173:                              # %if.else3784
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a1, 32
	addi.d	$a2, $a0, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a1, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a2, $a0, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a4, $a2
	st.d	$a1, $s7, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	st.d	$a2, $a1, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	b	.LBB4_231
.LBB4_174:                              # %sw.bb4170
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 90
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $s7, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB4_176
# %bb.175:                              # %if.then4207
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a5, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 27
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
.LBB4_176:                              # %if.end4210
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$fp, $a0, 80
	ld.d	$a2, $fp, 112
	bnez	$a2, .LBB4_178
# %bb.177:                              # %if.then4215
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 28
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 112
.LBB4_178:                              # %if.end4218
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB4_199
.LBB4_179:                              # %for.cond4231.preheader
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_180 Depth 3
	move	$a1, $a0
	.p2align	4, , 16
.LBB4_180:                              # %for.cond4231
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB4_180
# %bb.181:                              # %for.cond4231
                                        #   in Loop: Header=BB4_179 Depth=2
	ori	$a1, $zero, 82
	beq	$a2, $a1, .LBB4_194
# %bb.182:                              # %for.cond4224.loopexit
                                        #   in Loop: Header=BB4_179 Depth=2
	ld.d	$a0, $a0, 0
	bne	$a0, $fp, .LBB4_179
	b	.LBB4_199
.LBB4_183:                              # %sw.bb3078
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexNextTokenPos)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	addi.d	$a0, $a0, -5
	slli.d	$a3, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	st.w	$a0, $sp, 168
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $s7, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	st.d	$a3, $a1, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_304
# %bb.184:                              # %if.then3118
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB4_295
# %bb.185:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_296
.LBB4_186:                              # %sw.default
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $fp
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_187:                              # %if.else846
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_188:                              # %if.end852
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_533
# %bb.189:                              # %land.lhs.true854
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 19
	bne	$a1, $a2, .LBB4_533
# %bb.190:                              # %land.lhs.true860
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $a0, 80
	ld.bu	$a0, $a0, 43
	andi	$a0, $a0, 4
	bnez	$a0, .LBB4_533
# %bb.191:                              # %land.lhs.true867
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	alsl.d	$a0, $a0, $s0, 3
	ld.d	$a0, $a0, -16
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_533
# %bb.192:                              # %if.then876
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a1, $s4, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, %pc_lo12(otop)
	pcaddu18i	$ra, %call36(TransferComponent)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 5
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB4_529
# %bb.193:                              # %if.else893
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB4_530
.LBB4_194:                              # %if.then4248
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a1, 0
	beq	$a2, $a0, .LBB4_196
# %bb.195:                              # %cond.false4255
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB4_196:                              # %cond.end4277
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a2, $a0, 8
	st.d	$a0, $s7, 0
	beq	$a2, $a0, .LBB4_198
# %bb.197:                              # %cond.false4285
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a2, $s7, 0
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a2, $a2, 8
.LBB4_198:                              # %cond.end4307
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a4, $a2
	st.d	$a0, $s7, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
.LBB4_199:                              # %for.end4344
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s5, .LBB4_292
# %bb.200:                              # %if.then4346
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 41
	ld.bu	$a1, $fp, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB4_283
# %bb.201:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$s0, $zero, 7
	ori	$s1, $zero, 100
	b	.LBB4_284
.LBB4_202:                              # %for.end2892
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.w	$a3, $a1, 1
	st.w	$a3, $s6, %pc_lo12(ttop)
	ori	$a4, $zero, 98
	blt	$a4, $a1, .LBB4_240
# %bb.203:                              # %if.then2896
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a3, 3
	stx.d	$a2, $fp, $a0
	b	.LBB4_85
.LBB4_204:                              # %for.end6940
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.w	$a3, $a1, 1
	st.w	$a3, $s6, %pc_lo12(ttop)
	ori	$a4, $zero, 98
	blt	$a4, $a1, .LBB4_241
# %bb.205:                              # %if.then6944
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a3, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	b	.LBB4_242
.LBB4_206:                              # %for.cond4760.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$fp, $s3, 32
	b	.LBB4_208
.LBB4_207:                              # %if.else4771
                                        #   in Loop: Header=BB4_208 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_208:                              # %for.cond4760
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_211
# %bb.209:                              # %if.else4778
                                        #   in Loop: Header=BB4_208 Depth=2
	ld.w	$a0, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 41
	ld.bu	$a2, $s3, 40
	ld.bu	$a0, $a0, 40
	bstrpick.d	$a1, $a1, 4, 4
	add.d	$a1, $a1, $a2
	bltu	$a0, $a1, .LBB4_412
# %bb.210:                              # %if.then4795
                                        #   in Loop: Header=BB4_208 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_208
	b	.LBB4_626
	.p2align	4, , 16
.LBB4_211:                              # %if.then4762
                                        #   in Loop: Header=BB4_208 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	move	$a2, $fp
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_207
# %bb.212:                              # %if.then4768
                                        #   in Loop: Header=BB4_208 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_208
.LBB4_213:                              # %if.then2604
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a4, $fp, 32
	ori	$a1, $zero, 52
	blt	$a1, $a0, .LBB4_308
# %bb.214:                              # %if.then2604
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB4_390
# %bb.215:                              # %if.then2604
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB4_375
# %bb.216:                              # %land.lhs.true2726
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 64
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB4_375
# %bb.217:                              # %if.then2732
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a5, $fp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a6, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 24
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	st.d	$zero, $a0, 80
	b	.LBB4_394
.LBB4_218:                              # %if.then3517
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s7, 0
.LBB4_219:                              # %if.end3528
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ori	$a0, $zero, 82
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	beqz	$s5, .LBB4_360
# %bb.220:                              # %if.then3544
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 41
	ld.bu	$a1, $fp, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s0, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s1, $a1, $a0
	.p2align	4, , 16
.LBB4_221:                              # %land.rhs3572
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s1, .LBB4_238
# %bb.222:                              # %while.body3581
                                        #   in Loop: Header=BB4_221 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_221
	b	.LBB4_360
.LBB4_223:                              # %if.then2437
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a2, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a5, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a6, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 23
	ori	$a3, $zero, 2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 208
	ori	$a0, $zero, 102
	st.b	$a0, $s3, 32
	ori	$a1, $zero, 1
.LBB4_224:                              # %sw.bb2443
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB4_260
# %bb.225:                              # %if.then2445
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 41
	ld.bu	$a2, $s3, 42
	or	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	addi.d	$a2, $s5, -2
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 103
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	addi.d	$s0, $a0, 100
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a4, $a0
	or	$fp, $a1, $a0
	.p2align	4, , 16
.LBB4_226:                              # %land.rhs2473
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_228
# %bb.227:                              # %while.body2482
                                        #   in Loop: Header=BB4_226 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_226
	b	.LBB4_260
.LBB4_228:                              # %if.then2486
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_256
# %bb.229:                              # %if.else2502
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_257
.LBB4_230:                              # %if.then3749
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $a1, 34
	ld.w	$a1, $sp, 168
	ld.w	$a3, $sp, 192
	ori	$a2, $zero, 3
	ori	$a4, $zero, 1
	pcaddu18i	$ra, %call36(LexPush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a4, $a2
	st.d	$a0, $s7, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(LexPop)
	jirl	$ra, $ra, 0
.LBB4_231:                              # %if.end3815
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s5, .LBB4_367
# %bb.232:                              # %if.then3817
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 200
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB4_278
# %bb.233:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_279
.LBB4_234:                              # %if.then2296
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_311
# %bb.235:                              # %if.else2312
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_312
.LBB4_236:                              # %if.then1718
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_319
# %bb.237:                              # %if.else1734
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_320
.LBB4_238:                              # %if.then3585
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_356
# %bb.239:                              # %if.else3601
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_357
.LBB4_240:                              # %if.else2899
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_85
.LBB4_241:                              # %if.else6947
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_242:                              # %if.end6953
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a3, $zero, 2
	ld.w	$a0, $s4, %pc_lo12(otop)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	ld.bu	$a0, $a1, 32
	addi.d	$a2, $a0, -6
	bgeu	$a2, $a3, .LBB4_247
# %bb.243:                              # %land.lhs.true6981
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $a1, 8
	beq	$a0, $a1, .LBB4_253
.LBB4_244:                              # %for.cond7000
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_244
# %bb.245:                              # %for.cond7000
                                        #   in Loop: Header=BB4_55 Depth=1
	bne	$a1, $a3, .LBB4_253
# %bb.246:                              # %if.end7021.loopexit
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$a1, $a0
	b	.LBB4_248
.LBB4_247:                              # %if.end6953
                                        #   in Loop: Header=BB4_55 Depth=1
	bne	$a0, $a3, .LBB4_253
.LBB4_248:                              # %if.end7021
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$fp, $a1, 80
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	beqz	$fp, .LBB4_254
# %bb.249:                              # %if.else7028
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB4_251
# %bb.250:                              # %if.else7028
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a2, $zero, 104
	bne	$a1, $a2, .LBB4_547
.LBB4_251:                              # %if.else7043
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 208
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_543
# %bb.252:                              # %if.then7190
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_544
.LBB4_253:                              # %if.end7021.thread
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
.LBB4_254:                              # %if.then7025
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a2, $a0, %pc_lo12(.L.str.53)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a5, $a0, %pc_lo12(.L.str.54)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 35
	ori	$a3, $zero, 2
	move	$a4, $s7
.LBB4_255:                              # %for.cond449
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB4_55
.LBB4_256:                              # %if.then2500
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_257:                              # %if.end2511
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_259
# %bb.258:                              # %if.then2574
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_260
.LBB4_259:                              # %if.else2577
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_260:                              # %if.end2585
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_262
# %bb.261:                              # %if.then2589
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_263
.LBB4_262:                              # %if.else2592
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_263:                              # %if.end2598
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	st.d	$a0, $sp, 208
	b	.LBB4_55
.LBB4_264:                              # %if.else4028
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a1
	ori	$s1, $zero, 101
	.p2align	4, , 16
.LBB4_265:                              # %land.rhs4043
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s0, .LBB4_286
# %bb.266:                              # %while.body4052
                                        #   in Loop: Header=BB4_265 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_265
	b	.LBB4_292
.LBB4_267:                              # %if.else3330
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_268:                              # %land.rhs3345
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_298
# %bb.269:                              # %while.body3354
                                        #   in Loop: Header=BB4_268 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_268
	b	.LBB4_304
.LBB4_270:                              # %if.else4610
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_271:                              # %land.rhs4625
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_273
# %bb.272:                              # %while.body4634
                                        #   in Loop: Header=BB4_271 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_271
	b	.LBB4_353
.LBB4_273:                              # %if.then4638
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_349
# %bb.274:                              # %if.else4654
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_350
.LBB4_275:                              # %if.else2936
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a1
	ori	$s1, $zero, 101
	.p2align	4, , 16
.LBB4_276:                              # %land.rhs2951
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s0, .LBB4_286
# %bb.277:                              # %while.body2960
                                        #   in Loop: Header=BB4_276 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_276
	b	.LBB4_292
.LBB4_278:                              # %if.else3830
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_279:                              # %land.rhs3845
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_281
# %bb.280:                              # %while.body3854
                                        #   in Loop: Header=BB4_279 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_279
	b	.LBB4_367
.LBB4_281:                              # %if.then3858
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_363
# %bb.282:                              # %if.else3874
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_364
.LBB4_283:                              # %if.else4359
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a1
	ori	$s1, $zero, 101
	.p2align	4, , 16
.LBB4_284:                              # %land.rhs4374
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s0, .LBB4_286
# %bb.285:                              # %while.body4383
                                        #   in Loop: Header=BB4_284 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_284
	b	.LBB4_292
.LBB4_286:                              # %if.then4056
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s1
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_288
# %bb.287:                              # %if.else4072
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_289
.LBB4_288:                              # %if.then4070
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	st.d	$a0, $s7, 0
.LBB4_289:                              # %if.end4081
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.b	$s0, $a0, 40
	ld.b	$a2, $fp, 42
	st.b	$a2, $a0, 42
	ld.b	$a2, $fp, 41
	ld.hu	$a3, $a0, 44
	st.b	$a2, $a0, 41
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	addi.d	$a2, $a2, 512
	st.h	$a2, $a0, 44
	ld.h	$a2, $fp, 34
	st.h	$a2, $a0, 34
	ld.wu	$a2, $fp, 36
	ld.wu	$a3, $a0, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $a0, 36
	ld.wu	$a3, $fp, 36
	srli.d	$a3, $a3, 20
	bstrins.d	$a2, $a3, 63, 20
	st.w	$a2, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_291
# %bb.290:                              # %if.then4144
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s3, $a1
	b	.LBB4_292
.LBB4_291:                              # %if.else3055
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_292:                              # %if.end3063
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	st.d	$fp, $s7, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_294
# %bb.293:                              # %if.then3067
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$fp, $a1, $a0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB4_389
.LBB4_294:                              # %if.else3070
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB4_389
.LBB4_295:                              # %if.else3131
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_296:                              # %land.rhs3146
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_298
# %bb.297:                              # %while.body3155
                                        #   in Loop: Header=BB4_296 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_296
	b	.LBB4_304
.LBB4_298:                              # %if.then3159
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_300
# %bb.299:                              # %if.else3175
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_301
.LBB4_300:                              # %if.then3173
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	st.d	$a0, $s7, 0
.LBB4_301:                              # %if.end3184
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_303
# %bb.302:                              # %if.then3247
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s3, $a1
	b	.LBB4_304
.LBB4_303:                              # %if.else3250
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_304:                              # %if.end3258
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 200
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s7, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_306
# %bb.305:                              # %if.then3262
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_307
.LBB4_306:                              # %if.else3265
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_307:                              # %if.end3271
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.hu	$a3, $a0, 34
	ld.w	$a1, $sp, 168
	ld.d	$a2, $sp, 200
	st.d	$a0, $sp, 208
	move	$a0, $a3
	pcaddu18i	$ra, %call36(EnvReadInsert)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB4_55
.LBB4_308:                              # %if.then2604
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 53
	beq	$a0, $a1, .LBB4_391
# %bb.309:                              # %if.then2604
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a1, $zero, 54
	bne	$a0, $a1, .LBB4_375
# %bb.310:                              # %if.then2688
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %got_pc_hi20(RawVerbatimSym)
	ld.d	$a0, $a0, %got_pc_lo12(RawVerbatimSym)
	b	.LBB4_392
.LBB4_311:                              # %if.then2310
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_312:                              # %if.end2321
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_314
# %bb.313:                              # %if.then2384
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_315
.LBB4_314:                              # %if.else2387
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_315:                              # %if.end2396
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_317
# %bb.316:                              # %if.then2400
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_318
.LBB4_317:                              # %if.else2403
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
.LBB4_318:                              # %if.end2409
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $a0, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	bnez	$a0, .LBB4_53
	b	.LBB4_85
.LBB4_319:                              # %if.then1732
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_320:                              # %if.end1743
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_322
# %bb.321:                              # %if.then1806
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_323
.LBB4_322:                              # %if.else1809
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_323:                              # %if.end1818
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_325
# %bb.324:                              # %if.then1822
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_326
.LBB4_325:                              # %if.else1825
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
.LBB4_326:                              # %if.end1831
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $a0, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_329
# %bb.327:                              # %if.else1841
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	beq	$a1, $s1, .LBB4_627
# %bb.328:                              #   in Loop: Header=BB4_55 Depth=1
	move	$fp, $a0
	b	.LBB4_330
.LBB4_329:                              #   in Loop: Header=BB4_55 Depth=1
	move	$fp, $zero
.LBB4_330:                              # %if.end1850
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB4_333
# %bb.331:                              # %if.end1850
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a2, $zero, 104
	beq	$a1, $a2, .LBB4_333
# %bb.332:                              # %if.then1863
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a6, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 40
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
.LBB4_333:                              # %if.end1866
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $s7, 0
	addi.d	$a1, $a1, -53
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(VerbatimSym)
	ld.d	$a2, $a2, %got_pc_lo12(VerbatimSym)
	pcalau12i	$a3, %got_pc_hi20(RawVerbatimSym)
	ld.d	$a3, $a3, %got_pc_lo12(RawVerbatimSym)
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 80
	beqz	$fp, .LBB4_345
# %bb.334:                              # %if.then1878
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB4_336
# %bb.335:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 7
	ori	$s0, $zero, 100
	b	.LBB4_337
.LBB4_336:                              # %if.else1891
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_337:                              # %land.rhs1906
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_339
# %bb.338:                              # %while.body1915
                                        #   in Loop: Header=BB4_337 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_337
	b	.LBB4_345
.LBB4_339:                              # %if.then1919
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_341
# %bb.340:                              # %if.else1935
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a3, $a2, 0
	b	.LBB4_342
.LBB4_341:                              # %if.then1933
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_342:                              # %if.end1944
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_344
# %bb.343:                              # %if.then2007
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_345
.LBB4_344:                              # %if.else2010
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_345:                              # %if.end2018
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_347
# %bb.346:                              # %if.then2022
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_348
.LBB4_347:                              # %if.else2025
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
.LBB4_348:                              # %if.end2031
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	ld.bu	$a3, $s7, 0
	addi.d	$a2, $a0, 32
	addi.d	$a0, $a1, -104
	sltui	$a1, $a0, 1
	addi.d	$a0, $a3, -54
	sltui	$a3, $a0, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LexScanVerbatim)
	jirl	$ra, $ra, 0
	b	.LBB4_387
.LBB4_349:                              # %if.then4652
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_350:                              # %if.end4663
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.b	$fp, $a0, 40
	ld.b	$a2, $s3, 42
	st.b	$a2, $a0, 42
	ld.b	$a2, $s3, 41
	ld.hu	$a3, $a0, 44
	st.b	$a2, $a0, 41
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	addi.d	$a2, $a2, 512
	st.h	$a2, $a0, 44
	ld.h	$a2, $s3, 34
	st.h	$a2, $a0, 34
	ld.wu	$a2, $s3, 36
	ld.wu	$a3, $a0, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $a0, 36
	ld.wu	$a3, $s3, 36
	srli.d	$a3, $a3, 20
	bstrins.d	$a2, $a3, 63, 20
	st.w	$a2, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_352
# %bb.351:                              # %if.then4726
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_353
.LBB4_352:                              # %if.else4729
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_353:                              # %if.end4737
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_355
# %bb.354:                              # %if.then4741
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$s3, $a1, $a0
	ori	$s5, $zero, 1
	b	.LBB4_55
.LBB4_355:                              # %if.else4744
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_356:                              # %if.then3599
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	st.d	$a0, $s7, 0
.LBB4_357:                              # %if.end3610
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.b	$s1, $a0, 40
	ld.b	$a2, $fp, 42
	st.b	$a2, $a0, 42
	ld.b	$a2, $fp, 41
	ld.hu	$a3, $a0, 44
	st.b	$a2, $a0, 41
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	addi.d	$a2, $a2, 512
	st.h	$a2, $a0, 44
	ld.h	$a2, $fp, 34
	st.h	$a2, $a0, 34
	ld.wu	$a2, $fp, 36
	ld.wu	$a3, $a0, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $a0, 36
	ld.wu	$a3, $fp, 36
	srli.d	$a3, $a3, 20
	bstrins.d	$a2, $a3, 63, 20
	st.w	$a2, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_359
# %bb.358:                              # %if.then3673
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s3, $a1
	b	.LBB4_360
.LBB4_359:                              # %if.else3676
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_360:                              # %if.end3684
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	st.d	$fp, $s7, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_362
# %bb.361:                              # %if.then3688
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$fp, $a1, $a0
	ori	$s5, $zero, 1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB4_55
.LBB4_362:                              # %if.else3691
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB4_55
.LBB4_363:                              # %if.then3872
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	st.d	$a0, $s7, 0
.LBB4_364:                              # %if.end3883
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_366
# %bb.365:                              # %if.then3946
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s3, $a1
	b	.LBB4_367
.LBB4_366:                              # %if.else3949
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_367:                              # %if.end3957
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 200
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s7, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	bge	$a3, $a1, .LBB4_388
.LBB4_368:                              # %if.else632
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
.LBB4_369:                              # %if.end638
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_389
.LBB4_370:                              # %if.else4823
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s1, $zero, 101
	.p2align	4, , 16
.LBB4_371:                              # %land.rhs4838
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_373
# %bb.372:                              # %while.body4847
                                        #   in Loop: Header=BB4_371 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_371
	b	.LBB4_412
.LBB4_373:                              # %if.then4851
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s1
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_408
# %bb.374:                              # %if.else4867
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_409
.LBB4_375:                              # %if.else2768
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 25
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	st.d	$zero, $a0, 80
	b	.LBB4_396
.LBB4_376:                              #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_140
.LBB4_377:                              # %if.else498
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $s3, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a1
	ori	$s0, $zero, 101
	.p2align	4, , 16
.LBB4_378:                              # %land.rhs513
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $fp, .LBB4_380
# %bb.379:                              # %while.body522
                                        #   in Loop: Header=BB4_378 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_378
	b	.LBB4_386
.LBB4_380:                              # %if.then526
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s0
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB4_382
# %bb.381:                              # %if.else542
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB4_383
.LBB4_382:                              # %if.then540
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_383:                              # %if.end551
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s0, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 208
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.b	$fp, $a0, 40
	ld.b	$a3, $a2, 42
	st.b	$a3, $a0, 42
	ld.b	$a3, $a2, 41
	ld.hu	$a4, $a0, 44
	st.b	$a3, $a0, 41
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	addi.d	$a3, $a3, 512
	st.h	$a3, $a0, 44
	ld.h	$a3, $a2, 34
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a2, 36
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a2, $a2, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_385
# %bb.384:                              # %if.then614
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_386
.LBB4_385:                              # %if.else617
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_386:                              # %if.end625
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
.LBB4_387:                              # %if.end625
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_368
.LBB4_388:                              # %if.then629
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
.LBB4_389:                              # %if.end638
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	ori	$s5, $zero, 1
	b	.LBB4_55
.LBB4_390:                              # %if.then2611
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $fp, 80
	b	.LBB4_393
.LBB4_391:                              # %if.then2650
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %got_pc_hi20(VerbatimSym)
	ld.d	$a0, $a0, %got_pc_lo12(VerbatimSym)
.LBB4_392:                              # %if.end2777
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $a0, 0
.LBB4_393:                              # %if.end2777
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 208
	st.d	$a0, $a1, 80
.LBB4_394:                              # %if.end2777
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	st.d	$fp, $s3, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $s3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	move	$fp, $zero
	b	.LBB4_396
.LBB4_395:                              # %if.else2789
                                        #   in Loop: Header=BB4_396 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_396:                              # %for.cond2778
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s5, .LBB4_399
# %bb.397:                              # %if.else2796
                                        #   in Loop: Header=BB4_396 Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a2, $sp, 208
	ld.bu	$a3, $a0, 40
	ld.bu	$a4, $a2, 40
	bltu	$a3, $a4, .LBB4_401
# %bb.398:                              # %if.then2808
                                        #   in Loop: Header=BB4_396 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$s5, $a0
	bne	$a1, $s1, .LBB4_396
	b	.LBB4_625
	.p2align	4, , 16
.LBB4_399:                              # %if.then2780
                                        #   in Loop: Header=BB4_396 Depth=2
	ld.d	$a0, $sp, 208
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s3, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_395
# %bb.400:                              # %if.then2786
                                        #   in Loop: Header=BB4_396 Depth=2
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_396
.LBB4_401:                              # %for.end2820
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.w	$a3, $a1, 1
	st.w	$a3, $s6, %pc_lo12(ttop)
	ori	$a4, $zero, 98
	blt	$a4, $a1, .LBB4_403
# %bb.402:                              # %if.then2824
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a3, 3
	stx.d	$a2, $s0, $a0
	b	.LBB4_404
.LBB4_403:                              # %if.else2827
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_404:                              # %if.end2833
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	beq	$a1, $s1, .LBB4_627
# %bb.405:                              # %if.end2841
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $a0
	bnez	$fp, .LBB4_407
# %bb.406:                              # %cond.false2845
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB4_407:                              # %cond.end2847
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$fp, $sp, 208
	b	.LBB4_55
.LBB4_408:                              # %if.then4865
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
.LBB4_409:                              # %if.end4876
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.b	$fp, $a0, 40
	ld.b	$a2, $s3, 42
	st.b	$a2, $a0, 42
	ld.b	$a2, $s3, 41
	ld.hu	$a3, $a0, 44
	st.b	$a2, $a0, 41
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	addi.d	$a2, $a2, 512
	st.h	$a2, $a0, 44
	ld.h	$a2, $s3, 34
	st.h	$a2, $a0, 34
	ld.wu	$a2, $s3, 36
	ld.wu	$a3, $a0, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $a0, 36
	ld.wu	$a3, $s3, 36
	srli.d	$a3, $a3, 20
	bstrins.d	$a2, $a3, 63, 20
	st.w	$a2, $a0, 36
	addi.w	$a2, $a1, 1
	st.w	$a2, $s6, %pc_lo12(ttop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_411
# %bb.410:                              # %if.then4939
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_412
.LBB4_411:                              # %if.else4942
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_412:                              # %if.end4951
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_414
# %bb.413:                              # %if.then4955
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	stx.d	$s3, $s7, $a0
	b	.LBB4_415
.LBB4_414:                              # %if.else4958
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_415:                              # %if.end4964
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_418
# %bb.416:                              # %if.else4973
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	beq	$a1, $fp, .LBB4_627
# %bb.417:                              #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $a0
	b	.LBB4_419
.LBB4_418:                              #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $zero
.LBB4_419:                              # %if.end4982
                                        #   in Loop: Header=BB4_55 Depth=1
	beqz	$s8, .LBB4_427
# %bb.420:                              # %if.end4982
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a0, $a0, 0
	beq	$s8, $a0, .LBB4_427
# %bb.421:                              # %if.then4988
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	bnez	$a0, .LBB4_424
# %bb.422:                              # %if.else5019
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a0, $zero, 107
	beq	$s0, $a0, .LBB4_427
# %bb.423:                              # %if.then5021
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(InsertUses)
	jirl	$ra, $ra, 0
	b	.LBB4_427
.LBB4_424:                              # %if.then4995
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.b	$a1, $s8, 43
	ld.h	$a0, $s8, 41
	ori	$a1, $a1, 16
	st.b	$a1, $s8, 43
	lu12i.w	$a1, 8
	bltz	$a0, .LBB4_426
# %bb.425:                              # %lor.rhs
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a1, $a1, 41
	bstrins.d	$a1, $zero, 14, 0
.LBB4_426:                              # %lor.end
                                        #   in Loop: Header=BB4_55 Depth=1
	bstrpick.d	$a0, $a0, 14, 0
	or	$a0, $a1, $a0
	st.h	$a0, $s8, 41
.LBB4_427:                              # %if.end5024
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_429
	.p2align	4, , 16
.LBB4_428:                              # %cleanup
                                        #   in Loop: Header=BB4_429 Depth=2
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
.LBB4_429:                              # %while.cond5025
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_439 Depth 3
                                        #         Child Loop BB4_440 Depth 4
                                        #       Child Loop BB4_453 Depth 3
                                        #       Child Loop BB4_456 Depth 3
                                        #         Child Loop BB4_458 Depth 4
	ld.d	$fp, $sp, 208
	ld.bu	$a0, $fp, 32
	addi.d	$s0, $fp, 32
	ori	$a1, $zero, 102
	beq	$a0, $a1, .LBB4_434
# %bb.430:                              # %while.cond5025
                                        #   in Loop: Header=BB4_429 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_474
# %bb.431:                              # %land.lhs.true5031
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 48
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB4_474
# %bb.432:                              # %land.lhs.true5035
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 145
	bne	$a0, $a1, .LBB4_474
# %bb.433:                              # %if.then5063
                                        #   in Loop: Header=BB4_429 Depth=2
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 208
	ori	$a0, $zero, 102
	beq	$a1, $a0, .LBB4_436
	b	.LBB4_473
	.p2align	4, , 16
.LBB4_434:                              # %land.rhs5048
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.bu	$a1, $fp, 40
	ori	$a0, $zero, 3
	beq	$a1, $a0, .LBB4_474
# %bb.435:                              # %if.else5106
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.bu	$s8, $fp, 42
	ld.bu	$fp, $fp, 41
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ChildSymWithCode)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	ori	$a0, $zero, 2
	move	$a1, $s0
	move	$a2, $s8
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208
	move	$fp, $a0
	ori	$a0, $zero, 3
	st.b	$a0, $a1, 40
.LBB4_436:                              # %if.end5118
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $fp, 80
	ld.d	$s0, $a0, 96
	st.w	$zero, $sp, 184
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$s0, .LBB4_443
# %bb.437:                              # %for.cond5126.preheader
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$s1, $s0, 8
	beq	$s1, $s0, .LBB4_444
# %bb.438:                              # %for.cond5133.preheader.preheader
                                        #   in Loop: Header=BB4_429 Depth=2
	move	$s8, $zero
	.p2align	4, , 16
.LBB4_439:                              # %for.cond5133.preheader
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_429 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_440 Depth 4
	move	$a0, $s1
	.p2align	4, , 16
.LBB4_440:                              # %for.cond5133
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_429 Depth=2
                                        #       Parent Loop BB4_439 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_440
# %bb.441:                              # %for.end5144
                                        #   in Loop: Header=BB4_439 Depth=3
	ld.d	$a0, $a0, 80
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 8
	addi.w	$s8, $s8, 1
	bne	$s1, $s0, .LBB4_439
# %bb.442:                              # %if.end5152.loopexit.loopexit
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $fp, 80
	b	.LBB4_445
.LBB4_443:                              #   in Loop: Header=BB4_429 Depth=2
	move	$s8, $zero
	b	.LBB4_446
.LBB4_444:                              #   in Loop: Header=BB4_429 Depth=2
	move	$s8, $zero
.LBB4_445:                              # %if.end5152.loopexit
                                        #   in Loop: Header=BB4_429 Depth=2
	st.w	$s8, $sp, 184
.LBB4_446:                              # %if.end5152
                                        #   in Loop: Header=BB4_429 Depth=2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 208
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	ori	$a0, $zero, 10
	st.b	$a0, $fp, 32
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB4_448
# %bb.447:                              # %if.else5170
                                        #   in Loop: Header=BB4_429 Depth=2
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB4_449
.LBB4_448:                              # %if.then5168
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_449:                              # %cond.end5225
                                        #   in Loop: Header=BB4_429 Depth=2
	move	$a4, $s7
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s7, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s2, 0
	st.d	$fp, $a4, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s2, 0
	st.d	$s0, $a4, 0
	beqz	$s0, .LBB4_452
# %bb.450:                              # %cond.end5225
                                        #   in Loop: Header=BB4_429 Depth=2
	beqz	$a0, .LBB4_452
# %bb.451:                              # %cond.false5234
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_452:                              # %cond.end5258
                                        #   in Loop: Header=BB4_429 Depth=2
	blez	$s8, .LBB4_454
	.p2align	4, , 16
.LBB4_453:                              # %for.body5263
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_429 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB4_453
.LBB4_454:                              # %for.cond5270.preheader
                                        #   in Loop: Header=BB4_429 Depth=2
	addi.d	$s0, $fp, 32
	move	$s6, $s3
	b	.LBB4_456
	.p2align	4, , 16
.LBB4_455:                              # %if.end5296
                                        #   in Loop: Header=BB4_456 Depth=3
	ld.d	$a0, $fp, 80
	ld.d	$a1, $s8, 80
	beq	$a0, $a1, .LBB4_463
.LBB4_456:                              # %for.cond5270
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_429 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_458 Depth 4
	ld.d	$s6, $s6, 8
	beq	$s6, $s3, .LBB4_461
# %bb.457:                              # %for.cond5277.preheader
                                        #   in Loop: Header=BB4_456 Depth=3
	move	$s8, $s6
	.p2align	4, , 16
.LBB4_458:                              # %for.cond5277
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_429 Depth=2
                                        #       Parent Loop BB4_456 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB4_458
# %bb.459:                              # %for.cond5277
                                        #   in Loop: Header=BB4_456 Depth=3
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB4_455
# %bb.460:                              # %if.then5294
                                        #   in Loop: Header=BB4_456 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a5, $a0, %pc_lo12(.L.str.45)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_455
	.p2align	4, , 16
.LBB4_461:                              # %if.then5317
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.bu	$s0, $a1, 126
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB4_464
# %bb.462:                              # %if.else5340
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB4_465
	.p2align	4, , 16
.LBB4_463:                              # %for.end5314.thread
                                        #   in Loop: Header=BB4_429 Depth=2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 80
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 31
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_471
.LBB4_464:                              # %if.then5338
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB4_465:                              # %if.end5349
                                        #   in Loop: Header=BB4_429 Depth=2
	bstrpick.d	$a1, $s0, 6, 6
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s2, 0
	st.d	$s3, $a4, 0
	beqz	$s3, .LBB4_468
# %bb.466:                              # %cond.end5395
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a1, $s3, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s7, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s2, 0
	st.d	$fp, $a4, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB4_470
# %bb.467:                              # %cond.end5395.cond.false5404_crit_edge
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a0, $a1, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_469
.LBB4_468:                              # %cond.end5395.thread
                                        #   in Loop: Header=BB4_429 Depth=2
	st.d	$fp, $a4, 0
	move	$a1, $a0
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB4_469:                              # %cond.false5404
                                        #   in Loop: Header=BB4_429 Depth=2
	ld.d	$a2, $fp, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	b	.LBB4_471
.LBB4_470:                              #   in Loop: Header=BB4_429 Depth=2
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_471:                              # %if.end5430
                                        #   in Loop: Header=BB4_429 Depth=2
	ori	$a1, $zero, 1
	move	$a0, $a3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	bnez	$a0, .LBB4_428
# %bb.472:                              # %if.then5433
                                        #   in Loop: Header=BB4_429 Depth=2
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
	b	.LBB4_428
.LBB4_473:                              # %cleanup.thread
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 30
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a2, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
.LBB4_474:                              # %while.end5436
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $s0, 122
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_489
# %bb.475:                              # %for.cond5444.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s1, $s0, 8
	beq	$s1, $s0, .LBB4_489
# %bb.476:                              # %for.cond5451.preheader.lr.ph
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$fp, $s3, 32
	b	.LBB4_479
.LBB4_477:                              # %if.then5516
                                        #   in Loop: Header=BB4_479 Depth=2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a2, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 38
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_478:                              # %for.inc5523
                                        #   in Loop: Header=BB4_479 Depth=2
	ld.d	$s1, $s1, 8
	beq	$s1, $s0, .LBB4_489
.LBB4_479:                              # %for.cond5451.preheader
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_480 Depth 3
                                        #       Child Loop BB4_485 Depth 3
                                        #         Child Loop BB4_486 Depth 4
	move	$a0, $s1
	.p2align	4, , 16
.LBB4_480:                              # %for.cond5451
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_479 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_480
# %bb.481:                              # %for.cond5451
                                        #   in Loop: Header=BB4_479 Depth=2
	ori	$a2, $zero, 145
	bne	$a1, $a2, .LBB4_478
# %bb.482:                              # %land.lhs.true5468
                                        #   in Loop: Header=BB4_479 Depth=2
	ld.bu	$a1, $a0, 126
	andi	$a1, $a1, 64
	beqz	$a1, .LBB4_478
# %bb.483:                              # %for.cond5479.preheader
                                        #   in Loop: Header=BB4_479 Depth=2
	ld.d	$a1, $s3, 8
	bne	$a1, $s3, .LBB4_485
	b	.LBB4_477
	.p2align	4, , 16
.LBB4_484:                              # %for.inc5509
                                        #   in Loop: Header=BB4_485 Depth=3
	ld.d	$a1, $a1, 8
	beq	$a1, $s3, .LBB4_477
.LBB4_485:                              # %for.cond5486.preheader
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_479 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_486 Depth 4
	move	$a2, $a1
	.p2align	4, , 16
.LBB4_486:                              # %for.cond5486
                                        #   Parent Loop BB4_55 Depth=1
                                        #     Parent Loop BB4_479 Depth=2
                                        #       Parent Loop BB4_485 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB4_486
# %bb.487:                              # %for.cond5486
                                        #   in Loop: Header=BB4_485 Depth=3
	ori	$a4, $zero, 10
	bne	$a3, $a4, .LBB4_484
# %bb.488:                              # %land.lhs.true5503
                                        #   in Loop: Header=BB4_485 Depth=3
	ld.d	$a2, $a2, 80
	bne	$a2, $a0, .LBB4_484
	b	.LBB4_478
.LBB4_489:                              # %if.end5528
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ori	$fp, $zero, 102
	ori	$a2, $zero, 104
	bne	$a1, $a2, .LBB4_493
# %bb.490:                              # %if.then5534
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a1, $s0, 41
	andi	$a1, $a1, 8
	bnez	$a1, .LBB4_492
# %bb.491:                              # %if.then5542
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$fp, $s3, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a2, $a0, %pc_lo12(.L.str.48)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a5, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 32
	ori	$a3, $zero, 2
	move	$a4, $fp
	ori	$fp, $zero, 102
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_493
.LBB4_492:                              # %if.else5546
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$s0, $a0, 80
.LBB4_493:                              # %if.end5549
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_496
# %bb.494:                              # %land.lhs.true5551
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $s0, 41
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	ori	$a2, $zero, 64
	bne	$a1, $a2, .LBB4_496
# %bb.495:                              # %land.lhs.true5566
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $s0, 104
	beqz	$a1, .LBB4_508
.LBB4_496:                              # %if.end6509
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s0, 104
	beqz	$a0, .LBB4_502
# %bb.497:                              # %if.then6513
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 208
	ld.bu	$a0, $a1, 32
	ori	$a2, $zero, 104
	beq	$a0, $a2, .LBB4_499
# %bb.498:                              # %if.then6513
                                        #   in Loop: Header=BB4_55 Depth=1
	bne	$a0, $fp, .LBB4_507
.LBB4_499:                              # %if.then6525
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a2, $a1, 32
	addi.d	$a0, $a0, -104
	sltui	$a0, $a0, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(FilterCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s5, .LBB4_553
# %bb.500:                              # %if.then6534
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB4_519
# %bb.501:                              #   in Loop: Header=BB4_55 Depth=1
	ori	$s0, $zero, 7
	ori	$s1, $zero, 100
	b	.LBB4_520
.LBB4_502:                              # %if.else6849
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $s0, 41
	andi	$a0, $a0, 256
	beqz	$a0, .LBB4_55
# %bb.503:                              # %if.then6856
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 102
	ori	$a3, $zero, 104
	beq	$a1, $a3, .LBB4_505
# %bb.504:                              # %if.then6856
                                        #   in Loop: Header=BB4_55 Depth=1
	bne	$a1, $a2, .LBB4_527
.LBB4_505:                              # %if.then6868
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 146
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 208
	ori	$a3, $zero, 1
	move	$a1, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_525
# %bb.506:                              # %if.then6874
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_526
.LBB4_507:                              # %if.else6844
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$fp, $s3, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 33
	ori	$a3, $zero, 1
	b	.LBB4_528
.LBB4_508:                              # %if.then5569
                                        #   in Loop: Header=BB4_55 Depth=1
	andi	$a1, $a0, 8
	beqz	$a1, .LBB4_511
# %bb.509:                              # %lor.lhs.false5577
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a1, $zero, 146
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $a0, 124
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB4_496
# %bb.510:                              # %lor.lhs.false5577.if.then5582_crit_edge
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $s0, 41
.LBB4_511:                              # %if.then5582
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a2, $a0, 12
	ext.w.h	$a2, $a2
	srli.d	$a2, $a2, 15
	add.w	$a1, $a1, $a2
	alsl.d	$a1, $a1, $s7, 3
.LBB4_512:                              # %while.cond5595
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.bu	$a2, $a2, 32
	addi.d	$a1, $a1, -8
	bltu	$a2, $fp, .LBB4_512
# %bb.513:                              # %while.end5631
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a3, $zero, 104
	beq	$a2, $a3, .LBB4_515
# %bb.514:                              # %while.end5631
                                        #   in Loop: Header=BB4_55 Depth=1
	bne	$a2, $fp, .LBB4_496
.LBB4_515:                              # %land.lhs.true5647
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a1, $a1, 32
	ori	$a2, $zero, 110
	bne	$a1, $a2, .LBB4_496
# %bb.516:                              # %if.then5656
                                        #   in Loop: Header=BB4_55 Depth=1
	andi	$a0, $a0, 8
	beqz	$a0, .LBB4_575
# %bb.517:                              # %if.then5664
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 2
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$fp, .LBB4_559
# %bb.518:                              # %if.else5678
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a1, $a0, 0
	b	.LBB4_560
.LBB4_519:                              # %if.else6547
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -102
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a1
	ori	$s1, $zero, 101
.LBB4_520:                              # %if.end6559
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB4_521:                              # %land.rhs6562
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s0, .LBB4_523
# %bb.522:                              # %while.body6571
                                        #   in Loop: Header=BB4_521 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_521
	b	.LBB4_552
.LBB4_523:                              # %if.then6575
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s1
	slli.d	$a2, $a0, 3
	ldx.d	$fp, $s3, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	beqz	$fp, .LBB4_548
# %bb.524:                              # %if.else6591
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a2, 0
	ld.d	$a2, $fp, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a2, $a0, 0
	b	.LBB4_549
.LBB4_525:                              # %if.else6877
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_526:                              # %if.end6883
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	bnez	$a0, .LBB4_55
	b	.LBB4_54
.LBB4_527:                              # %if.else6890
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$fp, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a2, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 34
	ori	$a3, $zero, 2
.LBB4_528:                              # %for.cond449
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_529:                              # %if.then891
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_530:                              # %if.end902
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a1, $zero, 5
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	ld.h	$a2, $a1, 34
	st.h	$a2, $a0, 34
	ld.wu	$a2, $a1, 36
	ld.wu	$a3, $a0, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $a0, 36
	ld.wu	$a1, $a1, 36
	srli.d	$a3, $a1, 20
	ld.w	$a1, $s4, %pc_lo12(otop)
	bstrins.d	$a2, $a3, 63, 20
	st.w	$a2, $a0, 36
	st.d	$a0, $s3, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_532
# %bb.531:                              # %if.then945
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	b	.LBB4_533
.LBB4_532:                              # %if.else948
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_533:                              # %if.end955
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 1
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s5, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$fp, .LBB4_535
# %bb.534:                              # %if.else969
                                        #   in Loop: Header=BB4_55 Depth=1
	st.d	$fp, $s3, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
	b	.LBB4_536
.LBB4_535:                              # %if.then967
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s3, 0
.LBB4_536:                              # %if.end978
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 0
	ld.d	$a0, $sp, 208
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	ld.d	$a1, $a0, 80
	ld.b	$a1, $a1, 43
	ld.h	$a2, $fp, 44
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $fp, 44
	ld.d	$a1, $a0, 80
	ld.b	$a1, $a1, 43
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3583
	and	$a2, $a2, $a3
	bstrpick.d	$a1, $a1, 56, 2
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $fp, 44
	ld.b	$a1, $a0, 41
	st.b	$a1, $fp, 41
	ld.b	$a1, $a0, 42
	st.b	$a1, $fp, 42
	ori	$a1, $zero, 102
	st.b	$a1, $fp, 40
	ld.h	$a1, $a0, 34
	st.h	$a1, $fp, 34
	ld.wu	$a1, $a0, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $fp, 36
	ld.wu	$a2, $a0, 36
	ld.w	$a0, $s6, %pc_lo12(ttop)
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $fp, 36
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_538
# %bb.537:                              # %if.then1199
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	stx.d	$fp, $s0, $a0
	b	.LBB4_539
.LBB4_538:                              # %if.else1202
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_539:                              # %if.end1208
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 41
	ld.bu	$a2, $a0, 42
	move	$s5, $zero
	or	$a1, $a2, $a1
	st.d	$a0, $sp, 208
	beqz	$a1, .LBB4_55
# %bb.540:                              # %if.end1377
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a2, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	addi.w	$a2, $a1, 1
	st.w	$a2, $s4, %pc_lo12(otop)
	ori	$a3, $zero, 98
	blt	$a3, $a1, .LBB4_542
# %bb.541:                              # %if.then1383
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ori	$s5, $zero, 1
	b	.LBB4_55
.LBB4_542:                              # %if.else1386
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_55
.LBB4_543:                              # %if.else7193
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_544:                              # %if.end7199
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	bnez	$a0, .LBB4_546
# %bb.545:                              # %if.then7202
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208
.LBB4_546:                              # %if.end7204
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB4_55
.LBB4_547:                              # %if.then7040
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a5, $a0, %pc_lo12(.L.str.54)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 36
	ori	$a3, $zero, 2
	b	.LBB4_255
.LBB4_548:                              # %if.then6589
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a0, 0
.LBB4_549:                              # %if.end6600
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s1, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 0
	ld.d	$a0, $sp, 208
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.b	$s0, $fp, 40
	ld.b	$a2, $a0, 42
	st.b	$a2, $fp, 42
	ld.b	$a2, $a0, 41
	ld.hu	$a3, $fp, 44
	st.b	$a2, $fp, 41
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	addi.d	$a2, $a2, 512
	st.h	$a2, $fp, 44
	ld.h	$a2, $a0, 34
	st.h	$a2, $fp, 34
	ld.wu	$a2, $a0, 36
	ld.wu	$a3, $fp, 36
	srli.d	$a3, $a3, 20
	move	$a4, $a2
	bstrins.d	$a4, $a3, 63, 20
	st.w	$a4, $fp, 36
	ld.wu	$a0, $a0, 36
	srli.d	$a0, $a0, 20
	bstrins.d	$a2, $a0, 63, 20
	st.w	$a2, $fp, 36
	addi.w	$a0, $a1, 1
	st.w	$a0, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a1, .LBB4_551
# %bb.550:                              # %if.then6663
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	stx.d	$fp, $s7, $a0
	b	.LBB4_552
.LBB4_551:                              # %if.else6666
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_552:                              # %if.end6674
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
.LBB4_553:                              # %if.end6674
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_555
# %bb.554:                              # %if.then6678
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 208
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s7, $a1
	b	.LBB4_556
.LBB4_555:                              # %if.else6681
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_556:                              # %if.end6829
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_558
# %bb.557:                              # %if.then6833
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$fp, $a1, $a0
	b	.LBB4_389
.LBB4_558:                              # %if.else6836
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	b	.LBB4_369
.LBB4_559:                              # %if.then5676
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a0, 0
.LBB4_560:                              # %if.end5687
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a0, $zero, 2
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 208
	st.d	$a0, $fp, 80
	ld.h	$a0, $a1, 34
	st.h	$a0, $fp, 34
	ld.wu	$a0, $a1, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a0
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $fp, 36
	ld.wu	$a1, $a1, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $fp, 36
	beqz	$s5, .LBB4_571
# %bb.561:                              # %if.then5729
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a0, $fp, 41
	ld.bu	$a1, $fp, 42
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	addi.d	$s1, $a0, 100
	ori	$a2, $zero, 103
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s0, $a1, $a0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB4_562:                              # %land.rhs5757
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	ld.bu	$a0, $a0, 40
	bltu	$a0, $s0, .LBB4_564
# %bb.563:                              # %while.body5766
                                        #   in Loop: Header=BB4_562 Depth=2
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_562
	b	.LBB4_570
.LBB4_564:                              # %if.then5770
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s1
	slli.d	$a2, $a0, 3
	ldx.d	$fp, $s3, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	beqz	$fp, .LBB4_566
# %bb.565:                              # %if.else5786
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a2, 0
	ld.d	$a2, $fp, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a2, $a0, 0
	b	.LBB4_567
.LBB4_566:                              # %if.then5784
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	move	$fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a0, 0
.LBB4_567:                              # %if.end5795
                                        #   in Loop: Header=BB4_55 Depth=1
	st.b	$s1, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.hu	$a0, $fp, 44
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	st.b	$s0, $fp, 40
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.d	$a0, $a0, 512
	st.h	$a0, $fp, 44
	addi.w	$a0, $a1, 1
	st.w	$a0, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a1, .LBB4_569
# %bb.568:                              # %if.then5858
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	stx.d	$fp, $s7, $a0
	b	.LBB4_570
.LBB4_569:                              # %if.else5861
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_570:                              # %if.end5869
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
.LBB4_571:                              # %if.end5869
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_573
# %bb.572:                              # %if.then5873
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$fp, $a1, $a0
	b	.LBB4_574
.LBB4_573:                              # %if.else5876
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_574:                              # %if.end5882
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 102
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
.LBB4_575:                              # %if.end5884
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a1, $s4, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, %pc_lo12(otop)
	pcaddu18i	$ra, %call36(TransferBegin)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_579
# %bb.576:                              # %if.then5894
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $s0, 41
	andi	$a0, $a0, 8
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_581
# %bb.577:                              # %if.else6317
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_593
# %bb.578:                              # %if.then6321
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$s3, $a1, $a0
	ori	$s5, $zero, 1
	b	.LBB4_496
.LBB4_579:                              # %if.end6474
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s6, %pc_lo12(ttop)
	addi.w	$a1, $a0, 1
	st.w	$a1, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_588
# %bb.580:                              # %if.then6478
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	stx.d	$s3, $s7, $a0
	b	.LBB4_589
.LBB4_581:                              # %if.then5902
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $a0
.LBB4_582:                              # %for.cond5909
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB4_582
# %bb.583:                              # %for.cond5909
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a3, $zero, 10
	bne	$a2, $a3, .LBB4_585
# %bb.584:                              # %land.lhs.true5926
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $a1, 80
	ld.bu	$a1, $a1, 32
	ori	$a2, $zero, 146
	beq	$a1, $a2, .LBB4_586
.LBB4_585:                              # %if.then5933
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a5, $a0, %pc_lo12(.L.str.49)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
.LBB4_586:                              # %if.end5935
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s0, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB4_594
# %bb.587:                              # %cond.false5945
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB4_595
.LBB4_588:                              # %if.else6481
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_589:                              # %if.end6487
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.hu	$a0, $s0, 41
	andi	$a0, $a0, 8
	bnez	$a0, .LBB4_592
# %bb.590:                              # %if.else6496
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(Reduce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(ttop)
	beq	$a1, $s1, .LBB4_627
# %bb.591:                              #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $a0
	b	.LBB4_496
.LBB4_592:                              #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $zero
	b	.LBB4_496
.LBB4_593:                              # %if.else6324
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_496
.LBB4_594:                              #   in Loop: Header=BB4_55 Depth=1
	move	$a1, $zero
.LBB4_595:                              # %cond.end5967
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $fp, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	beq	$a2, $a0, .LBB4_597
# %bb.596:                              # %cond.false5975
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a2, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a0, $a1, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s0, 0
	st.d	$a2, $a2, 8
.LBB4_597:                              # %cond.end5997
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s5, $a2
	st.d	$a0, $a4, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $a4, 0
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB4_599
# %bb.598:                              # %if.then6034
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB4_599:                              # %if.end6036
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	beqz	$a0, .LBB4_621
# %bb.600:                              # %if.then6044
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s1, $s3, 8
.LBB4_601:                              # %for.cond6051
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB4_601
# %bb.602:                              # %for.cond6051
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB4_604
# %bb.603:                              # %land.lhs.true6068
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s1, 80
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 144
	beq	$a0, $a1, .LBB4_605
.LBB4_604:                              # %if.then6075
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a5, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_605:                              # %if.end6077
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$s1, $s1, 8
.LBB4_606:                              # %for.cond6084
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB4_606
# %bb.607:                              # %for.end6095
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a0, $s4, %pc_lo12(otop)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	addi.w	$a1, $a0, 1
	st.w	$a1, $s4, %pc_lo12(otop)
	ori	$a2, $zero, 98
	blt	$a2, $a0, .LBB4_609
# %bb.608:                              # %if.then6099
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$s1, $a1, $a0
	b	.LBB4_610
.LBB4_609:                              # %if.else6102
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_610:                              # %if.end6108
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a0, $s1, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB4_612
# %bb.611:                              # %cond.false6118
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB4_612:                              # %cond.end6140
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_614
# %bb.613:                              # %cond.false6148
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a1, 8
.LBB4_614:                              # %cond.end6170
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s5, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s5, $a0
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 24
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB4_616
# %bb.615:                              # %cond.false6211
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB4_617
.LBB4_616:                              #   in Loop: Header=BB4_55 Depth=1
	move	$a1, $zero
.LBB4_617:                              # %cond.end6233
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.d	$a2, $a0, 8
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	beq	$a2, $a0, .LBB4_619
# %bb.618:                              # %cond.false6241
                                        #   in Loop: Header=BB4_55 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a0, $a1, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s0, 0
	st.d	$a2, $a2, 8
.LBB4_619:                              # %cond.end6263
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s5, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a4, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $a4, 0
	ld.d	$a2, $a3, 0
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB4_621
# %bb.620:                              # %if.then6300
                                        #   in Loop: Header=BB4_55 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB4_621:                              # %if.end6303
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a1, $s6, %pc_lo12(ttop)
	addi.w	$a0, $a1, 1
	st.w	$a0, $s6, %pc_lo12(ttop)
	ori	$a2, $zero, 98
	blt	$a2, $a1, .LBB4_623
# %bb.622:                              # %if.then6307
                                        #   in Loop: Header=BB4_55 Depth=1
	move	$s5, $zero
	slli.d	$a0, $a0, 3
	stx.d	$s3, $s7, $a0
	b	.LBB4_624
.LBB4_623:                              # %if.else6310
                                        #   in Loop: Header=BB4_55 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s7, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB4_624:                              # %if.end6509
                                        #   in Loop: Header=BB4_55 Depth=1
	ori	$fp, $zero, 102
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_496
.LBB4_625:                              # %if.then6932
	ld.d	$s3, $sp, 208
.LBB4_626:                              # %cleanup7213
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$s3, $s2, 0
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, %pc_lo12(otop)
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB4_627:
	move	$s3, $zero
	b	.LBB4_626
.Lfunc_end4:
	.size	Parse, .Lfunc_end4-Parse
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_152-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_133-.LJTI4_0
	.word	.LBB4_162-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_87-.LJTI4_0
	.word	.LBB4_87-.LJTI4_0
	.word	.LBB4_87-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_99-.LJTI4_0
	.word	.LBB4_99-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_94-.LJTI4_0
	.word	.LBB4_94-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_145-.LJTI4_0
	.word	.LBB4_183-.LJTI4_0
	.word	.LBB4_142-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_168-.LJTI4_0
	.word	.LBB4_126-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_150-.LJTI4_0
	.word	.LBB4_174-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_73-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_57-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_224-.LJTI4_0
	.word	.LBB4_119-.LJTI4_0
	.word	.LBB4_166-.LJTI4_0
	.word	.LBB4_131-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_141-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_186-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function Reduce
	.type	Reduce,@function
Reduce:                                 # @Reduce
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
	pcalau12i	$s3, %pc_hi20(ttop)
	ld.w	$a1, $s3, %pc_lo12(ttop)
	addi.w	$a2, $a1, -1
	st.w	$a2, $s3, %pc_lo12(ttop)
	slli.d	$a0, $a1, 3
	pcalau12i	$a3, %pc_hi20(tok_stack)
	addi.d	$s4, $a3, %pc_lo12(tok_stack)
	ldx.d	$fp, $s4, $a0
	ld.bu	$a0, $fp, 32
	addi.d	$a3, $a0, -1
	ori	$a4, $zero, 109
	bltu	$a4, $a3, .LBB5_42
# %bb.1:                                # %entry
	addi.d	$s0, $fp, 32
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI5_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI5_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB5_2:                                # %sw.bb149
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	beqz	$a0, .LBB5_9
# %bb.3:                                # %if.then150
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	ldx.d	$s0, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_5
# %bb.4:                                # %if.else167
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_6
.LBB5_5:                                # %if.then165
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %cond.end222
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a4, 0
	ld.d	$a5, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s0, $a4, 0
	beqz	$s0, .LBB5_9
# %bb.7:                                # %cond.end222
	beqz	$a0, .LBB5_9
# %bb.8:                                # %cond.false231
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB5_9:                                # %if.end257
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	beqz	$a0, .LBB5_19
# %bb.10:                               # %if.then265
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	ldx.d	$s0, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_12
# %bb.11:                               # %if.else282
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_13
.LBB5_12:                               # %if.then280
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %if.end291
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a3, $fp, 8
	st.d	$a0, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a4, %got_pc_lo12(zz_hold)
	st.d	$a3, $a4, 0
	beqz	$a3, .LBB5_15
# %bb.14:                               # %cond.false316
	ld.d	$a5, $a3, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a6, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a5, 8
.LBB5_15:                               # %cond.end340
	st.d	$a0, $a1, 0
	beqz	$s0, .LBB5_19
# %bb.16:                               # %cond.end340
	beqz	$a0, .LBB5_19
# %bb.17:                               # %cond.false349
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
.LBB5_18:                               # %if.end375
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_19:                               # %if.end375
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a2, %pc_hi20(otop)
	ld.w	$a0, $a2, %pc_lo12(otop)
	st.d	$fp, $a1, 0
	addi.w	$a1, $a0, 1
	ori	$a3, $zero, 98
	st.w	$a1, $a2, %pc_lo12(otop)
	blt	$a3, $a0, .LBB5_21
# %bb.20:                               # %if.then379
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	stx.d	$fp, $a1, $a0
	ori	$s1, $zero, 1
	b	.LBB5_24
.LBB5_21:                               # %if.else382
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
.LBB5_22:                               # %sw.epilog
	ldx.d	$a0, $a1, $a0
.LBB5_23:                               # %sw.epilog
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_24:                               # %sw.epilog
	move	$a0, $s1
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
.LBB5_25:                               # %sw.bb1861
	pcalau12i	$s1, %pc_hi20(otop)
	ld.w	$a1, $s1, %pc_lo12(otop)
	pcalau12i	$a2, %pc_hi20(obj_stack)
	addi.d	$t0, $a2, %pc_lo12(obj_stack)
	alsl.d	$a2, $a1, $t0, 3
	ld.d	$s2, $a2, -16
	slli.d	$a3, $a1, 3
	ldx.d	$t1, $t0, $a3
	ld.bu	$a3, $s2, 32
	ld.d	$s4, $a2, -8
	addi.d	$a1, $a1, -3
	st.w	$a1, $s1, %pc_lo12(otop)
	bne	$a3, $a0, .LBB5_33
# %bb.26:                               # %if.then1879
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	ldx.bu	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a0, $a2, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a0, $a3, $a0
	st.d	$a0, $fp, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	b	.LBB5_85
.LBB5_27:                               # %sw.bb2234
	pcalau12i	$s3, %pc_hi20(otop)
	ld.w	$a0, $s3, %pc_lo12(otop)
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a3, $a1, %pc_lo12(obj_stack)
	alsl.d	$a1, $a0, $a3, 3
	ld.d	$s5, $a1, -8
	slli.d	$a1, $a0, 3
	ld.bu	$a2, $s5, 32
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a3, $a3, $a1
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 17
	st.w	$a0, $s3, %pc_lo12(otop)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bne	$a2, $a1, .LBB5_35
# %bb.28:
	move	$s1, $s5
	b	.LBB5_108
.LBB5_29:                               # %sw.bb646
	pcalau12i	$s2, %pc_hi20(otop)
	ld.w	$a0, $s2, %pc_lo12(otop)
	addi.d	$a1, $a0, -1
	st.w	$a1, $s2, %pc_lo12(otop)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$s8, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a4, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a4, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s7, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	beqz	$a0, .LBB5_59
# %bb.30:                               # %if.else663
	alsl.d	$a1, $a2, $s7, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_60
.LBB5_31:                               # %sw.bb
	pcalau12i	$s4, %pc_hi20(otop)
	ld.w	$a0, $s4, %pc_lo12(otop)
	addi.d	$a1, $a0, -1
	st.w	$a1, $s4, %pc_lo12(otop)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$s3, $a1, %pc_lo12(obj_stack)
	ldx.d	$a0, $s3, $a0
	pcaddu18i	$ra, %call36(TransferEnd)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 5
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB5_76
# %bb.32:                               # %if.else13
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_77
.LBB5_33:                               # %if.else1910
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_81
# %bb.34:                               # %if.else1924
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_82
.LBB5_35:                               # %if.then2246
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s6, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s2, $a1
	beqz	$s1, .LBB5_101
# %bb.36:                               # %if.else2260
	alsl.d	$a0, $a0, $s2, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB5_102
.LBB5_37:                               # %sw.bb1605
	slli.d	$a0, $a2, 3
	ldx.d	$a2, $s4, $a0
	ld.bu	$a0, $a2, 32
	ori	$a1, $zero, 104
	bne	$a0, $a1, .LBB5_100
# %bb.38:                               # %if.else1615
	ld.d	$a1, $fp, 80
	ld.d	$a0, $a2, 80
	beq	$a1, $a0, .LBB5_190
# %bb.39:                               # %if.then1622
	pcalau12i	$a3, %got_pc_hi20(StartSym)
	ld.d	$a3, $a3, %got_pc_lo12(StartSym)
	ld.d	$a3, $a3, 0
	beq	$a1, $a3, .LBB5_184
# %bb.40:                               # %if.else1637
	beqz	$a1, .LBB5_185
# %bb.41:                               # %if.else1661
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ttop)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	ld.d	$a1, $a1, 80
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ttop)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	move	$s2, $a0
	addi.d	$a0, $a1, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 8
	st.d	$s2, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a2, $a0, %pc_lo12(.L.str.67)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a6, $s1
	move	$a7, $a5
	b	.LBB5_189
.LBB5_42:                               # %sw.default
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$fp, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a5, $a0, %pc_lo12(.L.str.68)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ori	$s1, $zero, 1
	move	$a3, $zero
	move	$a4, $fp
	b	.LBB5_58
.LBB5_43:                               # %sw.bb389
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	beqz	$a0, .LBB5_143
# %bb.44:                               # %if.then398
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	ldx.d	$s0, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_139
# %bb.45:                               # %if.else415
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_140
.LBB5_46:                               # %sw.bb1467
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a6, $a0, %pc_lo12(.L.str.60)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	ori	$s1, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $fp, 32
	st.d	$fp, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $fp, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $fp, 0
	ld.w	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
	b	.LBB5_24
.LBB5_47:                               # %sw.bb1502
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	ld.bu	$a2, $a0, 32
	ori	$a3, $zero, 104
	beq	$a2, $a3, .LBB5_135
# %bb.48:                               # %sw.bb1502
	ori	$a3, $zero, 102
	bne	$a2, $a3, .LBB5_137
# %bb.49:                               # %if.then1510
	addi.d	$a1, $a1, -2
	st.w	$a1, $s3, %pc_lo12(ttop)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a2, 102
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	b	.LBB5_191
.LBB5_50:                               # %sw.bb1741
	pcalau12i	$s1, %pc_hi20(otop)
	ld.w	$a0, $s1, %pc_lo12(otop)
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, %pc_lo12(otop)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$s0, $a1, %pc_lo12(obj_stack)
	ldx.d	$s2, $s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_122
# %bb.51:                               # %if.else1758
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_123
.LBB5_52:                               # %sw.bb888
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	beqz	$a0, .LBB5_166
# %bb.53:                               # %if.then897
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 10
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s1, $a1
	beqz	$s0, .LBB5_154
# %bb.54:                               # %if.else911
	alsl.d	$a0, $a0, $s1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB5_155
.LBB5_55:                               # %sw.bb68
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 5
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB5_129
# %bb.56:                               # %if.else82
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_130
.LBB5_57:                               # %sw.bb1500
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a5, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a6, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ori	$s1, $zero, 1
	move	$a3, $zero
.LBB5_58:                               # %sw.epilog
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_24
.LBB5_59:                               # %if.then661
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s3, $a4
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a4, $s3
.LBB5_60:                               # %cond.end718
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $s3, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s4, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s8, $s3, 0
	beqz	$s8, .LBB5_63
# %bb.61:                               # %cond.end718
	beqz	$a0, .LBB5_63
# %bb.62:                               # %cond.false727
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_63:                               # %cond.end751
	ld.w	$a1, $s2, %pc_lo12(otop)
	ld.bu	$a2, $s1, 0
	slli.d	$a3, $a1, 3
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s1, $s8, $a3
	addi.d	$a1, $a1, -1
	st.w	$a1, $s2, %pc_lo12(otop)
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB5_65
# %bb.64:                               # %if.else769
	st.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB5_66
.LBB5_65:                               # %if.then767
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %if.end778
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $s6, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s3, 0
	beqz	$a1, .LBB5_68
# %bb.67:                               # %cond.false803
	ld.d	$a2, $a1, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
.LBB5_68:                               # %cond.end827
	st.d	$a0, $s5, 0
	st.d	$s1, $s3, 0
	beqz	$s1, .LBB5_71
# %bb.69:                               # %cond.end827
	beqz	$a0, .LBB5_71
# %bb.70:                               # %cond.false836
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_71:                               # %cond.end860
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB5_73
# %bb.72:                               # %if.then867
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s1, 32
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a2, $a0, %pc_lo12(.L.str.58)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_73:                               # %if.end874
	ld.w	$a0, $s2, %pc_lo12(otop)
	st.d	$fp, $s3, 0
	addi.w	$a1, $a0, 1
	ori	$a2, $zero, 98
	st.w	$a1, $s2, %pc_lo12(otop)
	blt	$a2, $a0, .LBB5_75
# %bb.74:                               # %if.then878
	slli.d	$a0, $a1, 3
	stx.d	$fp, $s8, $a0
	ori	$s1, $zero, 1
	b	.LBB5_24
.LBB5_75:                               # %if.else881
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s8, $a0
	b	.LBB5_23
.LBB5_76:                               # %if.then11
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_77:                               # %if.end19
	ori	$a1, $zero, 5
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a1, %got_pc_lo12(zz_hold)
	ld.w	$a1, $s4, %pc_lo12(otop)
	st.d	$a0, $s5, 0
	addi.w	$a2, $a1, 1
	ori	$a3, $zero, 98
	st.w	$a2, $s4, %pc_lo12(otop)
	blt	$a3, $a1, .LBB5_79
# %bb.78:                               # %if.then35
	slli.d	$a1, $a2, 3
	stx.d	$a0, $s3, $a1
	b	.LBB5_80
.LBB5_79:                               # %if.else38
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s3, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %if.end43
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	st.d	$fp, $s5, 0
	st.w	$a0, $s0, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $s5, 0
	b	.LBB5_134
.LBB5_81:                               # %if.then1922
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s0, $t0
	move	$s3, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$t0, $s0
.LBB5_82:                               # %cond.end1979
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a4, 0
	ld.d	$a5, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	beqz	$a0, .LBB5_84
# %bb.83:                               # %cond.false1988
	ld.d	$a2, $s2, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB5_84:                               # %if.end2014
	move	$s2, $fp
.LBB5_85:                               # %if.end2014
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s3, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s8, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	beqz	$a0, .LBB5_87
# %bb.86:                               # %if.else2028
	alsl.d	$a1, $a2, $s8, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_88
.LBB5_87:                               # %if.then2026
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$fp, $t0
	move	$s5, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$t1, $s5
	move	$t0, $fp
.LBB5_88:                               # %cond.end2083
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $fp, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s4, $fp, 0
	beqz	$s4, .LBB5_91
# %bb.89:                               # %cond.end2083
	beqz	$a0, .LBB5_91
# %bb.90:                               # %cond.false2092
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_91:                               # %cond.end2116
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB5_93
# %bb.92:                               # %if.else2131
	st.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB5_94
.LBB5_93:                               # %if.then2129
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s0, $t0
	move	$s3, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$t0, $s0
.LBB5_94:                               # %cond.end2186
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s2, $fp, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	beqz	$t1, .LBB5_97
# %bb.95:                               # %cond.end2186
	beqz	$a0, .LBB5_97
# %bb.96:                               # %cond.false2195
	ld.d	$a1, $t1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $t1, 16
	st.d	$t1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_97:                               # %cond.end2219
	ld.w	$a0, $s1, %pc_lo12(otop)
	st.d	$s2, $fp, 0
	addi.w	$a1, $a0, 1
	ori	$a2, $zero, 98
	st.w	$a1, $s1, %pc_lo12(otop)
	blt	$a2, $a0, .LBB5_99
# %bb.98:                               # %if.then2224
	slli.d	$a0, $a1, 3
	stx.d	$s2, $t0, $a0
	ori	$s1, $zero, 1
	b	.LBB5_24
.LBB5_99:                               # %if.else2227
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t0, $a0
	b	.LBB5_23
.LBB5_100:                              # %if.then1613
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a5, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a6, $a0, %pc_lo12(.L.str.35)
	b	.LBB5_138
.LBB5_101:                              # %if.then2258
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s1, $a0, 0
.LBB5_102:                              # %if.end2269
	ori	$a0, $zero, 17
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 0
	ld.bu	$a2, $s6, 0
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB5_104
# %bb.103:                              # %if.else2297
	alsl.d	$a1, $a2, $s2, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_105
.LBB5_104:                              # %if.then2295
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_105:                              # %cond.end2352
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a4, 0
	ld.d	$a5, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s5, $a4, 0
	beqz	$a0, .LBB5_107
# %bb.106:                              # %cond.false2361
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB5_107:                              # %cond.end2385
	ld.h	$a0, $s5, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $s5, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $s5, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
.LBB5_108:                              # %if.end2412
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s4, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s8, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	beqz	$a0, .LBB5_110
# %bb.109:                              # %if.else2428
	alsl.d	$a1, $a2, $s8, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_111
.LBB5_110:                              # %if.then2426
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_111:                              # %cond.end2483
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s0, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $s0, 0
	ld.d	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s0, 0
	beqz	$a0, .LBB5_113
# %bb.112:                              # %cond.false2492
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_113:                              # %cond.end2516
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB5_115
# %bb.114:                              # %if.else2531
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB5_116
.LBB5_115:                              # %if.then2529
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_116:                              # %cond.end2586
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s1, $s0, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	beqz	$a4, .LBB5_119
# %bb.117:                              # %cond.end2586
	beqz	$a0, .LBB5_119
# %bb.118:                              # %cond.false2595
	ld.d	$a1, $a4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $a4, 16
	st.d	$a4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_119:                              # %cond.end2619
	ld.w	$a0, $s3, %pc_lo12(otop)
	st.d	$s1, $s0, 0
	addi.w	$a1, $a0, 1
	ori	$a2, $zero, 98
	st.w	$a1, $s3, %pc_lo12(otop)
	blt	$a2, $a0, .LBB5_121
# %bb.120:                              # %if.then2624
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	stx.d	$s1, $a1, $a0
	ori	$s1, $zero, 1
	b	.LBB5_24
.LBB5_121:                              # %if.else2627
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_22
.LBB5_122:                              # %if.then1756
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_123:                              # %cond.end1813
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a4, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a5, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a4, 0
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a2, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a4, 0
	ld.d	$a0, $a3, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a4, 0
	beqz	$s2, .LBB5_126
# %bb.124:                              # %cond.end1813
	beqz	$a0, .LBB5_126
# %bb.125:                              # %cond.false1822
	ld.d	$a3, $s2, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $s2, 16
	st.d	$s2, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
.LBB5_126:                              # %cond.end1846
	ld.w	$a2, $s1, %pc_lo12(otop)
	st.d	$fp, $a1, 0
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 98
	st.w	$a0, $s1, %pc_lo12(otop)
	blt	$a1, $a2, .LBB5_128
# %bb.127:                              # %if.then1851
	move	$s1, $zero
	slli.d	$a0, $a0, 3
	stx.d	$fp, $s0, $a0
	b	.LBB5_24
.LBB5_128:                              # %if.else1854
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB5_24
.LBB5_129:                              # %if.then80
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_130:                              # %if.end91
	ori	$a1, $zero, 5
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %pc_hi20(otop)
	ld.w	$a1, $a3, %pc_lo12(otop)
	st.d	$a0, $s3, 0
	addi.w	$a2, $a1, 1
	ori	$a4, $zero, 98
	st.w	$a2, $a3, %pc_lo12(otop)
	blt	$a4, $a1, .LBB5_132
# %bb.131:                              # %if.then109
	slli.d	$a1, $a2, 3
	pcalau12i	$a2, %pc_hi20(obj_stack)
	addi.d	$a2, $a2, %pc_lo12(obj_stack)
	stx.d	$a0, $a2, $a1
	b	.LBB5_133
.LBB5_132:                              # %if.else112
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	ldx.d	$a0, $a1, $a0
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_133:                              # %if.end118
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	st.d	$fp, $s3, 0
	st.w	$a0, $s0, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $s3, 0
.LBB5_134:                              # %sw.epilog
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	ori	$s1, $zero, 1
	b	.LBB5_24
.LBB5_135:                              # %if.then1552
	ld.hu	$a1, $a0, 34
	beqz	$a1, .LBB5_183
# %bb.136:                              # %if.then1560
	addi.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a2, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a5, $a0, %pc_lo12(.L.str.60)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a6, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_191
.LBB5_137:                              # %if.else1571
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a5, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a6, $a0, %pc_lo12(.L.str.60)
.LBB5_138:                              # %if.end1574
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_191
.LBB5_139:                              # %if.then413
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_140:                              # %cond.end470
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a4, 0
	ld.d	$a5, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s0, $a4, 0
	beqz	$s0, .LBB5_143
# %bb.141:                              # %cond.end470
	beqz	$a0, .LBB5_143
# %bb.142:                              # %cond.false479
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB5_143:                              # %if.end505
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	beqz	$a0, .LBB5_19
# %bb.144:                              # %if.then514
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(obj_stack)
	addi.d	$a1, $a1, %pc_lo12(obj_stack)
	ldx.d	$s0, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_146
# %bb.145:                              # %if.else531
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_147
.LBB5_146:                              # %if.then529
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_147:                              # %if.end540
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $fp, 8
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB5_149
# %bb.148:                              # %cond.false565
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB5_149:                              # %cond.end589
	st.d	$a0, $a1, 0
	st.d	$s0, $a2, 0
	beqz	$s0, .LBB5_152
# %bb.150:                              # %cond.end589
	beqz	$a0, .LBB5_152
# %bb.151:                              # %cond.false598
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_152:                              # %cond.end622
	ld.bu	$a0, $s0, 32
	ori	$a1, $zero, 56
	bne	$a0, $a1, .LBB5_19
# %bb.153:                              # %if.then629
	move	$a0, $fp
	pcaddu18i	$ra, %call36(OptimizeCase)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB5_19
.LBB5_154:                              # %if.then909
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB5_155:                              # %if.end920
	ori	$a0, $zero, 10
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a1, $a1, 3
	pcalau12i	$a0, %pc_hi20(obj_stack)
	addi.d	$a3, $a0, %pc_lo12(obj_stack)
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ldx.d	$s8, $a3, $a1
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB5_157
# %bb.156:                              # %if.else951
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_158
.LBB5_157:                              # %if.then949
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_158:                              # %cond.end1006
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s4, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s6, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $s7, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s8, $s7, 0
	beqz	$s8, .LBB5_161
# %bb.159:                              # %cond.end1006
	beqz	$a0, .LBB5_161
# %bb.160:                              # %cond.false1015
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_161:                              # %cond.end1039
	ld.h	$a0, $s8, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $s8, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $s8, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	ld.d	$a0, $fp, 80
	ori	$a1, $zero, 146
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s3, 0
	st.d	$a0, $s0, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB5_163
# %bb.162:                              # %if.else1076
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB5_164
.LBB5_163:                              # %if.then1074
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_164:                              # %cond.end1131
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $s6, 0
	st.d	$fp, $s7, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s0, $s7, 0
	beqz	$a0, .LBB5_166
# %bb.165:                              # %cond.false1140
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_166:                              # %if.end1166
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 4
	beqz	$a0, .LBB5_19
# %bb.167:                              # %if.then1175
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 10
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s1, $a1
	beqz	$s0, .LBB5_169
# %bb.168:                              # %if.else1189
	alsl.d	$a0, $a0, $s1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB5_170
.LBB5_169:                              # %if.then1187
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB5_170:                              # %if.end1198
	ori	$a0, $zero, 10
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	pcalau12i	$a0, %pc_hi20(otop)
	ld.w	$a1, $a0, %pc_lo12(otop)
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	addi.d	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(otop)
	slli.d	$a1, $a1, 3
	pcalau12i	$a0, %pc_hi20(obj_stack)
	addi.d	$a3, $a0, %pc_lo12(obj_stack)
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ldx.d	$s8, $a3, $a1
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB5_172
# %bb.171:                              # %if.else1229
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_173
.LBB5_172:                              # %if.then1227
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_173:                              # %cond.end1284
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s5, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s6, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $s7, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s4, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s8, $s7, 0
	beqz	$s8, .LBB5_176
# %bb.174:                              # %cond.end1284
	beqz	$a0, .LBB5_176
# %bb.175:                              # %cond.false1293
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB5_176:                              # %cond.end1317
	ld.h	$a0, $s8, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $s8, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $s8, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	ld.d	$a0, $fp, 80
	ori	$a1, $zero, 144
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s3, 0
	st.d	$a0, $s0, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB5_178
# %bb.177:                              # %if.else1360
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB5_179
.LBB5_178:                              # %if.then1358
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_179:                              # %if.end1369
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $s5, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s7, 0
	beqz	$a1, .LBB5_181
# %bb.180:                              # %cond.end1418
	ld.d	$a2, $a1, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	bnez	$a0, .LBB5_182
	b	.LBB5_19
.LBB5_181:                              # %cond.end1418.thread
	st.d	$s0, $s7, 0
.LBB5_182:                              # %cond.false1427
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	b	.LBB5_18
.LBB5_183:                              # %if.else1567
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a2, $a0, %pc_lo12(.L.str.63)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a5, $a0, %pc_lo12(.L.str.60)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_191
.LBB5_184:                              # %if.then1626
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ttop)
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s4, $a1
	move	$s1, $a0
	addi.d	$a0, $a1, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a2, $a0, %pc_lo12(.L.str.64)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a7, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a6, $s1
	b	.LBB5_189
.LBB5_185:                              # %if.then1641
	beqz	$a0, .LBB5_187
# %bb.186:                              # %cond.false1649
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, %pc_lo12(ttop)
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $s4, $a1
	move	$s1, $a0
	b	.LBB5_188
.LBB5_187:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$s1, $a0, %pc_lo12(.L.str.66)
.LBB5_188:                              # %cond.end1654
	addi.d	$a0, $a2, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a2, $a0, %pc_lo12(.L.str.65)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a6, $a5
	move	$a7, $s1
.LBB5_189:                              # %if.end1676
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_190:                              # %if.end1676
	ld.w	$a0, $s3, %pc_lo12(ttop)
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s3, %pc_lo12(ttop)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $a1, 32
	st.d	$a1, $a0, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a1, 0
	ld.w	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a4, $a1
.LBB5_191:                              # %if.end1574
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $fp, 32
	st.d	$fp, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $fp, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $fp, 0
	ld.w	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
	ori	$s1, $zero, 2
	b	.LBB5_24
.Lfunc_end5:
	.size	Reduce, .Lfunc_end5-Reduce
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_50-.LJTI5_0
	.word	.LBB5_52-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_29-.LJTI5_0
	.word	.LBB5_29-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_43-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_46-.LJTI5_0
	.word	.LBB5_47-.LJTI5_0
	.word	.LBB5_57-.LJTI5_0
	.word	.LBB5_37-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_55-.LJTI5_0
	.word	.LBB5_31-.LJTI5_0
	.word	.LBB5_31-.LJTI5_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function HuntCommandOptions
	.type	HuntCommandOptions,@function
HuntCommandOptions:                     # @HuntCommandOptions
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(CommandOptions)
	ld.d	$a0, $a0, %got_pc_lo12(CommandOptions)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.d	$s3, $a0, 8
	beq	$s3, $a0, .LBB6_46
# %bb.1:                                # %for.cond3.preheader.lr.ph
	ld.d	$s4, $fp, 80
	ori	$s5, $zero, 145
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s8, $a0, %got_pc_lo12(zz_lengths)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s6, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a2, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a0, $a0, %got_pc_lo12(xx_link)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a0, %got_pc_lo12(zz_tmp)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.inc547
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$s3, $a0, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$s3, $a0, .LBB6_46
.LBB6_3:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_11 Depth 3
                                        #     Child Loop BB6_18 Depth 2
                                        #       Child Loop BB6_19 Depth 3
	move	$a0, $s3
	.p2align	4, , 16
.LBB6_4:                                # %for.cond3
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB6_4
# %bb.5:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$s2, $s3, 8
	.p2align	4, , 16
.LBB6_6:                                # %for.cond16
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a1, $s2, 32
	beqz	$a1, .LBB6_6
# %bb.7:                                # %for.cond31.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$s7, $s4, 8
	beq	$s7, $s4, .LBB6_2
# %bb.8:                                # %for.cond38.preheader.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s1, $a0, 64
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_9:                                # %for.inc58
                                        #   in Loop: Header=BB6_10 Depth=2
	ld.d	$s7, $s7, 8
	beq	$s7, $s4, .LBB6_2
.LBB6_10:                               # %for.cond38.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
	move	$s0, $s7
	.p2align	4, , 16
.LBB6_11:                               # %for.cond38
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB6_11
# %bb.12:                               # %for.cond38
                                        #   in Loop: Header=BB6_10 Depth=2
	bne	$a0, $s5, .LBB6_9
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_10 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_9
# %bb.14:                               # %for.cond67.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 8
	move	$a7, $s8
	ori	$a2, $zero, 10
	bne	$a0, $fp, .LBB6_18
.LBB6_15:                               # %if.else300
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a0, $a7, 10
	slli.d	$a1, $a0, 3
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s1, $s7, $a1
	st.w	$a0, $s6, 0
	beqz	$s1, .LBB6_24
# %bb.16:                               # %if.else314
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s7, 3
	st.d	$a1, $a0, 0
	b	.LBB6_25
	.p2align	4, , 16
.LBB6_17:                               # %for.inc97
                                        #   in Loop: Header=BB6_18 Depth=2
	ld.d	$a0, $a0, 8
	beq	$a0, $fp, .LBB6_15
.LBB6_18:                               # %for.cond74.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_19 Depth 3
	move	$s1, $a0
	.p2align	4, , 16
.LBB6_19:                               # %for.cond74
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 16
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB6_19
# %bb.20:                               # %for.cond74
                                        #   in Loop: Header=BB6_18 Depth=2
	bne	$a1, $a2, .LBB6_17
# %bb.21:                               # %land.lhs.true91
                                        #   in Loop: Header=BB6_18 Depth=2
	ld.d	$a1, $s1, 80
	bne	$a1, $s0, .LBB6_17
# %bb.22:                               # %if.then103
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a2, $a0, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	beq	$a2, $a0, .LBB6_34
# %bb.23:                               # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a3, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB6_35
.LBB6_24:                               # %if.then312
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s1, $a7
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a7, $s1
	move	$s1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $a0, 0
.LBB6_25:                               # %if.end323
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 10
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 0
	ld.bu	$a2, $a7, 0
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB6_27
# %bb.26:                               # %if.else351
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB6_28
.LBB6_27:                               # %if.then349
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s7, $a7
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a7, $s7
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
.LBB6_28:                               # %if.end360
                                        #   in Loop: Header=BB6_3 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	st.d	$fp, $a4, 0
	ld.d	$a1, $fp, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a6, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a6, 0
	st.d	$s1, $a4, 0
	beqz	$a0, .LBB6_30
# %bb.29:                               # %cond.end406.cond.false415_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s1, 16
	st.d	$a1, $s1, 16
	ld.d	$a1, $a0, 16
	st.d	$a2, $s7, 0
	st.d	$s1, $a1, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB6_30:                               # %cond.end439
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a2, $a7, 0
	st.d	$s0, $s1, 80
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB6_32
# %bb.31:                               # %if.else455
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB6_33
.LBB6_32:                               # %if.then453
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
.LBB6_33:                               # %cond.end510
                                        #   in Loop: Header=BB6_3 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	st.d	$s1, $a4, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	b	.LBB6_43
.LBB6_34:                               #   in Loop: Header=BB6_3 Depth=1
	move	$a2, $zero
.LBB6_35:                               # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$s0, $s6
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	beq	$a3, $a0, .LBB6_37
# %bb.36:                               # %cond.false139
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $a5, 0
	ld.d	$a0, $a4, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a2, $a2, 8
.LBB6_37:                               # %cond.end161
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $a7, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a3, $s7, $a3
	st.d	$a0, $a5, 0
	st.w	$a2, $s0, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s0, 0
	ld.d	$a3, $a5, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s7, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB6_39
# %bb.38:                               # %if.then195
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
.LBB6_39:                               # %if.end197
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a2, $a7, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB6_41
# %bb.40:                               # %if.else210
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB6_42
.LBB6_41:                               # %if.then208
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
.LBB6_42:                               # %cond.end265
                                        #   in Loop: Header=BB6_3 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	st.d	$s1, $a4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
.LBB6_43:                               # %cond.end510
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a6, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a6, 0
	st.d	$s2, $a4, 0
	beqz	$s2, .LBB6_2
# %bb.44:                               # %cond.end265
                                        #   in Loop: Header=BB6_3 Depth=1
	beqz	$a0, .LBB6_2
# %bb.45:                               # %for.inc547.sink.split
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB6_2
.LBB6_46:                               # %for.end554
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
.Lfunc_end6:
	.size	HuntCommandOptions, .Lfunc_end6-HuntCommandOptions
                                        # -- End function
	.p2align	5                               # -- Begin function ParseEnvClosure
	.type	ParseEnvClosure,@function
ParseEnvClosure:                        # @ParseEnvClosure
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$s5, $zero, 82
	move	$s0, $a1
	beq	$a0, $s5, .LBB7_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a5, $a0, %pc_lo12(.L.str.69)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %if.end
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$s6, $zero, 88
	ori	$s7, $zero, 102
	ori	$s8, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s1, $a0, %pc_lo12(.L.str.70)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s2, $a0, %pc_lo12(.L.str.39)
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_3:                                # %sw.bb25
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ParseEnvClosure)
	jirl	$ra, $ra, 0
	move	$a1, $fp
.LBB7_4:                                # %while.cond.outer
                                        #   in Loop: Header=BB7_5 Depth=1
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB7_5:                                # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	st.d	$s3, $sp, 16
	addi.d	$s4, $s3, 32
	ld.bu	$a0, $s4, 0
	beq	$a0, $s5, .LBB7_3
	.p2align	4, , 16
.LBB7_6:                                # %while.cond
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB7_14
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB7_6 Depth=2
	beq	$a0, $s7, .LBB7_9
# %bb.8:                                # %sw.default
                                        #   in Loop: Header=BB7_6 Depth=2
	ori	$a0, $zero, 6
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	move	$a2, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
	bne	$a0, $s5, .LBB7_6
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_9:                                # %sw.bb
                                        #   in Loop: Header=BB7_5 Depth=1
	st.w	$zero, $sp, 12
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(SetScope)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.bu	$a0, $a0, 32
	beq	$a0, $s8, .LBB7_11
# %bb.10:                               # %if.then17
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a4, $s3, 32
	ori	$a0, $zero, 6
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %if.end20
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.w	$s4, $sp, 12
	blez	$s4, .LBB7_13
	.p2align	4, , 16
.LBB7_12:                               # %for.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB7_12
.LBB7_13:                               # %for.end
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	b	.LBB7_4
.LBB7_14:                               # %while.end
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a0, %got_pc_lo12(zz_hold)
	st.d	$s3, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s5, 88
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s4, $a1, %got_pc_lo12(zz_free)
	ldx.d	$a0, $s4, $a0
	st.d	$a0, $s3, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB7_16
# %bb.15:                               # %lor.lhs.false55
	ld.d	$a0, $fp, 0
	beq	$a1, $a0, .LBB7_17
.LBB7_16:                               # %if.then64
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 6
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
.LBB7_17:                               # %if.end67
	move	$s0, $a1
	.p2align	4, , 16
.LBB7_18:                               # %for.cond74
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB7_18
# %bb.19:                               # %for.end85
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a3, $fp, 24
	st.d	$fp, $a0, 0
	beq	$a3, $fp, .LBB7_27
# %bb.20:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_21:                               # %cond.end154
                                        #   in Loop: Header=BB7_22 Depth=1
	ld.bu	$a4, $a3, 32
	addi.d	$a5, $a4, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a3, 33
	add.d	$a4, $s5, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s4, $a5
	st.d	$a3, $s1, 0
	st.w	$a4, $s2, 0
	st.d	$a5, $a3, 0
	ld.w	$a3, $s2, 0
	ld.d	$a4, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a3, $a3, 3
	stx.d	$a4, $s4, $a3
	ld.d	$a3, $fp, 24
	beq	$a3, $fp, .LBB7_26
.LBB7_22:                               # %while.body92
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 24
	st.d	$a3, $a1, 0
	beq	$a4, $a3, .LBB7_24
# %bb.23:                               # %cond.false102
                                        #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a5, $a3, 16
	st.d	$a4, $a2, 0
	st.d	$a5, $a4, 16
	st.d	$a4, $a5, 24
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
.LBB7_24:                               # %cond.end124
                                        #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a4, $a3, 8
	st.d	$a3, $s1, 0
	beq	$a4, $a3, .LBB7_21
# %bb.25:                               # %cond.false132
                                        #   in Loop: Header=BB7_22 Depth=1
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a4, 0
	ld.d	$a4, $s1, 0
	ld.d	$a3, $a2, 0
	ld.d	$a5, $a4, 0
	st.d	$a3, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a3, $a1, 0
	st.d	$a4, $a4, 8
	b	.LBB7_21
.LBB7_26:                               # %while.cond187.preheader.loopexit
	ld.d	$a1, $fp, 8
.LBB7_27:                               # %while.cond187.preheader
	beq	$a1, $fp, .LBB7_34
# %bb.28:
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a2, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_29:                               # %cond.end255
                                        #   in Loop: Header=BB7_30 Depth=1
	ld.bu	$a4, $a1, 32
	addi.d	$a5, $a4, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a1, 33
	add.d	$a4, $s5, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s4, $a5
	st.d	$a1, $s1, 0
	st.w	$a4, $s2, 0
	st.d	$a5, $a1, 0
	ld.w	$a1, $s2, 0
	ld.d	$a4, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a4, $s4, $a1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB7_34
.LBB7_30:                               # %while.body193
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 24
	st.d	$a1, $a2, 0
	beq	$a4, $a1, .LBB7_32
# %bb.31:                               # %cond.false203
                                        #   in Loop: Header=BB7_30 Depth=1
	ld.d	$a5, $a1, 16
	st.d	$a4, $a3, 0
	st.d	$a5, $a4, 16
	st.d	$a4, $a5, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB7_32:                               # %cond.end225
                                        #   in Loop: Header=BB7_30 Depth=1
	ld.d	$a4, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a4, $a1, .LBB7_29
# %bb.33:                               # %cond.false233
                                        #   in Loop: Header=BB7_30 Depth=1
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $s1, 0
	ld.d	$a1, $a3, 0
	ld.d	$a5, $a4, 0
	st.d	$a1, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a2, 0
	st.d	$a4, $a4, 8
	b	.LBB7_29
.LBB7_34:                               # %while.end287
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	ld.bu	$a0, $s0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_36
# %bb.35:                               # %if.then323
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a5, $a0, %pc_lo12(.L.str.71)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_36:                               # %if.end325
	move	$a0, $s0
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
.Lfunc_end7:
	.size	ParseEnvClosure, .Lfunc_end7-ParseEnvClosure
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"OptimizeCase:  type(x) != CASE!"
	.size	.L.str.1, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SetScope: type(env) != ENV!"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SetScope: LastDown(y)!"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SetScope: type(yenv) != ENV!"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"cross reference database file name %s is too long"
	.size	.L.str.5, 50

	.type	cross_name,@object              # @cross_name
	.local	cross_name
	.comm	cross_name,8,8
	.type	ttop,@object                    # @ttop
	.data
	.p2align	2, 0x0
ttop:
	.word	4294967295                      # 0xffffffff
	.size	ttop, 4

	.type	tok_stack,@object               # @tok_stack
	.local	tok_stack
	.comm	tok_stack,800,8
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"expression is too deeply nested"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Parse: *token!"
	.size	.L.str.7, 15

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"exiting now"
	.size	.L.str.9, 12

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"def"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"langdef"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"macro"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"import"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"extend"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"export"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s expected after %s"
	.size	.L.str.16, 21

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"{"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"@Use"
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s or %s tag not allowed here"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"preceding"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"following"
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"invalid parameter of %s"
	.size	.L.str.22, 24

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"symbol %s occurs in two %s clauses"
	.size	.L.str.23, 35

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"symbol %s unknown or misspelt"
	.size	.L.str.24, 30

	.type	unknown_count,@object           # @unknown_count
	.local	unknown_count
	.comm	unknown_count,4,4
	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"too many errors (%s lines missing or out of order?)"
	.size	.L.str.25, 52

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"@SysInclude"
	.size	.L.str.26, 12

	.type	otop,@object                    # @otop
	.data
	.p2align	2, 0x0
otop:
	.word	4294967295                      # 0xffffffff
	.size	otop, 4

	.type	obj_stack,@object               # @obj_stack
	.local	obj_stack
	.comm	obj_stack,800,8
	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.space	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"right parameter of %s or %s must be enclosed in braces"
	.size	.L.str.28, 55

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"@Verbatim"
	.size	.L.str.29, 10

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"@RawVerbatim"
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"unexpected end of input"
	.size	.L.str.31, 24

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s replaced by %s"
	.size	.L.str.32, 18

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"@Begin"
	.size	.L.str.33, 7

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"unknown or misspelt symbol %s after %s deleted"
	.size	.L.str.34, 47

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"@End"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"symbol expected after %s"
	.size	.L.str.36, 25

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%s symbol out of place"
	.size	.L.str.37, 23

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%d %d"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"error in cross reference database"
	.size	.L.str.39, 34

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"symbol expected following %s"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"@LUse"
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"%s clause(s) changed from previous run"
	.size	.L.str.42, 39

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"@@V"
	.size	.L.str.43, 4

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"%s must follow named parameter %s"
	.size	.L.str.44, 34

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Parse: type(y) != PAR!"
	.size	.L.str.45, 23

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"named parameter %s of %s appears twice"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"compulsory option %s missing from %s"
	.size	.L.str.47, 37

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"%s out of place here (%s has no right parameter)"
	.size	.L.str.48, 49

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Parse: cannot undo rpar"
	.size	.L.str.49, 24

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Parse: cannot undo lpar"
	.size	.L.str.50, 24

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"right parameter of %s must be enclosed in braces"
	.size	.L.str.51, 49

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"body parameter of %s must be enclosed in braces"
	.size	.L.str.52, 48

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"invalid left parameter of %s"
	.size	.L.str.53, 29

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"@Open"
	.size	.L.str.54, 6

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"assert failed in %s %s"
	.size	.L.str.55, 23

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Parse:"
	.size	.L.str.56, 7

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"else"
	.size	.L.str.57, 5

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"left parameter of %s is not a symbol (or not visible)"
	.size	.L.str.58, 54

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"unmatched %s (inserted %s)"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"}"
	.size	.L.str.60, 2

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Reduce: unmatched"
	.size	.L.str.61, 18

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"unmatched %s; inserted %s at%s (after %s)"
	.size	.L.str.62, 42

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"unmatched %s not enclosed in anything"
	.size	.L.str.63, 38

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%s %s appended at end of file to match %s at%s"
	.size	.L.str.64, 47

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s replaced by %s %s to match %s at%s"
	.size	.L.str.65, 38

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"??"
	.size	.L.str.66, 3

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%s %s replaced by %s %s to match %s at%s"
	.size	.L.str.67, 41

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Reduce:"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"ParseEnvClosure: type(t) != ENV!"
	.size	.L.str.69, 33

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"syntax error in cross reference database"
	.size	.L.str.70, 41

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"ParseEnvClosure: type(res) != CLOSURE!"
	.size	.L.str.71, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
