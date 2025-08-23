	.file	"debugger.c"
	.text
	.globl	IS_PREFIX_TO                    # -- Begin function IS_PREFIX_TO
	.p2align	5
	.type	IS_PREFIX_TO,@function
IS_PREFIX_TO:                           # @IS_PREFIX_TO
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s2, .LBB0_2
.LBB0_1:
	move	$a0, $zero
	b	.LBB0_6
.LBB0_2:                                # %for.cond.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_6
# %bb.3:                                # %for.body.preheader
	bstrpick.d	$a1, $s1, 30, 0
	.p2align	4, , 16
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s0, 0
	ld.bu	$a3, $fp, 0
	bne	$a2, $a3, .LBB0_1
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a1, -1
	addi.d	$s0, $s0, 1
	bnez	$a1, .LBB0_4
.LBB0_6:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	IS_PREFIX_TO, .Lfunc_end0-IS_PREFIX_TO
                                        # -- End function
	.globl	REMOVE_WS                       # -- Begin function REMOVE_WS
	.p2align	5
	.type	REMOVE_WS,@function
REMOVE_WS:                              # @REMOVE_WS
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$a1, $a0, 0
	addi.d	$a1, $a1, 1
.LBB1_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, -1
	beq	$a4, $a2, .LBB1_1
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$a4, $a3, .LBB1_1
# %bb.4:                                # %while.end
	ret
.Lfunc_end1:
	.size	REMOVE_WS, .Lfunc_end1-REMOVE_WS
                                        # -- End function
	.globl	TYPE_IN                         # -- Begin function TYPE_IN
	.p2align	5
	.type	TYPE_IN,@function
TYPE_IN:                                # @TYPE_IN
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 0
	addi.d	$a0, $a0, 10
	ori	$a1, $zero, 9
	ori	$a3, $zero, 32
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %while.body.i
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a4, $a0, -9
	st.d	$a4, $fp, 0
	addi.d	$a0, $a0, 1
.LBB2_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, -10
	beq	$a4, $a1, .LBB2_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB2_2 Depth=1
	beq	$a4, $a3, .LBB2_1
# %bb.4:                                # %while.cond.i
	ori	$a1, $zero, 36
	bne	$a4, $a1, .LBB2_11
# %bb.5:                                # %if.then
	addi.d	$a1, $a0, -9
	st.d	$a1, $fp, 0
	ld.bu	$a1, $a0, -9
	ori	$a3, $zero, 67
	beq	$a1, $a3, .LBB2_18
# %bb.6:                                # %if.then
	ori	$a3, $zero, 83
	beq	$a1, $a3, .LBB2_16
# %bb.7:                                # %if.then
	ori	$a3, $zero, 68
	bne	$a1, $a3, .LBB2_35
# %bb.8:                                # %sw.bb
	move	$s2, $a2
	addi.d	$a1, $a0, -8
	st.d	$a1, $fp, 0
	ld.b	$a0, $a0, -8
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.w	$s3, $zero, -1
	beq	$a0, $s3, .LBB2_34
# %bb.9:                                # %while.cond.preheader
	ld.b	$a0, $a1, 0
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	beq	$a0, $s3, .LBB2_41
	.p2align	4, , 16
.LBB2_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.b	$a0, $a0, 0
	slli.d	$a1, $s1, 3
	alsl.d	$s1, $s1, $a1, 1
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 0
	ld.b	$a2, $a1, 1
	add.w	$s1, $a0, $s1
	ori	$a1, $zero, 10
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB2_10
	b	.LBB2_41
.LBB2_11:                               # %if.else87
	ext.w.b	$a0, $a4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB2_14
# %bb.12:                               # %while.cond94.preheader
	ld.b	$a0, $a1, 0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	beq	$a0, $s2, .LBB2_49
	.p2align	4, , 16
.LBB2_13:                               # %while.body98
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.b	$a0, $a0, 0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 0
	ld.b	$a2, $a1, 1
	alsl.w	$s1, $s1, $a0, 4
	ori	$a1, $zero, 16
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CHAR_TO_DIGIT)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB2_13
	b	.LBB2_49
.LBB2_14:                               # %if.then91
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB2_15:                               # %cleanup106
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	st.w	$zero, $s0, 0
	b	.LBB2_49
.LBB2_16:                               # %sw.bb27
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB2_21
# %bb.17:                               # %if.then73.thread
	move	$s1, $zero
	st.w	$zero, $s0, 0
	b	.LBB2_45
.LBB2_18:                               # %sw.bb13
	ori	$a1, $zero, 3
	bne	$a2, $a1, .LBB2_35
# %bb.19:                               # %if.else17
	move	$s2, $a2
	addi.d	$a1, $a0, -8
	st.d	$a1, $fp, 0
	ld.bu	$a1, $a0, -8
	beqz	$a1, .LBB2_40
# %bb.20:                               # %if.then23
	ext.w.b	$s1, $a1
	addi.d	$a0, $a0, -7
	st.d	$a0, $fp, 0
	b	.LBB2_41
.LBB2_21:                               # %if.else31
	ori	$a3, $zero, 32
	ori	$a4, $zero, 9
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               # %while.body.i53
                                        #   in Loop: Header=BB2_23 Depth=1
	addi.d	$a0, $a0, 1
.LBB2_23:                               # %while.cond.i52
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, -8
	st.d	$a1, $fp, 0
	ld.bu	$a5, $a0, -8
	beq	$a5, $a3, .LBB2_22
# %bb.24:                               # %while.cond.i52
                                        #   in Loop: Header=BB2_23 Depth=1
	beq	$a5, $a4, .LBB2_22
# %bb.25:                               # %REMOVE_WS.exit55
	addi.d	$a3, $a5, -65
	ori	$a4, $zero, 26
	bgeu	$a3, $a4, .LBB2_36
# %bb.26:                               # %for.body
	move	$s2, $a2
	st.b	$a5, $sp, 23
	addi.d	$a1, $a0, -7
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -7
	addi.d	$a4, $a3, -65
	ori	$a2, $zero, 25
	ori	$a1, $zero, 1
	bltu	$a2, $a4, .LBB2_37
# %bb.27:                               # %for.body.1
	st.b	$a3, $sp, 24
	addi.d	$a1, $a0, -6
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -6
	addi.d	$a4, $a3, -65
	ori	$a1, $zero, 2
	bltu	$a2, $a4, .LBB2_37
# %bb.28:                               # %for.body.2
	st.b	$a3, $sp, 25
	addi.d	$a1, $a0, -5
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -5
	addi.d	$a4, $a3, -65
	ori	$a2, $zero, 25
	ori	$a1, $zero, 3
	bltu	$a2, $a4, .LBB2_37
# %bb.29:                               # %for.body.3
	st.b	$a3, $sp, 26
	addi.d	$a1, $a0, -4
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -4
	addi.d	$a4, $a3, -65
	ori	$a1, $zero, 4
	bltu	$a2, $a4, .LBB2_37
# %bb.30:                               # %for.body.4
	st.b	$a3, $sp, 27
	addi.d	$a1, $a0, -3
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -3
	addi.d	$a4, $a3, -65
	ori	$a2, $zero, 25
	ori	$a1, $zero, 5
	bltu	$a2, $a4, .LBB2_37
# %bb.31:                               # %for.body.5
	st.b	$a3, $sp, 28
	addi.d	$a1, $a0, -2
	st.d	$a1, $fp, 0
	ld.bu	$a3, $a0, -2
	addi.d	$a4, $a3, -65
	ori	$a1, $zero, 6
	bltu	$a2, $a4, .LBB2_37
# %bb.32:                               # %for.body.6
	st.b	$a3, $sp, 29
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a0, -1
	addi.d	$a3, $a2, -65
	ori	$a4, $zero, 25
	ori	$a1, $zero, 7
	bltu	$a4, $a3, .LBB2_37
# %bb.33:                               # %for.end
	st.b	$a2, $sp, 30
	st.d	$a0, $fp, 0
	b	.LBB2_38
.LBB2_34:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a2, $s2
.LBB2_35:                               # %if.then73.sink.split
	move	$s1, $zero
	st.w	$zero, $s0, 0
	b	.LBB2_42
.LBB2_36:                               # %if.then39
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB2_15
.LBB2_37:                               # %for.body56.preheader
	addi.d	$a0, $sp, 23
	add.d	$a0, $a0, $a1
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $a1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_38:                               # %for.end61
	st.b	$zero, $sp, 31
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(SYM_TAB)
	addi.d	$a2, $a1, %pc_lo12(SYM_TAB)
	addi.d	$a1, $sp, 23
	pcaddu18i	$ra, %call36(LOOK_UP_SYMBOL)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_50
# %bb.39:                               # %cleanup
	ld.w	$s1, $a0, 20
	b	.LBB2_41
.LBB2_40:
	move	$s1, $zero
.LBB2_41:                               # %sw.epilog
	ld.w	$a0, $s0, 0
	move	$a2, $s2
	bnez	$a0, .LBB2_49
.LBB2_42:                               # %if.then73
	ori	$a0, $zero, 3
	bltu	$a0, $a2, .LBB2_48
# %bb.43:                               # %if.then73
	slli.d	$a0, $a2, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.Lstr.3)
	add.d	$a1, $a1, $a0
	addi.d	$a0, $a2, %pc_lo12(.Lstr.3)
	jr	$a1
.LBB2_44:                               # %sw.bb78
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	b	.LBB2_47
.LBB2_45:                               # %sw.bb76
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB2_47
.LBB2_46:                               # %sw.bb80
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
.LBB2_47:                               # %sw.epilog83.sink.split
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_48:                               # %sw.epilog83
	ld.d	$a0, $fp, 0
	ld.b	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_49:                               # %cleanup106
	move	$a0, $s1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB2_50:                               # %cleanup.thread
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.d	$a1, $sp, 23
	b	.LBB2_15
.Lfunc_end2:
	.size	TYPE_IN, .Lfunc_end2-TYPE_IN
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_47-.LJTI2_0
	.word	.LBB2_44-.LJTI2_0
	.word	.LBB2_45-.LJTI2_0
	.word	.LBB2_46-.LJTI2_0
                                        # -- End function
	.text
	.globl	EXAMINE                         # -- Begin function EXAMINE
	.p2align	5
	.type	EXAMINE,@function
EXAMINE:                                # @EXAMINE
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 0
	addi.d	$s2, $a0, 3
	ori	$a0, $zero, 32
	ori	$a1, $zero, 9
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %while.body.i
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$s2, $s2, 1
.LBB3_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s0, $s2, -3
	beq	$s0, $a0, .LBB3_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB3_2 Depth=1
	beq	$s0, $a1, .LBB3_1
# %bb.4:                                # %REMOVE_WS.exit
	addi.d	$fp, $s2, -3
	st.d	$fp, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB3_10
# %bb.5:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 36
	bne	$s0, $a0, .LBB3_10
# %bb.6:                                # %lor.lhs.false
	ld.bu	$a0, $s2, -2
	ori	$a1, $zero, 82
	bne	$a0, $a1, .LBB3_10
# %bb.7:                                # %if.else10
	ld.bu	$a0, $s2, -1
	addi.d	$s0, $s2, -1
	addi.d	$a0, $a0, -65
	ori	$a1, $zero, 23
	st.d	$s0, $sp, 24
	bltu	$a1, $a0, .LBB3_37
# %bb.8:                                # %if.else10
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_9:                                # %if.else10.if.end37_crit_edge
	move	$s1, $zero
	b	.LBB3_41
.LBB3_10:                               # %if.end63
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(TYPE_IN)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 24
	move	$s0, $a0
	ori	$a2, $zero, 32
	ori	$a3, $zero, 9
	move	$a1, $s1
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %while.body.i31
                                        #   in Loop: Header=BB3_12 Depth=1
	addi.d	$a1, $a1, 1
.LBB3_12:                               # %while.cond.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a1, 0
	beq	$a0, $a2, .LBB3_11
# %bb.13:                               # %while.cond.i30
                                        #   in Loop: Header=BB3_12 Depth=1
	beq	$a0, $a3, .LBB3_11
# %bb.14:                               # %REMOVE_WS.exit33
	ld.w	$a2, $sp, 16
	beqz	$a2, .LBB3_54
# %bb.15:                               # %if.then65
	bltz	$s0, .LBB3_17
# %bb.16:                               # %lor.lhs.false68
	lu12i.w	$a2, 255
	ori	$a2, $a2, 4094
	bltu	$s0, $a2, .LBB3_18
.LBB3_17:                               # %if.then71
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a2, $a1, %pc_lo12(.L.str.17)
	move	$a1, $s0
	b	.LBB3_59
.LBB3_18:                               # %if.else72
	addi.w	$s2, $s0, 2
	beqz	$a0, .LBB3_27
# %bb.19:                               # %if.else72
	ori	$a2, $zero, 61
	bne	$a0, $a2, .LBB3_55
# %bb.20:                               # %if.then76
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(TYPE_IN)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 16
	beqz	$a1, .LBB3_54
# %bb.21:                               # %if.end81
	ld.d	$a1, $sp, 24
	ori	$a2, $zero, 9
	ori	$a3, $zero, 32
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_22:                               # %while.body.i36
                                        #   in Loop: Header=BB3_23 Depth=1
	addi.d	$a1, $a1, 1
.LBB3_23:                               # %while.cond.i35
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	beq	$a4, $a2, .LBB3_22
# %bb.24:                               # %while.cond.i35
                                        #   in Loop: Header=BB3_23 Depth=1
	beq	$a4, $a3, .LBB3_22
# %bb.25:                               # %while.cond.i35
	bnez	$a4, .LBB3_55
# %bb.26:                               # %if.else88
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	pcalau12i	$a2, %got_pc_hi20(MEMORY)
	ld.d	$s3, $a2, %got_pc_lo12(MEMORY)
	st.b	$zero, $s1, 0
	slli.d	$a2, $s0, 2
	stx.w	$a0, $a1, $a2
	ld.d	$a1, $s3, 0
	bstrpick.d	$a2, $a0, 62, 47
	add.d	$a2, $a0, $a2
	srli.d	$a2, $a2, 16
	stx.b	$a2, $a1, $s0
	ld.d	$a1, $s3, 0
	ldx.b	$a1, $a1, $s0
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 16
	sub.w	$a0, $s1, $a0
	bstrpick.d	$a1, $a0, 62, 55
	add.d	$a0, $a0, $a1
	ld.d	$a1, $s3, 0
	srli.d	$a0, $a0, 8
	bstrpick.d	$a2, $s0, 31, 0
	addi.d	$a2, $a2, 1
	stx.b	$a0, $a1, $a2
	ld.d	$a0, $s3, 0
	ldx.b	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$s1, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_28
.LBB3_27:                               # %if.else88.thread
	st.b	$zero, $s1, 0
.LBB3_28:                               # %if.end118
	pcalau12i	$a0, %got_pc_hi20(MEMORY)
	ld.d	$s3, $a0, %got_pc_lo12(MEMORY)
	ld.d	$a0, $s3, 0
	ldx.b	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	add.d	$a1, $a1, $s0
	ld.b	$a1, $a1, 1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldx.b	$a1, $a1, $s2
	slli.d	$a2, $s1, 16
	slli.d	$a0, $a0, 8
	add.d	$s1, $a0, $a2
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $a0
	st.w	$s1, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	ld.bu	$a0, $a0, %pc_lo12(TYPE_OUT_MODE)
	ori	$a1, $zero, 73
	bne	$a0, $a1, .LBB3_30
# %bb.29:                               # %if.else142
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	b	.LBB3_54
.LBB3_30:                               # %if.then141
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a2, $a1, %pc_lo12(.L.str.16)
	move	$a1, $s1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB3_31:                               # %sw.bb22
	ori	$s1, $zero, 5
	b	.LBB3_41
.LBB3_32:                               # %sw.bb14
	ori	$s1, $zero, 3
	b	.LBB3_41
.LBB3_33:                               # %sw.bb12
	ori	$s1, $zero, 1
	b	.LBB3_41
.LBB3_34:                               # %sw.bb13
	ori	$s1, $zero, 2
	b	.LBB3_41
.LBB3_35:                               # %sw.bb23
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 67
	bne	$a0, $a1, .LBB3_37
# %bb.36:                               # %if.then28
	st.d	$s2, $sp, 24
	ori	$s1, $zero, 8
	b	.LBB3_40
.LBB3_37:                               # %if.then34.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s0
	b	.LBB3_56
.LBB3_38:                               # %sw.bb15
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 87
	ori	$s1, $zero, 4
	bne	$a0, $a1, .LBB3_41
# %bb.39:                               # %if.then20
	st.d	$s2, $sp, 24
	ori	$s1, $zero, 9
.LBB3_40:                               # %if.end37
	move	$s0, $s2
.LBB3_41:                               # %if.end37
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 32
	ori	$a2, $zero, 9
	move	$a1, $s0
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_42:                               # %while.body.i21
                                        #   in Loop: Header=BB3_43 Depth=1
	addi.d	$a1, $a1, 1
.LBB3_43:                               # %while.cond.i20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a0, .LBB3_42
# %bb.44:                               # %while.cond.i20
                                        #   in Loop: Header=BB3_43 Depth=1
	beq	$a3, $a2, .LBB3_42
# %bb.45:                               # %REMOVE_WS.exit23
	st.d	$a1, $sp, 24
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB3_57
# %bb.46:                               # %REMOVE_WS.exit23
	ori	$a2, $zero, 61
	bne	$a0, $a2, .LBB3_55
# %bb.47:                               # %if.then42
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(TYPE_IN)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 16
	st.w	$a0, $sp, 20
	beqz	$a1, .LBB3_54
# %bb.48:                               # %if.end46
	ld.d	$a1, $sp, 24
	ori	$a0, $zero, 9
	ori	$a2, $zero, 32
	b	.LBB3_50
	.p2align	4, , 16
.LBB3_49:                               # %while.body.i26
                                        #   in Loop: Header=BB3_50 Depth=1
	addi.d	$a1, $a1, 1
.LBB3_50:                               # %while.cond.i25
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a0, .LBB3_49
# %bb.51:                               # %while.cond.i25
                                        #   in Loop: Header=BB3_50 Depth=1
	beq	$a3, $a2, .LBB3_49
# %bb.52:                               # %while.cond.i25
	bnez	$a3, .LBB3_55
# %bb.53:                               # %if.else53
	st.b	$zero, $s0, 0
	ld.w	$a0, $sp, 20
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a2, $s1, 2
	stx.w	$a0, $a1, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_58
.LBB3_54:                               # %cleanup
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB3_55:                               # %if.then51
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
.LBB3_56:                               # %if.then51
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_57:                               # %if.else53.thread
	st.b	$zero, $s0, 0
.LBB3_58:                               # %if.end58
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	slli.d	$a1, $s1, 2
	ldx.w	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
.LBB3_59:                               # %if.then71
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.Lfunc_end3:
	.size	EXAMINE, .Lfunc_end3-EXAMINE
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_32-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_34-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_35-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_31-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_33-.LJTI3_0
                                        # -- End function
	.text
	.globl	LIST_BP                         # -- Begin function LIST_BP
	.p2align	5
	.type	LIST_BP,@function
LIST_BP:                                # @LIST_BP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %while.body.i
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB4_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a0, .LBB4_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB4_2 Depth=1
	beq	$a4, $a3, .LBB4_1
# %bb.4:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB4_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_6:                                # %if.else
	pcalau12i	$a0, %pc_hi20(NUM_BREAK_POINTS)
	ld.w	$a0, $a0, %pc_lo12(NUM_BREAK_POINTS)
	beqz	$a0, .LBB4_39
# %bb.7:                                # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(BREAK_POINTS)
	addi.d	$fp, $a0, %pc_lo12(BREAK_POINTS)
	ld.w	$a0, $fp, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB4_9
# %bb.8:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %for.inc
	ld.w	$a0, $fp, 4
	beq	$a0, $s0, .LBB4_11
# %bb.10:                               # %if.then11.1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %for.inc.1
	ld.w	$a0, $fp, 8
	beq	$a0, $s0, .LBB4_13
# %bb.12:                               # %if.then11.2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %for.inc.2
	ld.w	$a0, $fp, 12
	beq	$a0, $s0, .LBB4_15
# %bb.14:                               # %if.then11.3
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %for.inc.3
	ld.w	$a0, $fp, 16
	beq	$a0, $s0, .LBB4_17
# %bb.16:                               # %if.then11.4
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %for.inc.4
	ld.w	$a0, $fp, 20
	beq	$a0, $s0, .LBB4_19
# %bb.18:                               # %if.then11.5
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %for.inc.5
	ld.w	$a0, $fp, 24
	beq	$a0, $s0, .LBB4_21
# %bb.20:                               # %if.then11.6
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %for.inc.6
	ld.w	$a0, $fp, 28
	beq	$a0, $s0, .LBB4_23
# %bb.22:                               # %if.then11.7
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %for.inc.7
	ld.w	$a0, $fp, 32
	beq	$a0, $s0, .LBB4_25
# %bb.24:                               # %if.then11.8
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %for.inc.8
	ld.w	$a0, $fp, 36
	beq	$a0, $s0, .LBB4_27
# %bb.26:                               # %if.then11.9
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_27:                               # %for.inc.9
	ld.w	$a0, $fp, 40
	beq	$a0, $s0, .LBB4_29
# %bb.28:                               # %if.then11.10
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %for.inc.10
	ld.w	$a0, $fp, 44
	beq	$a0, $s0, .LBB4_31
# %bb.30:                               # %if.then11.11
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 11
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 44
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %for.inc.11
	ld.w	$a0, $fp, 48
	beq	$a0, $s0, .LBB4_33
# %bb.32:                               # %if.then11.12
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %for.inc.12
	ld.w	$a0, $fp, 52
	beq	$a0, $s0, .LBB4_35
# %bb.34:                               # %if.then11.13
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 13
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 52
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %for.inc.13
	ld.w	$a0, $fp, 56
	beq	$a0, $s0, .LBB4_37
# %bb.36:                               # %if.then11.14
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 14
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %for.inc.14
	ld.w	$a0, $fp, 60
	beq	$a0, $s0, .LBB4_40
# %bb.38:                               # %if.then11.15
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 15
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 60
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.LBB4_39:                               # %if.then4
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB4_40:                               # %if.end15
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	LIST_BP, .Lfunc_end4-LIST_BP
                                        # -- End function
	.globl	SET_BP                          # -- Begin function SET_BP
	.p2align	5
	.type	SET_BP,@function
SET_BP:                                 # @SET_BP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.bu	$a2, $a0, 0
	ori	$a3, $zero, 63
	st.d	$a0, $sp, 8
	bne	$a2, $a3, .LBB5_2
# %bb.1:                                # %if.then
	addi.d	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(LIST_BP)
	jr	$t8
.LBB5_2:                                # %if.end
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(TYPE_IN)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	ori	$a2, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %while.body.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a1, 1
.LBB5_4:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	beq	$a4, $a2, .LBB5_3
# %bb.5:                                # %while.cond.i
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a4, $a3, .LBB5_3
# %bb.6:                                # %REMOVE_WS.exit
	ld.w	$a2, $sp, 4
	beqz	$a2, .LBB5_9
# %bb.7:                                # %if.then2
	bstrpick.d	$a2, $a0, 31, 20
	beqz	$a2, .LBB5_10
# %bb.8:                                # %if.then7
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a3, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a2, $a1, %pc_lo12(.L.str.24)
	move	$a1, $a0
	move	$a0, $a3
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB5_9:                                # %cleanup
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_10:                               # %if.else
	pcalau12i	$a2, %pc_hi20(NUM_BREAK_POINTS)
	ld.w	$a3, $a2, %pc_lo12(NUM_BREAK_POINTS)
	ori	$a5, $zero, 16
	bne	$a3, $a5, .LBB5_12
# %bb.11:                               # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a2, $a1, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB5_12:                               # %if.else11
	beqz	$a4, .LBB5_14
# %bb.13:                               # %if.then15
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB5_14:                               # %for.cond.preheader
	pcalau12i	$a1, %pc_hi20(BREAK_POINTS)
	addi.d	$a4, $a1, %pc_lo12(BREAK_POINTS)
	addi.w	$a5, $zero, -1
	addi.d	$fp, $a4, -4
	move	$a1, $a5
	.p2align	4, , 16
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $fp, 4
	addi.d	$fp, $fp, 4
	addi.w	$a1, $a1, 1
	bne	$a6, $a5, .LBB5_15
# %bb.16:                               # %for.end
	st.w	$a0, $fp, 0
	pcalau12i	$a5, %pc_hi20(SORTED_BREAK_POINTS)
	ori	$a7, $zero, 1
	addi.d	$a5, $a5, %pc_lo12(SORTED_BREAK_POINTS)
	move	$a6, $a3
	blt	$a3, $a7, .LBB5_21
# %bb.17:                               # %for.end
	slli.d	$a6, $a3, 2
	ldx.w	$a7, $a5, $a6
	slli.d	$a6, $a7, 2
	ldx.w	$t0, $a4, $a6
	move	$a6, $a3
	bge	$a0, $t0, .LBB5_21
# %bb.18:                               # %for.body32.preheader
	alsl.d	$a6, $a3, $a5, 2
	addi.d	$t0, $a6, 4
	ori	$t1, $zero, 2
	move	$a6, $a3
	move	$t2, $a3
	.p2align	4, , 16
.LBB5_19:                               # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a7, $t0, 0
	addi.w	$a6, $a6, -1
	blt	$t2, $t1, .LBB5_21
# %bb.20:                               # %for.body32
                                        #   in Loop: Header=BB5_19 Depth=1
	ld.w	$a7, $t0, -8
	slli.d	$t3, $a7, 2
	ldx.w	$t3, $a4, $t3
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, -4
	blt	$a0, $t3, .LBB5_19
.LBB5_21:                               # %for.end38
	alsl.d	$a0, $a6, $a5, 2
	st.w	$a1, $a0, 4
	addi.d	$a0, $a3, 1
	st.w	$a0, $a2, %pc_lo12(NUM_BREAK_POINTS)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_ADDRESS)
	jr	$t8
.Lfunc_end5:
	.size	SET_BP, .Lfunc_end5-SET_BP
                                        # -- End function
	.globl	RESET_BP                        # -- Begin function RESET_BP
	.p2align	5
	.type	RESET_BP,@function
RESET_BP:                               # @RESET_BP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 12
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(TYPE_IN)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	move	$a3, $a0
	ori	$a0, $zero, 32
	ori	$a4, $zero, 9
	b	.LBB6_2
	.p2align	4, , 16
.LBB6_1:                                # %while.body.i
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.d	$a1, $a1, 1
.LBB6_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	beq	$a2, $a0, .LBB6_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB6_2 Depth=1
	beq	$a2, $a4, .LBB6_1
# %bb.4:                                # %REMOVE_WS.exit
	ld.w	$a0, $sp, 12
	beqz	$a0, .LBB6_9
# %bb.5:                                # %if.then
	bltz	$a3, .LBB6_10
# %bb.6:                                # %if.then
	pcalau12i	$a4, %pc_hi20(NUM_BREAK_POINTS)
	ld.w	$a0, $a4, %pc_lo12(NUM_BREAK_POINTS)
	bge	$a3, $a0, .LBB6_10
# %bb.7:                                # %if.else
	beqz	$a2, .LBB6_11
# %bb.8:                                # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB6_9:                                # %if.end33
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_10:                               # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a2, $a1, %pc_lo12(.L.str.27)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a2, $a1, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 16
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB6_11:                               # %if.else7
	pcalau12i	$a1, %pc_hi20(BREAK_POINTS)
	addi.d	$a2, $a1, %pc_lo12(BREAK_POINTS)
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a2, $a1
	addi.w	$a7, $zero, -1
	beq	$a1, $a7, .LBB6_19
# %bb.12:                               # %for.cond.preheader
	move	$t0, $zero
	move	$a5, $zero
	move	$a1, $zero
	alsl.d	$t2, $a3, $a2, 2
	addi.d	$t1, $a0, 1
	bstrpick.d	$a6, $t1, 31, 0
	pcalau12i	$a2, %pc_hi20(SORTED_BREAK_POINTS)
	addi.d	$a2, $a2, %pc_lo12(SORTED_BREAK_POINTS)
	.p2align	4, , 16
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $a2, $a5
	ld.w	$t3, $t3, 4
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 4
	addi.w	$t0, $t0, 1
	addi.d	$a6, $a6, -1
	beq	$t3, $a3, .LBB6_15
# %bb.14:                               # %for.cond
                                        #   in Loop: Header=BB6_13 Depth=1
	bge	$a0, $a1, .LBB6_13
.LBB6_15:                               # %for.end
	lu32i.d	$a7, 0
	st.w	$a7, $t2, 0
	blt	$a0, $t0, .LBB6_30
# %bb.16:                               # %iter.check
	bstrpick.d	$a7, $t1, 31, 0
	sub.d	$t0, $a7, $a1
	ori	$t1, $zero, 4
	bltu	$t0, $t1, .LBB6_28
# %bb.17:                               # %vector.main.loop.iter.check
	ori	$t1, $zero, 16
	bgeu	$t0, $t1, .LBB6_20
# %bb.18:
	move	$t1, $zero
	b	.LBB6_24
.LBB6_19:                               # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a2, $a1, %pc_lo12(.L.str.31)
	move	$a1, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.LBB6_20:                               # %vector.ph
	add.d	$t1, $a2, $a5
	addi.d	$t2, $t1, 32
	addi.w	$t3, $zero, -16
	and	$t1, $t0, $t3
	and	$t3, $t0, $t3
	.p2align	4, , 16
.LBB6_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t2, -28
	xvld	$xr1, $t2, 4
	xvst	$xr0, $t2, -32
	xvst	$xr1, $t2, 0
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB6_21
# %bb.22:                               # %middle.block
	beq	$t0, $t1, .LBB6_30
# %bb.23:                               # %vec.epilog.iter.check
	andi	$t2, $t0, 12
	beqz	$t2, .LBB6_27
.LBB6_24:                               # %vec.epilog.ph
	addi.w	$t3, $zero, -4
	and	$t2, $t0, $t3
	and	$a6, $a6, $t3
	add.d	$a1, $a6, $a1
	sub.d	$a6, $t1, $t2
	alsl.d	$t1, $t1, $a2, 2
	.p2align	4, , 16
.LBB6_25:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $t1, $a5
	vld	$vr0, $t3, 4
	vstx	$vr0, $t1, $a5
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_25
# %bb.26:                               # %vec.epilog.middle.block
	bne	$t0, $t2, .LBB6_28
	b	.LBB6_30
.LBB6_27:
	bstrins.d	$a6, $zero, 3, 0
	add.d	$a1, $a6, $a1
.LBB6_28:                               # %for.body23.preheader
	alsl.d	$a2, $a1, $a2, 2
	addi.d	$a2, $a2, 4
	sub.d	$a1, $a7, $a1
	.p2align	4, , 16
.LBB6_29:                               # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	st.w	$a5, $a2, -4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB6_29
.LBB6_30:                               # %for.end30
	addi.d	$a1, $a0, -1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	st.w	$a1, $a4, %pc_lo12(NUM_BREAK_POINTS)
	move	$a1, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PRINT_CONSTANT)
	jr	$t8
.Lfunc_end6:
	.size	RESET_BP, .Lfunc_end6-RESET_BP
                                        # -- End function
	.globl	AT_BREAK_POINT                  # -- Begin function AT_BREAK_POINT
	.p2align	5
	.type	AT_BREAK_POINT,@function
AT_BREAK_POINT:                         # @AT_BREAK_POINT
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(NUM_BREAK_POINTS)
	ld.w	$fp, $a0, %pc_lo12(NUM_BREAK_POINTS)
	beqz	$fp, .LBB7_5
# %bb.1:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $s0, 32
	addi.d	$a2, $sp, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 32
	ld.w	$a0, $sp, 4
	add.w	$a2, $a0, $a1
	ori	$a0, $zero, 1
	pcalau12i	$a3, %pc_hi20(SORTED_BREAK_POINTS)
	addi.d	$a3, $a3, %pc_lo12(SORTED_BREAK_POINTS)
	pcalau12i	$a4, %pc_hi20(BREAK_POINTS)
	addi.d	$a4, $a4, %pc_lo12(BREAK_POINTS)
	ori	$a5, $zero, 1
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %if.end11
                                        #   in Loop: Header=BB7_3 Depth=1
	slt	$a7, $a1, $a7
	addi.w	$t0, $a6, 1
	addi.w	$a6, $a6, -1
	masknez	$t1, $fp, $a7
	maskeqz	$a6, $a6, $a7
	or	$fp, $a6, $t1
	masknez	$a6, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	blt	$fp, $a5, .LBB7_5
.LBB7_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a5, $fp
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srai.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a3, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	blt	$a7, $a1, .LBB7_2
# %bb.4:                                # %do.body
                                        #   in Loop: Header=BB7_3 Depth=1
	bge	$a7, $a2, .LBB7_2
	b	.LBB7_6
.LBB7_5:
	move	$a0, $zero
.LBB7_6:                                # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	AT_BREAK_POINT, .Lfunc_end7-AT_BREAK_POINT
                                        # -- End function
	.globl	RUN_IT                          # -- Begin function RUN_IT
	.p2align	5
	.type	RUN_IT,@function
RUN_IT:                                 # @RUN_IT
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
	move	$a2, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                # %while.body.i
                                        #   in Loop: Header=BB8_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB8_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a0, .LBB8_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB8_2 Depth=1
	beq	$a4, $a3, .LBB8_1
# %bb.4:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB8_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB8_6:                                # %if.else
	pcalau12i	$fp, %pc_hi20(RETURN_STATUS)
	st.w	$zero, $fp, %pc_lo12(RETURN_STATUS)
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	pcalau12i	$a0, %pc_hi20(START_ADDRESS)
	ld.w	$a0, $a0, %pc_lo12(START_ADDRESS)
	lu12i.w	$a1, 4095
	ori	$a1, $a1, 4095
	st.w	$a1, $s0, 8
	st.w	$a0, $s0, 32
	pcaddu18i	$ra, %call36(RESET_DEVICES)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(TRACE)
	ld.w	$a0, $s1, %pc_lo12(TRACE)
	lu12i.w	$a1, 15
	st.w	$a1, $s0, 36
	beqz	$a0, .LBB8_8
# %bb.7:                                # %if.then2
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
.LBB8_8:                                # %if.end
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	bnez	$a0, .LBB8_21
# %bb.9:                                # %land.rhs.preheader
	pcalau12i	$s2, %pc_hi20(NUM_BREAK_POINTS)
	pcalau12i	$a0, %pc_hi20(SORTED_BREAK_POINTS)
	addi.d	$s3, $a0, %pc_lo12(SORTED_BREAK_POINTS)
	pcalau12i	$a0, %pc_hi20(BREAK_POINTS)
	addi.d	$s4, $a0, %pc_lo12(BREAK_POINTS)
.LBB8_10:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
	ld.w	$s5, $s2, %pc_lo12(NUM_BREAK_POINTS)
	beqz	$s5, .LBB8_15
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.w	$a0, $s0, 32
	addi.d	$a2, $sp, 12
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 32
	ld.w	$a0, $sp, 12
	add.w	$a0, $a0, $a1
	ori	$a2, $zero, 1
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %if.end11.i
                                        #   in Loop: Header=BB8_13 Depth=2
	slt	$a4, $a1, $a4
	addi.w	$a5, $a3, 1
	addi.w	$a3, $a3, -1
	masknez	$a6, $s5, $a4
	maskeqz	$a3, $a3, $a4
	or	$s5, $a3, $a6
	masknez	$a3, $a5, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	blt	$s5, $a2, .LBB8_15
.LBB8_13:                               # %do.body.i
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a2, $s5
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $s3, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s4, $a4
	blt	$a4, $a1, .LBB8_12
# %bb.14:                               # %do.body.i
                                        #   in Loop: Header=BB8_13 Depth=2
	bge	$a4, $a0, .LBB8_12
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_15:                               # %while.body
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.w	$a1, $s1, %pc_lo12(TRACE)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(EXEC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(TRACE)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a1, .LBB8_18
# %bb.16:                               # %while.body
                                        #   in Loop: Header=BB8_10 Depth=1
	bnez	$a0, .LBB8_18
# %bb.17:                               # %if.then10
                                        #   in Loop: Header=BB8_10 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
.LBB8_18:                               # %if.end12
                                        #   in Loop: Header=BB8_10 Depth=1
	beqz	$a0, .LBB8_10
	b	.LBB8_21
.LBB8_19:                               # %while.end
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	bnez	$a0, .LBB8_21
# %bb.20:                               # %if.then15
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB8_21:                               # %if.end16
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
.Lfunc_end8:
	.size	RUN_IT, .Lfunc_end8-RUN_IT
                                        # -- End function
	.globl	PROCEED                         # -- Begin function PROCEED
	.p2align	5
	.type	PROCEED,@function
PROCEED:                                # @PROCEED
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
	move	$a2, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_1:                                # %while.body.i
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB9_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a0, .LBB9_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB9_2 Depth=1
	beq	$a4, $a3, .LBB9_1
# %bb.4:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB9_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB9_6:                                # %if.else
	pcalau12i	$fp, %pc_hi20(RETURN_STATUS)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a0, .LBB9_8
# %bb.7:                                # %if.then4
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB9_18
.LBB9_8:
	pcalau12i	$s0, %pc_hi20(TRACE)
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	pcalau12i	$s2, %pc_hi20(NUM_BREAK_POINTS)
	pcalau12i	$a0, %pc_hi20(SORTED_BREAK_POINTS)
	addi.d	$s3, $a0, %pc_lo12(SORTED_BREAK_POINTS)
	pcalau12i	$a0, %pc_hi20(BREAK_POINTS)
	addi.d	$s4, $a0, %pc_lo12(BREAK_POINTS)
.LBB9_9:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	ld.w	$a1, $s0, %pc_lo12(TRACE)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(EXEC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(TRACE)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a1, .LBB9_12
# %bb.10:                               # %do.body
                                        #   in Loop: Header=BB9_9 Depth=1
	bnez	$a0, .LBB9_12
# %bb.11:                               # %if.then9
                                        #   in Loop: Header=BB9_9 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
.LBB9_12:                               # %do.cond
                                        #   in Loop: Header=BB9_9 Depth=1
	bnez	$a0, .LBB9_18
# %bb.13:                               # %land.rhs
                                        #   in Loop: Header=BB9_9 Depth=1
	ld.w	$s5, $s2, %pc_lo12(NUM_BREAK_POINTS)
	beqz	$s5, .LBB9_9
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB9_9 Depth=1
	ld.w	$a0, $s1, 32
	addi.d	$a2, $sp, 12
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	ld.w	$a1, $sp, 12
	add.w	$a1, $a1, $a0
	ori	$a2, $zero, 1
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_15:                               # %if.end11.i
                                        #   in Loop: Header=BB9_16 Depth=2
	slt	$a4, $a0, $a4
	addi.w	$a5, $a3, 1
	addi.w	$a3, $a3, -1
	masknez	$a6, $s5, $a4
	maskeqz	$a3, $a3, $a4
	or	$s5, $a3, $a6
	masknez	$a3, $a5, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	blt	$s5, $a2, .LBB9_9
.LBB9_16:                               # %do.body.i
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a2, $s5
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $s3, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s4, $a4
	blt	$a4, $a0, .LBB9_15
# %bb.17:                               # %do.body.i
                                        #   in Loop: Header=BB9_16 Depth=2
	bge	$a4, $a1, .LBB9_15
.LBB9_18:                               # %if.end15
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	bnez	$a0, .LBB9_20
# %bb.19:                               # %if.then18
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a1, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(PRINT_ADDRESS)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %if.end20
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
.Lfunc_end9:
	.size	PROCEED, .Lfunc_end9-PROCEED
                                        # -- End function
	.globl	STEP                            # -- Begin function STEP
	.p2align	5
	.type	STEP,@function
STEP:                                   # @STEP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               # %while.body.i
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB10_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a0, .LBB10_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB10_2 Depth=1
	beq	$a4, $a3, .LBB10_1
# %bb.4:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB10_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB10_6:                               # %if.else
	pcalau12i	$fp, %pc_hi20(RETURN_STATUS)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a0, .LBB10_8
# %bb.7:                                # %if.then4
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB10_8:                               # %if.else6
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(EXEC)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a0, .LBB10_10
# %bb.9:                                # %if.end12
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_10:                              # %if.then10
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	STEP, .Lfunc_end10-STEP
                                        # -- End function
	.globl	HELP                            # -- Begin function HELP
	.p2align	5
	.type	HELP,@function
HELP:                                   # @HELP
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %while.body.i
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB11_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	beq	$a4, $a0, .LBB11_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB11_2 Depth=1
	beq	$a4, $a3, .LBB11_1
# %bb.4:                                # %REMOVE_WS.exit
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB11_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB11_6:                               # %if.else
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
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
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
.Lfunc_end11:
	.size	HELP, .Lfunc_end11-HELP
                                        # -- End function
	.globl	QUIT                            # -- Begin function QUIT
	.p2align	5
	.type	QUIT,@function
QUIT:                                   # @QUIT
# %bb.0:                                # %entry
	move	$a2, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 9
	ori	$a1, $zero, 32
	b	.LBB12_2
	.p2align	4, , 16
.LBB12_1:                               # %while.body.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB12_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	beq	$a3, $a0, .LBB12_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB12_2 Depth=1
	beq	$a3, $a1, .LBB12_1
# %bb.4:                                # %while.cond.i
	bnez	$a3, .LBB12_6
# %bb.5:                                # %if.else
	pcalau12i	$a0, %pc_hi20(RETURN_STATUS)
	ori	$a1, $zero, 3
	st.w	$a1, $a0, %pc_lo12(RETURN_STATUS)
	ret
.LBB12_6:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end12:
	.size	QUIT, .Lfunc_end12-QUIT
                                        # -- End function
	.globl	TRACE_P                         # -- Begin function TRACE_P
	.p2align	5
	.type	TRACE_P,@function
TRACE_P:                                # @TRACE_P
# %bb.0:                                # %entry
	move	$a2, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 9
	ori	$a1, $zero, 32
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_1:                               # %while.body.i
                                        #   in Loop: Header=BB13_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB13_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	beq	$a3, $a0, .LBB13_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB13_2 Depth=1
	beq	$a3, $a1, .LBB13_1
# %bb.4:                                # %while.cond.i
	bnez	$a3, .LBB13_7
# %bb.5:                                # %if.else
	pcalau12i	$a1, %pc_hi20(TRACE)
	ld.w	$a0, $a1, %pc_lo12(TRACE)
	beqz	$a0, .LBB13_8
# %bb.6:                                # %if.then2
	pcalau12i	$a0, %pc_hi20(.Lstr.28)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.28)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB13_7:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB13_8:                               # %if.else4
	ori	$a2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.Lstr.27)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.27)
	st.w	$a2, $a1, %pc_lo12(TRACE)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end13:
	.size	TRACE_P, .Lfunc_end13-TRACE_P
                                        # -- End function
	.globl	UNTRACE                         # -- Begin function UNTRACE
	.p2align	5
	.type	UNTRACE,@function
UNTRACE:                                # @UNTRACE
# %bb.0:                                # %entry
	move	$a2, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 9
	ori	$a1, $zero, 32
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_1:                               # %while.body.i
                                        #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB14_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	beq	$a3, $a0, .LBB14_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB14_2 Depth=1
	beq	$a3, $a1, .LBB14_1
# %bb.4:                                # %while.cond.i
	bnez	$a3, .LBB14_7
# %bb.5:                                # %if.else
	pcalau12i	$a1, %pc_hi20(TRACE)
	ld.w	$a0, $a1, %pc_lo12(TRACE)
	beqz	$a0, .LBB14_8
# %bb.6:                                # %if.else4
	pcalau12i	$a0, %pc_hi20(.Lstr.30)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.30)
	st.w	$zero, $a1, %pc_lo12(TRACE)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB14_7:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $a2
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB14_8:                               # %if.then2
	pcalau12i	$a0, %pc_hi20(.Lstr.29)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.29)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end14:
	.size	UNTRACE, .Lfunc_end14-UNTRACE
                                        # -- End function
	.globl	MODE                            # -- Begin function MODE
	.p2align	5
	.type	MODE,@function
MODE:                                   # @MODE
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 0
	ori	$a2, $zero, 9
	ori	$a3, $zero, 32
	b	.LBB15_2
	.p2align	4, , 16
.LBB15_1:                               # %while.body.i
                                        #   in Loop: Header=BB15_2 Depth=1
	addi.d	$a0, $a0, 1
.LBB15_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	beq	$a1, $a2, .LBB15_1
# %bb.3:                                # %while.cond.i
                                        #   in Loop: Header=BB15_2 Depth=1
	beq	$a1, $a3, .LBB15_1
# %bb.4:                                # %while.cond.i
	bnez	$a1, .LBB15_6
# %bb.5:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.31)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.31)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB15_6:                               # %if.else
	ld.bu	$a2, $a0, 1
	beqz	$a2, .LBB15_8
.LBB15_7:                               # %if.end
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	move	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB15_8:                               # %if.then5
	ori	$a2, $zero, 68
	beq	$a1, $a2, .LBB15_13
# %bb.9:                                # %if.then5
	ori	$a2, $zero, 73
	beq	$a1, $a2, .LBB15_12
# %bb.10:                               # %if.then5
	ori	$a2, $zero, 72
	bne	$a1, $a2, .LBB15_7
# %bb.11:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	lu12i.w	$a1, 1926
	ori	$a1, $a1, 1352
	st.w	$a1, $a0, %pc_lo12(TYPE_OUT_MODE)
	ret
.LBB15_12:                              # %sw.bb10
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ld.h	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(TYPE_OUT_MODE)
	addi.d	$a2, $a2, %pc_lo12(TYPE_OUT_MODE)
	st.h	$a1, $a2, 4
	st.w	$a0, $a2, 0
	ret
.LBB15_13:                              # %sw.bb8
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	lu12i.w	$a1, 1590
	ori	$a1, $a1, 1348
	st.w	$a1, $a0, %pc_lo12(TYPE_OUT_MODE)
	ret
.Lfunc_end15:
	.size	MODE, .Lfunc_end15-MODE
                                        # -- End function
	.globl	CAPITALIZE_STRING               # -- Begin function CAPITALIZE_STRING
	.p2align	5
	.type	CAPITALIZE_STRING,@function
CAPITALIZE_STRING:                      # @CAPITALIZE_STRING
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$s2, $zero
	ori	$s0, $zero, 25
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	addi.d	$s2, $s1, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s1, $a0, .LBB16_4
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s2
	ldx.bu	$a0, $fp, $s2
	addi.d	$a1, $a0, -97
	andi	$a1, $a1, 255
	bltu	$s0, $a1, .LBB16_1
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB16_2 Depth=1
	addi.d	$a0, $a0, -32
	stx.b	$a0, $fp, $s1
	b	.LBB16_1
.LBB16_4:                               # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	CAPITALIZE_STRING, .Lfunc_end16-CAPITALIZE_STRING
                                        # -- End function
	.globl	CALL_FUNCTION                   # -- Begin function CALL_FUNCTION
	.p2align	5
	.type	CALL_FUNCTION,@function
CALL_FUNCTION:                          # @CALL_FUNCTION
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	ori	$a3, $zero, 10
	bltu	$a3, $a0, .LBB17_8
# %bb.1:                                # %entry
	slli.d	$a0, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI17_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI17_0)
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a3, $a0
	jr	$a0
.LBB17_2:                               # %sw.bb
	ori	$a0, $zero, 32
	ori	$a3, $zero, 9
	b	.LBB17_4
	.p2align	4, , 16
.LBB17_3:                               # %while.body.i.i
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a1, $a1, 1
.LBB17_4:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	beq	$a4, $a0, .LBB17_3
# %bb.5:                                # %while.cond.i.i
                                        #   in Loop: Header=BB17_4 Depth=1
	beq	$a4, $a3, .LBB17_3
# %bb.6:                                # %REMOVE_WS.exit.i
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 0
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB17_44
# %bb.7:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB17_8:                               # %sw.epilog
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_9:                               # %sw.bb4
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(RUN_IT)
	jr	$t8
.LBB17_10:                              # %sw.bb9
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 9
	ori	$a2, $zero, 32
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_11:                              # %while.body.i.i41
                                        #   in Loop: Header=BB17_12 Depth=1
	addi.d	$a1, $a1, 1
.LBB17_12:                              # %while.cond.i.i39
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a0, .LBB17_11
# %bb.13:                               # %while.cond.i.i39
                                        #   in Loop: Header=BB17_12 Depth=1
	beq	$a3, $a2, .LBB17_11
# %bb.14:                               # %while.cond.i.i39
	bnez	$a3, .LBB17_41
# %bb.15:                               # %if.else.i47
	pcalau12i	$a1, %pc_hi20(TRACE)
	ld.w	$a0, $a1, %pc_lo12(TRACE)
	beqz	$a0, .LBB17_46
# %bb.16:                               # %if.else4.i49
	pcalau12i	$a0, %pc_hi20(.Lstr.30)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.30)
	st.w	$zero, $a1, %pc_lo12(TRACE)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB17_17:                              # %sw.bb2
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(EXAMINE)
	jr	$t8
.LBB17_18:                              # %sw.bb3
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(RESET_BP)
	jr	$t8
.LBB17_19:                              # %sw.bb7
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(PROCEED)
	jr	$t8
.LBB17_20:                              # %sw.bb1
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(SET_BP)
	jr	$t8
.LBB17_21:                              # %sw.bb5
	move	$a0, $a1
	move	$a1, $a2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(HELP)
	jr	$t8
.LBB17_22:                              # %sw.bb6
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 0
	ori	$a2, $zero, 9
	ori	$a3, $zero, 32
	b	.LBB17_24
	.p2align	4, , 16
.LBB17_23:                              # %while.body.i.i23
                                        #   in Loop: Header=BB17_24 Depth=1
	addi.d	$a1, $a1, 1
.LBB17_24:                              # %while.cond.i.i21
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a1, 0
	beq	$a0, $a2, .LBB17_23
# %bb.25:                               # %while.cond.i.i21
                                        #   in Loop: Header=BB17_24 Depth=1
	beq	$a0, $a3, .LBB17_23
# %bb.26:                               # %while.cond.i.i21
	bnez	$a0, .LBB17_42
# %bb.27:                               # %if.then.i27
	pcalau12i	$a0, %pc_hi20(.Lstr.31)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.31)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB17_28:                              # %sw.bb10
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 9
	ori	$a2, $zero, 32
	b	.LBB17_30
	.p2align	4, , 16
.LBB17_29:                              # %while.body.i.i55
                                        #   in Loop: Header=BB17_30 Depth=1
	addi.d	$a1, $a1, 1
.LBB17_30:                              # %while.cond.i.i53
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a0, .LBB17_29
# %bb.31:                               # %while.cond.i.i53
                                        #   in Loop: Header=BB17_30 Depth=1
	beq	$a3, $a2, .LBB17_29
# %bb.32:                               # %while.cond.i.i53
	bnez	$a3, .LBB17_41
# %bb.33:                               # %if.else.i62
	pcalau12i	$a0, %pc_hi20(RETURN_STATUS)
	ori	$a1, $zero, 3
	st.w	$a1, $a0, %pc_lo12(RETURN_STATUS)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_34:                              # %sw.bb8
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 9
	ori	$a2, $zero, 32
	b	.LBB17_36
	.p2align	4, , 16
.LBB17_35:                              # %while.body.i.i31
                                        #   in Loop: Header=BB17_36 Depth=1
	addi.d	$a1, $a1, 1
.LBB17_36:                              # %while.cond.i.i29
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a0, .LBB17_35
# %bb.37:                               # %while.cond.i.i29
                                        #   in Loop: Header=BB17_36 Depth=1
	beq	$a3, $a2, .LBB17_35
# %bb.38:                               # %while.cond.i.i29
	bnez	$a3, .LBB17_41
# %bb.39:                               # %if.else.i37
	pcalau12i	$a1, %pc_hi20(TRACE)
	ld.w	$a0, $a1, %pc_lo12(TRACE)
	beqz	$a0, .LBB17_51
# %bb.40:                               # %if.then2.i
	pcalau12i	$a0, %pc_hi20(.Lstr.28)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.28)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB17_41:                              # %if.then.i35
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB17_42:                              # %if.else.i26
	ld.bu	$a2, $a1, 1
	beqz	$a2, .LBB17_47
.LBB17_43:                              # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB17_44:                              # %if.else.i
	pcalau12i	$fp, %pc_hi20(RETURN_STATUS)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	beqz	$a0, .LBB17_52
# %bb.45:                               # %if.then4.i
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_46:                              # %if.then2.i51
	pcalau12i	$a0, %pc_hi20(.Lstr.29)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.29)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB17_47:                              # %if.then5.i
	ori	$a2, $zero, 68
	beq	$a0, $a2, .LBB17_55
# %bb.48:                               # %if.then5.i
	ori	$a2, $zero, 73
	beq	$a0, $a2, .LBB17_54
# %bb.49:                               # %if.then5.i
	ori	$a2, $zero, 72
	bne	$a0, $a2, .LBB17_43
# %bb.50:                               # %sw.bb.i
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	lu12i.w	$a1, 1926
	ori	$a1, $a1, 1352
	b	.LBB17_56
.LBB17_51:                              # %if.else4.i
	ori	$a2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.Lstr.27)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.27)
	st.w	$a2, $a1, %pc_lo12(TRACE)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB17_52:                              # %if.else6.i
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(EXEC)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	bnez	$a0, .LBB17_8
# %bb.53:                               # %if.then10.i
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(PRINT_INSTRUCTION)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_54:                              # %sw.bb10.i
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ld.h	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(TYPE_OUT_MODE)
	addi.d	$a2, $a2, %pc_lo12(TYPE_OUT_MODE)
	st.h	$a1, $a2, 4
	st.w	$a0, $a2, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_55:                              # %sw.bb8.i
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	lu12i.w	$a1, 1590
	ori	$a1, $a1, 1348
.LBB17_56:                              # %sw.bb.i
	st.w	$a1, $a0, %pc_lo12(TYPE_OUT_MODE)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	CALL_FUNCTION, .Lfunc_end17-CALL_FUNCTION
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_2-.LJTI17_0
	.word	.LBB17_20-.LJTI17_0
	.word	.LBB17_17-.LJTI17_0
	.word	.LBB17_18-.LJTI17_0
	.word	.LBB17_9-.LJTI17_0
	.word	.LBB17_21-.LJTI17_0
	.word	.LBB17_22-.LJTI17_0
	.word	.LBB17_19-.LJTI17_0
	.word	.LBB17_34-.LJTI17_0
	.word	.LBB17_10-.LJTI17_0
	.word	.LBB17_28-.LJTI17_0
                                        # -- End function
	.text
	.globl	DEBUGGER                        # -- Begin function DEBUGGER
	.p2align	5
	.type	DEBUGGER,@function
DEBUGGER:                               # @DEBUGGER
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(BREAK_POINTS)
	addi.d	$a0, $a0, %pc_lo12(BREAK_POINTS)
	ori	$a1, $zero, 255
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB18_3
# %bb.1:                                # %while.cond.preheader
	pcalau12i	$fp, %pc_hi20(RETURN_STATUS)
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	ori	$s2, $zero, 3
	bne	$a0, $s2, .LBB18_4
.LBB18_2:                               # %if.end68
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB18_3:                               # %if.then
	pcalau12i	$a0, %pc_hi20(RETURN_STATUS)
	st.w	$zero, $a0, %pc_lo12(RETURN_STATUS)
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	pcalau12i	$a1, %pc_hi20(START_ADDRESS)
	ld.w	$a1, $a1, %pc_lo12(START_ADDRESS)
	lu12i.w	$a2, 4095
	ori	$a2, $a2, 4095
	st.w	$a2, $a0, 8
	st.w	$a1, $a0, 32
	lu12i.w	$a1, 15
	st.w	$a1, $a0, 36
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	pcaddu18i	$t8, %call36(EXEC)
	jr	$t8
.LBB18_4:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s4, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(TYPE_OUT_MODE)
	addi.d	$s7, $a0, %pc_lo12(TYPE_OUT_MODE)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s8, $a0, %got_pc_lo12(stdin)
	ori	$s1, $zero, 9
	ori	$s3, $zero, 32
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$a0, $a0, %got_pc_lo12(REGISTER)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI18_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI18_0)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.41)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.41)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.40)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.40)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.39)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.39)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.38)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.38)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.37)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.37)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.36)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.36)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.35)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.35)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.34)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.34)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.33)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.33)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 25
	pcalau12i	$a0, %pc_hi20(COMMANDS)
	addi.d	$s0, $a0, %pc_lo12(COMMANDS)
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	b	.LBB18_9
.LBB18_5:                               # %sw.bb52
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_6:                               # %if.end67thread-pre-split
                                        #   in Loop: Header=BB18_9 Depth=1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB18_7:                               # %if.end67thread-pre-split
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	ori	$s3, $zero, 32
.LBB18_8:                               # %if.end67
                                        #   in Loop: Header=BB18_9 Depth=1
	beq	$a0, $s2, .LBB18_2
.LBB18_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_11 Depth 2
                                        #     Child Loop BB18_16 Depth 2
                                        #     Child Loop BB18_19 Depth 2
                                        #       Child Loop BB18_27 Depth 3
                                        #       Child Loop BB18_23 Depth 3
	st.w	$zero, $sp, 156
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(GET_LINE)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160
	b	.LBB18_11
	.p2align	4, , 16
.LBB18_10:                              # %while.body.i
                                        #   in Loop: Header=BB18_11 Depth=2
	addi.d	$s6, $s6, 1
	st.d	$s6, $sp, 160
.LBB18_11:                              # %while.cond.i
                                        #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	beq	$a0, $s1, .LBB18_10
# %bb.12:                               # %while.cond.i
                                        #   in Loop: Header=BB18_11 Depth=2
	beq	$a0, $s3, .LBB18_10
# %bb.13:                               # %while.cond.i
                                        #   in Loop: Header=BB18_9 Depth=1
	beqz	$a0, .LBB18_33
# %bb.14:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB18_9 Depth=1
	move	$s3, $zero
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_15:                              # %for.inc.i
                                        #   in Loop: Header=BB18_16 Depth=2
	addi.d	$s3, $fp, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$fp, $a0, .LBB18_18
.LBB18_16:                              # %for.body.i
                                        #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $s3
	ldx.bu	$a0, $s6, $s3
	addi.d	$a1, $a0, -97
	andi	$a1, $a1, 255
	bltu	$s5, $a1, .LBB18_15
# %bb.17:                               # %if.then.i
                                        #   in Loop: Header=BB18_16 Depth=2
	addi.d	$a0, $a0, -32
	stx.b	$a0, $s6, $fp
	b	.LBB18_15
	.p2align	4, , 16
.LBB18_18:                              # %for.body9.preheader
                                        #   in Loop: Header=BB18_9 Depth=1
	move	$s4, $zero
	.p2align	4, , 16
.LBB18_19:                              # %for.body9
                                        #   Parent Loop BB18_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_27 Depth 3
                                        #       Child Loop BB18_23 Depth 3
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	add.d	$fp, $s0, $a0
	ld.d	$s8, $fp, 8
	ld.d	$s6, $sp, 160
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bgeu	$a0, $s2, .LBB18_25
.LBB18_20:                              # %if.else22
                                        #   in Loop: Header=BB18_19 Depth=2
	ld.d	$s8, $fp, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$a0, $a0, 0
	bltu	$s3, $a0, .LBB18_30
# %bb.21:                               # %for.cond.preheader.i31
                                        #   in Loop: Header=BB18_19 Depth=2
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB18_29
# %bb.22:                               # %for.body.preheader.i35
                                        #   in Loop: Header=BB18_19 Depth=2
	bstrpick.d	$a0, $s7, 30, 0
	move	$a1, $s6
	.p2align	4, , 16
.LBB18_23:                              # %for.body.i37
                                        #   Parent Loop BB18_9 Depth=1
                                        #     Parent Loop BB18_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s8, 0
	ld.bu	$a3, $a1, 0
	bne	$a2, $a3, .LBB18_30
# %bb.24:                               # %for.cond.i42
                                        #   in Loop: Header=BB18_23 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$s8, $s8, 1
	bnez	$a0, .LBB18_23
	b	.LBB18_29
	.p2align	4, , 16
.LBB18_25:                              # %for.cond.preheader.i
                                        #   in Loop: Header=BB18_19 Depth=2
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB18_29
# %bb.26:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB18_19 Depth=2
	bstrpick.d	$a0, $s7, 30, 0
	move	$a1, $s6
	.p2align	4, , 16
.LBB18_27:                              # %for.body.i22
                                        #   Parent Loop BB18_9 Depth=1
                                        #     Parent Loop BB18_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s8, 0
	ld.bu	$a3, $a1, 0
	bne	$a2, $a3, .LBB18_20
# %bb.28:                               # %for.cond.i
                                        #   in Loop: Header=BB18_27 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$s8, $s8, 1
	bnez	$a0, .LBB18_27
.LBB18_29:                              # %for.inc37.sink.split
                                        #   in Loop: Header=BB18_19 Depth=2
	ld.w	$a0, $fp, 16
	add.d	$a1, $s6, $s7
	addi.d	$a2, $sp, 156
	pcaddu18i	$ra, %call36(CALL_FUNCTION)
	jirl	$ra, $ra, 0
.LBB18_30:                              # %for.inc37
                                        #   in Loop: Header=BB18_19 Depth=2
	ld.w	$a0, $sp, 156
	bltu	$s1, $s4, .LBB18_32
# %bb.31:                               # %for.inc37
                                        #   in Loop: Header=BB18_19 Depth=2
	addi.d	$s4, $s4, 1
	beqz	$a0, .LBB18_19
.LBB18_32:                              # %for.end39
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ori	$s2, $zero, 3
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ori	$s3, $zero, 32
	beqz	$a0, .LBB18_37
.LBB18_33:                              # %if.end45
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB18_8
.LBB18_34:                              # %if.then48
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	ori	$a1, $zero, 1
	st.w	$a1, $fp, %pc_lo12(RETURN_STATUS)
	bstrpick.d	$a1, $a0, 62, 55
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a1, $a1, 8
	sub.w	$s3, $a0, $a1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 13
	bltu	$a0, $s3, .LBB18_45
# %bb.35:                               # %if.then48
                                        #   in Loop: Header=BB18_9 Depth=1
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB18_36:                              # %sw.bb
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_37:                              # %if.then41
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a1, $sp, 160
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.32)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.32)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(RETURN_STATUS)
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB18_8
	b	.LBB18_34
.LBB18_38:                              # %sw.bb58
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_39:                              # %sw.bb50
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_40:                              # %sw.bb60
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_41:                              # %sw.bb62
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_42:                              # %sw.bb54
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_43:                              # %sw.bb56
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_44:                              # %sw.bb64
                                        #   in Loop: Header=BB18_9 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB18_6
.LBB18_45:                              # %sw.default
                                        #   in Loop: Header=BB18_9 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	b	.LBB18_7
.Lfunc_end18:
	.size	DEBUGGER, .Lfunc_end18-DEBUGGER
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI18_0:
	.word	.LBB18_36-.LJTI18_0
	.word	.LBB18_39-.LJTI18_0
	.word	.LBB18_5-.LJTI18_0
	.word	.LBB18_42-.LJTI18_0
	.word	.LBB18_43-.LJTI18_0
	.word	.LBB18_45-.LJTI18_0
	.word	.LBB18_45-.LJTI18_0
	.word	.LBB18_45-.LJTI18_0
	.word	.LBB18_45-.LJTI18_0
	.word	.LBB18_45-.LJTI18_0
	.word	.LBB18_38-.LJTI18_0
	.word	.LBB18_40-.LJTI18_0
	.word	.LBB18_41-.LJTI18_0
	.word	.LBB18_44-.LJTI18_0
                                        # -- End function
	.type	START_ADDRESS,@object           # @START_ADDRESS
	.bss
	.globl	START_ADDRESS
	.p2align	2, 0x0
START_ADDRESS:
	.word	0                               # 0x0
	.size	START_ADDRESS, 4

	.type	RETURN_STATUS,@object           # @RETURN_STATUS
	.data
	.globl	RETURN_STATUS
	.p2align	2, 0x0
RETURN_STATUS:
	.word	1                               # 0x1
	.size	RETURN_STATUS, 4

	.type	TYPE_OUT_MODE,@object           # @TYPE_OUT_MODE
	.globl	TYPE_OUT_MODE
	.p2align	2, 0x0
TYPE_OUT_MODE:
	.asciz	"Hex\000\000"
	.size	TYPE_OUT_MODE, 6

	.type	NUM_BREAK_POINTS,@object        # @NUM_BREAK_POINTS
	.bss
	.globl	NUM_BREAK_POINTS
	.p2align	2, 0x0
NUM_BREAK_POINTS:
	.word	0                               # 0x0
	.size	NUM_BREAK_POINTS, 4

	.type	TRACE,@object                   # @TRACE
	.globl	TRACE
	.p2align	2, 0x0
TRACE:
	.word	0                               # 0x0
	.size	TRACE, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected an decimal, found '%s'. Ignoring command.\n"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.size	.L.str.1, 55

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"_GLOBAL "
	.size	.L.str.2, 9

	.type	SYM_TAB,@object                 # @SYM_TAB
	.comm	SYM_TAB,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.size	.L.str.3, 51

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"   Found $%c. Ignoring command.\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Expected an hexidecimal, found '%s'. Ignoring command.\n"
	.size	.L.str.9, 56

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"   Found %s. Ignoring command.\n"
	.size	.L.str.11, 32

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Expected end of statement, found '%s'. Ignoring command.\n"
	.size	.L.str.12, 58

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Set "
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Register %s = "
	.size	.L.str.14, 15

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.space	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	".\n"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" is a legal memory [word] address.\n"
	.size	.L.str.17, 36

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Location %s = "
	.size	.L.str.18, 15

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\n"
	.size	.L.str.19, 2

	.type	BREAK_POINTS,@object            # @BREAK_POINTS
	.comm	BREAK_POINTS,68,4
	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Set B"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"= "
	.size	.L.str.22, 3

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Address specified "
	.size	.L.str.23, 19

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" out of range. No break point set.\n"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"All "
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" breakpoints are in use.\n"
	.size	.L.str.26, 26

	.type	SORTED_BREAK_POINTS,@object     # @SORTED_BREAK_POINTS
	.comm	SORTED_BREAK_POINTS,68,4
	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" is not a legal break point.\n"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Expected a number 0 - "
	.size	.L.str.28, 23

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	". Command ignored.\n"
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Break point "
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	" is not set. Command ignored.\n"
	.size	.L.str.31, 31

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Removed break point "
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Break point encountered at "
	.size	.L.str.33, 28

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Instr"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Expected valid mode (H,D, or I). Found %s. Ignoring command.\n"
	.size	.L.str.62, 62

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"S"
	.size	.L.str.63, 2

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"STEP"
	.size	.L.str.64, 5

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"B"
	.size	.L.str.65, 2

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"BREAK"
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"L"
	.size	.L.str.67, 2

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"LOC"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"RB"
	.size	.L.str.69, 3

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"RESET"
	.size	.L.str.70, 6

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"R"
	.size	.L.str.71, 2

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"RUN"
	.size	.L.str.72, 4

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"H"
	.size	.L.str.73, 2

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"HELP"
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"M"
	.size	.L.str.75, 2

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"MODE"
	.size	.L.str.76, 5

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"P"
	.size	.L.str.77, 2

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"PROCEED"
	.size	.L.str.78, 8

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"T"
	.size	.L.str.79, 2

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"TRACE"
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"U"
	.size	.L.str.81, 2

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"UNTRACE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Q"
	.size	.L.str.83, 2

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"QUIT"
	.size	.L.str.84, 5

	.type	COMMANDS,@object                # @COMMANDS
	.data
	.globl	COMMANDS
	.p2align	3, 0x0
COMMANDS:
	.dword	.L.str.63
	.dword	.L.str.64
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.65
	.dword	.L.str.66
	.word	2                               # 0x2
	.space	4
	.dword	.L.str.67
	.dword	.L.str.68
	.word	3                               # 0x3
	.space	4
	.dword	.L.str.69
	.dword	.L.str.70
	.word	4                               # 0x4
	.space	4
	.dword	.L.str.71
	.dword	.L.str.72
	.word	5                               # 0x5
	.space	4
	.dword	.L.str.73
	.dword	.L.str.74
	.word	6                               # 0x6
	.space	4
	.dword	.L.str.75
	.dword	.L.str.76
	.word	7                               # 0x7
	.space	4
	.dword	.L.str.77
	.dword	.L.str.78
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.79
	.dword	.L.str.80
	.word	9                               # 0x9
	.space	4
	.dword	.L.str.81
	.dword	.L.str.82
	.word	10                              # 0xa
	.space	4
	.dword	.L.str.83
	.dword	.L.str.84
	.word	11                              # 0xb
	.space	4
	.size	COMMANDS, 264

	.type	.L.str.85,@object               # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"%s> "
	.size	.L.str.85, 5

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"'%s' is not a legal command. Ignoring it.\n"
	.size	.L.str.86, 43

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"error code ="
	.size	.L.str.88, 13

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"    "
	.size	.L.str.89, 5

	.type	MAIN_ROUTINE,@object            # @MAIN_ROUTINE
	.comm	MAIN_ROUTINE,9,1
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Expected an type-in mode specifier ($C, $D, or $S)."
	.size	.Lstr, 52

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Expected an type-in mode specifier ($D, $S or $R)."
	.size	.Lstr.1, 51

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Expected an type-in mode specifier ($D)."
	.size	.Lstr.2, 41

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Expected an type-in mode specifier ($D or $S)."
	.size	.Lstr.3, 47

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Expected a valid register name (A,X,L,B,S,T,SW, or PC)."
	.size	.Lstr.4, 56

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"No break points set."
	.size	.Lstr.5, 21

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Can not continue. Instruction ignored."
	.size	.Lstr.7, 39

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"List of commands:"
	.size	.Lstr.8, 18

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"   Short      Long            Function\n"
	.size	.Lstr.9, 40

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"   B<addr>    BREAK<addr>     Set break point at <addr>."
	.size	.Lstr.10, 57

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"   B?         BREAK?          List out the break points."
	.size	.Lstr.11, 57

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"   H          HELP            Displays this table."
	.size	.Lstr.12, 51

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"   L<loc>     LOC<loc>        Examines contents of memory and registers."
	.size	.Lstr.13, 73

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"   L<loc>=<v> LOC<loc>=<v>    Examines contents of memory and registers."
	.size	.Lstr.14, 73

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"   M<mode>    MODE<mode>      Set type out mode."
	.size	.Lstr.15, 49

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"   P          PROCEED         Proceed from break point."
	.size	.Lstr.16, 56

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"   Q          QUIT            Exit Debugger."
	.size	.Lstr.17, 45

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"   R          RUN             Start execution at entry point."
	.size	.Lstr.18, 62

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"   RB<num>    RESET<num>      Remve break point <num>."
	.size	.Lstr.19, 55

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"   S          STEP            Execute one instruction."
	.size	.Lstr.20, 55

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"   T          TRACE           Trace the execution."
	.size	.Lstr.21, 51

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"   U          UNTRACE         Stop tracing the execution."
	.size	.Lstr.22, 58

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"<addr> = memory address or label."
	.size	.Lstr.23, 34

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"<loc>  = memory address, label or register."
	.size	.Lstr.24, 44

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"<mode> = H (hexidecimal), D (decimal), or I (instruction)."
	.size	.Lstr.25, 59

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"<v>    = hexidecimal number, decimal number, or 1 character.\n"
	.size	.Lstr.26, 62

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"Trace is now on."
	.size	.Lstr.27, 17

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"Trace is already on."
	.size	.Lstr.28, 21

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"Trace is already off."
	.size	.Lstr.29, 22

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"Trace is now off."
	.size	.Lstr.30, 18

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"Unexpected end of command. Ignoring command."
	.size	.Lstr.31, 45

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"Type HELP for the list of legal commands."
	.size	.Lstr.32, 42

	.type	.Lstr.33,@object                # @str.33
.Lstr.33:
	.asciz	"Segment length exceeded."
	.size	.Lstr.33, 25

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"Segment-protection violation."
	.size	.Lstr.34, 30

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	"Segment fault."
	.size	.Lstr.35, 15

	.type	.Lstr.36,@object                # @str.36
.Lstr.36:
	.asciz	"Page fault."
	.size	.Lstr.36, 12

	.type	.Lstr.37,@object                # @str.37
.Lstr.37:
	.asciz	"Aritmetic overflow."
	.size	.Lstr.37, 20

	.type	.Lstr.38,@object                # @str.38
.Lstr.38:
	.asciz	"Memory-protection violation."
	.size	.Lstr.38, 29

	.type	.Lstr.39,@object                # @str.39
.Lstr.39:
	.asciz	"Address out of range."
	.size	.Lstr.39, 22

	.type	.Lstr.40,@object                # @str.40
.Lstr.40:
	.asciz	"Privileged instruction in user mode."
	.size	.Lstr.40, 37

	.type	.Lstr.41,@object                # @str.41
.Lstr.41:
	.asciz	"Illegal instruction."
	.size	.Lstr.41, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TYPE_OUT_MODE
	.addrsig_sym SYM_TAB
