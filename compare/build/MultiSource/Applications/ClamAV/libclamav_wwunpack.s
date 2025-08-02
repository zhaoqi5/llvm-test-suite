	.file	"libclamav_wwunpack.c"
	.text
	.globl	wwunpack                        # -- Begin function wwunpack
	.p2align	5
	.type	wwunpack,@function
wwunpack:                               # @wwunpack
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
	move	$s1, $a7
	move	$s2, $a6
	move	$s7, $a5
	move	$s5, $a4
	move	$s8, $a3
	move	$s3, $a2
	move	$s6, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 17
	bgeu	$s1, $a0, .LBB0_2
.LBB0_1:                                # %if.then.split
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_223
.LBB0_2:                                # %entry.split
	beqz	$s6, .LBB0_226
# %bb.3:                                # %while.cond.preheader
	ld.d	$s4, $sp, 256
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a2, $s2, $a0
	bstrpick.d	$a0, $s3, 31, 0
	bstrpick.d	$a1, $s8, 31, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a1, $s2, 673
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 5
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a3, $a1
.LBB0_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_216 Depth 3
	bltu	$a1, $s2, .LBB0_1
# %bb.5:                                # %land.lhs.true4
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a4, $a3, 17
	bltu	$a2, $a4, .LBB0_1
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s0, $a3, 8
	ld.w	$a0, $a3, 12
	slli.d	$fp, $s0, 2
	addi.w	$a5, $fp, 0
	addi.w	$a0, $a0, 4
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	bne	$a5, $a0, .LBB0_230
# %bb.7:                                # %if.end16
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s3, $a3, 0
	bstrpick.d	$s5, $fp, 31, 0
	ori	$a1, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_231
# %bb.8:                                # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $a0
	beqz	$s0, .LBB0_229
# %bb.9:                                # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bltu	$s6, $a0, .LBB0_229
# %bb.10:                               # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	bltz	$fp, .LBB0_229
# %bb.11:                               # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$a0, $fp, $s5
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_229
# %bb.12:                               # %if.end53
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$s8, $a0, $fp
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.w	$t7, $s6, $fp
	addi.d	$a1, $s7, 4
	ld.w	$a0, $s7, 0
	st.d	$a1, $sp, 160
	add.d	$s5, $s7, $s5
	bstrpick.d	$a1, $t7, 31, 0
	add.d	$s0, $s8, $a1
	ori	$a2, $zero, 32
	addi.w	$fp, $fp, 0
	move	$s4, $s8
	ori	$t0, $zero, 1
	ori	$t1, $zero, 32
	ori	$t2, $zero, 3
	ori	$t3, $zero, 2
	ori	$t4, $zero, 4
	ori	$t5, $zero, 511
	ori	$t6, $zero, 64
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               # %if.end39.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $a0, 0
	st.d	$a2, $sp, 160
	st.b	$a0, $s4, 0
.LBB0_14:                               # %while.condthread-pre-split.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 156
	ld.bu	$a2, $sp, 151
	move	$s4, $a1
.LBB0_15:                               # %while.cond.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_212 Depth 3
                                        #       Child Loop BB0_216 Depth 3
	slli.d	$a3, $a0, 1
	st.w	$a3, $sp, 156
	addi.d	$a1, $a2, -1
	st.b	$a1, $sp, 151
	andi	$a4, $a1, 255
	bltz	$a0, .LBB0_22
# %bb.16:                               # %while.cond.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beqz	$a4, .LBB0_22
# %bb.17:                               # %land.lhs.true8.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 160
	bltu	$a0, $s7, .LBB0_222
# %bb.18:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $fp, .LBB0_222
# %bb.19:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a0, 1
	bltu	$s5, $a2, .LBB0_222
# %bb.20:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_222
# %bb.21:                               # %land.lhs.true28.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 1
	bgeu	$s0, $a1, .LBB0_13
	b	.LBB0_222
	.p2align	4, , 16
.LBB0_22:                               # %if.end41.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beqz	$a4, .LBB0_29
# %bb.23:                               # %if.end92.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	bltu	$t3, $a4, .LBB0_42
# %bb.24:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $t3, .LBB0_37
# %bb.25:                               # %land.lhs.true2.i30.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.26:                               # %land.lhs.true4.i32.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_222
# %bb.27:                               # %if.end96.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 160
	addi.w	$a1, $a0, 0
	st.b	$t1, $sp, 151
	bne	$a1, $t2, .LBB0_74
# %bb.28:                               # %if.then99.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	st.w	$a0, $sp, 152
	ori	$a4, $zero, 32
	b	.LBB0_44
.LBB0_29:                               # %land.lhs.true2.i176.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.30:                               # %land.lhs.true4.i178.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_222
# %bb.31:                               # %if.end47.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $sp, 156
	st.d	$a2, $sp, 160
	st.b	$t1, $sp, 151
	addi.w	$a4, $zero, -1
	st.w	$a3, $sp, 152
	bge	$a4, $a0, .LBB0_41
# %bb.32:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $fp, .LBB0_222
# %bb.33:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $a1, 5
	bltu	$s5, $a0, .LBB0_222
# %bb.34:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_222
# %bb.35:                               # %land.lhs.true77.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 1
	bltu	$s0, $a1, .LBB0_222
# %bb.36:                               # %if.end88.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a2, $a2, 0
	st.d	$a0, $sp, 160
	st.b	$a2, $s4, 0
	b	.LBB0_14
.LBB0_37:                               # %if.then13.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.38:                               # %land.lhs.true4.i.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.39:                               # %if.end96.i.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a2, $t2, $a2
	andi	$a4, $a2, 255
	ld.wu	$a1, $a1, 0
	srl.w	$a0, $a0, $a2
	st.d	$a3, $sp, 160
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	andi	$a2, $a4, 31
	sll.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 39, 32
	sll.w	$a3, $a1, $a4
	bgeu	$t3, $a0, .LBB0_80
# %bb.40:                               # %if.then99.i.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	ori	$a4, $zero, 31
	b	.LBB0_44
.LBB0_41:                               # %if.end92.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	ori	$a1, $zero, 32
.LBB0_42:                               # %if.end96.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a1, -2
	addi.w	$a2, $a0, 0
	andi	$a5, $a4, 255
	bne	$a2, $t2, .LBB0_47
# %bb.43:                               # %if.then99.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	bltu	$a5, $t2, .LBB0_59
.LBB0_44:                               # %if.then.i226.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a3, $a3, 2
	addi.d	$a1, $a4, -2
.LBB0_45:                               # %if.end103.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a0, -1
	ext.w.h	$a2, $a2
	blez	$a2, .LBB0_52
# %bb.46:                               # %if.else.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 6
	andi	$a5, $a4, 255
	sll.w	$a0, $t0, $a4
	addu16i.d	$a0, $a0, 1
	addi.w	$a0, $a0, -159
	b	.LBB0_53
.LBB0_47:                               # %if.end201.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	bgeu	$a5, $t4, .LBB0_75
# %bb.48:                               # %if.else.i274.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a5, $t2, .LBB0_88
# %bb.49:                               # %land.lhs.true2.i30.i279.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.50:                               # %land.lhs.true4.i32.i281.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_222
# %bb.51:                               # %getbitmap.exit39.i286.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a4, $sp, 160
	ori	$a1, $zero, 32
	andi	$a4, $a2, 255
	bgeu	$t2, $a4, .LBB0_76
	b	.LBB0_81
.LBB0_52:                               # %if.then112.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 5
	andi	$a5, $a4, 255
	sll.w	$a2, $t0, $a4
	addi.d	$a0, $a2, 225
	bstrpick.d	$a2, $a2, 15, 8
	bstrins.d	$a0, $a2, 63, 8
.LBB0_53:                               # %if.end127.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a2, $t1, $a5
	andi	$a6, $a1, 255
	andi	$a7, $a4, 255
	srl.w	$a2, $a3, $a2
	bgeu	$a7, $a6, .LBB0_55
# %bb.54:                               # %if.then.i268.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a3, $a3, $a5
	st.w	$a3, $sp, 156
	sub.d	$a1, $a1, $a4
	b	.LBB0_66
.LBB0_55:                               # %if.else.i232.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a6, $a7, .LBB0_63
# %bb.56:                               # %if.then13.i248.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a3, $sp, 160
	bltu	$a3, $s7, .LBB0_222
# %bb.57:                               # %land.lhs.true4.i.i255.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a3, 4
	bltu	$s5, $a5, .LBB0_222
# %bb.58:                               # %if.end.i260.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a4, $a1
	andi	$a4, $a1, 255
	ld.w	$a3, $a3, 0
	st.d	$a5, $sp, 160
	addi.d	$a5, $zero, -1
	sll.w	$a5, $a5, $a4
	and	$a2, $a5, $a2
	sub.d	$a5, $t1, $a4
	srl.w	$a5, $a3, $a5
	or	$a2, $a5, $a2
	sll.w	$a3, $a3, $a4
	st.w	$a3, $sp, 156
	sub.d	$a1, $t1, $a1
	b	.LBB0_66
.LBB0_59:                               # %if.else.i190.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a5, $t3, .LBB0_91
# %bb.60:                               # %land.lhs.true2.i30.i195.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.61:                               # %land.lhs.true4.i32.i197.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_222
# %bb.62:                               # %getbitmap.exit39.i202.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 160
	ori	$a1, $zero, 32
	b	.LBB0_45
.LBB0_63:                               # %land.lhs.true2.i30.i237.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.64:                               # %land.lhs.true4.i32.i239.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.65:                               # %getbitmap.exit39.i244.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 156
	st.d	$a3, $sp, 160
	ori	$a1, $zero, 32
.LBB0_66:                               # %if.end131.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a2, 15, 0
	st.b	$a1, $sp, 151
	beq	$a3, $t5, .LBB0_217
# %bb.67:                               # %if.end136.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a3, $sp, 152
	bltu	$t7, $t3, .LBB0_222
# %bb.68:                               # %land.lhs.true146.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 15, 0
	sub.d	$a1, $s4, $a0
	bltu	$a1, $s8, .LBB0_222
# %bb.69:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, 2
	bltu	$s0, $a1, .LBB0_222
# %bb.70:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$s8, $a1, .LBB0_222
# %bb.71:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_222
# %bb.72:                               # %land.lhs.true179.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 2
	bltu	$s0, $a1, .LBB0_222
# %bb.73:                               # %cleanup.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a0, $zero, $a0
	ldx.b	$a2, $s4, $a0
	st.b	$a2, $s4, 0
	addi.d	$a2, $s4, 1
	ldx.b	$a0, $a2, $a0
	st.b	$a0, $s4, 1
	b	.LBB0_14
.LBB0_74:                               # %if.end201.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	st.w	$a2, $sp, 152
	ori	$a4, $zero, 32
.LBB0_75:                               # %if.then.i310.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a3, $a3, 3
	addi.d	$a1, $a4, -3
	andi	$a4, $a2, 255
	bltu	$t2, $a4, .LBB0_81
.LBB0_76:                               # %if.then211.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $t2, .LBB0_79
# %bb.77:                               # %if.then215.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a5, $a1, 255
	bstrpick.d	$a4, $a3, 31, 31
	beqz	$a5, .LBB0_94
# %bb.78:                               #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a3, $a3, 1
	b	.LBB0_97
.LBB0_79:                               #   in Loop: Header=BB0_15 Depth=2
	move	$a4, $zero
	b	.LBB0_97
.LBB0_80:                               # %if.end201.i.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	ori	$a4, $zero, 31
	slli.d	$a3, $a3, 3
	addi.d	$a1, $a4, -3
	andi	$a4, $a2, 255
	bgeu	$t2, $a4, .LBB0_76
.LBB0_81:                               # %if.else229.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $t4, .LBB0_84
# %bb.82:                               # %if.then233.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a4, $a1, 255
	beqz	$a4, .LBB0_98
# %bb.83:                               #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a4, $a3, 1
	b	.LBB0_101
.LBB0_84:                               # %if.else246.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a6, $a2, 7
	andi	$a2, $a6, 255
	ori	$a4, $zero, 13
	bltu	$a2, $a4, .LBB0_102
# %bb.85:                               # %if.then251.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a2, $a4, .LBB0_132
# %bb.86:                               # %if.then255.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a2, $a1, 255
	bstrpick.d	$a4, $a3, 31, 18
	ori	$a5, $zero, 15
	bltu	$a2, $a5, .LBB0_137
# %bb.87:                               # %if.then.i376.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a3, 14
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, -14
	b	.LBB0_157
.LBB0_88:                               # %if.then13.i290.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a3, $sp, 160
	bltu	$a3, $s7, .LBB0_222
# %bb.89:                               # %land.lhs.true4.i.i297.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a3, 4
	bltu	$s5, $a4, .LBB0_222
# %bb.90:                               # %if.end.i302.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a5, $zero, 5
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a3, $a3, 0
	srl.w	$a2, $a2, $a5
	st.d	$a4, $sp, 160
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a3
	andi	$a4, $a6, 31
	sll.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 32
	sll.w	$a3, $a3, $a6
	addi.d	$a1, $a1, 27
	andi	$a4, $a2, 255
	bgeu	$t2, $a4, .LBB0_76
	b	.LBB0_81
.LBB0_91:                               # %if.then13.i206.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.92:                               # %land.lhs.true4.i.i213.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.93:                               # %if.end.i218.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $t4, $a1
	andi	$a4, $a1, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a1
	st.d	$a3, $sp, 160
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a1, $a4, 31
	sll.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sll.w	$a3, $a2, $a4
	ori	$a1, $zero, 31
	b	.LBB0_45
.LBB0_94:                               # %land.lhs.true2.i316.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.95:                               # %land.lhs.true4.i318.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s5, $a5, .LBB0_222
# %bb.96:                               # %getbitmap.exit325.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a5, $sp, 160
	ori	$a1, $zero, 32
.LBB0_97:                               # %if.end226.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a2, $a2, $a4
	addi.d	$a6, $a2, 5
	b	.LBB0_102
.LBB0_98:                               # %land.lhs.true2.i328.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.99:                               # %land.lhs.true4.i330.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s5, $a5, .LBB0_222
# %bb.100:                              # %getbitmap.exit337.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a4, $a1, 0
	st.d	$a5, $sp, 160
	ori	$a1, $zero, 32
.LBB0_101:                              # %if.end243.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a3, 31, 31
	add.d	$a2, $a2, $a3
	addi.d	$a6, $a2, 6
	move	$a3, $a4
.LBB0_102:                              # %if.then272.critedge.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a4, $a6, 255
	sub.d	$a5, $t1, $a4
	andi	$a2, $a1, 255
	srl.w	$a5, $a3, $a5
	bgeu	$a4, $a2, .LBB0_104
# %bb.103:                              # %if.then.i462.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a2, $a3, $a4
	st.w	$a2, $sp, 156
	sub.d	$a1, $a1, $a6
	b	.LBB0_111
.LBB0_104:                              # %if.else.i426.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a2, $a4, .LBB0_108
# %bb.105:                              # %if.then13.i442.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.106:                              # %land.lhs.true4.i.i449.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.107:                              # %if.end.i454.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a6, $a1
	andi	$a6, $a1, 255
	ld.w	$a2, $a2, 0
	st.d	$a3, $sp, 160
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $a6
	and	$a3, $a3, $a5
	sub.d	$a5, $t1, $a6
	srl.w	$a5, $a2, $a5
	or	$a5, $a5, $a3
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 156
	sub.d	$a1, $t1, $a1
	b	.LBB0_111
.LBB0_108:                              # %land.lhs.true2.i30.i431.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.109:                              # %land.lhs.true4.i32.i433.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.110:                              # %getbitmap.exit39.i438.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 156
	st.d	$a3, $sp, 160
	ori	$a1, $zero, 32
.LBB0_111:                              # %if.end282.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 151
	sll.w	$a3, $t0, $a4
	add.d	$a3, $a3, $a5
	addu16i.d	$a3, $a3, 1
	addi.w	$a3, $a3, -31
.LBB0_112:                              # %if.end287.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$s3, $a3, 15, 0
	addi.w	$a0, $a0, 0
	st.w	$s3, $sp, 152
	beqz	$a0, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sub.d	$a0, $t4, $a0
	b	.LBB0_201
.LBB0_114:                              # %if.then298.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, -1
	andi	$a5, $a4, 255
	beqz	$a5, .LBB0_120
# %bb.115:                              # %if.end308.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a2, 0
	addi.w	$a6, $zero, -1
	slli.d	$a3, $a2, 1
	bge	$a6, $a0, .LBB0_126
# %bb.116:                              # %if.then310.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a2, $a2, 2
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, -2
	andi	$a2, $a1, 255
	st.b	$a1, $sp, 151
	bnez	$a2, .LBB0_125
# %bb.117:                              # %land.lhs.true2.i480.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.118:                              # %land.lhs.true4.i482.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_222
# %bb.119:                              # %getbitmap.exit489.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 156
	st.d	$a2, $sp, 160
	ori	$a1, $zero, 32
	b	.LBB0_124
.LBB0_120:                              # %land.lhs.true2.i468.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 160
	bltu	$a0, $s7, .LBB0_222
# %bb.121:                              # %land.lhs.true4.i470.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_222
# %bb.122:                              # %if.end308.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a0, 0
	addi.w	$a0, $a2, 0
	st.d	$a1, $sp, 160
	bltz	$a0, .LBB0_134
# %bb.123:                              # %if.then310.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a1, $a3, 1
	st.w	$a1, $sp, 156
	ori	$a1, $zero, 31
.LBB0_124:                              # %if.end320.sink.split.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 151
.LBB0_125:                              # %if.end320.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 5
	b	.LBB0_200
.LBB0_126:                              # %if.else322.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	bgeu	$a5, $t4, .LBB0_135
# %bb.127:                              # %if.else.i492.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a5, $t2, .LBB0_145
# %bb.128:                              # %land.lhs.true2.i30.i497.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.129:                              # %land.lhs.true4.i32.i499.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_222
# %bb.130:                              # %if.end326.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 156
	st.d	$a4, $sp, 160
	bstrpick.d	$a1, $a3, 31, 29
	st.b	$t1, $sp, 151
	bnez	$a1, .LBB0_136
# %bb.131:                              # %if.else331.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	st.w	$a0, $sp, 152
	ori	$a1, $zero, 32
	b	.LBB0_149
.LBB0_132:                              # %if.else261.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a2, $a1, 255
	bstrpick.d	$a4, $a3, 31, 17
	ori	$a5, $zero, 16
	bltu	$a2, $a5, .LBB0_141
# %bb.133:                              # %if.then.i418.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a3, 15
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, -15
	b	.LBB0_161
.LBB0_134:                              # %if.else322.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	ori	$a4, $zero, 32
.LBB0_135:                              # %if.then.i528.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a3, 3
	st.w	$a2, $sp, 156
	addi.d	$a1, $a4, -3
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 151
	beqz	$a3, .LBB0_148
.LBB0_136:                              # %if.then329.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 6
	b	.LBB0_200
.LBB0_137:                              # %if.else.i340.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB0_154
# %bb.138:                              # %land.lhs.true2.i30.i345.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.139:                              # %land.lhs.true4.i32.i347.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.140:                              # %getbitmap.exit39.i352.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 156
	st.d	$a3, $sp, 160
	ori	$a1, $zero, 32
	b	.LBB0_157
.LBB0_141:                              # %if.else.i382.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 15
	bne	$a2, $a3, .LBB0_158
# %bb.142:                              # %land.lhs.true2.i30.i387.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.143:                              # %land.lhs.true4.i32.i389.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.144:                              # %getbitmap.exit39.i394.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 156
	st.d	$a3, $sp, 160
	ori	$a1, $zero, 32
	b	.LBB0_161
.LBB0_145:                              # %if.then13.i508.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.146:                              # %land.lhs.true4.i.i515.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.147:                              # %if.end.i520.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a4, $t4, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 160
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	sll.w	$a2, $a2, $a5
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, 28
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 151
	bnez	$a3, .LBB0_136
.LBB0_148:                              # %if.else331.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	andi	$a3, $a1, 255
	st.w	$a0, $sp, 152
	ori	$a4, $zero, 5
	bltu	$a3, $a4, .LBB0_150
.LBB0_149:                              # %if.then.i570.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a3, $a2, 4
	st.w	$a3, $sp, 156
	addi.d	$a1, $a1, -4
	b	.LBB0_165
.LBB0_150:                              # %if.else.i534.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a3, $t4, .LBB0_162
# %bb.151:                              # %land.lhs.true2.i30.i539.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 160
	bltu	$a1, $s7, .LBB0_222
# %bb.152:                              # %land.lhs.true4.i32.i541.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_222
# %bb.153:                              # %getbitmap.exit39.i546.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $sp, 156
	st.d	$a2, $sp, 160
	ori	$a1, $zero, 32
	b	.LBB0_165
.LBB0_154:                              # %if.then13.i356.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.155:                              # %land.lhs.true4.i.i363.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.156:                              # %if.end.i368.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a5, $zero, 14
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a4, $a4, $a5
	st.d	$a3, $sp, 160
	slli.d	$a3, $a4, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 32
	st.w	$a4, $sp, 152
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, 18
.LBB0_157:                              # %if.end259.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 151
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	b	.LBB0_112
.LBB0_158:                              # %if.then13.i398.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.159:                              # %land.lhs.true4.i.i405.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.160:                              # %if.end.i410.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a5, $zero, 15
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a4, $a4, $a5
	st.d	$a3, $sp, 160
	slli.d	$a3, $a4, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 32
	st.w	$a4, $sp, 152
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 156
	addi.d	$a1, $a1, 17
.LBB0_161:                              # %if.end265.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 151
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	b	.LBB0_112
.LBB0_162:                              # %if.then13.i550.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 160
	bltu	$a2, $s7, .LBB0_222
# %bb.163:                              # %land.lhs.true4.i.i557.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.164:                              # %if.end.i562.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a4, $t4, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 160
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	st.w	$a0, $sp, 152
	sll.w	$a3, $a2, $a5
	st.w	$a3, $sp, 156
	addi.d	$a1, $a1, 28
.LBB0_165:                              # %if.end335.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a2, $a0, 255
	st.b	$a1, $sp, 151
	beqz	$a2, .LBB0_167
# %bb.166:                              # %if.then338.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 13
	b	.LBB0_200
.LBB0_167:                              # %while.cond341.preheader.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 160
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a3, 1
	b	.LBB0_172
.LBB0_169:                              # %land.lhs.true2.i576.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_222
# %bb.170:                              # %land.lhs.true4.i578.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s5, $a4, .LBB0_222
# %bb.171:                              # %getbitmap.exit585.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a4
.LBB0_172:                              # %if.end363.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltz	$a3, .LBB0_175
# %bb.173:                              # %while.cond341.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a3, $a1, 255
	beqz	$a3, .LBB0_176
# %bb.174:                              #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a4, $a2, 1
	b	.LBB0_179
.LBB0_175:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 29
	ori	$a5, $zero, 5
	b	.LBB0_190
.LBB0_176:                              # %land.lhs.true2.i576.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_222
# %bb.177:                              # %land.lhs.true4.i578.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.178:                              # %getbitmap.exit585.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a4, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_179:                              # %if.end363.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltz	$a2, .LBB0_182
# %bb.180:                              # %while.cond341.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a4, 1
	b	.LBB0_186
.LBB0_182:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 61
	ori	$a5, $zero, 6
	move	$a2, $a4
	b	.LBB0_190
.LBB0_183:                              # %land.lhs.true2.i576.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_222
# %bb.184:                              # %land.lhs.true4.i578.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s5, $a3, .LBB0_222
# %bb.185:                              # %getbitmap.exit585.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_186:                              # %if.end363.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a3, $zero, -1
	bge	$a3, $a4, .LBB0_189
# %bb.187:                              # %if.else380.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a2, $sp, 156
	st.b	$a1, $sp, 151
	st.d	$a0, $sp, 160
	ori	$a0, $zero, 14
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 156
	addi.d	$a3, $sp, 151
	addi.d	$a4, $sp, 160
	move	$a5, $s7
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getbits)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	ori	$t6, $zero, 64
	ori	$t5, $zero, 511
	ori	$t4, $zero, 4
	ori	$t3, $zero, 2
	ori	$t2, $zero, 3
	ori	$t1, $zero, 32
	ori	$t0, $zero, 1
	bnez	$a0, .LBB0_222
# %bb.188:                              # %if.else380.if.end392_crit_edge.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 152
	b	.LBB0_201
.LBB0_189:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 125
	ori	$a5, $zero, 7
.LBB0_190:                              # %if.end367.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a2, $sp, 156
	st.d	$a0, $sp, 160
	sub.d	$a4, $zero, $a5
	srl.w	$a4, $a2, $a4
	andi	$a6, $a1, 255
	st.w	$a4, $sp, 152
	bgeu	$a5, $a6, .LBB0_192
# %bb.191:                              # %if.then.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a0, $a2, $a5
	st.w	$a0, $sp, 156
	sub.d	$a0, $a1, $a5
	b	.LBB0_199
.LBB0_192:                              # %if.else.i82
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a6, $a5, .LBB0_196
# %bb.193:                              # %land.lhs.true2.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a5, $a1
	srl.w	$a2, $a4, $a1
	st.w	$a2, $sp, 152
	bltu	$a0, $s7, .LBB0_222
# %bb.194:                              # %land.lhs.true4.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s5, $a4, .LBB0_222
# %bb.195:                              # %if.end.i85
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.wu	$a0, $a0, 0
	andi	$a5, $a1, 255
	st.d	$a4, $sp, 160
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a0
	andi	$a4, $a5, 31
	sll.d	$a2, $a2, $a4
	srli.d	$a4, $a2, 32
	sll.w	$a0, $a0, $a5
	st.w	$a0, $sp, 156
	sub.d	$a0, $t1, $a1
	b	.LBB0_199
.LBB0_196:                              # %land.lhs.true2.i30.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_222
# %bb.197:                              # %land.lhs.true4.i32.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_222
# %bb.198:                              # %getbitmap.exit39.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 156
	st.d	$a1, $sp, 160
	ori	$a0, $zero, 32
.LBB0_199:                              # %if.end371.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a0, $sp, 151
	add.d	$a0, $a4, $a3
	srli.d	$a1, $a4, 8
	bstrins.d	$a0, $a1, 63, 8
.LBB0_200:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a0, $sp, 152
.LBB0_201:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $fp, .LBB0_222
# %bb.202:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a0, 15, 0
	beqz	$a3, .LBB0_222
# %bb.203:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$t7, $a3, .LBB0_222
# %bb.204:                              # %land.lhs.true406.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $s4, $s3
	bltu	$a1, $s8, .LBB0_222
# %bb.205:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a1, $a1, $a3
	bltu	$s0, $a1, .LBB0_222
# %bb.206:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$s8, $a1, .LBB0_222
# %bb.207:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_222
# %bb.208:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a1, $s4, $a3
	bltu	$s0, $a1, .LBB0_222
# %bb.209:                              # %while.body468.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a2, $zero, $s3
	bltu	$a3, $t6, .LBB0_215
# %bb.210:                              # %while.body468.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s3, $t6, .LBB0_214
# %bb.211:                              # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a1, $a3, 15, 6
	slli.d	$a4, $a1, 6
	add.d	$a1, $s4, $a4
	sub.d	$a0, $a0, $a4
	move	$a5, $a4
	.p2align	4, , 16
.LBB0_212:                              # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $s4, $a2
	xvldx	$xr0, $s4, $a2
	xvld	$xr1, $a6, 32
	xvst	$xr0, $s4, 0
	xvst	$xr1, $s4, 32
	addi.d	$a5, $a5, -64
	addi.d	$s4, $s4, 64
	bnez	$a5, .LBB0_212
# %bb.213:                              # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $a3, .LBB0_216
	b	.LBB0_14
.LBB0_214:                              #   in Loop: Header=BB0_15 Depth=2
	move	$a1, $s4
	b	.LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_15 Depth=2
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_216:                              # %while.body468.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $a1, $a2
	addi.d	$a0, $a0, -1
	bstrpick.d	$a4, $a0, 15, 0
	st.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB0_216
	b	.LBB0_14
.LBB0_217:                              # %if.end60
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 16
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_4
# %bb.218:                              # %while.end
	bstrpick.d	$a0, $s7, 31, 0
	add.d	$fp, $fp, $a0
	st.h	$s4, $fp, 6
	ld.w	$a0, $s2, 661
	add.d	$a0, $s5, $a0
	addi.w	$s2, $a0, 665
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 40
	ld.w	$a0, $fp, 80
	andi	$a1, $s1, 4095
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 12
	add.d	$a1, $a1, $s1
	lu12i.w	$a2, -1
	lu32i.d	$a2, 0
	ld.hu	$a3, $fp, 20
	and	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 80
	add.d	$a0, $fp, $a3
	addi.d	$a1, $a0, 24
	beqz	$s4, .LBB0_221
# %bb.219:                              # %while.body94.lr.ph
	sub.d	$a0, $s3, $s8
.LBB0_220:                              # %while.body94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 8
	ld.w	$a3, $a1, 16
	addi.d	$s4, $s4, -1
	bstrpick.d	$a4, $s4, 15, 0
	sltu	$a5, $a2, $a3
	masknez	$a2, $a2, $a5
	maskeqz	$a3, $a3, $a5
	or	$a2, $a3, $a2
	andi	$a3, $a2, 4095
	sltu	$a3, $zero, $a3
	slli.d	$a3, $a3, 12
	add.w	$a2, $a3, $a2
	ld.w	$a3, $a1, 12
	bstrins.d	$a2, $zero, 11, 0
	st.w	$a2, $a1, 8
	st.w	$a2, $a1, 16
	add.d	$a2, $a0, $a3
	st.w	$a2, $a1, 20
	addi.d	$a1, $a1, 40
	bnez	$a4, .LBB0_220
.LBB0_221:                              # %while.end121
	move	$a0, $zero
	st.d	$zero, $a1, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a1, 0
	b	.LBB0_225
.LBB0_222:                              # %if.then59
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB0_223:                              # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_224:                              # %cleanup
	ori	$a0, $zero, 1
.LBB0_225:                              # %cleanup
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
.LBB0_226:                              # %while.cond.us
	ori	$a0, $zero, 690
	bltu	$s1, $a0, .LBB0_1
# %bb.227:                              # %if.end.us
	ld.w	$a0, $s2, 681
	ld.w	$a1, $s2, 685
	slli.d	$fp, $a0, 2
	addi.w	$a0, $fp, 0
	addi.w	$a1, $a1, 4
	bne	$a0, $a1, .LBB0_230
# %bb.228:                              # %if.end16.us
	bstrpick.d	$a0, $fp, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$a0, .LBB0_231
.LBB0_229:                              # %if.then52
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_223
.LBB0_230:                              # %if.then15
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_223
.LBB0_231:                              # %if.then21
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_224
.Lfunc_end0:
	.size	wwunpack, .Lfunc_end0-wwunpack
                                        # -- End function
	.p2align	5                               # -- Begin function getbits
	.type	getbits,@function
getbits:                                # @getbits
# %bb.0:                                # %entry
	ld.w	$a7, $a2, 0
	ori	$t0, $zero, 32
	sub.d	$t0, $t0, $a0
	srl.w	$t0, $a7, $t0
	st.w	$t0, $a1, 0
	ld.bu	$a7, $a3, 0
	bgeu	$a0, $a7, .LBB1_4
# %bb.1:                                # %if.then
	ld.w	$a1, $a2, 0
	sll.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
	ld.b	$a1, $a3, 0
	sub.d	$a1, $a1, $a0
.LBB1_2:                                # %return.sink.split
	move	$a0, $zero
	st.b	$a1, $a3, 0
.LBB1_3:                                # %return
	ret
.LBB1_4:                                # %if.else
	bgeu	$a7, $a0, .LBB1_9
# %bb.5:                                # %if.then13
	sub.d	$a7, $a0, $a7
	srl.w	$a0, $t0, $a7
	st.w	$a0, $a1, 0
	ori	$t0, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a6, $t0, .LBB1_3
# %bb.6:                                # %land.lhs.true2.i
	ld.d	$t0, $a4, 0
	bltu	$t0, $a5, .LBB1_3
# %bb.7:                                # %land.lhs.true4.i
	addi.d	$t1, $t0, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a5, $a5, $a6
	bltu	$a5, $t1, .LBB1_3
# %bb.8:                                # %if.end
	ld.w	$a0, $t0, 0
	st.w	$a0, $a2, 0
	st.d	$t1, $a4, 0
	ori	$a0, $zero, 32
	st.b	$a0, $a3, 0
	ld.w	$a4, $a1, 0
	andi	$a5, $a7, 255
	sll.w	$a4, $a4, $a5
	st.w	$a4, $a1, 0
	ld.w	$a6, $a2, 0
	sub.d	$a0, $a0, $a5
	srl.w	$a0, $a6, $a0
	or	$a0, $a0, $a4
	st.w	$a0, $a1, 0
	ld.w	$a0, $a2, 0
	sll.w	$a0, $a0, $a5
	st.w	$a0, $a2, 0
	ld.b	$a0, $a3, 0
	sub.d	$a1, $a0, $a7
	b	.LBB1_2
.LBB1_9:                                # %if.else32
	ori	$a1, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a6, $a1, .LBB1_3
# %bb.10:                               # %land.lhs.true2.i30
	ld.d	$a1, $a4, 0
	bltu	$a1, $a5, .LBB1_3
# %bb.11:                               # %land.lhs.true4.i32
	addi.d	$a7, $a1, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a5, $a5, $a6
	bltu	$a5, $a7, .LBB1_3
# %bb.12:                               # %getbitmap.exit39
	ld.w	$a0, $a1, 0
	st.w	$a0, $a2, 0
	st.d	$a7, $a4, 0
	ori	$a1, $zero, 32
	b	.LBB1_2
.Lfunc_end1:
	.size	getbits, .Lfunc_end1-getbits
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in wwunpack\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"WWPack: next chunk out ouf file, giving up.\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"WWPack: inconsistent/hacked data, go figure!\n"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"WWPack: Can't allocate %d bytes\n"
	.size	.L.str.3, 33

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"WWPack: packed data out of bounds, giving up.\n"
	.size	.L.str.4, 47

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"WWPack: unpacking failed.\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"WWPack: found OEP @%x\n"
	.size	.L.str.6, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
