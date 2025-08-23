	.file	"vbrquantize.c"
	.text
	.globl	calc_sfb_ave_noise              # -- Begin function calc_sfb_ave_noise
	.p2align	5
	.type	calc_sfb_ave_noise,@function
calc_sfb_ave_noise:                     # @calc_sfb_ave_noise
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	mul.w	$a0, $fp, $s0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_7
# %bb.1:                                # %for.body.preheader
	move	$a1, $zero
	move	$a2, $zero
	slli.d	$a3, $s0, 3
	pcalau12i	$a4, %got_pc_hi20(pow43)
	ld.d	$a4, $a4, %got_pc_lo12(pow43)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a5, 2
	ori	$a5, $a5, 14
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a3
	bge	$a2, $a0, .LBB0_8
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $s1, $a1
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a6, $fa2
	blt	$a5, $a6, .LBB0_9
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	fldx.d	$fa2, $s2, $a1
	slli.d	$a7, $a6, 3
	fldx.d	$fa4, $a4, $a7
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs0, $fa3
	beq	$a6, $a5, .LBB0_2
# %bb.5:                                # %if.then10
                                        #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a6, $a6, $a4, 3
	fld.d	$fa4, $a6, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs0, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB0_2
# %bb.6:                                # %if.then19
                                        #   in Loop: Header=BB0_3 Depth=1
	fmov.d	$fa2, $fa3
	b	.LBB0_2
.LBB0_7:
	movgr2fr.d	$fa1, $zero
.LBB0_8:                                # %for.end
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB0_10
.LBB0_9:
	vldi	$vr0, -784
.LBB0_10:                               # %cleanup28
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	calc_sfb_ave_noise, .Lfunc_end0-calc_sfb_ave_noise
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function find_scalefac
.LCPI1_0:
	.dword	0xc034800000000000              # double -20.5
.LCPI1_1:
	.dword	0xc042400000000000              # double -36.5
.LCPI1_2:
	.dword	0xc046400000000000              # double -44.5
.LCPI1_3:
	.dword	0xc048400000000000              # double -48.5
.LCPI1_4:
	.dword	0xc049400000000000              # double -50.5
.LCPI1_5:
	.dword	0xc049c00000000000              # double -51.5
.LCPI1_6:
	.dword	0xc04a000000000000              # double -52
.LCPI1_7:
	.dword	0x40c3884000000000              # double 10000.5
.LCPI1_8:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI1_9:
	.dword	0x4040000000000000              # double 32
.LCPI1_10:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	find_scalefac
	.p2align	5
	.type	find_scalefac,@function
find_scalefac:                          # @find_scalefac
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	mul.w	$s2, $a4, $a2
	movgr2fr.w	$fa0, $a4
	ori	$a0, $zero, 1
	ffint.d.w	$fs3, $fa0
	blt	$s2, $a0, .LBB1_15
# %bb.1:                                # %for.body.us.preheader
	move	$s3, $zero
	slli.d	$s4, $fp, 3
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_9)
	movgr2fr.d	$fs6, $zero
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s5, $a0, %got_pc_lo12(pow43)
	lu12i.w	$a0, 2
	ori	$s6, $a0, 14
	ori	$s7, $zero, 7
	fmov.d	$fa0, $fs5
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %if.then.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fadd.d	$fa0, $fs1, $fs4
.LBB1_3:                                # %for.inc.us
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$s3, $s3, 1
	fmov.d	$fs1, $fa0
	beq	$s3, $s7, .LBB1_14
.LBB1_4:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	vldi	$vr0, -928
	fmul.d	$fs4, $fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fmov.d	$fa1, $fs6
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %for.inc.i.us
                                        #   in Loop: Header=BB1_6 Depth=2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a1, $a1, $fp
	add.d	$a0, $a0, $s4
	bge	$a1, $s2, .LBB1_10
.LBB1_6:                                # %for.body.i.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s0, $a0
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a2, $fa2
	blt	$s6, $a2, .LBB1_2
# %bb.7:                                # %if.end.i.us
                                        #   in Loop: Header=BB1_6 Depth=2
	fldx.d	$fa2, $s1, $a0
	slli.d	$a3, $a2, 3
	fldx.d	$fa4, $s5, $a3
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs2, $fa3
	beq	$a2, $s6, .LBB1_5
# %bb.8:                                # %if.then10.i.us
                                        #   in Loop: Header=BB1_6 Depth=2
	alsl.d	$a2, $a2, $s5, 3
	fld.d	$fa4, $a2, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs2, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_5
# %bb.9:                                # %if.then19.i.us
                                        #   in Loop: Header=BB1_6 Depth=2
	fmov.d	$fa2, $fa3
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_10:                               # %calc_sfb_ave_noise.exit.loopexit.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fdiv.d	$fa0, $fa1, $fs3
	fcmp.clt.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB1_2
# %bb.11:                               # %if.else.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB1_13
# %bb.12:                               # %if.then11.us
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	fsel	$fa0, $fa0, $fs1, $fcc0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fsub.d	$fa0, $fs1, $fs4
	b	.LBB1_3
.LBB1_13:                               # %if.else13.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fadd.d	$fa0, $fs1, $fs4
	fmov.d	$fa1, $fs1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	b	.LBB1_3
.LBB1_14:                               # %for.end.loopexit
	vldi	$vr1, -1024
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fmadd.d	$fa4, $fs4, $fa1, $fa0
	b	.LBB1_20
.LBB1_15:                               # %entry.split
	movgr2fr.d	$fa0, $zero
	fdiv.d	$fs1, $fa0, $fs3
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_17
# %bb.16:                               # %for.body.us97.preheader
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -878
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1012
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -994
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -989
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -987
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -986
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_8)
	b	.LBB1_20
.LBB1_17:                               # %entry.split.split
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	bceqz	$fcc0, .LBB1_19
# %bb.18:                               # %for.body.us127.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_2)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_3)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_4)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_5)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_6)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr4, -844
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB1_20
.LBB1_19:                               # %for.body.preheader
	vldi	$vr0, -878
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -1012
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -994
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -989
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -987
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -986
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr0, -986
	vldi	$vr4, -985
.LBB1_20:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_10)
	vldi	$vr1, -920
	fadd.d	$fa3, $fa0, $fa1
	fadd.d	$fs5, $fa0, $fs4
	fcmp.cule.d	$fcc0, $fa3, $fs5
	bcnez	$fcc0, .LBB1_39
# %bb.21:                               # %while.body.lr.ph
	ori	$a0, $zero, 1
	vst	$vr4, $sp, 32                   # 16-byte Folded Spill
	blt	$s2, $a0, .LBB1_33
# %bb.22:                               # %while.body.us.preheader
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	slli.d	$s3, $fp, 3
	vldi	$vr0, -816
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s4, $a0, %got_pc_lo12(pow43)
	movgr2fr.d	$fs6, $zero
	lu12i.w	$a0, 2
	ori	$s5, $a0, 14
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %if.end39.us
                                        #   in Loop: Header=BB1_24 Depth=1
	vldi	$vr0, -816
	fadd.d	$fa3, $fs1, $fa0
	fcmp.clt.d	$fcc0, $fs5, $fa3
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	bceqz	$fcc0, .LBB1_38
.LBB1_24:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
	fsub.d	$fa1, $fa3, $fa4
	fabs.d	$fa1, $fa1
	fadd.d	$fa2, $fa3, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	fsel	$fs1, $fa3, $fa2, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fmov.d	$fa1, $fs6
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %for.inc.i74.us
                                        #   in Loop: Header=BB1_26 Depth=2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a1, $a1, $fp
	add.d	$a0, $a0, $s3
	bge	$a1, $s2, .LBB1_30
.LBB1_26:                               # %for.body.i55.us
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s0, $a0
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a2, $fa2
	blt	$s5, $a2, .LBB1_23
# %bb.27:                               # %if.end.i62.us
                                        #   in Loop: Header=BB1_26 Depth=2
	fldx.d	$fa2, $s1, $a0
	slli.d	$a3, $a2, 3
	fldx.d	$fa4, $s4, $a3
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs2, $fa3
	beq	$a2, $s5, .LBB1_25
# %bb.28:                               # %if.then10.i68.us
                                        #   in Loop: Header=BB1_26 Depth=2
	alsl.d	$a2, $a2, $s4, 3
	fld.d	$fa4, $a2, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs2, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_25
# %bb.29:                               # %if.then19.i78.us
                                        #   in Loop: Header=BB1_26 Depth=2
	fmov.d	$fa2, $fa3
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_30:                               # %calc_sfb_ave_noise.exit79.loopexit.us
                                        #   in Loop: Header=BB1_24 Depth=1
	fdiv.d	$fa0, $fa1, $fs3
	fcmp.cule.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB1_23
# %bb.31:                               # %calc_sfb_ave_noise.exit79.loopexit.us
                                        #   in Loop: Header=BB1_24 Depth=1
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB1_23
# %bb.32:
	fmov.d	$fa0, $fs1
	b	.LBB1_39
.LBB1_33:                               # %while.body.lr.ph.split
	movgr2fr.d	$fa2, $zero
	fdiv.d	$fa1, $fa2, $fs3
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_36
# %bb.34:                               # %while.body.lr.ph.split
	fcmp.cle.d	$fcc0, $fa1, $fs0
	bceqz	$fcc0, .LBB1_36
# %bb.35:                               # %while.body
	fsub.d	$fa1, $fa3, $fa4
	fabs.d	$fa1, $fa1
	vldi	$vr2, -816
	fadd.d	$fa2, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs4
	fsel	$fa0, $fa3, $fa2, $fcc0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB1_38
.LBB1_36:                               # %while.body.us167.preheader
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_37:                               # %while.body.us167
                                        # =>This Inner Loop Header: Depth=1
	fsub.d	$fa1, $fa3, $fa4
	fabs.d	$fa1, $fa1
	vldi	$vr0, -816
	fadd.d	$fa2, $fa3, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	fsel	$fs0, $fa3, $fa2, $fcc0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	vldi	$vr0, -816
	fadd.d	$fa3, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs5, $fa3
	bcnez	$fcc0, .LBB1_37
.LBB1_38:                               # %cleanup
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB1_39:                               # %cleanup
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end1:
	.size	find_scalefac, .Lfunc_end1-find_scalefac
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_scalefacs_short
.LCPI2_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	compute_scalefacs_short
	.p2align	5
	.type	compute_scalefacs_short,@function
compute_scalefacs_short:                # @compute_scalefacs_short
# %bb.0:                                # %for.cond2.preheader.peel.next148
	addi.d	$sp, $sp, -464
	st.d	$fp, $sp, 456                   # 8-byte Folded Spill
	st.d	$s0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s1, $sp, 440                   # 8-byte Folded Spill
	st.d	$s2, $sp, 432                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 368                  # 8-byte Folded Spill
	ld.w	$a1, $a1, 68
	sltui	$a1, $a1, 1
	addi.d	$a3, $a1, 1
	fld.d	$fa1, $a0, 0
	fst.d	$fa1, $sp, 360                  # 8-byte Folded Spill
	fld.d	$fa2, $a0, 8
	fst.d	$fa2, $sp, 352                  # 8-byte Folded Spill
	fld.d	$fa3, $a0, 16
	fst.d	$fa3, $sp, 344                  # 8-byte Folded Spill
	fld.d	$fa4, $a0, 24
	fld.d	$fa5, $a0, 32
	fld.d	$fa6, $a0, 40
	fld.d	$fa7, $a0, 48
	fld.d	$ft0, $a0, 56
	fld.d	$ft1, $a0, 64
	fld.d	$ft2, $a0, 72
	fld.d	$ft3, $a0, 80
	fld.d	$ft4, $a0, 88
	fld.d	$ft5, $a0, 96
	fld.d	$ft6, $a0, 104
	fld.d	$ft7, $a0, 112
	fld.d	$ft10, $a0, 120
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$ft8, $fa0
	fneg.d	$fa0, $fa1
	vldi	$vr17, -920
	fmadd.d	$fs6, $fa0, $ft8, $ft9
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	fneg.d	$fa0, $fa2
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 336                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa3
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 328                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa4
	fmov.d	$fa3, $fa4
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 320                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa5
	fmov.d	$fa4, $fa5
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa6
	fmov.d	$fa5, $fa6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 304                  # 8-byte Folded Spill
	fneg.d	$fa0, $fa7
	fmov.d	$fa6, $fa7
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 296                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft0
	fmov.d	$fa7, $ft0
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft1
	fmov.d	$ft0, $ft1
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft2
	fmov.d	$ft1, $ft2
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft3
	fmov.d	$ft2, $ft3
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 264                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft4
	fmov.d	$ft3, $ft4
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft5
	fmov.d	$ft4, $ft5
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft6
	fmov.d	$ft5, $ft6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft7
	fmov.d	$fa2, $ft7
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fld.d	$fs4, $a0, 128
	fneg.d	$fa0, $ft10
	fmov.d	$fa1, $ft10
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	fld.d	$fs5, $a0, 136
	fneg.d	$fa0, $fs4
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	fld.d	$ft6, $a0, 144
	fst.d	$ft6, $sp, 200                  # 8-byte Folded Spill
	fneg.d	$fa0, $fs5
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	fld.d	$ft7, $a0, 152
	fst.d	$ft7, $sp, 192                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	fld.d	$ft6, $a0, 160
	fst.d	$ft6, $sp, 168                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft7
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fld.d	$ft7, $a0, 168
	fst.d	$ft7, $sp, 152                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	fld.d	$ft6, $a0, 176
	fst.d	$ft6, $sp, 136                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft7
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fld.d	$ft7, $a0, 184
	fst.d	$ft7, $sp, 120                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fld.d	$ft6, $a0, 192
	fst.d	$ft6, $sp, 104                  # 8-byte Folded Spill
	fneg.d	$fa0, $ft7
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fs3, $a0, 200
	fneg.d	$fa0, $ft6
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fld.d	$fs2, $a0, 208
	fneg.d	$fa0, $fs3
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fld.d	$fs1, $a0, 216
	fneg.d	$fa0, $fs2
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fld.d	$fs0, $a0, 224
	fneg.d	$fa0, $fs1
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fld.d	$ft15, $a0, 232
	fneg.d	$fa0, $fs0
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fld.d	$ft14, $a0, 240
	fneg.d	$fa0, $ft15
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fld.d	$ft13, $a0, 248
	fneg.d	$fa0, $ft14
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fld.d	$ft12, $a0, 256
	fneg.d	$fa0, $ft13
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fld.d	$ft10, $a0, 264
	fneg.d	$fa0, $ft12
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fld.d	$ft7, $a0, 272
	fneg.d	$fa0, $ft10
	fmadd.d	$fa0, $fa0, $ft8, $ft9
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fld.d	$ft6, $a0, 280
	fld.d	$fa0, $a3, %pc_lo12(.LCPI2_0)
	fneg.d	$ft11, $ft7
	fmadd.d	$ft11, $ft11, $ft8, $ft9
	fst.d	$ft11, $sp, 16                  # 8-byte Folded Spill
	fneg.d	$fs7, $ft6
	fmadd.d	$ft8, $fs7, $ft8, $ft9
	fadd.d	$ft9, $fs6, $fa0
	vreplvei.d	$vr17, $vr17, 0
	vfrintrm.d	$vr17, $vr17
	fld.d	$ft11, $sp, 336                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr17, $xr31, 1
	fld.d	$ft11, $sp, 328                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr17, $xr31, 2
	fld.d	$ft11, $sp, 320                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr17, $xr31, 3
	fld.d	$ft11, $sp, 312                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	fld.d	$ft11, $sp, 304                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr31, $xr30, 1
	fld.d	$ft11, $sp, 296                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr31, $xr30, 2
	fld.d	$ft11, $sp, 288                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr31, $xr30, 3
	xvftintrz.l.d	$xr30, $xr31
	xvpermi.d	$xr31, $xr30, 238
	xvpickev.w	$xr30, $xr31, $xr30
	xvftintrz.l.d	$xr17, $xr17
	xvpermi.d	$xr31, $xr17, 238
	xvpickev.w	$xr17, $xr31, $xr17
	xvpermi.q	$xr17, $xr30, 2
	xvst	$xr17, $a2, 0
	fld.d	$ft9, $sp, 280                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $fa0
	vreplvei.d	$vr17, $vr17, 0
	vfrintrm.d	$vr17, $vr17
	fld.d	$ft11, $sp, 272                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr17, $xr30, 1
	fld.d	$ft11, $sp, 264                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr17, $xr30, 2
	fld.d	$ft11, $sp, 256                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	xvinsve0.d	$xr17, $xr30, 3
	fld.d	$ft11, $sp, 248                 # 8-byte Folded Reload
	fadd.d	$fs6, $ft11, $fa0
	vreplvei.d	$vr30, $vr30, 0
	vfrintrm.d	$vr30, $vr30
	fld.d	$ft11, $sp, 240                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr30, $xr31, 1
	fld.d	$ft11, $sp, 232                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr30, $xr31, 2
	fld.d	$ft11, $sp, 224                 # 8-byte Folded Reload
	fadd.d	$fs7, $ft11, $fa0
	vreplvei.d	$vr31, $vr31, 0
	vfrintrm.d	$vr31, $vr31
	xvinsve0.d	$xr30, $xr31, 3
	xvftintrz.l.d	$xr30, $xr30
	xvpermi.d	$xr31, $xr30, 238
	xvpickev.w	$xr30, $xr31, $xr30
	xvftintrz.l.d	$xr17, $xr17
	xvpermi.d	$xr31, $xr17, 238
	xvpickev.w	$xr17, $xr31, $xr17
	xvpermi.q	$xr17, $xr30, 2
	xvst	$xr17, $a2, 32
	fld.d	$ft9, $sp, 216                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $fa0
	vreplvei.d	$vr17, $vr17, 0
	vfrintrm.d	$vr17, $vr17
	ftintrz.w.d	$ft9, $ft9
	movfr2gr.s	$a0, $ft9
	fld.d	$ft9, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $fa0
	vreplvei.d	$vr17, $vr17, 0
	vfrintrm.d	$vr17, $vr17
	ftintrz.w.d	$ft9, $ft9
	movfr2gr.s	$a3, $ft9
	slli.d	$a4, $a1, 52
	ori	$a1, $zero, 0
	lu32i.d	$a1, -131072
	lu52i.d	$a1, $a1, 1026
	sub.d	$a1, $a1, $a4
	movgr2fr.d	$ft9, $a1
	fadd.d	$fs5, $ft9, $fs5
	fadd.d	$fs4, $ft9, $fs4
	fadd.d	$fs6, $ft9, $fa1
	fadd.d	$fs7, $ft9, $fa2
	fadd.d	$ft5, $ft9, $ft5
	fadd.d	$ft4, $ft9, $ft4
	fadd.d	$ft3, $ft9, $ft3
	fadd.d	$ft2, $ft9, $ft2
	fadd.d	$ft1, $ft9, $ft1
	fadd.d	$ft0, $ft9, $ft0
	fadd.d	$fa7, $ft9, $fa7
	fadd.d	$fa6, $ft9, $fa6
	fadd.d	$fa5, $ft9, $fa5
	fadd.d	$fa4, $ft9, $fa4
	fadd.d	$fa3, $ft9, $fa3
	fld.d	$fa1, $sp, 344                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa1
	fld.d	$fa1, $sp, 352                  # 8-byte Folded Reload
	fadd.d	$fa1, $ft9, $fa1
	fld.d	$ft11, $sp, 360                 # 8-byte Folded Reload
	fadd.d	$ft9, $ft9, $ft11
	movgr2fr.d	$ft11, $zero
	fmax.d	$ft9, $ft9, $ft11
	fcmp.clt.d	$fcc0, $ft9, $fa1
	fsel	$fa1, $ft9, $fa1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa4
	fsel	$fa1, $fa1, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fsel	$fa1, $fa1, $fa5, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa6
	fsel	$fa1, $fa1, $fa6, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa7
	fsel	$fa1, $fa1, $fa7, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft0
	fsel	$fa1, $fa1, $ft0, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft1
	fsel	$fa1, $fa1, $ft1, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft2
	fsel	$fa1, $fa1, $ft2, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft3
	fsel	$fa1, $fa1, $ft3, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft4
	fsel	$fa1, $fa1, $ft4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $ft5
	fsel	$fa1, $fa1, $ft5, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs7
	fsel	$fa1, $fa1, $fs7, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	fsel	$fa1, $fa1, $fs4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fld.d	$fa2, $sp, 184                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	ori	$a5, $zero, 0
	lu32i.d	$a5, -262144
	lu52i.d	$a5, $a5, 1025
	xor	$a4, $a4, $a5
	movgr2fr.d	$ft9, $a4
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a5, $fa2
	fld.d	$fa2, $sp, 168                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 144                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a6, $fa2
	fld.d	$fa2, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	fld.d	$fa2, $sp, 136                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t0, $fa2
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 96                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	fld.d	$fa2, $sp, 104                  # 8-byte Folded Reload
	fadd.d	$fa2, $ft9, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 88                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t2, $fa2
	fadd.d	$fa2, $ft9, $fs3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t3, $fa2
	fadd.d	$fa2, $ft9, $fs2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 72                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t4, $fa2
	fadd.d	$fa2, $ft9, $fs1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t5, $fa2
	fadd.d	$fa2, $ft9, $fs0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 56                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t6, $fa2
	fadd.d	$fa2, $ft9, $ft15
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t7, $fa2
	fadd.d	$fa2, $ft9, $ft14
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t8, $fa2
	fadd.d	$fa2, $ft9, $ft13
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$fp, $fa2
	fadd.d	$fa2, $ft9, $ft12
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 24                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s0, $fa2
	fadd.d	$fa2, $ft9, $ft10
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fld.d	$fa2, $sp, 16                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s1, $fa2
	fadd.d	$fa2, $ft9, $ft7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa0, $ft8, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s2, $fa0
	fadd.d	$fa0, $ft9, $ft6
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	st.w	$a0, $a2, 64
	st.w	$a3, $a2, 68
	st.w	$a1, $a2, 72
	st.w	$a4, $a2, 76
	st.w	$a5, $a2, 80
	st.w	$a6, $a2, 84
	st.w	$a7, $a2, 88
	st.w	$t0, $a2, 92
	st.w	$t1, $a2, 96
	st.w	$t2, $a2, 100
	st.w	$t3, $a2, 104
	st.w	$t4, $a2, 108
	st.w	$t5, $a2, 112
	st.w	$t6, $a2, 116
	st.w	$t7, $a2, 120
	st.w	$t8, $a2, 124
	st.w	$fp, $a2, 128
	st.w	$s0, $a2, 132
	st.w	$s1, $a2, 136
	st.w	$s2, $a2, 140
	fld.d	$fs7, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 424                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end2:
	.size	compute_scalefacs_short, .Lfunc_end2-compute_scalefacs_short
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_scalefacs_long
.LCPI3_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	compute_scalefacs_long
	.p2align	5
	.type	compute_scalefacs_long,@function
compute_scalefacs_long:                 # @compute_scalefacs_long
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a3, $a1, 68
	move	$fp, $a2
	move	$a1, $a0
	sltui	$a0, $a3, 1
	addi.d	$s2, $a0, 1
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 168
	addi.d	$s1, $sp, 16
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pretab)
	ld.d	$a0, $a0, %got_pc_lo12(pretab)
	ld.w	$a1, $a0, 44
	fld.d	$fa0, $sp, 104
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa0, $fa1
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	st.w	$zero, $s0, 64
	bcnez	$fcc0, .LBB3_11
# %bb.1:                                # %for.inc
	ld.w	$a1, $a0, 48
	fld.d	$fa2, $sp, 112
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB3_11
# %bb.2:                                # %for.inc.1
	ld.w	$a1, $a0, 52
	fld.d	$fa3, $sp, 120
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB3_11
# %bb.3:                                # %for.inc.2
	ld.w	$a1, $a0, 56
	fld.d	$fa4, $sp, 128
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa5, $a1
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcmp.clt.d	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB3_11
# %bb.4:                                # %for.inc.3
	ld.w	$a1, $a0, 60
	fld.d	$fa5, $sp, 136
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa6, $a1
	ffint.d.w	$fa6, $fa6
	fadd.d	$fa6, $fa5, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	bcnez	$fcc0, .LBB3_11
# %bb.5:                                # %for.inc.4
	ld.w	$a1, $a0, 64
	fld.d	$fa5, $sp, 144
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa7, $a1
	ffint.d.w	$fa7, $fa7
	fadd.d	$fa7, $fa5, $fa7
	fcmp.clt.d	$fcc0, $fa0, $fa7
	bcnez	$fcc0, .LBB3_11
# %bb.6:                                # %for.inc.5
	ld.w	$a1, $a0, 68
	fld.d	$fa7, $sp, 152
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft0, $a1
	ffint.d.w	$ft0, $ft0
	fadd.d	$ft0, $fa7, $ft0
	fcmp.clt.d	$fcc0, $fa0, $ft0
	bcnez	$fcc0, .LBB3_11
# %bb.7:                                # %for.inc.6
	ld.w	$a1, $a0, 72
	fld.d	$ft0, $sp, 160
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft1, $a1
	ffint.d.w	$ft1, $ft1
	fadd.d	$ft1, $ft0, $ft1
	fcmp.clt.d	$fcc0, $fa0, $ft1
	bcnez	$fcc0, .LBB3_11
# %bb.8:                                # %for.inc.7
	ld.w	$a1, $a0, 76
	fld.d	$ft1, $sp, 168
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft2, $a1
	ffint.d.w	$ft2, $ft2
	fadd.d	$ft2, $ft1, $ft2
	fcmp.clt.d	$fcc0, $fa0, $ft2
	bcnez	$fcc0, .LBB3_11
# %bb.9:                                # %for.inc.8
	ld.w	$a1, $a0, 80
	fld.d	$ft2, $sp, 176
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft3, $a1
	ffint.d.w	$ft3, $ft3
	fadd.d	$ft3, $ft2, $ft3
	fcmp.clt.d	$fcc0, $fa0, $ft3
	bcnez	$fcc0, .LBB3_11
# %bb.10:                               # %if.then8
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 64
	fst.d	$fa1, $sp, 104
	fst.d	$fa2, $sp, 112
	ld.w	$a1, $a0, 64
	fst.d	$fa3, $sp, 120
	fst.d	$fa4, $sp, 128
	fst.d	$fa6, $sp, 136
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 68
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa5, $fa1
	fst.d	$fa1, $sp, 144
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 72
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa7, $fa1
	fst.d	$fa1, $sp, 152
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 76
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft0, $fa1
	fst.d	$fa1, $sp, 160
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a0, $a0, 80
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft1, $fa1
	fst.d	$fa1, $sp, 168
	div.w	$a0, $a0, $s2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft2, $fa1
	fst.d	$fa1, $sp, 176
.LBB3_11:                               # %if.end24
	move	$a0, $zero
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -920
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI3_0)
	vldi	$vr4, -978
	vldi	$vr5, -996
	ori	$a1, $zero, 21
	.p2align	4, , 16
.LBB3_12:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa6, $s1, 0
	fneg.d	$fa7, $fa6
	fmadd.d	$fa7, $fa7, $fa1, $fa2
	fadd.d	$fa7, $fa7, $fa3
	vreplvei.d	$vr7, $vr7, 0
	vfrintrm.d	$vr7, $vr7
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$a2, $fa7
	sltui	$a3, $a0, 11
	st.w	$a2, $fp, 0
	movgr2cf	$fcc0, $a3
	fsel	$fa7, $fa5, $fa4, $fcc0
	fdiv.d	$fa7, $fa7, $fa1
	fadd.d	$fa6, $fa7, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 8
	bne	$a0, $a1, .LBB3_12
# %bb.13:                               # %for.end56
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end3:
	.size	compute_scalefacs_long, .Lfunc_end3-compute_scalefacs_long
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function VBR_iteration_loop_new
.LCPI4_0:
	.dword	0x405fc00000000000              # double 127
.LCPI4_1:
	.dword	0x406a400000000000              # double 210
	.text
	.globl	VBR_iteration_loop_new
	.p2align	5
	.type	VBR_iteration_loop_new,@function
VBR_iteration_loop_new:                 # @VBR_iteration_loop_new
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
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1248
	sub.d	$sp, $sp, $a1
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s2, $a0
	move	$a1, $a5
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -10
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_0)
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB4_26
.LBB4_1:                                # %cdce.end
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$s6, $a0, %got_pc_lo12(masking_lower)
	ld.w	$a0, $s2, 200
	lu12i.w	$a1, 260096
	ori	$a2, $zero, 1
	st.w	$a1, $s6, 0
	blt	$a0, $a2, .LBB4_24
# %bb.2:                                # %for.body.lr.ph
	move	$a2, $zero
	addi.d	$a0, $s3, 48
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	pcalau12i	$a1, %got_pc_hi20(scalefac_band)
	ld.d	$a1, $a1, %got_pc_lo12(scalefac_band)
	ori	$s1, $a0, 512
	addi.d	$fp, $sp, 224
	ori	$s3, $zero, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 96
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1224
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.inc250
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s2, 200
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 976
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB4_24
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #       Child Loop BB4_18 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$s0, $a2, $a2, 3
	beqz	$a0, .LBB4_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s2, 204
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_3
# %bb.7:                                # %for.body9.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s4, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ori	$a0, $zero, 240
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 976
	mul.d	$a0, $a2, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1224
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 488
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_8:                                # %if.then230
                                        #   in Loop: Header=BB4_10 Depth=2
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB4_25
.LBB4_9:                                # %if.end246
                                        #   in Loop: Header=BB4_10 Depth=2
	ld.w	$a0, $s2, 204
	addi.d	$s4, $s4, 1
	add.d	$s7, $s7, $s1
	addi.d	$s8, $s8, 488
	bge	$s4, $a0, .LBB4_3
.LBB4_10:                               # %for.body9
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #       Child Loop BB4_18 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 24
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s4, 3
	slli.d	$a0, $a0, 9
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_11:                               # %for.body21
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $s7, $s0
	fldx.d	$fa0, $a0, $s1
	fabs.d	$fa0, $fa0
	fsqrt.d	$fa1, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB4_13
# %bb.12:                               # %for.body21.split
                                        #   in Loop: Header=BB4_11 Depth=3
	add.d	$a0, $fp, $s0
	addi.d	$s0, $s0, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s0, .LBB4_11
	b	.LBB4_14
.LBB4_13:                               # %call.sqrt
                                        #   in Loop: Header=BB4_11 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $fp, $s0
	addi.d	$s0, $s0, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s0, .LBB4_11
	.p2align	4, , 16
.LBB4_14:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=2
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 976
	mul.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ori	$a0, $zero, 488
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	mul.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$a0, $s3, .LBB4_17
# %bb.15:                               # %for.cond49.preheader
                                        #   in Loop: Header=BB4_10 Depth=2
	move	$s0, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	fmov.d	$fa4, $fs0
	.p2align	4, , 16
.LBB4_16:                               # %for.cond53.preheader
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr4, $sp, 192                  # 32-byte Folded Spill
	ld.w	$a0, $s4, -4
	ld.w	$a1, $s4, 0
	add.d	$s3, $s8, $s0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 912
	add.d	$s7, $sp, $a2
	add.d	$s2, $s7, $s0
	sub.w	$a4, $a1, $a0
	alsl.w	$a1, $a0, $a0, 1
	fld.s	$fa0, $s6, 0
	fld.d	$fa1, $s3, 176
	alsl.d	$a0, $a1, $s5, 3
	alsl.d	$a1, $a1, $fp, 3
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, -4
	ld.w	$a1, $s4, 0
	fstx.d	$fa0, $s7, $s0
	xvld	$xr1, $sp, 192                  # 32-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fs1, $fa1, $fa0, $fcc0
	sub.w	$a4, $a1, $a0
	alsl.w	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 8
	fld.s	$fa0, $s6, 0
	fld.d	$fa1, $s3, 184
	add.d	$a0, $s5, $a1
	add.d	$a1, $fp, $a1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, -4
	ld.w	$a1, $s4, 0
	fst.d	$fa0, $s2, 8
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fs1, $fs1, $fa0, $fcc0
	sub.w	$a4, $a1, $a0
	alsl.w	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 16
	fld.s	$fa0, $s6, 0
	fld.d	$fa1, $s3, 192
	add.d	$a0, $s5, $a1
	add.d	$a1, $fp, $a1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 16
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa4, $fs1, $fa0, $fcc0
	addi.d	$s0, $s0, 24
	addi.d	$s4, $s4, 4
	ori	$a0, $zero, 288
	bne	$s0, $a0, .LBB4_16
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_17:                               # %for.body113.preheader
                                        #   in Loop: Header=BB4_10 Depth=2
	move	$s0, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s2, $a0, 4
	fmov.d	$fa4, $fs0
	.p2align	4, , 16
.LBB4_18:                               # %for.body113
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr4, $sp, 192                  # 32-byte Folded Spill
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, -4
	sub.w	$a4, $a0, $a1
	fld.s	$fa0, $s6, 0
	fldx.d	$fa1, $s8, $s0
	alsl.d	$a0, $a1, $s5, 3
	alsl.d	$a1, $a1, $fp, 3
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 192                  # 32-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	fstx.d	$fa0, $s0, $a0
	fcmp.clt.d	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 4
	ori	$a0, $zero, 168
	bne	$s0, $a0, .LBB4_18
.LBB4_19:                               # %if.end153
                                        #   in Loop: Header=BB4_10 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_1)
	vldi	$vr1, -1008
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $s0, 12
	ori	$a0, $zero, 244
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	mul.d	$a0, $s4, $a0
	ori	$s3, $zero, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bne	$a1, $s3, .LBB4_22
# %bb.20:                               # %for.cond163.preheader.preheader
                                        #   in Loop: Header=BB4_10 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 912
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvreplve0.d	$xr1, $xr4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 912
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 976
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvfsub.d	$xr2, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1008
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 976
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1040
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvfsub.d	$xr2, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1008
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1040
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1104
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvfsub.d	$xr2, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1136
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1168
	add.d	$a1, $sp, $a1
	xvld	$xr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1104
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	xvfsub.d	$xr0, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1136
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	xvfsub.d	$xr0, $xr3, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1168
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	st.w	$zero, $s0, 68
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s5, $a0, 88
	lu12i.w	$a0, 1
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(compute_scalefacs_short)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB4_9
# %bb.21:                               # %if.then190
                                        #   in Loop: Header=BB4_10 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 68
	lu12i.w	$a0, 1
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(compute_scalefacs_short)
	jirl	$ra, $ra, 0
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_22:                               # %for.body210.preheader
                                        #   in Loop: Header=BB4_10 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 736
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvreplve0.d	$xr1, $xr4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 768
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 736
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 800
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvfsub.d	$xr2, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 768
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 832
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 800
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 864
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	xvfsub.d	$xr2, $xr2, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 896
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 832
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 864
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	fsub.d	$fa0, $fa3, $fa4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 896
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	st.w	$zero, $s0, 68
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(compute_scalefacs_long)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB4_9
# %bb.23:                               # %if.then230
                                        #   in Loop: Header=BB4_10 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 68
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(compute_scalefacs_long)
	jirl	$ra, $ra, 0
	b	.LBB4_8
.LBB4_24:                               # %for.end252
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1248
	add.d	$sp, $sp, $a0
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
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
.LBB4_25:                               # %if.then203
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_26:                               # %cdce.call
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB4_1
.Lfunc_end4:
	.size	VBR_iteration_loop_new, .Lfunc_end4-VBR_iteration_loop_new
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
