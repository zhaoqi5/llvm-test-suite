	.file	"libclamav_wwunpack.c"
	.text
	.globl	wwunpack                        # -- Begin function wwunpack
	.p2align	5
	.type	wwunpack,@function
wwunpack:                               # @wwunpack
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	b	.LBB0_218
.LBB0_2:                                # %entry.split
	beqz	$s6, .LBB0_221
# %bb.3:                                # %while.cond.preheader
	ld.d	$s4, $sp, 240
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a2, $s2, $a0
	bstrpick.d	$a0, $s3, 31, 0
	bstrpick.d	$a1, $s8, 31, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $s2, 673
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 5
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a3, $a1
.LBB0_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_207 Depth 3
                                        #       Child Loop BB0_211 Depth 3
	bltu	$a1, $s2, .LBB0_1
# %bb.5:                                # %land.lhs.true4
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $a3, 17
	bltu	$a2, $a1, .LBB0_1
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	ld.w	$s0, $a3, 8
	ld.w	$a0, $a3, 12
	slli.d	$fp, $s0, 2
	addi.w	$a4, $fp, 0
	addi.w	$a0, $a0, 4
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	bne	$a4, $a0, .LBB0_225
# %bb.7:                                # %if.end16
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s3, $a3, 0
	bstrpick.d	$s5, $fp, 31, 0
	ori	$a1, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_226
# %bb.8:                                # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $a0
	beqz	$s0, .LBB0_224
# %bb.9:                                # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$s6, $a0, .LBB0_224
# %bb.10:                               # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	bltz	$fp, .LBB0_224
# %bb.11:                               # %if.end22
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$a0, $fp, $s5
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_224
# %bb.12:                               # %if.end53
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$s8, $a0, $fp
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.w	$t6, $s6, $fp
	addi.d	$a0, $s7, 4
	ld.w	$a2, $s7, 0
	st.d	$a0, $sp, 144
	add.d	$s5, $s7, $s5
	bstrpick.d	$a0, $t6, 31, 0
	add.d	$s0, $s8, $a0
	ori	$a3, $zero, 32
	addi.w	$s3, $fp, 0
	move	$s4, $s8
	ori	$t0, $zero, 1
	ori	$t1, $zero, 32
	ori	$t2, $zero, 3
	ori	$t3, $zero, 511
	ori	$t4, $zero, 2
	ori	$t5, $zero, 4
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               # %if.end39.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a0, $a0, 0
	st.d	$a2, $sp, 144
	st.b	$a0, $s4, 0
.LBB0_14:                               # %while.condthread-pre-split.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $sp, 140
	ld.bu	$a3, $sp, 135
	move	$s4, $a1
.LBB0_15:                               # %while.cond.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_207 Depth 3
                                        #       Child Loop BB0_211 Depth 3
	slli.d	$a0, $a2, 1
	st.w	$a0, $sp, 140
	addi.d	$a1, $a3, -1
	st.b	$a1, $sp, 135
	andi	$a3, $a1, 255
	bltz	$a2, .LBB0_22
# %bb.16:                               # %while.cond.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beqz	$a3, .LBB0_22
# %bb.17:                               # %land.lhs.true8.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144
	bltu	$a0, $s7, .LBB0_217
# %bb.18:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $s3, .LBB0_217
# %bb.19:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a0, 1
	bltu	$s5, $a2, .LBB0_217
# %bb.20:                               # %land.lhs.true11.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_217
# %bb.21:                               # %land.lhs.true28.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 1
	bgeu	$s0, $a1, .LBB0_13
	b	.LBB0_217
	.p2align	4, , 16
.LBB0_22:                               # %if.end41.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beqz	$a3, .LBB0_33
# %bb.23:                               # %if.end92.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a0, 31, 30
	bgeu	$a3, $t2, .LBB0_49
# %bb.24:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a3, $t4, .LBB0_45
# %bb.25:                               # %land.lhs.true2.i30.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144
	bltu	$a0, $s7, .LBB0_217
# %bb.26:                               # %land.lhs.true4.i32.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_217
# %bb.27:                               # %getbitmap.exit39.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a4, $a0, 0
	st.d	$a1, $sp, 144
	ori	$a1, $zero, 32
	andi	$a0, $a2, 255
	andi	$a2, $a1, 255
	bgeu	$a0, $t2, .LBB0_50
.LBB0_28:                               # %if.end201.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a4, 31, 29
	bltu	$a2, $t5, .LBB0_41
# %bb.29:                               # %if.then.i310.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a4, 3
	addi.d	$a1, $a1, -3
	andi	$a4, $a3, 255
	bltu	$t2, $a4, .LBB0_60
.LBB0_30:                               # %if.then211.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $t2, .LBB0_73
# %bb.31:                               # %if.then215.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a5, $a1, 255
	bstrpick.d	$a4, $a2, 31, 31
	beqz	$a5, .LBB0_89
# %bb.32:                               #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a2, 1
	b	.LBB0_92
.LBB0_33:                               # %land.lhs.true2.i176.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.34:                               # %land.lhs.true4.i178.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.35:                               # %if.end47.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $a1, 0
	st.w	$a0, $sp, 140
	st.d	$a3, $sp, 144
	st.b	$t1, $sp, 135
	bltz	$a2, .LBB0_48
# %bb.36:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $s3, .LBB0_217
# %bb.37:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $a1, 5
	bltu	$s5, $a0, .LBB0_217
# %bb.38:                               # %land.lhs.true55.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_217
# %bb.39:                               # %land.lhs.true77.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 1
	bltu	$s0, $a1, .LBB0_217
# %bb.40:                               # %if.end88.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.b	$a2, $a3, 0
	st.d	$a0, $sp, 144
	st.b	$a2, $s4, 0
	b	.LBB0_14
.LBB0_41:                               # %if.else.i274.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a2, $t2, .LBB0_57
# %bb.42:                               # %land.lhs.true2.i30.i279.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.43:                               # %land.lhs.true4.i32.i281.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.44:                               # %getbitmap.exit39.i286.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.d	$a4, $sp, 144
	ori	$a1, $zero, 32
	andi	$a4, $a3, 255
	bgeu	$t2, $a4, .LBB0_30
	b	.LBB0_60
.LBB0_45:                               # %if.then13.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.46:                               # %land.lhs.true4.i.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_217
# %bb.47:                               # %if.end.i187.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a1, $a1, 0
	bstrpick.d	$a0, $a0, 31, 31
	st.d	$a2, $sp, 144
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a1, 31, 31
	or	$a2, $a0, $a2
	slli.d	$a4, $a1, 1
	ori	$a1, $zero, 31
	andi	$a0, $a2, 255
	andi	$a2, $a1, 255
	bgeu	$a0, $t2, .LBB0_50
	b	.LBB0_28
.LBB0_48:                               # %if.end92.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a0, 31, 30
	ori	$a1, $zero, 32
.LBB0_49:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a4, $a0, 2
	addi.d	$a1, $a1, -2
	andi	$a0, $a2, 255
	andi	$a2, $a1, 255
	bltu	$a0, $t2, .LBB0_28
.LBB0_50:                               # %if.then99.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a4, 31, 30
	bltu	$a2, $t2, .LBB0_53
# %bb.51:                               # %if.then.i226.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a3, $a4, 2
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a0, 0
	blt	$t0, $a2, .LBB0_66
.LBB0_52:                               # %if.then112.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 5
	andi	$a5, $a4, 255
	sll.w	$a2, $t0, $a4
	addi.d	$a0, $a2, 225
	bstrpick.d	$a2, $a2, 15, 8
	bstrins.d	$a0, $a2, 63, 8
	b	.LBB0_67
.LBB0_53:                               # %if.else.i190.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a2, $t4, .LBB0_63
# %bb.54:                               # %land.lhs.true2.i30.i195.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.55:                               # %land.lhs.true4.i32.i197.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_217
# %bb.56:                               # %getbitmap.exit39.i202.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 144
	ori	$a1, $zero, 32
	addi.w	$a2, $a0, 0
	bge	$t0, $a2, .LBB0_52
	b	.LBB0_66
.LBB0_57:                               # %if.then13.i290.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.58:                               # %land.lhs.true4.i.i297.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a2, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.59:                               # %if.end.i302.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a5, $t2, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a3, $a3, $a5
	st.d	$a4, $sp, 144
	slli.d	$a3, $a3, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	sll.w	$a2, $a2, $a6
	addi.d	$a1, $a1, 29
	andi	$a4, $a3, 255
	bgeu	$t2, $a4, .LBB0_30
.LBB0_60:                               # %if.else229.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $t5, .LBB0_74
# %bb.61:                               # %if.then233.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a4, $a1, 255
	beqz	$a4, .LBB0_93
# %bb.62:                               #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a4, $a2, 1
	b	.LBB0_96
.LBB0_63:                               # %if.then13.i206.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144
	bltu	$a0, $s7, .LBB0_217
# %bb.64:                               # %land.lhs.true4.i.i213.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_217
# %bb.65:                               # %if.end.i218.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a0, 0
	bstrpick.d	$a0, $a4, 31, 31
	st.d	$a1, $sp, 144
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a2, 31, 31
	or	$a0, $a0, $a1
	slli.d	$a3, $a2, 1
	ori	$a1, $zero, 31
	addi.w	$a2, $a0, 0
	bge	$t0, $a2, .LBB0_52
.LBB0_66:                               # %if.else.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 6
	andi	$a5, $a4, 255
	sll.w	$a0, $t0, $a4
	addu16i.d	$a0, $a0, 1
	addi.w	$a0, $a0, -159
.LBB0_67:                               # %if.end127.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a2, $t1, $a5
	andi	$a6, $a1, 255
	andi	$a7, $a4, 255
	srl.w	$a2, $a3, $a2
	bgeu	$a7, $a6, .LBB0_69
# %bb.68:                               # %if.then.i268.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a3, $a3, $a5
	st.w	$a3, $sp, 140
	sub.d	$a1, $a1, $a4
	b	.LBB0_81
.LBB0_69:                               # %if.else.i232.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a6, $a7, .LBB0_78
# %bb.70:                               # %if.then13.i248.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a3, $sp, 144
	bltu	$a3, $s7, .LBB0_217
# %bb.71:                               # %land.lhs.true4.i.i255.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a3, 4
	bltu	$s5, $a5, .LBB0_217
# %bb.72:                               # %if.end.i260.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a4, $a1
	andi	$a4, $a1, 255
	ld.w	$a3, $a3, 0
	st.d	$a5, $sp, 144
	addi.d	$a5, $zero, -1
	sll.w	$a5, $a5, $a4
	and	$a2, $a5, $a2
	sub.d	$a5, $t1, $a4
	srl.w	$a5, $a3, $a5
	or	$a2, $a5, $a2
	sll.w	$a3, $a3, $a4
	st.w	$a3, $sp, 140
	sub.d	$a1, $t1, $a1
	b	.LBB0_81
.LBB0_73:                               #   in Loop: Header=BB0_15 Depth=2
	move	$a4, $zero
	b	.LBB0_92
.LBB0_74:                               # %if.else246.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a3, 7
	andi	$a3, $a5, 255
	ori	$a4, $zero, 13
	bltu	$a3, $a4, .LBB0_97
# %bb.75:                               # %if.then251.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a3, $a4, .LBB0_127
# %bb.76:                               # %if.then255.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a4, $a1, 255
	bstrpick.d	$a3, $a2, 31, 18
	ori	$a5, $zero, 15
	bltu	$a4, $a5, .LBB0_132
# %bb.77:                               # %if.then.i376.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a2, 14
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, -14
	b	.LBB0_152
.LBB0_78:                               # %land.lhs.true2.i30.i237.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.79:                               # %land.lhs.true4.i32.i239.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.80:                               # %getbitmap.exit39.i244.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 140
	st.d	$a3, $sp, 144
	ori	$a1, $zero, 32
.LBB0_81:                               # %if.end131.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a2, 15, 0
	st.b	$a1, $sp, 135
	beq	$a3, $t3, .LBB0_212
# %bb.82:                               # %if.end136.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a3, $sp, 136
	bltu	$t6, $t4, .LBB0_217
# %bb.83:                               # %land.lhs.true146.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 15, 0
	sub.d	$a1, $s4, $a0
	bltu	$a1, $s8, .LBB0_217
# %bb.84:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, 2
	bltu	$s0, $a1, .LBB0_217
# %bb.85:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$s8, $a1, .LBB0_217
# %bb.86:                               # %land.lhs.true152.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_217
# %bb.87:                               # %land.lhs.true179.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $s4, 2
	bltu	$s0, $a1, .LBB0_217
# %bb.88:                               # %cleanup.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a0, $zero, $a0
	ldx.b	$a2, $s4, $a0
	st.b	$a2, $s4, 0
	addi.d	$a2, $s4, 1
	ldx.b	$a0, $a2, $a0
	st.b	$a0, $s4, 1
	b	.LBB0_14
.LBB0_89:                               # %land.lhs.true2.i316.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.90:                               # %land.lhs.true4.i318.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s5, $a5, .LBB0_217
# %bb.91:                               # %getbitmap.exit325.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.d	$a5, $sp, 144
	ori	$a1, $zero, 32
.LBB0_92:                               # %if.end226.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a3, $a3, $a4
	addi.d	$a5, $a3, 5
	b	.LBB0_97
.LBB0_93:                               # %land.lhs.true2.i328.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.94:                               # %land.lhs.true4.i330.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s5, $a5, .LBB0_217
# %bb.95:                               # %getbitmap.exit337.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a4, $a1, 0
	st.d	$a5, $sp, 144
	ori	$a1, $zero, 32
.LBB0_96:                               # %if.end243.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a2, $a2, 31, 31
	add.d	$a2, $a3, $a2
	addi.d	$a5, $a2, 6
	move	$a2, $a4
.LBB0_97:                               # %if.then272.critedge.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a3, $a5, 255
	sub.d	$a4, $t1, $a3
	andi	$a6, $a1, 255
	srl.w	$a4, $a2, $a4
	bgeu	$a3, $a6, .LBB0_99
# %bb.98:                               # %if.then.i462.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a2, $a2, $a3
	st.w	$a2, $sp, 140
	sub.d	$a1, $a1, $a5
	b	.LBB0_106
.LBB0_99:                               # %if.else.i426.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a6, $a3, .LBB0_103
# %bb.100:                              # %if.then13.i442.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.101:                              # %land.lhs.true4.i.i449.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a6, $a2, 4
	bltu	$s5, $a6, .LBB0_217
# %bb.102:                              # %if.end.i454.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a5, $a1
	andi	$a5, $a1, 255
	ld.w	$a2, $a2, 0
	st.d	$a6, $sp, 144
	addi.d	$a6, $zero, -1
	sll.w	$a6, $a6, $a5
	and	$a4, $a6, $a4
	sub.d	$a6, $t1, $a5
	srl.w	$a6, $a2, $a6
	or	$a4, $a6, $a4
	sll.w	$a2, $a2, $a5
	st.w	$a2, $sp, 140
	sub.d	$a1, $t1, $a1
	b	.LBB0_106
.LBB0_103:                              # %land.lhs.true2.i30.i431.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.104:                              # %land.lhs.true4.i32.i433.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s5, $a5, .LBB0_217
# %bb.105:                              # %getbitmap.exit39.i438.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 140
	st.d	$a5, $sp, 144
	ori	$a1, $zero, 32
.LBB0_106:                              # %if.end282.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 135
	sll.w	$a3, $t0, $a3
	add.d	$a3, $a3, $a4
	addu16i.d	$a3, $a3, 1
	addi.w	$a3, $a3, -31
.LBB0_107:                              # %if.end287.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$fp, $a3, 15, 0
	st.w	$fp, $sp, 136
	beqz	$a0, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sub.d	$a0, $t5, $a0
	b	.LBB0_196
.LBB0_109:                              # %if.then298.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, -1
	andi	$a5, $a4, 255
	beqz	$a5, .LBB0_115
# %bb.110:                              # %if.end308.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a2, 0
	slli.d	$a3, $a2, 1
	bltz	$a0, .LBB0_121
# %bb.111:                              # %if.then310.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a2, $a2, 2
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, -2
	andi	$a2, $a1, 255
	st.b	$a1, $sp, 135
	bnez	$a2, .LBB0_120
# %bb.112:                              # %land.lhs.true2.i480.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.113:                              # %land.lhs.true4.i482.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_217
# %bb.114:                              # %getbitmap.exit489.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 140
	st.d	$a2, $sp, 144
	ori	$a1, $zero, 32
	b	.LBB0_119
.LBB0_115:                              # %land.lhs.true2.i468.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144
	bltu	$a0, $s7, .LBB0_217
# %bb.116:                              # %land.lhs.true4.i470.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_217
# %bb.117:                              # %if.end308.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a0, 0
	addi.w	$a0, $a2, 0
	st.d	$a1, $sp, 144
	bltz	$a0, .LBB0_129
# %bb.118:                              # %if.then310.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a1, $a3, 1
	st.w	$a1, $sp, 140
	ori	$a1, $zero, 31
.LBB0_119:                              # %if.end320.sink.split.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 135
.LBB0_120:                              # %if.end320.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 5
	b	.LBB0_195
.LBB0_121:                              # %if.else322.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	bgeu	$a5, $t5, .LBB0_130
# %bb.122:                              # %if.else.i492.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a5, $t2, .LBB0_140
# %bb.123:                              # %land.lhs.true2.i30.i497.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.124:                              # %land.lhs.true4.i32.i499.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.125:                              # %if.end326.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 140
	st.d	$a4, $sp, 144
	bstrpick.d	$a1, $a3, 31, 29
	st.b	$t1, $sp, 135
	bnez	$a1, .LBB0_131
# %bb.126:                              # %if.else331.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	st.w	$a0, $sp, 136
	ori	$a1, $zero, 32
	b	.LBB0_144
.LBB0_127:                              # %if.else261.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a4, $a1, 255
	bstrpick.d	$a3, $a2, 31, 17
	ori	$a5, $zero, 16
	bltu	$a4, $a5, .LBB0_136
# %bb.128:                              # %if.then.i418.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a2, 15
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, -15
	b	.LBB0_156
.LBB0_129:                              # %if.else322.thread.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	ori	$a4, $zero, 32
.LBB0_130:                              # %if.then.i528.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a3, 3
	st.w	$a2, $sp, 140
	addi.d	$a1, $a4, -3
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 135
	beqz	$a3, .LBB0_143
.LBB0_131:                              # %if.then329.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 6
	b	.LBB0_195
.LBB0_132:                              # %if.else.i340.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 14
	bne	$a4, $a2, .LBB0_149
# %bb.133:                              # %land.lhs.true2.i30.i345.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.134:                              # %land.lhs.true4.i32.i347.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.135:                              # %getbitmap.exit39.i352.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 140
	st.d	$a4, $sp, 144
	ori	$a1, $zero, 32
	b	.LBB0_152
.LBB0_136:                              # %if.else.i382.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 15
	bne	$a4, $a2, .LBB0_153
# %bb.137:                              # %land.lhs.true2.i30.i387.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.138:                              # %land.lhs.true4.i32.i389.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.139:                              # %getbitmap.exit39.i394.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 140
	st.d	$a4, $sp, 144
	ori	$a1, $zero, 32
	b	.LBB0_156
.LBB0_140:                              # %if.then13.i508.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.141:                              # %land.lhs.true4.i.i515.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.142:                              # %if.end.i520.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a4, $t5, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 144
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	sll.w	$a2, $a2, $a5
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, 28
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 135
	bnez	$a3, .LBB0_131
.LBB0_143:                              # %if.else331.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	andi	$a3, $a1, 255
	st.w	$a0, $sp, 136
	ori	$a4, $zero, 5
	bltu	$a3, $a4, .LBB0_145
.LBB0_144:                              # %if.then.i570.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a3, $a2, 4
	st.w	$a3, $sp, 140
	addi.d	$a1, $a1, -4
	b	.LBB0_160
.LBB0_145:                              # %if.else.i534.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a3, $t5, .LBB0_157
# %bb.146:                              # %land.lhs.true2.i30.i539.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a1, $sp, 144
	bltu	$a1, $s7, .LBB0_217
# %bb.147:                              # %land.lhs.true4.i32.i541.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s5, $a2, .LBB0_217
# %bb.148:                              # %getbitmap.exit39.i546.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $sp, 140
	st.d	$a2, $sp, 144
	ori	$a1, $zero, 32
	b	.LBB0_160
.LBB0_149:                              # %if.then13.i356.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.150:                              # %land.lhs.true4.i.i363.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a2, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.151:                              # %if.end.i368.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a5, $zero, 14
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a3, $a3, $a5
	st.d	$a4, $sp, 144
	slli.d	$a3, $a3, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	st.w	$a3, $sp, 136
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, 18
.LBB0_152:                              # %if.end259.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 135
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a4
	b	.LBB0_107
.LBB0_153:                              # %if.then13.i398.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.154:                              # %land.lhs.true4.i.i405.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a2, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.155:                              # %if.end.i410.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a5, $zero, 15
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a3, $a3, $a5
	st.d	$a4, $sp, 144
	slli.d	$a3, $a3, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	st.w	$a3, $sp, 136
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 140
	addi.d	$a1, $a1, 17
.LBB0_156:                              # %if.end265.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a1, $sp, 135
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a4
	b	.LBB0_107
.LBB0_157:                              # %if.then13.i550.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $sp, 144
	bltu	$a2, $s7, .LBB0_217
# %bb.158:                              # %land.lhs.true4.i.i557.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.159:                              # %if.end.i562.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a4, $t5, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 144
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	st.w	$a0, $sp, 136
	sll.w	$a3, $a2, $a5
	st.w	$a3, $sp, 140
	addi.d	$a1, $a1, 28
.LBB0_160:                              # %if.end335.i
                                        #   in Loop: Header=BB0_15 Depth=2
	andi	$a2, $a0, 255
	st.b	$a1, $sp, 135
	beqz	$a2, .LBB0_162
# %bb.161:                              # %if.then338.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$a0, $a0, 13
	b	.LBB0_195
.LBB0_162:                              # %while.cond341.preheader.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_164
# %bb.163:                              #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a3, 1
	b	.LBB0_167
.LBB0_164:                              # %land.lhs.true2.i576.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_217
# %bb.165:                              # %land.lhs.true4.i578.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.166:                              # %getbitmap.exit585.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a4
.LBB0_167:                              # %if.end363.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltz	$a3, .LBB0_170
# %bb.168:                              # %while.cond341.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a3, $a1, 255
	beqz	$a3, .LBB0_171
# %bb.169:                              #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a4, $a2, 1
	b	.LBB0_174
.LBB0_170:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 29
	ori	$a5, $zero, 5
	b	.LBB0_185
.LBB0_171:                              # %land.lhs.true2.i576.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_217
# %bb.172:                              # %land.lhs.true4.i578.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.173:                              # %getbitmap.exit585.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a4, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_174:                              # %if.end363.1.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltz	$a2, .LBB0_177
# %bb.175:                              # %while.cond341.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_178
# %bb.176:                              #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a2, $a4, 1
	b	.LBB0_181
.LBB0_177:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 61
	ori	$a5, $zero, 6
	move	$a2, $a4
	b	.LBB0_185
.LBB0_178:                              # %land.lhs.true2.i576.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_217
# %bb.179:                              # %land.lhs.true4.i578.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s5, $a3, .LBB0_217
# %bb.180:                              # %getbitmap.exit585.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_181:                              # %if.end363.2.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltz	$a4, .LBB0_184
# %bb.182:                              # %if.else380.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a2, $sp, 140
	st.b	$a1, $sp, 135
	st.d	$a0, $sp, 144
	ori	$a0, $zero, 14
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 140
	addi.d	$a3, $sp, 135
	addi.d	$a4, $sp, 144
	move	$a5, $s7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getbits)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 8                     # 8-byte Folded Reload
	ori	$t5, $zero, 4
	ori	$t4, $zero, 2
	ori	$t3, $zero, 511
	ori	$t2, $zero, 3
	ori	$t1, $zero, 32
	ori	$t0, $zero, 1
	bnez	$a0, .LBB0_217
# %bb.183:                              # %if.else380.if.end392_crit_edge.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 136
	b	.LBB0_196
.LBB0_184:                              #   in Loop: Header=BB0_15 Depth=2
	ori	$a3, $zero, 125
	ori	$a5, $zero, 7
.LBB0_185:                              # %if.end367.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a2, $sp, 140
	st.d	$a0, $sp, 144
	sub.d	$a4, $zero, $a5
	srl.w	$a4, $a2, $a4
	andi	$a6, $a1, 255
	st.w	$a4, $sp, 136
	bgeu	$a5, $a6, .LBB0_187
# %bb.186:                              # %if.then.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sll.w	$a0, $a2, $a5
	st.w	$a0, $sp, 140
	sub.d	$a0, $a1, $a5
	b	.LBB0_194
.LBB0_187:                              # %if.else.i82
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a6, $a5, .LBB0_191
# %bb.188:                              # %land.lhs.true2.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $a5, $a1
	srl.w	$a2, $a4, $a1
	st.w	$a2, $sp, 136
	bltu	$a0, $s7, .LBB0_217
# %bb.189:                              # %land.lhs.true4.i.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s5, $a4, .LBB0_217
# %bb.190:                              # %if.end.i85
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.wu	$a0, $a0, 0
	andi	$a5, $a1, 255
	st.d	$a4, $sp, 144
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a0
	andi	$a4, $a5, 31
	sll.d	$a2, $a2, $a4
	srli.d	$a4, $a2, 32
	sll.w	$a0, $a0, $a5
	st.w	$a0, $sp, 140
	sub.d	$a0, $t1, $a1
	b	.LBB0_194
.LBB0_191:                              # %land.lhs.true2.i30.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$a0, $s7, .LBB0_217
# %bb.192:                              # %land.lhs.true4.i32.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s5, $a1, .LBB0_217
# %bb.193:                              # %getbitmap.exit39.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 140
	st.d	$a1, $sp, 144
	ori	$a0, $zero, 32
.LBB0_194:                              # %if.end371.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.b	$a0, $sp, 135
	add.d	$a0, $a4, $a3
	srli.d	$a1, $a4, 8
	bstrins.d	$a0, $a1, 63, 8
.LBB0_195:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$a0, $sp, 136
.LBB0_196:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	beq	$s6, $s3, .LBB0_217
# %bb.197:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.d	$a1, $a0, 48
	beqz	$a1, .LBB0_217
# %bb.198:                              # %if.end395.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a3, $a0, 15, 0
	bltu	$t6, $a3, .LBB0_217
# %bb.199:                              # %land.lhs.true406.i
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a1, $s4, $fp
	bltu	$a1, $s8, .LBB0_217
# %bb.200:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a1, $a1, $a3
	bltu	$s0, $a1, .LBB0_217
# %bb.201:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bgeu	$s8, $a1, .LBB0_217
# %bb.202:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$s4, $s8, .LBB0_217
# %bb.203:                              # %land.lhs.true413.i
                                        #   in Loop: Header=BB0_15 Depth=2
	add.d	$a1, $s4, $a3
	bltu	$s0, $a1, .LBB0_217
# %bb.204:                              # %while.body468.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	sub.d	$a2, $zero, $fp
	bltu	$a3, $t1, .LBB0_210
# %bb.205:                              # %while.body468.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=2
	bltu	$fp, $t1, .LBB0_209
# %bb.206:                              # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=2
	bstrpick.d	$a1, $a3, 15, 5
	slli.d	$a4, $a1, 5
	add.d	$a1, $s4, $a4
	sub.d	$a0, $a0, $a4
	move	$a5, $a4
	.p2align	4, , 16
.LBB0_207:                              # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $s4, $a2
	vldx	$vr0, $s4, $a2
	vld	$vr1, $a6, 16
	vst	$vr0, $s4, 0
	vst	$vr1, $s4, 16
	addi.d	$a5, $a5, -32
	addi.d	$s4, $s4, 32
	bnez	$a5, .LBB0_207
# %bb.208:                              # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=2
	bne	$a4, $a3, .LBB0_211
	b	.LBB0_14
.LBB0_209:                              #   in Loop: Header=BB0_15 Depth=2
	move	$a1, $s4
	b	.LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_15 Depth=2
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_211:                              # %while.body468.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $a1, $a2
	addi.d	$a0, $a0, -1
	st.b	$a3, $a1, 0
	slli.d	$a3, $a0, 48
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB0_211
	b	.LBB0_14
.LBB0_212:                              # %if.end60
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $s2, 673
	bnez	$a0, .LBB0_4
# %bb.213:                              # %while.end
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
	beqz	$s4, .LBB0_216
# %bb.214:                              # %while.body94.lr.ph
	sub.d	$a0, $s3, $s8
.LBB0_215:                              # %while.body94
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 8
	ld.w	$a3, $a1, 16
	addi.d	$s4, $s4, -1
	sltu	$a4, $a2, $a3
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
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
	slli.d	$a2, $s4, 48
	addi.d	$a1, $a1, 40
	bnez	$a2, .LBB0_215
.LBB0_216:                              # %while.end121
	move	$a0, $zero
	st.d	$zero, $a1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 16
	vst	$vr0, $a1, 0
	b	.LBB0_220
.LBB0_217:                              # %if.then59
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB0_218:                              # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_219:                              # %cleanup
	ori	$a0, $zero, 1
.LBB0_220:                              # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB0_221:                              # %while.cond.us
	ori	$a0, $zero, 690
	bltu	$s1, $a0, .LBB0_1
# %bb.222:                              # %if.end.us
	ld.w	$a0, $s2, 681
	ld.w	$a1, $s2, 685
	slli.d	$fp, $a0, 2
	addi.w	$a0, $fp, 0
	addi.w	$a1, $a1, 4
	bne	$a0, $a1, .LBB0_225
# %bb.223:                              # %if.end16.us
	bstrpick.d	$a0, $fp, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$a0, .LBB0_226
.LBB0_224:                              # %if.then52
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_218
.LBB0_225:                              # %if.then15
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_218
.LBB0_226:                              # %if.then21
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_219
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
