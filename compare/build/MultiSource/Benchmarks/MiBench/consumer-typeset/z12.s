	.file	"z12.c"
	.text
	.globl	SpannerAvailableSpace           # -- Begin function SpannerAvailableSpace
	.p2align	5
	.type	SpannerAvailableSpace,@function
SpannerAvailableSpace:                  # @SpannerAvailableSpace
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -13
	ori	$a4, $zero, 2
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a1
	bltu	$a0, $a4, .LBB0_2
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
	ld.d	$s4, $fp, 24
	beq	$s4, $fp, .LBB0_41
# %bb.3:                                # %for.cond15.preheader.lr.ph
	move	$s1, $zero
	sltui	$a0, $s2, 1
	addi.d	$s5, $a0, 15
	xori	$s6, $a0, 19
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 24
	maskeqz	$a0, $a2, $a0
	or	$s8, $a0, $a1
                                        # implicit-def: $r23
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                # %if.else110
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %if.end117
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $s4, 24
	beq	$s4, $fp, .LBB0_42
.LBB0_6:                                # %for.cond15.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	move	$s7, $s1
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_7:                                # %for.cond15
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 0
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB0_7
# %bb.8:                                # %for.end
                                        #   in Loop: Header=BB0_6 Depth=1
	ldx.d	$s1, $a1, $s8
	addi.d	$s3, $a1, 32
	.p2align	4, , 16
.LBB0_9:                                # %for.cond36
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 0
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB0_9
# %bb.10:                               # %for.end47
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$s5, $a1, .LBB0_4
# %bb.11:                               # %if.then53
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s1, 41
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_13
# %bb.12:                               # %if.then57
                                        #   in Loop: Header=BB0_6 Depth=1
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
.LBB0_13:                               # %if.end59
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$s7, .LBB0_40
# %bb.14:                               # %if.else67
                                        #   in Loop: Header=BB0_6 Depth=1
	ldx.d	$a1, $s1, $s8
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_15:                               # %for.cond.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_15
# %bb.16:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$a4, $s2, $s7, 2
	alsl.d	$s0, $s2, $s1, 2
	beqz	$s2, .LBB0_25
	.p2align	4, , 16
.LBB0_17:                               # %while.cond.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	andi	$a3, $a2, 255
	bne	$s6, $a3, .LBB0_19
# %bb.18:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$s7, $a1, 0
	ld.bu	$a3, $s7, 32
	beqz	$a3, .LBB0_32
.LBB0_19:                               # %land.rhs.i
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a3, $a0, 24
	beq	$a3, $a0, .LBB0_28
# %bb.20:                               # %while.body.i
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a1, $a0, 16
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_21:                               # %for.cond44.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_21
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_22:                               # %while.body.us.i
                                        #   in Loop: Header=BB0_25 Depth=2
	move	$a0, $a3
	.p2align	4, , 16
.LBB0_23:                               # %for.cond44.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_25 Depth=2
	move	$a1, $a3
.LBB0_25:                               # %while.cond.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
	andi	$a3, $a2, 255
	bne	$s6, $a3, .LBB0_27
# %bb.26:                               # %lor.lhs.false.us.i
                                        #   in Loop: Header=BB0_25 Depth=2
	ld.d	$s7, $a1, 0
	ld.bu	$a3, $s7, 32
	beqz	$a3, .LBB0_32
.LBB0_27:                               # %land.rhs.us.i
                                        #   in Loop: Header=BB0_25 Depth=2
	ld.d	$a3, $a0, 24
	bne	$a3, $a0, .LBB0_22
.LBB0_28:                               # %if.else.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB0_31
# %bb.29:                               # %land.lhs.true98.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $a0, 43
	andi	$a0, $a0, 1
	bne	$s2, $a0, .LBB0_31
# %bb.30:                               # %land.lhs.true101.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $a1, 0
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_35
.LBB0_31:                               # %if.else87
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s3, 0
	move	$s7, $a4
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s0, 48
	ld.w	$s0, $s0, 56
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_32:                               # %for.cond75.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_32
# %bb.33:                               # %for.cond75.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_39
# %bb.34:                               # %if.then92.i
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	move	$s3, $a4
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a5, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_35:                               # %for.cond117.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_35
# %bb.36:                               # %for.cond117.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_38
# %bb.37:                               # %if.then134.i
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	move	$s3, $a4
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a5, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a4, $s3
.LBB0_38:                               # %if.end136.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.h	$a0, $s7, 44
	ori	$a0, $a0, 128
	st.h	$a0, $s7, 44
.LBB0_39:                               # %if.then69
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a4, 56
	ld.w	$a1, $s0, 48
	ld.w	$a2, $s0, 56
	addi.d	$a3, $s7, 44
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s0, 56
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_5
.LBB0_40:                               # %if.then62
                                        #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$a0, $s2, $s1, 2
	ld.w	$a1, $a0, 48
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s0, $a0, 56
	b	.LBB0_5
.LBB0_41:
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r23
.LBB0_42:                               # %for.end122
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 64
	add.d	$a1, $s0, $a1
	st.w	$a1, $fp, 68
	st.w	$a0, $fp, 72
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
.Lfunc_end0:
	.size	SpannerAvailableSpace, .Lfunc_end0-SpannerAvailableSpace
                                        # -- End function
	.globl	MinSize                         # -- Begin function MinSize
	.p2align	5
	.type	MinSize,@function
MinSize:                                # @MinSize
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 704                   # 8-byte Folded Spill
	st.d	$s4, $sp, 696                   # 8-byte Folded Spill
	st.d	$s5, $sp, 688                   # 8-byte Folded Spill
	st.d	$s6, $sp, 680                   # 8-byte Folded Spill
	st.d	$s7, $sp, 672                   # 8-byte Folded Spill
	st.d	$s8, $sp, 664                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.bu	$a5, $a0, 32
	addi.d	$a0, $a5, -2
	ori	$a3, $zero, 97
	move	$s0, $a1
	bltu	$a3, $a0, .LBB1_71
# %bb.1:                                # %entry
	addi.d	$fp, $s6, 32
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_2:                                # %sw.bb1413
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_3:                                # %for.cond1420
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_3
	b	.LBB1_123
.LBB1_4:                                # %sw.bb2135
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_5:                                # %for.cond2142
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_5
	b	.LBB1_123
.LBB1_6:                                # %lor.lhs.false1515
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	bnez	$s0, .LBB1_375
# %bb.7:                                # %lor.lhs.false1515
	ori	$a0, $zero, 43
	beq	$a5, $a0, .LBB1_39
	b	.LBB1_375
.LBB1_8:                                # %sw.bb2171
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_9:                                # %for.cond2178
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_9
# %bb.10:                               # %for.end2189
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -32
	sltu	$a1, $zero, $a1
	beq	$a2, $a1, .LBB1_67
# %bb.11:                               # %if.then2200
	alsl.d	$a0, $s0, $s6, 2
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	b	.LBB1_68
.LBB1_12:                               # %sw.bb7380
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB1_477
# %bb.13:                               # %if.end7384
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ld.d	$fp, $s6, 8
	.p2align	4, , 16
.LBB1_14:                               # %for.cond7391
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_14
# %bb.15:                               # %for.end7402
	addi.d	$a3, $fp, 32
	addi.d	$a0, $fp, 64
	addi.d	$a2, $sp, 656
	addi.d	$a4, $sp, 632
	move	$a1, $a5
	pcaddu18i	$ra, %call36(OpenIncGraphicFile)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	ori	$s8, $zero, 2
	ori	$s0, $zero, 37
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s4, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s5, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s6, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s7, $a0, %pc_lo12(.L.str.31)
	move	$s2, $zero
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB1_16:                               # %while.cond7413
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a1, .LBB1_176
# %bb.17:                               # %while.body7416
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a2, $sp, 120
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 1
	bltu	$a0, $s8, .LBB1_317
# %bb.18:                               # %if.end7425
                                        #   in Loop: Header=BB1_16 Depth=1
	andi	$a0, $s2, 1
	bnez	$a0, .LBB1_20
# %bb.19:                               # %land.lhs.true7427
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$a1, $zero, 2
	beqz	$a0, .LBB1_16
.LBB1_20:                               # %if.else7432
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.bu	$a0, $sp, 120
	move	$a1, $zero
	ori	$s2, $zero, 1
	bne	$a0, $s0, .LBB1_16
# %bb.21:                               # %land.lhs.true7437
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s4
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$a0, .LBB1_16
# %bb.22:                               # %land.lhs.true7441
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s5
	pcaddu18i	$ra, %call36(StringContains)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bnez	$a0, .LBB1_16
# %bb.23:                               # %if.then7445
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	addi.d	$a2, $sp, 648
	addi.d	$a3, $sp, 644
	addi.d	$a4, $sp, 640
	addi.d	$a5, $sp, 636
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB1_16
# %bb.24:                               # %if.then7450
                                        #   in Loop: Header=BB1_16 Depth=1
	fld.s	$fa0, $sp, 648
	fld.s	$fa1, $sp, 644
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fld.s	$fa0, $sp, 640
	ftintrz.w.s	$fa1, $fa1
	fld.s	$fa2, $sp, 636
	movfr2gr.s	$a0, $fa1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa2
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	ori	$s2, $zero, 1
	b	.LBB1_16
.LBB1_25:                               # %sw.bb2064
	alsl.d	$a0, $s0, $s6, 2
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_26:                               # %for.cond2079
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_26
# %bb.27:                               # %for.end2090
	alsl.d	$a0, $s0, $a0, 2
	b	.LBB1_476
.LBB1_28:                               # %sw.bb2099
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_29:                               # %for.cond2106
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_29
	b	.LBB1_123
.LBB1_30:                               # %sw.bb2372
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_31:                               # %for.cond2379
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_31
# %bb.32:                               # %for.end2390
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -30
	sltu	$a1, $zero, $a1
	beq	$a2, $a1, .LBB1_125
	b	.LBB1_475
.LBB1_33:                               # %sw.bb1883
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_34:                               # %for.cond1890
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_34
# %bb.35:                               # %for.end1901
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s6, 2
	st.w	$a1, $a2, 48
	ld.w	$a0, $a0, 56
	ori	$a1, $zero, 1
	st.w	$a0, $a2, 56
	bne	$s0, $a1, .LBB1_477
# %bb.36:                               # %if.then1921
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 138
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_182
# %bb.37:                               # %if.else1935
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB1_183
.LBB1_38:                               # %land.lhs.true
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	bnez	$s0, .LBB1_375
.LBB1_39:                               # %if.end.i
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $fp, 8
	.p2align	4, , 16
.LBB1_40:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_40
# %bb.41:                               # %for.end.i
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s5, 16
	beq	$a0, $a1, .LBB1_43
# %bb.42:                               # %if.then31.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
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
	ld.d	$a0, $s5, 24
.LBB1_43:                               # %if.end33.i
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB1_45
# %bb.44:                               # %cond.false.i
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB1_45:                               # %cond.end.i
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s6, 0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_47
# %bb.46:                               # %cond.false69.i
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB1_47:                               # %cond.end91.i
	ld.bu	$a1, $a0, 32
	st.d	$a0, $s6, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a3, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a3, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a1, $s1, $a1
	st.d	$a1, $a0, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	ld.bu	$a0, $s4, 0
	ori	$a1, $zero, 44
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB1_49
# %bb.48:                               # %cond.end91.i
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB1_179
.LBB1_49:                               # %if.then131.i
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	.p2align	4, , 16
.LBB1_50:                               # %for.cond138.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_50
# %bb.51:                               # %for.cond138.i
	ori	$a1, $zero, 16
	bne	$a2, $a1, .LBB1_178
# %bb.52:                               # %if.end162.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 13
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s3, .LBB1_243
# %bb.53:                               # %if.else175.i
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_244
.LBB1_54:                               # %sw.bb1835
	addi.d	$a0, $a5, -13
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $s0
	xor	$a0, $a1, $a0
	bnez	$a0, .LBB1_56
# %bb.55:                               # %if.then1845
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_56:                               # %if.end1847
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_57:                               # %for.cond1854
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_57
	b	.LBB1_123
.LBB1_58:                               # %sw.bb2
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_475
# %bb.59:                               # %if.then5
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $s0
	ld.bu	$a0, $s6, 41
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a1, %got_pc_lo12(zz_lengths)
	ldx.bu	$a0, $s1, $a0
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_192
# %bb.60:                               # %if.else17
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB1_193
.LBB1_61:                               # %sw.bb3268
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_62:                               # %for.cond3275
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_62
# %bb.63:                               # %for.end3286
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -28
	sltu	$a1, $zero, $a1
	move	$s1, $a0
	beq	$a2, $a1, .LBB1_175
# %bb.64:                               # %if.then3297
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(FindShift)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 656
	alsl.d	$a1, $s0, $s1, 2
	ld.w	$a2, $a1, 48
	add.w	$a2, $a2, $a0
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	slt	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a3, $a4
	or	$a2, $a2, $a4
	alsl.d	$a4, $s0, $s6, 2
	st.w	$a2, $a4, 48
	ld.w	$a1, $a1, 56
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $a4, 56
	b	.LBB1_477
.LBB1_65:                               # %sw.bb
	bnez	$s0, .LBB1_477
# %bb.66:                               # %if.then
	move	$a0, $s6
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_67:                               # %if.else2209
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s6, 2
	st.w	$a1, $a2, 48
	ld.w	$a0, $a0, 56
	st.w	$a0, $a2, 56
.LBB1_68:                               # %if.end2226
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_477
# %bb.69:                               # %if.then2229
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 137
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_181
# %bb.70:                               # %if.else2243
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 137
	b	.LBB1_184
.LBB1_71:                               # %sw.default
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$s1, $a0, 0
	move	$a0, $a5
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a5, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_72:                               # %sw.bb2845
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_73:                               # %for.cond2852
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_73
# %bb.74:                               # %for.end2863
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_207
# %bb.75:                               # %if.else3019
	addi.d	$a1, $a0, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a1, $a1, $a2
	alsl.d	$a2, $s0, $s6, 2
	st.w	$a1, $a2, 48
	alsl.d	$a0, $s0, $a0, 2
	b	.LBB1_127
.LBB1_76:                               # %sw.bb2428
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_77:                               # %for.cond2435
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_77
# %bb.78:                               # %for.end2446
	beqz	$s0, .LBB1_215
# %bb.79:                               # %if.else2503
	move	$s2, $s0
	ld.d	$s1, $s6, 88
	ld.d	$fp, $s1, 8
	beq	$fp, $s1, .LBB1_84
# %bb.80:                               # %if.then2511
	ld.bu	$a0, $fp, 32
	ld.d	$s0, $a2, 0
	beqz	$a0, .LBB1_82
# %bb.81:                               # %if.then2517
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_82:                               # %if.end2519
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$fp, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a2, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a2, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a3, 0
	ld.d	$a3, $a0, 0
	st.d	$a3, $a6, 8
	st.d	$fp, $a0, 0
	st.d	$s0, $a1, 0
	beqz	$s0, .LBB1_84
# %bb.83:                               # %cond.false2560
	ld.d	$a3, $s0, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
.LBB1_84:                               # %if.end2586
	ld.d	$a0, $s6, 88
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
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
	move	$s0, $s2
	b	.LBB1_477
.LBB1_85:                               # %sw.bb3446
	ld.bu	$a0, $s6, 68
	andi	$a0, $a0, 12
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_573
# %bb.86:                               # %for.cond3457.preheader
	move	$a1, $s6
	ld.d	$s6, $s6, 8
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	beq	$s6, $a1, .LBB1_221
# %bb.87:                               # %for.cond3470.preheader.preheader
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a4, $zero, 17
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a5, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a6, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s7, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s8, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s2, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s3, $a0, %got_pc_lo12(zz_tmp)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s4, $a1
	move	$s0, $a1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_90
.LBB1_88:                               # %if.end3675
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s0, $s0, 0
.LBB1_89:                               # %for.inc3680
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s0, $s0, 8
	ld.d	$s6, $s0, 8
	beq	$s6, $s4, .LBB1_220
.LBB1_90:                               # %for.cond3470.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_91 Depth 2
	move	$fp, $s6
	.p2align	4, , 16
.LBB1_91:                               # %for.cond3470
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_91
# %bb.92:                               # %for.cond3470
                                        #   in Loop: Header=BB1_90 Depth=1
	bne	$a0, $a4, .LBB1_89
# %bb.93:                               # %if.then3487
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s1, $fp, 8
	beq	$s1, $fp, .LBB1_98
# %bb.94:                               # %if.then3499
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB1_96
# %bb.95:                               # %if.then3505
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ori	$a4, $zero, 17
.LBB1_96:                               # %cond.end3539
                                        #   in Loop: Header=BB1_90 Depth=1
	st.d	$s1, $s2, 0
	st.d	$fp, $s5, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $a3, 8
	st.d	$s1, $s2, 0
	st.d	$s6, $s5, 0
	beqz	$s6, .LBB1_98
# %bb.97:                               # %cond.false3548
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $s6, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $a3, 8
.LBB1_98:                               # %if.end3574
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a1, $a0, .LBB1_103
# %bb.99:                               # %cond.false3584
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $a6, 0
	st.d	$a0, $s5, 0
	beq	$a2, $a0, .LBB1_101
.LBB1_100:                              # %cond.false3614
                                        #   in Loop: Header=BB1_90 Depth=1
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
.LBB1_101:                              # %cond.end3636
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a7, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s8, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s5, 0
	ld.d	$a0, $a6, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s8, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_88
# %bb.102:                              # %if.then3673
                                        #   in Loop: Header=BB1_90 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ori	$a4, $zero, 17
	b	.LBB1_88
.LBB1_103:                              #   in Loop: Header=BB1_90 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $a6, 0
	st.d	$a0, $s5, 0
	bne	$a2, $a0, .LBB1_100
	b	.LBB1_101
.LBB1_104:                              # %sw.bb7147
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB1_106
# %bb.105:                              # %if.then7150
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_106:                              # %if.end7152
	ld.bu	$a0, $s6, 41
	bnez	$a0, .LBB1_477
# %bb.107:                              # %if.then7158
	ld.d	$fp, $s6, 8
	bne	$fp, $s6, .LBB1_109
# %bb.108:                              # %if.then7164
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	ld.d	$fp, $s6, 8
.LBB1_109:                              # %if.end7166
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $s6
	beq	$fp, $s6, .LBB1_400
# %bb.110:                              # %for.cond7177.preheader.preheader
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s3, $a0, %pc_lo12(.L.str.29)
	move	$s1, $zero
	move	$s0, $zero
	ori	$s7, $zero, 4
	b	.LBB1_112
.LBB1_111:                              # %for.inc7251
                                        #   in Loop: Header=BB1_112 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $s8, .LBB1_401
.LBB1_112:                              # %for.cond7177.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_113 Depth 2
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_113:                              # %for.cond7177
                                        #   Parent Loop BB1_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_113
# %bb.114:                              # %for.cond7177
                                        #   in Loop: Header=BB1_112 Depth=1
	bne	$a0, $s5, .LBB1_116
# %bb.115:                              # %if.then7194
                                        #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -43
	bltu	$a0, $s7, .LBB1_111
	b	.LBB1_117
.LBB1_116:                              # %if.end7196
                                        #   in Loop: Header=BB1_112 Depth=1
	addi.d	$a0, $a0, -43
	bltu	$a0, $s7, .LBB1_111
.LBB1_117:                              # %if.then7220
                                        #   in Loop: Header=BB1_112 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	b	.LBB1_111
.LBB1_118:                              # %sw.bb514
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_149
# %bb.119:                              # %if.then517
	move	$s5, $a2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 5
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_323
# %bb.120:                              # %if.else531
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB1_324
.LBB1_121:                              # %sw.bb3401
	sltui	$a0, $s0, 1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB1_122:                              # %for.cond3417
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_122
.LBB1_123:                              # %for.end1431
	move	$a1, $s0
.LBB1_124:                              # %if.else2410
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
.LBB1_125:                              # %if.else2410
	alsl.d	$a0, $s0, $a0, 2
.LBB1_126:                              # %sw.epilog7697
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s6, 2
	st.w	$a1, $a2, 48
.LBB1_127:                              # %sw.epilog7697
	ld.w	$a0, $a0, 56
	st.w	$a0, $a2, 56
	b	.LBB1_477
.LBB1_128:                              # %sw.bb6930
	beqz	$s0, .LBB1_130
# %bb.129:                              # %if.then6933
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_130:                              # %if.end6935
	ld.bu	$a0, $s6, 41
	bnez	$a0, .LBB1_477
# %bb.131:                              # %if.then6941
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s0, $s6, 8
	bne	$s0, $s6, .LBB1_133
# %bb.132:                              # %if.then6947
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	ld.d	$s0, $s6, 8
.LBB1_133:                              # %if.end6949
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $s6
	beq	$s0, $s6, .LBB1_412
# %bb.134:                              # %for.cond6960.preheader.preheader
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	move	$s1, $zero
	move	$fp, $zero
	ori	$s7, $zero, 46
	ori	$s8, $zero, 0
	lu32i.d	$s8, 29696
	b	.LBB1_137
.LBB1_135:                              # %if.then7003
                                        #   in Loop: Header=BB1_137 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB1_136:                              # %for.inc7034
                                        #   in Loop: Header=BB1_137 Depth=1
	ld.d	$s0, $s0, 8
	beq	$s0, $s2, .LBB1_413
.LBB1_137:                              # %for.cond6960.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_138 Depth 2
	move	$s4, $s0
	.p2align	4, , 16
.LBB1_138:                              # %for.cond6960
                                        #   Parent Loop BB1_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_138
# %bb.139:                              # %for.cond6960
                                        #   in Loop: Header=BB1_137 Depth=1
	bne	$a0, $s5, .LBB1_141
# %bb.140:                              # %if.then6977
                                        #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s6
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
.LBB1_141:                              # %if.end6979
                                        #   in Loop: Header=BB1_137 Depth=1
	bltu	$s7, $a0, .LBB1_135
# %bb.142:                              # %if.end6979
                                        #   in Loop: Header=BB1_137 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s8
	bnez	$a0, .LBB1_136
	b	.LBB1_135
.LBB1_143:                              # %sw.bb1076
	ld.d	$a0, $s6, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	beqz	$a0, .LBB1_145
# %bb.144:                              # %if.then1084
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_145:                              # %if.end1086
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_149
# %bb.146:                              # %if.then1089
	ld.d	$a0, $s6, 80
	ld.hu	$a0, $a0, 41
	andi	$a1, $a0, 512
	bnez	$a1, .LBB1_306
# %bb.147:                              # %if.else1239
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_424
# %bb.148:                              # %if.else1389
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
	b	.LBB1_475
.LBB1_149:                              # %if.else1393
	ld.hu	$a0, $s6, 42
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4071
	and	$a0, $a0, $a1
	st.h	$a0, $s6, 42
	b	.LBB1_475
.LBB1_150:                              # %sw.bb1449
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_151:                              # %for.cond1456
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_151
# %bb.152:                              # %for.end1467
	move	$a1, $s0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_153:                              # %for.cond1475
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_153
# %bb.154:                              # %for.end1486
	move	$a1, $s0
	move	$a2, $fp
	b	.LBB1_124
.LBB1_155:                              # %sw.bb248
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_475
# %bb.156:                              # %if.then251
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 135
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_332
# %bb.157:                              # %if.else265
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 135
	b	.LBB1_194
.LBB1_158:                              # %sw.bb2618
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_159:                              # %for.cond2625
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_159
# %bb.160:                              # %for.end2636
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_217
# %bb.161:                              # %if.else2814
	addi.d	$a1, $a0, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a1, $a1, $a2
	ld.w	$a2, $s6, 72
	mul.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 62, 56
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 7
	alsl.d	$a2, $s0, $s6, 2
	st.w	$a1, $a2, 48
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	ld.w	$a1, $s6, 72
	mul.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 7
	st.w	$a0, $a2, 56
	ld.h	$a0, $s6, 42
	ori	$a0, $a0, 1
	st.h	$a0, $s6, 42
	b	.LBB1_477
.LBB1_162:                              # %sw.bb3037
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_163:                              # %for.cond3044
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_163
# %bb.164:                              # %for.end3055
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_125
# %bb.165:                              # %if.then3059
	addi.d	$s1, $s6, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 48
	ld.w	$a1, $s6, 64
	blt	$a1, $a0, .LBB1_168
# %bb.166:                              # %land.lhs.true3070
	ld.w	$a1, $s2, 56
	ld.w	$a2, $s6, 68
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB1_168
# %bb.167:                              # %land.lhs.true3084
	ld.w	$a2, $s6, 72
	bge	$a2, $a1, .LBB1_169
.LBB1_168:                              # %if.then3093
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 48
.LBB1_169:                              # %if.end3095
	st.w	$a0, $s6, 48
	ld.w	$a2, $s2, 56
	addi.d	$a0, $s6, 48
	addi.d	$a1, $s6, 56
	st.w	$a2, $s6, 56
	move	$a2, $s1
	pcaddu18i	$ra, %call36(EnlargeToConstraint)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_170:                              # %sw.bb3139
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_171:                              # %for.cond3146
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_171
# %bb.172:                              # %for.end3157
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	bne	$s0, $a1, .LBB1_175
# %bb.173:                              # %if.then3161
	ld.w	$a1, $s1, 52
	ld.w	$a0, $s6, 64
	addi.d	$s3, $s6, 64
	bge	$a0, $a1, .LBB1_308
# %bb.174:                              # %if.then3161.if.then3193_crit_edge
	ld.w	$a0, $s6, 68
	b	.LBB1_310
.LBB1_175:                              # %if.else3250
	alsl.d	$a0, $s0, $s1, 2
	b	.LBB1_126
.LBB1_176:                              # %while.cond7413
	addi.d	$a0, $a1, -1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_177:                              # %sw.bb7460
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	ld.d	$a3, $sp, 656
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a2, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$zero, $s6, 41
	vrepli.b	$vr0, 0
	vst	$vr0, $s6, 48
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_321
.LBB1_178:                              # %if.then155.i
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a2, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 10
	b	.LBB1_297
.LBB1_179:                              # %if.else813.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_285
# %bb.180:                              # %if.else827.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_286
.LBB1_181:                              # %if.then2241
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
	ori	$a0, $zero, 137
	b	.LBB1_184
.LBB1_182:                              # %if.then1933
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB1_183:                              # %if.end1944
	ori	$a0, $zero, 138
.LBB1_184:                              # %if.end1944
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s1, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s6, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB1_186
# %bb.185:                              # %if.else1973
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_187
.LBB1_186:                              # %if.then1971
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_187:                              # %if.end1982
	move	$s0, $s3
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
	st.d	$a0, $a1, 0
	ld.d	$a4, $s4, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_190
# %bb.188:                              # %cond.end2028
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_477
# %bb.189:                              # %cond.end2028.cond.false2037_crit_edge
	ld.d	$a0, $a2, 16
	b	.LBB1_191
.LBB1_190:                              # %cond.end2028.thread
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_191:                              # %cond.false2037
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	b	.LBB1_477
.LBB1_192:                              # %if.then15
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB1_193:                              # %if.end24
	ld.b	$a0, $s6, 41
.LBB1_194:                              # %if.end24
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s1, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s6, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	move	$s8, $s6
	beqz	$a0, .LBB1_196
# %bb.195:                              # %if.else53
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_197
.LBB1_196:                              # %if.then51
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_197:                              # %cond.end104
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s5, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s4, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s3, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$s8, $s6, 0
	beqz	$a0, .LBB1_199
# %bb.198:                              # %cond.false113
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s3, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_199:                              # %cond.end137
	ld.bu	$a2, $s1, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB1_201
# %bb.200:                              # %if.else152
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_202
.LBB1_201:                              # %if.then150
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
.LBB1_202:                              # %if.end161
	move	$s0, $s7
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	st.d	$a0, $s4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_205
# %bb.203:                              # %cond.end207
	ld.d	$a2, $a1, 0
	st.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s4, 0
	st.d	$s2, $s6, 0
	move	$s6, $s8
	beqz	$a1, .LBB1_475
# %bb.204:                              # %cond.end207.cond.false216_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB1_206
.LBB1_205:                              # %cond.end207.thread
	st.d	$a0, $s4, 0
	st.d	$s2, $s6, 0
	move	$a1, $a0
	move	$s6, $s8
.LBB1_206:                              # %cond.false216
	ld.d	$a2, $s2, 16
	st.d	$a0, $s2, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s3, 0
	st.d	$s2, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	b	.LBB1_475
.LBB1_207:                              # %if.then2867
	ld.w	$a1, $a0, 48
	st.w	$a1, $s6, 48
	ld.w	$fp, $a0, 56
	ld.d	$a0, $s6, 8
	st.w	$fp, $s6, 56
	.p2align	4, , 16
.LBB1_208:                              # %for.cond2890
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_208
# %bb.209:                              # %while.cond.preheader
	ori	$a1, $zero, 17
.LBB1_210:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_212 Depth 2
	bne	$a2, $a1, .LBB1_213
# %bb.211:                              # %while.body
                                        #   in Loop: Header=BB1_210 Depth=1
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB1_212:                              # %for.cond2913
                                        #   Parent Loop BB1_210 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_212
	b	.LBB1_210
.LBB1_213:                              # %while.cond
	addi.d	$a1, $a2, -11
	move	$s3, $s0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_426
# %bb.214:                              # %if.then2936
	ld.bu	$s1, $a0, 64
	b	.LBB1_427
.LBB1_215:                              # %if.then2449
	move	$a1, $zero
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a1, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a3, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	beqz	$a1, .LBB1_398
# %bb.216:                              # %if.else2464
	alsl.d	$a2, $a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	b	.LBB1_399
.LBB1_217:                              # %if.then2640
	ld.w	$a1, $a0, 48
	ld.w	$a2, $s6, 64
	mul.w	$a1, $a2, $a1
	bstrpick.d	$a3, $a1, 62, 56
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 7
	st.w	$a1, $s6, 48
	ld.w	$a0, $a0, 56
	mul.w	$a0, $a0, $a2
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 7
	st.w	$a0, $s6, 56
	bnez	$a2, .LBB1_477
# %bb.218:                              # %if.then2667
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 136
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_482
# %bb.219:                              # %if.else2681
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB1_483
.LBB1_220:                              # %for.end3684.loopexit
	move	$a1, $s4
	ld.d	$s6, $s4, 8
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
.LBB1_221:                              # %for.end3684
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beq	$s6, $a1, .LBB1_322
# %bb.222:                              # %for.cond3695.preheader.preheader
	ori	$fp, $zero, 1
	ori	$s0, $zero, 9
	ori	$s1, $zero, 91
	b	.LBB1_225
.LBB1_223:                              # %cond.false3728
                                        #   in Loop: Header=BB1_225 Depth=1
	addi.d	$a0, $a1, -9
	bltu	$a0, $s1, .LBB1_230
.LBB1_224:                              # %for.inc3745
                                        #   in Loop: Header=BB1_225 Depth=1
	ld.d	$s6, $s6, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB1_333
.LBB1_225:                              # %for.cond3695.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_226 Depth 2
	move	$a0, $s6
	.p2align	4, , 16
.LBB1_226:                              # %for.cond3695
                                        #   Parent Loop BB1_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_226
# %bb.227:                              # %for.cond3695
                                        #   in Loop: Header=BB1_225 Depth=1
	beq	$a1, $fp, .LBB1_224
# %bb.228:                              # %for.cond3695
                                        #   in Loop: Header=BB1_225 Depth=1
	bne	$a1, $s0, .LBB1_223
# %bb.229:                              # %cond.true3725
                                        #   in Loop: Header=BB1_225 Depth=1
	move	$s2, $a2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	beqz	$a0, .LBB1_224
.LBB1_230:                              # %for.end3749
	ld.d	$s1, $s6, 8
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beq	$s1, $s6, .LBB1_496
# %bb.231:                              # %for.cond3763.preheader.preheader
	move	$s4, $zero
	ori	$fp, $zero, 1
	ori	$s0, $zero, 9
	ori	$s2, $zero, 90
	ori	$s3, $zero, 1
	b	.LBB1_235
.LBB1_232:                              # %cond.true3797
                                        #   in Loop: Header=BB1_235 Depth=1
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_493
.LBB1_233:                              #   in Loop: Header=BB1_235 Depth=1
	move	$a0, $s4
.LBB1_234:                              # %for.inc3822
                                        #   in Loop: Header=BB1_235 Depth=1
	ld.d	$s1, $s1, 8
	move	$s4, $a0
	beq	$s1, $s6, .LBB1_497
.LBB1_235:                              # %for.cond3763.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_236 Depth 2
	move	$a0, $s1
	.p2align	4, , 16
.LBB1_236:                              # %for.cond3763
                                        #   Parent Loop BB1_235 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_236
# %bb.237:                              # %for.cond3763
                                        #   in Loop: Header=BB1_235 Depth=1
	beq	$a1, $s0, .LBB1_232
# %bb.238:                              # %for.cond3763
                                        #   in Loop: Header=BB1_235 Depth=1
	bne	$a1, $fp, .LBB1_241
# %bb.239:                              # %if.then3780
                                        #   in Loop: Header=BB1_235 Depth=1
	beqz	$s3, .LBB1_242
# %bb.240:                              # %land.rhs3782
                                        #   in Loop: Header=BB1_235 Depth=1
	ld.hu	$a1, $a0, 44
	bstrpick.d	$s3, $a1, 9, 9
	b	.LBB1_234
.LBB1_241:                              # %cond.false3800
                                        #   in Loop: Header=BB1_235 Depth=1
	addi.d	$a0, $a1, -9
	bltu	$s2, $a0, .LBB1_233
	b	.LBB1_493
.LBB1_242:                              #   in Loop: Header=BB1_235 Depth=1
	move	$s3, $zero
	b	.LBB1_234
.LBB1_243:                              # %if.then173.i
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s6, 0
.LBB1_244:                              # %if.end184.i
	ori	$a0, $zero, 13
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.h	$a0, $a3, 34
	st.h	$a0, $s3, 34
	ld.wu	$a0, $a3, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s3, 36
	ld.wu	$a1, $a3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s3, 36
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -1025
	ori	$a1, $a1, 4095
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_246
# %bb.245:                              # %if.else231.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_247
.LBB1_246:                              # %if.then229.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_247:                              # %cond.end286.i
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$fp, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $fp, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s6, 0
	ld.d	$a1, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_249
# %bb.248:                              # %cond.false295.i
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_249:                              # %cond.end319.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_251
# %bb.250:                              # %if.else334.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_252
.LBB1_251:                              # %if.then332.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_252:                              # %cond.end389.i
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s6, 0
	beqz	$a0, .LBB1_254
# %bb.253:                              # %cond.false398.i
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_254:                              # %cond.end422.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 16
	.p2align	4, , 16
.LBB1_255:                              # %for.cond430.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_255
# %bb.256:                              # %for.cond430.i
	ori	$s2, $zero, 15
	beq	$a0, $s2, .LBB1_259
# %bb.257:                              # %if.end454.i
	ld.bu	$a0, $s4, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 32
	beq	$a0, $s2, .LBB1_259
# %bb.258:                              # %if.then460.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_259:                              # %if.end462.i
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -130048
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 40
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$s8, $a0, 8
	beq	$s8, $s0, .LBB1_268
# %bb.260:                              # %for.cond494.preheader.i.preheader
	ori	$a0, $zero, 3
	ori	$a1, $zero, 46
	ori	$a2, $zero, 45
	move	$a3, $s8
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
.LBB1_261:                              # %for.cond494.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_262 Depth 2
	move	$a5, $a3
.LBB1_262:                              # %for.cond494.i
                                        #   Parent Loop BB1_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a4, $a5, 32
	beqz	$a4, .LBB1_262
# %bb.263:                              # %for.cond494.i
                                        #   in Loop: Header=BB1_261 Depth=1
	addi.d	$a5, $a4, -42
	bltu	$a5, $a0, .LBB1_269
# %bb.264:                              # %for.cond494.i
                                        #   in Loop: Header=BB1_261 Depth=1
	beq	$a4, $a1, .LBB1_269
# %bb.265:                              # %for.cond494.i
                                        #   in Loop: Header=BB1_261 Depth=1
	bne	$a4, $a2, .LBB1_267
# %bb.266:                              # %if.then511.i
                                        #   in Loop: Header=BB1_261 Depth=1
	ld.d	$a3, $a3, 8
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	bne	$a3, $s0, .LBB1_261
	b	.LBB1_269
.LBB1_267:                              # %for.inc542.loopexit.i
                                        #   in Loop: Header=BB1_261 Depth=1
	ld.d	$a3, $a3, 8
	bne	$a3, $s0, .LBB1_261
	b	.LBB1_269
.LBB1_268:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
.LBB1_269:                              # %for.end546.i
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_288
# %bb.270:                              # %for.cond560.preheader.i.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s2, $a0, %got_pc_lo12(xx_tmp)
	b	.LBB1_272
	.p2align	4, , 16
.LBB1_271:                              # %cond.end799.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.wu	$a0, $s3, 40
	addi.d	$a1, $a0, 1
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s3, 40
	ld.d	$s8, $s8, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_288
.LBB1_272:                              # %for.cond560.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_273 Depth 2
	move	$a0, $s8
	.p2align	4, , 16
.LBB1_273:                              # %for.cond560.i
                                        #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_273
# %bb.274:                              # %for.end571.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 45
	slli.d	$a1, $a2, 3
	ldx.d	$s4, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$s4, .LBB1_276
# %bb.275:                              # %if.else585.i
                                        #   in Loop: Header=BB1_272 Depth=1
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_277
.LBB1_276:                              # %if.then583.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
.LBB1_277:                              # %if.end594.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ori	$a1, $zero, 45
	st.b	$a1, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a1, $a0, 34
	st.h	$a1, $s4, 34
	ld.wu	$a1, $a0, 36
	ld.wu	$a2, $s4, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s4, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s4, 36
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB1_279
# %bb.278:                              # %cond.false671.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a1, 16
	ld.d	$a3, $s4, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	b	.LBB1_280
.LBB1_279:                              #   in Loop: Header=BB1_272 Depth=1
	move	$a1, $zero
.LBB1_280:                              # %cond.end695.i
                                        #   in Loop: Header=BB1_272 Depth=1
	st.d	$a1, $s2, 0
	st.d	$s4, $fp, 0
	st.d	$a1, $s6, 0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_282
# %bb.281:                              # %if.else711.i
                                        #   in Loop: Header=BB1_272 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_283
.LBB1_282:                              # %if.then709.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_283:                              # %cond.end766.i
                                        #   in Loop: Header=BB1_272 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_271
# %bb.284:                              # %cond.false775.i
                                        #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_271
.LBB1_285:                              # %if.then825.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_286:                              # %cond.end882.i
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$a4, $s6, 0
	ld.d	$a3, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $a6, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$s5, $s6, 0
	beqz	$a0, .LBB1_288
# %bb.287:                              # %cond.false891.i
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_288:                              # %if.end917.i
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $s4, 0
	addi.d	$a1, $a0, -43
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB1_294
# %bb.289:                              # %if.then932.i
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	.p2align	4, , 16
.LBB1_290:                              # %for.cond939.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_290
# %bb.291:                              # %for.cond939.i
	ori	$a1, $zero, 15
	bne	$a2, $a1, .LBB1_296
# %bb.292:                              # %if.end963.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 14
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s3, .LBB1_334
# %bb.293:                              # %if.else977.i
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_335
.LBB1_294:                              # %if.else1613.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_302
# %bb.295:                              # %if.else1627.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_303
.LBB1_296:                              # %if.then956.i
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a2, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 12
.LBB1_297:                              # %if.then1526
	ori	$a3, $zero, 2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s4
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 24
	beq	$a1, $a3, .LBB1_300
# %bb.298:                              # %cond.end1557
	ld.d	$a2, $a3, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	st.d	$a1, $s6, 0
	beqz	$a0, .LBB1_301
# %bb.299:                              # %cond.false1566
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_301
.LBB1_300:                              # %cond.end1557.thread
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	st.d	$zero, $s6, 0
.LBB1_301:                              # %cond.end1590
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	move	$s6, $a0
	b	.LBB1_477
.LBB1_302:                              # %if.then1625.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_303:                              # %cond.end1682.i
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$a4, $s6, 0
	ld.d	$a3, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $a6, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$s5, $s6, 0
	beqz	$s5, .LBB1_375
# %bb.304:                              # %cond.end1682.i
	beqz	$a0, .LBB1_375
# %bb.305:                              # %cond.false1691.i
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_375
.LBB1_306:                              # %if.then1097
	move	$s4, $a2
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 121
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_465
# %bb.307:                              # %if.else1111
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB1_466
.LBB1_308:                              # %land.lhs.true3170
	ld.w	$a2, $s1, 60
	ld.w	$a0, $s6, 68
	add.w	$a3, $a2, $a1
	blt	$a0, $a3, .LBB1_310
# %bb.309:                              # %land.lhs.true3184
	ld.w	$a3, $s6, 72
	bge	$a3, $a2, .LBB1_311
.LBB1_310:                              # %if.then3193
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 60
	move	$s4, $a0
	add.w	$a0, $a2, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a6, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $s6, 64
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 60
	add.d	$a1, $a2, $a1
	st.w	$a1, $s6, 68
	st.w	$a0, $s6, 72
	ld.w	$a1, $s1, 52
.LBB1_311:                              # %if.end3224
	st.w	$a1, $s6, 52
	ld.w	$a2, $s1, 60
	addi.d	$a0, $s6, 52
	addi.d	$a1, $s6, 60
	st.w	$a2, $s6, 60
	move	$a2, $s3
	pcaddu18i	$ra, %call36(EnlargeToConstraint)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_312:                              # %sw.bb7557
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	ld.d	$a3, $sp, 656
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 8
	b	.LBB1_318
.LBB1_313:                              # %sw.bb7599
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 8
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
.LBB1_314:                              # %for.cond7606
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_314
# %bb.315:                              # %for.end7617
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $a0, 48
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.w	$a2, $a0, 56
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a4, $a0, 52
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.w	$a5, $a0, 60
	sub.d	$a0, $a2, $a1
	ori	$a1, $zero, 20
	mul.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	srli.d	$a0, $a0, 1
	st.w	$a0, $s6, 56
	st.w	$a0, $s6, 48
	sub.d	$a0, $a5, $a4
	mul.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 652
	srli.d	$a0, $a0, 1
	st.w	$a0, $s6, 60
	st.w	$a0, $s6, 52
	ori	$a0, $zero, 1
	st.b	$a0, $s6, 41
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 632
	bnez	$a0, .LBB1_320
	b	.LBB1_321
.LBB1_316:                              # %sw.bb7527
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	ld.d	$a3, $sp, 656
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$zero, $s6, 41
	vrepli.b	$vr0, 0
	vst	$vr0, $s6, 48
	b	.LBB1_319
.LBB1_317:                              # %sw.bb7485
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	ld.d	$a3, $sp, 656
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a2, $a0, %pc_lo12(.L.str.38)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 6
.LBB1_318:                              # %sw.bb7485
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 48
	vst	$vr0, $s6, 48
	ori	$a0, $zero, 1
	st.b	$a0, $s6, 41
.LBB1_319:                              # %sw.bb7485
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 632
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_321
.LBB1_320:                              # %if.then7688
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
.LBB1_321:                              # %sw.epilog
	ld.d	$a0, $sp, 656
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_322:
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_573
.LBB1_323:                              # %if.then529
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB1_324:                              # %if.end540
	ori	$a0, $zero, 5
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.h	$a0, $s6, 34
	st.h	$a0, $s2, 34
	ld.wu	$a0, $s6, 36
	ld.wu	$a1, $s2, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s2, 36
	ld.wu	$a1, $s6, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s2, 36
	ld.d	$a0, $s6, 24
	beq	$a0, $s6, .LBB1_326
# %bb.325:                              # %cond.false608
	ld.d	$a1, $s6, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s2, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	b	.LBB1_327
.LBB1_326:                              # %cond.end599.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB1_327:                              # %cond.end632
	ld.d	$a0, $s6, 80
	ld.hu	$a0, $a0, 41
	slli.d	$a0, $a0, 49
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	bltz	$a0, .LBB1_330
# %bb.328:                              # %if.else806
	ld.bu	$a0, $s4, 120
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s3, .LBB1_438
# %bb.329:                              # %if.else820
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $a0, 0
	b	.LBB1_439
.LBB1_330:                              # %if.then639
	ld.bu	$a0, $s6, 40
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s3, .LBB1_441
# %bb.331:                              # %if.else656
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $a0, 0
	b	.LBB1_442
.LBB1_332:                              # %if.then263
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
	ori	$a0, $zero, 135
	b	.LBB1_194
.LBB1_333:
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_573
.LBB1_334:                              # %if.then975.i
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s6, 0
.LBB1_335:                              # %if.end986.i
	ori	$a0, $zero, 14
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.h	$a0, $a3, 34
	st.h	$a0, $s3, 34
	ld.wu	$a0, $a3, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s3, 36
	ld.wu	$a1, $a3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s3, 36
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -1025
	ori	$a1, $a1, 4095
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_337
# %bb.336:                              # %if.else1043.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_338
.LBB1_337:                              # %if.then1041.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_338:                              # %cond.end1098.i
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$fp, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $fp, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s6, 0
	ld.d	$a1, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_340
# %bb.339:                              # %cond.false1107.i
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_340:                              # %cond.end1131.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_342
# %bb.341:                              # %if.else1146.i
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_343
.LBB1_342:                              # %if.then1144.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_343:                              # %cond.end1201.i
	move	$s2, $s0
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s6, 0
	beqz	$s5, .LBB1_346
# %bb.344:                              # %cond.end1201.i
	beqz	$a0, .LBB1_346
# %bb.345:                              # %cond.false1210.i
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_346:                              # %cond.end1234.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 24
.LBB1_347:                              # %for.cond1242.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_347
# %bb.348:                              # %for.cond1242.i
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB1_350
# %bb.349:                              # %if.then1259.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_350:                              # %if.end1261.i
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -130048
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 40
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$s8, $a0, 8
	beq	$s8, $s0, .LBB1_358
# %bb.351:                              # %for.cond1293.preheader.i.preheader
	ori	$a0, $zero, 4
	ori	$a1, $zero, 46
	move	$a2, $s8
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
.LBB1_352:                              # %for.cond1293.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_353 Depth 2
	move	$a4, $a2
.LBB1_353:                              # %for.cond1293.i
                                        #   Parent Loop BB1_352 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 16
	ld.bu	$a3, $a4, 32
	beqz	$a3, .LBB1_353
# %bb.354:                              # %for.cond1293.i
                                        #   in Loop: Header=BB1_352 Depth=1
	addi.d	$a4, $a3, -42
	bltu	$a4, $a0, .LBB1_359
# %bb.355:                              # %for.cond1293.i
                                        #   in Loop: Header=BB1_352 Depth=1
	bne	$a3, $a1, .LBB1_357
# %bb.356:                              # %if.then1310.i
                                        #   in Loop: Header=BB1_352 Depth=1
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bne	$a2, $s0, .LBB1_352
	b	.LBB1_359
.LBB1_357:                              # %for.inc1341.loopexit.i
                                        #   in Loop: Header=BB1_352 Depth=1
	ld.d	$a2, $a2, 8
	bne	$a2, $s0, .LBB1_352
	b	.LBB1_359
.LBB1_358:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
.LBB1_359:                              # %for.end1345.i
	move	$s0, $s2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_375
# %bb.360:                              # %for.cond1359.preheader.i.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s2, $a0, %got_pc_lo12(xx_tmp)
	b	.LBB1_362
.LBB1_361:                              # %cond.end1598.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.wu	$a0, $s3, 40
	addi.d	$a1, $a0, 1
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s3, 40
	ld.d	$s8, $s8, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_375
.LBB1_362:                              # %for.cond1359.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_363 Depth 2
	move	$s5, $s8
	.p2align	4, , 16
.LBB1_363:                              # %for.cond1359.i
                                        #   Parent Loop BB1_362 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_363
# %bb.364:                              # %for.end1370.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 46
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s4, .LBB1_366
# %bb.365:                              # %if.else1384.i
                                        #   in Loop: Header=BB1_362 Depth=1
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_367
.LBB1_366:                              # %if.then1382.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB1_367:                              # %if.end1393.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ori	$a0, $zero, 46
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a0, $s5, 34
	st.h	$a0, $s4, 34
	ld.wu	$a0, $s5, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $s5, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	ld.d	$a0, $s5, 24
	beq	$a0, $s5, .LBB1_369
# %bb.368:                              # %cond.false1470.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.d	$a1, $s5, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s4, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s4, 16
	st.d	$s4, $a1, 24
	b	.LBB1_370
.LBB1_369:                              #   in Loop: Header=BB1_362 Depth=1
	move	$a0, $zero
.LBB1_370:                              # %cond.end1494.i
                                        #   in Loop: Header=BB1_362 Depth=1
	st.d	$a0, $s2, 0
	st.d	$s4, $fp, 0
	st.d	$a0, $s6, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_372
# %bb.371:                              # %if.else1510.i
                                        #   in Loop: Header=BB1_362 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_373
.LBB1_372:                              # %if.then1508.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_373:                              # %cond.end1565.i
                                        #   in Loop: Header=BB1_362 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_361
# %bb.374:                              # %cond.false1574.i
                                        #   in Loop: Header=BB1_362 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_361
.LBB1_375:                              # %if.end1599
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB1_377
# %bb.376:                              # %land.lhs.true1611
	ori	$a0, $zero, 1
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_379
	b	.LBB1_384
.LBB1_377:                              # %lor.lhs.false1605
	ori	$a1, $zero, 1
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	bne	$s0, $a1, .LBB1_384
# %bb.378:                              # %lor.lhs.false1605
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB1_384
.LBB1_379:                              # %if.then1614
	ld.d	$s3, $s6, 8
	.p2align	4, , 16
.LBB1_380:                              # %for.cond1621
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB1_380
# %bb.381:                              # %for.cond1621
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB1_383
# %bb.382:                              # %if.then1638
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_383:                              # %if.end1640
	addi.d	$a2, $sp, 652
	addi.d	$a3, $sp, 656
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SpannerAvailableSpace)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 652
	ld.w	$a1, $sp, 656
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	st.w	$a2, $sp, 120
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 124
	st.w	$a2, $sp, 128
	addi.d	$a1, $sp, 120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 40
	lu12i.w	$a2, 1024
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 40
.LBB1_384:                              # %if.end1646
	sltui	$a1, $s0, 1
	slli.d	$a0, $a1, 3
	ldx.d	$s3, $s6, $a0
	.p2align	4, , 16
.LBB1_385:                              # %for.cond1662
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 16
	ld.bu	$a5, $s3, 32
	beqz	$a5, .LBB1_385
# %bb.386:                              # %for.end1673
	ld.bu	$a0, $fp, 0
	ori	$a3, $zero, 13
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB1_388
# %bb.387:                              # %for.end1673
	ori	$a3, $zero, 45
	beq	$a0, $a3, .LBB1_390
.LBB1_388:                              # %lor.lhs.false1685
	ori	$a3, $zero, 14
	beq	$a5, $a3, .LBB1_392
# %bb.389:                              # %lor.lhs.false1685
	ori	$a3, $zero, 46
	bne	$a0, $a3, .LBB1_392
.LBB1_390:                              # %if.then1697
	bnez	$s0, .LBB1_475
# %bb.391:                              # %if.then1700
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 15
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_475
.LBB1_392:                              # %if.end1716
	addi.d	$a3, $a0, -45
	sltui	$a3, $a3, 1
	addi.d	$a4, $s0, -1
	sltui	$a4, $a4, 1
	and	$a3, $a4, $a3
	bnez	$a3, .LBB1_475
# %bb.393:                              # %if.end1716
	addi.d	$a0, $a0, -46
	sltui	$a0, $a0, 1
	and	$a0, $a1, $a0
	bnez	$a0, .LBB1_475
# %bb.394:                              # %if.else1743
	addi.d	$a0, $a5, -13
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB1_397
# %bb.395:                              # %if.else1773
	ld.wu	$a0, $s3, 40
	srli.d	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	andi	$a4, $a1, 1023
	lu12i.w	$a3, -1024
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a3, $a0, $a3
	bstrins.d	$a3, $a1, 21, 12
	andi	$a0, $a0, 4095
	st.w	$a3, $s3, 40
	bne	$a4, $a0, .LBB1_475
# %bb.396:                              # %if.else1797
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 652
	addi.d	$a3, $sp, 656
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(SpannerAvailableSpace)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s6, 2
	st.w	$zero, $a0, 48
	alsl.d	$a1, $s0, $s3, 2
	ld.w	$a2, $a1, 48
	ld.w	$a1, $a1, 56
	ld.w	$a3, $sp, 652
	add.d	$a1, $a1, $a2
	sub.d	$a1, $a1, $a3
	slli.d	$a2, $a1, 32
	srai.d	$a2, $a2, 63
	andn	$a1, $a1, $a2
	st.w	$a1, $a0, 56
	b	.LBB1_477
.LBB1_397:                              # %if.then1755
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s3, 2
	b	.LBB1_126
.LBB1_398:                              # %if.then2462
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
.LBB1_399:                              # %if.end2473
	ori	$a2, $zero, 17
	st.b	$a2, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	addi.d	$a2, $s6, 88
	st.d	$a1, $s6, 88
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	addi.d	$a0, $s6, 48
	ld.w	$a5, $s6, 76
	addi.d	$a1, $s6, 56
	addi.d	$a2, $s6, 52
	addi.d	$a3, $s6, 60
	pcaddu18i	$ra, %call36(RotateSize)
	jirl	$ra, $ra, 0
	b	.LBB1_477
.LBB1_400:
	move	$s0, $zero
	move	$s1, $zero
.LBB1_401:                              # %for.end7255
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s8, 2
	st.w	$s1, $a0, 48
	st.w	$s0, $a0, 56
	ld.d	$fp, $s8, 8
	st.w	$s1, $sp, 652
	st.w	$s0, $sp, 656
	ori	$s0, $zero, 1
	st.b	$s0, $s8, 41
	beq	$fp, $s8, .LBB1_411
# %bb.402:                              # %for.cond7276.preheader.preheader
	addi.d	$s1, $a0, 48
	addi.d	$s5, $a0, 56
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s3, $a0, %pc_lo12(.L.str.29)
	ori	$s7, $zero, 3
	b	.LBB1_404
.LBB1_403:                              # %for.inc7374
                                        #   in Loop: Header=BB1_404 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $s8, .LBB1_410
.LBB1_404:                              # %for.cond7276.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_405 Depth 2
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_405:                              # %for.cond7276
                                        #   Parent Loop BB1_404 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_405
# %bb.406:                              # %for.cond7276
                                        #   in Loop: Header=BB1_404 Depth=1
	bne	$a0, $s0, .LBB1_408
# %bb.407:                              # %if.then7293
                                        #   in Loop: Header=BB1_404 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -43
	bltu	$s7, $a0, .LBB1_403
	b	.LBB1_409
.LBB1_408:                              # %if.end7295
                                        #   in Loop: Header=BB1_404 Depth=1
	addi.d	$a0, $a0, -43
	bltu	$s7, $a0, .LBB1_403
.LBB1_409:                              # %if.then7319
                                        #   in Loop: Header=BB1_404 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a2, $a0, 48
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 0
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 56
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $s5, 0
	b	.LBB1_403
.LBB1_410:
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$s6, $s8
	b	.LBB1_477
.LBB1_411:
	move	$s6, $s8
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_477
.LBB1_412:
	move	$fp, $zero
	move	$s1, $zero
.LBB1_413:                              # %for.end7038
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s2, 2
	st.w	$s1, $a0, 48
	st.w	$fp, $a0, 56
	ld.d	$s6, $s2, 8
	addi.d	$a2, $a0, 48
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 56
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.b	$s7, $s2, 41
	beq	$s6, $s2, .LBB1_423
# %bb.414:                              # %for.cond7059.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s8, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	ori	$s0, $zero, 46
	ori	$s5, $zero, 0
	lu32i.d	$s5, 29696
	b	.LBB1_416
.LBB1_415:                              # %for.inc7133
                                        #   in Loop: Header=BB1_416 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s2, .LBB1_423
.LBB1_416:                              # %for.cond7059.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_417 Depth 2
	move	$s4, $s6
	.p2align	4, , 16
.LBB1_417:                              # %for.cond7059
                                        #   Parent Loop BB1_416 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_417
# %bb.418:                              # %for.cond7059
                                        #   in Loop: Header=BB1_416 Depth=1
	bne	$a0, $s7, .LBB1_420
# %bb.419:                              # %if.then7076
                                        #   in Loop: Header=BB1_416 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s8
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
.LBB1_420:                              # %if.end7078
                                        #   in Loop: Header=BB1_416 Depth=1
	bltu	$s0, $a0, .LBB1_415
# %bb.421:                              # %if.end7078
                                        #   in Loop: Header=BB1_416 Depth=1
	sll.d	$a0, $s7, $a0
	and	$a0, $a0, $s5
	beqz	$a0, .LBB1_415
# %bb.422:                              # %if.then7102
                                        #   in Loop: Header=BB1_416 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	b	.LBB1_415
.LBB1_423:                              # %for.end7137
	st.w	$s1, $sp, 652
	st.w	$fp, $sp, 656
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$fp, $a0, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$s6, $s2
	b	.LBB1_477
.LBB1_424:                              # %if.then1247
	move	$s4, $a2
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 123
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	beqz	$s2, .LBB1_492
# %bb.425:                              # %if.else1261
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 123
	b	.LBB1_467
.LBB1_426:                              # %if.end2938.loopexit
	move	$s1, $zero
.LBB1_427:                              # %if.end2938
	ld.d	$s0, $s6, 0
	.p2align	4, , 16
.LBB1_428:                              # %for.cond2945
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB1_428
# %bb.429:                              # %while.cond2957.preheader
	ori	$a0, $zero, 17
.LBB1_430:                              # %while.cond2957
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_432 Depth 2
	bne	$a1, $a0, .LBB1_433
# %bb.431:                              # %while.body2963
                                        #   in Loop: Header=BB1_430 Depth=1
	ld.d	$s0, $s0, 0
	.p2align	4, , 16
.LBB1_432:                              # %for.cond2970
                                        #   Parent Loop BB1_430 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB1_432
	b	.LBB1_430
.LBB1_433:                              # %while.cond2957
	addi.d	$a0, $a1, -11
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB1_437
# %bb.434:                              # %if.end3000
	addi.d	$s2, $s0, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	ld.bu	$a1, $a0, -1
	beqz	$a1, .LBB1_437
# %bb.435:                              # %if.end3000
	beqz	$s1, .LBB1_437
# %bb.436:                              # %if.then3008
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KernLength)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $fp
	st.w	$a0, $s6, 56
.LBB1_437:                              # %sw.epilog7697.loopexit2293
	move	$s0, $s3
	b	.LBB1_477
.LBB1_438:                              # %if.then818
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s3, $a0, 0
.LBB1_439:                              # %if.end829
	ori	$a0, $zero, 120
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 0
	ld.bu	$a2, $s4, 0
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	move	$s8, $s6
	beqz	$a0, .LBB1_446
# %bb.440:                              # %if.else857
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_447
.LBB1_441:                              # %if.then654
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s3, $a0, 0
.LBB1_442:                              # %if.end665
	ld.bu	$a2, $s6, 40
	st.b	$a2, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	st.d	$s2, $s3, 88
	ld.d	$a1, $s6, 8
.LBB1_443:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB1_443
# %bb.444:                              # %for.end
	ld.d	$a0, $s6, 88
	pcaddu18i	$ra, %call36(CrossMake)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s4, 0
	st.d	$a0, $s3, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_451
# %bb.445:                              # %if.else715
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_452
.LBB1_446:                              # %if.then855
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_447:                              # %cond.end912
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
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $s7, 0
	ld.d	$a1, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s0, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s8, $s7, 0
	beqz	$a0, .LBB1_449
# %bb.448:                              # %cond.false921
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s0, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_449:                              # %cond.end945
	ld.bu	$a2, $s4, 0
	st.d	$s2, $s3, 88
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_455
# %bb.450:                              # %if.else961
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_456
.LBB1_451:                              # %if.then713
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_452:                              # %if.end724
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
	st.d	$a0, $a1, 0
	ld.d	$a4, $s5, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_459
# %bb.453:                              # %cond.end770
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s3, $a3, 0
	beqz	$a2, .LBB1_461
# %bb.454:                              # %cond.end770.cond.false779_crit_edge
	ld.d	$a0, $a2, 16
	b	.LBB1_460
.LBB1_455:                              # %if.then959
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
.LBB1_456:                              # %if.end970
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s7, 0
	beqz	$a1, .LBB1_462
# %bb.457:                              # %cond.end1016
	ld.d	$a2, $a1, 0
	st.d	$a2, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s5, 0
	st.d	$s3, $s7, 0
	beqz	$a1, .LBB1_464
# %bb.458:                              # %cond.end1016.cond.false1025_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB1_463
.LBB1_459:                              # %cond.end770.thread
	st.d	$a0, $a1, 0
	st.d	$s3, $a3, 0
	move	$a2, $a0
.LBB1_460:                              # %cond.false779
	ld.d	$a1, $s3, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s3, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s3, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_461:                              # %cond.end803
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_464
.LBB1_462:                              # %cond.end1016.thread
	st.d	$a0, $s5, 0
	st.d	$s3, $s7, 0
	move	$a1, $a0
.LBB1_463:                              # %cond.false1025
	ld.d	$a2, $s3, 16
	st.d	$a0, $s3, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s0, 0
	st.d	$s3, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_464:                              # %if.end1051
	st.w	$zero, $s2, 56
	st.w	$zero, $s2, 48
	move	$s6, $s2
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $s0, $s2, 2
	b	.LBB1_476
.LBB1_465:                              # %if.then1109
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB1_466:                              # %if.end1120
	ori	$a0, $zero, 121
.LBB1_467:                              # %if.end1120
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s1, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s6, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB1_469
# %bb.468:                              # %if.else1149
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_470
.LBB1_469:                              # %if.then1147
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_470:                              # %if.end1158
	move	$s0, $s3
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
	st.d	$a0, $a1, 0
	ld.d	$a4, $s4, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_473
# %bb.471:                              # %cond.end1204
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_475
# %bb.472:                              # %cond.end1204.cond.false1213_crit_edge
	ld.d	$a0, $a2, 16
	b	.LBB1_474
.LBB1_473:                              # %cond.end1204.thread
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_474:                              # %cond.false1213
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_475:                              # %if.end242
	alsl.d	$a0, $s0, $s6, 2
.LBB1_476:                              # %sw.epilog7697
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
.LBB1_477:                              # %sw.epilog7697
	alsl.d	$a0, $s0, $s6, 2
	ld.w	$a0, $a0, 48
	bltz	$a0, .LBB1_480
# %bb.478:                              # %if.end7706
	alsl.d	$a0, $s0, $s6, 2
	ld.w	$a0, $a0, 56
	bltz	$a0, .LBB1_481
.LBB1_479:                              # %if.end7715
	move	$a0, $s6
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.LBB1_480:                              # %if.then7704
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a5, $a0, %pc_lo12(.L.str.44)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s6, 2
	ld.w	$a0, $a0, 56
	bgez	$a0, .LBB1_479
.LBB1_481:                              # %if.then7713
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
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
	b	.LBB1_479
.LBB1_482:                              # %if.then2679
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB1_483:                              # %if.end2690
	ori	$a0, $zero, 136
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s1, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s6, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB1_485
# %bb.484:                              # %if.else2719
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_486
.LBB1_485:                              # %if.then2717
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_486:                              # %if.end2728
	move	$s0, $s3
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
	st.d	$a0, $a1, 0
	ld.d	$a4, $s4, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_489
# %bb.487:                              # %cond.end2774
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_491
# %bb.488:                              # %cond.end2774.cond.false2783_crit_edge
	ld.d	$a0, $a2, 16
	b	.LBB1_490
.LBB1_489:                              # %cond.end2774.thread
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_490:                              # %cond.false2783
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_491:                              # %cond.end2807
	ld.hu	$a0, $s6, 42
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	st.h	$a0, $s6, 42
	b	.LBB1_477
.LBB1_492:                              # %if.then1259
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
	ori	$a0, $zero, 123
	b	.LBB1_467
.LBB1_493:                              # %if.then3814
	beqz	$s4, .LBB1_495
# %bb.494:
	move	$a0, $s4
	b	.LBB1_497
.LBB1_495:                              # %if.then3817
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_496:                              # %for.end3826
	move	$a0, $zero
.LBB1_497:                              # %for.end3826
	beq	$s1, $s6, .LBB1_567
# %bb.498:                              # %while.body3830.lr.ph
	ori	$s7, $zero, 9
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$s4, $zero, 90
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$s2, $zero
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2047
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, -262145
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_502
.LBB1_499:                              # %if.then5159
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_500:                              #   in Loop: Header=BB1_502 Depth=1
	move	$a0, $zero
.LBB1_501:                              # %for.end5168
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beq	$s1, $s6, .LBB1_564
.LBB1_502:                              # %while.body3830
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_554 Depth 2
                                        #       Child Loop BB1_555 Depth 3
	ld.hu	$a1, $a0, 44
	srli.d	$a2, $a1, 13
	beqz	$a2, .LBB1_549
# %bb.503:                              # %land.lhs.true3837
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.bu	$a2, $a0, 42
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_507
.LBB1_504:                              # %if.then3855
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bnez	$s2, .LBB1_513
# %bb.505:                              # %if.then3858
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 19
	slli.d	$a1, $a2, 3
	ldx.d	$s2, $fp, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$s2, .LBB1_509
# %bb.506:                              # %if.else3872
                                        #   in Loop: Header=BB1_502 Depth=1
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s2, $a2, 0
	ld.d	$a2, $s2, 0
	st.d	$a2, $a1, 0
	b	.LBB1_510
.LBB1_507:                              # %lor.lhs.false3842
                                        #   in Loop: Header=BB1_502 Depth=1
	bstrpick.d	$a1, $a1, 12, 10
	slli.d	$a1, $a1, 10
	ori	$a2, $zero, 2048
	bne	$a1, $a2, .LBB1_549
# %bb.508:                              # %land.lhs.true3850
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.h	$a1, $a0, 46
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_504
	b	.LBB1_549
.LBB1_509:                              # %if.then3870
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB1_510:                              # %if.end3881
                                        #   in Loop: Header=BB1_502 Depth=1
	ori	$a1, $zero, 19
	st.b	$a1, $s2, 32
	st.d	$s2, $s2, 24
	ld.hu	$a1, $s2, 42
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	st.h	$a1, $s2, 42
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $s6, 24
	st.d	$s6, $a1, 0
	beq	$a2, $s6, .LBB1_512
# %bb.511:                              # %cond.false3937
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a3, $s6, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a3, %got_pc_hi20(xx_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $a2, 16
	st.d	$s2, $a3, 0
	st.d	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s2, 16
	st.d	$a4, $a1, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a4, $s2, 16
	st.d	$s2, $a4, 24
	b	.LBB1_513
.LBB1_512:                              # %cond.end3928.thread
                                        #   in Loop: Header=BB1_502 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$s2, $a2, 0
	st.d	$zero, $a1, 0
.LBB1_513:                              # %if.end3963
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 17
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $fp, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$s5, .LBB1_515
# %bb.514:                              # %if.else3977
                                        #   in Loop: Header=BB1_502 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s5, $a2, 0
	ld.d	$a2, $s5, 0
	stx.d	$a2, $fp, $a1
	b	.LBB1_516
.LBB1_515:                              # %if.then3975
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s5, $a1, 0
.LBB1_516:                              # %if.end3986
                                        #   in Loop: Header=BB1_502 Depth=1
	ori	$a1, $zero, 17
	st.b	$a1, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.d	$fp, $s6, 8
	ld.d	$s0, $a0, 24
	beq	$fp, $s0, .LBB1_522
# %bb.517:                              # %if.then4012
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB1_519
# %bb.518:                              # %if.then4018
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB1_519:                              # %if.end4020
                                        #   in Loop: Header=BB1_502 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$fp, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s0, $a2, 0
	beqz	$s0, .LBB1_521
# %bb.520:                              # %cond.false4028
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a3, $s0, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a5, $a6, 8
	st.d	$a4, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a4, 8
.LBB1_521:                              # %cond.false4061
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$fp, $a1, 0
	st.d	$s5, $a2, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s5, 0
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 8
.LBB1_522:                              # %if.end4087
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.hu	$a2, $s6, 64
	ld.h	$a1, $s5, 64
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a1, $a2, 7, 7
	st.h	$a1, $s5, 64
	ld.hu	$a2, $s6, 64
	bstrpick.d	$a2, $a2, 8, 8
	move	$a3, $a1
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s6, 64
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s6, 64
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s6, 64
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 64
	ld.h	$a2, $s6, 66
	st.h	$a2, $s5, 66
	ld.bu	$a2, $s6, 68
	ld.b	$a3, $s5, 68
	andi	$a2, $a2, 3
	bstrins.d	$a3, $a2, 1, 0
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s6, 68
	bstrpick.d	$a2, $a2, 3, 2
	bstrins.d	$a3, $a2, 3, 2
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s6, 68
	andi	$a3, $a3, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$a3, $a2, 6, 4
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s6, 64
	bstrpick.d	$a2, $a2, 3, 3
	bstrins.d	$a1, $a2, 3, 3
	st.b	$a1, $s5, 64
	ld.hu	$a2, $s6, 68
	ld.h	$a3, $s5, 68
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s6, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s6, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s6, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s6, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 68
	ld.h	$a2, $s6, 70
	st.h	$a2, $s5, 70
	ld.wu	$a2, $s6, 76
	ld.w	$a3, $s5, 76
	andi	$a2, $a2, 4095
	bstrins.d	$a3, $a2, 11, 0
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s6, 76
	bstrpick.d	$a2, $a2, 21, 12
	bstrins.d	$a3, $a2, 21, 12
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s6, 76
	bstrpick.d	$a2, $a2, 23, 22
	bstrins.d	$a3, $a2, 23, 22
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s6, 76
	bstrpick.d	$a2, $a2, 29, 24
	bstrins.d	$a3, $a2, 29, 24
	st.w	$a3, $s5, 76
	ld.w	$a2, $s6, 76
	srli.d	$a2, $a2, 31
	bstrins.d	$a3, $a2, 63, 31
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s6, 76
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	and	$a3, $a3, $a4
	srli.d	$a2, $a2, 30
	bstrins.d	$a3, $a2, 30, 30
	st.w	$a3, $s5, 76
	ld.bu	$a2, $s6, 64
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s6, 64
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a2, $a1, 1, 1
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s6, 64
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a2, $a1, 2, 2
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s6, 64
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s5, 64
	ld.h	$a1, $s6, 72
	st.h	$a1, $s5, 72
	ld.h	$a1, $s6, 74
	ld.hu	$a2, $s5, 42
	st.h	$a1, $s5, 74
	ld.b	$a1, $s6, 64
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	and	$a3, $a2, $a3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 54, 2
	bstrins.d	$a3, $a1, 11, 11
	st.h	$a3, $s5, 42
	slli.d	$a3, $a2, 3
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $s0, $a3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB1_524
# %bb.523:                              # %if.else4440
                                        #   in Loop: Header=BB1_502 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s0, $a3
	b	.LBB1_525
.LBB1_524:                              # %if.then4438
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB1_525:                              # %cond.end4495
                                        #   in Loop: Header=BB1_502 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s8, $a2, %got_pc_lo12(xx_link)
	st.d	$a1, $s8, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$fp, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a2, %got_pc_lo12(zz_hold)
	st.d	$s2, $s4, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$s6, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s6, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 0
	beqz	$a1, .LBB1_527
# %bb.526:                              # %cond.false4504
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_527:                              # %cond.end4528
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.bu	$a1, $a0, 41
	beqz	$a1, .LBB1_544
# %bb.528:                              # %if.then4534
                                        #   in Loop: Header=BB1_502 Depth=1
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.wu	$a0, $a2, 76
	ld.w	$a1, $s5, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s5, 40
	ld.wu	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s5, 40
	ld.wu	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 22, 22
	st.w	$a1, $s5, 40
	ld.w	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 29, 24
	bstrins.d	$a1, $a0, 28, 23
	st.w	$a1, $s5, 40
	ld.bu	$a0, $a2, 68
	andi	$a0, $a0, 3
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 31
	bstrins.d	$a0, $a1, 28, 0
	lu12i.w	$a1, 131072
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	st.w	$a1, $s5, 40
	st.w	$zero, $s5, 56
	st.w	$zero, $s5, 48
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $s0, $a2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	beqz	$a1, .LBB1_530
# %bb.529:                              # %if.else4615
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $s0, $a2
	b	.LBB1_531
.LBB1_530:                              # %if.then4613
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB1_531:                              # %if.end4624
                                        #   in Loop: Header=BB1_502 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_533
# %bb.532:                              # %cond.end4673
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s6, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 0
	bnez	$a1, .LBB1_534
	b	.LBB1_535
.LBB1_533:                              # %cond.end4673.thread
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$s5, $s4, 0
.LBB1_534:                              # %cond.false4682
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_535:                              # %cond.end4706
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 1
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $s0, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$s5, .LBB1_537
# %bb.536:                              # %if.else4721
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$s5, $s4, 0
	ld.d	$a2, $s5, 0
	stx.d	$a2, $s0, $a1
	b	.LBB1_538
.LBB1_537:                              # %if.then4719
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s5, $s4, 0
.LBB1_538:                              # %if.end4730
                                        #   in Loop: Header=BB1_502 Depth=1
	st.b	$s3, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.b	$a1, $a0, 41
	st.b	$a1, $s5, 41
	st.b	$zero, $s5, 42
	ld.wu	$a1, $s5, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a2, $a1, $a2
	lu12i.w	$a3, 131072
	or	$a2, $a2, $a3
	st.w	$a2, $s5, 40
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.hu	$a2, $a4, 68
	ld.h	$a3, $s5, 44
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 44
	ld.h	$a3, $a4, 70
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 15, 8
	mul.d	$a1, $a3, $a1
	st.h	$a1, $s5, 46
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s0, $a3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB1_540
# %bb.539:                              # %if.else4845
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$a1, $s4, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s0, $a3
	b	.LBB1_541
.LBB1_540:                              # %if.then4843
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB1_541:                              # %if.end4854
                                        #   in Loop: Header=BB1_502 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 8
	ld.d	$a2, $a2, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$a2, $s4, 0
	beqz	$a2, .LBB1_543
# %bb.542:                              # %cond.end4906
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s6, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	beqz	$a1, .LBB1_544
.LBB1_543:                              # %cond.false4915
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_544:                              # %if.end4941
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a1, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $s4, 0
	beq	$a2, $a1, .LBB1_546
# %bb.545:                              # %cond.end4973
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s4, 0
	ld.d	$a1, $fp, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a2, 8
	st.d	$a1, $fp, 0
	st.d	$s2, $s4, 0
	bnez	$a1, .LBB1_547
	b	.LBB1_548
.LBB1_546:                              # %cond.end4973.thread
                                        #   in Loop: Header=BB1_502 Depth=1
	st.d	$a1, $fp, 0
	st.d	$s2, $s4, 0
.LBB1_547:                              # %cond.false4982
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$a2, $s2, 0
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s6, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a4, 8
.LBB1_548:                              # %cond.end5006
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.hu	$a1, $s6, 64
	ld.h	$a2, $a0, 44
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s6, 64
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s6, 64
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s6, 64
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s6, 64
	srli.d	$a1, $a1, 13
	ld.bu	$a3, $a0, 42
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $a0, 44
	ld.h	$a1, $s6, 66
	sltu	$a2, $s3, $a3
	masknez	$a4, $s3, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	mul.d	$a1, $a1, $a2
	st.h	$a1, $a0, 46
	ori	$s4, $zero, 90
.LBB1_549:                              # %if.end5094
                                        #   in Loop: Header=BB1_502 Depth=1
	ld.d	$s1, $s1, 8
	beq	$s1, $s6, .LBB1_500
# %bb.550:                              # %for.cond5105.preheader.preheader
                                        #   in Loop: Header=BB1_502 Depth=1
	move	$s0, $zero
	ori	$fp, $zero, 1
	b	.LBB1_554
.LBB1_551:                              # %cond.true5139
                                        #   in Loop: Header=BB1_554 Depth=2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_562
.LBB1_552:                              #   in Loop: Header=BB1_554 Depth=2
	move	$a0, $s0
.LBB1_553:                              # %for.inc5164
                                        #   in Loop: Header=BB1_554 Depth=2
	ld.d	$s1, $s1, 8
	move	$s0, $a0
	beq	$s1, $s6, .LBB1_501
.LBB1_554:                              # %for.cond5105.preheader
                                        #   Parent Loop BB1_502 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_555 Depth 3
	move	$a0, $s1
	.p2align	4, , 16
.LBB1_555:                              # %for.cond5105
                                        #   Parent Loop BB1_502 Depth=1
                                        #     Parent Loop BB1_554 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_555
# %bb.556:                              # %for.cond5105
                                        #   in Loop: Header=BB1_554 Depth=2
	beq	$a1, $s7, .LBB1_551
# %bb.557:                              # %for.cond5105
                                        #   in Loop: Header=BB1_554 Depth=2
	bne	$a1, $s3, .LBB1_560
# %bb.558:                              # %if.then5122
                                        #   in Loop: Header=BB1_554 Depth=2
	beqz	$fp, .LBB1_561
# %bb.559:                              # %land.rhs5124
                                        #   in Loop: Header=BB1_554 Depth=2
	ld.hu	$a1, $a0, 44
	bstrpick.d	$fp, $a1, 9, 9
	b	.LBB1_553
.LBB1_560:                              # %cond.false5142
                                        #   in Loop: Header=BB1_554 Depth=2
	addi.d	$a0, $a1, -9
	bltu	$s4, $a0, .LBB1_552
	b	.LBB1_562
.LBB1_561:                              #   in Loop: Header=BB1_554 Depth=2
	move	$fp, $zero
	b	.LBB1_553
.LBB1_562:                              # %if.then5156
                                        #   in Loop: Header=BB1_502 Depth=1
	beqz	$s0, .LBB1_499
# %bb.563:                              #   in Loop: Header=BB1_502 Depth=1
	move	$a0, $s0
	b	.LBB1_501
.LBB1_564:                              # %while.end5169
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beqz	$s2, .LBB1_573
# %bb.565:                              # %if.then5172
	move	$fp, $a2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB1_568
# %bb.566:                              # %if.else5186
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_569
.LBB1_567:
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_573
.LBB1_568:                              # %if.then5184
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_569:                              # %cond.end5241
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
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
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
	st.d	$s6, $a4, 0
	beqz	$s6, .LBB1_572
# %bb.570:                              # %cond.end5241
	beqz	$a0, .LBB1_572
# %bb.571:                              # %cond.false5250
	ld.d	$a2, $s6, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s6, 16
	st.d	$s6, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_572:                              # %sw.bb5279
	move	$s6, $s2
	move	$a2, $fp
.LBB1_573:                              # %sw.bb5279
	ld.bu	$a0, $s6, 32
	addi.d	$a1, $s0, -1
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -19
	sltu	$a0, $zero, $a0
	xor	$a0, $a1, $a0
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_670
# %bb.574:                              # %if.then5289
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.hu	$a0, $s6, 42
	ld.d	$s7, $s6, 8
	lu12i.w	$a2, 15
	ori	$a1, $a2, 3967
	and	$a0, $a0, $a1
	st.h	$a0, $s6, 42
	beq	$s7, $s6, .LBB1_715
# %bb.575:                              # %for.cond5304.preheader.lr.ph
	ori	$s4, $zero, 19
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s5, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s1, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a0, %got_pc_lo12(zz_tmp)
	move	$s3, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$a0, $a2, 3328
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -393217
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 14
	ori	$a0, $a0, 1023
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_578
.LBB1_576:                              #   in Loop: Header=BB1_578 Depth=1
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_577:                              # %for.inc6440
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$s7, $s7, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB1_709
.LBB1_578:                              # %for.cond5304.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_579 Depth 2
	move	$s2, $s7
	.p2align	4, , 16
.LBB1_579:                              # %for.cond5304
                                        #   Parent Loop BB1_578 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_579
# %bb.580:                              # %for.end5315
                                        #   in Loop: Header=BB1_578 Depth=1
	addi.d	$a1, $a0, -119
	bltu	$s4, $a1, .LBB1_587
# %bb.581:                              # %if.then5327
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_577
# %bb.582:                              # %if.then5330
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$s7, $s7, 0
	ld.d	$a0, $s7, 8
	ld.d	$a1, $a0, 8
	st.d	$a0, $s5, 0
	st.d	$a0, $s6, 0
	beq	$a1, $a0, .LBB1_584
# %bb.583:                              # %cond.false5343
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a1, 8
.LBB1_584:                              # %cond.end5365
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_577
# %bb.585:                              # %cond.end5365
                                        #   in Loop: Header=BB1_578 Depth=1
	beqz	$a0, .LBB1_577
# %bb.586:                              # %cond.false5374
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
	b	.LBB1_577
	.p2align	4, , 16
.LBB1_587:                              # %if.else5401
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a1, $a1, 32
	bne	$a0, $a1, .LBB1_595
# %bb.588:                              # %if.then5410
                                        #   in Loop: Header=BB1_578 Depth=1
	move	$s4, $s0
	ld.d	$fp, $s2, 8
	ld.d	$s7, $s7, 0
	beq	$fp, $s2, .LBB1_593
# %bb.589:                              # %if.then5425
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.bu	$a0, $fp, 32
	ld.d	$s0, $s7, 8
	beqz	$a0, .LBB1_591
# %bb.590:                              # %if.then5431
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_591:                              # %cond.end5465
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$fp, $s1, 0
	st.d	$s2, $s6, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s1, 0
	st.d	$s0, $s6, 0
	beqz	$s0, .LBB1_593
# %bb.592:                              # %cond.false5474
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
.LBB1_593:                              # %if.end5500
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s5, 0
	beq	$a2, $a0, .LBB1_613
# %bb.594:                              # %cond.false5510
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $s1, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_614
.LBB1_595:                              # %if.else5602
                                        #   in Loop: Header=BB1_578 Depth=1
	addi.d	$a2, $a0, -11
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB1_606
# %bb.596:                              # %if.then5621
                                        #   in Loop: Header=BB1_578 Depth=1
	bnez	$s0, .LBB1_600
# %bb.597:                              # %if.then5624
                                        #   in Loop: Header=BB1_578 Depth=1
	beqz	$s3, .LBB1_599
# %bb.598:                              # %land.lhs.true5627
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 46
	beqz	$a0, .LBB1_630
.LBB1_599:                              # %if.end6256
                                        #   in Loop: Header=BB1_578 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
.LBB1_600:                              # %if.end6260
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB1_608
.LBB1_601:                              # %if.then6272
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_618
# %bb.602:                              # %land.lhs.true6275
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.hu	$a0, $a0, 44
	andi	$a1, $a0, 256
	addi.d	$s2, $s2, 32
	beqz	$a1, .LBB1_604
# %bb.603:                              # %if.then6282
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a2, 44
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3839
	and	$a0, $a0, $a1
	st.h	$a0, $a2, 44
.LBB1_604:                              # %land.lhs.true6292
                                        #   in Loop: Header=BB1_578 Depth=1
	bstrpick.d	$a0, $a0, 12, 10
	slli.d	$a0, $a0, 10
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_577
# %bb.605:                              # %if.then6300
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	ori	$a5, $zero, 119
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a1, 44
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.d	$a0, $a0, 1024
	st.h	$a0, $a1, 44
	st.h	$zero, $a1, 46
	b	.LBB1_577
.LBB1_606:                              # %if.else5602
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_576
# %bb.607:                              # %if.else6258
                                        #   in Loop: Header=BB1_578 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 6
	bgeu	$a1, $a0, .LBB1_601
.LBB1_608:                              # %if.else6310
                                        #   in Loop: Header=BB1_578 Depth=1
	beqz	$s3, .LBB1_619
# %bb.609:                              # %land.lhs.true6335
                                        #   in Loop: Header=BB1_578 Depth=1
	alsl.d	$a0, $s0, $s3, 2
	ld.w	$a0, $a0, 56
	alsl.d	$fp, $s0, $s2, 2
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 56
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s4, $s3, 44
	move	$a3, $s4
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s3, 44
	srli.d	$a2, $a1, 13
	move	$s3, $a0
	bnez	$a2, .LBB1_611
# %bb.610:                              # %if.then6342
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s4, 0
.LBB1_611:                              # %if.end6344
                                        #   in Loop: Header=BB1_578 Depth=1
	bstrpick.d	$a0, $a1, 15, 10
	slli.d	$a0, $a0, 10
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB1_620
# %bb.612:                              # %if.then6359
                                        #   in Loop: Header=BB1_578 Depth=1
	addi.d	$a0, $fp, 48
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 46
	ld.w	$a0, $a0, 0
	ld.w	$a3, $sp, 656
	add.w	$a0, $a0, $a2
	add.w	$a2, $a3, $s3
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$fp, $a0, $a2
	b	.LBB1_621
.LBB1_613:                              #   in Loop: Header=BB1_578 Depth=1
	move	$a2, $zero
.LBB1_614:                              # %cond.end5532
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s6, 0
	move	$s0, $s4
	beq	$a3, $a0, .LBB1_616
# %bb.615:                              # %cond.false5540
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a3, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s5, 0
	st.d	$a2, $a2, 8
.LBB1_616:                              # %cond.end5562
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$s4, $zero, 19
	ld.bu	$a2, $a0, 32
	st.d	$a0, $s6, 0
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
	ld.w	$a2, $a3, 0
	ld.d	$a3, $s6, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_577
# %bb.617:                              # %if.then5599
                                        #   in Loop: Header=BB1_578 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_577
.LBB1_618:                              #   in Loop: Header=BB1_578 Depth=1
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB1_577
.LBB1_619:                              # %if.then6313
                                        #   in Loop: Header=BB1_578 Depth=1
	alsl.d	$a0, $s0, $s2, 2
	ld.w	$a0, $a0, 48
	b	.LBB1_628
.LBB1_620:                              # %if.else6384
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.w	$a0, $sp, 656
	add.d	$fp, $a0, $s3
.LBB1_621:                              # %if.end6386
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$s4, $zero, 19
	bstrpick.d	$a0, $a1, 12, 10
	slli.d	$a0, $a0, 10
	st.w	$fp, $sp, 656
	ori	$a2, $zero, 2048
	bne	$a0, $a2, .LBB1_623
# %bb.622:                              # %if.end6401.thread
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 46
	lu12i.w	$a2, 1
	slt	$a0, $a2, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_626
.LBB1_623:                              # %if.end6401
                                        #   in Loop: Header=BB1_578 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3328
	and	$a0, $a1, $a0
	ori	$a2, $zero, 3328
	bne	$a0, $a2, .LBB1_626
# %bb.624:                              # %land.lhs.true6416
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a0, $s3, 46
	blez	$a0, .LBB1_626
# %bb.625:                              # %if.then6422
                                        #   in Loop: Header=BB1_578 Depth=1
	addi.d	$a4, $s3, 32
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s3, 44
.LBB1_626:                              # %if.end6425
                                        #   in Loop: Header=BB1_578 Depth=1
	andi	$a0, $a1, 256
	beqz	$a0, .LBB1_629
# %bb.627:                              # %if.then6432
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.w	$a0, $sp, 652
	add.d	$a0, $a0, $fp
.LBB1_628:                              # %for.inc6440
                                        #   in Loop: Header=BB1_578 Depth=1
	st.w	$a0, $sp, 652
	st.w	$zero, $sp, 656
.LBB1_629:                              # %for.inc6440
                                        #   in Loop: Header=BB1_578 Depth=1
	move	$s3, $s2
	b	.LBB1_577
.LBB1_630:                              # %land.lhs.true5633
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$a0, $zero, 17
	bne	$a1, $a0, .LBB1_599
# %bb.631:                              # %land.lhs.true5633
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 44
	andi	$a1, $a0, 128
	beqz	$a1, .LBB1_599
# %bb.632:                              # %land.lhs.true5646
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.bu	$fp, $s3, 32
	addi.d	$a1, $fp, -11
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB1_599
# %bb.633:                              # %land.lhs.true5658
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_599
# %bb.634:                              # %land.lhs.true5658
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a1, 42
	ld.bu	$a1, $a1, 41
	or	$a0, $a1, $a0
	bnez	$a0, .LBB1_599
# %bb.635:                              # %land.lhs.true5690
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.w	$a0, $s3, 40
	ld.w	$a1, $s2, 40
	xor	$a0, $a1, $a0
	slli.d	$a0, $a0, 33
	bnez	$a0, .LBB1_599
# %bb.636:                              # %land.lhs.true5743
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	bne	$a0, $s7, .LBB1_599
# %bb.637:                              # %if.then5755
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 64
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s2, 64
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s4
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB1_639
# %bb.638:                              # %if.then5765
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	addi.d	$fp, $s3, 32
	move	$a4, $fp
	addi.d	$a5, $s3, 64
	move	$a6, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$fp, $fp, 0
.LBB1_639:                              # %if.end5772
                                        #   in Loop: Header=BB1_578 Depth=1
	ori	$a0, $zero, 12
	beq	$fp, $a0, .LBB1_641
# %bb.640:                              # %lor.rhs
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 11
.LBB1_641:                              # %lor.end
                                        #   in Loop: Header=BB1_578 Depth=1
	addi.d	$a1, $s3, 64
	move	$a2, $s0
	addi.d	$a3, $s3, 32
	pcaddu18i	$ra, %call36(MakeWordTwo)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.wu	$a0, $s3, 40
	ld.w	$a1, $s2, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 22, 22
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 28, 23
	bstrins.d	$a1, $a0, 28, 23
	st.w	$a1, $s2, 40
	ld.w	$a0, $s3, 40
	srli.d	$a0, $a0, 31
	bstrins.d	$a1, $a0, 63, 31
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	srli.d	$a0, $a0, 29
	bstrins.d	$a1, $a0, 30, 29
	st.w	$a1, $s2, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	move	$s0, $a0
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s4, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s4, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$fp, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $fp, $a1
	beqz	$a0, .LBB1_643
# %bb.642:                              # %if.else5860
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $fp, $a1
	b	.LBB1_644
.LBB1_643:                              # %if.then5858
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_644:                              # %if.end5869
                                        #   in Loop: Header=BB1_578 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s3, 24
	st.d	$a0, $s5, 0
	st.d	$a0, $s1, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_646
# %bb.645:                              # %cond.end5918
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB1_647
	b	.LBB1_648
.LBB1_646:                              # %cond.end5918.thread
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$s2, $s6, 0
.LBB1_647:                              # %cond.false5927
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_648:                              # %cond.end5951
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB1_650
# %bb.649:                              # %cond.false5962
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_651
.LBB1_650:                              #   in Loop: Header=BB1_578 Depth=1
	move	$a1, $zero
.LBB1_651:                              # %cond.end5984
                                        #   in Loop: Header=BB1_578 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s3, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB1_653
# %bb.652:                              # %cond.false5992
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a1, 8
.LBB1_653:                              # %cond.end6014
                                        #   in Loop: Header=BB1_578 Depth=1
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
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s6, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_655
# %bb.654:                              # %if.then6051
                                        #   in Loop: Header=BB1_578 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_655:                              # %if.end6053
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB1_657
# %bb.656:                              # %cond.false6063
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_658
.LBB1_657:                              #   in Loop: Header=BB1_578 Depth=1
	move	$a1, $zero
.LBB1_658:                              # %cond.end6085
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB1_660
# %bb.659:                              # %cond.false6093
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a1, 8
.LBB1_660:                              # %cond.end6115
                                        #   in Loop: Header=BB1_578 Depth=1
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
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s6, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_662
# %bb.661:                              # %if.then6152
                                        #   in Loop: Header=BB1_578 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_662:                              # %if.end6154
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a0, $s7, 24
	st.d	$s7, $s5, 0
	beq	$a0, $s7, .LBB1_664
# %bb.663:                              # %cond.false6161
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $s7, 16
	st.d	$a0, $s1, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s7, $s7, 24
	st.d	$s7, $s7, 16
	b	.LBB1_665
.LBB1_664:                              #   in Loop: Header=BB1_578 Depth=1
	move	$a0, $zero
.LBB1_665:                              # %cond.end6183
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$a1, $s7, 8
	st.d	$a0, $s3, 0
	st.d	$s7, $s6, 0
	beq	$a1, $s7, .LBB1_667
# %bb.666:                              # %cond.false6191
                                        #   in Loop: Header=BB1_578 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $s7, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$s7, $s5, 0
	st.d	$a0, $a0, 8
.LBB1_667:                              # %cond.end6213
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.bu	$a0, $s7, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s7, 33
	add.d	$a0, $s0, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $fp, $a1
	st.d	$s7, $s6, 0
	st.w	$a0, $s4, 0
	st.d	$a1, $s7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_669
# %bb.668:                              # %if.then6250
                                        #   in Loop: Header=BB1_578 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_669:                              # %if.end6252
                                        #   in Loop: Header=BB1_578 Depth=1
	ld.d	$s7, $s2, 24
	move	$s3, $s2
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ori	$s4, $zero, 19
	b	.LBB1_577
.LBB1_670:                              # %for.cond6491.preheader
	ld.d	$s3, $s6, 8
	beq	$s3, $s6, .LBB1_716
# %bb.671:                              # %for.cond6498.preheader.lr.ph
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s5, $sp, 656
	ld.w	$a0, $sp, 652
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$a6, $zero, 19
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s8, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s4, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a0, %got_pc_lo12(zz_tmp)
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
.LBB1_672:                              # %for.cond6498.preheader.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_675 Depth 2
                                        #       Child Loop BB1_676 Depth 3
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB1_675
.LBB1_673:                              # %if.else6873
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.w	$s5, $a1, 56
	st.w	$a0, $sp, 652
	st.w	$s5, $sp, 656
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_674:                              # %for.inc6886
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$s3, $s3, 8
	beq	$s3, $s6, .LBB1_711
.LBB1_675:                              # %for.cond6498.preheader
                                        #   Parent Loop BB1_672 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_676 Depth 3
	move	$s2, $s3
	.p2align	4, , 16
.LBB1_676:                              # %for.cond6498
                                        #   Parent Loop BB1_672 Depth=1
                                        #     Parent Loop BB1_675 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_676
# %bb.677:                              # %for.end6509
                                        #   in Loop: Header=BB1_675 Depth=2
	addi.d	$a1, $a0, -119
	bltu	$a6, $a1, .LBB1_684
# %bb.678:                              # %if.then6521
                                        #   in Loop: Header=BB1_675 Depth=2
	bne	$s0, $fp, .LBB1_674
# %bb.679:                              # %if.then6524
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$s3, $s3, 0
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 8
	st.d	$a0, $s8, 0
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_681
# %bb.680:                              # %cond.false6537
                                        #   in Loop: Header=BB1_675 Depth=2
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a1, 8
.LBB1_681:                              # %cond.end6559
                                        #   in Loop: Header=BB1_675 Depth=2
	st.d	$a0, $s4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB1_674
# %bb.682:                              # %cond.end6559
                                        #   in Loop: Header=BB1_675 Depth=2
	beqz	$a0, .LBB1_674
# %bb.683:                              # %cond.false6568
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $a3, 8
	b	.LBB1_674
	.p2align	4, , 16
.LBB1_684:                              # %if.else6595
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.bu	$a1, $s6, 32
	bne	$a0, $a1, .LBB1_692
# %bb.685:                              # %if.then6604
                                        #   in Loop: Header=BB1_675 Depth=2
	move	$s6, $s0
	ld.d	$s0, $s2, 8
	ld.d	$s3, $s3, 0
	beq	$s0, $s2, .LBB1_690
# %bb.686:                              # %if.then6619
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.bu	$a0, $s0, 32
	ld.d	$fp, $s3, 8
	beqz	$a0, .LBB1_688
# %bb.687:                              # %if.then6625
                                        #   in Loop: Header=BB1_675 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
.LBB1_688:                              # %cond.end6659
                                        #   in Loop: Header=BB1_675 Depth=2
	st.d	$s0, $s4, 0
	st.d	$s2, $s1, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $a3, 8
	st.d	$s0, $s4, 0
	st.d	$fp, $s1, 0
	beqz	$fp, .LBB1_690
# %bb.689:                              # %cond.false6668
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a0, $fp, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $a3, 8
.LBB1_690:                              # %if.end6694
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a0, $s2, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB1_699
# %bb.691:                              # %cond.false6704
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a1, $a0, 16
	st.d	$a2, $s4, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_700
.LBB1_692:                              # %if.else6796
                                        #   in Loop: Header=BB1_675 Depth=2
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_695
# %bb.693:                              # %if.then6835
                                        #   in Loop: Header=BB1_675 Depth=2
	bnez	$s0, .LBB1_705
# %bb.694:                              # %if.then6838
                                        #   in Loop: Header=BB1_675 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	b	.LBB1_705
.LBB1_695:                              # %if.else6796
                                        #   in Loop: Header=BB1_675 Depth=2
	bne	$a0, $fp, .LBB1_704
# %bb.696:                              # %if.then6802
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_698
# %bb.697:                              # %if.then6804
                                        #   in Loop: Header=BB1_675 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
.LBB1_698:                              # %if.end6806
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.hu	$a0, $s2, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB1_674
	b	.LBB1_707
.LBB1_699:                              #   in Loop: Header=BB1_675 Depth=2
	move	$a2, $zero
.LBB1_700:                              # %cond.end6726
                                        #   in Loop: Header=BB1_675 Depth=2
	move	$s0, $s6
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s1, 0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB1_702
# %bb.701:                              # %cond.false6734
                                        #   in Loop: Header=BB1_675 Depth=2
	st.d	$a3, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s8, 0
	st.d	$a2, $a2, 8
.LBB1_702:                              # %cond.end6756
                                        #   in Loop: Header=BB1_675 Depth=2
	ori	$fp, $zero, 1
	ld.bu	$a2, $a0, 32
	st.d	$a0, $s1, 0
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
	ld.w	$a2, $a3, 0
	ld.d	$a3, $s1, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_674
# %bb.703:                              # %if.then6793
                                        #   in Loop: Header=BB1_675 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	b	.LBB1_674
.LBB1_704:                              # %if.else6840
                                        #   in Loop: Header=BB1_675 Depth=2
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	move	$s2, $a0
.LBB1_705:                              # %if.end6842
                                        #   in Loop: Header=BB1_675 Depth=2
	alsl.d	$a1, $s0, $s2, 2
	ld.w	$a0, $a1, 48
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beqz	$a2, .LBB1_673
# %bb.706:                              # %if.then6844
                                        #   in Loop: Header=BB1_675 Depth=2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slt	$a2, $a0, $a3
	masknez	$a0, $a0, $a2
	ld.w	$a1, $a1, 56
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$a0, $sp, 652
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	st.w	$s5, $sp, 656
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB1_674
.LBB1_707:                              # %for.inc6886.thread
                                        #   in Loop: Header=BB1_672 Depth=1
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a0, $s5, $a0
	ld.d	$s3, $s3, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bne	$s3, $s6, .LBB1_672
# %bb.708:                              # %if.then6892.thread1944
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_714
.LBB1_709:                              # %for.end6444
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	beqz	$s3, .LBB1_718
# %bb.710:                              # %if.else6448
	alsl.d	$a1, $s0, $s3, 2
	ld.w	$a1, $a1, 56
	ld.w	$a2, $sp, 656
	ld.w	$a3, $sp, 652
	add.d	$a1, $a2, $a1
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a4, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_720
.LBB1_711:                              # %for.end6890
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_713
# %bb.712:                              # %if.then6892
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_713:                              # %if.end6894
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_717
.LBB1_714:                              # %if.then6896
	alsl.d	$a0, $s0, $s6, 2
	st.w	$zero, $a0, 48
	ld.w	$a1, $sp, 652
	ld.w	$a2, $sp, 656
	add.w	$a1, $a2, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a2, $a2, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 56
	b	.LBB1_477
.LBB1_715:
	move	$a0, $zero
	b	.LBB1_719
.LBB1_716:                              # %if.then6892.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_717:                              # %if.else6919
	ld.w	$a0, $sp, 652
	alsl.d	$a1, $s0, $s6, 2
	st.w	$a0, $a1, 48
	ld.w	$a0, $sp, 656
	st.w	$a0, $a1, 56
	b	.LBB1_477
.LBB1_718:
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
.LBB1_719:                              # %if.then6447
	move	$a2, $zero
	move	$a1, $zero
	st.w	$zero, $sp, 652
.LBB1_720:                              # %if.end6454
	st.w	$a1, $sp, 656
	alsl.d	$a1, $s0, $s6, 2
	st.w	$a2, $a1, 48
	ld.w	$a2, $sp, 656
	slli.d	$a3, $s0, 2
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	slt	$a4, $a2, $a1
	masknez	$a5, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$a4, $a2, $a5
	addi.d	$a2, $s6, 56
	stx.w	$a4, $a2, $a3
	ld.bu	$a3, $s6, 32
	ori	$a4, $zero, 17
	bne	$a3, $a4, .LBB1_477
# %bb.721:                              # %if.end6454
	beqz	$a0, .LBB1_477
# %bb.722:                              # %if.then6482
	st.w	$a1, $a2, 0
	b	.LBB1_477
.Lfunc_end1:
	.size	MinSize, .Lfunc_end1-MinSize
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_143-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_155-.LJTI1_0
	.word	.LBB1_475-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_118-.LJTI1_0
	.word	.LBB1_121-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_128-.LJTI1_0
	.word	.LBB1_85-.LJTI1_0
	.word	.LBB1_573-.LJTI1_0
	.word	.LBB1_573-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_162-.LJTI1_0
	.word	.LBB1_170-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_158-.LJTI1_0
	.word	.LBB1_72-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_76-.LJTI1_0
	.word	.LBB1_150-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_177-.LJTI1_1
	.word	.LBB1_316-.LJTI1_1
	.word	.LBB1_312-.LJTI1_1
	.word	.LBB1_313-.LJTI1_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function KernLength
	.type	KernLength,@function
KernLength:                             # @KernLength
# %bb.0:                                # %entry
	pcalau12i	$a3, %got_pc_hi20(finfo)
	ld.d	$a3, $a3, %got_pc_lo12(finfo)
	ld.d	$a3, $a3, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a3, $a0
	ld.d	$a3, $a0, 40
	ld.bu	$a3, $a3, 60
	andi	$a3, $a3, 127
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(MapTable)
	ld.d	$a4, $a4, %got_pc_lo12(MapTable)
	ldx.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 898
	ldx.bu	$a1, $a3, $a1
	ld.d	$a4, $a0, 64
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a4, $a1
	beqz	$a1, .LBB2_5
# %bb.1:                                # %if.else
	ldx.bu	$a2, $a3, $a2
	ld.d	$a3, $a0, 72
	.p2align	4, , 16
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bltu	$a2, $a4, .LBB2_2
# %bb.3:                                # %for.end
	bne	$a4, $a2, .LBB2_5
# %bb.4:                                # %cond.true
	ld.d	$a2, $a0, 80
	add.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, -1
	ld.d	$a0, $a0, 88
	slli.d	$a1, $a1, 1
	ldx.h	$a0, $a0, $a1
	ret
.LBB2_5:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	KernLength, .Lfunc_end2-KernLength
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SpannerAvail!"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SpannerAvailableSpace: thr_state!"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"search for gap preceding %s failed, using zero"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s deleted (out of place)"
	.size	.L.str.4, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MinSize: CLOSURE has target!"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MinSize: definite non-recursive closure"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.space	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MinSize/SPAN: type(t) != HSPANNER!"
	.size	.L.str.9, 35

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s replaced by empty object (out of place)"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"MinSize: SPANNER!"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MinSize: BreakObject failed to fit!"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"forced to enlarge %s from %s to %s"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"@High"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.16, 34

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"word %s%s is too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"^ deleted (it may not precede this object)"
	.size	.L.str.18, 43

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"gap replaced by 0i (%c unit not allowed here)"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"MinSize: NO_MODE!"
	.size	.L.str.20, 18

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"mark alignment incompatible with centring or right justification"
	.size	.L.str.21, 65

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"MinSize/VCAT/perp: !found!"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"MinSize/VCAT/perp: !found (2)!"
	.size	.L.str.23, 31

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"MinSize/COL_THR: dim!"
	.size	.L.str.24, 22

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"MinSize/COL_THR: Down(x)!"
	.size	.L.str.25, 26

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"MinSize/COL_THR: GAP_OBJ!"
	.size	.L.str.26, 26

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"MinSize/ROW_THR: dim!"
	.size	.L.str.27, 22

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"MinSize/ROW_THR: Down(x)!"
	.size	.L.str.28, 26

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"MinSize/ROW_THR: GAP_OBJ!"
	.size	.L.str.29, 26

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%[^\n\r]%*c"
	.size	.L.str.30, 10

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"%!"
	.size	.L.str.31, 3

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%%BoundingBox:"
	.size	.L.str.32, 15

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"(atend)"
	.size	.L.str.33, 8

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%%%%BoundingBox: %f %f %f %f"
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%s deleted (cannot open file %s)"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"@IncludeGraphic"
	.size	.L.str.36, 16

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%s given zero size (no BoundingBox line in file %s)"
	.size	.L.str.38, 52

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"lout.eps"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%s deleted (bad first line in file %s)"
	.size	.L.str.40, 39

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%s given zero size (bad BoundingBox line in file %s)"
	.size	.L.str.41, 53

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"assert failed in %s %s"
	.size	.L.str.42, 23

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"MinSize"
	.size	.L.str.43, 8

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"MinSize: back(x, dim) < 0!"
	.size	.L.str.44, 27

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"MinSize: fwd(x, dim) < 0!"
	.size	.L.str.45, 26

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"FindSpannerGap: type(*res)!"
	.size	.L.str.46, 28

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"FindSpannerGap (HEAD): type(*res)!"
	.size	.L.str.47, 35

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"BuildSpanner: spanobj!"
	.size	.L.str.49, 23

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%s deleted (not in column)"
	.size	.L.str.50, 27

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%s symbol out of place"
	.size	.L.str.51, 23

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"BuildSpanner: type(prnt)!"
	.size	.L.str.52, 26

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"%s deleted (not in row)"
	.size	.L.str.53, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
