	.file	"fpcmp.c"
	.text
	.globl	load_file                       # -- Begin function load_file
	.p2align	5
	.type	load_file,@function
load_file:                              # @load_file
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.1:                                # %if.end
	move	$s1, $a0
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	beq	$a0, $s3, .LBB0_9
# %bb.2:                                # %if.end5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_9
# %bb.3:                                # %if.end11
	beqz	$s2, .LBB0_7
# %bb.4:                                # %if.end14
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.5:                                # %if.end19
	move	$s3, $a0
	stx.b	$zero, $a0, $s2
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	move	$a1, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_12
# %bb.6:                                # %if.end24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_7:
	move	$s3, $zero
.LBB0_8:                                # %cleanup
	st.d	$s2, $s0, 0
	move	$a0, $s3
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_9:                                # %if.then3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %if.then17
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %if.then22
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	load_file, .Lfunc_end0-load_file
                                        # -- End function
	.globl	diff_file                       # -- Begin function diff_file
	.p2align	5
	.type	diff_file,@function
diff_file:                              # @diff_file
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 144                  # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	fmov.d	$fs1, $fa1
	fmov.d	$fs0, $fa0
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(load_file)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a1, $sp, 112
	move	$a0, $s0
	pcaddu18i	$ra, %call36(load_file)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 120
	ld.d	$s1, $sp, 112
	move	$fp, $a0
	bne	$s3, $s1, .LBB1_2
# %bb.1:                                # %land.lhs.true
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_132
.LBB1_2:                                # %if.end
	add.d	$s0, $s6, $s3
	ori	$a0, $zero, 1
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	add.d	$s8, $fp, $s1
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	move	$s7, $s6
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	move	$s5, $fp
	blt	$s3, $a0, .LBB1_118
# %bb.3:                                # %lor.lhs.false.lr.ph
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $s3, $s6
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a4, $zero, 10
	ori	$a0, $zero, 0
	lu32i.d	$a0, 26624
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$fp, 2
	movgr2fr.d	$fs4, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fs4
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 48
	fcmp.ceq.d	$fcc0, $fs1, $fs4
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_4:                                # %if.then39
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$s6, $s0, .LBB1_126
.LBB1_5:                                # %land.lhs.true45
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $s6, 0
	ld.bu	$a1, $s1, 0
	bne	$a0, $a1, .LBB1_126
.LBB1_6:                                # %if.then21
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s7, $s6, 1
	addi.d	$s5, $s1, 1
.LBB1_7:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$s1, $s5
	move	$s6, $s7
	bgeu	$s7, $s0, .LBB1_118
.LBB1_8:                                # %lor.lhs.false
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_54 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_67 Depth 2
                                        #     Child Loop BB1_76 Depth 2
                                        #     Child Loop BB1_81 Depth 2
                                        #     Child Loop BB1_92 Depth 2
	bgeu	$s1, $s8, .LBB1_123
# %bb.9:                                # %if.end13
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$s3, $s6, 0
	ld.bu	$s4, $s1, 0
	bne	$s3, $s4, .LBB1_14
# %bb.10:                               # %land.lhs.true17
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_6
# %bb.11:                               # %lor.lhs.false19
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $s3, -48
	bltu	$a0, $a4, .LBB1_14
# %bb.12:                               # %isPossibleStartOfNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	ori	$a0, $zero, 46
	bltu	$a0, $s3, .LBB1_6
# %bb.13:                               # %isPossibleStartOfNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB1_6
	.p2align	4, , 16
.LBB1_14:                               # %if.end23
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_18
# %bb.15:                               # %land.rhs.lr.ph.i71
                                        #   in Loop: Header=BB1_8 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	bnez	$a1, .LBB1_26
# %bb.16:                               # %land.rhs.lr.ph.i90.thread348
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	move	$s3, $s6
	move	$s4, $s1
	ori	$a4, $zero, 10
	ori	$a5, $zero, 9
	beqz	$a1, .LBB1_36
# %bb.17:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s7, $s6
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_4
# %bb.19:                               # %land.rhs.lr.ph.i109
                                        #   in Loop: Header=BB1_8 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	move	$s3, $s6
	beqz	$a1, .LBB1_24
# %bb.20:                               # %while.body.peel.i114
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s3, $s6, 1
	beq	$s3, $s0, .LBB1_24
	.p2align	4, , 16
.LBB1_21:                               # %land.rhs.i117
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s3, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB1_24
# %bb.22:                               # %while.body.i121
                                        #   in Loop: Header=BB1_21 Depth=2
	addi.d	$s3, $s3, 1
	bne	$s3, $s0, .LBB1_21
# %bb.23:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB1_24:                               # %land.rhs.lr.ph.i128
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	ori	$a4, $zero, 10
	ori	$a5, $zero, 9
	bnez	$a1, .LBB1_32
# %bb.25:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s4, $s1
	b	.LBB1_36
.LBB1_26:                               # %while.body.peel.i76
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s7, $s6, 1
	beq	$s7, $s0, .LBB1_46
	.p2align	4, , 16
.LBB1_27:                               # %land.rhs.i79
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB1_30
# %bb.28:                               # %while.body.i83
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$s7, $s7, 1
	bne	$s7, $s0, .LBB1_27
# %bb.29:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
.LBB1_30:                               # %land.rhs.lr.ph.i90
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	ori	$a4, $zero, 10
	bnez	$a1, .LBB1_53
# %bb.31:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $s1
	b	.LBB1_7
.LBB1_32:                               # %while.body.peel.i133
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s4, $s1, 1
	beq	$s4, $s8, .LBB1_36
	.p2align	4, , 16
.LBB1_33:                               # %land.rhs.i136
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s4, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB1_36
# %bb.34:                               # %while.body.i140
                                        #   in Loop: Header=BB1_33 Depth=2
	addi.d	$s4, $s4, 1
	bne	$s4, $s8, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_36:                               # %if.end37
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_4
# %bb.37:                               # %if.end54
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s3
	bgeu	$s3, $s0, .LBB1_39
# %bb.38:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $s3, 0
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	add.d	$a0, $s3, $a0
.LBB1_39:                               # %if.end.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s0, .LBB1_58
# %bb.40:                               # %land.rhs.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	bltu	$a5, $a2, .LBB1_48
# %bb.41:                               # %while.body.i148.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB1_42:                               # %while.body.i148
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB1_57
# %bb.43:                               # %land.rhs.i144
                                        #   in Loop: Header=BB1_42 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	addi.d	$a0, $a0, 1
	bgeu	$a5, $a2, .LBB1_42
# %bb.44:                               # %land.lhs.true5.i.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s7, $a0, -1
	move	$a0, $s7
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB1_49
.LBB1_45:                               # %if.end20.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bnez	$s7, .LBB1_60
	b	.LBB1_58
.LBB1_46:                               # %land.rhs.lr.ph.i90.thread
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	bnez	$a1, .LBB1_52
# %bb.47:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $s1
	ori	$a4, $zero, 10
	b	.LBB1_7
.LBB1_48:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s7, $zero
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB1_45
.LBB1_49:                               # %while.cond10.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	.p2align	4, , 16
.LBB1_50:                               # %while.cond10.i
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s7, $a1
	bgeu	$a1, $s0, .LBB1_59
# %bb.51:                               # %land.rhs13.i
                                        #   in Loop: Header=BB1_50 Depth=2
	ld.bu	$a0, $s7, 0
	addi.d	$a2, $a0, -48
	addi.d	$a1, $s7, 1
	move	$a0, $s7
	bltu	$a2, $a4, .LBB1_50
	b	.LBB1_60
.LBB1_52:                               #   in Loop: Header=BB1_8 Depth=1
	ori	$a4, $zero, 10
.LBB1_53:                               # %while.body.peel.i95
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $s1, 1
	beq	$s5, $s8, .LBB1_7
	.p2align	4, , 16
.LBB1_54:                               # %land.rhs.i98
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s5, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB1_7
# %bb.55:                               # %while.body.i102
                                        #   in Loop: Header=BB1_54 Depth=2
	addi.d	$s5, $s5, 1
	bne	$s5, $s8, .LBB1_54
# %bb.56:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_7
.LBB1_57:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s0
	move	$s7, $s0
	bnez	$s7, .LBB1_60
.LBB1_58:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s7, $zero
	b	.LBB1_71
.LBB1_59:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s7
.LBB1_60:                               # %if.end22.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s0, .LBB1_71
# %bb.61:                               # %land.lhs.true25.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, -68
	andi	$a1, $a1, 222
	bnez	$a1, .LBB1_71
# %bb.62:                               # %if.then28.i
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s0, .LBB1_64
# %bb.63:                               # %land.lhs.true32.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a3, $a2, -43
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, -45
	sltui	$a2, $a2, 1
	addi.d	$a0, $a0, 2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
.LBB1_64:                               # %if.end37.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a1, $s0, .LBB1_71
# %bb.65:                               # %land.rhs41.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -48
	bltu	$a5, $a0, .LBB1_71
# %bb.66:                               # %while.cond38.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB1_67:                               # %while.cond38.i
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB1_70
# %bb.68:                               # %land.rhs41.i
                                        #   in Loop: Header=BB1_67 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	addi.d	$a0, $a0, 1
	bltu	$a1, $a4, .LBB1_67
# %bb.69:                               # %AdvanceNumber.exit.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s7, $a0, -1
	b	.LBB1_71
.LBB1_70:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s7, $s0
.LBB1_71:                               # %AdvanceNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s4
	bgeu	$s4, $s8, .LBB1_73
# %bb.72:                               # %land.lhs.true.i211
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $s4, 0
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	add.d	$a0, $s4, $a0
.LBB1_73:                               # %if.end.i154
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s8, .LBB1_5
# %bb.74:                               # %land.rhs.preheader.i158
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	bltu	$a5, $a2, .LBB1_79
# %bb.75:                               # %while.body.i208.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB1_76:                               # %while.body.i208
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB1_83
# %bb.77:                               # %land.rhs.i161
                                        #   in Loop: Header=BB1_76 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	addi.d	$a0, $a0, 1
	bgeu	$a5, $a2, .LBB1_76
# %bb.78:                               # %land.lhs.true5.i166.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $a0, -1
	move	$a0, $s5
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB1_80
	b	.LBB1_84
.LBB1_79:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $zero
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB1_84
.LBB1_80:                               # %while.cond10.i201.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	.p2align	4, , 16
.LBB1_81:                               # %while.cond10.i201
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $a1
	bgeu	$a1, $s8, .LBB1_95
# %bb.82:                               # %land.rhs13.i205
                                        #   in Loop: Header=BB1_81 Depth=2
	ld.bu	$a0, $s5, 0
	addi.d	$a2, $a0, -48
	addi.d	$a1, $s5, 1
	move	$a0, $s5
	bltu	$a2, $a4, .LBB1_81
	b	.LBB1_85
.LBB1_83:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s8
	move	$s5, $s8
.LBB1_84:                               # %if.end20.i168
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s5, .LBB1_5
.LBB1_85:                               # %if.end22.i172
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s8, .LBB1_96
.LBB1_86:                               # %land.lhs.true25.i176
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, -68
	andi	$a1, $a1, 222
	bnez	$a1, .LBB1_96
# %bb.87:                               # %if.then28.i179
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s8, .LBB1_89
# %bb.88:                               # %land.lhs.true32.i196
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a3, $a2, -43
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, -45
	sltui	$a2, $a2, 1
	addi.d	$a0, $a0, 2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
.LBB1_89:                               # %if.end37.i182
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a1, $s8, .LBB1_96
# %bb.90:                               # %land.rhs41.preheader.i185
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -48
	bltu	$a5, $a0, .LBB1_96
# %bb.91:                               # %while.cond38.i193.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB1_92:                               # %while.cond38.i193
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB1_117
# %bb.93:                               # %land.rhs41.i188
                                        #   in Loop: Header=BB1_92 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	addi.d	$a0, $a0, 1
	bltu	$a1, $a4, .LBB1_92
# %bb.94:                               # %AdvanceNumber.exit216.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $a0, -1
	bnez	$s7, .LBB1_97
	b	.LBB1_5
.LBB1_95:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s5
	bltu	$a0, $s8, .LBB1_86
.LBB1_96:                               # %AdvanceNumber.exit216
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s7, .LBB1_5
.LBB1_97:                               # %AdvanceNumber.exit216
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s5, .LBB1_5
# %bb.98:                               # %if.end69
                                        #   in Loop: Header=BB1_8 Depth=1
	sub.d	$s6, $s7, $s3
	sub.d	$a0, $s5, $s4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bne	$s6, $a0, .LBB1_100
# %bb.99:                               # %land.lhs.true.i221
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 10
	beqz	$a0, .LBB1_7
.LBB1_100:                              # %if.end.i218
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $sp, 136
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	addi.d	$a1, $sp, 128
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136
	ld.bu	$a0, $s1, 0
	ori	$a0, $a0, 32
	fmov.d	$fs3, $fa0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_102
# %bb.101:                              # %if.then12.i
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $s6, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a1, $s3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s1, $s3
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 101
	stx.b	$a1, $s6, $a0
	addi.d	$a1, $sp, 136
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	fmov.d	$fs2, $fa0
	sub.d	$a0, $a0, $s6
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_103
.LBB1_102:                              #   in Loop: Header=BB1_8 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
.LBB1_103:                              # %if.end25.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s1, $sp, 128
	ld.bu	$a0, $s1, 0
	ori	$a0, $a0, 32
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_105
# %bb.104:                              # %if.then33.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a1, $s4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s1, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 101
	stx.b	$a1, $s6, $a0
	addi.d	$a1, $sp, 128
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	fmov.d	$fs3, $fa0
	sub.d	$a0, $a0, $s6
	add.d	$s1, $s4, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_105:                              # %if.end51.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ori	$a4, $zero, 10
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB1_148
# %bb.106:                              # %if.end51.i
                                        #   in Loop: Header=BB1_8 Depth=1
	beq	$s1, $s4, .LBB1_148
# %bb.107:                              # %if.end63.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs2, $fs3
	bcnez	$fcc0, .LBB1_7
# %bb.108:                              # %if.end67.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 48
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB1_110
# %bb.109:                              # %lor.lhs.false70.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fsub.d	$fa0, $fs2, $fs3
	fabs.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_7
.LBB1_110:                              # %if.then73.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs3, $fs4
	bcnez	$fcc0, .LBB1_112
# %bb.111:                              # %if.then74.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fdiv.d	$fa0, $fs2, $fs3
	b	.LBB1_114
.LBB1_112:                              # %if.else.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs2, $fs4
	fmov.d	$fa0, $fs4
	bcnez	$fcc0, .LBB1_115
# %bb.113:                              # %if.then77.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fdiv.d	$fa0, $fs3, $fs2
.LBB1_114:                              # %if.end82.i
                                        #   in Loop: Header=BB1_8 Depth=1
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fabs.d	$fa0, $fa0
.LBB1_115:                              # %if.end82.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB1_149
# %bb.116:                              # %if.end82.i
                                        #   in Loop: Header=BB1_8 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_7
	b	.LBB1_149
.LBB1_117:                              #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $s8
	bnez	$s7, .LBB1_97
	b	.LBB1_5
.LBB1_118:                              # %if.then8.thread
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_122
.LBB1_119:                              # %skip_whitespace.exit
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s5, $s8, .LBB1_121
# %bb.120:                              # %land.rhs.lr.ph.i52
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a2, $a0, $a1
	lu12i.w	$a1, 2
	and	$a2, $a2, $a1
	bnez	$a2, .LBB1_133
.LBB1_121:
	move	$s6, $s7
	move	$s1, $s5
	b	.LBB1_127
.LBB1_122:
	move	$s6, $s7
	move	$s1, $s5
	b	.LBB1_126
.LBB1_123:                              # %if.then8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_126
# %bb.124:                              # %land.rhs.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	bnez	$a1, .LBB1_139
# %bb.125:
	move	$s5, $s1
	move	$s7, $s6
	b	.LBB1_119
.LBB1_126:
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
.LBB1_127:                              # %while.end
	bgeu	$s6, $s0, .LBB1_129
# %bb.128:                              # %while.end
	bltu	$s1, $s8, .LBB1_143
.LBB1_129:                              # %if.end90
	bltu	$s6, $s0, .LBB1_144
# %bb.130:                              # %if.end90
	bltu	$s1, $s8, .LBB1_144
# %bb.131:
	move	$s1, $zero
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_146
.LBB1_132:
	move	$s1, $zero
	b	.LBB1_146
.LBB1_133:                              # %while.body.peel.i57
	addi.d	$s1, $s5, 1
	beq	$s1, $s8, .LBB1_138
# %bb.134:                              # %land.rhs.i60.preheader
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a2, $fp
	sub.d	$a2, $a2, $s5
	add.d	$a2, $s5, $a2
	.p2align	4, , 16
.LBB1_135:                              # %land.rhs.i60
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s1, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB1_138
# %bb.136:                              # %while.body.i64
                                        #   in Loop: Header=BB1_135 Depth=1
	addi.d	$s1, $s1, 1
	bne	$s1, $s8, .LBB1_135
# %bb.137:
	move	$s6, $s7
	move	$s1, $a2
	b	.LBB1_127
.LBB1_138:
	move	$s6, $s7
	b	.LBB1_127
.LBB1_139:                              # %while.body.peel.i
	addi.d	$s7, $s6, 1
	beq	$s7, $s0, .LBB1_147
	.p2align	4, , 16
.LBB1_140:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s7, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB1_147
# %bb.141:                              # %while.body.i
                                        #   in Loop: Header=BB1_140 Depth=1
	addi.d	$s7, $s7, 1
	bne	$s7, $s0, .LBB1_140
# %bb.142:
	move	$s5, $s1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_119
.LBB1_143:                              # %if.then85
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	ld.b	$a3, $s6, 0
	ld.b	$a4, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_145
.LBB1_144:                              # %if.then94
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_145:                              # %cleanup105
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(dump_inputs)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
.LBB1_146:                              # %cleanup105
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fld.d	$fs4, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB1_147:
	move	$s5, $s1
	b	.LBB1_119
.LBB1_148:                              # %if.then57.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	ld.b	$a3, $s3, 0
	ld.b	$a4, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_146
.LBB1_149:                              # %if.then88.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	fsub.d	$fa1, $fs2, $fs3
	movfr2gr.d	$a1, $fa1
	bstrpick.d	$a5, $a1, 62, 0
	movfr2gr.d	$a3, $fs2
	movfr2gr.d	$a4, $fs3
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	fst.d	$fs0, $sp, 0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_146
.Lfunc_end1:
	.size	diff_file, .Lfunc_end1-diff_file
                                        # -- End function
	.p2align	5                               # -- Begin function dump_inputs
	.type	dump_inputs,@function
dump_inputs:                            # @dump_inputs
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
# %bb.1:                                # %for.body.lr.ph.i.i
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 6
	move	$a2, $s0
	.p2align	4, , 16
.LBB2_2:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB2_5
# %bb.3:                                # %for.cond.i.i
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$a2, $a2, 1
	bnez	$s1, .LBB2_2
.LBB2_4:                                # %if.else.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_6
	b	.LBB2_9
.LBB2_5:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_9
.LBB2_6:                                # %for.body.lr.ph.i.i3
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 6
	move	$a2, $fp
	.p2align	4, , 16
.LBB2_7:                                # %for.body.i.i5
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB2_10
# %bb.8:                                # %for.cond.i.i11
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$a2, $a2, 1
	bnez	$s0, .LBB2_7
.LBB2_9:                                # %if.else.i14
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB2_10:                               # %if.then.i16
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end2:
	.size	dump_inputs, .Lfunc_end2-dump_inputs
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	usage                           # -- Begin function usage
	.p2align	5
	.type	usage,@function
usage:                                  # @usage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 247
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	usage, .Lfunc_end3-usage
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(g_program)
	ori	$s2, $zero, 1
	st.d	$a1, $a0, %pc_lo12(g_program)
	bne	$s0, $s2, .LBB4_2
# %bb.1:
	movgr2fr.d	$fs1, $zero
	move	$s4, $zero
	move	$s3, $zero
	fmov.d	$fs0, $fs1
	b	.LBB4_14
.LBB4_2:                                # %for.body.preheader
	move	$s3, $zero
	move	$s4, $zero
	ori	$s2, $zero, 1
	movgr2fr.d	$fs0, $zero
	ori	$s5, $zero, 45
	ori	$s6, $zero, 2
	ori	$s7, $zero, 114
	ori	$s8, $zero, 105
	fmov.d	$fs1, $fs0
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	ori	$s3, $zero, 1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB4_13
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s2, 3
	ldx.d	$s1, $fp, $a0
	ld.bu	$a0, $s1, 0
	bne	$a0, $s5, .LBB4_14
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_16
# %bb.6:                                # %if.end9
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $s1, 1
	beq	$a0, $s7, .LBB4_9
# %bb.7:                                # %if.end9
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$a0, $s8, .LBB4_3
# %bb.8:                                # %if.end9
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB4_16
.LBB4_9:                                # %sw.bb
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB4_18
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB4_17
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_17
# %bb.12:                               # %if.end28
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $s1, 1
	addi.d	$a0, $a0, -97
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fs1, $fs1, $fa0, $fcc0
	fsel	$fs0, $fa0, $fs0, $fcc0
	ori	$s4, $zero, 1
	addi.w	$s2, $s2, 1
	bne	$s2, $s0, .LBB4_4
.LBB4_13:
	move	$s2, $s0
.LBB4_14:                               # %for.end
	addi.w	$a0, $s2, 2
	bne	$a0, $s0, .LBB4_19
# %bb.15:                               # %if.end45
	alsl.d	$a1, $s2, $fp, 3
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a1, $a1, 8
	andi	$a2, $s4, 1
	andi	$a3, $s3, 1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(diff_file)
	jr	$t8
.LBB4_16:                               # %if.then7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %if.then24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	alsl.d	$a1, $s2, $fp, 3
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_18:                               # %if.then14
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %if.then43
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: error: unable to open '%s'\n"
	.size	.L.str.1, 32

	.type	g_program,@object               # @g_program
	.bss
	.globl	g_program
	.p2align	3, 0x0
g_program:
	.dword	0
	.size	g_program, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s: error: unable to seek '%s'\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: error: unable to allocate buffer for '%s'\n"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: error: unable to read data for '%s'\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: Comparison failed, textual difference between '%c' and '%c'\n"
	.size	.L.str.5, 65

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Comparison failed, unexpected end of one of the files\n"
	.size	.L.str.6, 59

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"usage: %s [-a VALUE] [-r VALUE] [-i] <path-A> <path-B>\n\n"
	.size	.L.str.7, 57

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Search two text files for differences.\nIf either -a or -r is specified (even if zero), floating numbers are parsed and considered equal if neither the absolute nor relative tolerance is exceeded.\nThe -i switch also ignores whitespace differences.\n"
	.size	.L.str.8, 248

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"error: invalid argument '%s'\n\n"
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"error: missing argument to '%s'\n\n"
	.size	.L.str.10, 34

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"error: invalid argument to '%s': '%s'\n\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"error: invalid number of arguments\n\n"
	.size	.L.str.12, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s: FP Comparison failed, not a numeric difference between '%c' and '%c'\n"
	.size	.L.str.13, 74

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s: Compared: %e and %e\nabs. diff = %e rel.diff = %e\nOut of tolerance: rel/abs: %e/%e\n"
	.size	.L.str.14, 87

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Input 1"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Input 2"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\n%s: Contains binary data.\n"
	.size	.L.str.17, 28

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n%s:\n%s"
	.size	.L.str.18, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
