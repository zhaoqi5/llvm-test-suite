	.file	"makedent.c"
	.text
	.globl	makedent                        # -- Begin function makedent
	.p2align	5
	.type	makedent,@function
makedent:                               # @makedent
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	ldx.bu	$a1, $s0, $a0
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB0_2
# %bb.1:                                # %if.then
	stx.b	$zero, $s0, $a0
.LBB0_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s3, $a0, %got_pc_lo12(hashheader)
	ld.b	$a1, $s3, 68
	st.d	$zero, $fp, 0
	lu12i.w	$a0, 16384
	st.d	$a0, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(index)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB0_4
# %bb.3:                                # %if.then15
	st.b	$zero, $s1, 0
.LBB0_4:                                # %if.end16
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 100
	ori	$a3, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_49
# %bb.5:                                # %lor.lhs.false
	ori	$a0, $zero, 2
	move	$a1, $s0
	blt	$s2, $a0, .LBB0_48
# %bb.6:                                # %land.rhs.lr.ph.i
	ld.bu	$a3, $sp, 16
	move	$a1, $s0
	beqz	$a3, .LBB0_14
# %bb.7:                                # %while.body.i.preheader
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 2
	move	$a1, $s0
	.p2align	4, , 16
.LBB0_8:                                # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	ext.w.b	$a4, $a3
	bltz	$a4, .LBB0_10
# %bb.9:                                # %if.then.i
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a4, $a1, 1
	st.b	$a3, $a1, 0
	move	$a1, $a4
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_10:                               # %if.else.i
                                        #   in Loop: Header=BB0_8 Depth=1
	andi	$a3, $a3, 127
	alsl.d	$a4, $a3, $a3, 2
	alsl.d	$a3, $a4, $a3, 1
	add.d	$a3, $s3, $a3
	addi.d	$a4, $a3, 2022
	addi.d	$a3, $a1, -1
	.p2align	4, , 16
.LBB0_11:                               # %while.cond21.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$a1, $a3, 1
	addi.d	$a4, $a4, 1
	st.b	$a5, $a3, 1
	move	$a3, $a1
	bnez	$a5, .LBB0_11
.LBB0_12:                               # %if.end29.i
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$a2, $s2, .LBB0_48
# %bb.13:                               # %land.rhs.i
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a3, $a0, 0
	addi.w	$s2, $s2, -1
	bnez	$a3, .LBB0_8
.LBB0_14:                               # %ichartostr.exit
	st.b	$zero, $a1, 0
	ld.bu	$s5, $sp, 16
	beqz	$s5, .LBB0_28
# %bb.15:                               # %for.body.preheader
	add.d	$s2, $s3, $s5
	ld.bu	$a0, $s2, 982
	beqz	$a0, .LBB0_23
# %bb.16:                               # %for.inc.peel
	ld.bu	$a1, $sp, 17
	beqz	$a1, .LBB0_24
# %bb.17:                               # %for.body.peel.next
	addi.d	$a0, $sp, 18
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_18:                               # %for.body.for.inc_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.bu	$a1, $a0, 0
.LBB0_19:                               # %for.inc
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB0_24
.LBB0_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s3, $a1
	ld.bu	$a2, $a1, 982
	bnez	$a2, .LBB0_18
# %bb.21:                               # %if.then32
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB0_23
# %bb.22:                               # %lor.lhs.false40
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB0_19
.LBB0_23:                               # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	b	.LBB0_54
.LBB0_24:                               # %for.body.i.preheader
	lu12i.w	$s4, 196608
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 16
	lu12i.w	$a2, 65536
	.p2align	4, , 16
.LBB0_25:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $s5
	ld.bu	$a3, $a3, 1438
	bnez	$a3, .LBB0_41
# %bb.26:                               # %for.inc.i
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.bu	$s5, $a1, 1
	addi.d	$a1, $a1, 1
	bnez	$s5, .LBB0_25
# %bb.27:
	move	$s4, $a2
	b	.LBB0_29
.LBB0_28:                               # %for.end.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$s4, 65536
.LBB0_29:                               # %whatcap.exit
	ld.d	$a1, $fp, 16
	addi.w	$a2, $a0, 0
	or	$a1, $a1, $s4
	ori	$a3, $zero, 100
	st.d	$a1, $fp, 16
	bge	$a2, $a3, .LBB0_50
# %bb.30:                               # %if.end60
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mymalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB0_53
# %bb.31:                               # %if.end67
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	lu12i.w	$a1, 196608
	and	$a0, $a0, $a1
	beq	$a0, $a1, .LBB0_33
# %bb.32:                               # %if.then75
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(chupcase)
	jirl	$ra, $ra, 0
.LBB0_33:                               # %if.end77
	beqz	$s1, .LBB0_40
# %bb.34:                               # %if.end81
	addi.d	$s4, $s1, 1
	ori	$s1, $zero, 10
	ori	$s2, $zero, 26
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	ori	$s6, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	ld.bu	$a2, $s4, 0
	beqz	$a2, .LBB0_40
	.p2align	4, , 16
.LBB0_35:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	beq	$a2, $s1, .LBB0_40
# %bb.36:                               # %while.body
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$a0, $a2, -65
	bltu	$s2, $a0, .LBB0_39
# %bb.37:                               # %if.then95
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a1, $fp, 16
	sll.d	$a0, $s6, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $fp, 16
.LBB0_38:                               # %if.end101
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.bu	$a0, $s4, 1
	ld.bu	$a1, $s3, 68
	addi.d	$a2, $s4, 1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	addi.d	$a1, $s4, 2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s4, $a0, $a2
	ld.bu	$a2, $s4, 0
	bnez	$a2, .LBB0_35
	b	.LBB0_40
.LBB0_39:                               # %if.else
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a0, $s5, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_38
.LBB0_40:                               # %cleanup.loopexit
	move	$a0, $zero
	b	.LBB0_56
.LBB0_41:                               # %for.body6.i.preheader
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_42:                               # %for.body6.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $s5
	ld.bu	$a3, $a3, 1210
	bnez	$a3, .LBB0_29
# %bb.43:                               # %for.cond4.i
                                        #   in Loop: Header=BB0_42 Depth=1
	ldx.bu	$s5, $a1, $a2
	addi.d	$a2, $a2, 1
	bnez	$s5, .LBB0_42
# %bb.44:                               # %if.then18.i
	ld.bu	$a1, $s2, 1210
	beqz	$a1, .LBB0_52
# %bb.45:                               # %for.cond24.i.preheader
	addi.d	$a2, $sp, 17
	lu12i.w	$a1, 131072
	.p2align	4, , 16
.LBB0_46:                               # %for.cond24.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	beqz	$a3, .LBB0_57
# %bb.47:                               # %for.body28.i
                                        #   in Loop: Header=BB0_46 Depth=1
	add.d	$a3, $s3, $a3
	ld.bu	$a3, $a3, 1210
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB0_46
	b	.LBB0_29
.LBB0_48:                               # %ichartostr.exit.thread
	st.b	$zero, $a1, 0
.LBB0_49:                               # %if.then22
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a4, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 158
	b	.LBB0_51
.LBB0_50:                               # %if.then58
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a4, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 188
.LBB0_51:                               # %cleanup
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_55
.LBB0_52:
	move	$s4, $zero
	b	.LBB0_29
.LBB0_53:                               # %if.then65
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
.LBB0_54:                               # %cleanup
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %cleanup
	addi.w	$a0, $zero, -1
.LBB0_56:                               # %cleanup
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB0_57:
	move	$s4, $a1
	b	.LBB0_29
.Lfunc_end0:
	.size	makedent, .Lfunc_end0-makedent
                                        # -- End function
	.globl	strtoichar                      # -- Begin function strtoichar
	.p2align	5
	.type	strtoichar,@function
strtoichar:                             # @strtoichar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	ori	$a5, $zero, 2
	ori	$a4, $zero, 1
	blt	$a2, $a5, .LBB1_24
# %bb.1:                                # %land.rhs.lr.ph
	pcalau12i	$a4, %got_pc_hi20(hashheader)
	ld.d	$a4, $a4, %got_pc_lo12(hashheader)
	sltui	$a3, $a3, 1
	pcalau12i	$a6, %got_pc_hi20(defdupchar)
	ld.d	$a6, $a6, %got_pc_lo12(defdupchar)
	ori	$a7, $zero, 1
	pcalau12i	$t0, %got_pc_hi20(laststringch)
	ld.d	$t0, $t0, %got_pc_lo12(laststringch)
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	ori	$t3, $zero, 3124
	addi.d	$t4, $zero, -128
	.p2align	4, , 16
.LBB1_2:                                # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_9 Depth 3
	ld.bu	$t5, $a1, 0
	move	$t2, $a2
	beqz	$t5, .LBB1_23
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	add.d	$a2, $a4, $t5
	ld.bu	$a2, $a2, 1894
	beqz	$a2, .LBB1_18
# %bb.4:                                # %land.rhs7
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.w	$t6, $a4, 36
	blt	$t6, $a7, .LBB1_17
# %bb.5:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.w	$a2, $a6, 0
	move	$t5, $zero
	maskeqz	$a2, $a2, $a3
	addi.w	$t6, $t6, -1
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %if.then34.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$t6, $t7, -1
	blt	$t6, $t5, .LBB1_17
.LBB1_7:                                # %while.body.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
	add.d	$t7, $t5, $t6
	bstrpick.d	$t7, $t7, 31, 1
	alsl.d	$t8, $t7, $t7, 2
	alsl.d	$t8, $t8, $t7, 1
	add.d	$t8, $a4, $t8
	ld.bu	$fp, $t8, 2022
	addi.d	$s0, $t8, 2022
	move	$s1, $s0
	move	$t8, $a1
	beqz	$fp, .LBB1_11
# %bb.8:                                # %while.body4.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$t8, $a1
	move	$s2, $s0
	.p2align	4, , 16
.LBB1_9:                                # %while.body4.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$s1, $t8, 0
	xor	$s1, $s1, $fp
	andi	$s1, $s1, 127
	bnez	$s1, .LBB1_13
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB1_9 Depth=3
	ld.bu	$fp, $s2, 1
	addi.d	$s1, $s2, 1
	addi.d	$t8, $t8, 1
	move	$s2, $s1
	bnez	$fp, .LBB1_9
.LBB1_11:                               # %if.then12.i
                                        #   in Loop: Header=BB1_7 Depth=2
	alsl.d	$fp, $t7, $a4, 2
	ldptr.w	$s2, $fp, 3524
	beq	$s2, $a2, .LBB1_20
# %bb.12:                               # %if.else.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$fp, $s1, -1
	ld.bu	$t8, $t8, -1
	andi	$t8, $t8, 127
	andi	$fp, $fp, 127
	bltu	$t8, $fp, .LBB1_6
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %if.end26.i.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t8, $t8, 1
	ld.bu	$t8, $t8, -1
	andi	$t8, $t8, 127
	andi	$fp, $fp, 127
	bltu	$t8, $fp, .LBB1_6
.LBB1_14:                               # %if.else36.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bltu	$fp, $t8, .LBB1_16
# %bb.15:                               # %if.else45.i
                                        #   in Loop: Header=BB1_7 Depth=2
	alsl.d	$t8, $t7, $a4, 2
	ldptr.w	$t8, $t8, 3524
	blt	$a2, $t8, .LBB1_6
.LBB1_16:                               # %if.else52.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$t5, $t7, 1
	bge	$t6, $t5, .LBB1_7
	.p2align	4, , 16
.LBB1_17:                               # %stringcharlen.exit.thread
                                        #   in Loop: Header=BB1_2 Depth=1
	st.w	$t1, $t0, 0
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a2, $a1, 0
	andi	$t5, $a2, 127
	ori	$t6, $zero, 1
.LBB1_19:                               # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $t2, -1
	addi.d	$t7, $a0, 1
	st.b	$t5, $a0, 0
	add.d	$a1, $a1, $t6
	move	$a0, $t7
	blt	$a5, $t2, .LBB1_2
	b	.LBB1_22
.LBB1_20:                               # %stringcharlen.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	ldx.w	$a2, $fp, $t3
	sub.d	$t6, $s1, $s0
	addi.w	$t5, $t6, 0
	st.w	$a2, $t0, 0
	blt	$t5, $a7, .LBB1_18
# %bb.21:                               # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	xor	$t5, $a2, $t4
	bstrpick.d	$t6, $t6, 30, 0
	b	.LBB1_19
.LBB1_22:
	ori	$t2, $zero, 1
	move	$a0, $t7
.LBB1_23:                               # %for.end.loopexit
	sltui	$a4, $t2, 2
.LBB1_24:                               # %for.end
	st.b	$zero, $a0, 0
	move	$a0, $a4
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	strtoichar, .Lfunc_end1-strtoichar
                                        # -- End function
	.globl	ichartostr                      # -- Begin function ichartostr
	.p2align	5
	.type	ichartostr,@function
ichartostr:                             # @ichartostr
# %bb.0:                                # %entry
	ori	$a4, $zero, 2
	blt	$a2, $a4, .LBB2_10
# %bb.1:                                # %land.rhs.lr.ph
	ld.bu	$a7, $a1, 0
	addi.w	$t0, $a2, -1
	beqz	$a3, .LBB2_11
# %bb.2:                                # %land.rhs.lr.ph.split
	beqz	$a7, .LBB2_10
# %bb.3:
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a3, $a2, %got_pc_lo12(hashheader)
	.p2align	4, , 16
.LBB2_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ext.w.b	$a4, $a7
	move	$a2, $t0
	bltz	$a4, .LBB2_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a4, $a0, 1
	st.b	$a7, $a0, 0
	move	$a0, $a4
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_6:                                # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$a4, $a7, 127
	alsl.d	$a5, $a4, $a4, 2
	alsl.d	$a4, $a5, $a4, 1
	add.d	$a4, $a3, $a4
	addi.d	$a5, $a4, 2022
	addi.d	$a4, $a0, -1
	.p2align	4, , 16
.LBB2_7:                                # %while.cond21
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a0, $a4, 1
	addi.d	$a5, $a5, 1
	st.b	$a6, $a4, 1
	move	$a4, $a0
	bnez	$a6, .LBB2_7
.LBB2_8:                                # %if.end29
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a4, $zero, 1
	bge	$a4, $a2, .LBB2_25
# %bb.9:                                # %land.rhs
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $a1, 1
	ld.bu	$a7, $a1, 0
	addi.w	$t0, $a2, -1
	bnez	$a7, .LBB2_4
.LBB2_10:                               # %while.end30
	slti	$a1, $a2, 2
	st.b	$zero, $a0, 0
	move	$a0, $a1
	ret
.LBB2_11:                               # %land.rhs.lr.ph.split.us
	beqz	$a7, .LBB2_10
# %bb.12:
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a3, $a2, %got_pc_lo12(hashheader)
	pcalau12i	$a2, %got_pc_hi20(defdupchar)
	ld.d	$a4, $a2, %got_pc_lo12(defdupchar)
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB2_13:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
                                        #     Child Loop BB2_22 Depth 2
	ext.w.b	$t1, $a7
	move	$a2, $t0
	bge	$a5, $t1, .LBB2_15
# %bb.14:                               # %if.then.us
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.d	$t0, $a0, 1
	st.b	$a7, $a0, 0
	move	$a0, $t0
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_15:                               # %if.else.us
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.w	$t3, $a3, 36
	andi	$a7, $a7, 255
	addi.d	$a7, $a7, -128
	blez	$t3, .LBB2_21
# %bb.16:                               # %for.body.lr.ph.us
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.w	$t0, $a4, 0
	addi.d	$t2, $t3, 1
	addi.d	$t1, $t3, -1
	alsl.d	$t3, $t3, $a3, 2
	addi.d	$t3, $t3, 2047
	addi.d	$t3, $t3, 1473
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %if.end.us
                                        #   in Loop: Header=BB2_18 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, -4
	bgeu	$a6, $t2, .LBB2_21
.LBB2_18:                               # %for.body.us
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	bne	$t4, $t0, .LBB2_17
# %bb.19:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_18 Depth=2
	ld.w	$t4, $t3, -400
	bne	$t4, $a7, .LBB2_17
# %bb.20:                               #   in Loop: Header=BB2_13 Depth=1
	move	$a7, $t1
.LBB2_21:                               # %if.end18.loopexit.us
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a7, $a7, 0
	alsl.d	$t0, $a7, $a7, 2
	alsl.d	$a7, $t0, $a7, 1
	add.d	$a7, $a3, $a7
	addi.d	$t0, $a7, 2022
	addi.d	$a7, $a0, -1
	.p2align	4, , 16
.LBB2_22:                               # %while.cond21.us
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $t0, 0
	addi.d	$a0, $a7, 1
	addi.d	$t0, $t0, 1
	st.b	$t1, $a7, 1
	move	$a7, $a0
	bnez	$t1, .LBB2_22
.LBB2_23:                               # %if.end29.us
                                        #   in Loop: Header=BB2_13 Depth=1
	ori	$a7, $zero, 1
	bge	$a7, $a2, .LBB2_25
# %bb.24:                               # %land.rhs.us
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.d	$a1, $a1, 1
	ld.bu	$a7, $a1, 0
	addi.w	$t0, $a2, -1
	bnez	$a7, .LBB2_13
	b	.LBB2_10
.LBB2_25:
	ori	$a2, $zero, 1
	slti	$a1, $a2, 2
	st.b	$zero, $a0, 0
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	ichartostr, .Lfunc_end2-ichartostr
                                        # -- End function
	.globl	whatcap                         # -- Begin function whatcap
	.p2align	5
	.type	whatcap,@function
whatcap:                                # @whatcap
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.bu	$a3, $a0, 0
	lu12i.w	$a0, 65536
	beqz	$a3, .LBB3_4
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a2, $a2, %got_pc_lo12(hashheader)
	move	$a5, $a3
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a2, $a5
	ld.bu	$a6, $a6, 1438
	bnez	$a6, .LBB3_5
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.bu	$a5, $a4, 1
	addi.d	$a4, $a4, 1
	bnez	$a5, .LBB3_2
.LBB3_4:                                # %cleanup
	ret
.LBB3_5:                                # %for.body6.preheader
	ori	$a6, $zero, 1
	lu12i.w	$a0, 196608
	.p2align	4, , 16
.LBB3_6:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a5
	ld.bu	$a5, $a5, 1210
	bnez	$a5, .LBB3_4
# %bb.7:                                # %for.cond4
                                        #   in Loop: Header=BB3_6 Depth=1
	ldx.bu	$a5, $a4, $a6
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB3_6
# %bb.8:                                # %if.then18
	add.d	$a3, $a2, $a3
	ld.bu	$a3, $a3, 1210
	beqz	$a3, .LBB3_12
# %bb.9:                                # %for.cond24.preheader
	addi.d	$a3, $a1, 1
	lu12i.w	$a1, 131072
	.p2align	4, , 16
.LBB3_10:                               # %for.cond24
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	beqz	$a4, .LBB3_13
# %bb.11:                               # %for.body28
                                        #   in Loop: Header=BB3_10 Depth=1
	add.d	$a4, $a2, $a4
	ld.bu	$a4, $a4, 1210
	addi.d	$a3, $a3, 1
	beqz	$a4, .LBB3_10
	b	.LBB3_4
.LBB3_12:
	move	$a0, $zero
	ret
.LBB3_13:
	move	$a0, $a1
	ret
.Lfunc_end3:
	.size	whatcap, .Lfunc_end3-whatcap
                                        # -- End function
	.globl	chupcase                        # -- Begin function chupcase
	.p2align	5
	.type	chupcase,@function
chupcase:                               # @chupcase
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(strtosichar.out)
	addi.d	$s0, $a0, %pc_lo12(strtosichar.out)
	ori	$a2, $zero, 184
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_5
# %bb.1:                                # %strtosichar.exit
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB4_6
.LBB4_2:                                # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	addi.d	$a2, $s0, 1
	.p2align	4, , 16
.LBB4_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a1, $a0
	ld.b	$a3, $a0, 754
	ld.bu	$a0, $a2, 0
	st.b	$a3, $a2, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB4_3
# %bb.4:                                # %upcase.exit.loopexit
	ld.bu	$s1, $s0, 0
	b	.LBB4_7
.LBB4_5:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a4, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 944
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	bnez	$a0, .LBB4_2
.LBB4_6:
	move	$s1, $zero
.LBB4_7:                                # %upcase.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 1
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB4_16
# %bb.8:                                # %upcase.exit
	beqz	$s1, .LBB4_16
# %bb.9:                                # %while.body.i5.preheader
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB4_10:                               # %while.body.i5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	ext.w.b	$a3, $s1
	bltz	$a3, .LBB4_12
# %bb.11:                               # %if.then.i6
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a3, $fp, 1
	st.b	$s1, $fp, 0
	move	$fp, $a3
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_12:                               # %if.else.i
                                        #   in Loop: Header=BB4_10 Depth=1
	andi	$a3, $s1, 127
	alsl.d	$a4, $a3, $a3, 2
	alsl.d	$a3, $a4, $a3, 1
	add.d	$a3, $a1, $a3
	addi.d	$a4, $a3, 2022
	addi.d	$a3, $fp, -1
	.p2align	4, , 16
.LBB4_13:                               # %while.cond21.i
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$fp, $a3, 1
	addi.d	$a4, $a4, 1
	st.b	$a5, $a3, 1
	move	$a3, $fp
	bnez	$a5, .LBB4_13
.LBB4_14:                               # %if.end29.i
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.w	$a3, $a0, 0
	bge	$a2, $a3, .LBB4_16
# %bb.15:                               # %land.rhs.i
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$s1, $s0, 0
	addi.d	$a0, $a0, -1
	bnez	$s1, .LBB4_10
.LBB4_16:                               # %ichartostr.exit
	st.b	$zero, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	chupcase, .Lfunc_end4-chupcase
                                        # -- End function
	.globl	addvheader                      # -- Begin function addvheader
	.p2align	5
	.type	addvheader,@function
addvheader:                             # @addvheader
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(mymalloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.1:                                # %if.end
	move	$s0, $a0
	ld.d	$a0, $fp, 16
	st.d	$a0, $s0, 16
	vld	$vr0, $fp, 0
	lu12i.w	$a1, 196608
	and	$a0, $a0, $a1
	vst	$vr0, $s0, 0
	bne	$a0, $a1, .LBB5_4
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mymalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	beqz	$a0, .LBB5_8
# %bb.3:                                # %if.end15
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB5_5
.LBB5_4:                                # %if.then3
	st.d	$zero, $s0, 8
.LBB5_5:                                # %if.end19
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(chupcase)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	move	$a0, $zero
	st.d	$s0, $fp, 0
	ori	$a2, $zero, 5
	bstrins.d	$a1, $a2, 30, 28
	st.d	$a1, $fp, 16
.LBB5_6:                                # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_7:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB5_6
.LBB5_8:                                # %if.then12
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(myfree)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB5_6
.Lfunc_end5:
	.size	addvheader, .Lfunc_end5-addvheader
                                        # -- End function
	.globl	combinecaps                     # -- Begin function combinecaps
	.p2align	5
	.type	combinecaps,@function
combinecaps:                            # @combinecaps
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 16
	lu12i.w	$s2, 458752
	and	$a0, $a0, $s2
	lu12i.w	$s3, 327680
	move	$fp, $a1
	bne	$a0, $s3, .LBB6_5
# %bb.1:                                # %while.cond.preheader
	move	$s1, $s0
	.p2align	4, , 16
.LBB6_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s1, 19
	andi	$a0, $a0, 64
	beqz	$a0, .LBB6_6
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$s1, $s1, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(combine_two_entries)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.4:
	ori	$a0, $zero, 1
	b	.LBB6_15
.LBB6_5:                                # %if.end8
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(combine_two_entries)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	move	$s1, $s0
	bnez	$a1, .LBB6_15
.LBB6_6:                                # %if.then10
	ld.d	$a0, $s0, 16
	and	$a0, $a0, $s2
	lu12i.w	$s2, 32768
	beq	$a0, $s3, .LBB6_10
# %bb.7:                                # %if.then10
	lu12i.w	$a1, 65536
	bne	$a0, $a1, .LBB6_9
# %bb.8:                                # %land.lhs.true.i
	ld.d	$a0, $s1, 16
	ld.d	$a1, $fp, 16
	xor	$a0, $a1, $a0
	and	$a0, $a0, $s2
	beqz	$a0, .LBB6_10
.LBB6_9:                                # %if.then11.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(addvheader)
	jirl	$ra, $ra, 0
.LBB6_10:                               # %forcevheader.exit
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(mymalloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_16
# %bb.11:                               # %if.end15
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	vld	$vr0, $fp, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $s0, 16
	lu12i.w	$a3, 262144
	and	$a2, $a2, $a3
	or	$a1, $a1, $a2
	st.d	$a1, $a0, 16
	ld.d	$a1, $s0, 16
	or	$a1, $a1, $a3
	st.d	$a1, $s0, 16
	ld.d	$a2, $fp, 16
	bstrins.d	$a2, $zero, 30, 26
	or	$a1, $a2, $a1
	st.d	$a1, $s0, 16
	ld.d	$a2, $fp, 16
	ld.d	$a3, $s0, 0
	and	$a2, $a2, $s2
	or	$a1, $a2, $a1
	st.d	$a1, $s0, 16
	ld.d	$a1, $fp, 16
	st.d	$a3, $a0, 0
	lu12i.w	$a2, 196608
	and	$a1, $a1, $a2
	st.d	$a0, $s0, 0
	bne	$a1, $a2, .LBB6_13
# %bb.12:                               # %if.then37
	ld.d	$a1, $fp, 8
	st.d	$a1, $a0, 8
	b	.LBB6_14
.LBB6_13:                               # %if.else40
	st.d	$zero, $a0, 8
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(myfree)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %cleanup
	move	$a0, $zero
.LBB6_15:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_16:                               # %if.then13
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB6_15
.Lfunc_end6:
	.size	combinecaps, .Lfunc_end6-combinecaps
                                        # -- End function
	.p2align	5                               # -- Begin function combine_two_entries
	.type	combine_two_entries,@function
combine_two_entries:                    # @combine_two_entries
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	ld.d	$s2, $a2, 16
	move	$s1, $a1
	ld.d	$s3, $a1, 16
	move	$fp, $a0
	move	$s6, $s2
	bstrins.d	$s6, $zero, 30, 26
	andn	$a0, $s6, $s3
	xor	$s4, $s3, $s2
	lu12i.w	$s5, 229376
	beqz	$a0, .LBB7_2
# %bb.1:                                # %if.else.i
	and	$a0, $s4, $s5
	bnez	$a0, .LBB7_10
	b	.LBB7_8
.LBB7_2:                                # %if.then.i
	lu12i.w	$a0, 32768
	and	$a1, $s3, $a0
	bnez	$a1, .LBB7_4
# %bb.3:                                # %if.then.i
	and	$a0, $s4, $a0
	bnez	$a0, .LBB7_10
.LBB7_4:                                # %if.end18.thread.i
	lu12i.w	$a0, 196608
	and	$a1, $s4, $a0
	beqz	$a1, .LBB7_8
# %bb.5:                                # %if.else39.i
	and	$a1, $s2, $a0
	lu12i.w	$a2, 65536
	beq	$a1, $a2, .LBB7_12
# %bb.6:                                # %acoversb.exit
	lu12i.w	$a2, 131072
	bne	$a1, $a2, .LBB7_10
# %bb.7:                                # %acoversb.exit
	and	$a0, $s3, $a0
	beqz	$a0, .LBB7_12
	b	.LBB7_10
.LBB7_8:                                # %if.then26.i
	lu12i.w	$a0, 196608
	and	$a1, $s3, $a0
	bne	$a1, $a0, .LBB7_12
# %bb.9:                                # %lor.lhs.false.i
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_12
.LBB7_10:                               # %if.else
	move	$s6, $s3
	bstrins.d	$s6, $zero, 30, 26
	andn	$a0, $s6, $s2
	beqz	$a0, .LBB7_14
# %bb.11:                               # %if.else.i35
	and	$a0, $s4, $s5
	bnez	$a0, .LBB7_22
	b	.LBB7_20
.LBB7_12:                               # %if.then
	or	$a0, $s3, $s6
	st.d	$a0, $s1, 16
	ld.d	$a1, $s0, 16
	lu12i.w	$a2, 32768
	and	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $s1, 16
	ld.d	$a1, $s0, 16
	ld.d	$a3, $fp, 16
	ld.d	$a0, $s0, 8
	and	$a1, $a1, $a2
	or	$a1, $a3, $a1
	st.d	$a1, $fp, 16
	pcaddu18i	$ra, %call36(myfree)
	jirl	$ra, $ra, 0
.LBB7_13:                               # %return
	ori	$a0, $zero, 1
	b	.LBB7_23
.LBB7_14:                               # %if.then.i47
	lu12i.w	$a0, 32768
	and	$a1, $s2, $a0
	bnez	$a1, .LBB7_16
# %bb.15:                               # %if.then.i47
	and	$a0, $s4, $a0
	bnez	$a0, .LBB7_22
.LBB7_16:                               # %if.end18.thread.i53
	lu12i.w	$a0, 196608
	and	$a1, $s4, $a0
	beqz	$a1, .LBB7_20
# %bb.17:                               # %if.else39.i56
	and	$a1, $s3, $a0
	lu12i.w	$a2, 65536
	beq	$a1, $a2, .LBB7_24
# %bb.18:                               # %acoversb.exit64
	and	$a2, $s2, $a0
	move	$a0, $zero
	bnez	$a2, .LBB7_23
# %bb.19:                               # %acoversb.exit64
	lu12i.w	$a2, 131072
	beq	$a1, $a2, .LBB7_24
	b	.LBB7_23
.LBB7_20:                               # %if.then26.i39
	lu12i.w	$a0, 196608
	and	$a1, $s2, $a0
	bne	$a1, $a0, .LBB7_24
# %bb.21:                               # %lor.lhs.false.i42
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s1, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_24
.LBB7_22:
	move	$a0, $zero
.LBB7_23:                               # %return
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB7_24:                               # %if.then11
	or	$a0, $s6, $s2
	st.d	$a0, $s0, 16
	ld.d	$a1, $s1, 16
	lu12i.w	$a2, 294912
	and	$a1, $a1, $a2
	or	$a1, $a1, $a0
	st.d	$a1, $s0, 16
	lu12i.w	$a2, 32768
	ld.d	$a3, $fp, 16
	ld.d	$a4, $s1, 0
	ld.d	$a0, $s1, 8
	and	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.d	$a1, $fp, 16
	st.d	$a4, $s0, 0
	beqz	$a0, .LBB7_26
# %bb.25:                               # %if.then26
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB7_26:                               # %if.end
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(myfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	st.d	$a0, $s0, 8
	ld.d	$a0, $s0, 16
	st.d	$a0, $s1, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $s1, 0
	ld.d	$a0, $s0, 16
	lu12i.w	$a1, 196608
	and	$a2, $a0, $a1
	ori	$a0, $zero, 1
	bne	$a2, $a1, .LBB7_23
# %bb.27:                               # %land.lhs.true
	ld.d	$a1, $fp, 16
	lu12i.w	$a2, 458752
	and	$a1, $a1, $a2
	lu12i.w	$a2, 327680
	beq	$a1, $a2, .LBB7_23
# %bb.28:                               # %if.then41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(addvheader)
	jirl	$ra, $ra, 0
	b	.LBB7_13
.Lfunc_end7:
	.size	combine_two_entries, .Lfunc_end7-combine_two_entries
                                        # -- End function
	.globl	upcase                          # -- Begin function upcase
	.p2align	5
	.type	upcase,@function
upcase:                                 # @upcase
# %bb.0:                                # %entry
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB8_3
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a2, $a2, %got_pc_lo12(hashheader)
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a2, $a1
	ld.b	$a3, $a1, 754
	ld.bu	$a1, $a0, 0
	st.b	$a3, $a0, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB8_2
.LBB8_3:                                # %while.end
	ret
.Lfunc_end8:
	.size	upcase, .Lfunc_end8-upcase
                                        # -- End function
	.globl	lowcase                         # -- Begin function lowcase
	.p2align	5
	.type	lowcase,@function
lowcase:                                # @lowcase
# %bb.0:                                # %entry
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB9_3
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a2, $a2, %got_pc_lo12(hashheader)
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB9_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a2, $a1
	ld.b	$a3, $a1, 526
	ld.bu	$a1, $a0, 0
	st.b	$a3, $a0, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB9_2
.LBB9_3:                                # %while.end
	ret
.Lfunc_end9:
	.size	lowcase, .Lfunc_end9-lowcase
                                        # -- End function
	.globl	strtosichar                     # -- Begin function strtosichar
	.p2align	5
	.type	strtosichar,@function
strtosichar:                            # @strtosichar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a3, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(strtosichar.out)
	addi.d	$a0, $a0, %pc_lo12(strtosichar.out)
	ori	$a2, $zero, 184
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_2
.LBB10_1:                               # %if.end
	pcalau12i	$a0, %pc_hi20(strtosichar.out)
	addi.d	$a0, $a0, %pc_lo12(strtosichar.out)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_2:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a4, $a2, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 944
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB10_1
.Lfunc_end10:
	.size	strtosichar, .Lfunc_end10-strtosichar
                                        # -- End function
	.globl	toutent                         # -- Begin function toutent
	.p2align	5
	.type	toutent,@function
toutent:                                # @toutent
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
	move	$s8, $a1
	ld.d	$a1, $a1, 8
	move	$s0, $a2
	move	$s1, $a0
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 100
	ori	$a3, $zero, 1
	ori	$s6, $zero, 1
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_75
.LBB11_1:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.LJTI11_0)
	addi.d	$s3, $a0, %pc_lo12(.LJTI11_0)
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a0, $a0, %pc_lo12(ichartosstr.out)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(has_marker)
	ori	$s7, $zero, 26
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 16
	beqz	$s0, .LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %for.cond
	lu12i.w	$a1, 32768
	and	$a1, $a0, $a1
	beqz	$a1, .LBB11_69
.LBB11_3:                               # %if.then5
	bstrpick.d	$a1, $a0, 29, 28
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	add.d	$a1, $s3, $a1
	jr	$a1
.LBB11_4:                               # %sw.bb
	ld.bu	$a0, $sp, 48
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_15
# %bb.5:                                # %while.body.i.preheader
	addi.d	$a1, $sp, 49
	.p2align	4, , 16
.LBB11_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $a0
	ld.b	$a2, $a0, 526
	ld.bu	$a0, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB11_6
# %bb.7:                                # %lowcase.exit
	ld.bu	$a3, $sp, 48
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a3, .LBB11_15
# %bb.8:                                # %while.body.i.i.preheader
	ori	$a0, $zero, 183
	addi.d	$a2, $sp, 48
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_9:                               # %while.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_12 Depth 2
	ext.w.b	$a4, $a3
	bltz	$a4, .LBB11_11
# %bb.10:                               # %if.then.i.i
                                        #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a4, $a1, 1
	st.b	$a3, $a1, 0
	move	$a1, $a4
	b	.LBB11_13
	.p2align	4, , 16
.LBB11_11:                              # %if.else.i.i
                                        #   in Loop: Header=BB11_9 Depth=1
	andi	$a3, $a3, 127
	alsl.d	$a4, $a3, $a3, 2
	alsl.d	$a3, $a4, $a3, 1
	add.d	$a3, $fp, $a3
	addi.d	$a4, $a3, 2022
	addi.d	$a3, $a1, -1
	.p2align	4, , 16
.LBB11_12:                              # %while.cond21.i.i
                                        #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$a1, $a3, 1
	addi.d	$a4, $a4, 1
	st.b	$a5, $a3, 1
	move	$a3, $a1
	bnez	$a5, .LBB11_12
.LBB11_13:                              # %if.end29.i.i
                                        #   in Loop: Header=BB11_9 Depth=1
	bgeu	$s6, $a0, .LBB11_72
# %bb.14:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a2, $a2, 1
	ld.bu	$a3, $a2, 0
	addi.w	$a0, $a0, -1
	bnez	$a3, .LBB11_9
.LBB11_15:                              # %ichartostr.exit.thread.i
	st.b	$zero, $a1, 0
.LBB11_16:                              # %ichartosstr.exit
	st.b	$zero, $s4, %pc_lo12(has_marker)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s5, $zero, 65
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_17:                              # %flagout.exit.i
                                        #   in Loop: Header=BB11_19 Depth=1
	st.b	$s6, $s4, %pc_lo12(has_marker)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB11_18:                              # %for.inc.i
                                        #   in Loop: Header=BB11_19 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s5, $s5, 1
	beq	$s2, $s7, .LBB11_68
.LBB11_19:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 16
	srl.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_18
# %bb.20:                               # %if.then.i18
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.bu	$a0, $s4, %pc_lo12(has_marker)
	bnez	$a0, .LBB11_17
# %bb.21:                               # %if.then.i.i19
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.b	$a0, $fp, 68
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB11_17
.LBB11_22:                              # %sw.bb23
	ld.bu	$a1, $sp, 48
	beqz	$a1, .LBB11_59
# %bb.23:                               # %while.body.i76.preheader
	addi.d	$a0, $sp, 49
	.p2align	4, , 16
.LBB11_24:                              # %while.body.i76
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a1
	ld.b	$a2, $a1, 526
	ld.bu	$a1, $a0, 0
	st.b	$a2, $a0, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB11_24
# %bb.25:                               # %lowcase.exit82.loopexit
	ld.bu	$a0, $sp, 48
	add.d	$a0, $fp, $a0
	ld.bu	$a3, $a0, 754
	st.b	$a3, $sp, 48
	beqz	$a3, .LBB11_60
.LBB11_26:                              # %while.body.i.i84.preheader
	ori	$a0, $zero, 183
	pcalau12i	$a1, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a1, %pc_lo12(ichartosstr.out)
	addi.d	$a2, $sp, 48
	.p2align	4, , 16
.LBB11_27:                              # %while.body.i.i84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_30 Depth 2
	ext.w.b	$a4, $a3
	bltz	$a4, .LBB11_29
# %bb.28:                               # %if.then.i.i109
                                        #   in Loop: Header=BB11_27 Depth=1
	addi.d	$a4, $a1, 1
	st.b	$a3, $a1, 0
	move	$a1, $a4
	b	.LBB11_31
	.p2align	4, , 16
.LBB11_29:                              # %if.else.i.i90
                                        #   in Loop: Header=BB11_27 Depth=1
	andi	$a3, $a3, 127
	alsl.d	$a4, $a3, $a3, 2
	alsl.d	$a3, $a4, $a3, 1
	add.d	$a3, $fp, $a3
	addi.d	$a4, $a3, 2022
	addi.d	$a3, $a1, -1
	.p2align	4, , 16
.LBB11_30:                              # %while.cond21.i.i93
                                        #   Parent Loop BB11_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$a1, $a3, 1
	addi.d	$a4, $a4, 1
	st.b	$a5, $a3, 1
	move	$a3, $a1
	bnez	$a5, .LBB11_30
.LBB11_31:                              # %if.end29.i.i99
                                        #   in Loop: Header=BB11_27 Depth=1
	bgeu	$s6, $a0, .LBB11_71
# %bb.32:                               # %land.rhs.i.i104
                                        #   in Loop: Header=BB11_27 Depth=1
	addi.d	$a2, $a2, 1
	ld.bu	$a3, $a2, 0
	addi.w	$a0, $a0, -1
	bnez	$a3, .LBB11_27
	b	.LBB11_61
.LBB11_33:                              # %sw.bb30
	ld.d	$a0, $s8, 8
	st.b	$zero, $s4, %pc_lo12(has_marker)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s5, $zero, 65
	b	.LBB11_36
	.p2align	4, , 16
.LBB11_34:                              # %flagout.exit.i143
                                        #   in Loop: Header=BB11_36 Depth=1
	st.b	$s6, $s4, %pc_lo12(has_marker)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB11_35:                              # %for.inc.i145
                                        #   in Loop: Header=BB11_36 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s5, $s5, 1
	beq	$s2, $s7, .LBB11_68
.LBB11_36:                              # %for.body.i133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 16
	srl.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_35
# %bb.37:                               # %if.then.i138
                                        #   in Loop: Header=BB11_36 Depth=1
	ld.bu	$a0, $s4, %pc_lo12(has_marker)
	bnez	$a0, .LBB11_34
# %bb.38:                               # %if.then.i.i140
                                        #   in Loop: Header=BB11_36 Depth=1
	ld.b	$a0, $fp, 68
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB11_34
.LBB11_39:                              # %sw.bb12
	lu12i.w	$a1, 262144
	and	$a0, $a0, $a1
	beqz	$a0, .LBB11_41
# %bb.40:                               # %sw.bb12
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB11_69
.LBB11_41:                              # %if.then18
	ld.bu	$a0, $sp, 48
	pcalau12i	$a1, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a1, %pc_lo12(ichartosstr.out)
	beqz	$a0, .LBB11_52
# %bb.42:                               # %while.body.i21.preheader
	addi.d	$a2, $sp, 49
	.p2align	4, , 16
.LBB11_43:                              # %while.body.i21
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $a0
	ld.b	$a3, $a0, 754
	ld.bu	$a0, $a2, 0
	st.b	$a3, $a2, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB11_43
# %bb.44:                               # %upcase.exit
	ld.bu	$a3, $sp, 48
	beqz	$a3, .LBB11_52
# %bb.45:                               # %while.body.i.i28.preheader
	ori	$a0, $zero, 183
	pcalau12i	$a1, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a1, %pc_lo12(ichartosstr.out)
	addi.d	$a2, $sp, 48
	.p2align	4, , 16
.LBB11_46:                              # %while.body.i.i28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_49 Depth 2
	ext.w.b	$a4, $a3
	bltz	$a4, .LBB11_48
# %bb.47:                               # %if.then.i.i53
                                        #   in Loop: Header=BB11_46 Depth=1
	addi.d	$a4, $a1, 1
	st.b	$a3, $a1, 0
	move	$a1, $a4
	b	.LBB11_50
	.p2align	4, , 16
.LBB11_48:                              # %if.else.i.i34
                                        #   in Loop: Header=BB11_46 Depth=1
	andi	$a3, $a3, 127
	alsl.d	$a4, $a3, $a3, 2
	alsl.d	$a3, $a4, $a3, 1
	add.d	$a3, $fp, $a3
	addi.d	$a4, $a3, 2022
	addi.d	$a3, $a1, -1
	.p2align	4, , 16
.LBB11_49:                              # %while.cond21.i.i37
                                        #   Parent Loop BB11_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$a1, $a3, 1
	addi.d	$a4, $a4, 1
	st.b	$a5, $a3, 1
	move	$a3, $a1
	bnez	$a5, .LBB11_49
.LBB11_50:                              # %if.end29.i.i43
                                        #   in Loop: Header=BB11_46 Depth=1
	bgeu	$s6, $a0, .LBB11_73
# %bb.51:                               # %land.rhs.i.i48
                                        #   in Loop: Header=BB11_46 Depth=1
	addi.d	$a2, $a2, 1
	ld.bu	$a3, $a2, 0
	addi.w	$a0, $a0, -1
	bnez	$a3, .LBB11_46
.LBB11_52:                              # %ichartostr.exit.thread.i51
	st.b	$zero, $a1, 0
.LBB11_53:                              # %ichartosstr.exit55
	st.b	$zero, $s4, %pc_lo12(has_marker)
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a0, $a0, %pc_lo12(ichartosstr.out)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s5, $zero, 65
	b	.LBB11_56
	.p2align	4, , 16
.LBB11_54:                              # %flagout.exit.i68
                                        #   in Loop: Header=BB11_56 Depth=1
	st.b	$s6, $s4, %pc_lo12(has_marker)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB11_55:                              # %for.inc.i70
                                        #   in Loop: Header=BB11_56 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s5, $s5, 1
	beq	$s2, $s7, .LBB11_68
.LBB11_56:                              # %for.body.i58
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 16
	srl.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_55
# %bb.57:                               # %if.then.i63
                                        #   in Loop: Header=BB11_56 Depth=1
	ld.bu	$a0, $s4, %pc_lo12(has_marker)
	bnez	$a0, .LBB11_54
# %bb.58:                               # %if.then.i.i65
                                        #   in Loop: Header=BB11_56 Depth=1
	ld.b	$a0, $fp, 68
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB11_54
.LBB11_59:
	move	$a0, $zero
	add.d	$a0, $fp, $a0
	ld.bu	$a3, $a0, 754
	st.b	$a3, $sp, 48
	bnez	$a3, .LBB11_26
.LBB11_60:
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a0, %pc_lo12(ichartosstr.out)
.LBB11_61:                              # %ichartostr.exit.thread.i107
	st.b	$zero, $a1, 0
.LBB11_62:                              # %ichartosstr.exit111
	st.b	$zero, $s4, %pc_lo12(has_marker)
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a0, $a0, %pc_lo12(ichartosstr.out)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$s5, $zero, 65
	b	.LBB11_65
	.p2align	4, , 16
.LBB11_63:                              # %flagout.exit.i124
                                        #   in Loop: Header=BB11_65 Depth=1
	st.b	$s6, $s4, %pc_lo12(has_marker)
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB11_64:                              # %for.inc.i126
                                        #   in Loop: Header=BB11_65 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s5, $s5, 1
	beq	$s2, $s7, .LBB11_68
.LBB11_65:                              # %for.body.i114
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 16
	srl.d	$a0, $a0, $s2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_64
# %bb.66:                               # %if.then.i119
                                        #   in Loop: Header=BB11_65 Depth=1
	ld.bu	$a0, $s4, %pc_lo12(has_marker)
	bnez	$a0, .LBB11_63
# %bb.67:                               # %if.then.i.i121
                                        #   in Loop: Header=BB11_65 Depth=1
	ld.b	$a0, $fp, 68
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB11_63
	.p2align	4, , 16
.LBB11_68:                              # %if.end32.sink.split
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB11_69:                              # %if.end32
	ld.bu	$a0, $s8, 19
	andi	$a0, $a0, 64
	beqz	$a0, .LBB11_74
# %bb.70:                               # %if.then37
	ld.d	$s8, $s8, 0
	ld.d	$a0, $s8, 16
	bnez	$s0, .LBB11_2
	b	.LBB11_3
.LBB11_71:                              # %if.then.i102
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.b	$zero, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(ichartosstr.out)
	addi.d	$a2, $a2, %pc_lo12(ichartosstr.out)
	pcalau12i	$a3, %pc_hi20(.L.str.1)
	addi.d	$a4, $a3, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 958
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_62
.LBB11_72:                              # %if.then.i
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.b	$zero, $a1, 0
	ori	$a3, $zero, 958
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_16
.LBB11_73:                              # %if.then.i46
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.b	$zero, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(ichartosstr.out)
	addi.d	$a2, $a2, %pc_lo12(ichartosstr.out)
	pcalau12i	$a3, %pc_hi20(.L.str.1)
	addi.d	$a4, $a3, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 958
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_53
.LBB11_74:                              # %for.end
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
.LBB11_75:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s8, 8
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a3, %pc_hi20(.L.str.1)
	addi.d	$a4, $a3, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 700
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_1
.Lfunc_end11:
	.size	toutent, .Lfunc_end11-toutent
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_4-.LJTI11_0
	.word	.LBB11_39-.LJTI11_0
	.word	.LBB11_22-.LJTI11_0
	.word	.LBB11_33-.LJTI11_0
                                        # -- End function
	.text
	.globl	ichartosstr                     # -- Begin function ichartosstr
	.p2align	5
	.type	ichartosstr,@function
ichartosstr:                            # @ichartosstr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a7, $a0, 0
	beqz	$a1, .LBB12_9
# %bb.1:                                # %land.rhs.lr.ph.split.i
	beqz	$a7, .LBB12_23
# %bb.2:                                # %while.body.i.preheader
	ori	$a2, $zero, 183
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a3, $a1, %got_pc_lo12(hashheader)
	pcalau12i	$a1, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a1, %pc_lo12(ichartosstr.out)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB12_3:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
	ext.w.b	$a5, $a7
	bltz	$a5, .LBB12_5
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a5, $a1, 1
	st.b	$a7, $a1, 0
	move	$a1, $a5
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_5:                               # %if.else.i
                                        #   in Loop: Header=BB12_3 Depth=1
	andi	$a5, $a7, 127
	alsl.d	$a6, $a5, $a5, 2
	alsl.d	$a5, $a6, $a5, 1
	add.d	$a5, $a3, $a5
	addi.d	$a6, $a5, 2022
	addi.d	$a5, $a1, -1
	.p2align	4, , 16
.LBB12_6:                               # %while.cond21.i
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a6, 0
	addi.d	$a1, $a5, 1
	addi.d	$a6, $a6, 1
	st.b	$a7, $a5, 1
	move	$a5, $a1
	bnez	$a7, .LBB12_6
.LBB12_7:                               # %if.end29.i
                                        #   in Loop: Header=BB12_3 Depth=1
	bgeu	$a4, $a2, .LBB12_26
# %bb.8:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a7, $a0, 0
	addi.w	$a2, $a2, -1
	bnez	$a7, .LBB12_3
	b	.LBB12_24
.LBB12_9:                               # %land.rhs.lr.ph.split.us.i
	beqz	$a7, .LBB12_23
# %bb.10:                               # %while.body.us.i.preheader
	ori	$a2, $zero, 183
	pcalau12i	$a1, %pc_hi20(ichartosstr.out)
	pcalau12i	$a3, %got_pc_hi20(hashheader)
	ld.d	$a3, $a3, %got_pc_lo12(hashheader)
	pcalau12i	$a4, %got_pc_hi20(defdupchar)
	ld.d	$a4, $a4, %got_pc_lo12(defdupchar)
	addi.d	$a1, $a1, %pc_lo12(ichartosstr.out)
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB12_11:                              # %while.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_16 Depth 2
                                        #     Child Loop BB12_20 Depth 2
	ext.w.b	$t0, $a7
	bge	$a5, $t0, .LBB12_13
# %bb.12:                               # %if.then.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	addi.d	$t0, $a1, 1
	st.b	$a7, $a1, 0
	move	$a1, $t0
	b	.LBB12_21
	.p2align	4, , 16
.LBB12_13:                              # %if.else.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	ld.w	$t3, $a3, 36
	andi	$a7, $a7, 255
	addi.d	$a7, $a7, -128
	blez	$t3, .LBB12_19
# %bb.14:                               # %for.body.lr.ph.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	ld.w	$t0, $a4, 0
	addi.d	$t2, $t3, 1
	addi.d	$t1, $t3, -1
	alsl.d	$t3, $t3, $a3, 2
	addi.d	$t3, $t3, 2047
	addi.d	$t3, $t3, 1073
	b	.LBB12_16
	.p2align	4, , 16
.LBB12_15:                              # %if.end.us.i
                                        #   in Loop: Header=BB12_16 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, -4
	bgeu	$a6, $t2, .LBB12_19
.LBB12_16:                              # %for.body.us.i
                                        #   Parent Loop BB12_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 400
	bne	$t4, $t0, .LBB12_15
# %bb.17:                               # %land.lhs.true.us.i
                                        #   in Loop: Header=BB12_16 Depth=2
	ld.w	$t4, $t3, 0
	bne	$t4, $a7, .LBB12_15
# %bb.18:                               #   in Loop: Header=BB12_11 Depth=1
	move	$a7, $t1
.LBB12_19:                              # %if.end18.loopexit.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	addi.w	$a7, $a7, 0
	alsl.d	$t0, $a7, $a7, 2
	alsl.d	$a7, $t0, $a7, 1
	add.d	$a7, $a3, $a7
	addi.d	$t0, $a7, 2022
	addi.d	$a7, $a1, -1
	.p2align	4, , 16
.LBB12_20:                              # %while.cond21.us.i
                                        #   Parent Loop BB12_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $t0, 0
	addi.d	$a1, $a7, 1
	addi.d	$t0, $t0, 1
	st.b	$t1, $a7, 1
	move	$a7, $a1
	bnez	$t1, .LBB12_20
.LBB12_21:                              # %if.end29.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	bgeu	$a6, $a2, .LBB12_26
# %bb.22:                               # %land.rhs.us.i
                                        #   in Loop: Header=BB12_11 Depth=1
	addi.d	$a0, $a0, 1
	ld.bu	$a7, $a0, 0
	addi.w	$a2, $a2, -1
	bnez	$a7, .LBB12_11
	b	.LBB12_24
.LBB12_23:
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a1, $a0, %pc_lo12(ichartosstr.out)
.LBB12_24:                              # %ichartostr.exit.thread
	st.b	$zero, $a1, 0
.LBB12_25:                              # %if.end
	pcalau12i	$a0, %pc_hi20(ichartosstr.out)
	addi.d	$a0, $a0, %pc_lo12(ichartosstr.out)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_26:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	st.b	$zero, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(ichartosstr.out)
	addi.d	$a2, $a2, %pc_lo12(ichartosstr.out)
	pcalau12i	$a3, %pc_hi20(.L.str.1)
	addi.d	$a4, $a3, %pc_lo12(.L.str.1)
	ori	$a3, $zero, 958
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB12_25
.Lfunc_end12:
	.size	ichartosstr, .Lfunc_end12-ichartosstr
                                        # -- End function
	.globl	stringcharlen                   # -- Begin function stringcharlen
	.p2align	5
	.type	stringcharlen,@function
stringcharlen:                          # @stringcharlen
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a2, $a2, %got_pc_lo12(hashheader)
	ld.w	$a4, $a2, 36
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB13_13
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a3, %got_pc_hi20(defdupchar)
	ld.d	$a3, $a3, %got_pc_lo12(defdupchar)
	ld.w	$a5, $a3, 0
	move	$a3, $zero
	sltui	$a1, $a1, 1
	maskeqz	$a1, $a5, $a1
	addi.w	$a4, $a4, -1
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %if.then34
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.w	$a4, $a5, -1
	blt	$a4, $a3, .LBB13_13
.LBB13_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
	add.d	$a5, $a4, $a3
	bstrpick.d	$a5, $a5, 31, 1
	alsl.d	$a6, $a5, $a5, 2
	alsl.d	$a6, $a6, $a5, 1
	add.d	$a6, $a2, $a6
	ld.bu	$t0, $a6, 2022
	addi.d	$a7, $a6, 2022
	move	$t1, $a7
	move	$a6, $a0
	beqz	$t0, .LBB13_7
# %bb.4:                                # %while.body4.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a6, $a0
	move	$t2, $a7
	.p2align	4, , 16
.LBB13_5:                               # %while.body4
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	xor	$t1, $t1, $t0
	andi	$t1, $t1, 127
	bnez	$t1, .LBB13_9
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB13_5 Depth=2
	ld.bu	$t0, $t2, 1
	addi.d	$t1, $t2, 1
	addi.d	$a6, $a6, 1
	move	$t2, $t1
	bnez	$t0, .LBB13_5
.LBB13_7:                               # %if.then12
                                        #   in Loop: Header=BB13_3 Depth=1
	alsl.d	$t0, $a5, $a2, 2
	ldptr.w	$t2, $t0, 3524
	beq	$t2, $a1, .LBB13_14
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.bu	$t0, $t1, -1
	ld.bu	$a6, $a6, -1
	andi	$a6, $a6, 127
	andi	$a7, $t0, 127
	bltu	$a6, $a7, .LBB13_2
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_9:                               # %if.end26.loopexit
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a6, $a6, 1
	ld.bu	$a6, $a6, -1
	andi	$a6, $a6, 127
	andi	$a7, $t0, 127
	bltu	$a6, $a7, .LBB13_2
.LBB13_10:                              # %if.else36
                                        #   in Loop: Header=BB13_3 Depth=1
	bltu	$a7, $a6, .LBB13_12
# %bb.11:                               # %if.else45
                                        #   in Loop: Header=BB13_3 Depth=1
	alsl.d	$a6, $a5, $a2, 2
	ldptr.w	$a6, $a6, 3524
	blt	$a1, $a6, .LBB13_2
.LBB13_12:                              # %if.else52
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.w	$a3, $a5, 1
	bge	$a4, $a3, .LBB13_3
.LBB13_13:                              # %while.end57
	pcalau12i	$a0, %got_pc_hi20(laststringch)
	ld.d	$a1, $a0, %got_pc_lo12(laststringch)
	move	$a0, $zero
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 0
	ret
.LBB13_14:                              # %if.then17
	ori	$a0, $zero, 3124
	ldx.w	$a0, $t0, $a0
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	st.w	$a0, $a1, 0
	sub.w	$a0, $t1, $a7
	ret
.Lfunc_end13:
	.size	stringcharlen, .Lfunc_end13-stringcharlen
                                        # -- End function
	.globl	printichar                      # -- Begin function printichar
	.p2align	5
	.type	printichar,@function
printichar:                             # @printichar
# %bb.0:                                # %entry
	ori	$a1, $zero, 127
	blt	$a1, $a0, .LBB14_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %pc_hi20(printichar.out)
	addi.d	$a1, $a1, %pc_lo12(printichar.out)
	st.b	$a0, $a1, 0
	st.b	$zero, $a1, 1
	move	$a0, $a1
	ret
.LBB14_2:                               # %if.else
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	addi.w	$a0, $a0, -128
	alsl.d	$a2, $a0, $a0, 2
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 2022
	pcalau12i	$a0, %pc_hi20(printichar.out)
	addi.d	$a0, $a0, %pc_lo12(printichar.out)
	pcaddu18i	$t8, %call36(strcpy)
	jr	$t8
.Lfunc_end14:
	.size	printichar, .Lfunc_end14-printichar
                                        # -- End function
	.globl	findfiletype                    # -- Begin function findfiletype
	.p2align	5
	.type	findfiletype,@function
findfiletype:                           # @findfiletype
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
	move	$s3, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	ld.w	$s5, $a1, 40
	move	$s1, $a0
	beqz	$s2, .LBB15_5
# %bb.1:                                # %for.cond.preheader
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB15_14
# %bb.2:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(chartypes)
	ld.d	$a0, $a0, %got_pc_lo12(chartypes)
	ld.d	$a0, $a0, 0
	move	$s4, $zero
	addi.d	$fp, $a0, 8
	move	$s2, $s5
	.p2align	4, , 16
.LBB15_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_15
# %bb.4:                                # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 24
	bnez	$s2, .LBB15_3
.LBB15_5:                               # %if.end17
	ori	$a0, $zero, 1
	addi.d	$s4, $zero, -1
	blt	$s5, $a0, .LBB15_18
# %bb.6:                                # %for.body21.lr.ph
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(chartypes)
	ld.d	$a0, $a0, %got_pc_lo12(chartypes)
	move	$s6, $zero
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s8, $s1, 0
	ori	$fp, $zero, 0
	lu32i.d	$fp, 1
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %for.inc52
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$s6, $s6, 1
	beq	$s6, $s5, .LBB15_18
.LBB15_8:                               # %for.body21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
	slli.d	$a0, $s6, 4
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	ld.d	$s2, $s7, 16
	ld.bu	$a0, $s2, 0
	bnez	$a0, .LBB15_10
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_9:                               # %for.inc50
                                        #   in Loop: Header=BB15_10 Depth=2
	slli.d	$a0, $s3, 32
	add.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 32
	ldx.bu	$a1, $s2, $a0
	add.d	$s2, $s2, $a0
	beqz	$a1, .LBB15_7
.LBB15_10:                              # %for.body28
                                        #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$a0, $a0, 0
	blt	$s8, $a0, .LBB15_9
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB15_10 Depth=2
	sub.d	$a0, $s1, $s3
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s0, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_9
# %bb.12:                               # %if.then38
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beqz	$s3, .LBB15_17
# %bb.13:                               # %if.then41
	addi.d	$fp, $s7, 8
	move	$s4, $s6
	b	.LBB15_16
.LBB15_14:
	addi.d	$s4, $zero, -1
	b	.LBB15_18
.LBB15_15:                              # %if.then6
	beqz	$s3, .LBB15_18
.LBB15_16:                              # %cleanup.sink.split
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	st.w	$a0, $s3, 0
	b	.LBB15_18
.LBB15_17:
	move	$s4, $s6
.LBB15_18:                              # %cleanup
	addi.w	$a0, $s4, 0
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
.Lfunc_end15:
	.size	findfiletype, .Lfunc_end15-findfiletype
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str, 51

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c"
	.size	.L.str.1, 85

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\r\nWord '%s' contains illegal characters\r\n"
	.size	.L.str.2, 42

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\r\nCouldn't allocate space for word '%s'\r\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\r\nIllegal affix flag character '%c'\r\n"
	.size	.L.str.4, 38

	.type	strtosichar.out,@object         # @strtosichar.out
	.local	strtosichar.out
	.comm	strtosichar.out,184,1
	.type	ichartosstr.out,@object         # @ichartosstr.out
	.local	ichartosstr.out
	.comm	ichartosstr.out,184,1
	.type	printichar.out,@object          # @printichar.out
	.local	printichar.out
	.comm	printichar.out,11,1
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"tex"
	.size	.L.str.5, 4

	.type	has_marker,@object              # @has_marker
	.local	has_marker
	.comm	has_marker,1,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hashheader
	.addrsig_sym strtosichar.out
	.addrsig_sym ichartosstr.out
	.addrsig_sym printichar.out
