	.file	"fft.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fft
.LCPI0_0:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	fft
	.p2align	5
	.type	fft,@function
fft:                                    # @fft
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	srai.d	$a0, $a0, 31
	xor	$a1, $s0, $a0
	sub.w	$s3, $a1, $a0
	bstrpick.d	$s5, $s3, 31, 2
	pcalau12i	$a1, %pc_hi20(fft.last_n)
	bstrpick.d	$s4, $s3, 31, 0
	pcalau12i	$s6, %pc_hi20(fft.bitrev)
	beqz	$s0, .LBB0_2
# %bb.1:                                # %entry
	ld.w	$a0, $a1, %pc_lo12(fft.last_n)
	beq	$s3, $a0, .LBB0_35
.LBB0_2:                                # %if.then3
	pcalau12i	$s1, %pc_hi20(fft.sintbl)
	ld.d	$a0, $s1, %pc_lo12(fft.sintbl)
	st.w	$s3, $a1, %pc_lo12(fft.last_n)
	add.w	$a1, $s5, $s3
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(fft.bitrev)
	move	$s2, $a0
	st.d	$a0, $s1, %pc_lo12(fft.sintbl)
	slli.d	$a1, $s3, 2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(fft.bitrev)
	beqz	$s2, .LBB0_8
# %bb.3:                                # %if.then3
	move	$s1, $a0
	beqz	$a0, .LBB0_8
# %bb.4:                                # %if.end14
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fa1, $s4
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fadd.d	$fa1, $fa0, $fa0
	fmul.d	$fs0, $fa0, $fa1
	vldi	$vr0, -1024
	fsub.d	$fa0, $fa0, $fs0
	fmul.d	$fa1, $fs0, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_62
.LBB0_5:                                # %if.end14.split
	bstrpick.d	$a0, $s3, 31, 1
	bstrpick.d	$a2, $s3, 31, 3
	addi.w	$a1, $s5, 0
	slli.d	$a3, $a1, 2
	lu12i.w	$a4, 260096
	stx.w	$a4, $s2, $a3
	ori	$a3, $zero, 16
	st.w	$zero, $s2, 0
	bltu	$s3, $a3, .LBB0_9
# %bb.6:                                # %for.body.lr.ph.i
	fadd.d	$fa1, $fs0, $fs0
	fneg.d	$fa2, $fa1
	addi.w	$a2, $a2, 0
	addi.d	$a3, $a2, -1
	alsl.d	$a4, $a1, $s2, 2
	addi.d	$a4, $a4, -4
	addi.d	$a5, $s2, 4
	movgr2fr.d	$fa3, $zero
	vldi	$vr4, -912
	.p2align	4, , 16
.LBB0_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fsub.d	$fa4, $fa4, $fs0
	fmadd.d	$fs0, $fa1, $fa4, $fs0
	fadd.d	$fa3, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fcvt.s.d	$fa5, $fa3
	fst.s	$fa5, $a5, 0
	fcvt.s.d	$fa5, $fa4
	fst.s	$fa5, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB0_7
	b	.LBB0_12
.LBB0_8:                                # %if.then12
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_61
.LBB0_9:                                # %for.end.i
	ori	$a3, $zero, 8
	bgeu	$s3, $a3, .LBB0_11
# %bb.10:                               # %if.end.i
	ori	$a2, $zero, 4
	bgeu	$s3, $a2, .LBB0_13
	b	.LBB0_15
.LBB0_11:                               # %for.end.i.if.end.thread.i_crit_edge
	addi.w	$a2, $a2, 0
.LBB0_12:                               # %if.end.thread.i
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 258896
	ori	$a3, $a3, 1267
	stx.w	$a3, $s2, $a2
.LBB0_13:                               # %for.body29.preheader.i
	addi.w	$a2, $a0, 0
	alsl.d	$a2, $a2, $s2, 2
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_14:                               # %for.body29.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_14
.LBB0_15:                               # %for.cond38.preheader.i
	add.w	$a3, $a0, $s5
	beqz	$a3, .LBB0_29
# %bb.16:                               # %iter.check
	move	$a2, $zero
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	slli.d	$a0, $a0, 2
	bltu	$a3, $a4, .LBB0_27
# %bb.17:                               # %iter.check
	ori	$a4, $zero, 31
	bgeu	$a4, $s3, .LBB0_27
# %bb.18:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a3, $a2, .LBB0_20
# %bb.19:
	move	$a2, $zero
	b	.LBB0_24
.LBB0_20:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	move	$a3, $s2
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, 0
	xvld	$xr1, $a3, 32
	xvbitrevi.w	$xr0, $xr0, 31
	xvbitrevi.w	$xr1, $xr1, 31
	add.d	$a5, $a3, $a0
	xvstx	$xr0, $a3, $a0
	xvst	$xr1, $a5, 32
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_21
# %bb.22:                               # %middle.block
	beq	$a2, $a1, .LBB0_29
# %bb.23:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB0_27
.LBB0_24:                               # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a4, $a2
	alsl.d	$a4, $a4, $s2, 2
	.p2align	4, , 16
.LBB0_25:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vbitrevi.w	$vr0, $vr0, 31
	vstx	$vr0, $a4, $a0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB0_25
# %bb.26:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB0_29
.LBB0_27:                               # %for.body42.i.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a2, $a2, $s2, 2
	.p2align	4, , 16
.LBB0_28:                               # %for.body42.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fneg.s	$fa0, $fa0
	fstx.s	$fa0, $a2, $a0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_28
.LBB0_29:                               # %make_sintbl.exit
	ori	$a0, $zero, 2
	st.w	$zero, $s1, 0
	bltu	$s3, $a0, .LBB0_34
# %bb.30:                               # %while.cond.preheader.i.preheader
	move	$a1, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_31:                               # %while.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_32:                               # %while.cond.i
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a1
	bstrpick.d	$a2, $a2, 31, 1
	sub.w	$a1, $a1, $a2
	bge	$a3, $a2, .LBB0_32
# %bb.33:                               # %while.end.i
                                        #   in Loop: Header=BB0_31 Depth=1
	add.w	$a1, $a2, $a3
	slli.d	$a2, $a0, 2
	addi.d	$a0, $a0, 1
	stx.w	$a1, $s1, $a2
	bne	$a0, $s3, .LBB0_31
.LBB0_34:                               # %if.end15
	beqz	$s0, .LBB0_39
.LBB0_35:                               # %for.body.lr.ph
	ld.d	$a0, $s6, %pc_lo12(fft.bitrev)
	move	$a1, $zero
	move	$a2, $fp
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %for.inc
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 16
	addi.d	$a0, $a0, 4
	beq	$s4, $a1, .LBB0_39
.LBB0_37:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	bge	$a1, $a3, .LBB0_36
# %bb.38:                               # %if.then20
                                        #   in Loop: Header=BB0_37 Depth=1
	fld.d	$fa0, $a2, 0
	fcvt.s.d	$fa0, $fa0
	slli.d	$a4, $a3, 4
	fld.d	$fa1, $a2, 8
	vldx	$vr2, $fp, $a4
	alsl.d	$a3, $a3, $fp, 4
	fcvt.d.s	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	vst	$vr2, $a2, 0
	fstx.d	$fa0, $fp, $a4
	fcvt.d.s	$fa0, $fa1
	fst.d	$fa0, $a3, 8
	b	.LBB0_36
.LBB0_39:                               # %for.cond48.preheader
	ori	$a0, $zero, 2
	bltu	$s3, $a0, .LBB0_57
# %bb.40:                               # %for.body51.lr.ph
	pcalau12i	$a0, %pc_hi20(fft.sintbl)
	ld.d	$a0, $a0, %pc_lo12(fft.sintbl)
	addi.w	$a1, $s5, 0
	addi.w	$a2, $zero, -1
	alsl.d	$a1, $a1, $a0, 2
	bge	$a2, $s0, .LBB0_49
# %bb.41:                               # %for.body51.us.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %for.cond48.loopexit.us
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$a3, $a4
	bge	$a4, $s3, .LBB0_57
.LBB0_43:                               # %for.body51.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
                                        #       Child Loop BB0_48 Depth 3
	slli.w	$a4, $a3, 1
	blt	$a3, $a2, .LBB0_42
# %bb.44:                               # %for.body57.us.us.preheader
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	ctz.d	$t0, $a4
	srl.w	$t0, $s3, $t0
	bstrpick.d	$t2, $a4, 31, 0
	slli.d	$t1, $a3, 4
	slli.d	$t2, $t2, 4
	move	$t3, $fp
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %for.end123.us.us
                                        #   in Loop: Header=BB0_46 Depth=2
	add.d	$a5, $a5, $t0
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 16
	beq	$a6, $a3, .LBB0_42
.LBB0_46:                               # %for.body57.us.us
                                        #   Parent Loop BB0_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	bgeu	$a7, $s3, .LBB0_45
# %bb.47:                               # %for.body71.lr.ph.us.us
                                        #   in Loop: Header=BB0_46 Depth=2
	slli.d	$t4, $a5, 2
	fldx.s	$fa0, $a0, $t4
	fldx.s	$fa1, $a1, $t4
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fneg.d	$fa2, $fa0
	move	$t4, $a7
	move	$t5, $t3
	.p2align	4, , 16
.LBB0_48:                               # %for.body71.us.us
                                        #   Parent Loop BB0_43 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t5, $t1
	fldx.d	$fa3, $t5, $t1
	fld.d	$fa4, $t6, 8
	fmul.d	$fa5, $fa3, $fa1
	fmadd.d	$fa5, $fa0, $fa4, $fa5
	fcvt.s.d	$fa5, $fa5
	fmul.d	$fa3, $fa3, $fa2
	fld.d	$fa6, $t5, 0
	fmadd.d	$fa3, $fa1, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fcvt.d.s	$fa4, $fa5
	fsub.d	$fa5, $fa6, $fa4
	fstx.d	$fa5, $t5, $t1
	fld.d	$fa5, $t5, 8
	fadd.d	$fa4, $fa6, $fa4
	fst.d	$fa4, $t5, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa4, $fa5, $fa3
	fst.d	$fa4, $t6, 8
	fadd.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $t5, 8
	add.w	$t4, $t4, $a4
	add.d	$t5, $t5, $t2
	blt	$t4, $s3, .LBB0_48
	b	.LBB0_45
.LBB0_49:                               # %for.body51.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %for.cond48.loopexit
                                        #   in Loop: Header=BB0_51 Depth=1
	bge	$a3, $s3, .LBB0_57
.LBB0_51:                               # %for.body51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_56 Depth 3
	move	$a4, $a3
	slli.w	$a3, $a3, 1
	blt	$a4, $a2, .LBB0_50
# %bb.52:                               # %for.body57.preheader
                                        #   in Loop: Header=BB0_51 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	ctz.d	$t0, $a3
	srl.w	$t0, $s3, $t0
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$t1, $a4, 4
	slli.d	$t2, $t2, 4
	move	$t3, $fp
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_53:                               # %for.end123
                                        #   in Loop: Header=BB0_54 Depth=2
	add.d	$a5, $a5, $t0
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 16
	beq	$a6, $a4, .LBB0_50
.LBB0_54:                               # %for.body57
                                        #   Parent Loop BB0_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
	bgeu	$a7, $s3, .LBB0_53
# %bb.55:                               # %for.body71.lr.ph
                                        #   in Loop: Header=BB0_54 Depth=2
	slli.d	$t4, $a5, 2
	fldx.s	$fa0, $a0, $t4
	fldx.s	$fa1, $a1, $t4
	fneg.s	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fneg.d	$fa2, $fa0
	move	$t4, $a7
	move	$t5, $t3
	.p2align	4, , 16
.LBB0_56:                               # %for.body71
                                        #   Parent Loop BB0_51 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t5, $t1
	fldx.d	$fa3, $t5, $t1
	fld.d	$fa4, $t6, 8
	fmul.d	$fa5, $fa3, $fa1
	fmadd.d	$fa5, $fa0, $fa4, $fa5
	fcvt.s.d	$fa5, $fa5
	fmul.d	$fa3, $fa3, $fa2
	fld.d	$fa6, $t5, 0
	fmadd.d	$fa3, $fa1, $fa4, $fa3
	fcvt.s.d	$fa3, $fa3
	fcvt.d.s	$fa4, $fa5
	fsub.d	$fa5, $fa6, $fa4
	fstx.d	$fa5, $t5, $t1
	fld.d	$fa5, $t5, 8
	fadd.d	$fa4, $fa6, $fa4
	fst.d	$fa4, $t5, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa4, $fa5, $fa3
	fst.d	$fa4, $t6, 8
	fadd.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $t5, 8
	add.w	$t4, $t4, $a3
	add.d	$t5, $t5, $t2
	blt	$t4, $s3, .LBB0_56
	b	.LBB0_53
.LBB0_57:                               # %for.end129
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB0_60
# %bb.58:                               # %for.body135.lr.ph
	movgr2fr.d	$fa0, $s4
	ffint.d.l	$fa0, $fa0
	addi.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB0_59:                               # %for.body135
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, -8
	fld.d	$fa2, $a0, 0
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a0, -8
	fdiv.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $a0, 0
	addi.d	$s3, $s3, -1
	addi.d	$a0, $a0, 16
	bnez	$s3, .LBB0_59
.LBB0_60:
	move	$a0, $zero
.LBB0_61:                               # %cleanup
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB0_62:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_5
.Lfunc_end0:
	.size	fft, .Lfunc_end0-fft
                                        # -- End function
	.type	fft.last_n,@object              # @fft.last_n
	.local	fft.last_n
	.comm	fft.last_n,4,4
	.type	fft.bitrev,@object              # @fft.bitrev
	.local	fft.bitrev
	.comm	fft.bitrev,8,8
	.type	fft.sintbl,@object              # @fft.sintbl
	.local	fft.sintbl
	.comm	fft.sintbl,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
