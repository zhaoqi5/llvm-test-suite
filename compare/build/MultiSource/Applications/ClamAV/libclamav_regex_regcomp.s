	.file	"libclamav_regex_regcomp.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cli_regcomp
.LCPI0_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	cli_regcomp
	.p2align	5
	.type	cli_regcomp,@function
cli_regcomp:                            # @cli_regcomp
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
	move	$s0, $a2
	move	$s1, $a1
	move	$a1, $a0
	andi	$a2, $a2, 17
	ori	$a3, $zero, 17
	ori	$a0, $zero, 16
	beq	$a2, $a3, .LBB0_79
# %bb.1:                                # %if.end
	andi	$a2, $s0, 32
	bnez	$a2, .LBB0_3
# %bb.2:                                # %if.else
	move	$s5, $a1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB0_5
.LBB0_3:                                # %if.then6
	ld.d	$a2, $a1, 16
	bltu	$a2, $s1, .LBB0_79
# %bb.4:                                # %if.end8
	move	$s5, $a1
	sub.d	$s4, $a2, $s1
.LBB0_5:                                # %if.end10
	ori	$a0, $zero, 399
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 12
	beqz	$fp, .LBB0_79
# %bb.6:                                # %if.end14
	srli.d	$a0, $s4, 1
	move	$a1, $s4
	bstrins.d	$a1, $zero, 0, 0
	add.d	$s7, $a1, $a0
	addi.d	$s3, $s7, 1
	st.d	$s3, $sp, 40
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32
	beqz	$a0, .LBB0_15
# %bb.7:                                # %if.end20
	move	$s2, $a0
	move	$s8, $s0
	bstrins.d	$s8, $zero, 7, 7
	andi	$s6, $s0, 1
	st.d	$fp, $sp, 64
	st.d	$s1, $sp, 8
	add.d	$s4, $s1, $s4
	st.d	$s4, $sp, 16
	st.w	$zero, $sp, 24
	st.w	$zero, $sp, 56
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 160
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	st.w	$a0, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 20
	st.w	$zero, $fp, 36
	st.w	$s8, $fp, 40
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.d	$zero, $fp, 96
	st.w	$zero, $fp, 104
	st.d	$zero, $fp, 112
	vst	$vr0, $fp, 72
	addi.d	$a0, $fp, 136
	addi.d	$a1, $fp, 264
	st.d	$a1, $fp, 88
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 120
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 2047
	ori	$s8, $zero, 1
	bltu	$s7, $a0, .LBB0_11
# %bb.8:                                # %if.then2.i
	addi.d	$a0, $s7, 2
	srli.d	$a1, $a0, 63
	add.d	$a1, $a0, $a1
	srai.d	$a0, $a1, 1
	bstrins.d	$a1, $zero, 0, 0
	add.d	$s7, $a1, $a0
	bge	$s3, $s7, .LBB0_11
# %bb.9:                                # %if.end.i.i
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_28
# %bb.10:                               # %if.end4.i.i
	st.d	$a0, $sp, 32
	st.d	$s7, $sp, 40
	ori	$a1, $zero, 1
	move	$s2, $a0
	b	.LBB0_12
.LBB0_11:
	ori	$a1, $zero, 1
.LBB0_12:                               # %doemit.exit
	st.d	$s8, $sp, 48
	lu12i.w	$s3, 32768
	st.d	$s3, $s2, 0
	ld.d	$a0, $sp, 48
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 56
	bnez	$s6, .LBB0_16
# %bb.13:                               # %if.else33
	andi	$a0, $s0, 16
	bnez	$a0, .LBB0_23
# %bb.14:                               # %if.else37
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 128
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(p_bre)
	jirl	$ra, $ra, 0
	b	.LBB0_17
.LBB0_15:                               # %if.then19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	b	.LBB0_79
.LBB0_16:                               # %if.then32
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(p_ere)
	jirl	$ra, $ra, 0
.LBB0_17:                               # %if.end39
	ld.w	$a0, $sp, 24
	ld.d	$a1, $sp, 48
	beqz	$a0, .LBB0_19
# %bb.18:                               # %doemit.exit103.thread
	addi.d	$a0, $a1, -1
	st.d	$a0, $fp, 64
	b	.LBB0_50
.LBB0_19:                               # %if.end.i79
	ld.d	$a2, $sp, 40
	ori	$a0, $zero, 1
	blt	$a1, $a2, .LBB0_32
# %bb.20:                               # %if.then2.i83
	addi.d	$a1, $a2, 1
	srli.d	$a3, $a1, 63
	add.d	$a3, $a1, $a3
	srai.d	$a1, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s0, $a3, $a1
	bge	$a2, $s0, .LBB0_32
# %bb.21:                               # %if.end.i.i92
	ld.d	$a0, $sp, 32
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.22:                               # %if.end4.i.i97
	ld.w	$a1, $sp, 24
	st.d	$a0, $sp, 32
	st.d	$s0, $sp, 40
	sltui	$a0, $a1, 1
	b	.LBB0_32
.LBB0_23:                               # %if.then36
	bgeu	$s1, $s4, .LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s1, 1
	st.d	$a0, $sp, 8
	ld.b	$a1, $s1, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(ordinary)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ld.d	$a0, $sp, 16
	bltu	$s1, $a0, .LBB0_24
	b	.LBB0_17
.LBB0_25:                               # %lor.rhs.i
	beqz	$a1, .LBB0_27
# %bb.26:                               # %if.then.i.i
	ori	$a0, $zero, 14
	st.w	$a0, $sp, 24
.LBB0_27:                               # %lor.end.i
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $sp, 8
	st.d	$a0, $sp, 16
	b	.LBB0_17
.LBB0_28:                               # %seterr.exit.i.i
	move	$a1, $zero
	ori	$a0, $zero, 12
	st.w	$a0, $sp, 24
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s4, $a0, %pc_lo12(nuls)
	st.d	$s4, $sp, 8
	st.d	$s4, $sp, 16
	move	$s1, $s4
	b	.LBB0_12
.LBB0_29:                               # %if.then2.i.i98
	ld.w	$a0, $sp, 24
	bnez	$a0, .LBB0_31
# %bb.30:                               # %if.then.i.i.i102
	ori	$a0, $zero, 12
	st.w	$a0, $sp, 24
.LBB0_31:                               # %seterr.exit.i.i100
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(nuls)
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $sp, 8
	st.d	$a1, $sp, 16
.LBB0_32:                               # %doemit.exit103
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 32
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 48
	slli.d	$a1, $a1, 3
	stx.d	$s3, $a2, $a1
	ld.d	$a1, $sp, 48
	addi.d	$a2, $a1, -1
	st.d	$a2, $fp, 64
	beqz	$a0, .LBB0_50
# %bb.33:                               # %for.body.i.preheader
	addi.d	$a0, $fp, 20
	ld.d	$a1, $fp, 88
	addi.w	$a2, $zero, -128
	ori	$a3, $zero, 1
	ori	$a4, $zero, 126
	ori	$a5, $zero, 127
	ori	$a6, $zero, 128
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %for.inc26.i
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a6, .LBB0_49
.LBB0_35:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_47 Depth 3
	ldx.bu	$a7, $a1, $a2
	bnez	$a7, .LBB0_34
# %bb.36:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.w	$t1, $a0, 0
	blt	$t1, $a3, .LBB0_34
# %bb.37:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$t0, $fp, 32
	andi	$a7, $a2, 255
	addi.d	$t1, $t1, 7
	bstrpick.d	$t1, $t1, 31, 3
	.p2align	4, , 16
.LBB0_38:                               # %for.body.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t2, $t0, $a7
	bnez	$t2, .LBB0_40
# %bb.39:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_38 Depth=2
	ld.w	$t2, $fp, 16
	addi.w	$t1, $t1, -1
	add.d	$t0, $t0, $t2
	bnez	$t1, .LBB0_38
	b	.LBB0_34
.LBB0_40:                               # %if.then4.i
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.w	$t0, $fp, 84
	addi.d	$t1, $t0, 1
	st.w	$t1, $fp, 84
	stx.b	$t0, $a1, $a2
	blt	$a4, $a2, .LBB0_34
# %bb.41:                               # %for.body11.i.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	move	$t1, $a2
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_42:                               # %if.then20.i
                                        #   in Loop: Header=BB0_44 Depth=2
	stx.b	$t0, $a1, $t1
.LBB0_43:                               # %for.inc.i
                                        #   in Loop: Header=BB0_44 Depth=2
	beq	$t1, $a5, .LBB0_34
.LBB0_44:                               # %for.body11.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
	addi.d	$t1, $t1, 1
	ldx.bu	$t2, $a1, $t1
	bnez	$t2, .LBB0_43
# %bb.45:                               # %land.lhs.true17.i
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.w	$t3, $a0, 0
	blt	$t3, $a3, .LBB0_42
# %bb.46:                               # %for.body.lr.ph.i22.i
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.d	$t2, $fp, 32
	addi.d	$t3, $t3, 7
	bstrpick.d	$t3, $t3, 31, 3
	andi	$t4, $t1, 255
	.p2align	4, , 16
.LBB0_47:                               # %for.body.i26.i
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t5, $t2, $a7
	ldx.bu	$t6, $t2, $t4
	bne	$t5, $t6, .LBB0_43
# %bb.48:                               # %for.inc.i28.i
                                        #   in Loop: Header=BB0_47 Depth=3
	ld.w	$t5, $fp, 16
	addi.w	$t3, $t3, -1
	add.d	$t2, $t2, $t5
	bnez	$t3, .LBB0_47
	b	.LBB0_42
.LBB0_49:                               # %categorize.exit.loopexit
	ld.d	$a1, $sp, 48
.LBB0_50:                               # %categorize.exit
	ld.d	$a0, $sp, 32
	st.d	$a1, $fp, 48
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 24
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB0_66
# %bb.51:                               # %stripsnug.exit
	move	$a1, $a0
	move	$a0, $s5
	bnez	$a2, .LBB0_71
# %bb.52:                               # %if.end.i116
	move	$t0, $zero
	addi.d	$t4, $a1, 8
	lu12i.w	$s0, -32768
	lu32i.d	$s0, 0
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2176
	lu12i.w	$a4, 2
	ori	$a4, $a4, 512
	lu12i.w	$a5, 393216
	lu12i.w	$a6, -491520
	lu12i.w	$a7, -458752
                                        # implicit-def: $r24
                                        # implicit-def: $r13
	b	.LBB0_55
.LBB0_53:                               # %do.cond30.i
                                        #   in Loop: Header=BB0_55 Depth=1
	move	$t0, $zero
.LBB0_54:                               # %do.cond30.i
                                        #   in Loop: Header=BB0_55 Depth=1
	and	$t2, $t2, $s0
	move	$t4, $t3
	beq	$t2, $s3, .LBB0_88
.LBB0_55:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
	ld.d	$t2, $t4, 0
	and	$t3, $t2, $s0
	addu16i.d	$t3, $t3, -4096
	srli.d	$t5, $t3, 27
	addi.d	$t3, $t4, 8
	bltu	$a1, $t5, .LBB0_64
# %bb.56:                               # %do.body.i
                                        #   in Loop: Header=BB0_55 Depth=1
	sll.d	$t6, $a2, $t5
	and	$t7, $t6, $a3
	bnez	$t7, .LBB0_54
# %bb.57:                               # %do.body.i
                                        #   in Loop: Header=BB0_55 Depth=1
	and	$t6, $t6, $a4
	beqz	$t6, .LBB0_62
# %bb.58:                               #   in Loop: Header=BB0_55 Depth=1
	move	$t3, $t4
	.p2align	4, , 16
.LBB0_59:                               # %do.body8.i
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t2, 26, 0
	slli.d	$t2, $t5, 3
	ldx.d	$t2, $t3, $t2
	and	$t4, $t2, $s0
	alsl.d	$t3, $t5, $t3, 3
	beq	$t4, $a5, .LBB0_64
# %bb.60:                               # %switch.early.test.i
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.w	$t4, $t4, 0
	beq	$t4, $a6, .LBB0_59
# %bb.61:                               # %switch.early.test.i
                                        #   in Loop: Header=BB0_55 Depth=1
	bne	$t4, $a7, .LBB0_69
	b	.LBB0_64
.LBB0_62:                               # %do.body.i
                                        #   in Loop: Header=BB0_55 Depth=1
	bnez	$t5, .LBB0_64
# %bb.63:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_55 Depth=1
	sltui	$t5, $t0, 1
	masknez	$t1, $t1, $t5
	maskeqz	$t4, $t4, $t5
	or	$t1, $t4, $t1
	addi.d	$t0, $t0, 1
	b	.LBB0_54
.LBB0_64:                               # %sw.default.i
                                        #   in Loop: Header=BB0_55 Depth=1
	ld.w	$t4, $fp, 104
	bge	$t4, $t0, .LBB0_53
# %bb.65:                               # %if.then26.i
                                        #   in Loop: Header=BB0_55 Depth=1
	st.w	$t0, $fp, 104
	move	$s1, $t1
	b	.LBB0_53
.LBB0_66:                               # %if.then.i
	move	$a0, $s5
	bnez	$a2, .LBB0_68
# %bb.67:                               # %if.then.i.i114
	ori	$a2, $zero, 12
	st.w	$a2, $sp, 24
.LBB0_68:                               # %stripsnug.exit.thread
	move	$a3, $zero
	move	$a1, $zero
	pcalau12i	$a4, %pc_hi20(nuls)
	ld.d	$a5, $sp, 32
	addi.d	$a4, $a4, %pc_lo12(nuls)
	st.d	$a4, $sp, 8
	st.d	$a4, $sp, 16
	st.d	$a5, $fp, 8
	b	.LBB0_72
.LBB0_69:                               # %if.then18.i
	ld.w	$a1, $fp, 72
	ori	$a1, $a1, 4
	st.w	$a1, $fp, 72
.LBB0_70:                               # %findmust.exit
	ld.w	$a2, $sp, 24
	beqz	$a2, .LBB0_80
.LBB0_71:
	move	$a3, $zero
	move	$a1, $zero
.LBB0_72:                               # %pluscount.exit
	ld.d	$a4, $fp, 112
	st.d	$a4, $a0, 8
	st.d	$fp, $a0, 24
	lu12i.w	$a4, 15
	ori	$a4, $a4, 613
	st.w	$a4, $a0, 0
	ld.bu	$a4, $fp, 72
	st.d	$a1, $fp, 128
	lu12i.w	$a1, 13
	ori	$a1, $a1, 581
	andi	$a4, $a4, 4
	st.w	$a1, $fp, 0
	beqz	$a4, .LBB0_76
# %bb.73:                               # %if.then47
	beqz	$a3, .LBB0_75
# %bb.74:                               # %if.then.i140
	ori	$a2, $zero, 15
	st.w	$a2, $sp, 24
.LBB0_75:                               # %seterr.exit
	pcalau12i	$a1, %pc_hi20(nuls)
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $sp, 8
	st.d	$a1, $sp, 16
.LBB0_76:                               # %if.end49
	beqz	$a2, .LBB0_78
# %bb.77:                               # %if.then52
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	b	.LBB0_79
.LBB0_78:
	move	$a0, $zero
.LBB0_79:                               # %cleanup
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
	ret
.LBB0_80:                               # %if.end.i124
	ld.d	$a3, $fp, 8
	move	$a2, $zero
	move	$a1, $zero
	addi.d	$a3, $a3, 8
	lu12i.w	$a4, 327680
	lu12i.w	$a5, 294912
	b	.LBB0_83
.LBB0_81:                               # %sw.bb1.i
                                        #   in Loop: Header=BB0_83 Depth=1
	slt	$a7, $a1, $a2
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $a2, $a7
	or	$a1, $a7, $a1
	addi.d	$a2, $a2, -1
.LBB0_82:                               # %do.cond.i
                                        #   in Loop: Header=BB0_83 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a6, $s3, .LBB0_86
.LBB0_83:                               # %do.body.i126
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	and	$a6, $a6, $s0
	addi.w	$a7, $a6, 0
	beq	$a7, $a4, .LBB0_81
# %bb.84:                               # %do.body.i126
                                        #   in Loop: Header=BB0_83 Depth=1
	bne	$a7, $a5, .LBB0_82
# %bb.85:                               # %sw.bb.i134
                                        #   in Loop: Header=BB0_83 Depth=1
	addi.d	$a2, $a2, 1
	b	.LBB0_82
.LBB0_86:                               # %do.end.i
	ori	$a3, $zero, 1
	beqz	$a2, .LBB0_95
# %bb.87:                               # %if.then8.i
	ld.w	$a4, $fp, 72
	move	$a2, $zero
	ori	$a4, $a4, 4
	st.w	$a4, $fp, 72
	b	.LBB0_72
.LBB0_88:                               # %do.end34.i
	ld.w	$a1, $fp, 104
	beqz	$a1, .LBB0_70
# %bb.89:                               # %if.end39.i
	move	$s2, $a0
	addi.d	$a0, $a1, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	beqz	$a0, .LBB0_96
# %bb.90:                               # %if.end47.i
	move	$a1, $a0
	ld.w	$a5, $fp, 104
	ori	$a2, $zero, 1
	blt	$a5, $a2, .LBB0_97
# %bb.91:                               # %while.cond.preheader.preheader.i
	lu12i.w	$a3, 65536
	move	$a0, $s2
.LBB0_92:                               # %while.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_93 Depth 2
	move	$a4, $a5
	.p2align	4, , 16
.LBB0_93:                               # %while.cond.i
                                        #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $s1, 0
	and	$a6, $a5, $s0
	addi.d	$s1, $s1, 8
	bne	$a6, $a3, .LBB0_93
# %bb.94:                               # %while.end.i
                                        #   in Loop: Header=BB0_92 Depth=1
	addi.d	$a6, $a1, 1
	st.b	$a5, $a1, 0
	addi.d	$a5, $a4, -1
	move	$a1, $a6
	blt	$a2, $a4, .LBB0_92
	b	.LBB0_98
.LBB0_95:
	move	$a2, $zero
	b	.LBB0_72
.LBB0_96:                               # %if.then45.i
	st.w	$zero, $fp, 104
	move	$a0, $s2
	b	.LBB0_70
.LBB0_97:
	move	$a6, $a1
	move	$a0, $s2
.LBB0_98:                               # %for.end.i
	st.b	$zero, $a6, 0
	b	.LBB0_70
.Lfunc_end0:
	.size	cli_regcomp, .Lfunc_end0-cli_regcomp
                                        # -- End function
	.p2align	5                               # -- Begin function p_ere
	.type	p_ere,@function
p_ere:                                  # @p_ere
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
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 0
	ld.d	$s6, $a0, 8
	ld.d	$a0, $a0, 40
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bgeu	$s3, $s6, .LBB1_239
# %bb.1:                                # %land.lhs.true.preheader.preheader
	move	$s0, $a1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	addi.d	$a0, $fp, 64
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 144
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s4, $zero, 124
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, -32768
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, -491520
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 88
	lu12i.w	$a0, -458752
	ori	$a0, $a0, 2
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 1488
	ori	$a0, $a0, 2654
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB1_5
.LBB1_2:                                # %if.end249.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, -42
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB1_185
# %bb.3:                                # %if.end249.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 63
	beq	$a0, $a1, .LBB1_185
	.p2align	4, , 16
.LBB1_4:                                # %p_ere_exp.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s3, $s6, .LBB1_188
.LBB1_5:                                # %land.lhs.true
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_103 Depth 2
                                        #     Child Loop BB1_211 Depth 2
                                        #     Child Loop BB1_136 Depth 2
	ld.b	$a0, $s3, 0
	ld.d	$s5, $fp, 40
	beq	$a0, $s4, .LBB1_189
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_5 Depth=1
	beq	$s0, $a0, .LBB1_189
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s2, $s3, 1
	st.d	$s2, $fp, 0
	ld.bu	$s3, $s3, 0
	addi.d	$a0, $s3, -36
	bltu	$s7, $a0, .LBB1_16
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_9:                                # %sw.bb53.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_78
# %bb.10:                               # %if.then.i423
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 13
	b	.LBB1_77
.LBB1_11:                               # %sw.bb74.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s2, $s6, .LBB1_16
# %bb.12:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB1_16
# %bb.13:                               # %lor.rhs86.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_15
# %bb.14:                               # %if.then.i382
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 16
.LBB1_15:                               # %seterr.exit383
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_16:                               # %sw.default.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ext.w.b	$a1, $s3
	b	.LBB1_54
.LBB1_17:                               # %sw.bb51.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_19
# %bb.18:                               # %if.then.i429
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 14
	st.w	$a0, $fp, 16
.LBB1_19:                               # %seterr.exit430
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_79
.LBB1_20:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bltu	$s2, $s6, .LBB1_24
# %bb.21:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_23
# %bb.22:                               # %if.then.i557
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 16
.LBB1_23:                               # %seterr.exit558
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s6, $a0, %pc_lo12(nuls)
	st.d	$s6, $fp, 0
	st.d	$s6, $fp, 8
	move	$s2, $s6
.LBB1_24:                               # %lor.end.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 112
	addi.d	$s3, $a1, 1
	st.d	$s3, $a0, 112
	slli.d	$s8, $s3, 3
	ori	$a0, $zero, 9
	blt	$a0, $s3, .LBB1_30
# %bb.25:                               # %if.then.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	stx.d	$s5, $a0, $s8
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_31
.LBB1_26:                               # %if.end.i527
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB1_59
# %bb.27:                               # %if.then2.i531
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_59
# %bb.28:                               # %if.end.i.i541
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_56
# %bb.29:                               # %if.end4.i.i546
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s2, $fp, 0
	ld.d	$s6, $fp, 8
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_59
.LBB1_30:                               # %if.end.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB1_26
.LBB1_31:                               # %doemit.exit552
                                        #   in Loop: Header=BB1_5 Depth=1
	bltu	$s2, $s6, .LBB1_60
	b	.LBB1_67
.LBB1_32:                               # %sw.bb55.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	bnez	$a0, .LBB1_55
# %bb.33:                               # %if.else.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	ori	$s2, $zero, 1
	bnez	$a0, .LBB1_81
# %bb.34:                               # %if.end.i392
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 32
	blt	$s5, $a0, .LBB1_220
# %bb.35:                               # %if.then2.i396
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_220
# %bb.36:                               # %if.end.i.i405
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_217
# %bb.37:                               # %if.end4.i.i410
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_220
.LBB1_38:                               # %sw.bb45.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_154
# %bb.39:                               # %if.end.i433
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 32
	blt	$s5, $a0, .LBB1_153
# %bb.40:                               # %if.then2.i437
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_153
# %bb.41:                               # %if.end.i.i446
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_150
# %bb.42:                               # %if.end4.i.i451
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_153
.LBB1_43:                               # %sw.bb60.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bracket)
	jirl	$ra, $ra, 0
	b	.LBB1_80
.LBB1_44:                               # %sw.bb41.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_159
# %bb.45:                               # %if.end.i460
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 32
	blt	$s5, $a0, .LBB1_158
# %bb.46:                               # %if.then2.i464
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_158
# %bb.47:                               # %if.end.i.i473
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_155
# %bb.48:                               # %if.end4.i.i478
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_158
.LBB1_49:                               # %sw.bb61.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bltu	$s2, $s6, .LBB1_53
# %bb.50:                               # %lor.rhs66.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_52
# %bb.51:                               # %if.then.i388
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 16
.LBB1_52:                               # %seterr.exit389
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s2, $fp, 8
.LBB1_53:                               # %lor.end69.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $s2, 1
	st.d	$a0, $fp, 0
	ld.b	$a1, $s2, 0
.LBB1_54:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ordinary)
	jirl	$ra, $ra, 0
	b	.LBB1_80
.LBB1_55:                               # %if.then58.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $sp, 116
	st.d	$a0, $fp, 0
	addi.d	$a0, $sp, 119
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $sp, 116
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bracket)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 8
	b	.LBB1_80
.LBB1_56:                               # %if.then2.i.i547
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_58
# %bb.57:                               # %if.then.i.i.i551
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_58:                               # %seterr.exit.i.i549
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s6, $a0, %pc_lo12(nuls)
	st.d	$s6, $fp, 0
	st.d	$s6, $fp, 8
	move	$s2, $s6
.LBB1_59:                               # %if.end4.i536
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 425984
	or	$a1, $s3, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	bgeu	$s2, $s6, .LBB1_67
.LBB1_60:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB1_67
# %bb.61:                               # %if.end17.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 9
	blt	$a0, $s3, .LBB1_68
.LBB1_62:                               # %if.then20.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s8
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_69
.LBB1_63:                               # %if.end.i499
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB1_73
# %bb.64:                               # %if.then2.i503
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_73
# %bb.65:                               # %if.end.i.i513
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_70
# %bb.66:                               # %if.end4.i.i518
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_73
.LBB1_67:                               # %if.then16.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_ere)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	bge	$a0, $s3, .LBB1_62
.LBB1_68:                               # %if.end23.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB1_63
.LBB1_69:                               # %doemit.exit524
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	bltu	$a0, $a1, .LBB1_74
	b	.LBB1_75
.LBB1_70:                               # %if.then2.i.i519
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_72
# %bb.71:                               # %if.then.i.i.i523
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_72:                               # %seterr.exit.i.i521
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_73:                               # %if.end4.i508
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 458752
	or	$a1, $s3, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	bgeu	$a0, $a1, .LBB1_75
.LBB1_74:                               # %land.lhs.true28.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a0, 0
	ori	$s2, $zero, 1
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB1_81
.LBB1_75:                               # %lor.rhs34.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_78
# %bb.76:                               # %if.then.i495
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 8
.LBB1_77:                               # %seterr.exit496
                                        #   in Loop: Header=BB1_5 Depth=1
	st.w	$a0, $fp, 16
.LBB1_78:                               # %seterr.exit496
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
.LBB1_79:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_80:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$s2, $zero, 1
.LBB1_81:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s3, $fp, 0
	ld.d	$s6, $fp, 8
	bgeu	$s3, $s6, .LBB1_4
# %bb.82:                               # %if.end97.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$s8, $s3, 0
	addi.d	$a0, $s8, -42
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_87
# %bb.83:                               # %if.end97.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 63
	beq	$s8, $a0, .LBB1_87
# %bb.84:                               # %if.end97.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 123
	bne	$s8, $a0, .LBB1_4
# %bb.85:                               # %land.lhs.true114.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s3, 1
	bgeu	$s1, $s6, .LBB1_4
# %bb.86:                               # %land.lhs.true119.i
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB1_4
	.p2align	4, , 16
.LBB1_87:                               # %if.end130.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s3, $s3, 1
	st.d	$s3, $fp, 0
	bnez	$s2, .LBB1_91
# %bb.88:                               # %lor.rhs134.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_90
# %bb.89:                               # %if.then.i376
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 16
.LBB1_90:                               # %seterr.exit377
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s3, $a0, %pc_lo12(nuls)
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
	move	$s6, $s3
.LBB1_91:                               # %lor.end137.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 62
	blt	$a0, $s8, .LBB1_99
# %bb.92:                               # %lor.end137.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 42
	beq	$s8, $a0, .LBB1_107
# %bb.93:                               # %lor.end137.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 43
	bne	$s8, $a0, .LBB1_181
# %bb.94:                               # %sw.bb149.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a0, $a0, $s5
	addi.d	$a2, $a0, 1
	move	$a0, $fp
	lu12i.w	$a1, 294912
	move	$a3, $s5
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_181
# %bb.95:                               # %if.end.i290
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s2, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$s2, $a0, .LBB1_163
# %bb.96:                               # %if.then2.i294
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_163
# %bb.97:                               # %if.end.i.i304
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_160
# %bb.98:                               # %if.end4.i.i309
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_163
.LBB1_99:                               # %lor.end137.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 63
	beq	$s8, $a0, .LBB1_112
# %bb.100:                              # %lor.end137.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 123
	bne	$s8, $a0, .LBB1_181
# %bb.101:                              # %sw.bb173.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s3, $s6, .LBB1_122
# %bb.102:                              # %land.lhs.true.lr.ph.i165
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_103:                              # %land.lhs.true.i167
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $s3, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a1, $a3
	andi	$a3, $a3, 2048
	beqz	$a3, .LBB1_129
# %bb.104:                              # %land.lhs.true.i167
                                        #   in Loop: Header=BB1_103 Depth=2
	ori	$a3, $zero, 255
	blt	$a3, $a2, .LBB1_129
# %bb.105:                              # %while.body.i181
                                        #   in Loop: Header=BB1_103 Depth=2
	addi.d	$s2, $s3, 1
	st.d	$s2, $fp, 0
	ld.b	$a3, $s3, 0
	slli.d	$a4, $a2, 3
	alsl.d	$a2, $a2, $a4, 1
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, -48
	addi.w	$a0, $a0, 1
	move	$s3, $s2
	bne	$s2, $s6, .LBB1_103
# %bb.106:                              #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	bnez	$a0, .LBB1_130
	b	.LBB1_123
.LBB1_107:                              # %sw.bb140.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a0, $a0, $s5
	addi.d	$a2, $a0, 1
	move	$a0, $fp
	lu12i.w	$a1, 294912
	move	$a3, $s5
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.w	$a0, $fp, 16
	sub.d	$s2, $a1, $s5
	bnez	$a0, .LBB1_168
# %bb.108:                              # %if.end.i346
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB1_167
# %bb.109:                              # %if.then2.i350
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_167
# %bb.110:                              # %if.end.i.i360
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_164
# %bb.111:                              # %if.end4.i.i365
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_167
.LBB1_112:                              # %sw.bb155.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a0, $a0, $s5
	addi.d	$a2, $a0, 1
	move	$a0, $fp
	lu12i.w	$a1, 491520
	move	$a3, $s5
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_181
# %bb.113:                              # %if.end.i262
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$s2, $a2, $s5
	ori	$a1, $zero, 1
	blt	$a2, $a0, .LBB1_117
# %bb.114:                              # %if.then2.i266
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a0, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a0, $s1, .LBB1_117
# %bb.115:                              # %if.end.i.i276
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 24
	mul.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_173
# %bb.116:                              # %if.end4.i.i281
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a1, $fp, 16
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	sltui	$a1, $a1, 1
.LBB1_117:                              # %doemit.exit287
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	or	$a3, $s2, $a0
	ld.d	$a0, $fp, 24
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a0, $a2
	beqz	$a1, .LBB1_181
# %bb.118:                              # %if.end.i227
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	slli.d	$a2, $s5, 3
	ldx.d	$a3, $a0, $a2
	sub.d	$a1, $a1, $s5
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	and	$a3, $a3, $a4
	or	$a1, $a3, $a1
	stx.d	$a1, $a0, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB1_145
# %bb.119:                              # %if.then2.i231
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a1, $s1, .LBB1_145
# %bb.120:                              # %if.end.i.i240
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_226
# %bb.121:                              # %doemit.exit251
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	ld.w	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a3, $a0, $a1
	bnez	$a2, .LBB1_181
	b	.LBB1_146
.LBB1_122:                              #   in Loop: Header=BB1_5 Depth=1
	move	$a2, $zero
.LBB1_123:                              # %lor.rhs.i157
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	move	$a3, $a2
	ori	$s1, $zero, 125
	bnez	$a0, .LBB1_125
.LBB1_124:                              # %if.end207.i.sink.split.sink.split
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 16
.LBB1_125:                              # %if.end207.i.sink.split
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_126:                              # %if.end207.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(repeat)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 8
	bgeu	$a1, $a0, .LBB1_140
# %bb.127:                              # %land.lhs.true212.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a2, $a1, 0
	bne	$a2, $s1, .LBB1_135
# %bb.128:                              # %cond.true217.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $a1, 1
	st.d	$a0, $fp, 0
	b	.LBB1_181
.LBB1_129:                              #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $s3
	beqz	$a0, .LBB1_123
.LBB1_130:                              # %while.end.i176
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 256
	bge	$a2, $a0, .LBB1_123
# %bb.131:                              # %p_count.exit189
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s2, $s6, .LBB1_144
# %bb.132:                              # %land.lhs.true179.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB1_144
# %bb.133:                              # %cond.true.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $a2
	addi.d	$s3, $s2, 1
	st.d	$s3, $fp, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s2, 1
	ld.d	$a1, $a0, 0
	slli.d	$a0, $a2, 1
	ldx.hu	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	ori	$a3, $zero, 256
	bnez	$a0, .LBB1_209
# %bb.134:                              #   in Loop: Header=BB1_5 Depth=1
	move	$a2, $s8
	ori	$s1, $zero, 125
	b	.LBB1_126
.LBB1_135:                              # %while.body.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB1_136:                              # %while.body.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $fp, 0
	beq	$a1, $a0, .LBB1_140
# %bb.137:                              # %land.rhs.ithread-pre-split
                                        #   in Loop: Header=BB1_136 Depth=2
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	bne	$a2, $s1, .LBB1_136
# %bb.138:                              # %lor.end239.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_143
# %bb.139:                              #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 10
	b	.LBB1_142
.LBB1_140:                              # %lor.rhs236.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_143
# %bb.141:                              #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 9
.LBB1_142:                              # %seterr.exit126.sink.split
                                        #   in Loop: Header=BB1_5 Depth=1
	st.w	$a0, $fp, 16
.LBB1_143:                              # %seterr.exit126
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB1_181
.LBB1_144:                              #   in Loop: Header=BB1_5 Depth=1
	move	$a3, $a2
	ori	$s1, $zero, 125
	b	.LBB1_126
.LBB1_145:                              # %doemit.exit251.thread
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
.LBB1_146:                              # %if.end.i192
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	alsl.d	$a1, $a1, $a0, 3
	ld.d	$a2, $a1, -8
	srli.d	$a2, $a2, 27
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 31, 27
	st.d	$a3, $a1, -8
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB1_238
# %bb.147:                              # %if.then2.i196
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a1, $s1, .LBB1_238
# %bb.148:                              # %if.end.i.i205
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_235
# %bb.149:                              # %if.end4.i.i210
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_238
.LBB1_150:                              # %if.then2.i.i452
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_152
# %bb.151:                              # %if.then.i.i.i456
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_152:                              # %seterr.exit.i.i454
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_153:                              # %if.end4.i442
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 131072
	stx.d	$a2, $a1, $a0
.LBB1_154:                              # %doemit.exit457
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 56
	ld.w	$a1, $a0, 72
	ld.w	$a2, $a0, 80
	ori	$a1, $a1, 2
	st.w	$a1, $a0, 72
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, 80
	b	.LBB1_80
.LBB1_155:                              # %if.then2.i.i479
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_157
# %bb.156:                              # %if.then.i.i.i483
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_157:                              # %seterr.exit.i.i481
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_158:                              # %if.end4.i469
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 98304
	stx.d	$a2, $a1, $a0
.LBB1_159:                              # %doemit.exit484
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 56
	ld.w	$a1, $a0, 72
	ld.w	$a2, $a0, 76
	move	$s2, $zero
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 72
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, 76
	b	.LBB1_81
.LBB1_160:                              # %if.then2.i.i310
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_162
# %bb.161:                              # %if.then.i.i.i314
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_162:                              # %seterr.exit.i.i312
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_163:                              # %if.end4.i299
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a1, $s2, $s5
	lu12i.w	$a2, 327680
	b	.LBB1_180
.LBB1_164:                              # %if.then2.i.i366
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_166
# %bb.165:                              # %if.then.i.i.i370
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_166:                              # %seterr.exit.i.i368
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_167:                              # %if.end4.i355
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 327680
	or	$a1, $s2, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $fp, 40
	sub.d	$s2, $a0, $s5
.LBB1_168:                              # %doemit.exit371
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $s2, 1
	move	$a0, $fp
	lu12i.w	$a1, 360448
	move	$a3, $s5
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_181
# %bb.169:                              # %if.end.i318
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s2, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$s2, $a0, .LBB1_179
# %bb.170:                              # %if.then2.i322
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB1_179
# %bb.171:                              # %if.end.i.i332
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_176
# %bb.172:                              # %if.end4.i.i337
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_179
.LBB1_173:                              # %if.then2.i.i282
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_175
# %bb.174:                              # %if.then.i.i.i286
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_175:                              # %seterr.exit.i.i284
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $s2, $a0
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	b	.LBB1_181
.LBB1_176:                              # %if.then2.i.i338
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_178
# %bb.177:                              # %if.then.i.i.i342
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_178:                              # %seterr.exit.i.i340
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_179:                              # %if.end4.i327
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a1, $s2, $s5
	lu12i.w	$a2, 393216
.LBB1_180:                              # %sw.epilog243.i
                                        #   in Loop: Header=BB1_5 Depth=1
	or	$a1, $a1, $a2
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	.p2align	4, , 16
.LBB1_181:                              # %sw.epilog243.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s3, $fp, 0
	ld.d	$s6, $fp, 8
	bgeu	$s3, $s6, .LBB1_4
# %bb.182:                              # %if.end249.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB1_2
# %bb.183:                              # %land.lhs.true266.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s3, 1
	bgeu	$s1, $s6, .LBB1_4
# %bb.184:                              # %land.lhs.true272.i
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB1_4
.LBB1_185:                              # %if.end283.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_187
# %bb.186:                              # %if.then.i119
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 16
.LBB1_187:                              # %p_ere_exp.exit.thread
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s3, $a0, %pc_lo12(nuls)
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
	move	$s6, $s3
.LBB1_188:                              # %p_ere_exp.exit.while.end.loopexit_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s5, $fp, 40
.LBB1_189:                              # %while.end
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB1_249
# %bb.190:                              # %lor.end
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s3, $s6, .LBB1_243
# %bb.191:                              # %land.lhs.true14
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.bu	$a0, $s3, 0
	bne	$a0, $s4, .LBB1_243
# %bb.192:                              # %cond.true
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $s3, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB1_195
# %bb.193:                              #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB1_196
.LBB1_194:                              #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $s5
	b	.LBB1_225
.LBB1_195:                              # %if.then21
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $s5, $s1
	addi.d	$a2, $a0, 1
	move	$a0, $fp
	lu12i.w	$a1, 491520
	move	$a3, $s1
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 40
	move	$s2, $s1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_194
.LBB1_196:                              # %if.end.i39
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 32
	ori	$a1, $zero, 1
	blt	$s5, $a0, .LBB1_203
# %bb.197:                              # %if.then2.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a0, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a0, $s1, .LBB1_203
# %bb.198:                              # %if.end.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 24
	mul.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_200
# %bb.199:                              # %if.end4.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a1, $fp, 16
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	sltui	$a1, $a1, 1
	b	.LBB1_203
.LBB1_200:                              # %if.then2.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_202
# %bb.201:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_202:                              # %seterr.exit.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_203:                              # %doemit.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a2, $fp, 40
	sub.d	$a0, $s5, $s2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	or	$a3, $a0, $a3
	ld.d	$a0, $fp, 24
	addi.d	$a4, $a2, 1
	st.d	$a4, $fp, 40
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a0, $a2
	ld.d	$s2, $fp, 40
	beqz	$a1, .LBB1_208
# %bb.204:                              # %if.end.i54
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a3, 3
	ldx.d	$a2, $a0, $a1
	sub.d	$a3, $s2, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	and	$a2, $a2, $a4
	or	$a2, $a2, $a3
	stx.d	$a2, $a0, $a1
	ld.d	$s5, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$s5, $a1, .LBB1_224
# %bb.205:                              # %if.then2.i58
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a1, $s1, .LBB1_224
# %bb.206:                              # %if.end.i.i67
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.207:                              # %if.end4.i.i72
                                        #   in Loop: Header=BB1_5 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_224
.LBB1_208:                              #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $s2
	b	.LBB1_225
.LBB1_209:                              # %if.then195.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bgeu	$s3, $s6, .LBB1_229
# %bb.210:                              # %land.lhs.true.i143.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $zero
	move	$a3, $zero
	move	$a2, $s8
	.p2align	4, , 16
.LBB1_211:                              # %land.lhs.true.i143
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $s3, 0
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a1, $a4
	andi	$a4, $a4, 2048
	beqz	$a4, .LBB1_215
# %bb.212:                              # %land.lhs.true.i143
                                        #   in Loop: Header=BB1_211 Depth=2
	ori	$a4, $zero, 255
	blt	$a4, $a3, .LBB1_215
# %bb.213:                              # %while.body.i148
                                        #   in Loop: Header=BB1_211 Depth=2
	addi.d	$a4, $s3, 1
	st.d	$a4, $fp, 0
	ld.b	$a5, $s3, 0
	slli.d	$a6, $a3, 3
	alsl.d	$a3, $a3, $a6, 1
	add.d	$a3, $a3, $a5
	addi.w	$a3, $a3, -48
	addi.w	$a0, $a0, 1
	move	$s3, $a4
	bne	$a4, $s6, .LBB1_211
# %bb.214:                              #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
.LBB1_215:                              # %while.end.i146
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$s1, $zero, 125
	beqz	$a0, .LBB1_230
# %bb.216:                              # %while.end.i146
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 256
	blt	$a3, $a0, .LBB1_233
	b	.LBB1_230
.LBB1_217:                              # %if.then2.i.i411
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_219
# %bb.218:                              # %if.then.i.i.i415
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_219:                              # %seterr.exit.i.i413
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_220:                              # %if.end4.i401
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 163840
	stx.d	$a2, $a1, $a0
	b	.LBB1_81
.LBB1_221:                              # %if.then2.i.i73
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_223
# %bb.222:                              # %if.then.i.i.i77
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_223:                              # %seterr.exit.i.i75
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB1_224:                              # %if.end4.i63
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
.LBB1_225:                              # %doemit.exit78
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$s3, $fp, 0
	ld.d	$s6, $fp, 8
	ld.d	$a0, $fp, 40
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	bltu	$s3, $s6, .LBB1_5
	b	.LBB1_240
.LBB1_226:                              # %if.then2.i.i246
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_228
# %bb.227:                              # %if.then.i.i.i250
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_228:                              # %doemit.exit251.thread612
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	ld.d	$a0, $fp, 24
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	b	.LBB1_181
.LBB1_229:                              #   in Loop: Header=BB1_5 Depth=1
	move	$a3, $zero
	move	$a2, $s8
	ori	$s1, $zero, 125
.LBB1_230:                              # %lor.rhs.i140
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_232
# %bb.231:                              # %if.then.i.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 16
.LBB1_232:                              # %seterr.exit.i
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB1_233:                              # %p_count.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	bge	$a3, $a2, .LBB1_126
# %bb.234:                              # %lor.rhs199.i
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_125
	b	.LBB1_124
.LBB1_235:                              # %if.then2.i.i211
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_237
# %bb.236:                              # %if.then.i.i.i215
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_237:                              # %seterr.exit.i.i213
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB1_238:                              # %if.end4.i201
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	b	.LBB1_181
.LBB1_239:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB1_240:                              # %lor.rhs
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_242
.LBB1_241:                              # %if.then.i37
	ori	$a0, $zero, 14
	st.w	$a0, $fp, 16
.LBB1_242:                              # %lor.end.thread
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_244
	b	.LBB1_254
.LBB1_243:
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_254
.LBB1_244:                              # %if.then32
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_254
# %bb.245:                              # %if.end.i89
	ld.d	$a0, $fp, 24
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a4, 3
	ldx.d	$a2, $a0, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a4
	lu12i.w	$a4, -32768
	lu32i.d	$a4, 0
	and	$a2, $a2, $a4
	or	$a2, $a2, $a3
	stx.d	$a2, $a0, $a1
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	sub.d	$s0, $a2, $a5
	blt	$a2, $a1, .LBB1_253
# %bb.246:                              # %if.then2.i93
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s1, $a3, $a2
	bge	$a1, $s1, .LBB1_253
# %bb.247:                              # %if.end.i.i103
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_250
# %bb.248:                              # %if.end4.i.i108
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB1_253
.LBB1_249:
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_242
	b	.LBB1_241
.LBB1_250:                              # %if.then2.i.i109
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB1_252
# %bb.251:                              # %if.then.i.i.i113
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB1_252:                              # %seterr.exit.i.i111
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB1_253:                              # %if.end4.i98
	ld.d	$a1, $fp, 40
	lu12i.w	$a2, -458752
	lu32i.d	$a2, 0
	or	$a2, $s0, $a2
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
.LBB1_254:                              # %if.end37
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	p_ere, .Lfunc_end1-p_ere
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_75-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_43-.LJTI1_0
	.word	.LBB1_49-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function p_bre
	.type	p_bre,@function
p_bre:                                  # @p_bre
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
	ld.d	$a3, $a0, 0
	ld.d	$s6, $a0, 8
	ld.d	$s2, $a0, 40
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a3, $s6, .LBB2_12
# %bb.1:                                # %land.lhs.true
	ld.bu	$a0, $a3, 0
	ori	$a1, $zero, 94
	bne	$a0, $a1, .LBB2_12
# %bb.2:                                # %cond.true
	ld.w	$a0, $fp, 16
	addi.d	$a3, $a3, 1
	st.d	$a3, $fp, 0
	bnez	$a0, .LBB2_11
# %bb.3:                                # %if.end.i
	ld.d	$a0, $fp, 32
	blt	$s2, $a0, .LBB2_10
# %bb.4:                                # %if.then2.i
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s0, $a2, $a1
	bge	$a0, $s0, .LBB2_10
# %bb.5:                                # %if.end.i.i
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.6:                                # %if.end4.i.i
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
	b	.LBB2_10
.LBB2_7:                                # %if.then2.i.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_9
# %bb.8:                                # %if.then.i.i.i
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_9:                                # %seterr.exit.i.i
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s6, $a0, %pc_lo12(nuls)
	st.d	$s6, $fp, 0
	st.d	$s6, $fp, 8
	move	$a3, $s6
.LBB2_10:                               # %if.end4.i
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 98304
	stx.d	$a2, $a1, $a0
.LBB2_11:                               # %doemit.exit
	ld.d	$a0, $fp, 56
	ld.w	$a1, $a0, 72
	ld.w	$a2, $a0, 76
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 72
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, 76
.LBB2_12:                               # %if.end
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s1, $a0, %pc_lo12(nuls)
	bgeu	$a3, $s6, .LBB2_14
# %bb.13:                               # %land.lhs.true14.lr.ph
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $zero
	move	$a0, $zero
	addi.d	$s7, $fp, 144
	addi.d	$a2, $fp, 64
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$s5, $zero, 92
	lu12i.w	$a2, 1488
	ori	$a2, $a2, 2654
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_19
.LBB2_14:                               # %while.end.thread
	ld.d	$a0, $fp, 40
	b	.LBB2_198
.LBB2_15:                               # %if.end4.i.i151
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s2, $fp, 32
.LBB2_16:                               # %if.end4.i141
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	sub.d	$a1, $s0, $s4
	lu12i.w	$a2, 393216
	or	$a1, $a1, $a2
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	.p2align	4, , 16
.LBB2_17:                               # %if.end277.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	move	$a1, $zero
.LBB2_18:                               # %p_simp_re.exit
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 1
	bgeu	$a3, $s6, .LBB2_187
.LBB2_19:                               # %land.lhs.true14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_128 Depth 2
                                        #     Child Loop BB2_176 Depth 2
                                        #     Child Loop BB2_142 Depth 2
	addi.d	$s8, $a3, 1
	bgeu	$s8, $s6, .LBB2_23
# %bb.20:                               # %land.lhs.true19
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.b	$a2, $a3, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bne	$a4, $a2, .LBB2_22
# %bb.21:                               # %land.rhs24
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.b	$a2, $s8, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	beq	$a4, $a2, .LBB2_187
.LBB2_22:                               # %while.body
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$s8, $fp, 0
	ld.b	$s3, $a3, 0
	ld.d	$s4, $fp, 40
	beq	$s3, $s5, .LBB2_27
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_23:                               # %while.body.thread
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$s8, $fp, 0
	ld.b	$s3, $a3, 0
	ld.d	$s4, $fp, 40
	bne	$s3, $s5, .LBB2_28
# %bb.24:                               # %lor.rhs.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a1, $fp, 16
	bnez	$a1, .LBB2_26
# %bb.25:                               # %if.then.i382
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 16
.LBB2_26:                               # %seterr.exit383
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$s1, $fp, 8
	move	$s6, $s1
	move	$s8, $s1
.LBB2_27:                               # %lor.end.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $s8, 1
	st.d	$a1, $fp, 0
	ld.b	$a2, $s8, 0
	ori	$s3, $a2, 256
	move	$s8, $a1
.LBB2_28:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a1, $zero, 295
	bge	$a1, $s3, .LBB2_35
# %bb.29:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a0, $s3, -296
	ori	$a1, $zero, 85
	bltu	$a1, $a0, .LBB2_60
# %bb.30:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_31:                               # %sw.bb85.i
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$a0, $s3
	bstrins.d	$a0, $zero, 8, 8
	addi.d	$s6, $a0, -48
	slli.d	$s0, $s6, 3
	ldx.d	$a1, $s7, $s0
	ld.w	$a0, $fp, 16
	beqz	$a1, .LBB2_39
# %bb.32:                               # %if.then91.i
                                        #   in Loop: Header=BB2_19 Depth=1
	beqz	$a0, .LBB2_42
# %bb.33:                               # %doemit.exit274
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	addi.d	$s2, $a0, 1
	bne	$a1, $s2, .LBB2_69
.LBB2_34:                               # %dupl.exit
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_84
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_35:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a1, $zero, 42
	beq	$s3, $a1, .LBB2_56
# %bb.36:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 46
	beq	$s3, $a0, .LBB2_61
# %bb.37:                               # %if.end.i26
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 91
	bne	$s3, $a0, .LBB2_60
# %bb.38:                               # %sw.bb11.i
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bracket)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	b	.LBB2_174
.LBB2_39:                               # %if.else101.i
                                        #   in Loop: Header=BB2_19 Depth=1
	bnez	$a0, .LBB2_41
# %bb.40:                               # %if.then.i196
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 16
.LBB2_41:                               # %seterr.exit197
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB2_84
.LBB2_42:                               # %if.end.i249
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 32
	blt	$s4, $a0, .LBB2_68
# %bb.43:                               # %if.then2.i253
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s2, $a2, $a1
	bge	$a0, $s2, .LBB2_68
# %bb.44:                               # %if.end.i.i263
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_65
# %bb.45:                               # %if.end4.i.i268
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s2, $fp, 32
	b	.LBB2_68
.LBB2_46:                               # %sw.bb12.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_116
# %bb.47:                               # %if.then.i347
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 13
	b	.LBB2_115
.LBB2_48:                               # %sw.bb14.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 112
	addi.d	$s0, $a1, 1
	st.d	$s0, $a0, 112
	slli.d	$s2, $s0, 3
	ori	$a0, $zero, 9
	blt	$a0, $s0, .LBB2_54
# %bb.49:                               # %if.then20.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	stx.d	$s4, $a0, $s2
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_55
.LBB2_50:                               # %if.end.i317
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB2_92
# %bb.51:                               # %if.then2.i321
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a2, $a2, $a1
	bge	$a0, $a2, .LBB2_92
# %bb.52:                               # %if.end.i.i331
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_89
# %bb.53:                               # %if.end4.i.i336
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$s8, $fp, 0
	ld.d	$s6, $fp, 8
	st.d	$a0, $fp, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $fp, 32
	b	.LBB2_92
.LBB2_54:                               # %if.end22.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB2_50
.LBB2_55:                               # %doemit.exit342
                                        #   in Loop: Header=BB2_19 Depth=1
	bltu	$s8, $s6, .LBB2_93
	b	.LBB2_97
.LBB2_56:                               # %sw.bb105.i
                                        #   in Loop: Header=BB2_19 Depth=1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_60
# %bb.57:                               # %lor.rhs107.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_59
# %bb.58:                               # %if.then.i190
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 16
.LBB2_59:                               # %seterr.exit191
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$s1, $fp, 0
	st.d	$s1, $fp, 8
.LBB2_60:                               # %sw.default.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ext.w.b	$a1, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ordinary)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	b	.LBB2_174
.LBB2_61:                               # %sw.bb.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 56
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	bnez	$a0, .LBB2_64
# %bb.62:                               # %if.else.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB2_85
	.p2align	4, , 16
# %bb.63:                               # %sw.epilog.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	b	.LBB2_174
.LBB2_64:                               # %if.then9.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a0, $sp, 68
	st.d	$a0, $fp, 0
	addi.d	$a0, $sp, 71
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $sp, 68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bracket)
	jirl	$ra, $ra, 0
	st.d	$s8, $fp, 0
	st.d	$s6, $fp, 8
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	b	.LBB2_174
.LBB2_65:                               # %if.then2.i.i269
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_67
# %bb.66:                               # %if.then.i.i.i273
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_67:                               # %seterr.exit.i.i271
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_68:                               # %if.end4.i258
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	alsl.d	$a1, $s6, $s7, 3
	lu12i.w	$a2, 229376
	or	$a2, $s6, $a2
	ld.d	$a3, $fp, 24
	addi.d	$a4, $a0, 1
	st.d	$a4, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a2, $a3, $a0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	addi.d	$s2, $a0, 1
	beq	$a1, $s2, .LBB2_34
.LBB2_69:                               # %if.end.i228
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	sub.d	$s0, $a1, $s2
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB2_75
# %bb.70:                               # %if.end.i.i236
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 32
	add.d	$s8, $a1, $s0
	slli.d	$a1, $s8, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_72
# %bb.71:                               # %if.end4.i.i241
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s8, $fp, 32
	b	.LBB2_75
.LBB2_72:                               # %if.then2.i.i242
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_74
# %bb.73:                               # %if.then.i.i.i246
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_74:                               # %seterr.exit.i.i244
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB2_75:                               # %enlarge.exit.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 40
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $s2, $a0, 3
	slli.d	$a2, $s0, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 40
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_84
.LBB2_76:                               # %if.end.i200
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB2_83
# %bb.77:                               # %if.then2.i204
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s0, $a2, $a1
	bge	$a0, $s0, .LBB2_83
# %bb.78:                               # %if.end.i.i214
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_80
# %bb.79:                               # %if.end4.i.i219
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
	b	.LBB2_83
.LBB2_80:                               # %if.then2.i.i220
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_82
# %bb.81:                               # %if.then.i.i.i224
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_82:                               # %seterr.exit.i.i222
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_83:                               # %if.end4.i209
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 262144
	or	$a1, $s6, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
.LBB2_84:                               # %if.end103.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 56
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 120
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	b	.LBB2_174
.LBB2_85:                               # %if.end.i351
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 32
	blt	$s4, $a0, .LBB2_173
# %bb.86:                               # %if.then2.i355
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s0, $a2, $a1
	bge	$a0, $s0, .LBB2_173
# %bb.87:                               # %if.end.i.i364
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_170
# %bb.88:                               # %if.end4.i.i369
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
	b	.LBB2_173
.LBB2_89:                               # %if.then2.i.i337
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_91
# %bb.90:                               # %if.then.i.i.i341
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_91:                               # %seterr.exit.i.i339
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s6, $a0, %pc_lo12(nuls)
	st.d	$s6, $fp, 0
	st.d	$s6, $fp, 8
	move	$s8, $s6
.LBB2_92:                               # %if.end4.i326
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 425984
	or	$a1, $s0, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	bgeu	$s8, $s6, .LBB2_97
.LBB2_93:                               # %land.lhs.true31.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a0, $s8, 1
	bgeu	$a0, $s6, .LBB2_96
# %bb.94:                               # %land.lhs.true36.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a1, $s8, 0
	bne	$a1, $s5, .LBB2_96
# %bb.95:                               # %land.lhs.true41.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 41
	beq	$a0, $a1, .LBB2_97
.LBB2_96:                               # %if.then47.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a1, $zero, 92
	ori	$a2, $zero, 41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bre)
	jirl	$ra, $ra, 0
.LBB2_97:                               # %if.end48.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 9
	blt	$a0, $s0, .LBB2_103
# %bb.98:                               # %if.then51.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	stx.d	$a0, $s7, $s2
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_104
.LBB2_99:                               # %if.end.i289
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB2_108
# %bb.100:                              # %if.then2.i293
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s2, $a2, $a1
	bge	$a0, $s2, .LBB2_108
# %bb.101:                              # %if.end.i.i303
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_105
# %bb.102:                              # %if.end4.i.i308
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s2, $fp, 32
	b	.LBB2_108
.LBB2_103:                              # %if.end54.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB2_99
.LBB2_104:                              # %doemit.exit314
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $fp, 8
	bltu	$a0, $a2, .LBB2_109
	b	.LBB2_113
.LBB2_105:                              # %if.then2.i.i309
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_107
# %bb.106:                              # %if.then.i.i.i313
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_107:                              # %seterr.exit.i.i311
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_108:                              # %if.end4.i298
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 458752
	or	$a1, $s0, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $fp, 8
	bgeu	$a0, $a2, .LBB2_113
.LBB2_109:                              # %land.lhs.true59.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $a2, .LBB2_113
# %bb.110:                              # %land.lhs.true65.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a2, $a0, 0
	bne	$a2, $s5, .LBB2_113
# %bb.111:                              # %land.lhs.true70.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 41
	bne	$a1, $a2, .LBB2_113
# %bb.112:                              # %cond.true.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a0, $a0, 2
	st.d	$a0, $fp, 0
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bgeu	$a3, $s6, .LBB2_174
	b	.LBB2_117
.LBB2_113:                              # %lor.rhs78.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_116
# %bb.114:                              # %if.then.i285
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 8
.LBB2_115:                              # %seterr.exit348
                                        #   in Loop: Header=BB2_19 Depth=1
	st.w	$a0, $fp, 16
.LBB2_116:                              # %seterr.exit348
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bgeu	$a3, $s6, .LBB2_174
.LBB2_117:                              # %land.lhs.true118.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a0, $a3, 1
	ori	$a2, $zero, 42
	bne	$a1, $a2, .LBB2_123
# %bb.118:                              # %cond.true123.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 0
	sub.d	$a0, $a1, $s4
	addi.d	$a2, $a0, 1
	move	$a0, $fp
	lu12i.w	$a1, 294912
	move	$a3, $s4
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.w	$a0, $fp, 16
	sub.d	$s0, $a1, $s4
	bnez	$a0, .LBB2_163
# %bb.119:                              # %if.end.i160
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB2_162
# %bb.120:                              # %if.then2.i164
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s2, $a2, $a1
	bge	$a0, $s2, .LBB2_162
# %bb.121:                              # %if.end.i.i174
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_159
# %bb.122:                              # %if.end4.i.i179
                                        #   in Loop: Header=BB2_19 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s2, $fp, 32
	b	.LBB2_162
	.p2align	4, , 16
.LBB2_123:                              # %land.lhs.true143.i
                                        #   in Loop: Header=BB2_19 Depth=1
	bgeu	$a0, $s6, .LBB2_174
# %bb.124:                              # %land.lhs.true143.i
                                        #   in Loop: Header=BB2_19 Depth=1
	bne	$a1, $s5, .LBB2_174
# %bb.125:                              # %land.lhs.true154.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB2_174
# %bb.126:                              # %cond.true160.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$s0, $a3, 2
	st.d	$s0, $fp, 0
	bgeu	$s0, $s6, .LBB2_132
# %bb.127:                              # %land.lhs.true.lr.ph.i105
                                        #   in Loop: Header=BB2_19 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 0
	move	$a0, $zero
	move	$a2, $zero
	ori	$s3, $zero, 255
	.p2align	4, , 16
.LBB2_128:                              # %land.lhs.true.i107
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a3, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB2_151
# %bb.129:                              # %land.lhs.true.i107
                                        #   in Loop: Header=BB2_128 Depth=2
	blt	$s3, $a2, .LBB2_151
# %bb.130:                              # %while.body.i121
                                        #   in Loop: Header=BB2_128 Depth=2
	addi.d	$a1, $s0, 1
	st.d	$a1, $fp, 0
	ld.b	$a4, $s0, 0
	slli.d	$a5, $a2, 3
	alsl.d	$a2, $a2, $a5, 1
	add.d	$a2, $a2, $a4
	addi.w	$a2, $a2, -48
	addi.w	$a0, $a0, 1
	move	$s0, $a1
	bne	$a1, $s6, .LBB2_128
# %bb.131:                              #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 1
	bnez	$a0, .LBB2_152
	b	.LBB2_133
.LBB2_132:                              #   in Loop: Header=BB2_19 Depth=1
	move	$a2, $zero
.LBB2_133:                              # %lor.rhs.i97
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	move	$a3, $a2
	bnez	$a0, .LBB2_135
.LBB2_134:                              # %if.end205.i.sink.split.sink.split
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 16
.LBB2_135:                              # %if.end205.i.sink.split
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_136:                              # %if.end205.i
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(repeat)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	ld.d	$a0, $fp, 8
	ori	$a4, $zero, 125
	bgeu	$a2, $a0, .LBB2_147
# %bb.137:                              # %land.lhs.true210.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a2, 1
	bgeu	$a1, $a0, .LBB2_142
# %bb.138:                              # %land.lhs.true216.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a3, $a2, 0
	bne	$a3, $s5, .LBB2_142
# %bb.139:                              # %land.lhs.true221.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a3, $a1, 0
	bne	$a3, $a4, .LBB2_142
# %bb.140:                              # %cond.true227.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a0, $a2, 2
	st.d	$a0, $fp, 0
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_141:                              # %while.body.i
                                        #   in Loop: Header=BB2_142 Depth=2
	st.d	$a2, $fp, 0
	addi.d	$a1, $a2, 1
	beq	$a2, $a0, .LBB2_147
.LBB2_142:                              # %land.lhs.true240.i
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	bgeu	$a1, $a0, .LBB2_141
# %bb.143:                              # %land.lhs.true246.i
                                        #   in Loop: Header=BB2_142 Depth=2
	ld.bu	$a1, $a2, -1
	bne	$a1, $s5, .LBB2_141
# %bb.144:                              # %land.rhs251.i
                                        #   in Loop: Header=BB2_142 Depth=2
	ld.bu	$a1, $a2, 0
	bne	$a1, $a4, .LBB2_141
# %bb.145:                              # %lor.end267.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_150
# %bb.146:                              #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 10
	b	.LBB2_149
.LBB2_147:                              # %lor.rhs264.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_150
# %bb.148:                              #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 9
.LBB2_149:                              # %seterr.exit67.sink.split
                                        #   in Loop: Header=BB2_19 Depth=1
	st.w	$a0, $fp, 16
.LBB2_150:                              # %seterr.exit67
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB2_17
.LBB2_151:                              #   in Loop: Header=BB2_19 Depth=1
	move	$a1, $s0
	beqz	$a0, .LBB2_133
.LBB2_152:                              # %while.end.i116
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 256
	bge	$a2, $a0, .LBB2_133
# %bb.153:                              # %p_count.exit129
                                        #   in Loop: Header=BB2_19 Depth=1
	bgeu	$a1, $s6, .LBB2_158
# %bb.154:                              # %land.lhs.true170.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.bu	$a0, $a1, 0
	ori	$a3, $zero, 44
	bne	$a0, $a3, .LBB2_158
# %bb.155:                              # %cond.true175.i
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$s0, $a1, 1
	st.d	$s0, $fp, 0
	ori	$a3, $zero, 256
	bgeu	$s0, $s6, .LBB2_136
# %bb.156:                              # %land.lhs.true184.i
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$s2, $a2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	ld.d	$a1, $a0, 0
	slli.d	$a0, $a2, 1
	ldx.hu	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB2_175
# %bb.157:                              #   in Loop: Header=BB2_19 Depth=1
	move	$a2, $s2
	ori	$a3, $zero, 256
	b	.LBB2_136
.LBB2_158:                              #   in Loop: Header=BB2_19 Depth=1
	move	$a3, $a2
	b	.LBB2_136
.LBB2_159:                              # %if.then2.i.i180
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_161
# %bb.160:                              # %if.then.i.i.i184
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_161:                              # %seterr.exit.i.i182
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_162:                              # %if.end4.i169
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 327680
	or	$a1, $s0, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $fp, 40
	sub.d	$s0, $a0, $s4
.LBB2_163:                              # %doemit.exit185
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a2, $s0, 1
	move	$a0, $fp
	lu12i.w	$a1, 360448
	move	$a3, $s4
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_17
# %bb.164:                              # %if.end.i132
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$s0, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$s0, $a0, .LBB2_16
# %bb.165:                              # %if.then2.i136
                                        #   in Loop: Header=BB2_19 Depth=1
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s2, $a2, $a1
	bge	$a0, $s2, .LBB2_16
# %bb.166:                              # %if.end.i.i146
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_15
# %bb.167:                              # %if.then2.i.i152
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_169
# %bb.168:                              # %if.then.i.i.i156
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_169:                              # %seterr.exit.i.i154
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB2_16
.LBB2_170:                              # %if.then2.i.i370
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_172
# %bb.171:                              # %if.then.i.i.i374
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_172:                              # %seterr.exit.i.i372
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_173:                              # %if.end4.i360
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 163840
	stx.d	$a2, $a1, $a0
	ld.d	$a3, $fp, 0
	ld.d	$s6, $fp, 8
	bltu	$a3, $s6, .LBB2_117
	.p2align	4, , 16
.LBB2_174:                              # %if.else271.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a1, $zero, 1
	ori	$a0, $zero, 36
	bne	$s3, $a0, .LBB2_17
	b	.LBB2_18
.LBB2_175:                              # %land.lhs.true.i.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	move	$a0, $zero
	move	$a3, $zero
	move	$a2, $s2
	.p2align	4, , 16
.LBB2_176:                              # %land.lhs.true.i
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $s0, 0
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a1, $a4
	andi	$a4, $a4, 2048
	beqz	$a4, .LBB2_180
# %bb.177:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB2_176 Depth=2
	blt	$s3, $a3, .LBB2_180
# %bb.178:                              # %while.body.i88
                                        #   in Loop: Header=BB2_176 Depth=2
	addi.d	$a4, $s0, 1
	st.d	$a4, $fp, 0
	ld.b	$a5, $s0, 0
	slli.d	$a6, $a3, 3
	alsl.d	$a3, $a3, $a6, 1
	add.d	$a3, $a3, $a5
	addi.w	$a3, $a3, -48
	addi.w	$a0, $a0, 1
	move	$s0, $a4
	bne	$a4, $s6, .LBB2_176
# %bb.179:                              #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 1
.LBB2_180:                              # %while.end.i87
                                        #   in Loop: Header=BB2_19 Depth=1
	beqz	$a0, .LBB2_182
# %bb.181:                              # %while.end.i87
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 256
	blt	$a3, $a0, .LBB2_185
.LBB2_182:                              # %lor.rhs.i81
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_184
# %bb.183:                              # %if.then.i.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 16
.LBB2_184:                              # %seterr.exit.i
                                        #   in Loop: Header=BB2_19 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_185:                              # %p_count.exit
                                        #   in Loop: Header=BB2_19 Depth=1
	bge	$a3, $a2, .LBB2_136
# %bb.186:                              # %lor.rhs197.i
                                        #   in Loop: Header=BB2_19 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_135
	b	.LBB2_134
.LBB2_187:                              # %while.end
	ld.d	$a0, $fp, 40
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_198
# %bb.188:                              # %if.then31
	ld.w	$a2, $fp, 16
	addi.d	$a1, $a0, -1
	st.d	$a1, $fp, 40
	bnez	$a2, .LBB2_197
# %bb.189:                              # %if.end.i32
	ld.d	$a1, $fp, 32
	bge	$a1, $a0, .LBB2_196
# %bb.190:                              # %if.then2.i36
	addi.d	$a0, $a1, 1
	srli.d	$a2, $a0, 63
	add.d	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	bstrins.d	$a0, $zero, 0, 0
	add.d	$s0, $a0, $a2
	bge	$a1, $s0, .LBB2_196
# %bb.191:                              # %if.end.i.i45
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 24
	mul.d	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_193
# %bb.192:                              # %if.end4.i.i50
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
	b	.LBB2_196
.LBB2_193:                              # %if.then2.i.i51
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_195
# %bb.194:                              # %if.then.i.i.i55
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB2_195:                              # %seterr.exit.i.i53
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB2_196:                              # %if.end4.i41
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 131072
	stx.d	$a2, $a1, $a0
	ld.d	$a1, $fp, 40
.LBB2_197:                              # %doemit.exit56
	ld.d	$a0, $fp, 56
	ld.w	$a2, $a0, 72
	ld.w	$a3, $a0, 80
	ori	$a2, $a2, 2
	st.w	$a2, $a0, 72
	addi.d	$a2, $a3, 1
	st.w	$a2, $a0, 80
	move	$a0, $a1
.LBB2_198:                              # %if.end38
	bne	$a0, $s2, .LBB2_202
# %bb.199:                              # %lor.rhs
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB2_201
# %bb.200:                              # %if.then.i61
	ori	$a0, $zero, 14
	st.w	$a0, $fp, 16
.LBB2_201:                              # %seterr.exit
	st.d	$s1, $fp, 0
	st.d	$s1, $fp, 8
.LBB2_202:                              # %lor.end
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
.Lfunc_end2:
	.size	p_bre, .Lfunc_end2-p_bre
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_48-.LJTI2_0
	.word	.LBB2_113-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_31-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_46-.LJTI2_0
	.word	.LBB2_60-.LJTI2_0
	.word	.LBB2_113-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function doinsert
	.type	doinsert,@function
doinsert:                               # @doinsert
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 16
	beqz	$a4, .LBB3_2
# %bb.1:                                # %cleanup
	ret
.LBB3_2:                                # %if.end.i
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 40
	ld.d	$a4, $a0, 32
	blt	$fp, $a4, .LBB3_10
# %bb.3:                                # %if.then2.i
	addi.d	$a5, $a4, 1
	srli.d	$a6, $a5, 63
	add.d	$a6, $a5, $a6
	srai.d	$a5, $a6, 1
	bstrins.d	$a6, $zero, 0, 0
	add.d	$s3, $a6, $a5
	bge	$a4, $s3, .LBB3_10
# %bb.4:                                # %if.end.i.i
	move	$s0, $a1
	move	$s1, $a2
	move	$s2, $a3
	move	$s4, $a0
	ld.d	$a0, $a0, 24
	ori	$a1, $zero, 24
	mul.d	$a1, $a5, $a1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_6
# %bb.5:                                # %if.end4.i.i
	move	$a1, $a0
	move	$a0, $s4
	st.d	$a1, $s4, 24
	st.d	$s3, $s4, 32
	b	.LBB3_9
.LBB3_6:                                # %if.then2.i.i
	move	$a0, $s4
	ld.w	$a1, $s4, 16
	bnez	$a1, .LBB3_8
# %bb.7:                                # %if.then.i.i.i
	ori	$a1, $zero, 12
	st.w	$a1, $a0, 16
.LBB3_8:                                # %seterr.exit.i.i
	pcalau12i	$a1, %pc_hi20(nuls)
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $a0, 0
	st.d	$a1, $a0, 8
.LBB3_9:                                # %doemit.exit
	move	$a3, $s2
	move	$a2, $s1
	move	$a1, $s0
.LBB3_10:                               # %doemit.exit
	ld.d	$a4, $a0, 40
	or	$a2, $a2, $a1
	ld.d	$a1, $a0, 24
	addi.d	$a5, $a4, 1
	st.d	$a5, $a0, 40
	slli.d	$a4, $a4, 3
	stx.d	$a2, $a1, $a4
	slli.d	$a4, $fp, 3
	ld.d	$a2, $a0, 72
	ldx.d	$fp, $a1, $a4
	bge	$a2, $a3, .LBB3_30
# %bb.11:                               # %if.end8
	ld.d	$a2, $a0, 152
	bge	$a2, $a3, .LBB3_31
.LBB3_12:                               # %for.inc
	ld.d	$a2, $a0, 80
	bge	$a2, $a3, .LBB3_32
.LBB3_13:                               # %if.end8.1
	ld.d	$a2, $a0, 160
	bge	$a2, $a3, .LBB3_33
.LBB3_14:                               # %for.inc.1
	ld.d	$a2, $a0, 88
	bge	$a2, $a3, .LBB3_34
.LBB3_15:                               # %if.end8.2
	ld.d	$a2, $a0, 168
	bge	$a2, $a3, .LBB3_35
.LBB3_16:                               # %for.inc.2
	ld.d	$a2, $a0, 96
	bge	$a2, $a3, .LBB3_36
.LBB3_17:                               # %if.end8.3
	ld.d	$a2, $a0, 176
	bge	$a2, $a3, .LBB3_37
.LBB3_18:                               # %for.inc.3
	ld.d	$a2, $a0, 104
	bge	$a2, $a3, .LBB3_38
.LBB3_19:                               # %if.end8.4
	ld.d	$a2, $a0, 184
	bge	$a2, $a3, .LBB3_39
.LBB3_20:                               # %for.inc.4
	ld.d	$a2, $a0, 112
	bge	$a2, $a3, .LBB3_40
.LBB3_21:                               # %if.end8.5
	ld.d	$a2, $a0, 192
	bge	$a2, $a3, .LBB3_41
.LBB3_22:                               # %for.inc.5
	ld.d	$a2, $a0, 120
	bge	$a2, $a3, .LBB3_42
.LBB3_23:                               # %if.end8.6
	ld.d	$a2, $a0, 200
	bge	$a2, $a3, .LBB3_43
.LBB3_24:                               # %for.inc.6
	ld.d	$a2, $a0, 128
	bge	$a2, $a3, .LBB3_44
.LBB3_25:                               # %if.end8.7
	ld.d	$a2, $a0, 208
	bge	$a2, $a3, .LBB3_45
.LBB3_26:                               # %for.inc.7
	ld.d	$a2, $a0, 136
	bge	$a2, $a3, .LBB3_46
.LBB3_27:                               # %if.end8.8
	ld.d	$a2, $a0, 216
	blt	$a2, $a3, .LBB3_29
.LBB3_28:                               # %if.then12.8
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 216
.LBB3_29:                               # %for.inc.8
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a2, $a0, 40
	slli.d	$s0, $a3, 3
	addi.d	$a4, $a1, 8
	nor	$a3, $a3, $zero
	add.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	move	$s1, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	stx.d	$fp, $a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_30:                               # %if.then4
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 72
	ld.d	$a2, $a0, 152
	blt	$a2, $a3, .LBB3_12
.LBB3_31:                               # %if.then12
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 152
	ld.d	$a2, $a0, 80
	blt	$a2, $a3, .LBB3_13
.LBB3_32:                               # %if.then4.1
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 80
	ld.d	$a2, $a0, 160
	blt	$a2, $a3, .LBB3_14
.LBB3_33:                               # %if.then12.1
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 160
	ld.d	$a2, $a0, 88
	blt	$a2, $a3, .LBB3_15
.LBB3_34:                               # %if.then4.2
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 88
	ld.d	$a2, $a0, 168
	blt	$a2, $a3, .LBB3_16
.LBB3_35:                               # %if.then12.2
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 168
	ld.d	$a2, $a0, 96
	blt	$a2, $a3, .LBB3_17
.LBB3_36:                               # %if.then4.3
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 96
	ld.d	$a2, $a0, 176
	blt	$a2, $a3, .LBB3_18
.LBB3_37:                               # %if.then12.3
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 176
	ld.d	$a2, $a0, 104
	blt	$a2, $a3, .LBB3_19
.LBB3_38:                               # %if.then4.4
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 104
	ld.d	$a2, $a0, 184
	blt	$a2, $a3, .LBB3_20
.LBB3_39:                               # %if.then12.4
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 184
	ld.d	$a2, $a0, 112
	blt	$a2, $a3, .LBB3_21
.LBB3_40:                               # %if.then4.5
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 112
	ld.d	$a2, $a0, 192
	blt	$a2, $a3, .LBB3_22
.LBB3_41:                               # %if.then12.5
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 192
	ld.d	$a2, $a0, 120
	blt	$a2, $a3, .LBB3_23
.LBB3_42:                               # %if.then4.6
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 120
	ld.d	$a2, $a0, 200
	blt	$a2, $a3, .LBB3_24
.LBB3_43:                               # %if.then12.6
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 200
	ld.d	$a2, $a0, 128
	blt	$a2, $a3, .LBB3_25
.LBB3_44:                               # %if.then4.7
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 128
	ld.d	$a2, $a0, 208
	blt	$a2, $a3, .LBB3_26
.LBB3_45:                               # %if.then12.7
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 208
	ld.d	$a2, $a0, 136
	blt	$a2, $a3, .LBB3_27
.LBB3_46:                               # %if.then4.8
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 136
	ld.d	$a2, $a0, 216
	bge	$a2, $a3, .LBB3_28
	b	.LBB3_29
.Lfunc_end3:
	.size	doinsert, .Lfunc_end3-doinsert
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function p_bracket
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.p2align	5
	.type	p_bracket,@function
p_bracket:                              # @p_bracket
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
	ld.d	$s0, $a0, 0
	ld.d	$a0, $a0, 8
	addi.d	$a1, $s0, 5
	bgeu	$a1, $a0, .LBB4_3
# %bb.1:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_12
# %bb.2:                                # %land.lhs.true9
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_17
.LBB4_3:                                # %if.end16
	ld.d	$a0, $fp, 56
	ld.w	$s2, $a0, 20
	addi.d	$a2, $s2, 1
	ld.w	$a1, $fp, 48
	ld.w	$s0, $a0, 16
	st.w	$a2, $a0, 20
	pcalau12i	$a2, %pc_hi20(nuls)
	addi.d	$s3, $a2, %pc_lo12(nuls)
	blt	$s2, $a1, .LBB4_28
# %bb.4:                                # %if.then.i
	ld.d	$a0, $a0, 24
	addi.w	$s1, $a1, 8
	st.w	$s1, $fp, 48
	slli.d	$a1, $s1, 5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.5:                                # %if.end.i147
	ld.d	$a2, $fp, 56
	ld.d	$a1, $a2, 32
	srli.d	$a3, $s1, 3
	mul.d	$s1, $a3, $s0
	st.d	$a0, $a2, 24
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.6:                                # %if.end18.i
	ld.d	$a1, $fp, 56
	ori	$a2, $zero, 1
	st.d	$a0, $a1, 32
	blt	$s2, $a2, .LBB4_27
# %bb.7:                                # %for.body.lr.ph.i
	ld.d	$a2, $a1, 24
	ori	$a1, $zero, 8
	bgeu	$s2, $a1, .LBB4_22
# %bb.8:
	move	$a1, $zero
	b	.LBB4_25
.LBB4_9:                                # %nomem.i
	ld.d	$a0, $fp, 56
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ld.d	$a0, $a1, 32
	st.d	$zero, $a1, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.w	$a1, $fp, 16
	st.d	$zero, $a0, 32
	bnez	$a1, .LBB4_11
# %bb.10:                               # %if.then.i.i
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB4_11:                               # %allocset.exit.thread
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
	b	.LBB4_263
.LBB4_12:                               # %if.then
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_262
# %bb.13:                               # %if.end.i
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB4_224
# %bb.14:                               # %if.then2.i
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB4_224
# %bb.15:                               # %if.end.i.i
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_221
# %bb.16:                               # %if.end4.i.i
	ld.d	$s0, $fp, 0
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB4_224
.LBB4_17:                               # %if.then13
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_262
# %bb.18:                               # %if.end.i118
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB4_260
# %bb.19:                               # %if.then2.i122
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB4_260
# %bb.20:                               # %if.end.i.i131
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_257
# %bb.21:                               # %if.end4.i.i136
	ld.d	$s0, $fp, 0
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB4_260
.LBB4_22:                               # %vector.ph
	bstrpick.d	$a1, $s2, 30, 3
	slli.d	$a1, $a1, 3
	xvreplgr2vr.d	$xr0, $s0
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI4_0)
	addi.d	$a3, $a2, 128
	lu12i.w	$a4, 131071
	ori	$a4, $a4, 4095
	xvreplgr2vr.d	$xr2, $a4
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr3, $xr1, 4
	xvsrli.d	$xr4, $xr1, 3
	xvsrli.d	$xr3, $xr3, 3
	xvand.v	$xr4, $xr4, $xr2
	xvand.v	$xr3, $xr3, $xr2
	xvmul.d	$xr4, $xr4, $xr0
	xvmul.d	$xr3, $xr3, $xr0
	xvpickve2gr.d	$a5, $xr4, 0
	add.d	$a5, $a0, $a5
	xvpickve2gr.d	$a6, $xr4, 1
	add.d	$a6, $a0, $a6
	xvpickve2gr.d	$a7, $xr4, 2
	add.d	$a7, $a0, $a7
	xvpickve2gr.d	$t0, $xr4, 3
	add.d	$t0, $a0, $t0
	xvpickve2gr.d	$t1, $xr3, 0
	add.d	$t1, $a0, $t1
	xvpickve2gr.d	$t2, $xr3, 1
	add.d	$t2, $a0, $t2
	xvpickve2gr.d	$t3, $xr3, 2
	add.d	$t3, $a0, $t3
	xvpickve2gr.d	$t4, $xr3, 3
	add.d	$t4, $a0, $t4
	st.d	$a5, $a3, -128
	st.d	$a6, $a3, -96
	st.d	$a7, $a3, -64
	st.d	$t0, $a3, -32
	st.d	$t1, $a3, 0
	st.d	$t2, $a3, 32
	st.d	$t3, $a3, 64
	st.d	$t4, $a3, 96
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 256
	bnez	$a4, .LBB4_23
# %bb.24:                               # %middle.block
	beq	$a1, $s2, .LBB4_27
.LBB4_25:                               # %for.body.i.preheader
	slli.d	$a3, $a1, 5
	add.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB4_26:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 3
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a0, $a3
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	bne	$s2, $a1, .LBB4_26
.LBB4_27:                               # %cleanup.i
	sub.d	$a1, $s1, $s0
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
.LBB4_28:                               # %if.end20
	ld.d	$a1, $a0, 24
	slli.d	$a2, $s2, 5
	add.d	$s4, $a1, $a2
	ld.d	$a0, $a0, 32
	bstrpick.d	$a3, $s2, 62, 60
	add.w	$a3, $s2, $a3
	srai.d	$a3, $a3, 3
	mul.d	$a3, $s0, $a3
	add.d	$a0, $a0, $a3
	stx.d	$a0, $a1, $a2
	andi	$a1, $s2, 7
	vrepli.b	$vr5, 0
	vst	$vr5, $s4, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	ori	$s8, $zero, 1
	sll.w	$a1, $s8, $a1
	st.b	$a1, $s4, 8
	st.b	$zero, $s4, 9
	bgeu	$a2, $a3, .LBB4_31
# %bb.29:                               # %land.lhs.true24
	ld.bu	$a4, $a2, 0
	ori	$a5, $zero, 94
	bne	$a4, $a5, .LBB4_31
# %bb.30:                               # %cond.true
	move	$s8, $zero
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 0
.LBB4_31:                               # %if.end30
	bgeu	$a2, $a3, .LBB4_34
# %bb.32:                               # %land.lhs.true35
	ld.bu	$a3, $a2, 0
	ori	$a4, $zero, 93
	beq	$a3, $a4, .LBB4_35
# %bb.33:                               # %land.lhs.true35
	ori	$a4, $zero, 45
	beq	$a3, $a4, .LBB4_36
.LBB4_34:                               # %if.end76
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	bltu	$a0, $s1, .LBB4_37
	b	.LBB4_169
.LBB4_35:
	move	$a4, $a3
.LBB4_36:                               # %if.end76.sink.split
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 0
	ldx.b	$a2, $a0, $a4
	or	$a1, $a2, $a1
	stx.b	$a1, $a0, $a4
	ld.b	$a0, $s4, 9
	add.d	$a0, $a0, $a3
	st.b	$a0, $s4, 9
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	bgeu	$a0, $s1, .LBB4_169
.LBB4_37:                               # %land.lhs.true81.lr.ph
	ori	$s6, $zero, 93
	ori	$s7, $zero, 45
	ori	$s2, $zero, 91
	pcalau12i	$a1, %pc_hi20(cnames+16)
	addi.d	$a1, $a1, %pc_lo12(cnames+16)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
	.p2align	4, , 16
.LBB4_38:                               # %land.lhs.true81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_66 Depth 2
                                        #     Child Loop BB4_83 Depth 2
                                        #     Child Loop BB4_145 Depth 2
                                        #     Child Loop BB4_155 Depth 2
                                        #     Child Loop BB4_89 Depth 2
                                        #     Child Loop BB4_94 Depth 2
	ld.bu	$a2, $a0, 0
	beq	$a2, $s6, .LBB4_169
# %bb.39:                               # %land.lhs.true90
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s1, .LBB4_41
# %bb.40:                               # %land.lhs.true90
                                        #   in Loop: Header=BB4_38 Depth=1
	beq	$a2, $s7, .LBB4_167
.LBB4_41:                               # %cond.end.i
                                        #   in Loop: Header=BB4_38 Depth=1
	beq	$a2, $s2, .LBB4_43
# %bb.42:                               # %cond.end.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bne	$a2, $s7, .LBB4_59
	b	.LBB4_185
	.p2align	4, , 16
.LBB4_43:                               # %sw.bb.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bgeu	$a1, $s1, .LBB4_59
# %bb.44:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 61
	beq	$a1, $a2, .LBB4_68
# %bb.45:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB4_59
# %bb.46:                               # %sw.bb16.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$s0, $a0, 2
	st.d	$s0, $fp, 0
	bltu	$s0, $s1, .LBB4_50
# %bb.47:                               # %lor.rhs.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_49
# %bb.48:                               # %if.then.i82.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 16
.LBB4_49:                               # %seterr.exit83.i
                                        #   in Loop: Header=BB4_38 Depth=1
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
	move	$s1, $s3
	move	$s0, $s3
.LBB4_50:                               # %lor.end.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s6, .LBB4_52
# %bb.51:                               # %lor.end.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bne	$a0, $s7, .LBB4_81
.LBB4_52:                               # %lor.rhs31.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_54
# %bb.53:                               # %if.then.i87.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 16
.LBB4_54:                               # %lor.end34.thread.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s0, $a0, %pc_lo12(nuls)
	st.d	$s0, $fp, 0
	st.d	$s0, $fp, 8
.LBB4_55:                               # %while.end.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $s0
.LBB4_56:                               # %while.end.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	sub.d	$s1, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_78
# %bb.57:                               # %while.end.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 5
	bne	$s1, $a0, .LBB4_78
# %bb.58:                               #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(cclasses)
	addi.d	$a0, $a0, %pc_lo12(cclasses)
	ld.d	$a2, $a0, 8
	ld.bu	$a1, $a2, 0
	bnez	$a1, .LBB4_144
	b	.LBB4_146
	.p2align	4, , 16
.LBB4_59:                               # %sw.default139.i
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_b_symbol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	bgeu	$a1, $a2, .LBB4_64
# %bb.60:                               # %land.lhs.true145.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a3, $a1, 0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	bne	$a3, $s7, .LBB4_63
# %bb.61:                               # %land.lhs.true150.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a3, $a1, 1
	bgeu	$a3, $a2, .LBB4_63
# %bb.62:                               # %land.lhs.true156.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a2, $a3, 0
	bne	$a2, $s6, .LBB4_76
	.p2align	4, , 16
.LBB4_63:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a1, $a0
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_64:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a1, $a0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
.LBB4_65:                               # %for.body.lr.ph.i149
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB4_66:                               # %for.body.i152
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s4, 0
	ld.b	$a3, $s4, 8
	andi	$a4, $a0, 255
	ldx.b	$a5, $a2, $a4
	or	$a3, $a5, $a3
	stx.b	$a3, $a2, $a4
	ld.b	$a2, $s4, 9
	add.d	$a2, $a2, $a0
	addi.w	$a0, $a0, 1
	st.b	$a2, $s4, 9
	bne	$a1, $a0, .LBB4_66
# %bb.67:                               # %p_b_term.exit.loopexit
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	bltu	$a0, $s1, .LBB4_38
	b	.LBB4_169
.LBB4_68:                               # %sw.bb75.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$s0, $a0, 2
	st.d	$s0, $fp, 0
	bltu	$s0, $s1, .LBB4_72
# %bb.69:                               # %lor.rhs82.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_71
# %bb.70:                               # %if.then.i103.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 16
.LBB4_71:                               # %seterr.exit104.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s1, $a0, %pc_lo12(nuls)
	st.d	$s1, $fp, 0
	st.d	$s1, $fp, 8
	move	$s0, $s1
.LBB4_72:                               # %lor.end85.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s6, .LBB4_74
# %bb.73:                               # %lor.end85.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bne	$a0, $s7, .LBB4_86
.LBB4_74:                               # %lor.rhs95.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_101
# %bb.75:                               #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 3
	b	.LBB4_100
.LBB4_76:                               # %land.lhs.true167.i
                                        #   in Loop: Header=BB4_38 Depth=1
	st.d	$a3, $fp, 0
	ld.bu	$a2, $a3, 0
	bne	$a2, $s7, .LBB4_97
# %bb.77:                               # %cond.true172.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a1, $a1, 2
	st.d	$a1, $fp, 0
	ori	$a1, $zero, 45
	bge	$a1, $a0, .LBB4_65
	b	.LBB4_185
.LBB4_78:                               # %for.inc.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cclasses)
	addi.d	$s2, $a1, %pc_lo12(cclasses)
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_107
# %bb.79:                               # %for.inc.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_107
# %bb.80:                               #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 24
	b	.LBB4_143
.LBB4_81:                               # %lor.end34.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bgeu	$s0, $s1, .LBB4_55
# %bb.82:                               # %land.rhs.lr.ph.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	.p2align	4, , 16
.LBB4_83:                               # %land.rhs.i.i
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a0, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 1024
	beqz	$a2, .LBB4_56
# %bb.84:                               # %while.body.i.i
                                        #   in Loop: Header=BB4_83 Depth=2
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	bne	$a0, $s1, .LBB4_83
# %bb.85:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $s1
	b	.LBB4_56
.LBB4_86:                               # %lor.end98.i
                                        #   in Loop: Header=BB4_38 Depth=1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	bgeu	$s0, $s1, .LBB4_98
# %bb.87:                               # %land.lhs.true.i.i.i.preheader
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $zero
	move	$s8, $zero
	b	.LBB4_89
	.p2align	4, , 16
.LBB4_88:                               # %while.body.i.i.i
                                        #   in Loop: Header=BB4_89 Depth=2
	st.d	$a1, $fp, 0
	addi.d	$s8, $s8, 1
	add.d	$a1, $s0, $s8
	add.d	$a0, $a0, $s5
	beq	$a1, $s1, .LBB4_98
.LBB4_89:                               # %land.lhs.true.i.i.i
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $s8
	addi.d	$a1, $a2, 1
	bgeu	$a1, $s1, .LBB4_88
# %bb.90:                               # %land.lhs.true8.i.i.i
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.bu	$a2, $a2, 0
	ori	$a3, $zero, 61
	bne	$a2, $a3, .LBB4_88
# %bb.91:                               # %land.rhs12.i.i.i
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.bu	$a2, $a1, 0
	bne	$a2, $s6, .LBB4_88
# %bb.92:                               # %if.end.i.i121.i
                                        #   in Loop: Header=BB4_38 Depth=1
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	srai.d	$s1, $a0, 32
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB4_94
.LBB4_93:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB4_94 Depth=2
	ld.d	$s2, $s3, 0
	addi.d	$s3, $s3, 16
	beqz	$s2, .LBB4_119
.LBB4_94:                               # %for.body.i.i.i
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_93
# %bb.95:                               # %land.lhs.true33.i.i.i
                                        #   in Loop: Header=BB4_94 Depth=2
	ldx.bu	$a0, $s2, $s1
	bnez	$a0, .LBB4_93
# %bb.96:                               # %if.then38.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a0, $s3, -8
	b	.LBB4_121
.LBB4_97:                               # %if.else.i
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_b_symbol)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	move	$a1, $a0
	move	$a0, $s0
	bge	$a1, $s0, .LBB4_65
	b	.LBB4_185
.LBB4_98:                               # %if.then.i.i110.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_101
# %bb.99:                               #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 7
.LBB4_100:                              # %seterr.exit.i.i113.i.sink.split
                                        #   in Loop: Header=BB4_38 Depth=1
	st.w	$a0, $fp, 16
.LBB4_101:                              # %seterr.exit.i.i113.i
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $zero
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
.LBB4_102:                              # %p_b_eclass.exit.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a1, $s4, 0
	ld.b	$a2, $s4, 8
	ldx.b	$a3, $a1, $a0
	or	$a2, $a3, $a2
	stx.b	$a2, $a1, $a0
	ld.b	$a2, $s4, 9
	ld.d	$a1, $fp, 0
	ld.d	$s1, $fp, 8
	add.d	$a0, $a2, $a0
	st.b	$a0, $s4, 9
	bgeu	$a1, $s1, .LBB4_165
# %bb.103:                              # %land.lhs.true113.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $a1, 1
	bgeu	$a0, $s1, .LBB4_196
# %bb.104:                              # %land.lhs.true119.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a2, $a1, 0
	ori	$a3, $zero, 61
	bne	$a2, $a3, .LBB4_196
# %bb.105:                              # %land.lhs.true124.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a0, $a0, 0
	bne	$a0, $s6, .LBB4_196
# %bb.106:                              # %cond.true130.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $a1, 2
	st.d	$a0, $fp, 0
	bltu	$a0, $s1, .LBB4_38
	b	.LBB4_169
.LBB4_107:                              # %for.inc.1.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_110
# %bb.108:                              # %for.inc.1.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_110
# %bb.109:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 48
	b	.LBB4_143
.LBB4_110:                              # %for.inc.2.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_113
# %bb.111:                              # %for.inc.2.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_113
# %bb.112:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 72
	b	.LBB4_143
.LBB4_113:                              # %for.inc.3.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_116
# %bb.114:                              # %for.inc.3.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_116
# %bb.115:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 96
	b	.LBB4_143
.LBB4_116:                              # %for.inc.4.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_122
# %bb.117:                              # %for.inc.4.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_122
# %bb.118:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 120
	b	.LBB4_143
.LBB4_119:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bstrpick.d	$a0, $s8, 31, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_125
# %bb.120:                              # %if.then43.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a0, $s0, 0
.LBB4_121:                              # %p_b_eclass.exit.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ori	$s2, $zero, 91
	b	.LBB4_102
.LBB4_122:                              # %for.inc.5.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_128
# %bb.123:                              # %for.inc.5.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_128
# %bb.124:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 144
	b	.LBB4_143
.LBB4_125:                              # %if.end44.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ori	$s2, $zero, 91
	bnez	$a0, .LBB4_127
# %bb.126:                              # %if.then.i29.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 16
.LBB4_127:                              # %seterr.exit30.i.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(nuls)
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
	b	.LBB4_102
.LBB4_128:                              # %for.inc.6.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_131
# %bb.129:                              # %for.inc.6.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_131
# %bb.130:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 168
	b	.LBB4_143
.LBB4_131:                              # %for.inc.7.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_134
# %bb.132:                              # %for.inc.7.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_134
# %bb.133:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 192
	b	.LBB4_143
.LBB4_134:                              # %for.inc.8.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_137
# %bb.135:                              # %for.inc.8.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_137
# %bb.136:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 216
	b	.LBB4_143
.LBB4_137:                              # %for.inc.9.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	bne	$s1, $a1, .LBB4_140
# %bb.138:                              # %for.inc.9.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_140
# %bb.139:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 240
	b	.LBB4_143
.LBB4_140:                              # %for.inc.10.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	bne	$s1, $a1, .LBB4_162
# %bb.141:                              # %for.inc.10.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	bnez	$a0, .LBB4_162
# %bb.142:                              #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $s2, 264
.LBB4_143:                              # %if.end23.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$s2, $zero, 91
	ld.d	$a2, $a0, 8
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB4_146
.LBB4_144:                              # %while.body29.i.i.preheader
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB4_145:                              # %while.body29.i.i
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s4, 0
	ld.b	$a4, $s4, 8
	andi	$a5, $a1, 255
	ldx.b	$a6, $a3, $a5
	or	$a4, $a6, $a4
	stx.b	$a4, $a3, $a5
	ld.b	$a3, $s4, 9
	add.d	$a1, $a3, $a1
	st.b	$a1, $s4, 9
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB4_145
.LBB4_146:                              # %while.end38.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$s0, $a0, 16
	ld.bu	$a0, $s0, 0
	bnez	$a0, .LBB4_155
.LBB4_147:                              # %p_b_cclass.exit.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	bgeu	$a0, $s1, .LBB4_165
.LBB4_148:                              # %land.lhs.true49.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s1, .LBB4_198
# %bb.149:                              # %land.lhs.true55.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a2, $a0, 0
	ori	$a3, $zero, 58
	bne	$a2, $a3, .LBB4_198
# %bb.150:                              # %land.lhs.true60.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.bu	$a1, $a1, 0
	bne	$a1, $s6, .LBB4_198
# %bb.151:                              # %cond.true66.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $a0, 2
	st.d	$a0, $fp, 0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	bltu	$a0, $s1, .LBB4_38
	b	.LBB4_169
	.p2align	4, , 16
.LBB4_152:                              # %if.then.i27.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_157
.LBB4_153:                              # %if.end16.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	ld.d	$a1, $s4, 16
	st.d	$a0, $s4, 24
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, -1
	sub.d	$a1, $a1, $s1
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_strlcpy)
	jirl	$ra, $ra, 0
.LBB4_154:                              # %mcadd.exit.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	ld.bu	$a1, $a0, 1
	addi.d	$s0, $a0, 1
	beqz	$a1, .LBB4_147
.LBB4_155:                              # %for.body43.i.i
                                        #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s4, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 24
	add.d	$a0, $s1, $a0
	addi.d	$a1, $a0, 1
	st.d	$a1, $s4, 16
	beqz	$a2, .LBB4_152
# %bb.156:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_153
.LBB4_157:                              # %if.then9.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB4_159
# %bb.158:                              # %if.then11.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_159:                              # %if.end13.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	ld.w	$a0, $fp, 16
	st.d	$zero, $s4, 24
	bnez	$a0, .LBB4_161
# %bb.160:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB4_161:                              # %seterr.exit.i.i.i
                                        #   in Loop: Header=BB4_155 Depth=2
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB4_154
.LBB4_162:                              # %for.inc.11.i.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_164
# %bb.163:                              # %if.then.i.i.i164
                                        #   in Loop: Header=BB4_38 Depth=1
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 16
.LBB4_164:                              # %seterr.exit.i.i163
                                        #   in Loop: Header=BB4_38 Depth=1
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	ori	$s2, $zero, 91
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	bltu	$a0, $s1, .LBB4_148
.LBB4_165:                              # %lor.rhs40.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_188
# %bb.166:
	ori	$a0, $zero, 7
	b	.LBB4_187
.LBB4_167:                              # %land.rhs101
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 93
	bne	$a0, $a2, .LBB4_185
# %bb.168:                              # %cond.true117
	ld.d	$a0, $s4, 0
	st.d	$a1, $fp, 0
	ld.b	$a1, $s4, 8
	ld.b	$a2, $a0, 45
	or	$a1, $a2, $a1
	st.b	$a1, $a0, 45
	ld.b	$a1, $s4, 9
	ld.d	$a0, $fp, 0
	ld.d	$s1, $fp, 8
	addi.d	$a1, $a1, 45
	st.b	$a1, $s4, 9
.LBB4_169:                              # %if.end133
	bgeu	$a0, $s1, .LBB4_188
# %bb.170:                              # %land.lhs.true138
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 93
	bne	$a0, $a1, .LBB4_188
# %bb.171:                              # %lor.end
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_191
# %bb.172:                              # %if.end148
	ld.d	$a0, $fp, 56
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 2
	beqz	$a1, .LBB4_201
# %bb.173:                              # %if.then150
	ld.w	$a1, $a0, 16
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB4_201
# %bb.174:                              # %for.body.lr.ph
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s1, $a1, 1
	addi.d	$s2, $a1, -1
	slli.d	$a0, $a1, 1
	addi.d	$s5, $a0, -2
	b	.LBB4_176
	.p2align	4, , 16
.LBB4_175:                              # %for.inc
                                        #   in Loop: Header=BB4_176 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, -2
	bgeu	$s0, $s1, .LBB4_200
.LBB4_176:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s4, 0
	addi.d	$s8, $s1, -2
	andi	$s3, $s8, 255
	ldx.b	$a0, $s6, $s3
	ld.bu	$s7, $s4, 8
	and	$a0, $s7, $a0
	beqz	$a0, .LBB4_175
# %bb.177:                              # %land.lhs.true162
                                        #   in Loop: Header=BB4_176 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.hu	$a1, $a0, $s5
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB4_175
# %bb.178:                              # %if.then169
                                        #   in Loop: Header=BB4_176 Depth=1
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a1, $a0, 256
	bnez	$a1, .LBB4_181
# %bb.179:                              # %if.else12.i
                                        #   in Loop: Header=BB4_176 Depth=1
	andi	$a1, $a0, 512
	move	$a0, $s2
	beqz	$a1, .LBB4_183
# %bb.180:                              # %if.then19.i
                                        #   in Loop: Header=BB4_176 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	b	.LBB4_182
.LBB4_181:                              # %if.then.i191
                                        #   in Loop: Header=BB4_176 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
.LBB4_182:                              # %return.sink.split.i
                                        #   in Loop: Header=BB4_176 Depth=1
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.bu	$a0, $a0, $a1
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
.LBB4_183:                              # %othercase.exit
                                        #   in Loop: Header=BB4_176 Depth=1
	ext.w.b	$a1, $a0
	bstrpick.d	$a1, $a1, 31, 0
	beq	$s8, $a1, .LBB4_175
# %bb.184:                              # %if.then174
                                        #   in Loop: Header=BB4_176 Depth=1
	andi	$a1, $a0, 255
	ldx.b	$a2, $s6, $a1
	or	$a2, $a2, $s7
	stx.b	$a2, $s6, $a1
	ld.b	$a1, $s4, 9
	add.d	$a0, $a1, $a0
	st.b	$a0, $s4, 9
	b	.LBB4_175
.LBB4_185:                              # %sw.bb14.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_188
# %bb.186:
	ori	$a0, $zero, 11
.LBB4_187:                              # %lor.rhs.sink.split
	st.w	$a0, $fp, 16
.LBB4_188:                              # %lor.rhs
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_190
# %bb.189:                              # %if.then.i170
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 16
.LBB4_190:                              # %lor.end.thread
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
.LBB4_191:                              # %if.then147
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 24
	ld.w	$a2, $a0, 20
	ld.w	$a0, $a0, 16
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	beqz	$a0, .LBB4_194
# %bb.192:                              # %for.body.i181.preheader
	move	$a2, $zero
	.p2align	4, , 16
.LBB4_193:                              # %for.body.i181
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, 0
	ld.b	$a4, $s4, 8
	andi	$a5, $a2, 255
	ldx.b	$a6, $a3, $a5
	andn	$a4, $a6, $a4
	stx.b	$a4, $a3, $a5
	ld.b	$a3, $s4, 9
	sub.d	$a3, $a3, $a2
	addi.d	$a2, $a2, 1
	st.b	$a3, $s4, 9
	bne	$a0, $a2, .LBB4_193
.LBB4_194:                              # %for.end.i
	addi.d	$a0, $a1, -32
	bne	$s4, $a0, .LBB4_263
# %bb.195:                              # %if.then.i186
	ld.d	$a0, $fp, 56
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 20
	b	.LBB4_263
.LBB4_196:                              # %lor.rhs134.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_188
# %bb.197:
	ori	$a0, $zero, 3
	b	.LBB4_187
.LBB4_198:                              # %lor.rhs70.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_188
# %bb.199:
	ori	$a0, $zero, 4
	b	.LBB4_187
.LBB4_200:                              # %if.end194.loopexit
	ld.d	$a0, $fp, 56
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
.LBB4_201:                              # %if.end194
	bnez	$s8, .LBB4_210
# %bb.202:                              # %if.then196
	ld.w	$a2, $a0, 16
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB4_208
# %bb.203:                              # %for.body204.preheader
	addi.d	$a0, $a2, 1
	b	.LBB4_205
.LBB4_204:                              # %if.else228
                                        #   in Loop: Header=BB4_205 Depth=1
	or	$a5, $a6, $a5
	stx.b	$a5, $a3, $a4
	ld.b	$a3, $s4, 9
	add.d	$a2, $a3, $a2
	addi.w	$a0, $a0, -1
	st.b	$a2, $s4, 9
	bgeu	$a1, $a0, .LBB4_207
.LBB4_205:                              # %for.body204
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, 0
	addi.d	$a2, $a0, -2
	andi	$a4, $a2, 255
	ldx.bu	$a5, $a3, $a4
	ld.bu	$a6, $s4, 8
	and	$a7, $a6, $a5
	beqz	$a7, .LBB4_204
# %bb.206:                              # %if.then214
                                        #   in Loop: Header=BB4_205 Depth=1
	andn	$a5, $a5, $a6
	stx.b	$a5, $a3, $a4
	ld.b	$a3, $s4, 9
	sub.d	$a2, $a3, $a2
	addi.w	$a0, $a0, -1
	st.b	$a2, $s4, 9
	bltu	$a1, $a0, .LBB4_205
.LBB4_207:                              # %for.end245.loopexit
	ld.d	$a0, $fp, 56
.LBB4_208:                              # %for.end245
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 8
	beqz	$a1, .LBB4_210
# %bb.209:                              # %if.then250
	ld.d	$a0, $s4, 0
	ld.b	$a1, $s4, 8
	ld.b	$a2, $a0, 10
	andn	$a1, $a2, $a1
	st.b	$a1, $a0, 10
	ld.b	$a1, $s4, 9
	ld.d	$a0, $fp, 56
	addi.d	$a1, $a1, -10
	st.b	$a1, $s4, 9
.LBB4_210:                              # %if.end269
	ld.w	$a1, $a0, 16
	beqz	$a1, .LBB4_216
# %bb.211:                              # %for.body.lr.ph.i195
	ld.d	$a2, $s4, 0
	ld.bu	$a3, $s4, 8
	ori	$a4, $zero, 8
	move	$a5, $zero
	bltu	$a1, $a4, .LBB4_225
# %bb.212:                              # %for.body.lr.ph.i195
	addi.d	$a6, $a1, -257
	addi.w	$a7, $zero, -256
	move	$a4, $a5
	bltu	$a6, $a7, .LBB4_226
# %bb.213:                              # %vector.ph394
	move	$a5, $zero
	andi	$a4, $a1, 504
	vinsgr2vr.b	$vr0, $a3, 0
	vinsgr2vr.b	$vr0, $a3, 1
	vinsgr2vr.b	$vr0, $a3, 2
	vinsgr2vr.b	$vr0, $a3, 3
	vrepli.w	$vr1, 1
	vori.b	$vr2, $vr5, 0
	.p2align	4, , 16
.LBB4_214:                              # %vector.body399
                                        # =>This Inner Loop Header: Depth=1
	andi	$a6, $a5, 248
	add.d	$a7, $a2, $a6
	ldx.w	$a6, $a2, $a6
	ld.w	$a7, $a7, 4
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vand.v	$vr3, $vr3, $vr0
	vand.v	$vr4, $vr4, $vr0
	vseqi.b	$vr3, $vr3, 0
	vxori.b	$vr3, $vr3, 255
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vand.v	$vr3, $vr3, $vr1
	vseqi.b	$vr4, $vr4, 0
	vxori.b	$vr4, $vr4, 255
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr1
	vadd.w	$vr5, $vr5, $vr3
	addi.d	$a5, $a5, 8
	vadd.w	$vr2, $vr2, $vr4
	bne	$a4, $a5, .LBB4_214
# %bb.215:                              # %middle.block404
	vadd.w	$vr0, $vr2, $vr5
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	bne	$a4, $a1, .LBB4_226
	b	.LBB4_227
.LBB4_216:                              # %if.else275
	ld.w	$a3, $a0, 20
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_247
# %bb.217:
	ld.d	$a2, $a0, 24
	ld.bu	$a4, $s4, 9
	slli.d	$a3, $a3, 5
	add.d	$a3, $a2, $a3
	b	.LBB4_219
.LBB4_218:                              # %for.inc45.us38.i
                                        #   in Loop: Header=BB4_219 Depth=1
	addi.d	$a2, $a2, 32
	bgeu	$a2, $a3, .LBB4_247
.LBB4_219:                              # %for.body.us32.i
                                        # =>This Inner Loop Header: Depth=1
	beq	$a2, $s4, .LBB4_218
# %bb.220:                              # %for.body.us32.i
                                        #   in Loop: Header=BB4_219 Depth=1
	ld.bu	$a5, $a2, 9
	bne	$a5, $a4, .LBB4_218
	b	.LBB4_241
.LBB4_221:                              # %if.then2.i.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_223
# %bb.222:                              # %if.then.i.i.i
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB4_223:                              # %seterr.exit.i.i
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s0, $a0, %pc_lo12(nuls)
	st.d	$s0, $fp, 8
.LBB4_224:                              # %if.end4.i
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, -425984
	b	.LBB4_261
.LBB4_225:
	move	$a4, $a5
	.p2align	4, , 16
.LBB4_226:                              # %for.body.i197
                                        # =>This Inner Loop Header: Depth=1
	andi	$a6, $a4, 255
	ldx.bu	$a6, $a2, $a6
	and	$a6, $a6, $a3
	sltu	$a6, $zero, $a6
	addi.d	$a4, $a4, 1
	add.w	$a5, $a5, $a6
	bne	$a1, $a4, .LBB4_226
.LBB4_227:                              # %nch.exit
	ori	$a4, $zero, 1
	bne	$a5, $a4, .LBB4_232
# %bb.228:                              # %for.body.i207.preheader
	move	$a0, $zero
	move	$a4, $zero
.LBB4_229:                              # %for.body.i207
                                        # =>This Inner Loop Header: Depth=1
	andi	$a5, $a4, 255
	ldx.bu	$a5, $a2, $a5
	and	$a5, $a5, $a3
	bnez	$a5, .LBB4_253
# %bb.230:                              # %for.inc.i
                                        #   in Loop: Header=BB4_229 Depth=1
	addi.d	$a4, $a4, 1
	addu16i.d	$a0, $a0, 256
	addi.w	$a0, $a0, 0
	bne	$a1, $a4, .LBB4_229
# %bb.231:
	move	$a1, $zero
	b	.LBB4_254
.LBB4_232:                              # %if.else275.thread
	ld.w	$a3, $a0, 20
	blt	$a3, $a4, .LBB4_247
# %bb.233:                              # %for.body.us.i.preheader
	ld.d	$a2, $a0, 24
	ld.bu	$a4, $s4, 9
	slli.d	$a3, $a3, 5
	add.d	$a3, $a2, $a3
	b	.LBB4_236
.LBB4_234:                              # %for.end.us.i
                                        #   in Loop: Header=BB4_236 Depth=1
	beq	$a1, $t1, .LBB4_241
.LBB4_235:                              # %for.inc45.us.i
                                        #   in Loop: Header=BB4_236 Depth=1
	addi.d	$a2, $a2, 32
	bgeu	$a2, $a3, .LBB4_247
.LBB4_236:                              # %for.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_239 Depth 2
	beq	$a2, $s4, .LBB4_235
# %bb.237:                              # %for.body.us.i
                                        #   in Loop: Header=BB4_236 Depth=1
	ld.bu	$a5, $a2, 9
	bne	$a5, $a4, .LBB4_235
# %bb.238:                              # %for.cond14.preheader.us.i
                                        #   in Loop: Header=BB4_236 Depth=1
	ld.d	$a5, $a2, 0
	ld.bu	$a6, $a2, 8
	ld.d	$a7, $s4, 0
	ld.bu	$t0, $s4, 8
	move	$t1, $zero
	.p2align	4, , 16
.LBB4_239:                              # %for.body17.us.i
                                        #   Parent Loop BB4_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t2, $t1, 255
	ldx.bu	$t3, $a5, $t2
	ldx.bu	$t2, $a7, $t2
	and	$t3, $t3, $a6
	sltu	$t3, $zero, $t3
	and	$t2, $t2, $t0
	sltui	$t2, $t2, 1
	xor	$t2, $t3, $t2
	beqz	$t2, .LBB4_234
# %bb.240:                              # %for.inc.us.i
                                        #   in Loop: Header=BB4_239 Depth=2
	addi.d	$t1, $t1, 1
	bne	$a1, $t1, .LBB4_239
.LBB4_241:                              # %if.then49.i
	beqz	$a1, .LBB4_245
# %bb.242:                              # %for.body.i.i.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_243:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s4, 0
	ld.b	$a5, $s4, 8
	andi	$a6, $a0, 255
	ldx.b	$a7, $a4, $a6
	andn	$a5, $a7, $a5
	stx.b	$a5, $a4, $a6
	ld.b	$a4, $s4, 9
	sub.d	$a4, $a4, $a0
	addi.d	$a0, $a0, 1
	st.b	$a4, $s4, 9
	bne	$a1, $a0, .LBB4_243
# %bb.244:                              # %for.end.i.loopexit.i
	ld.d	$a0, $fp, 56
.LBB4_245:                              # %for.end.i.i
	addi.d	$a1, $a3, -32
	bne	$s4, $a1, .LBB4_248
# %bb.246:                              # %if.then.i.i258
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 20
	b	.LBB4_248
.LBB4_247:
	move	$a2, $s4
.LBB4_248:                              # %freezeset.exit
	ld.w	$a1, $fp, 16
	bnez	$a1, .LBB4_263
# %bb.249:                              # %if.end.i262
	ld.d	$a1, $a0, 24
	ld.d	$a3, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 27
	srai.d	$s0, $a1, 32
	blt	$a3, $a0, .LBB4_267
# %bb.250:                              # %if.then2.i266
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB4_267
# %bb.251:                              # %if.end.i.i275
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_264
# %bb.252:                              # %if.end4.i.i280
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB4_267
.LBB4_253:                              # %if.then.i212
	srai.d	$a1, $a0, 24
.LBB4_254:                              # %firstch.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ordinary)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $a0, 24
	ld.w	$a2, $a0, 20
	ld.w	$a0, $a0, 16
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	beqz	$a0, .LBB4_194
# %bb.255:                              # %for.body.i229.preheader
	move	$a2, $zero
	.p2align	4, , 16
.LBB4_256:                              # %for.body.i229
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, 0
	ld.b	$a4, $s4, 8
	andi	$a5, $a2, 255
	ldx.b	$a6, $a3, $a5
	andn	$a4, $a6, $a4
	stx.b	$a4, $a3, $a5
	ld.b	$a3, $s4, 9
	sub.d	$a3, $a3, $a2
	addi.d	$a2, $a2, 1
	st.b	$a3, $s4, 9
	bne	$a0, $a2, .LBB4_256
	b	.LBB4_194
.LBB4_257:                              # %if.then2.i.i137
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_259
# %bb.258:                              # %if.then.i.i.i141
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB4_259:                              # %seterr.exit.i.i139
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$s0, $a0, %pc_lo12(nuls)
	st.d	$s0, $fp, 8
.LBB4_260:                              # %if.end4.i127
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 40
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, -393216
.LBB4_261:                              # %doemit.exit
	lu32i.d	$a2, 0
	stx.d	$a2, $a1, $a0
.LBB4_262:                              # %doemit.exit
	addi.d	$a0, $s0, 6
	st.d	$a0, $fp, 0
.LBB4_263:                              # %cleanup
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
.LBB4_264:                              # %if.then2.i.i281
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB4_266
# %bb.265:                              # %if.then.i.i.i285
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB4_266:                              # %seterr.exit.i.i283
	st.d	$s3, $fp, 0
	st.d	$s3, $fp, 8
.LBB4_267:                              # %if.end4.i271
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 196608
	or	$a1, $s0, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	b	.LBB4_263
.Lfunc_end4:
	.size	p_bracket, .Lfunc_end4-p_bracket
                                        # -- End function
	.p2align	5                               # -- Begin function ordinary
	.type	ordinary,@function
ordinary:                               # @ordinary
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	ld.bu	$a2, $a0, 40
	ld.d	$s1, $a0, 88
	andi	$a0, $a2, 2
	move	$s0, $a1
	bnez	$a0, .LBB5_2
# %bb.1:                                # %entry.if.else_crit_edge
	andi	$s2, $s0, 255
	b	.LBB5_9
.LBB5_2:                                # %land.lhs.true
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$s2, $s0, 255
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a1, $a0, 1024
	beqz	$a1, .LBB5_9
# %bb.3:                                # %land.lhs.true6
	andi	$a1, $a0, 256
	bnez	$a1, .LBB5_6
# %bb.4:                                # %if.else12.i
	andi	$a1, $a0, 512
	move	$a0, $s0
	beqz	$a1, .LBB5_8
# %bb.5:                                # %if.then19.i
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	b	.LBB5_7
.LBB5_6:                                # %if.then.i
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %return.sink.split.i
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 2
	ldx.w	$a0, $a0, $a1
.LBB5_8:                                # %othercase.exit
	ext.w.b	$a0, $a0
	bne	$s0, $a0, .LBB5_15
.LBB5_9:                                # %if.else
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB5_11
# %bb.10:                               # %doemit.exit
	ldx.bu	$a0, $s1, $s0
	bnez	$a0, .LBB5_21
	b	.LBB5_20
.LBB5_11:                               # %if.end.i
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	blt	$a1, $a0, .LBB5_19
# %bb.12:                               # %if.then2.i
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s3, $a2, $a1
	bge	$a0, $s3, .LBB5_19
# %bb.13:                               # %if.end.i.i
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_16
# %bb.14:                               # %if.end4.i.i
	st.d	$a0, $fp, 24
	st.d	$s3, $fp, 32
	b	.LBB5_19
.LBB5_15:                               # %if.then
	addi.d	$a0, $sp, 47
	st.b	$s0, $sp, 45
	ori	$a1, $zero, 93
	st.h	$a1, $sp, 46
	vld	$vr0, $fp, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$a1, $sp, 45
	st.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(p_bracket)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	b	.LBB5_21
.LBB5_16:                               # %if.then2.i.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB5_18
# %bb.17:                               # %if.then.i.i.i
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB5_18:                               # %seterr.exit.i.i
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB5_19:                               # %if.end4.i
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 65536
	or	$a1, $s2, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	ldx.bu	$a0, $s1, $s0
	bnez	$a0, .LBB5_21
.LBB5_20:                               # %if.then17
	ld.d	$a0, $fp, 56
	ld.w	$a1, $a0, 84
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 84
	stx.b	$a1, $s1, $s0
.LBB5_21:                               # %if.end22
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end5:
	.size	ordinary, .Lfunc_end5-ordinary
                                        # -- End function
	.p2align	5                               # -- Begin function repeat
	.type	repeat,@function
repeat:                                 # @repeat
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
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB6_2
.LBB6_1:                                # %cleanup
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
.LBB6_2:                                # %if.end.lr.ph.lr.ph
	move	$s0, $a3
	move	$s3, $a2
	ld.d	$a0, $fp, 40
	ori	$s5, $zero, 19
	pcalau12i	$a2, %pc_hi20(.LJTI6_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI6_1)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a2, -524288
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a3, -32768
	lu12i.w	$a2, -491520
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $a2
	lu12i.w	$a2, -458752
	ori	$s4, $a2, 2
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$s4, 0
.LBB6_3:                                # %if.end.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #     Child Loop BB6_21 Depth 2
	slti	$a2, $s0, 2
	addi.d	$a3, $s0, -256
	sltui	$a3, $a3, 1
	addi.d	$a3, $a3, 2
	maskeqz	$a4, $s0, $a2
	masknez	$a2, $a3, $a2
	or	$s6, $a4, $a2
	addi.w	$s7, $s3, -1
	move	$s2, $a1
.LBB6_4:                                # %if.end.outer
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slti	$a1, $s3, 2
	addi.d	$a2, $s3, -256
	sltui	$a2, $a2, 1
	addi.d	$a2, $a2, 2
	maskeqz	$a3, $s3, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a3, $a1
	alsl.w	$a1, $a1, $s6, 3
	move	$s1, $s2
	move	$s2, $a0
	bne	$a1, $s5, .LBB6_14
# %bb.5:                                # %sw.bb63.peel
                                        #   in Loop: Header=BB6_4 Depth=2
	beq	$s2, $s1, .LBB6_21
# %bb.6:                                # %if.end.i315
                                        #   in Loop: Header=BB6_4 Depth=2
	ld.d	$a0, $fp, 24
	sub.d	$s8, $s2, $s1
	ori	$a1, $zero, 1
	blt	$s8, $a1, .LBB6_13
# %bb.7:                                # %if.end.i.i326
                                        #   in Loop: Header=BB6_4 Depth=2
	ld.d	$a1, $fp, 32
	add.d	$s5, $a1, $s8
	slli.d	$a1, $s5, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_9
# %bb.8:                                # %if.end4.i.i331
                                        #   in Loop: Header=BB6_4 Depth=2
	st.d	$a0, $fp, 24
	st.d	$s5, $fp, 32
	b	.LBB6_12
.LBB6_9:                                # %if.then2.i.i332
                                        #   in Loop: Header=BB6_4 Depth=2
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_11
# %bb.10:                               # %if.then.i.i.i337
                                        #   in Loop: Header=BB6_4 Depth=2
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_11:                               # %seterr.exit.i.i335
                                        #   in Loop: Header=BB6_4 Depth=2
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB6_12:                               # %enlarge.exit.i320
                                        #   in Loop: Header=BB6_4 Depth=2
	ori	$s5, $zero, 19
.LBB6_13:                               # %enlarge.exit.i320
                                        #   in Loop: Header=BB6_4 Depth=2
	ld.d	$a1, $fp, 40
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $s1, $a0, 3
	slli.d	$a2, $s8, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.w	$a1, $fp, 16
	add.d	$a0, $a0, $s8
	st.d	$a0, $fp, 40
	addi.w	$s3, $s3, -1
	addi.w	$s7, $s7, -1
	beqz	$a1, .LBB6_4
	b	.LBB6_1
	.p2align	4, , 16
.LBB6_14:                               # %if.end.outer
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 18
	bltu	$a0, $a1, .LBB6_67
# %bb.15:                               # %if.end.outer
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_16:                               # %sw.bb32
                                        #   in Loop: Header=BB6_3 Depth=1
	sub.d	$s7, $s2, $s1
	addi.d	$a2, $s7, 1
	move	$a0, $fp
	lu12i.w	$a1, 491520
	move	$a3, $s1
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	ld.d	$a1, $fp, 40
	bnez	$a0, .LBB6_57
# %bb.17:                               # %if.end.i145
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 32
	ori	$a2, $zero, 1
	blt	$a1, $a0, .LBB6_39
# %bb.18:                               # %if.then2.i149
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a3, $a0, 1
	srli.d	$a4, $a3, 63
	add.d	$a4, $a3, $a4
	srai.d	$a3, $a4, 1
	bstrins.d	$a4, $zero, 0, 0
	add.d	$s6, $a4, $a3
	bge	$a0, $s6, .LBB6_39
# %bb.19:                               # %if.end.i.i159
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$s3, $a1
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 24
	mul.d	$a1, $a3, $a1
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_35
# %bb.20:                               # %if.end4.i.i164
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a1, $fp, 16
	st.d	$a0, $fp, 24
	st.d	$s6, $fp, 32
	sltui	$a2, $a1, 1
	b	.LBB6_38
.LBB6_21:                               # %if.end
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $s7, 1
	slti	$a0, $a0, 3
	addi.d	$a1, $s7, -256
	sltui	$a1, $a1, 1
	addi.d	$a1, $a1, 2
	maskeqz	$a2, $s7, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	alsl.w	$a0, $a0, $s6, 3
	addi.w	$s7, $s7, -1
	beq	$a0, $s5, .LBB6_21
# %bb.22:                               # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a1, $zero, 18
	bltu	$a1, $a0, .LBB6_67
# %bb.23:                               # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB6_24:                               # %sw.bb32.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$s1, $s2
	b	.LBB6_16
.LBB6_25:                               # %sw.bb59.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s3, $s7, 1
	move	$s1, $s2
.LBB6_26:                               # %sw.bb59
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $s2
	beq	$s2, $s1, .LBB6_34
# %bb.27:                               # %if.end.i289
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 24
	sub.d	$s6, $s2, $s1
	ori	$a1, $zero, 1
	blt	$s6, $a1, .LBB6_33
# %bb.28:                               # %if.end.i.i300
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 32
	add.d	$s7, $a1, $s6
	slli.d	$a1, $s7, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_30
# %bb.29:                               # %if.end4.i.i305
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s7, $fp, 32
	b	.LBB6_33
.LBB6_30:                               # %if.then2.i.i306
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_32
# %bb.31:                               # %if.then.i.i.i311
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_32:                               # %seterr.exit.i.i309
                                        #   in Loop: Header=BB6_3 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB6_33:                               # %enlarge.exit.i294
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 40
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $s1, $a0, 3
	slli.d	$a2, $s6, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s6
	st.d	$a0, $fp, 40
.LBB6_34:                               # %dupl.exit312
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.w	$s3, $s3, -1
	b	.LBB6_66
.LBB6_35:                               # %if.then2.i.i165
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_37
# %bb.36:                               # %if.then.i.i.i169
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_37:                               # %seterr.exit.i.i167
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB6_38:                               # %doemit.exit170
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a1, $s3
.LBB6_39:                               # %doemit.exit170
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a3, $fp, 40
	sub.d	$a0, $a1, $s1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	or	$a1, $a0, $a1
	ld.d	$a0, $fp, 24
	addi.d	$a4, $a3, 1
	st.d	$a4, $fp, 40
	slli.d	$a3, $a3, 3
	stx.d	$a1, $a0, $a3
	ld.d	$a1, $fp, 40
	beqz	$a2, .LBB6_57
# %bb.40:                               # %if.end.i181
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a2, $s1, 3
	ldx.d	$a3, $a0, $a2
	sub.d	$a1, $a1, $s1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	and	$a3, $a3, $a4
	or	$a1, $a3, $a1
	stx.d	$a1, $a0, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB6_44
# %bb.41:                               # %if.then2.i185
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s3, $a3, $a2
	bge	$a1, $s3, .LBB6_44
# %bb.42:                               # %if.end.i.i194
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_49
# %bb.43:                               # %doemit.exit205
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 40
	st.d	$s3, $fp, 32
	ld.w	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	stx.d	$a3, $a0, $a1
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 24
	bnez	$a2, .LBB6_57
	b	.LBB6_45
.LBB6_44:                               # %doemit.exit205.thread
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	ld.d	$a1, $fp, 40
.LBB6_45:                               # %if.end.i216
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a1, $a1, $a0, 3
	ld.d	$a2, $a1, -8
	srli.d	$a2, $a2, 27
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 31, 27
	st.d	$a3, $a1, -8
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB6_55
# %bb.46:                               # %if.then2.i220
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s3, $a3, $a2
	bge	$a1, $s3, .LBB6_55
# %bb.47:                               # %if.end.i.i229
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_52
# %bb.48:                               # %if.end4.i.i234
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s3, $fp, 32
	b	.LBB6_55
.LBB6_49:                               # %if.then2.i.i200
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_51
# %bb.50:                               # %if.then.i.i.i204
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_51:                               # %doemit.exit205.thread474
                                        #   in Loop: Header=BB6_3 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_56
.LBB6_52:                               # %if.then2.i.i235
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_54
# %bb.53:                               # %if.then.i.i.i239
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_54:                               # %seterr.exit.i.i237
                                        #   in Loop: Header=BB6_3 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB6_55:                               # %doemit.exit240.sink.split
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a1, $s4
.LBB6_56:                               # %doemit.exit240.sink.split
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a2, $fp, 40
	addi.d	$a3, $a2, 1
	st.d	$a3, $fp, 40
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a0, $a2
	ld.d	$a1, $fp, 40
.LBB6_57:                               # %doemit.exit240
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$s3, $zero, 1
	bne	$s2, $s1, .LBB6_59
# %bb.58:                               #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $a1
	ld.w	$a2, $fp, 16
	addi.w	$s0, $s0, -1
	beqz	$a2, .LBB6_3
	b	.LBB6_1
.LBB6_59:                               # %if.end.i242
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$s2, $a1
	ld.d	$a0, $fp, 24
	ori	$a1, $zero, 1
	blt	$s7, $a1, .LBB6_65
# %bb.60:                               # %if.end.i.i248
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 32
	add.d	$s6, $a1, $s7
	slli.d	$a1, $s6, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_62
# %bb.61:                               # %if.end4.i.i253
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$a0, $fp, 24
	st.d	$s6, $fp, 32
	b	.LBB6_65
.LBB6_62:                               # %if.then2.i.i254
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_64
# %bb.63:                               # %if.then.i.i.i258
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_64:                               # %seterr.exit.i.i256
                                        #   in Loop: Header=BB6_3 Depth=1
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
.LBB6_65:                               # %enlarge.exit.i
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $fp, 40
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a0, $s1, $a0, 3
	addi.d	$a1, $a0, 8
	slli.d	$a2, $s7, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s7
	st.d	$a0, $fp, 40
.LBB6_66:                               # %tailrecurse.outer.backedge
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a1, $s2
	ld.w	$a2, $fp, 16
	addi.w	$s0, $s0, -1
	beqz	$a2, .LBB6_3
	b	.LBB6_1
.LBB6_67:                               # %seterr.exit
	ori	$a0, $zero, 15
	st.w	$a0, $fp, 16
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB6_1
.LBB6_68:                               # %sw.bb.loopexit661
	st.d	$s1, $fp, 40
	b	.LBB6_1
.LBB6_69:                               # %sw.bb13.loopexit
	move	$s1, $s2
.LBB6_70:                               # %sw.bb13
	sub.d	$a0, $s2, $s1
	addi.d	$a2, $a0, 1
	lu12i.w	$a1, 491520
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 1
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(repeat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_1
# %bb.71:                               # %if.end.i
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$s0, $a1, $s1
	blt	$a1, $a0, .LBB6_75
# %bb.72:                               # %if.then2.i
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s3, $a2, $a1
	bge	$a0, $s3, .LBB6_75
# %bb.73:                               # %if.end.i.i
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_87
# %bb.74:                               # %if.end4.i.i
	ld.w	$a1, $fp, 16
	st.d	$a0, $fp, 24
	st.d	$s3, $fp, 32
	sltui	$s2, $a1, 1
.LBB6_75:                               # %doemit.exit
	ld.d	$a1, $fp, 40
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	or	$a2, $s0, $a0
	ld.d	$a0, $fp, 24
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	beqz	$s2, .LBB6_1
# %bb.76:                               # %if.end.i83
	ld.d	$a1, $fp, 40
	slli.d	$a2, $s1, 3
	ldx.d	$a3, $a0, $a2
	sub.d	$a1, $a1, $s1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	and	$a3, $a3, $a4
	or	$a1, $a3, $a1
	stx.d	$a1, $a0, $a2
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB6_80
# %bb.77:                               # %if.then2.i87
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s0, $a3, $a2
	bge	$a1, $s0, .LBB6_80
# %bb.78:                               # %if.end.i.i96
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_97
# %bb.79:                               # %doemit.exit107
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
	ld.w	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	lu12i.w	$a3, -491520
	lu32i.d	$a3, 0
	stx.d	$a3, $a0, $a1
	bnez	$a2, .LBB6_1
	b	.LBB6_81
.LBB6_80:                               # %doemit.exit107.thread
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	lu12i.w	$a2, -491520
	lu32i.d	$a2, 0
	stx.d	$a2, $a0, $a1
.LBB6_81:                               # %if.end.i118
	ld.d	$a1, $fp, 40
	alsl.d	$a1, $a1, $a0, 3
	ld.d	$a2, $a1, -8
	srli.d	$a2, $a2, 27
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 31, 27
	st.d	$a3, $a1, -8
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	blt	$a2, $a1, .LBB6_85
# %bb.82:                               # %if.then2.i122
	addi.d	$a2, $a1, 1
	srli.d	$a3, $a2, 63
	add.d	$a3, $a2, $a3
	srai.d	$a2, $a3, 1
	bstrins.d	$a3, $zero, 0, 0
	add.d	$s0, $a3, $a2
	bge	$a1, $s0, .LBB6_85
# %bb.83:                               # %if.end.i.i131
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_100
# %bb.84:                               # %if.end4.i.i136
	st.d	$a0, $fp, 24
	st.d	$s0, $fp, 32
.LBB6_85:                               # %if.end4.i127
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
.LBB6_86:                               # %if.end4.i127
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	lu32i.d	$a3, 0
	stx.d	$a3, $a0, $a1
	b	.LBB6_1
.LBB6_87:                               # %if.then2.i.i
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_89
# %bb.88:                               # %if.then.i.i.i
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_89:                               # %seterr.exit.i.i
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a1, 1
	st.d	$a3, $fp, 40
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	b	.LBB6_1
.LBB6_90:                               # %sw.bb53.loopexit
	move	$s1, $s2
.LBB6_91:                               # %sw.bb53
	sub.d	$a0, $s2, $s1
	addi.d	$a2, $a0, 1
	lu12i.w	$a1, 294912
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(doinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_1
# %bb.92:                               # %if.end.i261
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	sub.d	$s0, $a1, $s1
	blt	$a1, $a0, .LBB6_106
# %bb.93:                               # %if.then2.i265
	addi.d	$a1, $a0, 1
	srli.d	$a2, $a1, 63
	add.d	$a2, $a1, $a2
	srai.d	$a1, $a2, 1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$s1, $a2, $a1
	bge	$a0, $s1, .LBB6_106
# %bb.94:                               # %if.end.i.i275
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_103
# %bb.95:                               # %if.end4.i.i280
	st.d	$a0, $fp, 24
	st.d	$s1, $fp, 32
	b	.LBB6_106
.LBB6_96:                               # %sw.bb.loopexit
	st.d	$s2, $fp, 40
	b	.LBB6_1
.LBB6_97:                               # %if.then2.i.i102
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_99
# %bb.98:                               # %if.then.i.i.i106
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_99:                               # %doemit.exit107.thread465
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	ld.d	$a1, $fp, 40
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
	ld.d	$a0, $fp, 24
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 40
	slli.d	$a1, $a1, 3
	lu12i.w	$a2, -491520
	lu32i.d	$a2, 0
	stx.d	$a2, $a0, $a1
	b	.LBB6_1
.LBB6_100:                              # %if.then2.i.i137
	ld.w	$a0, $fp, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_102
# %bb.101:                              # %if.then.i.i.i141
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_102:                              # %seterr.exit.i.i139
	pcalau12i	$a1, %pc_hi20(nuls)
	ld.d	$a0, $fp, 24
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $fp, 0
	st.d	$a1, $fp, 8
	b	.LBB6_86
.LBB6_103:                              # %if.then2.i.i281
	ld.w	$a0, $fp, 16
	bnez	$a0, .LBB6_105
# %bb.104:                              # %if.then.i.i.i285
	ori	$a0, $zero, 12
	st.w	$a0, $fp, 16
.LBB6_105:                              # %seterr.exit.i.i283
	pcalau12i	$a0, %pc_hi20(nuls)
	addi.d	$a0, $a0, %pc_lo12(nuls)
	st.d	$a0, $fp, 0
	st.d	$a0, $fp, 8
.LBB6_106:                              # %if.end4.i270
	ld.d	$a0, $fp, 40
	lu12i.w	$a1, 327680
	or	$a1, $s0, $a1
	ld.d	$a2, $fp, 24
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 40
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	b	.LBB6_1
.Lfunc_end6:
	.size	repeat, .Lfunc_end6-repeat
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_68-.LJTI6_0
	.word	.LBB6_70-.LJTI6_0
	.word	.LBB6_70-.LJTI6_0
	.word	.LBB6_70-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_1-.LJTI6_0
	.word	.LBB6_16-.LJTI6_0
	.word	.LBB6_91-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_67-.LJTI6_0
	.word	.LBB6_26-.LJTI6_0
.LJTI6_1:
	.word	.LBB6_96-.LJTI6_1
	.word	.LBB6_69-.LJTI6_1
	.word	.LBB6_69-.LJTI6_1
	.word	.LBB6_69-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_1-.LJTI6_1
	.word	.LBB6_24-.LJTI6_1
	.word	.LBB6_90-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_67-.LJTI6_1
	.word	.LBB6_25-.LJTI6_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function p_b_symbol
	.type	p_b_symbol,@function
p_b_symbol:                             # @p_b_symbol
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
	ld.d	$a1, $a0, 0
	ld.d	$s2, $a0, 8
	bgeu	$a1, $s2, .LBB7_11
# %bb.1:                                # %land.lhs.true
	addi.d	$a2, $a1, 1
	bgeu	$a2, $s2, .LBB7_14
# %bb.2:                                # %land.lhs.true7
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 91
	bne	$a3, $a4, .LBB7_14
# %bb.3:                                # %land.lhs.true11
	ld.bu	$a2, $a2, 0
	ori	$a3, $zero, 46
	bne	$a2, $a3, .LBB7_14
# %bb.4:                                # %cond.true
	addi.d	$fp, $a1, 2
	st.d	$fp, $a0, 0
	bgeu	$fp, $s2, .LBB7_20
# %bb.5:                                # %land.lhs.true.i.preheader
	move	$a2, $zero
	move	$s5, $zero
	ori	$a3, $zero, 46
	ori	$a4, $zero, 93
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %while.body.i
                                        #   in Loop: Header=BB7_7 Depth=1
	st.d	$s4, $a0, 0
	addi.d	$s5, $s5, 1
	add.d	$a6, $a1, $s5
	addi.d	$a6, $a6, 2
	add.d	$a2, $a2, $a5
	beq	$a6, $s2, .LBB7_20
.LBB7_7:                                # %land.lhs.true.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s3, $a1, $s5
	addi.d	$s4, $s3, 3
	bgeu	$s4, $s2, .LBB7_6
# %bb.8:                                # %land.lhs.true8.i
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.bu	$a6, $s3, 2
	bne	$a6, $a3, .LBB7_6
# %bb.9:                                # %land.rhs12.i
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.bu	$a6, $s4, 0
	bne	$a6, $a4, .LBB7_6
# %bb.10:                               # %if.end.i
	move	$s7, $a0
	srai.d	$s0, $a2, 32
	addi.d	$s6, $s3, 2
	pcalau12i	$a0, %pc_hi20(cnames+8)
	addi.d	$s8, $a0, %pc_lo12(cnames+8)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	b	.LBB7_17
.LBB7_11:                               # %lor.rhs
	ld.w	$a1, $a0, 16
	bnez	$a1, .LBB7_13
# %bb.12:                               # %if.then.i
	ori	$a1, $zero, 7
	st.w	$a1, $a0, 16
.LBB7_13:                               # %lor.end.thread
	pcalau12i	$a1, %pc_hi20(nuls)
	addi.d	$a1, $a1, %pc_lo12(nuls)
	st.d	$a1, $a0, 8
.LBB7_14:                               # %if.then
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ld.bu	$a1, $a1, 0
.LBB7_15:                               # %cleanup
	ext.w.b	$a0, $a1
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
.LBB7_16:                               # %for.inc.i
                                        #   in Loop: Header=BB7_17 Depth=1
	ld.d	$s1, $s8, 8
	addi.d	$s8, $s8, 16
	beqz	$s1, .LBB7_27
.LBB7_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_16
# %bb.18:                               # %land.lhs.true33.i
                                        #   in Loop: Header=BB7_17 Depth=1
	ldx.bu	$a0, $s1, $s0
	bnez	$a0, .LBB7_16
# %bb.19:
	move	$fp, $s8
	b	.LBB7_28
.LBB7_20:                               # %if.then.i24
	ld.w	$a1, $a0, 16
	beqz	$a1, .LBB7_22
.LBB7_21:
	move	$a1, $zero
	b	.LBB7_24
.LBB7_22:                               # %if.then.i.i
	move	$a1, $zero
	ori	$a2, $zero, 7
.LBB7_23:                               # %lor.rhs46
	st.w	$a2, $a0, 16
.LBB7_24:                               # %lor.rhs46
	ld.w	$a2, $a0, 16
	bnez	$a2, .LBB7_26
# %bb.25:                               # %if.then.i29
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 16
.LBB7_26:                               # %seterr.exit30
	pcalau12i	$a2, %pc_hi20(nuls)
	addi.d	$a2, $a2, %pc_lo12(nuls)
	st.d	$a2, $a0, 0
	st.d	$a2, $a0, 8
	b	.LBB7_15
.LBB7_27:                               # %for.end.i
	bstrpick.d	$a0, $s5, 31, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_33
.LBB7_28:                               # %p_b_coll_elem.exit
	ld.bu	$a1, $fp, 0
	move	$a0, $s7
	bgeu	$s6, $s2, .LBB7_24
# %bb.29:                               # %land.lhs.true25
	bgeu	$s4, $s2, .LBB7_24
# %bb.30:                               # %land.lhs.true31
	ld.bu	$a2, $s6, 0
	ori	$a3, $zero, 46
	bne	$a2, $a3, .LBB7_24
# %bb.31:                               # %land.lhs.true36
	ld.bu	$a2, $s4, 0
	ori	$a3, $zero, 93
	bne	$a2, $a3, .LBB7_24
# %bb.32:                               # %cond.true42
	addi.d	$a2, $s3, 4
	st.d	$a2, $a0, 0
	b	.LBB7_15
.LBB7_33:                               # %if.end44.i
	move	$a0, $s7
	ld.w	$a1, $s7, 16
	bnez	$a1, .LBB7_21
# %bb.34:                               # %if.then.i29.i
	move	$a1, $zero
	ori	$a2, $zero, 3
	b	.LBB7_23
.Lfunc_end7:
	.size	p_b_symbol, .Lfunc_end7-p_b_symbol
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[:<:]]"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"[:>:]]"
	.size	.L.str.1, 7

	.type	cclasses,@object                # @cclasses
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
cclasses:
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.4
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.4
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.4
	.dword	.L.str.11
	.dword	.L.str.12
	.dword	.L.str.4
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.4
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.4
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.4
	.dword	.L.str.19
	.dword	.L.str.20
	.dword	.L.str.4
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.4
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.4
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.4
	.dword	0
	.dword	0
	.dword	.L.str.4
	.size	cclasses, 312

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"alnum"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	.size	.L.str.3, 63

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.space	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"alpha"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	.L.str.6, 53

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"blank"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" \t"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"cntrl"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\007\b\t\n\013\f\r\001\002\003\004\005\006\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037\177"
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"digit"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"0123456789"
	.size	.L.str.12, 11

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"graph"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
	.size	.L.str.14, 95

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"lower"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"abcdefghijklmnopqrstuvwxyz"
	.size	.L.str.16, 27

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"print"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ "
	.size	.L.str.18, 96

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"punct"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"space"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\t\n\013\f\r "
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"upper"
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"xdigit"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"0123456789ABCDEFabcdef"
	.size	.L.str.26, 23

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"NUL"
	.size	.L.str.27, 4

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SOH"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"STX"
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"ETX"
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"EOT"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"ENQ"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"ACK"
	.size	.L.str.33, 4

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"BEL"
	.size	.L.str.34, 4

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"alert"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"BS"
	.size	.L.str.36, 3

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"backspace"
	.size	.L.str.37, 10

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"HT"
	.size	.L.str.38, 3

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"tab"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"LF"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"newline"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"VT"
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"vertical-tab"
	.size	.L.str.43, 13

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"FF"
	.size	.L.str.44, 3

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"form-feed"
	.size	.L.str.45, 10

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"CR"
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"carriage-return"
	.size	.L.str.47, 16

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SO"
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SI"
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"DLE"
	.size	.L.str.50, 4

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"DC1"
	.size	.L.str.51, 4

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"DC2"
	.size	.L.str.52, 4

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"DC3"
	.size	.L.str.53, 4

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"DC4"
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"NAK"
	.size	.L.str.55, 4

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SYN"
	.size	.L.str.56, 4

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"ETB"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"CAN"
	.size	.L.str.58, 4

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"EM"
	.size	.L.str.59, 3

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SUB"
	.size	.L.str.60, 4

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"ESC"
	.size	.L.str.61, 4

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"IS4"
	.size	.L.str.62, 4

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"FS"
	.size	.L.str.63, 3

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"IS3"
	.size	.L.str.64, 4

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"GS"
	.size	.L.str.65, 3

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"IS2"
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"RS"
	.size	.L.str.67, 3

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"IS1"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"US"
	.size	.L.str.69, 3

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"exclamation-mark"
	.size	.L.str.70, 17

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"quotation-mark"
	.size	.L.str.71, 15

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"number-sign"
	.size	.L.str.72, 12

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"dollar-sign"
	.size	.L.str.73, 12

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"percent-sign"
	.size	.L.str.74, 13

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ampersand"
	.size	.L.str.75, 10

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"apostrophe"
	.size	.L.str.76, 11

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"left-parenthesis"
	.size	.L.str.77, 17

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"right-parenthesis"
	.size	.L.str.78, 18

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"asterisk"
	.size	.L.str.79, 9

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"plus-sign"
	.size	.L.str.80, 10

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"comma"
	.size	.L.str.81, 6

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"hyphen"
	.size	.L.str.82, 7

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"hyphen-minus"
	.size	.L.str.83, 13

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"period"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"full-stop"
	.size	.L.str.85, 10

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"slash"
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"solidus"
	.size	.L.str.87, 8

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"zero"
	.size	.L.str.88, 5

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"one"
	.size	.L.str.89, 4

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"two"
	.size	.L.str.90, 4

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"three"
	.size	.L.str.91, 6

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"four"
	.size	.L.str.92, 5

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"five"
	.size	.L.str.93, 5

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"six"
	.size	.L.str.94, 4

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"seven"
	.size	.L.str.95, 6

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"eight"
	.size	.L.str.96, 6

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"nine"
	.size	.L.str.97, 5

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"colon"
	.size	.L.str.98, 6

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"semicolon"
	.size	.L.str.99, 10

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"less-than-sign"
	.size	.L.str.100, 15

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"equals-sign"
	.size	.L.str.101, 12

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"greater-than-sign"
	.size	.L.str.102, 18

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"question-mark"
	.size	.L.str.103, 14

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"commercial-at"
	.size	.L.str.104, 14

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"left-square-bracket"
	.size	.L.str.105, 20

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"backslash"
	.size	.L.str.106, 10

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"reverse-solidus"
	.size	.L.str.107, 16

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"right-square-bracket"
	.size	.L.str.108, 21

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"circumflex"
	.size	.L.str.109, 11

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"circumflex-accent"
	.size	.L.str.110, 18

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"underscore"
	.size	.L.str.111, 11

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"low-line"
	.size	.L.str.112, 9

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"grave-accent"
	.size	.L.str.113, 13

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"left-brace"
	.size	.L.str.114, 11

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"left-curly-bracket"
	.size	.L.str.115, 19

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"vertical-line"
	.size	.L.str.116, 14

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"right-brace"
	.size	.L.str.117, 12

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"right-curly-bracket"
	.size	.L.str.118, 20

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"tilde"
	.size	.L.str.119, 6

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"DEL"
	.size	.L.str.120, 4

	.type	cnames,@object                  # @cnames
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
cnames:
	.dword	.L.str.27
	.byte	0                               # 0x0
	.space	7
	.dword	.L.str.28
	.byte	1                               # 0x1
	.space	7
	.dword	.L.str.29
	.byte	2                               # 0x2
	.space	7
	.dword	.L.str.30
	.byte	3                               # 0x3
	.space	7
	.dword	.L.str.31
	.byte	4                               # 0x4
	.space	7
	.dword	.L.str.32
	.byte	5                               # 0x5
	.space	7
	.dword	.L.str.33
	.byte	6                               # 0x6
	.space	7
	.dword	.L.str.34
	.byte	7                               # 0x7
	.space	7
	.dword	.L.str.35
	.byte	7                               # 0x7
	.space	7
	.dword	.L.str.36
	.byte	8                               # 0x8
	.space	7
	.dword	.L.str.37
	.byte	8                               # 0x8
	.space	7
	.dword	.L.str.38
	.byte	9                               # 0x9
	.space	7
	.dword	.L.str.39
	.byte	9                               # 0x9
	.space	7
	.dword	.L.str.40
	.byte	10                              # 0xa
	.space	7
	.dword	.L.str.41
	.byte	10                              # 0xa
	.space	7
	.dword	.L.str.42
	.byte	11                              # 0xb
	.space	7
	.dword	.L.str.43
	.byte	11                              # 0xb
	.space	7
	.dword	.L.str.44
	.byte	12                              # 0xc
	.space	7
	.dword	.L.str.45
	.byte	12                              # 0xc
	.space	7
	.dword	.L.str.46
	.byte	13                              # 0xd
	.space	7
	.dword	.L.str.47
	.byte	13                              # 0xd
	.space	7
	.dword	.L.str.48
	.byte	14                              # 0xe
	.space	7
	.dword	.L.str.49
	.byte	15                              # 0xf
	.space	7
	.dword	.L.str.50
	.byte	16                              # 0x10
	.space	7
	.dword	.L.str.51
	.byte	17                              # 0x11
	.space	7
	.dword	.L.str.52
	.byte	18                              # 0x12
	.space	7
	.dword	.L.str.53
	.byte	19                              # 0x13
	.space	7
	.dword	.L.str.54
	.byte	20                              # 0x14
	.space	7
	.dword	.L.str.55
	.byte	21                              # 0x15
	.space	7
	.dword	.L.str.56
	.byte	22                              # 0x16
	.space	7
	.dword	.L.str.57
	.byte	23                              # 0x17
	.space	7
	.dword	.L.str.58
	.byte	24                              # 0x18
	.space	7
	.dword	.L.str.59
	.byte	25                              # 0x19
	.space	7
	.dword	.L.str.60
	.byte	26                              # 0x1a
	.space	7
	.dword	.L.str.61
	.byte	27                              # 0x1b
	.space	7
	.dword	.L.str.62
	.byte	28                              # 0x1c
	.space	7
	.dword	.L.str.63
	.byte	28                              # 0x1c
	.space	7
	.dword	.L.str.64
	.byte	29                              # 0x1d
	.space	7
	.dword	.L.str.65
	.byte	29                              # 0x1d
	.space	7
	.dword	.L.str.66
	.byte	30                              # 0x1e
	.space	7
	.dword	.L.str.67
	.byte	30                              # 0x1e
	.space	7
	.dword	.L.str.68
	.byte	31                              # 0x1f
	.space	7
	.dword	.L.str.69
	.byte	31                              # 0x1f
	.space	7
	.dword	.L.str.21
	.byte	32                              # 0x20
	.space	7
	.dword	.L.str.70
	.byte	33                              # 0x21
	.space	7
	.dword	.L.str.71
	.byte	34                              # 0x22
	.space	7
	.dword	.L.str.72
	.byte	35                              # 0x23
	.space	7
	.dword	.L.str.73
	.byte	36                              # 0x24
	.space	7
	.dword	.L.str.74
	.byte	37                              # 0x25
	.space	7
	.dword	.L.str.75
	.byte	38                              # 0x26
	.space	7
	.dword	.L.str.76
	.byte	39                              # 0x27
	.space	7
	.dword	.L.str.77
	.byte	40                              # 0x28
	.space	7
	.dword	.L.str.78
	.byte	41                              # 0x29
	.space	7
	.dword	.L.str.79
	.byte	42                              # 0x2a
	.space	7
	.dword	.L.str.80
	.byte	43                              # 0x2b
	.space	7
	.dword	.L.str.81
	.byte	44                              # 0x2c
	.space	7
	.dword	.L.str.82
	.byte	45                              # 0x2d
	.space	7
	.dword	.L.str.83
	.byte	45                              # 0x2d
	.space	7
	.dword	.L.str.84
	.byte	46                              # 0x2e
	.space	7
	.dword	.L.str.85
	.byte	46                              # 0x2e
	.space	7
	.dword	.L.str.86
	.byte	47                              # 0x2f
	.space	7
	.dword	.L.str.87
	.byte	47                              # 0x2f
	.space	7
	.dword	.L.str.88
	.byte	48                              # 0x30
	.space	7
	.dword	.L.str.89
	.byte	49                              # 0x31
	.space	7
	.dword	.L.str.90
	.byte	50                              # 0x32
	.space	7
	.dword	.L.str.91
	.byte	51                              # 0x33
	.space	7
	.dword	.L.str.92
	.byte	52                              # 0x34
	.space	7
	.dword	.L.str.93
	.byte	53                              # 0x35
	.space	7
	.dword	.L.str.94
	.byte	54                              # 0x36
	.space	7
	.dword	.L.str.95
	.byte	55                              # 0x37
	.space	7
	.dword	.L.str.96
	.byte	56                              # 0x38
	.space	7
	.dword	.L.str.97
	.byte	57                              # 0x39
	.space	7
	.dword	.L.str.98
	.byte	58                              # 0x3a
	.space	7
	.dword	.L.str.99
	.byte	59                              # 0x3b
	.space	7
	.dword	.L.str.100
	.byte	60                              # 0x3c
	.space	7
	.dword	.L.str.101
	.byte	61                              # 0x3d
	.space	7
	.dword	.L.str.102
	.byte	62                              # 0x3e
	.space	7
	.dword	.L.str.103
	.byte	63                              # 0x3f
	.space	7
	.dword	.L.str.104
	.byte	64                              # 0x40
	.space	7
	.dword	.L.str.105
	.byte	91                              # 0x5b
	.space	7
	.dword	.L.str.106
	.byte	92                              # 0x5c
	.space	7
	.dword	.L.str.107
	.byte	92                              # 0x5c
	.space	7
	.dword	.L.str.108
	.byte	93                              # 0x5d
	.space	7
	.dword	.L.str.109
	.byte	94                              # 0x5e
	.space	7
	.dword	.L.str.110
	.byte	94                              # 0x5e
	.space	7
	.dword	.L.str.111
	.byte	95                              # 0x5f
	.space	7
	.dword	.L.str.112
	.byte	95                              # 0x5f
	.space	7
	.dword	.L.str.113
	.byte	96                              # 0x60
	.space	7
	.dword	.L.str.114
	.byte	123                             # 0x7b
	.space	7
	.dword	.L.str.115
	.byte	123                             # 0x7b
	.space	7
	.dword	.L.str.116
	.byte	124                             # 0x7c
	.space	7
	.dword	.L.str.117
	.byte	125                             # 0x7d
	.space	7
	.dword	.L.str.118
	.byte	125                             # 0x7d
	.space	7
	.dword	.L.str.119
	.byte	126                             # 0x7e
	.space	7
	.dword	.L.str.120
	.byte	127                             # 0x7f
	.space	7
	.space	16
	.size	cnames, 1536

	.type	nuls,@object                    # @nuls
	.local	nuls
	.comm	nuls,10,1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nuls
