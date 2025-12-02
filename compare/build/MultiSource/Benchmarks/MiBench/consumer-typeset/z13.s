	.file	"z13.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function BreakObject
.LCPI0_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
	.text
	.globl	BreakObject
	.p2align	5
	.type	BreakObject,@function
BreakObject:                            # @BreakObject
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 0
	move	$fp, $a0
	bltz	$a1, .LBB0_9
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $s0, 4
	bltz	$a0, .LBB0_9
# %bb.2:                                # %land.lhs.true2
	ld.w	$a3, $s0, 8
	bltz	$a3, .LBB0_9
# %bb.3:                                # %if.end
	ld.w	$a2, $fp, 48
	bge	$a1, $a2, .LBB0_13
.LBB0_4:                                # %if.end89
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -9
	ori	$a3, $zero, 90
	bltu	$a3, $a1, .LBB0_77
# %bb.5:                                # %if.end89
	addi.d	$s2, $fp, 48
	addi.d	$s1, $fp, 32
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a3, $a1
	add.d	$a1, $a3, $a1
	jr	$a1
.LBB0_6:                                # %sw.bb900
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	beq	$a0, $a1, .LBB0_8
# %bb.7:                                # %if.then909
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB0_8:                                # %for.cond918
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_8
	b	.LBB0_69
.LBB0_9:                                # %if.then
	addi.d	$s1, $fp, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 4
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 11
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB0_11
# %bb.10:                               # %cond.end
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a1, $s0, 16
	st.d	$s0, $a1, 24
	b	.LBB0_12
.LBB0_11:
	move	$a0, $zero
.LBB0_12:                               # %cond.end65
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB0_74
.LBB0_13:                               # %land.lhs.true73
	ld.w	$a1, $fp, 56
	blt	$a3, $a1, .LBB0_4
# %bb.14:                               # %land.lhs.true73
	add.w	$a1, $a1, $a2
	bge	$a0, $a1, .LBB0_73
	b	.LBB0_4
.LBB0_15:                               # %sw.bb994
	ld.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB0_16:                               # %for.cond1001
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_16
# %bb.17:                               # %for.cond1001
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB0_69
# %bb.18:                               # %if.else1032
	st.w	$zero, $fp, 48
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s0, 8
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	b	.LBB0_47
.LBB0_19:                               # %sw.bb1204
	ld.d	$a0, $fp, 0
	.p2align	4, , 16
.LBB0_20:                               # %for.cond1211
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_20
	b	.LBB0_69
.LBB0_21:                               # %sw.bb1172
	ld.d	$a0, $fp, 0
	.p2align	4, , 16
.LBB0_22:                               # %for.cond1179
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_22
	b	.LBB0_69
.LBB0_23:                               # %sw.bb262
	ld.w	$a0, $fp, 40
	bltz	$a0, .LBB0_80
# %bb.24:                               # %if.else628
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB0_79
# %bb.25:                               # %land.lhs.true631
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(InsertScale)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_79
# %bb.26:                               # %if.then634
	ld.d	$s0, $fp, 24
.LBB0_27:                               # %for.cond641
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_27
# %bb.28:                               # %for.end652
	ld.w	$a0, $s0, 64
	addi.d	$a4, $s0, 32
	addi.d	$a5, $fp, 64
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	lu12i.w	$a0, 245760
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB0_71
.LBB0_29:                               # %sw.bb780
	pcalau12i	$a1, %got_pc_hi20(BackEnd)
	ld.d	$a1, $a1, %got_pc_lo12(BackEnd)
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 16
	beqz	$a1, .LBB0_84
# %bb.30:                               # %land.lhs.true783
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(InsertScale)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_83
# %bb.31:                               # %if.then786
	ld.d	$fp, $fp, 24
.LBB0_32:                               # %for.cond793
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB0_32
# %bb.33:                               # %for.end804
	addi.d	$a4, $fp, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	ld.w	$a3, $fp, 64
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	lu12i.w	$a0, 245760
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	b	.LBB0_78
.LBB0_34:                               # %sw.bb189
	ld.w	$a1, $fp, 64
	addi.d	$a0, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(InvScaleConstraint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB0_35:                               # %for.cond198
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_35
# %bb.36:                               # %for.end209
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 48
	ld.w	$a2, $fp, 64
	mul.w	$a1, $a2, $a1
	bstrpick.d	$a3, $a1, 62, 56
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 7
	st.w	$a1, $fp, 48
	ld.w	$a0, $a0, 56
	mul.w	$a0, $a0, $a2
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 7
	b	.LBB0_70
.LBB0_37:                               # %sw.bb1372
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a5, $fp, 56
	move	$a2, $zero
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(BreakJoinedGroup)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_38:                               # %sw.bb
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB0_82
# %bb.39:                               # %land.lhs.true91
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(InsertScale)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_82
# %bb.40:                               # %if.then94
	ld.d	$fp, $fp, 24
.LBB0_41:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB0_41
# %bb.42:                               # %for.end
	ld.w	$a0, $fp, 64
	addi.d	$a4, $fp, 32
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	lu12i.w	$a0, 245760
	movgr2fr.w	$fa1, $a0
	fmul.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	b	.LBB0_78
.LBB0_43:                               # %sw.bb1385
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BreakVcat)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_44:                               # %sw.bb1050
	ld.d	$s1, $fp, 8
.LBB0_45:                               # %for.cond1057
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_45
# %bb.46:                               # %for.end1068
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(FindShift)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s0, 4
	slt	$a3, $a1, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	ld.w	$a3, $s0, 8
	sub.d	$a1, $a1, $a0
	st.w	$a1, $sp, 8
	st.w	$a2, $sp, 12
	slt	$a1, $a3, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(FindShift)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 48
	add.w	$a1, $a1, $a0
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 48
	ld.w	$a1, $s1, 56
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
.LBB0_47:                               # %sw.epilog
	or	$a0, $a0, $a1
	b	.LBB0_70
.LBB0_48:                               # %sw.bb1236
	ld.d	$a0, $fp, 8
.LBB0_49:                               # %for.cond1243
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_49
	b	.LBB0_69
.LBB0_50:                               # %sw.bb1268
	blez	$a2, .LBB0_106
# %bb.51:                               # %if.then1274
	ld.w	$a0, $fp, 56
	add.w	$a0, $a0, $a2
	lu12i.w	$a1, 2047
	ori	$a2, $a1, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	ld.d	$a1, $fp, 8
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 56
	st.w	$zero, $fp, 48
	beq	$a1, $fp, .LBB0_101
# %bb.52:                               # %for.cond1304.preheader.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a0, 15
	ori	$a3, $a0, 3839
	move	$a0, $fp
	b	.LBB0_54
.LBB0_53:                               # %for.inc1332
                                        #   in Loop: Header=BB0_54 Depth=1
	ld.d	$a1, $a1, 8
	beq	$a1, $fp, .LBB0_90
.LBB0_54:                               # %for.cond1304.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_55:                               # %for.cond1304
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 16
	ld.bu	$a5, $a4, 32
	beqz	$a5, .LBB0_55
# %bb.56:                               # %for.cond1304
                                        #   in Loop: Header=BB0_54 Depth=1
	bne	$a5, $a2, .LBB0_53
# %bb.57:                               # %land.lhs.true1321
                                        #   in Loop: Header=BB0_54 Depth=1
	ld.hu	$a5, $a4, 44
	andi	$a6, $a5, 256
	beqz	$a6, .LBB0_53
# %bb.58:                               # %if.then1326
                                        #   in Loop: Header=BB0_54 Depth=1
	and	$a0, $a5, $a3
	st.h	$a0, $a4, 44
	move	$a0, $a4
	b	.LBB0_53
.LBB0_59:                               # %sw.bb739
	addi.d	$s1, $fp, 64
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinConstraint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB0_60:                               # %for.cond747
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_60
# %bb.61:                               # %for.end758
	move	$a1, $s1
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 48
	st.w	$a1, $fp, 48
	ld.w	$a0, $a0, 56
	addi.d	$a1, $fp, 56
	st.w	$a0, $fp, 56
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(EnlargeToConstraint)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_62:                               # %sw.bb943
	ld.d	$a0, $fp, 8
.LBB0_63:                               # %for.cond950
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_63
# %bb.64:                               # %for.end961
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_65:                               # %for.cond969
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_65
	b	.LBB0_69
.LBB0_66:                               # %sw.bb1370
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BreakTable)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_67:                               # %sw.bb230
	ld.d	$a0, $fp, 0
.LBB0_68:                               # %for.cond237
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_68
.LBB0_69:                               # %for.end248
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 48
	st.w	$a1, $fp, 48
	ld.w	$a0, $a0, 56
.LBB0_70:                               # %sw.epilog
	st.w	$a0, $fp, 56
.LBB0_71:                               # %sw.epilog
	ld.w	$a0, $fp, 48
	bltz	$a0, .LBB0_75
# %bb.72:                               # %if.end1399
	ld.w	$a0, $fp, 56
	bltz	$a0, .LBB0_76
.LBB0_73:                               # %cleanup1408
	move	$s0, $fp
.LBB0_74:                               # %cleanup1408
	move	$a0, $s0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_75:                               # %if.then1397
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	bgez	$a0, .LBB0_73
.LBB0_76:                               # %if.then1405
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_73
.LBB0_77:                               # %sw.default
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
.LBB0_78:                               # %sw.epilog
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.LBB0_79:                               # %if.else660
	addi.d	$a5, $fp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 6
	b	.LBB0_85
.LBB0_80:                               # %if.then264
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s3, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s2, $a1
	beqz	$s1, .LBB0_91
# %bb.81:                               # %if.else277
	alsl.d	$a0, $a0, $s2, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB0_92
.LBB0_82:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	move	$a4, $s1
	move	$a6, $a5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_86
.LBB0_83:                               # %land.lhs.true783.if.else818_crit_edge
	ld.bu	$a0, $s1, 0
.LBB0_84:                               # %if.else818
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 8
.LBB0_85:                               # %if.else660
	ori	$a3, $zero, 2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_86:                               # %if.else660
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 11
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB0_88
# %bb.87:                               # %cond.end152
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a1, $s0, 16
	st.d	$s0, $a1, 24
	b	.LBB0_89
.LBB0_88:
	move	$a0, $zero
.LBB0_89:                               # %cond.end185
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB0_71
.LBB0_90:                               # %for.end1336.loopexit
	ld.w	$a1, $s2, 0
	b	.LBB0_102
.LBB0_91:                               # %if.then275
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s1, $a0, 0
.LBB0_92:                               # %if.end286
	ori	$a0, $zero, 17
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	ld.w	$a0, $fp, 48
	st.w	$a0, $s1, 48
	ld.w	$a0, $fp, 56
	st.w	$a0, $s1, 56
	ld.w	$a0, $fp, 52
	st.w	$a0, $s1, 52
	ld.w	$a0, $fp, 60
	ld.hu	$a1, $s1, 64
	st.w	$a0, $s1, 60
	ori	$a0, $zero, 200
	bstrins.d	$a1, $a0, 63, 7
	st.h	$a1, $s1, 64
	ld.wu	$a0, $fp, 40
	andi	$a0, $a0, 4095
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FontSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.l.d	$fa0, $fa0
	ld.hu	$a0, $s1, 68
	movfr2gr.d	$a1, $fa0
	st.h	$a1, $s1, 66
	ori	$a1, $zero, 76
	bstrins.d	$a0, $a1, 63, 7
	st.h	$a0, $s1, 68
	ld.bu	$a0, $s1, 64
	st.h	$zero, $s1, 70
	ori	$a1, $zero, 74
	st.b	$a1, $s1, 68
	andi	$a0, $a0, 247
	st.b	$a0, $s1, 64
	ld.wu	$a0, $fp, 40
	ld.w	$a1, $s1, 76
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s1, 76
	ld.wu	$a0, $fp, 40
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s1, 76
	ld.wu	$a0, $fp, 40
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 23, 22
	st.w	$a1, $s1, 76
	ld.w	$a0, $fp, 40
	lu12i.w	$a2, -260097
	ori	$a2, $a2, 4095
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	bstrpick.d	$a0, $a0, 62, 23
	bstrins.d	$a1, $a0, 29, 24
	st.w	$a1, $s1, 76
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB0_94
# %bb.93:                               # %cond.false498
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s1, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s1, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	b	.LBB0_95
.LBB0_94:                               # %cond.end489.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB0_95:                               # %cond.end522
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB0_97
# %bb.96:                               # %if.else537
	alsl.d	$a1, $a2, $s2, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_98
.LBB0_97:                               # %if.then535
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_98:                               # %cond.end592
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
	st.d	$fp, $a4, 0
	beqz	$a0, .LBB0_100
# %bb.99:                               # %cond.false601
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB0_100:                              # %cond.end625
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_71
.LBB0_101:
	move	$a1, $zero
	move	$a0, $fp
.LBB0_102:                              # %for.end1336
	ld.w	$a2, $s0, 0
	blt	$a2, $a1, .LBB0_105
# %bb.103:                              # %land.lhs.true1343
	ld.w	$a2, $fp, 56
	ld.w	$a3, $s0, 4
	add.w	$a1, $a2, $a1
	blt	$a3, $a1, .LBB0_105
# %bb.104:                              # %land.lhs.true1354
	ld.w	$a1, $s0, 8
	bge	$a1, $a2, .LBB0_107
.LBB0_105:                              # %cleanup.thread
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_106:                              # %if.end1368
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	addi.d	$a6, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(FillObject)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_71
.LBB0_107:                              # %cleanup
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_71
.Lfunc_end0:
	.size	BreakObject, .Lfunc_end0-BreakObject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_50-.LJTI0_0
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_43-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_71-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_71-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_44-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_77-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function BreakTable
	.type	BreakTable,@function
BreakTable:                             # @BreakTable
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
	move	$fp, $a0
	ld.d	$s0, $a0, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_1
# %bb.2:                                # %for.cond
	addi.d	$s1, $s0, 32
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_4
# %bb.3:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 32
.LBB1_4:                                # %if.end
	addi.d	$a1, $a0, -119
	ori	$a2, $zero, 19
	bltu	$a2, $a1, .LBB1_6
# %bb.5:                                # %if.then22
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
.LBB1_6:                                # %if.end24
	addi.d	$a1, $a0, -2
	sltui	$a0, $a1, 7
	st.w	$a0, $s0, 52
	ld.d	$a2, $fp, 8
	ld.d	$s2, $a2, 8
	ori	$a2, $zero, 6
	sltu	$s4, $a2, $a1
	beq	$s2, $fp, .LBB1_26
# %bb.7:                                # %for.cond54.preheader.preheader
	masknez	$s3, $s0, $a0
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s0, $s4
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_10 Depth=1
	move	$s4, $s0
	move	$s8, $s3
.LBB1_9:                                # %for.inc160
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $s2, 8
	ld.d	$s2, $a0, 8
	move	$s3, $s8
	move	$s0, $s4
	beq	$s2, $fp, .LBB1_27
.LBB1_10:                               # %for.cond54.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	move	$s5, $s2
	.p2align	4, , 16
.LBB1_11:                               # %for.cond54
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_11
# %bb.12:                               # %for.cond54
                                        #   in Loop: Header=BB1_10 Depth=1
	beq	$a0, $s6, .LBB1_14
# %bb.13:                               # %if.then71
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a4, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %if.end73
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$s8, $s2, 8
	bne	$s8, $fp, .LBB1_16
# %bb.15:                               # %if.then79
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s2, 8
	.p2align	4, , 16
.LBB1_16:                               # %for.cond88
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB1_16
# %bb.17:                               # %for.cond88
                                        #   in Loop: Header=BB1_10 Depth=1
	bne	$a0, $s6, .LBB1_19
# %bb.18:                               # %if.then105
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a4, $s7, 0
	addi.d	$s4, $s8, 32
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 32
	addi.d	$a1, $a0, -119
	ori	$a2, $zero, 19
	bgeu	$a2, $a1, .LBB1_20
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_19:                               # %if.end107.loopexit
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$s4, $s8, 32
	addi.d	$a1, $a0, -119
	ori	$a2, $zero, 19
	bltu	$a2, $a1, .LBB1_21
.LBB1_20:                               # %if.then119
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB1_21:                               # %if.end121
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$a0, $a0, -2
	sltui	$a1, $a0, 7
	st.w	$a1, $s8, 52
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB1_8
# %bb.22:                               # %if.then142
                                        #   in Loop: Header=BB1_10 Depth=1
	ori	$s4, $zero, 1
	beqz	$s3, .LBB1_9
# %bb.23:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.hu	$a0, $s5, 44
	andi	$a0, $a0, 256
	addi.d	$a3, $s5, 44
	bnez	$a0, .LBB1_25
# %bb.24:                               # %if.else152
                                        #   in Loop: Header=BB1_10 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s4, $s0, 1
	b	.LBB1_9
.LBB1_25:                               # %if.then147
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	b	.LBB1_9
.LBB1_26:
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB1_27:                               # %for.end167
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s5, .LBB1_30
# %bb.28:                               # %land.lhs.true170
	ld.w	$a0, $s0, 4
	add.w	$a1, $s5, $s6
	blt	$a0, $a1, .LBB1_30
# %bb.29:                               # %land.lhs.true174
	ld.w	$a0, $s0, 8
	bge	$a0, $s6, .LBB1_38
.LBB1_30:                               # %if.then177
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 2
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB1_37
# %bb.31:                               # %for.cond190.preheader.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 9
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %for.inc250
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$a0, $a0, 8
	beq	$a0, $fp, .LBB1_37
.LBB1_33:                               # %for.cond190.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_34:                               # %for.cond190
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB1_34
# %bb.35:                               # %for.cond190
                                        #   in Loop: Header=BB1_33 Depth=1
	bne	$a4, $a1, .LBB1_32
# %bb.36:                               # %if.then207
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.hu	$a4, $a3, 44
	bstrins.d	$a4, $a2, 63, 10
	st.h	$a4, $a3, 44
	st.h	$zero, $a3, 46
	b	.LBB1_32
.LBB1_37:
	move	$s6, $zero
	move	$s5, $zero
.LBB1_38:                               # %if.end255
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a0, $s4
	blez	$a1, .LBB1_97
# %bb.39:                               # %land.rhs259.lr.ph
	ori	$s7, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s2, $a0, %pc_lo12(.L.str.24)
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_40:                               # %sw.bb658
                                        #   in Loop: Header=BB1_43 Depth=1
	add.w	$s5, $s0, $s5
	add.w	$s6, $a0, $s6
.LBB1_41:                               # %sw.epilog668
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.w	$s4, $s4, -1
.LBB1_42:                               # %sw.epilog668
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a0, $s4
	blez	$a1, .LBB1_97
.LBB1_43:                               # %land.rhs259
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_48 Depth 2
                                        #       Child Loop BB1_49 Depth 3
                                        #       Child Loop BB1_58 Depth 3
	ld.w	$a0, $s0, 0
	blt	$a0, $s5, .LBB1_97
# %bb.44:                               # %land.lhs.true263
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $s0, 4
	add.w	$a2, $s5, $s6
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB1_97
# %bb.45:                               # %land.rhs268
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $s0, 8
	blt	$a0, $s6, .LBB1_97
# %bb.46:                               # %while.body
                                        #   in Loop: Header=BB1_43 Depth=1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	ld.w	$a1, $fp, 56
	move	$s4, $zero
	add.w	$s0, $a1, $a0
	addi.d	$a0, $fp, 8
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               # %if.end363
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.hu	$a0, $s6, 44
	andi	$a0, $a0, 256
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	addi.d	$a0, $s5, 8
.LBB1_48:                               # %for.cond285
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_49 Depth 3
                                        #       Child Loop BB1_58 Depth 3
	ld.d	$s5, $a0, 0
	move	$s6, $s5
	.p2align	4, , 16
.LBB1_49:                               # %for.cond289
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_49
# %bb.50:                               # %for.cond289
                                        #   in Loop: Header=BB1_48 Depth=2
	bne	$a0, $s7, .LBB1_52
# %bb.51:                               # %if.then306
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %if.end308
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.w	$a0, $s6, 52
	bnez	$a0, .LBB1_56
# %bb.53:                               # %land.lhs.true313
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.w	$a0, $s6, 48
	ld.w	$a1, $s6, 56
	add.w	$a0, $a1, $a0
	blt	$a0, $s0, .LBB1_55
# %bb.54:                               # %land.lhs.true313
                                        #   in Loop: Header=BB1_48 Depth=2
	bnez	$s4, .LBB1_56
.LBB1_55:                               # %if.then325
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$s3, $zero
	move	$s4, $s6
	move	$s0, $a0
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_56:                               # %if.end333
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.d	$s5, $s5, 8
	beq	$s5, $fp, .LBB1_61
# %bb.57:                               # %for.cond344.preheader
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$s6, $s5
	.p2align	4, , 16
.LBB1_58:                               # %for.cond344
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_58
# %bb.59:                               # %for.cond344
                                        #   in Loop: Header=BB1_48 Depth=2
	beq	$a0, $s7, .LBB1_47
# %bb.60:                               # %if.then361
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_61:                               # %for.end376
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.w	$a1, $s3, 0
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 104
	addi.d	$a5, $sp, 96
	addi.d	$a6, $sp, 148
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SetNeighbours)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	beqz	$a1, .LBB1_64
# %bb.62:                               # %cond.false
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $sp, 112
	ld.w	$a2, $a0, 52
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_66
# %bb.63:                               # %cond.true383
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $a0, 56
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_64:                               #   in Loop: Header=BB1_43 Depth=1
	move	$a7, $zero
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB1_68
.LBB1_65:                               #   in Loop: Header=BB1_43 Depth=1
	move	$a0, $zero
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_66:                               #   in Loop: Header=BB1_43 Depth=1
	move	$a0, $zero
.LBB1_67:                               # %cond.end
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$a2, $a1, 44
	ori	$a3, $zero, 151
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ExtraGap)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB1_65
.LBB1_68:                               # %cond.false395
                                        #   in Loop: Header=BB1_43 Depth=1
	move	$s6, $s5
	ld.d	$a1, $sp, 96
	ld.w	$a2, $a1, 52
	beqz	$a2, .LBB1_70
# %bb.69:                               # %cond.true400
                                        #   in Loop: Header=BB1_43 Depth=1
	move	$s5, $a7
	ld.w	$a1, $a1, 48
	b	.LBB1_71
	.p2align	4, , 16
.LBB1_70:                               #   in Loop: Header=BB1_43 Depth=1
	move	$s5, $a7
	move	$a1, $zero
.LBB1_71:                               # %cond.end405
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$a2, $a0, 44
	ori	$a3, $zero, 153
	move	$a0, $zero
	pcaddu18i	$ra, %call36(ExtraGap)
	jirl	$ra, $ra, 0
	move	$a7, $s5
	move	$s5, $s6
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
.LBB1_72:                               # %cond.end409
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a1, $s0, 4
	ld.w	$a2, $sp, 148
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	div.w	$a1, $a1, $a3
	ori	$a3, $zero, 153
	beq	$a2, $a3, .LBB1_77
# %bb.73:                               # %cond.end409
                                        #   in Loop: Header=BB1_43 Depth=1
	ori	$a3, $zero, 152
	beq	$a2, $a3, .LBB1_76
# %bb.74:                               # %cond.end409
                                        #   in Loop: Header=BB1_43 Depth=1
	ori	$a3, $zero, 151
	bne	$a2, $a3, .LBB1_80
# %bb.75:                               # %sw.bb
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a2, $s0, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.w	$a1, $a1, $s5
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	sub.w	$a1, $a1, $s5
	b	.LBB1_78
	.p2align	4, , 16
.LBB1_76:                               # %sw.bb464
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a2, $s0, 8
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.w	$a1, $a1, $s6
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	sub.w	$a1, $a1, $s6
	div.w	$a1, $a1, $a4
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a5, 0
	slt	$a2, $a2, $a1
	sub.w	$a3, $a1, $a5
	slti	$a3, $a3, 20
	masknez	$a4, $a1, $a2
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a5, $a3
	ld.w	$a5, $s4, 48
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	or	$a6, $a1, $a4
	add.w	$a1, $a5, $a7
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	slt	$a2, $a1, $a4
	maskeqz	$a3, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a3, $a2
	st.w	$a2, $sp, 132
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	add.w	$a0, $a6, $a0
	add.w	$a1, $a0, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 136
	b	.LBB1_79
	.p2align	4, , 16
.LBB1_77:                               # %sw.bb530
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a2, $s0, 8
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.w	$a1, $a1, $s6
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	sub.w	$a1, $a1, $s6
.LBB1_78:                               # %sw.epilog
                                        #   in Loop: Header=BB1_43 Depth=1
	div.w	$a1, $a1, $a4
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a5, 0
	slt	$a2, $a2, $a1
	sub.w	$a3, $a1, $a5
	slti	$a3, $a3, 20
	masknez	$a4, $a1, $a2
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a5, $a3
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $a2
	or	$a5, $a1, $a4
	add.w	$a1, $a5, $a7
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	slt	$a2, $a1, $a4
	maskeqz	$a3, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a3, $a2
	st.w	$a2, $sp, 132
	add.w	$a1, $a1, $a0
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 136
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	add.w	$a0, $a5, $a0
.LBB1_79:                               # %sw.epilog
                                        #   in Loop: Header=BB1_43 Depth=1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 140
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_80:                               # %sw.default
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_81:                               # %sw.epilog
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$a1, $sp, 132
	move	$a0, $s4
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 120
	move	$s4, $a0
	st.w	$s7, $a0, 52
	beqz	$a3, .LBB1_84
# %bb.82:                               # %if.then589
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $sp, 112
	ld.w	$a1, $a0, 52
	beqz	$a1, .LBB1_87
# %bb.83:                               # %cond.true594
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$s5, $a0, 56
	b	.LBB1_88
	.p2align	4, , 16
.LBB1_84:                               # %if.else612
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$s0, $s4, 48
	ld.d	$a1, $sp, 104
	bnez	$a1, .LBB1_89
.LBB1_85:                               # %if.else650
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $s4, 56
	ld.w	$a1, $sp, 148
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 153
	bne	$a1, $a2, .LBB1_93
.LBB1_86:                               # %sw.bb662
                                        #   in Loop: Header=BB1_43 Depth=1
	add.d	$a1, $s0, $s6
	add.w	$s6, $a1, $a0
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_87:                               #   in Loop: Header=BB1_43 Depth=1
	move	$s5, $zero
.LBB1_88:                               # %cond.end599
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a1, $s4, 48
	ld.w	$a2, $s4, 56
	addi.d	$a3, $a3, 44
	move	$a0, $s5
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	move	$s6, $a0
	addi.d	$a3, $a1, 44
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	sub.d	$s0, $s6, $a0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104
	beqz	$a1, .LBB1_85
.LBB1_89:                               # %if.then619
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a0, $sp, 96
	ld.w	$a2, $a0, 52
	beqz	$a2, .LBB1_91
# %bb.90:                               # %cond.true635
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$s5, $a0, 48
	ld.w	$s6, $a0, 56
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_91:                               #   in Loop: Header=BB1_43 Depth=1
	move	$s5, $zero
	move	$s6, $zero
.LBB1_92:                               # %cond.end640
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $s4, 56
	addi.d	$a3, $a1, 44
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104
	move	$s4, $a0
	addi.d	$a3, $a1, 44
	move	$a0, $zero
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s4, $a0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 148
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 153
	beq	$a1, $a2, .LBB1_86
.LBB1_93:                               # %if.end654
                                        #   in Loop: Header=BB1_43 Depth=1
	ori	$a2, $zero, 152
	beq	$a1, $a2, .LBB1_40
# %bb.94:                               # %if.end654
                                        #   in Loop: Header=BB1_43 Depth=1
	ori	$a2, $zero, 151
	bne	$a1, $a2, .LBB1_96
# %bb.95:                               # %sw.bb655
                                        #   in Loop: Header=BB1_43 Depth=1
	add.d	$a1, $s0, $s5
	add.w	$s5, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_96:                               # %sw.default666
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_42
.LBB1_97:                               # %while.end
	st.w	$s5, $fp, 48
	st.w	$s6, $fp, 56
	move	$a0, $fp
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
.Lfunc_end1:
	.size	BreakTable, .Lfunc_end1-BreakTable
                                        # -- End function
	.p2align	5                               # -- Begin function BreakJoinedGroup
	.type	BreakJoinedGroup,@function
BreakJoinedGroup:                       # @BreakJoinedGroup
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
	move	$s2, $a1
	ld.d	$a1, $a1, 8
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s3, $a0
	move	$a3, $zero
	beq	$a0, $a1, .LBB2_7
# %bb.1:                                # %for.cond3.preheader.preheader
	ori	$a4, $zero, 90
	move	$a5, $s3
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.inc37
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a5, $a5, 8
	beq	$a5, $a1, .LBB2_8
.LBB2_3:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	move	$a0, $a5
	.p2align	4, , 16
.LBB2_4:                                # %for.cond3
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a6, $a0, 32
	beqz	$a6, .LBB2_4
# %bb.5:                                # %for.end
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a6, $a6, -9
	bltu	$a4, $a6, .LBB2_2
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a6, $a0, 48
	slt	$a7, $a6, $a3
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	b	.LBB2_2
.LBB2_7:
                                        # implicit-def: $r4
.LBB2_8:                                # %for.end41
	ld.w	$a4, $s1, 0
	ld.w	$a5, $s1, 4
	slt	$a6, $a4, $a3
	masknez	$a3, $a3, $a6
	slt	$a6, $a4, $a5
	masknez	$a7, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	ld.w	$a6, $s1, 8
	st.w	$a4, $sp, 16
	st.w	$a5, $sp, 20
	sub.w	$a3, $a5, $a3
	slt	$a4, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	st.w	$a3, $sp, 24
	beqz	$a2, .LBB2_10
# %bb.9:                                # %if.then73
	addi.d	$a1, $sp, 16
	move	$s5, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s5
	ld.w	$s5, $s4, 56
	ld.w	$a1, $sp, 20
	ld.w	$a2, $sp, 16
	ld.w	$s6, $s4, 48
	sub.w	$a3, $a1, $s5
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	ld.w	$a4, $sp, 24
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 16
	sub.w	$a1, $a1, $s6
	slt	$a2, $a4, $a1
	masknez	$a3, $a1, $a2
	ld.d	$a1, $s2, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 24
	bne	$s3, $a1, .LBB2_11
	b	.LBB2_18
.LBB2_10:
	move	$s4, $zero
	move	$s6, $zero
	move	$s5, $zero
	beq	$s3, $a1, .LBB2_18
.LBB2_11:                               # %for.cond120.preheader.preheader
	addi.w	$s7, $zero, -91
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %for.inc200
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$s3, $s3, 8
	beq	$s3, $a1, .LBB2_18
.LBB2_13:                               # %for.cond120.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	move	$a0, $s3
	.p2align	4, , 16
.LBB2_14:                               # %for.cond120
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB2_14
# %bb.15:                               # %for.end131
                                        #   in Loop: Header=BB2_13 Depth=1
	beq	$a0, $s4, .LBB2_12
# %bb.16:                               # %for.end131
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.d	$a2, $a2, -100
	bltu	$a2, $s7, .LBB2_12
# %bb.17:                               # %if.end146
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s6
	ld.w	$a3, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
	or	$s6, $a2, $a1
	slt	$a1, $a3, $s5
	masknez	$a2, $a3, $a1
	ld.w	$a3, $sp, 20
	ld.w	$a4, $sp, 16
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a2
	sub.w	$a1, $a3, $s5
	slt	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	ld.w	$a4, $sp, 24
	or	$a1, $a2, $a1
	st.w	$a1, $sp, 16
	sub.w	$a1, $a3, $s6
	slt	$a2, $a4, $a1
	masknez	$a3, $a1, $a2
	ld.d	$a1, $s2, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 24
	b	.LBB2_12
.LBB2_18:                               # %for.end204
	ld.w	$a1, $s1, 0
	blt	$a1, $s6, .LBB2_21
# %bb.19:                               # %land.lhs.true208
	ld.w	$a1, $s1, 4
	add.w	$a2, $s5, $s6
	blt	$a1, $a2, .LBB2_21
# %bb.20:                               # %land.lhs.true212
	ld.w	$a1, $s1, 8
	bge	$a1, $s5, .LBB2_22
.LBB2_21:                               # %if.then216
	sltui	$a1, $s4, 1
	addi.d	$a2, $s4, 32
	sltui	$a3, $a0, 1
	addi.d	$a0, $a0, 32
	pcalau12i	$a4, %got_pc_hi20(no_fpos)
	ld.d	$a4, $a4, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a4, 0
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 13
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %if.end232
	st.w	$s6, $s0, 0
	st.w	$s5, $fp, 0
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
.Lfunc_end2:
	.size	BreakJoinedGroup, .Lfunc_end2-BreakJoinedGroup
                                        # -- End function
	.p2align	5                               # -- Begin function BreakVcat
	.type	BreakVcat,@function
BreakVcat:                              # @BreakVcat
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
	ld.d	$s3, $a0, 8
	bne	$s3, $a0, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	move	$s0, $a1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	ld.d	$s3, $fp, 8
.LBB3_2:                                # %if.end
	ld.w	$a0, $a1, 4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 8
	lu12i.w	$a2, 2047
	ori	$s2, $a2, 4095
	st.w	$s2, $sp, 48
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.w	$a0, $sp, 52
	st.w	$s2, $sp, 56
	beq	$s3, $fp, .LBB3_32
# %bb.3:                                # %for.cond12.preheader.outer.preheader
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ori	$a4, $zero, 1
	ori	$s5, $zero, 20
                                        # implicit-def: $r27
                                        # implicit-def: $r23
	ori	$a3, $zero, 1
                                        # implicit-def: $r24
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
.LBB3_4:                                # %for.cond12.preheader.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_9 Depth 3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s8, $sp, 68
	ld.w	$s7, $sp, 64
	move	$s6, $zero
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_5:                                # %if.then36
                                        #   in Loop: Header=BB3_8 Depth=2
	beqz	$s6, .LBB3_14
# %bb.6:                                # %if.end41
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.hu	$a0, $s2, 44
	andi	$a0, $a0, 512
	beqz	$a0, .LBB3_16
.LBB3_7:                                # %for.inc108
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$s3, $s3, 8
	beq	$s3, $fp, .LBB3_22
.LBB3_8:                                # %for.cond12.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
	move	$s2, $s3
	.p2align	4, , 16
.LBB3_9:                                # %for.cond12
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB3_9
# %bb.10:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.d	$a1, $a0, -119
	bltu	$a1, $s5, .LBB3_7
# %bb.11:                               # %if.end30
                                        #   in Loop: Header=BB3_8 Depth=2
	beq	$a0, $a4, .LBB3_5
# %bb.12:                               # %if.else
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.w	$s8, $s2, 48
	beqz	$s6, .LBB3_15
# %bb.13:                               # %if.else71
                                        #   in Loop: Header=BB3_8 Depth=2
	addi.w	$a0, $s0, 0
	slt	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	ld.w	$a3, $s2, 56
	maskeqz	$a0, $a0, $a1
	or	$s8, $a0, $a2
	addi.w	$a0, $s4, 0
	slt	$a1, $a3, $a0
	ld.w	$a2, $s1, 56
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$s7, $a0, $a1
	slt	$a0, $a2, $a3
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s1, $a0, $a1
	move	$s4, $s7
	move	$s0, $s8
	b	.LBB3_7
.LBB3_14:                               # %if.then39
                                        #   in Loop: Header=BB3_8 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 1
	ld.hu	$a0, $s2, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB3_7
	b	.LBB3_16
.LBB3_15:                               # %if.then67
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.w	$s7, $s2, 56
	move	$s4, $s7
	move	$s0, $s8
	move	$s6, $s3
	move	$s1, $s2
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_16:                               # %if.then42
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$s8, $sp, 68
	addi.w	$a0, $s0, 0
	st.w	$s7, $sp, 64
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	bge	$s2, $a0, .LBB3_18
.LBB3_17:                               # %if.then54
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 68
	addi.d	$a5, $sp, 64
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(BreakJoinedGroup)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 1
	ld.w	$s0, $sp, 68
	ld.w	$s4, $sp, 64
	b	.LBB3_20
.LBB3_18:                               # %land.lhs.true46
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $s4, 0
	blt	$s2, $a0, .LBB3_17
# %bb.19:                               # %land.lhs.true46
                                        #   in Loop: Header=BB3_4 Depth=1
	add.w	$a0, $s4, $s0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_17
.LBB3_20:                               # %for.inc108.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	add.w	$a0, $s4, $s0
	ld.d	$s3, $s3, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bne	$s3, $fp, .LBB3_4
# %bb.21:                               # %if.then115.thread115
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	b	.LBB3_26
.LBB3_22:                               # %for.end112
	st.w	$s8, $sp, 68
	st.w	$s7, $sp, 64
	beqz	$s6, .LBB3_25
# %bb.23:                               # %if.end117
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_26
.LBB3_24:                               # %if.else157
	ld.d	$a1, $fp, 0
	addi.d	$a4, $sp, 68
	addi.d	$a5, $sp, 64
	move	$a0, $s6
	move	$a2, $s1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(BreakJoinedGroup)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ld.w	$a0, $sp, 64
	st.w	$a1, $fp, 48
	b	.LBB3_31
.LBB3_25:                               # %if.then115
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$s6, $zero
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_24
.LBB3_26:                               # %if.then119
	addi.w	$a0, $s0, 0
	bge	$s2, $a0, .LBB3_28
.LBB3_27:                               # %if.then132
	ld.d	$a1, $fp, 0
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 68
	addi.d	$a5, $sp, 64
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(BreakJoinedGroup)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 68
	ld.w	$a1, $sp, 64
	add.w	$a0, $a1, $a0
	b	.LBB3_30
.LBB3_28:                               # %land.lhs.true123
	addi.w	$a0, $s4, 0
	blt	$s2, $a0, .LBB3_27
# %bb.29:                               # %land.lhs.true123
	add.w	$a0, $s4, $s0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_27
.LBB3_30:                               # %if.end136
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.w	$zero, $fp, 48
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB3_31:                               # %if.end167
	st.w	$a0, $fp, 56
	move	$a0, $fp
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
.LBB3_32:                               # %if.then115.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	BreakVcat, .Lfunc_end3-BreakVcat
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"replacing with empty object: negative size constraint %s,%s,%s"
	.size	.L.str, 63

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.space	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s object scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.2, 56

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"@Rotate"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s deleted (too wide; cannot break %s)"
	.size	.L.str.4, 39

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"word %s scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.6, 54

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"word %s deleted (too wide)"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s scaled horizontally by factor %.2f (too wide)"
	.size	.L.str.8, 49

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"@IncludeGraphic"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.10, 19

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s deleted (too wide)"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"assert failed in %s"
	.size	.L.str.12, 20

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"BreakObject: downs!"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"column mark of unbroken paragraph moved left"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"column mark of paragraph moved left before breaking"
	.size	.L.str.15, 52

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"assert failed in %s %s"
	.size	.L.str.16, 23

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"BreakObject:"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"BreakObject: back(x, COLM) < 0!"
	.size	.L.str.18, 32

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"BreakObject: fwd(x, COLM) < 0!"
	.size	.L.str.19, 31

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"BreakTable: GAP_OBJ!"
	.size	.L.str.20, 21

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"BreakTable: index!"
	.size	.L.str.21, 19

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"BreakTable: GAP_OBJ is last!"
	.size	.L.str.22, 29

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"reducing column gaps to 0i (object is too wide)"
	.size	.L.str.23, 48

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"BreakTable: type(y) == GAP_OBJ!"
	.size	.L.str.24, 32

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"BreakTable: type(g) != GAP_OBJ!"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"BreakTable: mside"
	.size	.L.str.26, 18

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"failed to break column to fit into its available space"
	.size	.L.str.27, 55

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"BreakVcat: Down(x) == x!"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"BreakVcat: start_group == nilobj!"
	.size	.L.str.29, 34

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"BreakVcat: start_group == nilobj (2)!"
	.size	.L.str.30, 38

	.section	".note.GNU-stack","",@progbits
	.addrsig
