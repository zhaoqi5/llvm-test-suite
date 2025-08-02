	.file	"lame.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_init_params
.LCPI0_0:
	.dword	0x408f400000000000              # double 1000
.LCPI0_1:
	.dword	0x402a000010000000              # double 13.000000476837158
.LCPI0_2:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI0_3:
	.dword	0x4026000010000000              # double 11.000000476837158
.LCPI0_4:
	.dword	0x401199999999999a              # double 4.4000000000000004
.LCPI0_5:
	.dword	0x4021fffff0000000              # double 8.9999995231628418
.LCPI0_6:
	.dword	0x3fb0000000000000              # double 0.0625
.LCPI0_7:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI0_8:
	.dword	0x3ff921fb54442d18              # double 1.5707963267948966
.LCPI0_9:
	.dword	0x3f964bf964bf964c              # double 0.021774193548387097
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_10:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI0_11:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_12:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	lame_init_params
	.p2align	5
	.type	lame_init_params,@function
lame_init_params:                       # @lame_init_params
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a0, $a0, %pc_lo12(l3_side)
	ori	$a2, $zero, 528
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 168
	pcaddu18i	$ra, %call36(InitFormatBitStream)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB0_2
# %bb.1:                                # %if.end.thread
	move	$a0, $zero
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 36
	b	.LBB0_3
.LBB0_2:                                # %if.end
	ld.w	$a0, $fp, 36
	addi.d	$a0, $a0, -3
	sltu	$a0, $zero, $a0
	addi.d	$a6, $a0, 1
.LBB0_3:
	ld.w	$a2, $fp, 16
	st.w	$a6, $fp, 204
	lu12i.w	$a4, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	beqz	$a2, .LBB0_8
# %bb.4:                                # %if.end.if.end98_crit_edge
	ld.w	$a3, $fp, 48
.LBB0_5:                                # %if.end98
	ori	$a4, $a4, 3520
	slt	$a5, $a4, $a2
	addi.d	$a4, $a5, 1
	st.w	$a4, $fp, 200
	ori	$a4, $zero, 800
	st.w	$a4, $fp, 184
	ori	$a4, $zero, 576
	sll.w	$a4, $a4, $a5
	st.w	$a4, $fp, 188
	beqz	$a3, .LBB0_10
# %bb.6:                                # %if.end115
	ld.w	$a5, $fp, 12
	lu12i.w	$a6, 260096
	st.w	$a6, $fp, 216
	bne	$a2, $a5, .LBB0_11
.LBB0_7:
	vldi	$vr0, -1168
	b	.LBB0_12
.LBB0_8:                                # %if.then7
	ld.w	$a2, $fp, 12
	lu12i.w	$a5, 11
	ori	$a3, $a5, 2943
	bge	$a3, $a2, .LBB0_44
# %bb.9:
	ori	$a2, $a5, 2944
	b	.LBB0_101
.LBB0_10:                               # %if.then107
	ori	$a3, $zero, 64
	masknez	$a3, $a3, $a5
	ori	$a6, $zero, 128
	maskeqz	$a5, $a6, $a5
	or	$a3, $a5, $a3
	st.w	$a3, $fp, 48
	ld.w	$a5, $fp, 12
	lu12i.w	$a6, 260096
	st.w	$a6, $fp, 216
	beq	$a2, $a5, .LBB0_7
.LBB0_11:                               # %if.then120
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 216
.LBB0_12:                               # %if.end127
	ld.d	$a5, $fp, 0
	srli.d	$a6, $a5, 1
	andi	$a7, $a5, 1
	or	$a6, $a7, $a6
	movgr2fr.d	$fa1, $a6
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa1, $fa1, $fa1
	slti	$a6, $a5, 0
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa2, $fa2
	movgr2cf	$fcc0, $a6
	fsel	$fa1, $fa2, $fa1, $fcc0
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	fdiv.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1280
	fadd.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	ori	$a4, $zero, 319
	fst.d	$fa0, $fp, 176
	bge	$a4, $a3, .LBB0_14
# %bb.13:                               # %if.then139
	move	$a4, $zero
	st.w	$zero, $fp, 88
	b	.LBB0_15
.LBB0_14:                               # %if.end127.if.end141_crit_edge
	ld.w	$a4, $fp, 88
	sltu	$a4, $zero, $a4
.LBB0_15:                               # %if.end141
	slli.d	$a2, $a2, 4
	sll.w	$a2, $a2, $a0
	movgr2fr.w	$fa0, $a2
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	beqz	$a4, .LBB0_18
# %bb.16:                               # %if.end141
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_18
# %bb.17:                               # %if.then157
	ld.w	$a1, $fp, 92
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_4)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa1, $fa0
.LBB0_18:                               # %if.end161
	ld.w	$a1, $fp, 40
	sltu	$a1, $zero, $a1
	xori	$a0, $a0, 1
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_21
# %bb.19:                               # %if.end161
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_5)
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_21
# %bb.20:                               # %if.then170
	st.w	$zero, $fp, 36
.LBB0_21:                               # %if.end173
	ld.w	$a0, $fp, 104
	bnez	$a0, .LBB0_24
# %bb.22:                               # %if.then176
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_6)
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -979
	vldi	$vr2, -846
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ori	$a1, $zero, 30
	blt	$a1, $a0, .LBB0_24
# %bb.23:                               # %if.then184
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -961
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 232
	fst.s	$fa0, $fp, 236
.LBB0_24:                               # %if.end192
	ld.w	$a1, $fp, 108
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_28
# %bb.25:                               # %if.then195
	slli.d	$a2, $a1, 1
	bstrpick.d	$a2, $a2, 31, 1
	ld.w	$a3, $fp, 16
	slli.d	$a2, $a2, 1
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $fp, 116
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fmov.s	$fa2, $fa0
	bltz	$a2, .LBB0_27
# %bb.26:                               # %if.then205
	add.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa1
.LBB0_27:                               # %if.end224
	vldi	$vr1, -1168
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa0, $fp, 240
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa0, $fa2, $fa1, $fcc0
	fst.s	$fa0, $fp, 244
.LBB0_28:                               # %if.end240
	ld.w	$a1, $fp, 104
	blt	$a1, $a0, .LBB0_34
# %bb.29:                               # %if.then244
	slli.d	$a0, $a1, 1
	bstrpick.d	$a0, $a0, 31, 1
	ld.w	$a2, $fp, 16
	slli.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ld.w	$a0, $fp, 112
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fmov.s	$fa2, $fa0
	bltz	$a0, .LBB0_33
# %bb.30:                               # %if.then255
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_7)
	ffint.d.w	$fa2, $fa2
	fadd.d	$fa2, $fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB0_32
# %bb.31:                               # %if.then268
	movgr2fr.w	$fa2, $zero
	b	.LBB0_33
.LBB0_32:
	fcvt.s.d	$fa2, $fa1
.LBB0_33:                               # %if.end280
	vldi	$vr1, -1168
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa2, $fa2, $fa1, $fcc0
	fst.s	$fa2, $fp, 232
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa0, $fp, 236
.LBB0_34:                               # %if.end299
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB0_59
# %bb.35:                               # %if.then302
	fld.s	$fa0, $fp, 232
	movgr2fr.w	$fs0, $zero
	fcmp.cule.s	$fcc0, $fa0, $fs0
	pcalau12i	$s0, %pc_hi20(.LCPI0_8)
	bcnez	$fcc0, .LBB0_47
# %bb.36:                               # %for.cond.preheader
	fld.s	$fa1, $fp, 236
	move	$s1, $zero
	fcvt.d.s	$fs1, $fa1
	fcvt.d.s	$fs2, $fa0
	fsub.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fs3, $fa0
	movgr2fr.d	$fs4, $zero
	ori	$s2, $zero, 999
	fld.d	$fs5, $s0, %pc_lo12(.LCPI0_8)
	vldi	$vr2, -961
	vldi	$vr3, -912
	ori	$s3, $zero, 32
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %for.inc
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.w	$s1, $s1, 1
	fadd.d	$fs4, $fs4, $fa3
	beq	$s1, $s3, .LBB0_46
.LBB0_38:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fdiv.d	$fa0, $fs4, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB0_40
# %bb.39:                               # %if.then316
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $fp, 248
	slt	$a1, $a0, $s1
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 248
.LBB0_40:                               # %if.end325
                                        #   in Loop: Header=BB0_38 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_37
# %bb.41:                               # %if.end325
                                        #   in Loop: Header=BB0_38 Depth=1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_37
# %bb.42:                               # %if.then335
                                        #   in Loop: Header=BB0_38 Depth=1
	slt	$a0, $s2, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	fsub.d	$fa0, $fs2, $fa0
	fmul.d	$fa0, $fa0, $fs5
	fdiv.d	$fa0, $fa0, $fs3
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	or	$s2, $a0, $a1
	beqz	$a2, .LBB0_37
# %bb.43:                               # %cdce.call
                                        #   in Loop: Header=BB0_38 Depth=1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	vldi	$vr2, -961
	b	.LBB0_37
.LBB0_44:                               # %if.else
	lu12i.w	$a3, 10
	ori	$a7, $a3, 3139
	bge	$a7, $a2, .LBB0_96
# %bb.45:
	ori	$a2, $a3, 3140
	b	.LBB0_101
.LBB0_46:                               # %for.end
	ld.w	$a0, $fp, 248
	addi.d	$a1, $s2, -999
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -792
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -961
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 232
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 236
.LBB0_47:                               # %if.end380
	fld.s	$fa0, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_49
# %bb.48:                               # %if.end380
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_9)
	fcvt.d.s	$fa2, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB0_111
.LBB0_49:                               # %if.end394
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_59
.LBB0_50:                               # %for.cond399.preheader
	fld.s	$fa1, $fp, 240
	move	$s1, $zero
	fcvt.d.s	$fs0, $fa1
	fcvt.d.s	$fs1, $fa0
	fsub.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fs2, $fa0
	movgr2fr.d	$fs3, $zero
	addi.w	$s2, $zero, -1
	fld.d	$fs4, $s0, %pc_lo12(.LCPI0_8)
	vldi	$vr2, -961
	vldi	$vr3, -912
	ori	$s0, $zero, 32
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_51:                               # %for.inc452
                                        #   in Loop: Header=BB0_52 Depth=1
	addi.w	$s1, $s1, 1
	fadd.d	$fs3, $fs3, $fa3
	beq	$s1, $s0, .LBB0_58
.LBB0_52:                               # %for.body402
                                        # =>This Inner Loop Header: Depth=1
	fdiv.d	$fa0, $fs3, $fa2
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_54
# %bb.53:                               # %if.then409
                                        #   in Loop: Header=BB0_52 Depth=1
	ld.w	$a0, $fp, 252
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 252
.LBB0_54:                               # %if.end418
                                        #   in Loop: Header=BB0_52 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_51
# %bb.55:                               # %if.end418
                                        #   in Loop: Header=BB0_52 Depth=1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.56:                               # %if.then428
                                        #   in Loop: Header=BB0_52 Depth=1
	slt	$a0, $s1, $s2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	fsub.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fs4
	fdiv.d	$fa0, $fa0, $fs2
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a2, $fa1
	andi	$a2, $a2, 68
	sltu	$a2, $zero, $a2
	andi	$a2, $a2, 1
	or	$s2, $a0, $a1
	beqz	$a2, .LBB0_51
# %bb.57:                               # %cdce.call342
                                        #   in Loop: Header=BB0_52 Depth=1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	vldi	$vr2, -961
	b	.LBB0_51
.LBB0_58:                               # %for.end454
	ld.w	$a0, $fp, 252
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -961
	fdiv.d	$fa2, $fa0, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $fp, 240
	addi.d	$a0, $s2, 1
	sltui	$a0, $a0, 1
	movgr2fr.w	$fa2, $s2
	ffint.d.w	$fa2, $fa2
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa2, $fa0, $fcc0
	vldi	$vr2, -920
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $fp, 244
.LBB0_59:                               # %if.end477
	ld.w	$a0, $fp, 36
	st.w	$zero, $fp, 228
	addi.d	$a0, $a0, -3
	sltui	$a1, $a0, 1
	ori	$a2, $zero, 2
	ld.w	$a0, $fp, 16
	sub.d	$a1, $a2, $a1
	st.w	$a1, $fp, 204
	addi.d	$a1, $fp, 192
	pcaddu18i	$ra, %call36(SmpFrqIndex)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
	st.w	$a0, $fp, 224
	bge	$s1, $a0, .LBB0_112
# %bb.60:                               # %if.end495
	ld.w	$a0, $fp, 48
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 220
	bge	$s1, $a0, .LBB0_112
# %bb.61:                               # %if.end503
	ld.w	$a0, $fp, 88
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_68
# %bb.62:                               # %if.then506
	ld.w	$a0, $fp, 100
	beqz	$a0, .LBB0_82
# %bb.63:                               # %if.else533
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 212
	bltz	$a0, .LBB0_112
# %bb.64:                               # %if.else533.if.end543_crit_edge
	ld.w	$a0, $fp, 96
	beqz	$a0, .LBB0_83
.LBB0_65:                               # %if.else548
	ld.w	$a1, $fp, 192
	ld.w	$a2, $fp, 16
	pcaddu18i	$ra, %call36(BitrateIndex)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 208
	bge	$s1, $a0, .LBB0_112
# %bb.66:                               # %if.end559
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB0_68
.LBB0_67:                               # %if.then562
	ld.w	$a0, $fp, 28
	move	$s0, $zero
	slti	$a1, $a0, 2
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 28
.LBB0_68:                               # %if.end571
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_71
# %bb.69:                               # %if.end576
	bnez	$s0, .LBB0_72
.LBB0_70:                               # %if.end581
	ld.d	$a0, $fp, 136
	bnez	$a0, .LBB0_73
	b	.LBB0_75
.LBB0_71:                               # %if.then575
	st.w	$zero, $fp, 44
	beqz	$s0, .LBB0_70
.LBB0_72:                               # %if.then580
	st.w	$zero, $fp, 24
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB0_75
.LBB0_73:                               # %land.lhs.true584
	ld.bu	$a2, $a0, 0
	ori	$a1, $zero, 45
	bne	$a2, $a1, .LBB0_76
# %bb.74:                               # %lor.lhs.false
	st.w	$zero, $fp, 24
	ld.bu	$a0, $a0, 0
	bne	$a0, $a1, .LBB0_76
.LBB0_75:                               # %if.then600
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$a0, $a0, %got_pc_lo12(id3tag)
	st.w	$zero, $a0, 0
.LBB0_76:                               # %if.end601
	ld.w	$a0, $fp, 20
	beqz	$a0, .LBB0_78
# %bb.77:                               # %if.then603
	st.w	$zero, $fp, 24
.LBB0_78:                               # %if.end605
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	pcaddu18i	$ra, %call36(init_bit_stream_w)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB0_93
# %bb.79:                               # %if.end605
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_80:                               # %if.end668.thread.sink.split
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 28
.LBB0_81:                               # %if.end668.thread
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_11)
	b	.LBB0_88
.LBB0_82:                               # %if.then509
	ld.w	$a0, $fp, 96
	ld.w	$a1, $fp, 92
	ori	$a2, $zero, 255
	slt	$a2, $a2, $a0
	sltui	$a3, $a1, 1
	or	$a2, $a3, $a2
	addi.d	$a2, $a2, 13
	ori	$a3, $zero, 3
	slt	$a3, $a3, $a1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 12
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 7
	slt	$a1, $a3, $a1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 9
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $fp, 212
	bnez	$a0, .LBB0_65
.LBB0_83:                               # %if.then547
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 208
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB0_67
	b	.LBB0_68
.LBB0_84:                               # %if.end617.thread370
	addi.d	$a0, $fp, 256
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	b	.LBB0_93
.LBB0_85:                               # %if.end617.thread
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 28
.LBB0_86:                               # %if.end628.thread
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 272
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB0_92
.LBB0_87:                               # %if.then672
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_10)
.LBB0_88:                               # %for.body694.preheader
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	b	.LBB0_91
.LBB0_89:                               # %if.end634.thread
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 28
.LBB0_90:                               # %if.end645.thread
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_12)
	ori	$a0, $zero, 1
.LBB0_91:                               # %for.body694.preheader
	st.d	$a0, $fp, 272
.LBB0_92:                               # %for.body694.preheader
	vst	$vr0, $fp, 256
.LBB0_93:                               # %for.body694.preheader
	ld.w	$a0, $fp, 192
	ld.w	$a3, $fp, 224
	pcalau12i	$a1, %got_pc_hi20(sfBandIndex)
	ld.d	$a1, $a1, %got_pc_lo12(sfBandIndex)
	alsl.d	$a2, $a0, $a0, 1
	add.w	$a2, $a2, $a3
	ori	$a4, $zero, 148
	mul.d	$a2, $a2, $a4
	xvldx	$xr0, $a1, $a2
	pcalau12i	$a4, %got_pc_hi20(scalefac_band)
	ld.d	$a4, $a4, %got_pc_lo12(scalefac_band)
	add.d	$a1, $a1, $a2
	xvld	$xr1, $a1, 32
	xvst	$xr0, $a4, 0
	xvst	$xr1, $a4, 32
	xvld	$xr0, $a1, 64
	xvld	$xr1, $a1, 96
	vld	$vr2, $a1, 128
	ld.w	$a1, $a1, 144
	xvst	$xr0, $a4, 64
	xvst	$xr1, $a4, 96
	vst	$vr2, $a4, 128
	st.w	$a1, $a4, 144
	ld.w	$a1, $fp, 24
	beqz	$a1, .LBB0_95
# %bb.94:                               # %if.then726
	ori	$a1, $zero, 1
	ld.w	$a2, $fp, 36
	sub.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(InitVbrTag)
	jr	$t8
.LBB0_95:                               # %if.end732
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_96:                               # %if.else17
	lu12i.w	$a3, 7
	ori	$a7, $a3, 3327
	bge	$a7, $a2, .LBB0_98
# %bb.97:
	ori	$a2, $a3, 3328
	b	.LBB0_101
.LBB0_98:                               # %if.else22
	ori	$a3, $a4, 3519
	bge	$a3, $a2, .LBB0_100
# %bb.99:
	ori	$a2, $a4, 3520
	b	.LBB0_101
.LBB0_100:                              # %if.else27
	ori	$a3, $a4, 1570
	slt	$a2, $a2, $a3
	masknez	$a3, $a3, $a2
	lu12i.w	$a7, 3
	ori	$a7, $a7, 3712
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a3
.LBB0_101:                              # %if.end38
	ld.w	$a3, $fp, 48
	ori	$a7, $zero, 1
	st.w	$a2, $fp, 16
	blt	$a3, $a7, .LBB0_5
# %bb.102:                              # %if.then40
	ld.w	$a7, $fp, 88
	bnez	$a7, .LBB0_5
# %bb.103:                              # %if.then40
	slli.d	$a7, $a2, 4
	sll.w	$a7, $a7, $a0
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa1, $fa0
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa0, $a7
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	fld.d	$fa3, $a7, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB0_5
# %bb.104:                              # %if.then50
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	slli.d	$a2, $a6, 4
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3712
	bge	$a2, $a6, .LBB0_110
# %bb.105:                              # %if.else65
	ori	$a2, $a4, 1570
	bgeu	$a2, $a6, .LBB0_110
# %bb.106:                              # %if.else71
	ori	$a2, $a4, 3520
	bgeu	$a2, $a6, .LBB0_110
# %bb.107:                              # %if.else77
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	bgeu	$a2, $a6, .LBB0_110
# %bb.108:                              # %if.else83
	lu12i.w	$a2, 10
	ori	$a2, $a2, 3140
	bgeu	$a2, $a6, .LBB0_110
# %bb.109:                              # %if.else89
	ori	$a2, $a5, 2944
.LBB0_110:                              # %if.end98
	st.w	$a2, $fp, 16
	b	.LBB0_5
.LBB0_111:                              # %if.then389
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	st.d	$zero, $fp, 240
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 244
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_50
	b	.LBB0_59
.LBB0_112:                              # %if.then494
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(display_bitrates)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_113:                              # %if.then683
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $fp, 256
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 272
	ori	$a0, $zero, 3
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 264
	addi.w	$a0, $zero, -99
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	lame_init_params, .Lfunc_end0-lame_init_params
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_113-.LJTI0_0
	.word	.LBB0_87-.LJTI0_0
	.word	.LBB0_81-.LJTI0_0
	.word	.LBB0_80-.LJTI0_0
	.word	.LBB0_80-.LJTI0_0
	.word	.LBB0_90-.LJTI0_0
	.word	.LBB0_89-.LJTI0_0
	.word	.LBB0_86-.LJTI0_0
	.word	.LBB0_85-.LJTI0_0
	.word	.LBB0_84-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_print_config
.LCPI1_0:
	.dword	0x408f400000000000              # double 1000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_1:
	.word	0x43fa0000                      # float 500
	.text
	.globl	lame_print_config
	.p2align	5
	.type	lame_print_config,@function
lame_print_config:                      # @lame_print_config
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s3, $a0, %got_pc_lo12(stderr)
	fld.s	$fs2, $fp, 216
	ld.w	$s5, $fp, 204
	ld.w	$s4, $fp, 48
	ld.d	$a0, $s3, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa0, $fs0
	pcaddu18i	$ra, %call36(lame_print_version)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_3
# %bb.1:                                # %land.lhs.true
	ld.w	$a0, $fp, 204
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_3
# %bb.2:                                # %if.then
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %if.end
	fld.s	$fa0, $fp, 216
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	fcvt.s.d	$fs1, $fs1
	bcnez	$fcc0, .LBB1_5
# %bb.4:                                # %if.then15
	fmul.s	$fa0, $fs2, $fs1
	ld.d	$a0, $s3, 0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ftintrz.w.s	$fa0, $fs1
	movfr2gr.s	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %if.end19
	fld.s	$fa0, $fp, 244
	movgr2fr.w	$fs2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fs2
	pcalau12i	$s0, %pc_hi20(.LCPI1_1)
	bceqz	$fcc0, .LBB1_11
# %bb.6:                                # %if.end32
	fld.s	$fa0, $fp, 232
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bceqz	$fcc0, .LBB1_12
.LBB1_7:                                # %if.end45
	ld.w	$a0, $fp, 20
	ld.d	$s0, $s3, 0
	ld.d	$s1, $fp, 128
	bnez	$a0, .LBB1_13
.LBB1_8:                                # %if.else
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB1_14
# %bb.9:                                # %if.else.tail
	ld.bu	$a0, $s1, 1
	bnez	$a0, .LBB1_14
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	ld.d	$s2, $fp, 136
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_15
	b	.LBB1_17
.LBB1_11:                               # %if.then23
	fld.s	$fa1, $fp, 240
	fld.s	$fa2, $s0, %pc_lo12(.LCPI1_1)
	ld.d	$a0, $s3, 0
	fmul.s	$fa1, $fa1, $fs1
	fmul.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa0, $fa0, $fa2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 232
	fcmp.cule.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB1_7
.LBB1_12:                               # %if.then36
	fld.s	$fa1, $s0, %pc_lo12(.LCPI1_1)
	ld.d	$a0, $s3, 0
	fld.s	$fa2, $fp, 236
	fmul.s	$fa0, $fa0, $fs1
	fmul.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	fmul.s	$fa2, $fa2, $fs1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	ld.d	$s0, $s3, 0
	ld.d	$s1, $fp, 128
	beqz	$a0, .LBB1_8
.LBB1_13:                               # %if.then46
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_14:                               # %cond.true
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	ld.d	$s2, $fp, 136
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB1_17
.LBB1_15:                               # %cond.end.tail
	ld.bu	$a0, $s2, 1
	bnez	$a0, .LBB1_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a3, $a0, %pc_lo12(.L.str.13)
	b	.LBB1_18
.LBB1_17:                               # %cond.true55
	ori	$a1, $zero, 47
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a0
.LBB1_18:                               # %cond.end59
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 88
	ld.d	$a0, $s3, 0
	ld.w	$a7, $fp, 28
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	bnez	$a2, .LBB1_20
# %bb.19:                               # %if.else68
	slli.d	$a1, $s5, 4
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s4
	fmul.s	$fa1, $fs1, $fa1
	ld.w	$a1, $fp, 36
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	ld.w	$a3, $fp, 48
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(lame_print_config.mode_names)
	ld.w	$a5, $fp, 192
	addi.d	$a2, $a2, %pc_lo12(lame_print_config.mode_names)
	ldx.d	$a4, $a2, $a1
	ori	$a1, $zero, 2
	sub.w	$a5, $a1, $a5
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a6, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_20:                               # %if.then63
	ld.w	$a1, $fp, 36
	ld.w	$a3, $fp, 92
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(lame_print_config.mode_names)
	addi.d	$a2, $a2, %pc_lo12(lame_print_config.mode_names)
	ld.w	$a5, $fp, 192
	ldx.d	$a4, $a2, $a1
	ori	$a1, $zero, 2
	sub.w	$a5, $a1, $a5
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a6, $a7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_21:                               # %if.end82
	ld.d	$a0, $s3, 0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end1:
	.size	lame_print_config, .Lfunc_end1-lame_print_config
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lame_encode_frame
.LCPI2_0:
	.dword	0x408f400000000000              # double 1000
.LCPI2_1:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI2_2:
	.dword	0x3fd6666666666666              # double 0.34999999999999998
	.text
	.globl	lame_encode_frame
	.p2align	5
	.type	lame_encode_frame,@function
lame_encode_frame:                      # @lame_encode_frame
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a3, 8
	ori	$a3, $a3, 1936
	sub.d	$sp, $sp, $a3
	move	$s1, $a5
	move	$s3, $a4
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 112
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3904
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1184
	ori	$a2, $zero, 3904
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 208
	ori	$a2, $zero, 976
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 168
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 192
	st.d	$s0, $sp, 200
	st.w	$zero, $fp, 228
	pcalau12i	$s5, %pc_hi20(lame_encode_frame.sentBits)
	beqz	$a1, .LBB2_6
# %bb.1:                                # %if.end16
	ld.w	$a0, $fp, 64
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB2_7
.LBB2_2:                                # %if.end16
	beqz	$a0, .LBB2_5
# %bb.3:                                # %sw.default
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB2_5
# %bb.4:                                # %if.else
	ld.w	$a0, $fp, 72
	beqz	$a0, .LBB2_72
.LBB2_5:                                # %if.then24
	st.w	$zero, $fp, 196
	b	.LBB2_8
.LBB2_6:                                # %if.then
	ld.w	$a0, $fp, 16
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	ld.w	$a0, $fp, 48
	ld.w	$a2, $fp, 188
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	st.d	$zero, $s5, %pc_lo12(lame_encode_frame.sentBits)
	mul.d	$a0, $a2, $a0
	vldi	$vr1, -992
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI2_1)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fadd.d	$fa2, $fa0, $fa1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fsub.d	$fa0, $fa0, $fa2
	fabs.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	movgr2fr.d	$fa1, $zero
	fsel	$fa0, $fa0, $fa1, $fcc0
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.frac_SpF)
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.frac_SpF)
	fneg.d	$fa2, $fa0
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.slot_lag)
	fcmp.cune.d	$fcc0, $fa0, $fa1
	fst.d	$fa2, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	movcf2gr	$a0, $fcc0
	st.w	$a0, $fp, 196
	ld.w	$a0, $fp, 64
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_2
.LBB2_7:                                # %sw.bb18
	st.w	$a2, $fp, 196
.LBB2_8:                                # %sw.epilog
	ld.w	$a0, $fp, 20
	bnez	$a0, .LBB2_11
# %bb.9:                                # %land.lhs.true
	ld.w	$a0, $fp, 32
	bnez	$a0, .LBB2_11
# %bb.10:                               # %if.then46
	ld.w	$a0, $fp, 192
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 50
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 200
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	mod.d	$a0, $a1, $a0
	beqz	$a0, .LBB2_43
.LBB2_11:                               # %if.end58
	ld.w	$a0, $fp, 272
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_44
.LBB2_12:                               # %if.then60
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 200
	pcalau12i	$a1, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$s6, $a1, %pc_lo12(lame_encode_frame.ms_ratio)
	alsl.d	$a1, $a0, $s6, 3
	fld.d	$fs0, $a1, -8
	ori	$s7, $zero, 1
	blt	$a0, $s7, .LBB2_31
# %bb.13:                               # %for.cond66.preheader.lr.ph
	move	$s4, $zero
	ld.wu	$a1, $fp, 204
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a0, $a0, %pc_lo12(l3_side)
	addi.d	$s0, $a0, 552
	addi.d	$s1, $a0, 72
	ori	$s3, $zero, 8
	ori	$a0, $zero, 608
	xvreplgr2vr.d	$xr3, $a0
	addi.d	$s2, $sp, 160
	addi.d	$s5, $sp, 128
	lu12i.w	$a0, 2
	ori	$a0, $a0, 800
	add.d	$s8, $sp, $a0
	xvst	$xr3, $sp, 80                   # 32-byte Folded Spill
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.inc108
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.w	$a0, $fp, 200
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 240
	addi.d	$s1, $s1, 240
	bge	$s4, $a0, .LBB2_31
.LBB2_15:                               # %for.cond66.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_22 Depth 2
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_30 Depth 2
	addi.w	$a0, $a1, 0
	blt	$a0, $s7, .LBB2_23
# %bb.16:                               # %for.body69.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a0, $s4, $s4, 3
	slli.d	$a0, $a0, 7
	bgeu	$a1, $s3, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=1
	move	$a2, $zero
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_18:                               # %vector.ph156
                                        #   in Loop: Header=BB2_15 Depth=1
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	xvreplgr2vr.d	$xr0, $a0
	addi.d	$a3, $sp, 224
	lu12i.w	$a4, 4
	ori	$a4, $a4, 1856
	add.d	$a4, $sp, $a4
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_19:                               # %vector.body159
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvadd.d	$xr1, $xr1, $xr3
	xvadd.d	$xr2, $xr2, $xr3
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	addi.d	$a3, $a3, 64
	bnez	$a5, .LBB2_19
# %bb.20:                               # %middle.block164
                                        #   in Loop: Header=BB2_15 Depth=1
	beq	$a2, $a1, .LBB2_23
.LBB2_21:                               # %for.body69.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	lu12i.w	$a3, 4
	ori	$a3, $a3, 1824
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a2, $a3, 3
	addi.d	$a4, $sp, 192
	alsl.d	$a4, $a2, $a4, 3
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB2_22:                               # %for.body69
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a4, 0
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 608
	st.d	$a2, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB2_22
.LBB2_23:                               # %for.end
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a3, $s4, $s6, 3
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ener_ratio)
	addi.d	$a0, $a0, %pc_lo12(lame_encode_frame.ms_ener_ratio)
	alsl.d	$a5, $s4, $a0, 3
	alsl.d	$a0, $s4, $s2, 4
	alsl.d	$a1, $s4, $s5, 4
	st.d	$s8, $sp, 16
	st.d	$a1, $sp, 8
	lu12i.w	$a1, 4
	ori	$a1, $a1, 1824
	add.d	$a1, $sp, $a1
	addi.d	$a4, $sp, 112
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a6, $sp, $a2
	addi.d	$a7, $sp, 1184
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(L3psycho_anal)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 80                   # 32-byte Folded Reload
	ld.w	$a0, $fp, 204
	bstrpick.d	$a1, $a0, 31, 0
	blt	$a0, $s7, .LBB2_14
# %bb.24:                               # %for.body97.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	bgeu	$a1, $s3, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_15 Depth=1
	move	$a0, $zero
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_26:                               # %vector.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	bstrpick.d	$a0, $a1, 30, 3
	slli.d	$a0, $a0, 3
	lu12i.w	$a2, 2
	ori	$a2, $a2, 800
	add.d	$a2, $sp, $a2
	move	$a3, $s0
	move	$a4, $a0
	.p2align	4, , 16
.LBB2_27:                               # %vector.body
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, 0
	xvstelm.w	$xr0, $a3, -480, 0
	xvstelm.w	$xr0, $a3, -360, 1
	xvstelm.w	$xr0, $a3, -240, 2
	xvstelm.w	$xr0, $a3, -120, 3
	xvstelm.w	$xr0, $a3, 0, 4
	xvstelm.w	$xr0, $a3, 120, 5
	xvstelm.w	$xr0, $a3, 240, 6
	xvstelm.w	$xr0, $a3, 360, 7
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 960
	bnez	$a4, .LBB2_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB2_15 Depth=1
	beq	$a0, $a1, .LBB2_14
.LBB2_29:                               # %for.body97.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$a2, $a0, $s8, 2
	ori	$a3, $zero, 120
	mul.d	$a3, $a0, $a3
	add.d	$a3, $s1, $a3
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB2_30:                               # %for.body97
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 120
	bnez	$a0, .LBB2_30
	b	.LBB2_14
.LBB2_31:                               # %for.end110
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB2_32:                               # %if.end139
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_56
# %bb.33:                               # %for.cond145.preheader.lr.ph
	ld.w	$t4, $fp, 204
	ori	$a2, $zero, 1
	blt	$t4, $a2, .LBB2_56
.LBB2_34:                               # %for.cond145.preheader.us.preheader
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(l3_side)
	addi.d	$a4, $a4, %pc_lo12(l3_side)
	addi.d	$a5, $a4, 196
	bstrpick.d	$a6, $t4, 30, 1
	slli.d	$a6, $a6, 1
	ori	$a7, $zero, 120
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_35:                               # %for.cond145.for.inc166_crit_edge.us
                                        #   in Loop: Header=BB2_36 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 240
	addi.d	$a4, $a4, 240
	beq	$a3, $a0, .LBB2_56
.LBB2_36:                               # %for.cond145.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_42 Depth 2
	bne	$t4, $a2, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=1
	move	$t1, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_38:                               # %vector.body183.preheader
                                        #   in Loop: Header=BB2_36 Depth=1
	move	$t0, $a5
	move	$t1, $a6
	.p2align	4, , 16
.LBB2_39:                               # %vector.body183
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, -124
	ld.w	$t3, $t0, -4
	st.w	$zero, $t0, -120
	st.w	$zero, $t0, 0
	sltu	$t2, $zero, $t2
	sltu	$t3, $zero, $t3
	st.w	$t2, $t0, -128
	st.w	$t3, $t0, -8
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 240
	bnez	$t1, .LBB2_39
# %bb.40:                               # %middle.block186
                                        #   in Loop: Header=BB2_36 Depth=1
	move	$t1, $a6
	beq	$a6, $t4, .LBB2_35
.LBB2_41:                               # %for.body149.us.preheader
                                        #   in Loop: Header=BB2_36 Depth=1
	mul.d	$t0, $t1, $a7
	sub.d	$t1, $t4, $t1
	.p2align	4, , 16
.LBB2_42:                               # %for.body149.us
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a4, $t0
	ld.w	$t3, $t2, 72
	st.w	$zero, $t2, 76
	sltu	$t3, $zero, $t3
	st.w	$t3, $t2, 68
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 120
	bnez	$t1, .LBB2_42
	b	.LBB2_35
.LBB2_43:                               # %if.then53
	ld.w	$a0, $fp, 16
	ld.d	$a2, $fp, 176
	ld.w	$a3, $fp, 188
	pcaddu18i	$ra, %call36(timestatus)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 272
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	bnez	$a0, .LBB2_12
.LBB2_44:                               # %for.cond112.preheader
	ld.w	$a0, $fp, 200
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_55
# %bb.45:                               # %for.cond117.preheader.lr.ph
	ld.w	$t6, $fp, 204
	blt	$t6, $a2, .LBB2_70
# %bb.46:                               # %for.cond117.preheader.us.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $t6, 30, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(l3_side)
	addi.d	$a5, $a4, %pc_lo12(l3_side)
	addi.d	$a4, $a5, 552
	addi.d	$a5, $a5, 72
	addi.d	$a6, $sp, 160
	addi.d	$a7, $sp, 192
	ori	$t0, $zero, 8
	ori	$t1, $zero, 120
	ori	$t2, $zero, 0
	lu32i.d	$t2, 385024
	lu52i.d	$t2, $t2, 1032
	movgr2fr.d	$fs0, $zero
	xvreplgr2vr.d	$xr0, $t2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %for.cond117.for.inc136_crit_edge.us
                                        #   in Loop: Header=BB2_48 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, 16
	addi.d	$a4, $a4, 240
	addi.d	$a5, $a5, 240
	addi.d	$a6, $a6, 16
	beq	$a2, $a0, .LBB2_32
.LBB2_48:                               # %for.cond117.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_51 Depth 2
                                        #     Child Loop BB2_54 Depth 2
	bgeu	$t6, $t0, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t5, $zero
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_50:                               # %vector.body172.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$t3, $a4
	move	$t4, $a7
	move	$t5, $a3
	.p2align	4, , 16
.LBB2_51:                               # %vector.body172
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t3, -480
	st.w	$zero, $t3, -360
	st.w	$zero, $t3, -240
	st.w	$zero, $t3, -120
	st.w	$zero, $t3, 0
	st.w	$zero, $t3, 120
	st.w	$zero, $t3, 240
	st.w	$zero, $t3, 360
	xvst	$xr0, $t4, -32
	xvst	$xr0, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 64
	addi.d	$t3, $t3, 960
	bnez	$t5, .LBB2_51
# %bb.52:                               # %middle.block175
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$t5, $a3
	beq	$a3, $t6, .LBB2_47
.LBB2_53:                               # %for.body121.us.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	mul.d	$t3, $t5, $t1
	add.d	$t3, $a5, $t3
	alsl.d	$t4, $t5, $a6, 3
	sub.d	$t5, $t6, $t5
	.p2align	4, , 16
.LBB2_54:                               # %for.body121.us
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t3, 0
	st.d	$t2, $t4, 0
	addi.d	$t3, $t3, 120
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB2_54
	b	.LBB2_47
.LBB2_55:
	movgr2fr.d	$fs0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
.LBB2_56:                               # %for.end168
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$s4, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1824
	add.d	$a3, $sp, $a0
	move	$a0, $fp
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s4
	pcaddu18i	$ra, %call36(mdct_sub48)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_61
# %bb.57:                               # %if.end180
	ld.w	$a0, $s4, 72
	ld.w	$a1, $s4, 192
	bne	$a0, $a1, .LBB2_61
# %bb.58:                               # %if.end180
	ld.w	$a0, $s4, 432
	ld.w	$a1, $s4, 312
	bne	$a1, $a0, .LBB2_61
# %bb.59:                               # %if.then182
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a0, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, 8
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 112
	fadd.d	$fa0, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_2)
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -944
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB2_61
# %bb.60:                               # %if.then191
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 228
.LBB2_61:                               # %if.end194
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB2_64
# %bb.62:                               # %.thread
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 228
	addi.d	$a4, $sp, 1184
	addi.d	$a1, $sp, 128
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB2_65
.LBB2_63:                               # %if.then207
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a2, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a5, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1824
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 800
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 208
	move	$a0, $fp
	pcaddu18i	$ra, %call36(VBR_iteration_loop)
	jirl	$ra, $ra, 0
	b	.LBB2_66
.LBB2_64:                               # %if.end198
	ld.w	$a0, $fp, 228
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	addi.d	$a1, $sp, 160
	masknez	$a1, $a1, $a0
	addi.d	$a2, $sp, 128
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	masknez	$a2, $a2, $a0
	addi.d	$a3, $sp, 1184
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a2
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB2_63
.LBB2_65:                               # %if.else213
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.ms_ratio)
	addi.d	$a2, $a0, %pc_lo12(lame_encode_frame.ms_ratio)
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a5, $a0, %pc_lo12(l3_side)
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1824
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 800
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 208
	move	$a0, $fp
	pcaddu18i	$ra, %call36(iteration_loop)
	jirl	$ra, $ra, 0
.LBB2_66:                               # %if.end219
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 124
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 120
	pcalau12i	$a0, %pc_hi20(l3_side)
	addi.d	$a3, $a0, %pc_lo12(l3_side)
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$s2, $a0, %pc_lo12(bs)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 800
	add.d	$a2, $sp, $a0
	addi.d	$a4, $sp, 208
	move	$a0, $fp
	move	$a5, $s2
	pcaddu18i	$ra, %call36(III_format_bitstream)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 40
	ld.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	sub.d	$a2, $a1, $a0
	pcalau12i	$s0, %pc_hi20(lame_encode_frame.frameBits)
	andi	$a4, $a2, 7
	st.d	$a2, $s0, %pc_lo12(lame_encode_frame.frameBits)
	bnez	$a4, .LBB2_71
.LBB2_67:                               # %if.end228
	add.d	$a0, $a0, $a2
	st.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a2, $a0, %pc_lo12(bs)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(copy_buffer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	beqz	$a1, .LBB2_69
# %bb.68:                               # %if.then232
	ld.d	$a1, $s5, %pc_lo12(lame_encode_frame.sentBits)
	srli.d	$a1, $a1, 3
	addi.w	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AddVbrFrame)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB2_69:                               # %if.end235
	ld.d	$a1, $fp, 168
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 168
	lu12i.w	$a1, 8
	ori	$a1, $a1, 1936
	add.d	$sp, $sp, $a1
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_70:
	movgr2fr.d	$fs0, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t4, $fp, 204
	ori	$a2, $zero, 1
	bge	$t4, $a2, .LBB2_34
	b	.LBB2_56
.LBB2_71:                               # %if.then225
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	srli.d	$a3, $a2, 3
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(lame_encode_frame.frameBits)
	ld.d	$a0, $s5, %pc_lo12(lame_encode_frame.sentBits)
	b	.LBB2_67
.LBB2_72:                               # %if.else26
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.frac_SpF)
	fld.d	$fa0, $a0, %pc_lo12(lame_encode_frame.frac_SpF)
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_8
# %bb.73:                               # %if.then29
	pcalau12i	$a0, %pc_hi20(lame_encode_frame.slot_lag)
	fld.d	$fa1, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	vldi	$vr2, -784
	fadd.d	$fa2, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_75
# %bb.74:                               # %if.then33
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	b	.LBB2_5
.LBB2_75:                               # %if.else36
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 196
	vldi	$vr2, -912
	fsub.d	$fa0, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, %pc_lo12(lame_encode_frame.slot_lag)
	b	.LBB2_8
.Lfunc_end2:
	.size	lame_encode_frame, .Lfunc_end2-lame_encode_frame
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fill_buffer_resample
.LCPI3_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	fill_buffer_resample
	.p2align	5
	.type	fill_buffer_resample,@function
fill_buffer_resample:                   # @fill_buffer_resample
# %bb.0:                                # %entry
	ld.d	$t3, $a0, 168
	pcalau12i	$a7, %pc_hi20(fill_buffer_resample.init)
	addi.d	$t1, $a7, %pc_lo12(fill_buffer_resample.init)
	slli.d	$t2, $a6, 2
	pcalau12i	$a7, %pc_hi20(fill_buffer_resample.itime)
	addi.d	$a7, $a7, %pc_lo12(fill_buffer_resample.itime)
	pcalau12i	$t0, %pc_hi20(fill_buffer_resample.inbuf_old)
	addi.d	$t0, $t0, %pc_lo12(fill_buffer_resample.inbuf_old)
	beqz	$t3, .LBB3_2
.LBB3_1:                                # %if.then9
	stx.w	$zero, $t1, $t2
	b	.LBB3_3
.LBB3_2:                                # %land.lhs.true
	ldx.w	$t3, $t1, $t2
	beqz	$t3, .LBB3_29
.LBB3_3:                                # %if.end12
	fld.s	$fa0, $a0, 216
	slli.d	$t1, $a6, 3
	blez	$a2, .LBB3_13
# %bb.4:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t2, $a3, 2
	fcvt.d.s	$fa1, $fa0
	vldi	$vr2, -928
	fadd.d	$fa2, $fa1, $fa2
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fsub.d	$fa1, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI3_0)
	fabs.d	$fa3, $fa1
	fldx.d	$fa1, $a7, $t1
	alsl.d	$a0, $a6, $t1, 1
	fcmp.clt.d	$fcc0, $fa3, $fa2
	add.d	$t3, $t0, $a0
	move	$a0, $zero
	bceqz	$fcc0, .LBB3_14
# %bb.5:                                # %for.body.us.preheader
	vldi	$vr2, -784
	addi.w	$t5, $zero, -1
	vldi	$vr3, -928
	move	$t6, $a2
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_6:                                # %cond.end.us
                                        #   in Loop: Header=BB3_9 Depth=1
	alsl.d	$t8, $t4, $t3, 1
	ld.hu	$t7, $t8, 10
	beq	$t4, $t5, .LBB3_12
# %bb.7:                                # %cond.true51.us
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.d	$t8, $t8, 12
.LBB3_8:                                # %cond.end63.us
                                        #   in Loop: Header=BB3_9 Depth=1
	movgr2fr.w	$fa5, $t4
	ffint.d.w	$fa5, $fa5
	ld.h	$t8, $t8, 0
	fadd.d	$fa5, $fa1, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fadd.d	$fa5, $fa4, $fa2
	movgr2fr.w	$fa6, $t8
	ffint.d.w	$fa6, $fa6
	ext.w.h	$t7, $t7
	movgr2fr.w	$fa7, $t7
	ffint.d.w	$fa7, $fa7
	fneg.d	$fa7, $fa7
	fmul.d	$fa5, $fa5, $fa7
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa3
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.l.d	$fa4, $fa4
	movfr2gr.d	$t7, $fa4
	st.h	$t7, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$t6, $t6, -1
	addi.w	$a0, $a0, 1
	beqz	$t6, .LBB3_26
.LBB3_9:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t4, $a0, 31, 0
	movgr2fr.d	$fa4, $t4
	ffint.s.l	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa5, $fa4, $fa1
	vreplvei.d	$vr5, $vr5, 0
	vfrintrm.d	$vr5, $vr5
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t4, $fa5
	addi.w	$t7, $t4, 2
	bge	$t7, $a4, .LBB3_27
# %bb.10:                               # %if.end30.us
                                        #   in Loop: Header=BB3_9 Depth=1
	bltz	$t4, .LBB3_6
# %bb.11:                               # %cond.end.thread.us
                                        #   in Loop: Header=BB3_9 Depth=1
	slli.d	$t7, $t4, 1
	ldx.hu	$t7, $a3, $t7
.LBB3_12:                               # %cond.false58.us
                                        #   in Loop: Header=BB3_9 Depth=1
	alsl.d	$t8, $t4, $t2, 1
	b	.LBB3_8
.LBB3_13:                               # %if.end12.for.end_crit_edge
	fldx.d	$fa1, $a7, $t1
	move	$a0, $zero
	move	$t4, $zero
	b	.LBB3_28
.LBB3_14:                               # %for.body.preheader
	addi.d	$t5, $a3, -2
	vldi	$vr2, -784
	addi.w	$t6, $zero, -1
	vldi	$vr3, -912
	vldi	$vr4, -896
	addi.w	$t7, $zero, -2
	vldi	$vr5, -1000
	vldi	$vr6, -928
	lu12i.w	$t4, -8
	ori	$t8, $t4, 1
	lu12i.w	$t4, 7
	ori	$fp, $t4, 4095
	move	$s0, $a2
	.p2align	4, , 16
.LBB3_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t4, $a0, 31, 0
	movgr2fr.d	$fa7, $t4
	ffint.s.l	$fa7, $fa7
	fmul.s	$fa7, $fa0, $fa7
	fcvt.d.s	$fa7, $fa7
	fsub.d	$ft0, $fa7, $fa1
	vreplvei.d	$vr8, $vr8, 0
	vfrintrm.d	$vr8, $vr8
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$t4, $ft0
	addi.w	$s3, $t4, 2
	bge	$s3, $a4, .LBB3_27
# %bb.16:                               # %if.end30
                                        #   in Loop: Header=BB3_15 Depth=1
	movgr2fr.w	$ft0, $t4
	ffint.d.w	$ft0, $ft0
	fadd.d	$ft0, $fa1, $ft0
	fsub.d	$fa7, $fa7, $ft0
	bge	$t6, $t4, .LBB3_19
# %bb.17:                               # %cond.end63
                                        #   in Loop: Header=BB3_15 Depth=1
	slli.d	$s4, $t4, 1
	ldx.hu	$s2, $a3, $s4
	ldx.hu	$s1, $t2, $s4
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
	beqz	$t4, .LBB3_23
# %bb.18:                               # %cond.end93.thread
                                        #   in Loop: Header=BB3_15 Depth=1
	ldx.h	$s4, $t5, $s4
	b	.LBB3_24
	.p2align	4, , 16
.LBB3_19:                               # %cond.end
                                        #   in Loop: Header=BB3_15 Depth=1
	alsl.d	$s5, $t4, $t3, 1
	ld.hu	$s2, $s5, 10
	beq	$t4, $t6, .LBB3_22
# %bb.20:                               # %cond.end93
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.hu	$s1, $s5, 12
	ld.h	$s4, $s5, 8
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
	beq	$t4, $t7, .LBB3_24
# %bb.21:                               # %cond.true98
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.d	$s3, $s5, 14
	b	.LBB3_25
.LBB3_22:                               # %cond.end63.thread131
                                        #   in Loop: Header=BB3_15 Depth=1
	slli.d	$s1, $t4, 1
	ldx.hu	$s1, $t2, $s1
	fadd.d	$ft0, $fa7, $fa3
	fadd.d	$ft1, $fa7, $fa4
.LBB3_23:                               # %cond.end93.thread138
                                        #   in Loop: Header=BB3_15 Depth=1
	alsl.d	$s4, $t4, $t3, 1
	ld.h	$s4, $s4, 8
.LBB3_24:                               # %cond.end111
                                        #   in Loop: Header=BB3_15 Depth=1
	alsl.d	$s3, $s3, $a3, 1
.LBB3_25:                               # %cond.end111
                                        #   in Loop: Header=BB3_15 Depth=1
	fadd.d	$ft2, $fa7, $fa2
	ld.h	$s3, $s3, 0
	sub.d	$s4, $zero, $s4
	movgr2fr.w	$ft3, $s4
	ffint.d.w	$ft3, $ft3
	fmul.d	$ft3, $fa7, $ft3
	fmul.d	$ft3, $ft2, $ft3
	fmul.d	$ft3, $ft1, $ft3
	fdiv.d	$ft3, $ft3, $fa5
	fadd.d	$ft3, $ft3, $fa6
	ext.w.h	$s2, $s2
	movgr2fr.w	$ft4, $s2
	ffint.d.w	$ft4, $ft4
	fmul.d	$ft4, $ft0, $ft4
	fmul.d	$ft4, $ft2, $ft4
	fmul.d	$ft4, $ft1, $ft4
	fmul.d	$ft4, $ft4, $fa6
	fadd.d	$ft3, $ft4, $ft3
	ext.w.h	$s1, $s1
	movgr2fr.w	$ft4, $s1
	ffint.d.w	$ft4, $ft4
	fmul.d	$ft4, $ft0, $ft4
	fmul.d	$ft4, $fa7, $ft4
	fmul.d	$ft1, $ft1, $ft4
	fmul.d	$ft1, $ft1, $fa6
	fsub.d	$ft1, $ft3, $ft1
	movgr2fr.w	$ft3, $s3
	ffint.d.w	$ft3, $ft3
	fmul.d	$ft0, $ft0, $ft3
	fmul.d	$fa7, $fa7, $ft0
	fmul.d	$fa7, $ft2, $fa7
	fdiv.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft1
	vreplvei.d	$vr7, $vr7, 0
	vfrintrm.d	$vr7, $vr7
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$s1, $fa7
	slt	$s2, $t8, $s1
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $t8, $s2
	or	$s1, $s1, $s2
	slt	$s2, $s1, $fp
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $fp, $s2
	or	$s1, $s1, $s2
	st.h	$s1, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$s0, $s0, -1
	addi.w	$a0, $a0, 1
	bnez	$s0, .LBB3_15
.LBB3_26:
	move	$a0, $a2
.LBB3_27:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB3_28:                               # %for.end
	addi.w	$a1, $t4, 2
	slt	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a3, 1
	ld.h	$a3, $a2, -10
	alsl.d	$a4, $a6, $t1, 1
	stx.h	$a3, $t0, $a4
	ld.h	$a3, $a2, -8
	st.w	$a1, $a5, 0
	movgr2fr.w	$fa2, $a1
	add.d	$a1, $t0, $a4
	st.h	$a3, $a1, 2
	ld.h	$a3, $a2, -6
	ffint.s.w	$fa2, $fa2
	bstrpick.d	$a4, $a0, 31, 0
	movgr2fr.d	$fa3, $a4
	st.h	$a3, $a1, 4
	ld.h	$a3, $a2, -4
	ffint.s.l	$fa3, $fa3
	fneg.s	$fa3, $fa3
	fmadd.s	$fa0, $fa3, $fa0, $fa2
	st.h	$a3, $a1, 6
	ld.h	$a2, $a2, -2
	fcvt.d.s	$fa0, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a7, $t1
	st.h	$a2, $a1, 8
	ret
.LBB3_29:                               # %if.end
	slli.d	$t3, $a6, 3
	alsl.d	$t4, $a6, $t3, 1
	add.d	$t5, $t0, $t4
	stx.d	$zero, $t0, $t4
	st.h	$zero, $t5, 8
	ld.d	$t4, $a0, 168
	alsl.d	$t5, $a6, $t1, 2
	ori	$t6, $zero, 1
	st.w	$t6, $t5, 0
	stx.d	$zero, $a7, $t3
	bnez	$t4, .LBB3_1
	b	.LBB3_3
.Lfunc_end3:
	.size	fill_buffer_resample, .Lfunc_end3-fill_buffer_resample
                                        # -- End function
	.globl	fill_buffer                     # -- Begin function fill_buffer
	.p2align	5
	.type	fill_buffer,@function
fill_buffer:                            # @fill_buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $a1
	slt	$a1, $a2, $a4
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a4
	slli.d	$a2, $fp, 1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	fill_buffer, .Lfunc_end4-fill_buffer
                                        # -- End function
	.globl	lame_encode_buffer              # -- Begin function lame_encode_buffer
	.p2align	5
	.type	lame_encode_buffer,@function
lame_encode_buffer:                     # @lame_encode_buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s3, $a1
	move	$s2, $a0
	st.d	$a1, $sp, 72
	st.d	$a2, $sp, 80
	ld.d	$a0, $a0, 168
	ld.w	$s5, $s2, 188
	pcalau12i	$fp, %pc_hi20(lame_encode_buffer.frame_buffered)
	pcalau12i	$s6, %pc_hi20(mf_size)
	pcalau12i	$a1, %pc_hi20(mf_samples_to_encode)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bnez	$a0, .LBB5_3
# %bb.1:                                # %entry
	ld.b	$a1, $fp, %pc_lo12(lame_encode_buffer.frame_buffered)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB5_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	lu12i.w	$a1, 2
	ori	$a2, $a1, 4032
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(lame_encode_buffer.frame_buffered)
	ori	$a1, $zero, 1088
	ld.d	$a0, $s2, 168
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(mf_samples_to_encode)
	ori	$a1, $zero, 752
	st.w	$a1, $s6, %pc_lo12(mf_size)
.LBB5_3:                                # %if.end
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_5
# %bb.4:                                # %if.then4
	st.b	$zero, $fp, %pc_lo12(lame_encode_buffer.frame_buffered)
.LBB5_5:                                # %if.end5
	ld.w	$a0, $s2, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_14
# %bb.6:                                # %land.lhs.true7
	ld.w	$a1, $s2, 204
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB5_14
# %bb.7:                                # %land.lhs.true7
	blt	$s1, $a0, .LBB5_14
# %bb.8:                                # %iter.check
	ori	$a0, $zero, 4
	bltu	$s1, $a0, .LBB5_11
# %bb.9:                                # %vector.memcheck
	alsl.d	$a0, $s1, $s4, 1
	bgeu	$s3, $a0, .LBB5_47
# %bb.10:                               # %vector.memcheck
	alsl.d	$a0, $s1, $s3, 1
	bgeu	$s4, $a0, .LBB5_47
.LBB5_11:
	move	$a0, $zero
.LBB5_12:                               # %for.body.preheader
	alsl.d	$a1, $a0, $s4, 1
	alsl.d	$a2, $a0, $s3, 1
	sub.d	$a0, $s1, $a0
	.p2align	4, , 16
.LBB5_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a1, 0
	add.d	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 31, 31
	add.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	st.h	$a3, $a2, 0
	st.h	$zero, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 2
	bnez	$a0, .LBB5_13
	b	.LBB5_15
.LBB5_14:                               # %if.end25
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB5_44
.LBB5_15:                               # %while.body.lr.ph
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.w	$a0, $s5, 752
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $s2, 204
	ori	$t6, $zero, 1
	lu12i.w	$a0, 1
	ori	$fp, $a0, 2016
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_16:                               #   in Loop: Header=BB5_18 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ori	$t6, $zero, 1
.LBB5_17:                               # %cleanup
                                        #   in Loop: Header=BB5_18 Depth=1
	sub.w	$s1, $s1, $s8
	blez	$s1, .LBB5_46
.LBB5_18:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_31 Depth 2
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_40 Depth 3
                                        #       Child Loop BB5_43 Depth 3
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $sp, 68
	blt	$a1, $t6, .LBB5_24
# %bb.19:                               # %for.body32.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$s4, $zero
	move	$s3, $zero
	addi.d	$s7, $sp, 72
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_20:                               # %if.then35
                                        #   in Loop: Header=BB5_22 Depth=2
	addi.d	$a5, $sp, 68
	move	$a0, $s2
	move	$a3, $s5
	move	$a4, $s1
	move	$a6, $s4
	pcaddu18i	$ra, %call36(fill_buffer_resample)
	jirl	$ra, $ra, 0
	ld.w	$s8, $sp, 68
.LBB5_21:                               # %if.end51
                                        #   in Loop: Header=BB5_22 Depth=2
	alsl.d	$a1, $s8, $s5, 1
	st.d	$a1, $s7, 0
	ld.w	$a1, $s2, 204
	addi.d	$s3, $s3, 1
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 8
	add.d	$s0, $s0, $fp
	bge	$s3, $a1, .LBB5_25
.LBB5_22:                               # %for.body32
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s2, 216
	ld.w	$a0, $s6, %pc_lo12(mf_size)
	ld.w	$a2, $s2, 188
	ld.d	$s5, $s7, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	alsl.d	$a1, $a0, $s0, 1
	bceqz	$fcc0, .LBB5_20
# %bb.23:                               # %if.else
                                        #   in Loop: Header=BB5_22 Depth=2
	slt	$a0, $a2, $s1
	masknez	$a3, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s8, $a0, $a3
	slli.d	$a2, $s8, 1
	move	$a0, $a1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s8, $sp, 68
	move	$a0, $s8
	b	.LBB5_21
	.p2align	4, , 16
.LBB5_24:                               #   in Loop: Header=BB5_18 Depth=1
	move	$s8, $zero
	move	$a0, $zero
.LBB5_25:                               # %for.end56
                                        #   in Loop: Header=BB5_18 Depth=1
	ld.w	$a2, $s6, %pc_lo12(mf_size)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(mf_samples_to_encode)
	add.w	$a2, $a2, $a0
	st.w	$a2, $s6, %pc_lo12(mf_size)
	add.d	$a0, $a3, $a0
	st.w	$a0, $a4, %pc_lo12(mf_samples_to_encode)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB5_16
# %bb.26:                               # %if.then62
                                        #   in Loop: Header=BB5_18 Depth=1
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$s4, $a0, %pc_lo12(mfbuf)
	add.d	$a2, $s4, $fp
	move	$a0, $s2
	move	$a1, $s4
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lame_encode_frame)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	ori	$t6, $zero, 1
	ori	$t7, $zero, 32
	beq	$a0, $a1, .LBB5_45
# %bb.27:                               # %if.end67
                                        #   in Loop: Header=BB5_18 Depth=1
	add.d	$s0, $s0, $a0
	ld.w	$a2, $s2, 188
	ld.w	$a3, $s6, %pc_lo12(mf_size)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a5, %pc_lo12(mf_samples_to_encode)
	ld.w	$a1, $s2, 204
	sub.w	$a0, $a3, $a2
	st.w	$a0, $s6, %pc_lo12(mf_size)
	sub.d	$a3, $a4, $a2
	st.w	$a3, $a5, %pc_lo12(mf_samples_to_encode)
	blt	$a1, $t6, .LBB5_17
# %bb.28:                               # %if.end67
                                        #   in Loop: Header=BB5_18 Depth=1
	blt	$a0, $t6, .LBB5_17
# %bb.29:                               # %for.cond80.preheader.us.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$a3, $zero
	slli.d	$a4, $a2, 1
	sub.d	$a5, $zero, $a4
	sltui	$a6, $a0, 8
	sltui	$a5, $a5, 64
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a0, 30, 5
	slli.d	$a6, $a6, 5
	andi	$a7, $a0, 24
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	sub.d	$t1, $zero, $t0
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_30:                               # %for.cond80.for.inc97_crit_edge.us
                                        #   in Loop: Header=BB5_31 Depth=2
	addi.d	$a3, $a3, 1
	add.d	$s4, $s4, $fp
	beq	$a3, $a1, .LBB5_17
.LBB5_31:                               # %iter.check96
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_36 Depth 3
                                        #       Child Loop BB5_40 Depth 3
                                        #       Child Loop BB5_43 Depth 3
	beqz	$a5, .LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_31 Depth=2
	move	$t4, $zero
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_33:                               # %vector.main.loop.iter.check98
                                        #   in Loop: Header=BB5_31 Depth=2
	bgeu	$a0, $t7, .LBB5_35
# %bb.34:                               #   in Loop: Header=BB5_31 Depth=2
	move	$t5, $zero
	b	.LBB5_39
	.p2align	4, , 16
.LBB5_35:                               # %vector.body102.preheader
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t2, $s4
	move	$t3, $a6
	.p2align	4, , 16
.LBB5_36:                               # %vector.body102
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $t2, $a4
	xvldx	$xr0, $t2, $a4
	xvld	$xr1, $t4, 32
	xvst	$xr0, $t2, 0
	xvst	$xr1, $t2, 32
	addi.d	$t3, $t3, -32
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB5_36
# %bb.37:                               # %middle.block107
                                        #   in Loop: Header=BB5_31 Depth=2
	beq	$a6, $a0, .LBB5_30
# %bb.38:                               # %vec.epilog.iter.check112
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t5, $a6
	move	$t4, $a6
	beqz	$a7, .LBB5_42
.LBB5_39:                               # %vec.epilog.ph111
                                        #   in Loop: Header=BB5_31 Depth=2
	add.d	$t2, $t1, $t5
	alsl.d	$t3, $t5, $s4, 1
	add.d	$t4, $a2, $t5
	slli.d	$t4, $t4, 1
	.p2align	4, , 16
.LBB5_40:                               # %vec.epilog.vector.body117
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $s4, $t4
	vst	$vr0, $t3, 0
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$t2, .LBB5_40
# %bb.41:                               # %vec.epilog.middle.block121
                                        #   in Loop: Header=BB5_31 Depth=2
	move	$t4, $t0
	beq	$t0, $a0, .LBB5_30
.LBB5_42:                               # %for.body83.us.preheader
                                        #   in Loop: Header=BB5_31 Depth=2
	alsl.d	$t2, $t4, $s4, 1
	add.d	$t3, $a2, $t4
	slli.d	$t3, $t3, 1
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB5_43:                               # %for.body83.us
                                        #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$t5, $s4, $t3
	st.h	$t5, $t2, 0
	addi.d	$t2, $t2, 2
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB5_43
	b	.LBB5_30
.LBB5_44:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB5_46
.LBB5_45:                               # %cleanup.thread
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
.LBB5_46:                               # %cleanup102
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB5_47:                               # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$s1, $a0, .LBB5_49
# %bb.48:
	move	$a0, $zero
	b	.LBB5_53
.LBB5_49:                               # %vector.ph
	bstrpick.d	$a0, $s1, 30, 4
	slli.d	$a0, $a0, 4
	xvrepli.b	$xr0, 0
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_50:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a1, 0
	xvpermi.q	$xr2, $xr3, 1
	vpickve2gr.h	$a4, $vr2, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 0
	vpickve2gr.h	$a4, $vr2, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 1
	vpickve2gr.h	$a4, $vr2, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 2
	vpickve2gr.h	$a4, $vr2, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 3
	vpickve2gr.h	$a4, $vr2, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 4
	vpickve2gr.h	$a4, $vr2, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 5
	vpickve2gr.h	$a4, $vr2, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 6
	vpickve2gr.h	$a4, $vr2, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 7
	vpickve2gr.h	$a4, $vr3, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 0
	vpickve2gr.h	$a4, $vr3, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 1
	vpickve2gr.h	$a4, $vr3, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 2
	vpickve2gr.h	$a4, $vr3, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 3
	vpickve2gr.h	$a4, $vr3, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 4
	vpickve2gr.h	$a4, $vr3, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 5
	vpickve2gr.h	$a4, $vr3, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 6
	xvld	$xr4, $a2, 0
	vpickve2gr.h	$a4, $vr3, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr2, $a4, 7
	xvpermi.q	$xr3, $xr4, 1
	vpickve2gr.h	$a4, $vr3, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 0
	vpickve2gr.h	$a4, $vr3, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 1
	vpickve2gr.h	$a4, $vr3, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 2
	vpickve2gr.h	$a4, $vr3, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 3
	vpickve2gr.h	$a4, $vr3, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 4
	vpickve2gr.h	$a4, $vr3, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 5
	vpickve2gr.h	$a4, $vr3, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 6
	vpickve2gr.h	$a4, $vr3, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 7
	vpickve2gr.h	$a4, $vr4, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 0
	vpickve2gr.h	$a4, $vr4, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 1
	vpickve2gr.h	$a4, $vr4, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 2
	vpickve2gr.h	$a4, $vr4, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 3
	vpickve2gr.h	$a4, $vr4, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 4
	vpickve2gr.h	$a4, $vr4, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 5
	vpickve2gr.h	$a4, $vr4, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 6
	vpickve2gr.h	$a4, $vr4, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr3, $a4, 7
	xvadd.w	$xr1, $xr5, $xr1
	xvadd.w	$xr3, $xr3, $xr2
	xvsrli.w	$xr2, $xr1, 31
	xvadd.w	$xr1, $xr1, $xr2
	xvsrai.w	$xr2, $xr1, 1
	xvsrli.w	$xr1, $xr3, 31
	xvadd.w	$xr1, $xr3, $xr1
	xvsrai.w	$xr3, $xr1, 1
	xvpickve2gr.w	$a4, $xr3, 0
	vinsgr2vr.h	$vr1, $a4, 0
	xvpickve2gr.w	$a4, $xr3, 1
	vinsgr2vr.h	$vr1, $a4, 1
	xvpickve2gr.w	$a4, $xr3, 2
	vinsgr2vr.h	$vr1, $a4, 2
	xvpickve2gr.w	$a4, $xr3, 3
	vinsgr2vr.h	$vr1, $a4, 3
	xvpickve2gr.w	$a4, $xr3, 4
	vinsgr2vr.h	$vr1, $a4, 4
	xvpickve2gr.w	$a4, $xr3, 5
	vinsgr2vr.h	$vr1, $a4, 5
	xvpickve2gr.w	$a4, $xr3, 6
	vinsgr2vr.h	$vr1, $a4, 6
	xvpickve2gr.w	$a4, $xr3, 7
	vinsgr2vr.h	$vr1, $a4, 7
	xvpickve2gr.w	$a4, $xr2, 0
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 0
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 1
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 1
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 2
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 2
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 3
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 3
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 4
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 4
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 5
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 5
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 6
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.h	$vr3, $a4, 6
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.w	$a4, $xr2, 7
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.h	$vr2, $a4, 7
	xvpermi.q	$xr1, $xr2, 2
	xvst	$xr1, $a1, 0
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB5_50
# %bb.51:                               # %middle.block
	beq	$a0, $s1, .LBB5_15
# %bb.52:                               # %vec.epilog.iter.check
	andi	$a1, $s1, 12
	beqz	$a1, .LBB5_12
.LBB5_53:                               # %vec.epilog.ph
	move	$a3, $a0
	bstrpick.d	$a0, $s1, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s4, 1
	alsl.d	$a3, $a3, $s3, 1
	.p2align	4, , 16
.LBB5_54:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	vinsgr2vr.d	$vr0, $a4, 0
	ld.d	$a4, $a2, 0
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vadd.w	$vr0, $vr1, $vr0
	vsrli.w	$vr1, $vr0, 31
	vadd.w	$vr0, $vr0, $vr1
	vsrli.w	$vr0, $vr0, 1
	vpickev.h	$vr0, $vr0, $vr0
	vstelm.d	$vr0, $a3, 0, 0
	st.d	$zero, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB5_54
# %bb.55:                               # %vec.epilog.middle.block
	beq	$a0, $s1, .LBB5_15
	b	.LBB5_12
.Lfunc_end5:
	.size	lame_encode_buffer, .Lfunc_end5-lame_encode_buffer
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function lame_encode_buffer_interleaved
.LCPI6_0:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI6_1:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI6_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI6_3:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	lame_encode_buffer_interleaved
	.p2align	5
	.type	lame_encode_buffer_interleaved,@function
lame_encode_buffer_interleaved:         # @lame_encode_buffer_interleaved
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
	move	$s4, $a0
	ld.w	$a0, $a0, 8
	ori	$a5, $zero, 1
	move	$s6, $a4
	move	$s7, $a3
	move	$s2, $a2
	move	$s3, $a1
	bne	$a0, $a5, .LBB6_2
# %bb.1:                                # %if.then
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s6
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
	pcaddu18i	$t8, %call36(lame_encode_buffer)
	jr	$t8
.LBB6_2:                                # %if.end
	fld.s	$fa0, $s4, 216
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	bcnez	$fcc0, .LBB6_8
# %bb.3:                                # %if.then2
	slli.d	$s5, $s2, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beqz	$s4, .LBB6_57
# %bb.4:                                # %if.then2
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_57
# %bb.5:                                # %for.cond.preheader
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB6_69
# %bb.6:                                # %iter.check170
	ori	$a1, $zero, 8
	bgeu	$s2, $a1, .LBB6_58
# %bb.7:
	move	$a1, $zero
	b	.LBB6_67
.LBB6_8:                                # %if.end26
	ld.d	$a0, $s4, 168
	ld.w	$fp, $s4, 188
	pcalau12i	$s0, %pc_hi20(lame_encode_buffer_interleaved.frame_buffered)
	pcalau12i	$s5, %pc_hi20(mf_size)
	pcalau12i	$a1, %pc_hi20(mf_samples_to_encode)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bnez	$a0, .LBB6_11
# %bb.9:                                # %if.end26
	ld.b	$a1, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB6_11
# %bb.10:                               # %if.then29
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$a0, $a0, %pc_lo12(mfbuf)
	lu12i.w	$a1, 2
	ori	$a2, $a1, 4032
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
	ori	$a1, $zero, 1088
	ld.d	$a0, $s4, 168
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(mf_samples_to_encode)
	ori	$a1, $zero, 752
	st.w	$a1, $s5, %pc_lo12(mf_size)
.LBB6_11:                               # %if.end30
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_13
# %bb.12:                               # %if.then34
	st.b	$zero, $s0, %pc_lo12(lame_encode_buffer_interleaved.frame_buffered)
.LBB6_13:                               # %if.end35
	ld.w	$a0, $s4, 8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_18
# %bb.14:                               # %land.lhs.true39
	ld.w	$a1, $s4, 204
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB6_18
# %bb.15:                               # %land.lhs.true39
	blt	$s2, $a0, .LBB6_18
# %bb.16:                               # %for.body46.preheader
	addi.d	$a0, $s3, 2
	move	$a1, $s2
	.p2align	4, , 16
.LBB6_17:                               # %for.body46
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $a0, -2
	ld.h	$a3, $a0, 0
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	st.h	$a2, $a0, -2
	st.h	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_17
	b	.LBB6_19
.LBB6_18:                               # %if.end68
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB6_56
.LBB6_19:                               # %while.body.lr.ph
	move	$s0, $zero
	addi.w	$a0, $fp, 752
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mfbuf)
	addi.d	$t7, $a0, %pc_lo12(mfbuf)
	ld.w	$a2, $s4, 188
	ld.w	$a0, $s5, %pc_lo12(mf_size)
	ori	$t8, $zero, 1
	lu12i.w	$a1, 1
	pcalau12i	$a3, %pc_hi20(.LCPI6_2)
	xvld	$xr0, $a3, %pc_lo12(.LCPI6_2)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.LCPI6_3)
	xvld	$xr0, $a3, %pc_lo12(.LCPI6_3)
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	ori	$s8, $a1, 2016
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	st.d	$t7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               # %cleanup140
                                        #   in Loop: Header=BB6_21 Depth=1
	slli.w	$a1, $s1, 1
	sub.w	$s2, $s2, $s1
	alsl.d	$s3, $a1, $s3, 1
	move	$a1, $s0
	blez	$s2, .LBB6_57
.LBB6_21:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_53 Depth 2
                                        #     Child Loop BB6_50 Depth 2
                                        #     Child Loop BB6_27 Depth 2
                                        #     Child Loop BB6_34 Depth 2
                                        #       Child Loop BB6_39 Depth 3
                                        #       Child Loop BB6_43 Depth 3
                                        #       Child Loop BB6_46 Depth 3
	slt	$a1, $a2, $s2
	masknez	$a3, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a3
	blt	$a2, $t8, .LBB6_28
# %bb.22:                               # %iter.check141
                                        #   in Loop: Header=BB6_21 Depth=1
	slt	$a1, $t8, $s1
	masknez	$a3, $t8, $a1
	maskeqz	$a1, $s1, $a1
	or	$a6, $a1, $a3
	ori	$a1, $zero, 8
	blt	$s1, $a1, .LBB6_25
# %bb.23:                               # %vector.memcheck136
                                        #   in Loop: Header=BB6_21 Depth=1
	alsl.d	$a3, $a0, $t7, 1
	alsl.d	$a4, $a6, $s3, 2
	bgeu	$a3, $a4, .LBB6_47
# %bb.24:                               # %vector.memcheck136
                                        #   in Loop: Header=BB6_21 Depth=1
	add.d	$a3, $a0, $a6
	alsl.d	$a3, $a3, $t7, 1
	add.d	$a3, $a3, $s8
	bgeu	$s3, $a3, .LBB6_47
.LBB6_25:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a3, $zero
.LBB6_26:                               # %for.body78.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	alsl.d	$a1, $a3, $s3, 2
	addi.d	$a4, $a1, 2
	add.d	$a1, $a3, $a0
	alsl.d	$a5, $a1, $t7, 1
	sub.d	$a1, $a6, $a3
	.p2align	4, , 16
.LBB6_27:                               # %for.body78
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a4, -2
	st.h	$a3, $a5, 0
	ld.h	$a3, $a4, 0
	stx.h	$a3, $a5, $s8
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 2
	bnez	$a1, .LBB6_27
.LBB6_28:                               # %for.end94
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.w	$a1, $fp, %pc_lo12(mf_samples_to_encode)
	add.w	$a0, $a0, $s1
	st.w	$a0, $s5, %pc_lo12(mf_size)
	add.d	$a1, $a1, $s1
	st.w	$a1, $fp, %pc_lo12(mf_samples_to_encode)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_20
# %bb.29:                               # %if.then101
                                        #   in Loop: Header=BB6_21 Depth=1
	add.d	$a2, $t7, $s8
	move	$a0, $s4
	move	$a1, $t7
	move	$a4, $s7
	move	$a5, $s6
	pcaddu18i	$ra, %call36(lame_encode_frame)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 32
	ori	$t8, $zero, 1
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB6_57
# %bb.30:                               # %if.end106
                                        #   in Loop: Header=BB6_21 Depth=1
	add.d	$s7, $s7, $a0
	ld.w	$a2, $s4, 188
	ld.w	$a3, $s5, %pc_lo12(mf_size)
	add.w	$s0, $a0, $s0
	ld.w	$a4, $fp, %pc_lo12(mf_samples_to_encode)
	ld.w	$a1, $s4, 204
	sub.w	$a0, $a3, $a2
	st.w	$a0, $s5, %pc_lo12(mf_size)
	sub.d	$a3, $a4, $a2
	st.w	$a3, $fp, %pc_lo12(mf_samples_to_encode)
	blt	$a1, $t8, .LBB6_20
# %bb.31:                               # %if.end106
                                        #   in Loop: Header=BB6_21 Depth=1
	blt	$a0, $t8, .LBB6_20
# %bb.32:                               # %for.cond119.preheader.us.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$a3, $zero
	slli.d	$a4, $a2, 1
	sub.d	$a5, $zero, $a4
	sltui	$a6, $a0, 8
	sltui	$a5, $a5, 64
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a0, 30, 5
	slli.d	$a6, $a6, 5
	andi	$a7, $a0, 24
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	sub.d	$t1, $zero, $t0
	move	$t2, $t7
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_33:                               # %for.cond119.for.inc136_crit_edge.us
                                        #   in Loop: Header=BB6_34 Depth=2
	addi.d	$a3, $a3, 1
	add.d	$t2, $t2, $s8
	beq	$a3, $a1, .LBB6_20
.LBB6_34:                               # %iter.check
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_39 Depth 3
                                        #       Child Loop BB6_43 Depth 3
                                        #       Child Loop BB6_46 Depth 3
	beqz	$a5, .LBB6_36
# %bb.35:                               #   in Loop: Header=BB6_34 Depth=2
	move	$t5, $zero
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_36:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_34 Depth=2
	bgeu	$a0, $ra, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_34 Depth=2
	move	$t6, $zero
	b	.LBB6_42
	.p2align	4, , 16
.LBB6_38:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_34 Depth=2
	move	$t3, $t2
	move	$t4, $a6
	.p2align	4, , 16
.LBB6_39:                               # %vector.body
                                        #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t3, $a4
	xvldx	$xr0, $t3, $a4
	xvld	$xr1, $t5, 32
	xvst	$xr0, $t3, 0
	xvst	$xr1, $t3, 32
	addi.d	$t4, $t4, -32
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB6_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB6_34 Depth=2
	beq	$a6, $a0, .LBB6_33
# %bb.41:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_34 Depth=2
	move	$t6, $a6
	move	$t5, $a6
	beqz	$a7, .LBB6_45
.LBB6_42:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_34 Depth=2
	add.d	$t3, $t1, $t6
	alsl.d	$t4, $t6, $t2, 1
	add.d	$t5, $a2, $t6
	slli.d	$t5, $t5, 1
	.p2align	4, , 16
.LBB6_43:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $t2, $t5
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB6_43
# %bb.44:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_34 Depth=2
	move	$t5, $t0
	beq	$t0, $a0, .LBB6_33
.LBB6_45:                               # %for.body122.us.preheader
                                        #   in Loop: Header=BB6_34 Depth=2
	alsl.d	$t3, $t5, $t2, 1
	add.d	$t4, $a2, $t5
	slli.d	$t4, $t4, 1
	sub.d	$t5, $a0, $t5
	.p2align	4, , 16
.LBB6_46:                               # %for.body122.us
                                        #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$t6, $t2, $t4
	st.h	$t6, $t3, 0
	addi.d	$t3, $t3, 2
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB6_46
	b	.LBB6_33
.LBB6_47:                               # %vector.main.loop.iter.check143
                                        #   in Loop: Header=BB6_21 Depth=1
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	bge	$s1, $a1, .LBB6_52
# %bb.48:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a3, $zero
.LBB6_49:                               # %vec.epilog.ph154
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$a1, $a3
	move	$ra, $a6
	bstrpick.d	$a3, $a6, 30, 3
	slli.d	$a3, $a3, 3
	xvreplgr2vr.d	$xr1, $a1
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvor.v	$xr0, $xr1, $xr0
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvor.v	$xr1, $xr1, $xr2
	sub.d	$a4, $a1, $a3
	add.d	$a1, $a1, $a0
	alsl.d	$a5, $a1, $t7, 1
	.p2align	4, , 16
.LBB6_50:                               # %vec.epilog.vector.body160
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr2, $xr0, 2
	xvslli.d	$xr3, $xr1, 2
	xvpickve2gr.d	$a1, $xr3, 0
	add.d	$a6, $s3, $a1
	xvpickve2gr.d	$a7, $xr3, 1
	add.d	$t0, $s3, $a7
	xvpickve2gr.d	$t1, $xr3, 2
	add.d	$t2, $s3, $t1
	xvpickve2gr.d	$t3, $xr3, 3
	add.d	$t4, $s3, $t3
	xvpickve2gr.d	$t5, $xr2, 0
	add.d	$t6, $s3, $t5
	xvpickve2gr.d	$t7, $xr2, 1
	add.d	$t8, $s3, $t7
	xvpickve2gr.d	$fp, $xr2, 2
	add.d	$s0, $s3, $fp
	xvpickve2gr.d	$s4, $xr2, 3
	add.d	$s5, $s3, $s4
	ldx.h	$a1, $s3, $a1
	ldx.h	$a7, $s3, $a7
	ldx.h	$t1, $s3, $t1
	ldx.h	$t3, $s3, $t3
	ldx.h	$t5, $s3, $t5
	ldx.h	$t7, $s3, $t7
	ldx.h	$fp, $s3, $fp
	ldx.h	$s4, $s3, $s4
	vinsgr2vr.h	$vr2, $a1, 0
	vinsgr2vr.h	$vr2, $a7, 1
	vinsgr2vr.h	$vr2, $t1, 2
	vinsgr2vr.h	$vr2, $t3, 3
	vinsgr2vr.h	$vr2, $t5, 4
	vinsgr2vr.h	$vr2, $t7, 5
	vinsgr2vr.h	$vr2, $fp, 6
	vinsgr2vr.h	$vr2, $s4, 7
	vst	$vr2, $a5, 0
	ld.h	$a1, $a6, 2
	ld.h	$a6, $t0, 2
	ld.h	$a7, $t2, 2
	ld.h	$t0, $t4, 2
	ld.h	$t1, $t6, 2
	ld.h	$t2, $t8, 2
	ld.h	$t3, $s0, 2
	ld.h	$t4, $s5, 2
	vinsgr2vr.h	$vr2, $a1, 0
	vinsgr2vr.h	$vr2, $a6, 1
	vinsgr2vr.h	$vr2, $a7, 2
	vinsgr2vr.h	$vr2, $t0, 3
	vinsgr2vr.h	$vr2, $t1, 4
	vinsgr2vr.h	$vr2, $t2, 5
	vinsgr2vr.h	$vr2, $t3, 6
	vinsgr2vr.h	$vr2, $t4, 7
	vstx	$vr2, $a5, $s8
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB6_50
# %bb.51:                               # %vec.epilog.middle.block165
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ori	$t8, $zero, 1
	move	$a6, $ra
	bne	$a3, $ra, .LBB6_26
	b	.LBB6_28
.LBB6_52:                               # %vector.ph144
                                        #   in Loop: Header=BB6_21 Depth=1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a6, 30, 4
	slli.d	$a3, $a3, 4
	pcalau12i	$a4, %pc_hi20(.LCPI6_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI6_0)
	pcalau12i	$a4, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a4, %pc_lo12(.LCPI6_1)
	pcalau12i	$a4, %pc_hi20(mfbuf)
	addi.d	$a4, $a4, %pc_lo12(mfbuf)
	alsl.d	$a4, $a0, $a4, 1
	move	$a5, $a3
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr3, $sp, 64                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB6_53:                               # %vector.body147
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvslli.d	$xr5, $xr0, 2
	xvslli.d	$xr4, $xr1, 2
	xvslli.d	$xr6, $xr3, 2
	xvslli.d	$xr7, $xr2, 2
	xvpickve2gr.d	$fp, $xr7, 0
	xvpickve2gr.d	$s5, $xr7, 1
	xvpickve2gr.d	$s0, $xr7, 2
	xvpickve2gr.d	$s7, $xr7, 3
	xvpickve2gr.d	$t6, $xr6, 0
	xvpickve2gr.d	$t7, $xr6, 1
	xvpickve2gr.d	$t8, $xr6, 2
	xvpickve2gr.d	$ra, $xr6, 3
	xvpickve2gr.d	$t3, $xr4, 0
	xvpickve2gr.d	$t4, $xr4, 1
	xvpickve2gr.d	$t1, $xr4, 2
	xvpickve2gr.d	$t2, $xr4, 3
	xvpickve2gr.d	$a7, $xr5, 0
	xvpickve2gr.d	$t0, $xr5, 1
	ldx.h	$t5, $s3, $fp
	xvpickve2gr.d	$a6, $xr5, 2
	ldx.h	$s4, $s3, $s5
	ldx.h	$s6, $s3, $s0
	vinsgr2vr.h	$vr4, $t5, 0
	ldx.h	$t5, $s3, $s7
	vinsgr2vr.h	$vr4, $s4, 1
	ldx.h	$s4, $s3, $t6
	vinsgr2vr.h	$vr4, $s6, 2
	ldx.h	$s6, $s3, $t7
	vinsgr2vr.h	$vr4, $t5, 3
	ldx.h	$a1, $s3, $t8
	vinsgr2vr.h	$vr4, $s4, 4
	ldx.h	$s4, $s3, $ra
	vinsgr2vr.h	$vr4, $s6, 5
	xvpickve2gr.d	$t5, $xr5, 3
	vinsgr2vr.h	$vr4, $a1, 6
	ldx.h	$a1, $s3, $t3
	vinsgr2vr.h	$vr4, $s4, 7
	ldx.h	$s4, $s3, $t4
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $a1, 0
	ldx.h	$a1, $s3, $t1
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s4, 1
	ldx.h	$s4, $s3, $t2
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $a1, 2
	ldx.h	$a1, $s3, $a7
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s4, 3
	ldx.h	$s4, $s3, $t0
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $a1, 4
	ldx.h	$a1, $s3, $a6
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s4, 5
	ldx.h	$s4, $s3, $t5
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $a1, 6
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s4, 7
	add.d	$a1, $s3, $fp
	add.d	$fp, $s3, $s5
	add.d	$s0, $s3, $s0
	add.d	$s4, $s3, $s7
	ld.h	$a1, $a1, 2
	ld.h	$fp, $fp, 2
	ld.h	$s0, $s0, 2
	ld.h	$s4, $s4, 2
	vinsgr2vr.h	$vr6, $a1, 0
	vinsgr2vr.h	$vr6, $fp, 1
	vinsgr2vr.h	$vr6, $s0, 2
	vinsgr2vr.h	$vr6, $s4, 3
	add.d	$a1, $s3, $t6
	add.d	$t6, $s3, $t7
	add.d	$t7, $s3, $t8
	add.d	$t8, $s3, $ra
	ld.h	$a1, $a1, 2
	ld.h	$t6, $t6, 2
	ld.h	$t7, $t7, 2
	ld.h	$t8, $t8, 2
	vinsgr2vr.h	$vr6, $a1, 4
	vinsgr2vr.h	$vr6, $t6, 5
	vinsgr2vr.h	$vr6, $t7, 6
	vinsgr2vr.h	$vr6, $t8, 7
	add.d	$a1, $s3, $t3
	ld.h	$a1, $a1, 2
	add.d	$t3, $s3, $t4
	ld.h	$t3, $t3, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a1, 0
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t3, 1
	add.d	$a1, $s3, $t1
	add.d	$t1, $s3, $t2
	ld.h	$a1, $a1, 2
	ld.h	$t1, $t1, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a1, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t1, 3
	add.d	$a1, $s3, $a7
	add.d	$a7, $s3, $t0
	ld.h	$a1, $a1, 2
	ld.h	$a7, $a7, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a1, 4
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a7, 5
	add.d	$a1, $s3, $a6
	add.d	$a6, $s3, $t5
	ld.h	$a1, $a1, 2
	ld.h	$a6, $a6, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a1, 6
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a6, 7
	xvpermi.q	$xr4, $xr5, 2
	xvst	$xr4, $a4, 0
	xvpermi.q	$xr6, $xr7, 2
	xvstx	$xr6, $a4, $s8
	xvaddi.du	$xr2, $xr2, 16
	xvaddi.du	$xr3, $xr3, 16
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_53
# %bb.54:                               # %middle.block150
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ori	$t8, $zero, 1
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	beq	$a3, $a6, .LBB6_28
# %bb.55:                               # %vec.epilog.iter.check155
                                        #   in Loop: Header=BB6_21 Depth=1
	andi	$a1, $a6, 8
	bnez	$a1, .LBB6_49
	b	.LBB6_26
.LBB6_56:
	move	$a1, $zero
.LBB6_57:                               # %cleanup141
	move	$a0, $a1
	b	.LBB6_70
.LBB6_58:                               # %vector.main.loop.iter.check172
	ori	$a1, $zero, 16
	bgeu	$s2, $a1, .LBB6_63
# %bb.59:
	move	$a1, $zero
.LBB6_60:                               # %vec.epilog.ph185
	move	$a4, $a1
	bstrpick.d	$a1, $s2, 30, 3
	pcalau12i	$a2, %pc_hi20(.LCPI6_2)
	xvld	$xr0, $a2, %pc_lo12(.LCPI6_2)
	pcalau12i	$a2, %pc_hi20(.LCPI6_3)
	xvld	$xr1, $a2, %pc_lo12(.LCPI6_3)
	slli.d	$a1, $a1, 3
	xvreplgr2vr.d	$xr2, $a4
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr2, $xr1
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $a0, 1
	alsl.d	$a4, $a4, $s4, 1
	.p2align	4, , 16
.LBB6_61:                               # %vec.epilog.vector.body194
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr2, $xr0, 2
	xvslli.d	$xr3, $xr1, 2
	xvpickve2gr.d	$a5, $xr3, 0
	add.d	$a6, $s3, $a5
	xvpickve2gr.d	$a7, $xr3, 1
	add.d	$t0, $s3, $a7
	xvpickve2gr.d	$t1, $xr3, 2
	add.d	$t2, $s3, $t1
	xvpickve2gr.d	$t3, $xr3, 3
	add.d	$t4, $s3, $t3
	xvpickve2gr.d	$t5, $xr2, 0
	add.d	$t6, $s3, $t5
	xvpickve2gr.d	$t7, $xr2, 1
	add.d	$t8, $s3, $t7
	xvpickve2gr.d	$fp, $xr2, 2
	add.d	$s0, $s3, $fp
	xvpickve2gr.d	$s1, $xr2, 3
	add.d	$s5, $s3, $s1
	ldx.h	$a5, $s3, $a5
	ldx.h	$a7, $s3, $a7
	ldx.h	$t1, $s3, $t1
	ldx.h	$t3, $s3, $t3
	ldx.h	$t5, $s3, $t5
	ldx.h	$t7, $s3, $t7
	ldx.h	$fp, $s3, $fp
	ldx.h	$s1, $s3, $s1
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr2, $a7, 1
	vinsgr2vr.h	$vr2, $t1, 2
	vinsgr2vr.h	$vr2, $t3, 3
	vinsgr2vr.h	$vr2, $t5, 4
	vinsgr2vr.h	$vr2, $t7, 5
	vinsgr2vr.h	$vr2, $fp, 6
	vinsgr2vr.h	$vr2, $s1, 7
	vst	$vr2, $a4, 0
	ld.h	$a5, $a6, 2
	ld.h	$a6, $t0, 2
	ld.h	$a7, $t2, 2
	ld.h	$t0, $t4, 2
	ld.h	$t1, $t6, 2
	ld.h	$t2, $t8, 2
	ld.h	$t3, $s0, 2
	ld.h	$t4, $s5, 2
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr2, $a6, 1
	vinsgr2vr.h	$vr2, $a7, 2
	vinsgr2vr.h	$vr2, $t0, 3
	vinsgr2vr.h	$vr2, $t1, 4
	vinsgr2vr.h	$vr2, $t2, 5
	vinsgr2vr.h	$vr2, $t3, 6
	vinsgr2vr.h	$vr2, $t4, 7
	vst	$vr2, $a3, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB6_61
# %bb.62:                               # %vec.epilog.middle.block199
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $s2, .LBB6_67
	b	.LBB6_69
.LBB6_63:                               # %vector.ph173
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$ra, $s6
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI6_0)
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	xvld	$xr2, $a1, %pc_lo12(.LCPI6_2)
	pcalau12i	$a1, %pc_hi20(.LCPI6_3)
	xvld	$xr3, $a1, %pc_lo12(.LCPI6_3)
	bstrpick.d	$a1, $s2, 30, 4
	slli.d	$a1, $a1, 4
	move	$a2, $s4
	move	$a3, $a0
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_64:                               # %vector.body176
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr5, $xr0, 2
	xvslli.d	$xr4, $xr1, 2
	xvslli.d	$xr6, $xr2, 2
	xvslli.d	$xr7, $xr3, 2
	xvpickve2gr.d	$fp, $xr7, 0
	xvpickve2gr.d	$s0, $xr7, 1
	xvpickve2gr.d	$s1, $xr7, 2
	xvpickve2gr.d	$s5, $xr7, 3
	xvpickve2gr.d	$t5, $xr6, 0
	xvpickve2gr.d	$t6, $xr6, 1
	xvpickve2gr.d	$t7, $xr6, 2
	xvpickve2gr.d	$t8, $xr6, 3
	xvpickve2gr.d	$t2, $xr4, 0
	xvpickve2gr.d	$t3, $xr4, 1
	xvpickve2gr.d	$t0, $xr4, 2
	xvpickve2gr.d	$t1, $xr4, 3
	xvpickve2gr.d	$a6, $xr5, 0
	xvpickve2gr.d	$a7, $xr5, 1
	ldx.h	$t4, $s3, $fp
	xvpickve2gr.d	$a5, $xr5, 2
	ldx.h	$s6, $s3, $s0
	ldx.h	$s7, $s3, $s1
	vinsgr2vr.h	$vr4, $t4, 0
	ldx.h	$t4, $s3, $s5
	vinsgr2vr.h	$vr4, $s6, 1
	ldx.h	$s6, $s3, $t5
	vinsgr2vr.h	$vr4, $s7, 2
	ldx.h	$s7, $s3, $t6
	vinsgr2vr.h	$vr4, $t4, 3
	ldx.h	$s8, $s3, $t7
	vinsgr2vr.h	$vr4, $s6, 4
	ldx.h	$s6, $s3, $t8
	vinsgr2vr.h	$vr4, $s7, 5
	xvpickve2gr.d	$t4, $xr5, 3
	vinsgr2vr.h	$vr4, $s8, 6
	ldx.h	$s7, $s3, $t2
	vinsgr2vr.h	$vr4, $s6, 7
	ldx.h	$s6, $s3, $t3
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s7, 0
	ldx.h	$s7, $s3, $t0
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s6, 1
	ldx.h	$s6, $s3, $t1
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s7, 2
	ldx.h	$s7, $s3, $a6
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s6, 3
	ldx.h	$s6, $s3, $a7
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s7, 4
	ldx.h	$s7, $s3, $a5
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s6, 5
	ldx.h	$s6, $s3, $t4
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s7, 6
	xvpermi.q	$xr4, $xr5, 2
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.h	$vr5, $s6, 7
	add.d	$fp, $s3, $fp
	add.d	$s0, $s3, $s0
	add.d	$s1, $s3, $s1
	add.d	$s5, $s3, $s5
	ld.h	$fp, $fp, 2
	ld.h	$s0, $s0, 2
	ld.h	$s1, $s1, 2
	ld.h	$s5, $s5, 2
	vinsgr2vr.h	$vr6, $fp, 0
	vinsgr2vr.h	$vr6, $s0, 1
	vinsgr2vr.h	$vr6, $s1, 2
	vinsgr2vr.h	$vr6, $s5, 3
	add.d	$t5, $s3, $t5
	add.d	$t6, $s3, $t6
	add.d	$t7, $s3, $t7
	add.d	$t8, $s3, $t8
	ld.h	$t5, $t5, 2
	ld.h	$t6, $t6, 2
	ld.h	$t7, $t7, 2
	ld.h	$t8, $t8, 2
	vinsgr2vr.h	$vr6, $t5, 4
	vinsgr2vr.h	$vr6, $t6, 5
	vinsgr2vr.h	$vr6, $t7, 6
	vinsgr2vr.h	$vr6, $t8, 7
	add.d	$t2, $s3, $t2
	ld.h	$t2, $t2, 2
	add.d	$t3, $s3, $t3
	ld.h	$t3, $t3, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t2, 0
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t3, 1
	add.d	$t0, $s3, $t0
	add.d	$t1, $s3, $t1
	ld.h	$t0, $t0, 2
	ld.h	$t1, $t1, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t0, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $t1, 3
	add.d	$a6, $s3, $a6
	add.d	$a7, $s3, $a7
	ld.h	$a6, $a6, 2
	ld.h	$a7, $a7, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a6, 4
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a7, 5
	add.d	$a5, $s3, $a5
	add.d	$a6, $s3, $t4
	ld.h	$a5, $a5, 2
	ld.h	$a6, $a6, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a5, 6
	xvpermi.q	$xr6, $xr7, 2
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.h	$vr7, $a6, 7
	xvpermi.q	$xr4, $xr5, 2
	xvst	$xr4, $a2, 0
	xvpermi.q	$xr6, $xr7, 2
	xvst	$xr6, $a3, 0
	xvaddi.du	$xr3, $xr3, 16
	xvaddi.du	$xr2, $xr2, 16
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB6_64
# %bb.65:                               # %middle.block181
	move	$s6, $ra
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $s2, .LBB6_69
# %bb.66:                               # %vec.epilog.iter.check186
	andi	$a2, $s2, 8
	bnez	$a2, .LBB6_60
.LBB6_67:                               # %for.body.preheader
	alsl.d	$a2, $a1, $s3, 2
	addi.d	$a2, $a2, 2
	alsl.d	$a3, $a1, $a0, 1
	alsl.d	$a4, $a1, $s4, 1
	sub.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB6_68:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, -2
	ld.h	$a6, $a2, 0
	st.h	$a5, $a4, 0
	st.h	$a6, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 2
	bnez	$a1, .LBB6_68
.LBB6_69:                               # %for.end
	move	$s3, $a0
	move	$a0, $a7
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s6
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_70:                               # %cleanup141
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
.Lfunc_end6:
	.size	lame_encode_buffer_interleaved, .Lfunc_end6-lame_encode_buffer_interleaved
                                        # -- End function
	.globl	lame_encode                     # -- Begin function lame_encode
	.p2align	5
	.type	lame_encode,@function
lame_encode:                            # @lame_encode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(mf_samples_to_encode)
	ld.w	$s0, $fp, %pc_lo12(mf_samples_to_encode)
	ld.w	$a6, $a0, 200
	move	$a5, $a3
	move	$a4, $a2
	addi.d	$a2, $a1, 2047
	addi.d	$a2, $a2, 257
	alsl.w	$a3, $a6, $a6, 3
	slli.w	$a3, $a3, 6
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, %pc_lo12(mf_samples_to_encode)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	lame_encode, .Lfunc_end7-lame_encode
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function lame_init
.LCPI8_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI8_2:
	.word	2                               # 0x2
	.word	44100                           # 0xac44
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.text
	.globl	lame_init
	.p2align	5
	.type	lame_init,@function
lame_init:                              # @lame_init
# %bb.0:                                # %entry
	st.d	$zero, $a0, 156
	st.d	$zero, $a0, 144
	st.w	$zero, $a0, 152
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
	st.d	$zero, $a0, 120
	st.w	$zero, $a0, 256
	vst	$vr0, $a0, 232
	ori	$a1, $zero, 32
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 248
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI8_0)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 216
	vst	$vr0, $a0, 168
	xvst	$xr1, $a0, 88
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(.LCPI8_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI8_1)
	ori	$a2, $zero, 1
	lu32i.d	$a2, 13
	st.d	$a2, $a0, 208
	vst	$vr1, $a0, 56
	pcalau12i	$a2, %pc_hi20(.LCPI8_2)
	xvld	$xr1, $a2, %pc_lo12(.LCPI8_2)
	st.d	$a1, $a0, 192
	vst	$vr0, $a0, 40
	st.w	$zero, $a0, 164
	xvst	$xr1, $a0, 8
	addi.w	$a1, $zero, -1
	pcalau12i	$a2, %got_pc_hi20(id3tag)
	ld.d	$a2, $a2, %got_pc_lo12(id3tag)
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 0
	vst	$vr0, $a0, 128
	st.w	$zero, $a2, 0
	ret
.Lfunc_end8:
	.size	lame_init, .Lfunc_end8-lame_init
                                        # -- End function
	.globl	lame_encode_finish              # -- Begin function lame_encode_finish
	.p2align	5
	.type	lame_encode_finish,@function
lame_encode_finish:                     # @lame_encode_finish
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -608
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 512
	addi.d	$a0, $sp, 8
	addi.d	$s2, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(mf_samples_to_encode)
	ld.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB9_6
# %bb.1:                                # %while.body.lr.ph
	addi.d	$a0, $s2, 2047
	addi.d	$s3, $a0, 257
	move	$s4, $zero
	addi.w	$s2, $zero, -1
	beqz	$s0, .LBB9_5
	.p2align	4, , 16
.LBB9_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 200
	sub.w	$a5, $s0, $s4
	alsl.w	$a0, $a0, $a0, 3
	slli.w	$a3, $a0, 6
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $fp
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	beq	$a0, $s2, .LBB9_11
# %bb.3:                                # %if.end5
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a1, $s1, 188
	add.d	$fp, $fp, $a0
	add.d	$s4, $a0, $s4
	sub.w	$s6, $s6, $a1
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	bgtz	$s6, .LBB9_2
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_4:                                # %if.end5.us
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a1, $s1, 188
	add.d	$fp, $fp, $a0
	add.d	$s4, $a0, $s4
	sub.w	$s6, $s6, $a1
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	blez	$s6, .LBB9_7
.LBB9_5:                                # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 200
	alsl.w	$a0, $a0, $a0, 3
	slli.w	$a3, $a0, 6
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(lame_encode_buffer)
	jirl	$ra, $ra, 0
	st.w	$s6, $s5, %pc_lo12(mf_samples_to_encode)
	bne	$a0, $s2, .LBB9_4
	b	.LBB9_11
.LBB9_6:
	move	$s4, $zero
.LBB9_7:                                # %while.end
	ld.d	$a0, $s1, 168
	ld.w	$a2, $s1, 20
	addi.d	$a1, $a0, -1
	st.d	$a1, $s1, 168
	bnez	$a2, .LBB9_10
# %bb.8:                                # %land.lhs.true
	ld.w	$a0, $s1, 32
	bnez	$a0, .LBB9_10
# %bb.9:                                # %if.then8
	ld.w	$a0, $s1, 16
	ld.d	$a2, $s1, 176
	ld.w	$a3, $s1, 188
	pcaddu18i	$ra, %call36(timestatus)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB9_10:                               # %if.end13
	pcaddu18i	$ra, %call36(III_FlushBitstream)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $s4
	sltui	$a1, $s0, 1
	masknez	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a2, $a0, %pc_lo12(bs)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(copy_buffer)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	add.w	$a0, $a0, $s4
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
.LBB9_11:                               # %cleanup
	pcalau12i	$a0, %pc_hi20(bs)
	addi.d	$a0, $a0, %pc_lo12(bs)
	pcaddu18i	$ra, %call36(desalloc_buffer)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 624
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end9:
	.size	lame_encode_finish, .Lfunc_end9-lame_encode_finish
                                        # -- End function
	.globl	lame_mp3_tags                   # -- Begin function lame_mp3_tags
	.p2align	5
	.type	lame_mp3_tags,@function
lame_mp3_tags:                          # @lame_mp3_tags
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB10_2
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 92
	ori	$a1, $zero, 100
	mul.w	$a0, $a0, $a1
	lu12i.w	$a1, 233016
	ori	$a1, $a1, 3641
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a2, $a0, 33
	ld.w	$a3, $fp, 192
	ld.d	$a0, $fp, 136
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 1
	sub.w	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(PutVbrTag)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$a0, $a0, %got_pc_lo12(id3tag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB10_4
# %bb.3:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(id3tag)
	ld.d	$s0, $a0, %got_pc_lo12(id3tag)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(id3_buildtag)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(id3_writetag)
	jr	$t8
.LBB10_4:                               # %if.end5
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	lame_mp3_tags, .Lfunc_end10-lame_mp3_tags
                                        # -- End function
	.globl	lame_version                    # -- Begin function lame_version
	.p2align	5
	.type	lame_version,@function
lame_version:                           # @lame_version
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_lame_version)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 20
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(strncpy)
	jr	$t8
.Lfunc_end11:
	.size	lame_version, .Lfunc_end11-lame_version
                                        # -- End function
	.type	bs,@object                      # @bs
	.local	bs
	.comm	bs,56,8
	.type	l3_side,@object                 # @l3_side
	.local	l3_side
	.comm	l3_side,528,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning: highpass filter disabled.  highpass frequency to small\n"
	.size	.L.str, 65

	.type	lame_print_config.mode_names,@object # @lame_print_config.mode_names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
lame_print_config.mode_names:
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.size	lame_print_config.mode_names, 32

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"stereo"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"j-stereo"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"dual-ch"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"single-ch"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Autoconverting from stereo to mono. Setting encoding to mono mode.\n"
	.size	.L.str.5, 68

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Resampling:  input=%ikHz  output=%ikHz\n"
	.size	.L.str.6, 40

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\n"
	.size	.L.str.7, 70

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\n"
	.size	.L.str.8, 70

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Analyzing %s \n"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Encoding %s to %s\n"
	.size	.L.str.10, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"stdin"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"stdout"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\n"
	.size	.L.str.14, 59

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\n"
	.size	.L.str.15, 67

	.type	lame_encode_frame.frameBits,@object # @lame_encode_frame.frameBits
	.local	lame_encode_frame.frameBits
	.comm	lame_encode_frame.frameBits,8,8
	.type	lame_encode_frame.frac_SpF,@object # @lame_encode_frame.frac_SpF
	.local	lame_encode_frame.frac_SpF
	.comm	lame_encode_frame.frac_SpF,8,8
	.type	lame_encode_frame.slot_lag,@object # @lame_encode_frame.slot_lag
	.local	lame_encode_frame.slot_lag
	.comm	lame_encode_frame.slot_lag,8,8
	.type	lame_encode_frame.sentBits,@object # @lame_encode_frame.sentBits
	.local	lame_encode_frame.sentBits
	.comm	lame_encode_frame.sentBits,8,8
	.type	lame_encode_frame.ms_ratio,@object # @lame_encode_frame.ms_ratio
	.local	lame_encode_frame.ms_ratio
	.comm	lame_encode_frame.ms_ratio,16,8
	.type	lame_encode_frame.ms_ener_ratio,@object # @lame_encode_frame.ms_ener_ratio
	.local	lame_encode_frame.ms_ener_ratio
	.comm	lame_encode_frame.ms_ener_ratio,16,8
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Sent %ld bits = %ld slots plus %ld\n"
	.size	.L.str.16, 36

	.type	fill_buffer_resample.itime,@object # @fill_buffer_resample.itime
	.local	fill_buffer_resample.itime
	.comm	fill_buffer_resample.itime,16,8
	.type	fill_buffer_resample.inbuf_old,@object # @fill_buffer_resample.inbuf_old
	.local	fill_buffer_resample.inbuf_old
	.comm	fill_buffer_resample.inbuf_old,20,2
	.type	fill_buffer_resample.init,@object # @fill_buffer_resample.init
	.local	fill_buffer_resample.init
	.comm	fill_buffer_resample.init,8,4
	.type	lame_encode_buffer.frame_buffered,@object # @lame_encode_buffer.frame_buffered
	.local	lame_encode_buffer.frame_buffered
	.comm	lame_encode_buffer.frame_buffered,1,4
	.type	mfbuf,@object                   # @mfbuf
	.local	mfbuf
	.comm	mfbuf,12224,8
	.type	mf_samples_to_encode,@object    # @mf_samples_to_encode
	.local	mf_samples_to_encode
	.comm	mf_samples_to_encode,4,4
	.type	mf_size,@object                 # @mf_size
	.local	mf_size
	.comm	mf_size,4,4
	.type	lame_encode_buffer_interleaved.frame_buffered,@object # @lame_encode_buffer_interleaved.frame_buffered
	.local	lame_encode_buffer_interleaved.frame_buffered
	.comm	lame_encode_buffer_interleaved.frame_buffered,1,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bs
	.addrsig_sym l3_side
	.addrsig_sym id3tag
	.addrsig_sym lame_encode_frame.ms_ratio
	.addrsig_sym lame_encode_frame.ms_ener_ratio
	.addrsig_sym mfbuf
