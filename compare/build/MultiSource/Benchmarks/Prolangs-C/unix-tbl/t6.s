	.file	"t6.c"
	.text
	.globl	maktab                          # -- Begin function maktab
	.p2align	5
	.type	maktab,@function
maktab:                                 # @maktab
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$a0, $a0, %got_pc_lo12(ncol)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_68
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ori	$a0, $zero, 80
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(sep)
	ld.d	$a0, $a0, %got_pc_lo12(sep)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a1, $a0, %got_pc_lo12(tabout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(font)
	ld.d	$a0, $a0, %got_pc_lo12(font)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(csize)
	ld.d	$a0, $a0, %got_pc_lo12(csize)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$s8, $a0, %got_pc_lo12(nlin)
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$s0, $a0, %got_pc_lo12(instead)
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$s5, $a0, %got_pc_lo12(fullbot)
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$s7, $a0, %got_pc_lo12(table)
	pcalau12i	$a0, %got_pc_hi20(cll)
	ld.d	$a0, $a0, %got_pc_lo12(cll)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc310
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$fp, $fp, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	bge	$fp, $a0, .LBB0_68
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_15 Depth 4
                                        #     Child Loop BB0_53 Depth 2
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_66 Depth 3
	addi.d	$a2, $sp, 152
	alsl.d	$a0, $fp, $a2, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	slli.d	$a1, $fp, 2
	stx.w	$zero, $a1, $a2
	addi.d	$a2, $fp, 80
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s2, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.inc181
                                        #   in Loop: Header=BB0_5 Depth=2
	move	$s1, $zero
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_44
.LBB0_5:                                # %for.body5
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_15 Depth 4
	andi	$a0, $s2, 1
	beqz	$a0, .LBB0_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_5 Depth=2
	ld.w	$a0, $s8, 0
	andi	$a1, $s1, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_4
# %bb.8:                                # %for.body11.preheader
                                        #   in Loop: Header=BB0_5 Depth=2
	move	$s3, $zero
	b	.LBB0_11
.LBB0_9:                                # %for.inc179
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_10:                               # %for.inc179
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.w	$a0, $s8, 0
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB0_4
.LBB0_11:                               # %for.body11
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_15 Depth 4
	slli.d	$s1, $s3, 3
	ldx.d	$a0, $s0, $s1
	bnez	$a0, .LBB0_10
# %bb.12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_11 Depth=3
	slli.d	$a0, $s3, 2
	ldx.w	$a0, $s5, $a0
	bnez	$a0, .LBB0_10
# %bb.13:                               # %if.end19
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	slli.d	$s6, $fp, 4
	bltz	$a0, .LBB0_17
# %bb.14:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	ldx.d	$a0, $a0, $s6
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %for.body29
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_18
# %bb.16:                               # %land.rhs
                                        #   in Loop: Header=BB0_15 Depth=4
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s7, $a0
	ldx.d	$a0, $a0, $s6
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_15
	b	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=3
	move	$s5, $s3
.LBB0_18:                               # %for.end
                                        #   in Loop: Header=BB0_11 Depth=3
	addi.w	$s4, $s5, 0
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fspan)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_9
# %bb.19:                               # %if.end34
                                        #   in Loop: Header=BB0_11 Depth=3
	ldx.d	$a0, $s7, $s1
	ldx.d	$s1, $a0, $s6
	addi.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_22
# %bb.20:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 92
	bne	$a0, $a1, .LBB0_22
# %bb.21:                               # %filler.exit
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB0_10
.LBB0_22:                               # %if.end43
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -97
	ori	$a1, $zero, 17
	bltu	$a1, $a0, .LBB0_10
# %bb.23:                               # %if.end43
                                        #   in Loop: Header=BB0_11 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	alsl.d	$s1, $s3, $s7, 3
	jr	$a0
.LBB0_24:                               # %sw.bb139
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $s1, 0
	ldx.d	$s5, $a0, $s6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(real)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.25:                               # %land.lhs.true147
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_9
# %bb.26:                               # %if.then150
                                        #   in Loop: Header=BB0_11 Depth=3
	addi.w	$a0, $s5, -1
	sltui	$a0, $a0, 127
	bne	$s2, $a0, .LBB0_9
# %bb.27:                               # %if.end158
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(wide)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 38
	ori	$a5, $zero, 38
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_9
.LBB0_28:                               # %sw.bb
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $s1, 0
	ldx.d	$s5, $a0, $s6
	addi.w	$a0, $s5, -1
	ori	$a1, $zero, 126
	sltu	$a0, $a1, $a0
	orn	$a0, $a0, $s2
	andi	$a0, $a0, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_32
# %bb.29:                               # %if.then56
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_31
# %bb.30:                               # %if.then60
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 31
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %if.end62
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a3, $zero, 32
	ori	$a4, $zero, 32
	move	$a2, $s5
	move	$a5, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB0_32:                               # %sw.bb67
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $s1, 0
	alsl.d	$a1, $fp, $a0, 4
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_24
# %bb.33:                               # %if.then73
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	or	$a1, $a1, $s2
	bnez	$a1, .LBB0_35
# %bb.34:                               # %if.then79
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 31
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
.LBB0_35:                               # %if.end81
                                        #   in Loop: Header=BB0_11 Depth=3
	ldx.d	$s5, $a0, $s6
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(real)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_37
# %bb.36:                               # %land.lhs.true91
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
.LBB0_37:                               # %if.end118
                                        #   in Loop: Header=BB0_11 Depth=3
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_9
.LBB0_38:                               # %land.lhs.true120
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$a0, $s1, 0
	alsl.d	$a0, $fp, $a0, 4
	ld.d	$s4, $a0, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(real)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_10
# %bb.39:                               # %land.lhs.true128
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_10
# %bb.40:                               # %land.lhs.true131
                                        #   in Loop: Header=BB0_11 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(barent)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_10
# %bb.41:                               # %if.then134
                                        #   in Loop: Header=BB0_11 Depth=3
	pcalau12i	$a0, %got_pc_hi20(F1)
	ld.d	$a1, $a0, %got_pc_lo12(F1)
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 38
	move	$a4, $s4
	move	$a5, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 32
	ori	$a3, $zero, 38
	ori	$a4, $zero, 32
	ori	$a5, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_42:                               # %if.then94
                                        #   in Loop: Header=BB0_11 Depth=3
	addi.w	$a0, $s5, -1
	sltui	$a0, $a0, 127
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bne	$s2, $a0, .LBB0_9
# %bb.43:                               # %if.end101
                                        #   in Loop: Header=BB0_11 Depth=3
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(wide)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 31
	ori	$a3, $zero, 38
	ori	$a4, $zero, 31
	ori	$a5, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_9
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_44:                               # %for.end183
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_46
# %bb.45:                               # %if.then187
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 32
	ori	$a5, $zero, 32
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %if.end191
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_48
# %bb.47:                               # %if.then195
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s3, $a1, 60
	addi.w	$s4, $fp, 60
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a3, $zero, 31
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 38
	ori	$a4, $zero, 32
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 38
	ori	$a5, $zero, 38
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 38
	ori	$a6, $zero, 38
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %if.end207
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $fp, 3
	alsl.d	$a1, $fp, $a0, 1
	ldx.bu	$a0, $s2, $a1
	beqz	$a0, .LBB0_50
# %bb.49:                               # %if.then212
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s1, 0
	add.d	$a3, $s2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 38
	ori	$a5, $zero, 38
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %if.end220
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.51:                               # %for.body223.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s2, $zero
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %for.inc307
                                        #   in Loop: Header=BB0_53 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB0_2
.LBB0_53:                               # %for.body223
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_60 Depth 3
                                        #       Child Loop BB0_66 Depth 3
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lspan)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
# %bb.54:                               # %if.then226
                                        #   in Loop: Header=BB0_53 Depth=2
	move	$s3, $a0
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $s7, $a0
	sub.w	$s1, $fp, $s3
	slli.d	$s5, $s1, 4
	ldx.d	$s4, $a0, $s5
	move	$a0, $s4
	pcaddu18i	$ra, %call36(real)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
# %bb.55:                               # %lor.lhs.false234
                                        #   in Loop: Header=BB0_53 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(barent)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_52
# %bb.56:                               # %lor.lhs.false237
                                        #   in Loop: Header=BB0_53 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_52
# %bb.57:                               # %if.end241
                                        #   in Loop: Header=BB0_53 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$s4, $s2, $s7, 3
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	ld.d	$a1, $s4, 0
	slli.d	$a2, $s2, 2
	ldx.w	$a2, $a0, $a2
	ldx.d	$a0, $a1, $s5
	slli.d	$a1, $a2, 5
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	alsl.d	$a1, $s1, $a1, 1
	slli.d	$a3, $a2, 6
	alsl.d	$a2, $a2, $a3, 4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	alsl.d	$a2, $s1, $a2, 2
	pcaddu18i	$ra, %call36(wide)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s3, 1
	bltz	$s3, .LBB0_63
# %bb.58:                               # %for.body267.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s4, $a0, $s3
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$s5, $a1, $a0
	move	$s6, $s1
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_59:                               # %for.inc280
                                        #   in Loop: Header=BB0_60 Depth=3
	addi.d	$s6, $s6, -1
	addi.w	$s4, $s4, 1
	addi.d	$s5, $s5, 4
	blez	$s6, .LBB0_63
.LBB0_60:                               # %for.body267
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	beq	$s6, $a0, .LBB0_59
# %bb.61:                               # %for.body267
                                        #   in Loop: Header=BB0_60 Depth=3
	pcalau12i	$a0, %got_pc_hi20(expflg)
	ld.d	$a0, $a0, %got_pc_lo12(expflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_59
# %bb.62:                               # %if.then274
                                        #   in Loop: Header=BB0_60 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_59
.LBB0_63:                               # %for.end281
                                        #   in Loop: Header=BB0_53 Depth=2
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	ori	$a4, $zero, 38
	move	$a5, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB0_52
# %bb.64:                               # %for.body287.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	bstrpick.d	$a0, $s1, 31, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$s4, $a1, $s3
	addi.d	$s1, $a0, -1
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_65:                               # %if.end298
                                        #   in Loop: Header=BB0_66 Depth=3
	ld.d	$a0, $s5, 0
	addi.w	$a2, $s4, 81
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	move	$s4, $s3
	beqz	$s1, .LBB0_52
.LBB0_66:                               # %for.body287
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s3, $s4, 1
	slli.d	$a0, $s3, 2
	addi.d	$a1, $sp, 152
	ldx.w	$a0, $a0, $a1
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_65
# %bb.67:                               # %if.then293
                                        #   in Loop: Header=BB0_66 Depth=3
	ld.d	$a0, $s5, 0
	addi.w	$a2, $s4, 61
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_65
.LBB0_68:                               # %for.end312
	pcalau12i	$a0, %got_pc_hi20(textflg)
	ld.d	$a0, $a0, %got_pc_lo12(textflg)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_70
# %bb.69:                               # %if.then314
	pcaddu18i	$ra, %call36(untext)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %if.end315
	pcalau12i	$a0, %got_pc_hi20(evenflg)
	ld.d	$a0, $a0, %got_pc_lo12(evenflg)
	ld.w	$a0, $a0, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_83
# %bb.71:                               # %if.then317
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s2, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_87
# %bb.72:                               # %for.body321.preheader
	move	$s1, $zero
	pcalau12i	$a1, %got_pc_hi20(evenup)
	ld.d	$s3, $a1, %got_pc_lo12(evenup)
	ori	$fp, $zero, 80
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$s0, $a1, %pc_lo12(.L.str.11)
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               # %for.inc330
                                        #   in Loop: Header=BB0_74 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$fp, $fp, 1
	addi.d	$s3, $s3, 4
	bge	$s1, $a0, .LBB0_76
.LBB0_74:                               # %for.body321
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, 0
	beqz	$a1, .LBB0_73
# %bb.75:                               # %if.end326
                                        #   in Loop: Header=BB0_74 Depth=1
	ld.d	$a0, $s2, 0
	ori	$a3, $zero, 38
	ori	$a4, $zero, 38
	move	$a1, $s0
	move	$a2, $fp
	move	$a5, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	b	.LBB0_73
.LBB0_76:                               # %for.cond333.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_87
# %bb.77:                               # %for.body335.preheader
	move	$s3, $zero
	ori	$fp, $zero, 80
	addi.d	$s4, $sp, 152
	pcalau12i	$a1, %got_pc_hi20(evenup)
	ld.d	$s5, $a1, %got_pc_lo12(evenup)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$s0, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$s1, $a1, %pc_lo12(.L.str.20)
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_78:                               # %if.end349
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a0, $s2, 0
	ori	$a3, $zero, 38
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
.LBB0_79:                               # %for.inc352
                                        #   in Loop: Header=BB0_80 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	bge	$s3, $a0, .LBB0_84
.LBB0_80:                               # %for.body335
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s5, 0
	beqz	$a1, .LBB0_79
# %bb.81:                               # %if.end340
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB0_78
# %bb.82:                               # %if.then344
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a0, $s2, 0
	addi.w	$a2, $fp, -20
	ori	$a5, $zero, 38
	move	$a1, $s1
	move	$a3, $a2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_78
.LBB0_83:                               # %if.end315.if.end355_crit_edge
	ld.w	$a0, $s7, 0
.LBB0_84:                               # %if.end355
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_87
# %bb.85:                               # %iter.check
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB0_88
# %bb.86:
	move	$a1, $zero
	move	$s0, $zero
	b	.LBB0_97
.LBB0_87:
	move	$s0, $zero
	b	.LBB0_99
.LBB0_88:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB0_90
# %bb.89:
	move	$a1, $zero
	move	$s0, $zero
	b	.LBB0_94
.LBB0_90:                               # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(sep)
	ld.d	$a2, $a1, %got_pc_lo12(sep)
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	xvrepli.b	$xr0, 0
	addi.d	$a2, $a2, 32
	move	$a3, $a1
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_91:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_91
# %bb.92:                               # %middle.block
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s0, $xr0, 0
	beq	$a1, $a0, .LBB0_99
# %bb.93:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB0_97
.LBB0_94:                               # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(sep)
	ld.d	$a4, $a2, %got_pc_lo12(sep)
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $s0, 0
	sub.d	$a2, $a3, $a1
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB0_95:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	bnez	$a2, .LBB0_95
# %bb.96:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s0, $vr0, 0
	beq	$a1, $a0, .LBB0_99
.LBB0_97:                               # %for.body358.preheader
	pcalau12i	$a2, %got_pc_hi20(sep)
	ld.d	$a2, $a2, %got_pc_lo12(sep)
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_98:                               # %for.body358
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 0
	add.d	$s0, $a1, $s0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_98
.LBB0_99:                               # %for.end364
	pcalau12i	$a0, %got_pc_hi20(expflg)
	ld.d	$a0, $a0, %got_pc_lo12(expflg)
	pcalau12i	$a1, %got_pc_hi20(tabout)
	ld.d	$s3, $a1, %got_pc_lo12(tabout)
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s3, 0
	beqz	$a1, .LBB0_107
# %bb.100:                              # %if.then366
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_103
# %bb.101:                              # %for.body370.preheader
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$fp, $a0, %pc_lo12(.L.str.22)
	.p2align	4, , 16
.LBB0_102:                              # %for.body370
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	addi.w	$a2, $s1, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB0_102
.LBB0_103:                              # %for.end375
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_108
# %bb.104:                              # %for.end375
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_108
# %bb.105:                              # %for.end375
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_108
# %bb.106:                              # %if.else
	ld.w	$a0, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(sep)
	ld.d	$a1, $a1, %got_pc_lo12(sep)
	alsl.d	$a0, $a0, $a1, 2
	ld.w	$a0, $a0, -4
	sub.w	$a4, $s0, $a0
	b	.LBB0_109
.LBB0_107:                              # %if.else392
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_110
.LBB0_108:                              # %if.then383
	addi.w	$a4, $s0, 1
.LBB0_109:                              # %if.end389
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_110:                              # %if.end394
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 79
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_115
# %bb.111:                              # %for.body404.preheader
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	pcalau12i	$a1, %got_pc_hi20(allflg)
	ld.d	$a1, $a1, %got_pc_lo12(allflg)
	pcalau12i	$a2, %got_pc_hi20(dboxflg)
	ld.d	$a2, $a2, %got_pc_lo12(dboxflg)
	pcalau12i	$a3, %got_pc_hi20(left1flg)
	ld.d	$a3, $a3, %got_pc_lo12(left1flg)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	move	$s4, $zero
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	or	$a0, $a0, $a3
	sltu	$a4, $zero, $a0
	ori	$fp, $zero, 40
	pcalau12i	$a0, %got_pc_hi20(sep)
	ld.d	$s5, $a0, %got_pc_lo12(sep)
	addi.d	$s6, $sp, 152
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s0, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_112:                              # %if.end419
                                        #   in Loop: Header=BB0_113 Depth=1
	ld.w	$a4, $s5, 0
	ld.w	$a1, $s7, 0
	addi.d	$s4, $s4, 1
	addi.w	$fp, $fp, 1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bge	$s4, $a1, .LBB0_115
.LBB0_113:                              # %for.body404
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	addi.w	$s2, $fp, 40
	addi.w	$a3, $fp, 39
	ori	$a5, $zero, 38
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB0_112
# %bb.114:                              # %if.then415
                                        #   in Loop: Header=BB0_113 Depth=1
	ld.d	$a0, $s3, 0
	addi.w	$a2, $fp, 20
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_112
.LBB0_115:                              # %for.end424
	pcalau12i	$a0, %got_pc_hi20(rightl)
	ld.d	$a0, $a0, %got_pc_lo12(rightl)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_117
# %bb.116:                              # %if.then426
	ld.d	$a0, $s3, 0
	addi.w	$a2, $a1, 79
	addi.w	$a3, $a1, 39
	addi.w	$a4, $a1, 78
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB0_117:                              # %if.end434
	ld.d	$a0, $s3, 0
	addi.w	$a2, $a1, 79
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_120
# %bb.118:                              # %if.end434
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_120
# %bb.119:                              # %if.end434
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_121
.LBB0_120:                              # %if.then443
	ld.w	$a1, $s7, 0
	pcalau12i	$a0, %got_pc_hi20(sep)
	ld.d	$a2, $a0, %got_pc_lo12(sep)
	ld.d	$a0, $s3, 0
	alsl.d	$a1, $a1, $a2, 2
	ld.w	$a2, $a1, -4
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a3, $zero, 38
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_121:                              # %if.end448
	pcalau12i	$a0, %got_pc_hi20(iline)
	ld.d	$a0, $a0, %got_pc_lo12(iline)
	pcalau12i	$a1, %got_pc_hi20(ifile)
	ld.d	$a1, $a1, %got_pc_lo12(ifile)
	ld.w	$a2, $a0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a1, 0
	addi.w	$a2, $a2, -1
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	maktab, .Lfunc_end0-maktab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
                                        # -- End function
	.text
	.globl	filler                          # -- Begin function filler
	.p2align	5
	.type	filler,@function
filler:                                 # @filler
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_3
# %bb.1:                                # %land.lhs.true
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 92
	bne	$a0, $a1, .LBB1_3
# %bb.2:                                # %land.rhs
	ld.bu	$a0, $fp, 1
	addi.d	$a0, $a0, -82
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_3:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	filler, .Lfunc_end1-filler
                                        # -- End function
	.globl	wide                            # -- Begin function wide
	.p2align	5
	.type	wide,@function
wide:                                   # @wide
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(tabout)
	ld.d	$s2, $a1, %got_pc_lo12(tabout)
	ld.d	$a3, $s2, 0
	beqz	$a0, .LBB2_10
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(F1)
	ld.d	$s3, $a0, %got_pc_lo12(F1)
	ld.w	$a2, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_3
# %bb.2:                                # %if.then3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(putfont)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %if.end
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB2_5
# %bb.4:                                # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(putsize)
	jirl	$ra, $ra, 0
.LBB2_5:                                # %if.end6
	ld.d	$a1, $s2, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_7
# %bb.6:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(putfont)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %if.end12
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB2_9
# %bb.8:                                # %if.then14
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(putsize)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %if.end15
	ld.d	$a1, $s2, 0
	ld.w	$a0, $s3, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB2_10:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $a3
	move	$a2, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end2:
	.size	wide, .Lfunc_end2-wide
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".nr %d 0\n"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".%02d\n.rm %02d\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".nr %d 0\n.nr %d 0\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".if \\n(%c->\\n(%d .nr %d \\n(%c-\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	".nr %d "
	.size	.L.str.4, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	".if \\n(%d<\\n(%d .nr %d \\n(%d\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	".nr %d \\w%c%s%c\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	".if \\n(%d>=\\n(%d .nr %d \\n(%du+2n\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	".nr %d \\n(%d\n"
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	".nr %d \\n(%d+\\n(%d\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	".if \\n(%d>\\n(%d .nr %d \\n(%d\n"
	.size	.L.str.11, 30

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	".if \\n(%d<\\n(%d .nr %d +(\\n(%d-\\n(%d)/2\n"
	.size	.L.str.12, 41

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	".nr %d %sn\n"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"-\\n(%d"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"-%dn"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	".if \\n(%d>0 .nr %d \\n(%d/%d\n"
	.size	.L.str.16, 29

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	".if \\n(%d<0 .nr %d 0\n"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	".nr %d +\\n(%d/2\n"
	.size	.L.str.18, 17

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	".nr %d +\\n(%d\n"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	".nr %d (100*\\n(%d/\\n(%d)*\\n(%d/100\n"
	.size	.L.str.20, 36

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	".nr %d 0"
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"+\\n(%d"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	".nr %d \\n(.l-\\n(%d\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	".nr %d \\n(%d/%d\n"
	.size	.L.str.24, 17

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	".nr %d 1n\n"
	.size	.L.str.25, 11

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	".nr %d \\n(%d+(%d*\\n(%d)\n"
	.size	.L.str.26, 25

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	".nr %d (\\n(%d+\\n(%d)/2\n"
	.size	.L.str.27, 24

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".nr TW \\n(%d\n"
	.size	.L.str.28, 14

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	".nr TW +%d*\\n(%d\n"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	".if t .if \\n(TW>\\n(.li .tm Table at line %d file %s is too wide - \\n(TW units\n"
	.size	.L.str.30, 79

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"\\w%c"
	.size	.L.str.31, 5

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"P"
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"0"
	.size	.L.str.34, 2

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\\n(%c-"
	.size	.L.str.36, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym font
	.addrsig_sym csize
	.addrsig_sym cll
